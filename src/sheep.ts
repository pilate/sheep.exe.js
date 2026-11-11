/*
 * The page-level "Screen Mate": wires the ported engine to the browser.
 *
 * Mirrors the main window procedure of the original (FUN_1000_1df3):
 *   WM_TIMER          -> idle/sleep bookkeeping, Engine.tick(), redraw
 *                        (one shared timer: all sheep read the page, then all draw)
 *   WM_LBUTTONDOWN /
 *   WM_RBUTTONDOWN    -> pick the sheep up (event 1)
 *   WM_MOUSEMOVE      -> drag
 *   WM_LBUTTONUP      -> drop (event 0)
 *   WM_RBUTTONUP      -> drop (event 0, then event 2: fall with gravity)
 *   WM_LBUTTONDBLCLK  -> settings dialog (Shift+Ctrl: debug dialog)
 *   WM_RBUTTONDBLCLK  -> remove the sheep
 *   WM_DROPFILES      -> play the dropped sound file (event 4)
 */
import { ACTIONS, CURSOR_HOTSPOT } from "./generated/tables.ts";
import { Engine, HWND_MAIN, HWND_SUB, type EngineConfig, type EngineHost, type PeerInfo } from "./engine.ts";
import { ActorRenderer } from "./render.ts";
import { DEFAULT_PLATFORM_SELECTOR, Platforms } from "./platforms.ts";
import {
  Dialog,
  debugTemplate,
  settingsTemplate,
  ID_ALARM,
  ID_CANCEL,
  ID_DOWN,
  ID_FIRST_ACTION,
  ID_GFORCE,
  ID_HELP,
  ID_LEFT,
  ID_NOSLEEP,
  ID_OK,
  ID_REMOVE,
  ID_RIGHT,
  ID_SOUND,
  ID_UP,
} from "./ui.ts";

export interface SheepAssets {
  /** URL of the 640x440 sprite sheet (assets/sprites.png). */
  sprites: string;
  /** WAVE resource id -> URL (108 baa, 109 yawn, 110 sneeze). */
  sounds?: Record<number, string>;
  /** Cursor shown over the sheep (assets/cursor.png). */
  cursor?: string;
}

export interface SheepOptions extends Partial<EngineConfig> {
  /** Asset URLs. The default build has them inlined. */
  assets?: SheepAssets;
  /**
   * Elements the sheep treats as windows: a CSS selector or a function
   * returning elements. Default: images, headings, tables, buttons, ... and
   * anything with a `data-sheep-window` attribute.
   */
  windows?: string | (() => Iterable<Element>);
  /** Ignore "window" elements narrower than this (CSS px). Default 40. */
  minWindowWidth?: number;
  /** Pixel scale of the sprites. Default 1 (40x40 CSS px). */
  scale?: number;
  /** Timer interval in ms. The original used SetTimer(108 ms) on a 55 ms clock. */
  interval?: number;
  /** Base z-index. Default 2147483000. */
  zIndex?: number;
  /** localStorage key for the settings (scmate.ini), or false. */
  storageKey?: string | false;
  /** Allow the settings/debug dialogs and right-double-click removal. Default true. */
  dialogs?: boolean;
  /** Start immediately. Default true. */
  autoStart?: boolean;
  /** Seed for rand() instead of GetTickCount() (deterministic runs). */
  seed?: number;
}

export type SheepEvent = "state" | "remove";

const instances = new Set<Sheep>();
let nextPeerHandle = -1000;

// ---- shared timer: one interval per period; reads (logic) before writes (render)
const tickers = new Map<number, { timer: ReturnType<typeof setInterval>; flock: Set<Sheep> }>();

function join(sheep: Sheep, interval: number): void {
  let t = tickers.get(interval);
  if (!t) {
    const flock = new Set<Sheep>();
    const timer = setInterval(() => {
      for (const s of flock) s.logic();
      for (const s of flock) s.render();
    }, interval);
    tickers.set(interval, (t = { timer, flock }));
  }
  t.flock.add(sheep);
}

function leave(sheep: Sheep, interval: number): void {
  const t = tickers.get(interval);
  if (!t?.flock.delete(sheep) || t.flock.size) return;
  clearInterval(t.timer);
  tickers.delete(interval);
}

// ---- visitor activity for the idle/sleep logic (GetCursorPos + keyboard)
let activity = 0;
let watching = false;
function watchActivity(): void {
  if (watching) return;
  watching = true;
  let x = NaN;
  let y = NaN;
  const pointer = (ev: PointerEvent): void => {
    if (ev.clientX !== x || ev.clientY !== y) activity++;
    x = ev.clientX;
    y = ev.clientY;
  };
  document.addEventListener("pointermove", pointer, { passive: true });
  document.addEventListener("pointerdown", pointer, { passive: true });
  document.addEventListener("keydown", () => activity++, { passive: true });
}

function loadImage(src: string): Promise<HTMLImageElement> {
  return new Promise((resolve, reject) => {
    const im = new Image();
    im.decoding = "async";
    im.onload = () => resolve(im);
    im.onerror = () => reject(new Error(`sheep.exe.js: cannot load ${src.slice(0, 64)}`));
    im.src = src;
  });
}

function readSettings(key: string | false): Partial<EngineConfig> {
  if (!key) return {};
  try {
    const raw = localStorage.getItem(key);
    if (!raw) return {};
    const v = JSON.parse(raw) as Partial<EngineConfig>;
    const out: Partial<EngineConfig> = {};
    for (const k of ["sound", "alarm", "noSleep", "gforce"] as const) if (typeof v[k] === "boolean") out[k] = v[k];
    return out;
  } catch {
    return {};
  }
}

function writeSettings(key: string | false, cfg: EngineConfig): void {
  if (!key) return;
  try {
    localStorage.setItem(key, JSON.stringify(cfg));
  } catch {
    /* storage unavailable */
  }
}

export class Sheep {
  /** All live sheep on the page. */
  static get all(): readonly Sheep[] {
    return [...instances];
  }

  /** Named actions of the original debug dialog. */
  static readonly actions = ACTIONS;

  readonly engine: Engine;
  readonly ready: Promise<void>;
  private readonly opts: Required<Omit<SheepOptions, keyof EngineConfig | "seed" | "assets">> & {
    assets: SheepAssets;
  };
  private readonly peerHandle = nextPeerHandle--;
  private readonly platforms: Platforms;
  private mainView?: ActorRenderer;
  private subView?: ActorRenderer;
  private ticking = false;
  private removed = false;
  private readonly sounds = new Map<number, HTMLAudioElement>();
  private playing: HTMLAudioElement | null = null;
  private dialog: Dialog | null = null;
  private listeners: { [K in SheepEvent]: Set<(s: Sheep) => void> } = { state: new Set(), remove: new Set() };

  // WM_TIMER idle tracking (DS:0AD0/0AD2, 0AB8, 23C4)
  private seenActivity = activity;
  private idleTicks = 0;
  /** z-order of our two windows, from bringToTop/SetWindowPos calls. */
  private subOnTop = false;
  // dragging (DS:0ABA/0ABC/0ABE)
  private drag: { id: number; x: number; y: number; fx: number; fy: number; button: number } | null = null;
  private rightDblArmed = false;
  private lastRightUp = 0;
  private lastState = -1;

  constructor(options: SheepOptions = {}) {
    if (!options.assets) throw new Error("sheep.exe.js: no assets given (use the default build or pass `assets`)");
    const storageKey = options.storageKey === undefined ? "sheep.exe.js/scmate.ini" : options.storageKey;
    this.opts = {
      assets: options.assets,
      windows: options.windows ?? DEFAULT_PLATFORM_SELECTOR,
      minWindowWidth: options.minWindowWidth ?? 40,
      scale: options.scale ?? 1,
      interval: options.interval ?? 110,
      zIndex: options.zIndex ?? 2147483000,
      storageKey,
      dialogs: options.dialogs ?? true,
      autoStart: options.autoStart ?? true,
    };
    const stored = readSettings(storageKey);
    const cfg: Partial<EngineConfig> = { ...stored };
    for (const k of ["sound", "alarm", "noSleep", "gforce"] as const) if (options[k] !== undefined) cfg[k] = options[k];

    this.platforms = new Platforms({
      selector: this.opts.windows,
      minWidth: this.opts.minWindowWidth,
      scale: this.opts.scale,
    });
    watchActivity();
    this.engine = new Engine(this.createHost(), cfg);
    // FindWindow() at start-up: only the first sheep gets the UFO episodes.
    if (instances.size > 0) this.engine.otherInstance = 1;
    instances.add(this);
    if (options.seed !== undefined) {
      const seed = options.seed;
      this.engine.state = 1;
      this.engine.x = -80;
      this.engine.y = -80;
      this.engine.srand(seed);
    }
    const de = document.documentElement;
    this.engine.setScreen(Math.floor(de.clientWidth / this.opts.scale), Math.floor(de.clientHeight / this.opts.scale));
    this.ready = this.init();
  }

  private async init(): Promise<void> {
    const sheet = await loadImage(this.opts.assets.sprites);
    if (this.removed) return;
    this.mainView = new ActorRenderer(sheet, this.opts.scale, true);
    this.subView = new ActorRenderer(sheet, this.opts.scale, false);
    const cv = this.mainView.canvas;
    cv.setAttribute("role", "img");
    cv.setAttribute("aria-label", "Sheep (Screen Mate Poo)");
    const cursor = this.opts.assets.cursor;
    cv.style.cursor = cursor ? `url("${cursor}") ${CURSOR_HOTSPOT[0]} ${CURSOR_HOTSPOT[1]}, grab` : "grab";
    document.body.append(...this.subView.nodes(), ...this.mainView.nodes());
    this.bindInput(cv);
    this.render();
    if (this.opts.autoStart) this.start();
  }

  // ---------------------------------------------------------------------
  // EngineHost
  // ---------------------------------------------------------------------
  private createHost(): EngineHost {
    return {
      now: () => Math.floor(typeof performance !== "undefined" ? performance.now() : Date.now()),
      // (Math.random: the original's GetActiveWindow never consumed rand())
      getActiveWindow: () => this.platforms.getActiveWindow(Math.random),
      isWindow: (h) => this.platforms.isWindow(h),
      getWindowRect: (h) => this.platforms.getWindowRect(h),
      enumWindows: () => this.platforms.enumWindows(),
      peers: () => this.peers(),
      playSound: (id) => this.playSound(id),
      stopSound: () => this.stopSound(),
      localTime: () => {
        const d = new Date();
        return { hour: d.getHours(), minute: d.getMinutes() };
      },
      windowFromPoint: () => 0,
      bringToTop: (h) => {
        if (h === HWND_MAIN) this.subOnTop = false;
        else if (h === HWND_SUB) this.subOnTop = true;
      },
      setZOrder: (h, after) => {
        // SetWindowPos(h, after): h goes just below `after`
        if (h === HWND_SUB && after === HWND_MAIN) this.subOnTop = false;
        else if (h === HWND_MAIN && after === HWND_SUB) this.subOnTop = true;
      },
    };
  }

  private peers(): PeerInfo[] {
    const out: PeerInfo[] = [];
    for (const s of instances) {
      if (s === this || s.removed) continue;
      out.push({ hwnd: s.peerHandle, x: s.engine.publishedX, y: s.engine.publishedY });
    }
    return out.slice(0, 8);
  }

  // ---------------------------------------------------------------------
  // sound (sndPlaySound: a new sound replaces the current one)
  // ---------------------------------------------------------------------
  private audio(id: number): HTMLAudioElement | null {
    let a = this.sounds.get(id);
    if (!a) {
      const url = this.opts.assets.sounds?.[id];
      if (!url || typeof Audio === "undefined") return null;
      a = new Audio(url);
      a.preload = "auto";
      this.sounds.set(id, a);
    }
    return a;
  }

  private playSound(id: number): void {
    const a = this.audio(id);
    if (!a) return;
    this.stopSound();
    this.playing = a;
    a.currentTime = 0;
    void a.play().catch(() => {
      /* autoplay blocked until the visitor interacts with the page */
    });
  }

  private playUrl(url: string): void {
    if (typeof Audio === "undefined") return;
    this.stopSound();
    const a = new Audio(url);
    this.playing = a;
    void a.play().catch(() => undefined);
  }

  private stopSound(): void {
    if (this.playing) {
      this.playing.pause();
      this.playing = null;
    }
  }

  // ---------------------------------------------------------------------
  // timer
  // ---------------------------------------------------------------------
  /** Start (or resume) the timer. */
  start(): this {
    if (!this.ticking && !this.removed) {
      this.ticking = true;
      join(this, this.opts.interval);
    }
    return this;
  }

  /** Pause the sheep where it is. */
  stop(): this {
    if (this.ticking) leave(this, this.opts.interval);
    this.ticking = false;
    return this;
  }

  get running(): boolean {
    return this.ticking;
  }

  /** One WM_TIMER tick (also callable manually while stopped). */
  step(): void {
    this.logic();
    this.render();
  }

  /** @internal The reading half of a tick: idle tracking + Engine.tick(). */
  logic(): void {
    if (this.removed) return;
    this.platforms.invalidate();
    const de = document.documentElement;
    const s = this.opts.scale;
    this.engine.setScreen(Math.floor(de.clientWidth / s), Math.floor(de.clientHeight / s));
    if (!this.engine.cfg.noSleep) {
      const moved = activity !== this.seenActivity;
      this.seenActivity = activity;
      if (this.engine.sleeping === 0) {
        if (moved) this.idleTicks = 0;
        else if (this.idleTicks++ > 300) this.engine.event(3);
      } else if (moved) {
        this.engine.sleeping = 0;
        this.idleTicks = 0;
        this.engine.event(0);
      }
    }
    this.engine.tick();
  }

  /** @internal The writing half of a tick. */
  render(): void {
    const e = this.engine;
    if (!this.mainView || !this.subView || this.removed) return;
    this.mainView.update({ ...e.main, visible: true, beam: e.beamMain, gridFx: 0 });
    this.subView.update({ ...e.sub, visible: e.subHwnd !== 0, beam: e.beamSub, gridFx: e.gridFx });
    const z = this.opts.zIndex;
    this.mainView.setZ(this.subOnTop ? z + 5 : z + 10);
    this.subView.setZ(this.subOnTop ? z + 10 : z + 5);
    if (e.state !== this.lastState) {
      this.lastState = e.state;
      this.emit("state");
    }
  }

  // ---------------------------------------------------------------------
  // input
  // ---------------------------------------------------------------------
  private bindInput(cv: HTMLCanvasElement): void {
    cv.addEventListener("contextmenu", (e) => e.preventDefault());
    cv.addEventListener("pointerdown", (e) => {
      if (e.button !== 0 && e.button !== 2) return;
      e.preventDefault();
      if (this.engine.subHwnd !== 0 || this.drag) return; // no dragging during UFO episodes
      try {
        cv.setPointerCapture(e.pointerId);
      } catch {
        /* pointer already gone */
      }
      this.drag = { id: e.pointerId, x: e.clientX, y: e.clientY, fx: 0, fy: 0, button: e.button };
      this.engine.event(1);
      this.render();
    });
    cv.addEventListener("pointermove", (e) => {
      if (!this.drag || e.pointerId !== this.drag.id) return;
      this.dragTo(e.clientX, e.clientY);
    });
    const release = (e: PointerEvent): void => {
      if (!this.drag || e.pointerId !== this.drag.id) return;
      this.dragTo(e.clientX, e.clientY);
      const button = this.drag.button;
      this.drag = null;
      this.engine.event(0);
      if (button === 2) this.engine.event(2);
      this.render();
      if (button === 2) this.rightButtonUp();
    };
    cv.addEventListener("pointerup", release);
    cv.addEventListener("pointercancel", release);
    cv.addEventListener("dblclick", (e) => {
      if (!this.opts.dialogs) return;
      if (e.shiftKey && e.ctrlKey) this.openDebug();
      else this.openSettings();
    });
    cv.addEventListener("dragover", (e) => {
      if (e.dataTransfer?.types.includes("Files")) e.preventDefault();
    });
    cv.addEventListener("drop", (e) => {
      const f = e.dataTransfer?.files?.[0];
      if (!f) return;
      e.preventDefault();
      if (this.engine.subHwnd !== 0) return;
      this.playUrl(URL.createObjectURL(f));
      this.engine.event(4);
    });
  }

  private dragTo(cx: number, cy: number): void {
    const d = this.drag;
    if (!d) return;
    const s = this.opts.scale;
    d.fx += (cx - d.x) / s;
    d.fy += (cy - d.y) / s;
    d.x = cx;
    d.y = cy;
    const dx = Math.trunc(d.fx);
    const dy = Math.trunc(d.fy);
    if (dx === 0 && dy === 0) return;
    d.fx -= dx;
    d.fy -= dy;
    this.engine.dragBy(dx, dy);
    this.render();
  }

  /** WM_RBUTTONDBLCLK arms removal; the following WM_RBUTTONUP removes. */
  private rightButtonUp(): void {
    const now = Date.now();
    if (this.opts.dialogs && this.rightDblArmed && now - this.lastRightUp < 500) {
      this.remove();
      return;
    }
    this.rightDblArmed = true;
    this.lastRightUp = now;
  }

  // ---------------------------------------------------------------------
  // dialogs
  // ---------------------------------------------------------------------
  private dialogPos(): { x: number; y: number } {
    const s = this.opts.scale;
    return { x: (this.engine.main.x + 44) * s, y: (this.engine.main.y - 20) * s };
  }

  /** Dialog 107 "Screen Mate 1.0" (FUN_1000_27ff). */
  openSettings(): void {
    this.dialog?.close();
    const e = this.engine;
    const before = e.cfg.gforce;
    const ids: Record<number, keyof EngineConfig> = {
      [ID_ALARM]: "alarm",
      [ID_SOUND]: "sound",
      [ID_NOSLEEP]: "noSleep",
      [ID_GFORCE]: "gforce",
    };
    this.dialog = new Dialog(
      settingsTemplate(),
      {
        checked: (id) => (ids[id] ? e.cfg[ids[id]] : false),
        disabled: (id) => id === ID_HELP, // Scmpoo16.hlp is not available
        command: (id, dlg) => {
          if (id === ID_OK) {
            for (const [k, v] of Object.entries(ids)) e.cfg[v] = dlg.isChecked(Number(k));
            writeSettings(this.opts.storageKey, e.cfg);
            if (before !== e.cfg.gforce && e.cfg.gforce) e.event(2);
            return true;
          }
          if (id === ID_CANCEL) return true;
          if (id === ID_REMOVE) {
            this.remove();
            return true;
          }
          return false;
        },
      },
      this.dialogPos(),
      () => (this.dialog = null),
    );
  }

  /** Dialog 108 "Screen Mate Debug Window" (FUN_1000_292a). */
  openDebug(): void {
    this.dialog?.close();
    this.dialog = new Dialog(
      debugTemplate(),
      {
        checked: (id) => id === ID_FIRST_ACTION,
        command: (id) => {
          if (id === ID_OK || id === ID_CANCEL) return true;
          if (id >= ID_FIRST_ACTION && id < ID_FIRST_ACTION + ACTIONS.length) {
            this.engine.forceState(ACTIONS[id - ID_FIRST_ACTION].state);
          } else if (id === ID_UP) this.engine.dragBy(0, -20);
          else if (id === ID_DOWN) this.engine.dragBy(0, 20);
          else if (id === ID_LEFT) this.engine.dragBy(-20, 0);
          else if (id === ID_RIGHT) this.engine.dragBy(20, 0);
          this.render();
          return false;
        },
      },
      this.dialogPos(),
      () => (this.dialog = null),
    );
  }

  // ---------------------------------------------------------------------
  // public API
  // ---------------------------------------------------------------------

  /** Force one of the original behaviours, by debug-dialog label or state number. */
  action(which: string | number): this {
    let state: number | undefined;
    if (typeof which === "number") state = which;
    else {
      const key = which.toLowerCase().replace(/[^a-z]/g, "");
      state = ACTIONS.find((a) => a.label.toLowerCase().replace(/[^a-z]/g, "") === key)?.state;
    }
    if (state === undefined) throw new Error(`sheep.exe.js: unknown action ${String(which)}`);
    this.engine.forceState(state);
    this.render();
    return this;
  }

  /** Change settings (like the settings dialog). */
  configure(cfg: Partial<EngineConfig>): this {
    const before = this.engine.cfg.gforce;
    Object.assign(this.engine.cfg, cfg);
    writeSettings(this.opts.storageKey, this.engine.cfg);
    if (before !== this.engine.cfg.gforce && this.engine.cfg.gforce) this.engine.event(2);
    return this;
  }

  get settings(): Readonly<EngineConfig> {
    return { ...this.engine.cfg };
  }

  /** Current behaviour state number (DS:0BC0). */
  get state(): number {
    return this.engine.state;
  }

  on(ev: SheepEvent, fn: (s: Sheep) => void): () => void {
    this.listeners[ev].add(fn);
    return () => this.listeners[ev].delete(fn);
  }

  private emit(ev: SheepEvent): void {
    for (const fn of this.listeners[ev]) fn(this);
  }

  /** Remove the sheep from the page (WM_DESTROY). */
  remove(): void {
    if (this.removed) return;
    this.removed = true;
    this.stop();
    this.stopSound();
    this.dialog?.close();
    for (const n of [...(this.mainView?.nodes() ?? []), ...(this.subView?.nodes() ?? [])]) n.remove();
    instances.delete(this);
    this.emit("remove");
  }

  /** Remove every sheep. */
  static removeAll(): void {
    for (const s of [...instances]) s.remove();
  }
}
