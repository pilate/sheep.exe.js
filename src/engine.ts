/*
 * Behaviour engine of "Screen Mate Poo" (Sheep.exe, Fujitsu 1995) ported to
 * TypeScript from the original 16-bit code.
 *
 * Everything in this file is a translation of functions in code segment 1 of
 * Sheep.exe (addresses are given as FUN_1000_xxxx / DS:xxxx).  Global
 * variables of the original live in the data segment; they are fields here
 * and keep their original address in a comment.  Integer arithmetic follows
 * the 16-bit C semantics of the original (truncating division).
 *
 * The engine knows nothing about the DOM: the outside world (screen size,
 * "windows" to walk on, other sheep, sound) is reached through EngineHost.
 */
import { DS_TABLES, DS_TABLE_BASE } from "./generated/tables.ts";

/** Static tables in the original data segment (word arrays, see re/NOTES.md). */
const T = {
  RANDOM: 0x47a,
  RANDOM_GFORCE: 0x51a,
  UFO_EPISODES: 0x5ba,
  LOOK_AROUND: 0x5d4,
  LOOK_UP: 0x5f4,
  EDGE_SIT: 0x614,
  STARE: 0x624,
  DANGLE: 0x634,
  JUMP: 0x644,
  JUMP_DY: 0x656,
  YAWN: 0x66c,
  BAA: 0x682,
  SNEEZE: 0x692,
  BUG_EYES: 0x6ac,
  EAT_FLOWERS: 0x6b8,
  FLAME_DIVE: 0x6fe,
  UNUSED_49: 0x742,
  CLIMB_DOWN_L: 0x75c,
  CLIMB_DOWN_R: 0x76c,
  RENDEZVOUS: 0x77c,
  BATHTUB: 0x7b4,
  BATH_EXIT: 0x7be,
  BLUSH: 0x82c,
  ROLL: 0x844,
  DIE: 0x856,
} as const;

/** Sprite cell size: every entry of the frame table (DS:0BC2) is 40x40. */
export const FRAME_W = 40;
export const FRAME_H = 40;

/** Pseudo window handles for the sheep's own windows. Host handles are > 0. */
export const HWND_MAIN = -1;
export const HWND_SUB = -2;

export interface Rect {
  left: number;
  top: number;
  right: number;
  bottom: number;
}

export interface WindowInfo extends Rect {
  hwnd: number;
}

/** Position another sheep last published (SetWindowWord(hwnd, 0/2)). */
export interface PeerInfo {
  hwnd: number;
  x: number;
  y: number;
}

/** Everything the original got from Windows. */
export interface EngineHost {
  /** GetTickCount() */
  now(): number;
  /** GetActiveWindow(); 0 for none. */
  getActiveWindow(): number;
  /** IsWindow() */
  isWindow(hwnd: number): boolean;
  /** GetWindowRect() for hwnd > 0 */
  getWindowRect(hwnd: number): Rect;
  /** Visible top-level windows in z-order, top-most first (FUN_1000_3df0). */
  enumWindows(): WindowInfo[];
  /** Other running sheep (FUN_1000_3b4c / DS:2D80). */
  peers(): PeerInfo[];
  /** sndPlaySound(resource) / sndPlaySound(NULL) */
  playSound(id: number): void;
  stopSound(): void;
  /** Local time for the hourly alarm. */
  localTime(): { hour: number; minute: number };
  /** Optional z-order hints; the DOM host can ignore them. */
  bringToTop?(hwnd: number): void;
  setZOrder?(hwnd: number, insertAfter: number): void;
  windowFromPoint?(x: number, y: number): number;
}

/** What to draw for one actor (the original's two windows). */
export interface Sprite {
  x: number;
  y: number;
  frame: number;
  /** Use the horizontally mirrored strip (original bitmaps face left). */
  mirrored: boolean;
}

export interface EngineConfig {
  /** [Stray] Sound= */
  sound: boolean;
  /** [Stray] Alarm= (hourly chime) */
  alarm: boolean;
  /** [Stray] NoSleep= */
  noSleep: boolean;
  /** [Stray] GForce= (walk on and fall between windows) */
  gforce: boolean;
}

/** Truncating 16-bit style integer division (C semantics). */
export function div(a: number, b: number): number {
  return Math.trunc(a / b);
}

/** Microsoft C runtime rand()/srand() (FUN_1000_12b6 / FUN_1000_129e). */
export class MsRand {
  private seed = 1;
  /** srand(unsigned): 16-bit argument, high word of the state cleared. */
  srand(s: number): void {
    this.seed = s & 0xffff;
  }
  rand(): number {
    this.seed = (Math.imul(this.seed, 214013) + 2531011) >>> 0;
    return (this.seed >>> 16) & 0x7fff;
  }
}

export class Engine {
  readonly cfg: EngineConfig;
  private readonly rng = new MsRand();

  // ---- main actor -------------------------------------------------------
  state = 0; //           DS:0BC0
  x = 0; //               DS:0B20
  y = 0; //               DS:0B22
  frame = 0; //           DS:0B24
  dir = 1; //             DS:05CA  (+1 = facing/moving left)
  wait = 0; //            DS:0B5A  tick divider inside a state
  count = 0; //           DS:0B46
  count2 = 0; //          DS:0B48
  variant = 0; //         DS:0B4A
  gforce = 0; //          DS:0B1C  1 = gravity/window mode active
  wallCheck = 0; //       DS:0B1E  check walls while walking
  vy = 0; //              DS:0B26
  vx = 0; //              DS:0B28
  prevY = 0; //           DS:0B2C
  targetX = 0; //         DS:0B5C
  targetY = 0; //         DS:0B5E
  bounced = 0; //         DS:0B60
  fallMode = 0; //        DS:0B62
  yOffset = 0; //         DS:0B64
  bounceCount = 0; //     DS:0B66
  seqIdx = 0; //          DS:0B68
  peerScanTimer = 0; //   DS:0B6A
  pendingState = 0; //    DS:2D74
  sleeping = 0; //        DS:2D96
  otherInstance = 0; //   DS:2D5C
  beamMain = 0; //        DS:2D92

  // ---- floor (window the sheep stands on) --------------------------------
  floor = 0; //           DS:0B3C  0 = bottom of the screen
  floorL = 0; //          DS:0B3E
  floorT = 0; //          DS:0B40
  floorR = 0; //          DS:0B42
  floorB = 0; //          DS:0B44

  // ---- second actor ("ScreenMatePooSub" window) --------------------------
  subHwnd = 0; //         DS:2D90
  subX = 0; //            DS:0B2E
  subY = 0; //            DS:0B30
  subFrame = 0; //        DS:0B32
  subDir = 1; //          DS:05CC
  beamSub = 0; //         DS:2D7C
  gridFx = 0; //          DS:2D66  dissolve effect step

  // ---- screen ------------------------------------------------------------
  scrW = 640; //          DS:2D70
  scrH = 480; //          DS:2D72
  scrX0 = 0; //           DS:2D6C
  scrY0 = 0; //           DS:2D6E

  // ---- alarm (FUN_1000_46f7) ---------------------------------------------
  private alarmLastHour = 0; //  DS:0B50
  private alarmRemaining = 0; // DS:0B52
  private alarmLastChime = 0; // DS:0B54
  private alarmPoll = 0; //      DS:0B58

  // ---- window snapshot (DS:23DC, 32 entries of 0x4C bytes) ---------------
  private wins: WindowInfo[] = [];

  // ---- published draw state ---------------------------------------------
  /** Last setMain() — what the main window shows. */
  main: Sprite = { x: -80, y: -80, frame: 0, mirrored: false };
  /** Last setSub() — what the sub window shows (only while subHwnd != 0). */
  sub: Sprite = { x: -80, y: -80, frame: 0, mirrored: false };
  /** SetWindowWord(main, 0/2): position other sheep see. */
  publishedX = 0;
  publishedY = 0;

  readonly host: EngineHost;

  constructor(host: EngineHost, cfg: Partial<EngineConfig> = {}) {
    this.host = host;
    this.cfg = { sound: false, alarm: false, noSleep: false, gforce: true, ...cfg };
  }

  // =======================================================================
  // small helpers
  // =======================================================================

  rand(): number {
    return this.rng.rand();
  }
  srand(seed: number): void {
    this.rng.srand(seed);
  }

  /** Word from the original data segment's static tables. */
  tbl(base: number, index: number): number {
    const i = (base - DS_TABLE_BASE) / 2 + index;
    if (i < 0 || i >= DS_TABLES.length) throw new RangeError(`DS:${base.toString(16)}[${index}]`);
    return DS_TABLES[i];
  }

  /** The original's tick divider (DS:0B5A): stay `n` more ticks in the state. */
  private delay(n: number): boolean {
    if (this.wait < n) {
      this.wait++;
      return true;
    }
    this.wait = 0;
    return false;
  }

  setScreen(w: number, h: number): void {
    this.scrW = w | 0;
    this.scrH = h | 0;
  }

  /** Show `frame` at the current position (setMain with the globals). */
  private show(frame = this.frame): void {
    this.frame = frame;
    this.setMain(this.x, this.y, frame);
  }

  /** Next entry of a 0-terminated frame table; false (nothing drawn) at the end. */
  private nextFrame(table: number): boolean {
    this.frame = this.tbl(table, this.count);
    this.count++;
    if (this.frame === 0) return false;
    this.setMain(this.x, this.y, this.frame);
    return true;
  }

  /** FUN_1000_4807: move the main window and select its bitmap. */
  setMain(x: number, y: number, frame: number): void {
    this.publishedX = this.x; // note: the original publishes g_x/g_y, not x/y
    this.publishedY = this.y;
    const neutral = frame >= 9 && frame <= 14;
    this.main = { x, y, frame, mirrored: !neutral && !(this.dir > 0) };
  }

  /** FUN_1000_488c */
  setSub(x: number, y: number, frame: number): void {
    const neutral = frame >= 9 && frame <= 14;
    this.sub = { x, y, frame, mirrored: !neutral && !(this.subDir > 0) };
  }

  /** FUN_1000_2a21 (+ WM_CREATE of the sub window, FUN_1000_9200). */
  createSub(): void {
    if (this.subHwnd === 0) {
      this.subHwnd = HWND_SUB;
      this.gridFx = 0;
      this.beamSub = 0;
    }
  }

  /** FUN_1000_2a96 */
  destroySub(): void {
    this.subHwnd = 0;
  }

  /** FUN_1000_42c8: play a WAVE resource if [Stray] Sound is on. */
  playSound(id: number): void {
    if (this.cfg.sound) this.host.playSound(id);
  }

  /** FUN_1000_48f3 */
  isFloorValid(hwnd: number): boolean {
    return hwnd === 0 ? true : this.host.isWindow(hwnd);
  }

  /** FUN_1000_491d: hwnd 0 is the "floor" below the screen. */
  getFloorRect(hwnd: number): Rect {
    if (hwnd === 0) return { left: 0, top: this.scrH, right: this.scrW, bottom: this.scrH * 2 };
    return this.host.getWindowRect(hwnd);
  }

  /** getFloorRect(floor) into DS:0B3E..0B44 */
  loadFloorRect(hwnd: number): void {
    const r = this.getFloorRect(hwnd);
    this.floorL = r.left;
    this.floorT = r.top;
    this.floorR = r.right;
    this.floorB = r.bottom;
  }

  /** FUN_1000_39d6 */
  isPeerWindow(hwnd: number): boolean {
    return this.host.peers().some((p) => p.hwnd === hwnd && p.hwnd !== 0);
  }

  /** FUN_1000_3a36: does another sheep block the span [a,b] x [top,bottom]? */
  peerHit(a: number, b: number, top: number, bottom: number): number {
    for (const p of this.host.peers().slice(0, 8)) {
      const left = p.x;
      const ptop = p.y;
      const right = left + 40;
      const pbottom = ptop + 40;
      if (right === 0) continue;
      const vert = (ptop <= top && top < pbottom) || (ptop < bottom && bottom < pbottom);
      if (vert && a < right && right <= b && a < b) return right;
      if (vert && b <= left && left < a && b < a) return left;
    }
    return 0;
  }

  /** FUN_1000_4c21 */
  peerCollide(a: number, b: number, mode: number): void {
    if (b < a) {
      b = a - 40;
      a = a + 40;
    } else {
      b = a + 80;
    }
    if (this.peerHit(a, b, this.y, this.y + 40) !== 0) {
      if (mode === 1) this.state = 0x18;
      if (mode === 2) this.state = 0x1e;
    }
  }

  /** FUN_1000_4c91 */
  peerCollide2(a: number, b: number): number {
    if (b < a) {
      b = a - 40;
      a = a + 40;
    } else {
      b = a + 80;
    }
    return this.peerHit(a, b, this.y, this.y + 40);
  }

  /** FUN_1000_3df0: remember the visible windows (max 32), top-most first. */
  snapshotWindows(): void {
    this.wins = this.host
      .enumWindows()
      .filter((w) => w.hwnd !== HWND_MAIN)
      .slice(0, 32);
  }

  /** `true` when window j (above i) does not hide the region. */
  private static notCovering(j: Rect, x0: number, x1: number, y0: number, y1: number): boolean {
    return x0 < j.left || j.right < x1 || y0 < j.top || j.bottom < y1;
  }

  /**
   * FUN_1000_3e7c: walking from edge `from` to `to` (x), between y `top` and
   * `bottom`: does the sheep run into the side of a window?  Returns the
   * window edge (0 = none) and the window.
   */
  findWallHit(top: number, bottom: number, to: number, from: number): { edge: number; hwnd: number } {
    for (let i = 0; i < this.wins.length; i++) {
      const w = this.wins[i];
      let edge: number | null = null;
      if (to < from) {
        if (to <= w.right && w.right < from && w.top < top && bottom < w.bottom) edge = w.right;
      } else if (w.left <= to && from < w.left && w.top < top && bottom < w.bottom) {
        edge = w.left;
      }
      if (edge === null) continue;
      let j = 0;
      // the original's occlusion test (same expression for both directions)
      while (j < i && Engine.notCoveringWall(this.wins[j], top, bottom, to, from)) j++;
      if (j !== i) continue;
      if (!this.host.isWindow(w.hwnd)) continue;
      const now = this.host.getWindowRect(w.hwnd);
      if (to < from ? now.right === w.right : now.left === w.left) return { edge, hwnd: w.hwnd };
    }
    return { edge: 0, hwnd: 0 };
  }

  private static notCoveringWall(j: Rect, top: number, bottom: number, p4: number, p5: number): boolean {
    return top < j.top || j.bottom < bottom || p4 < j.left || j.right < p5;
  }

  /**
   * FUN_1000_408c: falling from `oldBottom` to `newBottom` between x0..x1:
   * the top edge we land on (window or bottom of the screen), or 0.
   */
  findLanding(newBottom: number, oldBottom: number, x0: number, x1: number): { top: number; hwnd: number } {
    for (let i = 0; i < this.wins.length; i++) {
      const w = this.wins[i];
      if (w.top <= newBottom && oldBottom < w.top && w.left < x1 && x0 < w.right && 10 < w.top) {
        let j = 0;
        while (j < i && Engine.notCovering(this.wins[j], x0, x1, oldBottom, newBottom)) j++;
        if (j === i) return { top: w.top, hwnd: w.hwnd };
      }
    }
    if (newBottom < this.scrH || this.scrH < oldBottom) return { top: 0, hwnd: -1 };
    return { top: this.scrH, hwnd: 0 };
  }

  /** FUN_1000_419e: landing on one particular window; -1 = fell off screen. */
  checkLandOn(hwnd: number, newBottom: number, oldBottom: number, x0: number, x1: number): number {
    if (this.host.isWindow(hwnd)) {
      const r = this.host.getWindowRect(hwnd);
      if (r.top <= newBottom && oldBottom < r.top && r.left < x1 && x0 < r.right) return r.top;
    }
    return this.scrH < newBottom ? -1 : 0;
  }

  /** FUN_1000_4559: turn around at the screen edges (walking). */
  edgeCheckA(): void {
    if (this.dir > 0 && this.x < 0) this.state = 0x18;
    if (this.dir < 0 && this.scrW - FRAME_W < this.x) this.state = 0x18;
    if (this.dir > 0 && this.x < this.scrW - FRAME_W) {
      if (this.rand() % 20 === 0) this.state = 0x18;
    }
    if (this.dir < 0 && 0 < this.x) {
      if (this.rand() % 20 === 0) this.state = 0x18;
    }
  }

  /** FUN_1000_4614: edge handling while running. */
  edgeCheckB(randomTurn: number): void {
    if (this.gforce === 0) {
      if (this.dir > 0 && this.x < 0) this.state = 0x1e;
      if (this.dir < 0 && this.scrW - FRAME_W < this.x) this.state = 0x1e;
    }
    if (randomTurn !== 0) {
      if (this.dir > 0 && this.x < this.scrW - 0x50) {
        if (this.rand() % 20 === 0) this.state = 0x18;
      }
      if (this.dir < 0 && 0x28 < this.x) {
        if (this.rand() % 20 === 0) this.state = 0x18;
      }
    }
  }

  /** FUN_1000_46d2 */
  countDown(): void {
    const c = this.count;
    this.count = c - 1;
    if (c < 1) this.state = 0x2a;
  }

  /** FUN_1000_496f: keep standing on the floor window / fall off. */
  checkFloor(mode: number): void {
    if (this.gforce === 0) return;
    if (this.floor !== 0) {
      if (!this.isFloorValid(this.floor)) {
        this.state = mode === 2 ? 0x5e : 0x66;
        return;
      }
      const r = this.getFloorRect(this.floor);
      if (this.floorT < r.top || this.x + 0x28 < r.left || r.right < this.x) {
        this.state = mode === 2 ? 0x5e : 0x66;
        return;
      }
      if (r.top < this.floorT) {
        // the window moved up: ride along
        this.y = r.top - FRAME_H;
        this.floorT = r.top;
        this.floorB = r.bottom;
        this.floorL = r.left;
        this.floorR = r.right;
        this.setMain(this.x, this.y, this.frame);
        return;
      }
      if (mode === 1) {
        if (this.x + 8 < r.left && 0 < this.dir) {
          this.x = r.left - 10;
          this.state = 0x69;
          return;
        }
        if (r.right <= this.x + 0x20 && this.dir < 0) {
          this.x = r.right - 0x1e;
          this.state = 0x69;
          return;
        }
        if (this.rand() % 20 === 1 && 100 < this.scrH - this.y) {
          this.state = 0x68;
          return;
        }
      }
      if (mode === 2 && (this.x + 0x20 < r.left || r.right < this.x + 8)) {
        this.state = 0x5e;
        return;
      }
    }
    if (FRAME_W + this.x < 0 || this.scrW < this.x) this.state = 0;
  }

  /** FUN_1000_4b3b: climbing the side of a window. */
  checkFloorEdge(): void {
    if (this.gforce === 0 || this.floor === 0) return;
    if (!this.isFloorValid(this.floor)) {
      this.state = 0x66;
      return;
    }
    const r = this.getFloorRect(this.floor);
    if ((r.right < this.floorR && 0 < this.dir) || (this.floorL < r.left && this.dir < 0)) {
      this.state = 0x66;
    } else if ((this.floorR < r.right && 0 < this.dir) || (r.left < this.floorL && this.dir < 0)) {
      this.x = this.dir < 1 ? r.left - 0x32 : r.right + 10;
      this.setMain(this.x, this.y, this.frame);
      this.state = 0x66;
    }
  }

  /** FUN_1000_46f7: hourly chime. */
  private alarmTick(): void {
    if (this.alarmRemaining === 0) {
      const poll = this.alarmPoll;
      this.alarmPoll = poll + 1;
      if (poll > 9) {
        this.alarmPoll = 0;
        const t = this.host.localTime();
        let h12 = t.hour % 12;
        if (h12 === 0) h12 = 12;
        if (t.minute === 0 && h12 !== this.alarmLastHour) {
          this.destroySub();
          this.alarmLastHour = h12;
          this.alarmRemaining = h12 + 1;
          this.state = 0x51;
          this.alarmLastChime = 0;
        }
      }
    } else {
      const now = this.host.now();
      if (this.alarmLastChime + 1000 < now) {
        this.alarmRemaining--;
        if (this.alarmRemaining === 0) {
          this.state = this.sleeping === 0 ? 1 : 0x71;
        } else {
          this.alarmLastChime = now;
          this.host.playSound(0x6c); // FUN_1000_4210: plays even with Sound off
        }
      }
    }
  }

  // =======================================================================
  // input events
  // =======================================================================

  /** FUN_1000_8fd7 */
  event(n: number): void {
    switch (n) {
      case 0: // mouse released after dragging / woke up
        this.state = this.gforce !== 0 ? 0x61 : 1;
        break;
      case 1: // picked up
        this.state = 0x51;
        break;
      case 2: // released with the right button / G-Force switched on
        this.state = 0x61;
        break;
      case 3: // mouse idle for ~300 ticks
        this.pendingState = 0x71;
        break;
      case 4: // file dropped on the sheep
        this.state = 0x38;
        break;
    }
  }

  /** FUN_1000_91cd: dragged by (dx, dy). */
  dragBy(dx: number, dy: number): void {
    this.x += dx;
    this.y += dy;
    this.setMain(this.x, this.y, this.frame);
  }

  /** FUN_1000_904a: debug dialog — force a behaviour. */
  forceState(state: number): void {
    this.beamMain = 0;
    this.host.stopSound();
    this.destroySub();
    this.state = state;
  }

  // =======================================================================
  // FUN_1000_4cf8: one timer tick of the behaviour state machine
  // =======================================================================
  tick(): void {
    const scan = this.peerScanTimer;
    this.peerScanTimer = scan + 1;
    if (scan > 100) {
      // FUN_1000_3b4c re-enumerates the other sheep; the host's peers() is live.
      this.peerScanTimer = 0;
    }
    if (this.cfg.alarm) this.alarmTick();
    this.run();
  }

  private run(): void {
    for (;;) {
      if (this.state >= 155) return;
      // Translated from the Ghidra output of FUN_1000_4cf8 (tools/c2ts.py), reviewed
      // against the disassembly and verified tick-for-tick against the emulated
      // original (test/differential.test.ts).  `break` re-dispatches on the new
      // state like the original loop; `return` ends the tick.
      switch (this.state) {
        // ---- (re)spawn: seed rand() from the tick count ----
        case 0x0:
          this.gforce = 0;
          this.srand(this.host.now());
          this.x = -80;
          this.y = -80;
          this.state = 1;
        // ---- idle: pick the next behaviour (DS:047A, no gravity) ----
        case 0x1:
          this.yOffset = 0;
          if (!this.cfg.gforce) {
            this.beamMain = 0;
            this.destroySub();
            if (this.pendingState !== 0) {
              this.state = this.pendingState;
              this.pendingState = 0;
              return;
            }
            if (this.rand() % 20 === 5 && this.gforce === 0) {
              this.state = 0x55;
              return;
            }
            if (this.rand() % 40 === 5 && this.gforce === 0 && this.otherInstance === 0) {
              this.state = 4;
              return;
            }
            this.state = this.tbl(T.RANDOM, this.rand() % 0x50);
            if (this.x <= this.scrW && -41 < this.x && -41 < this.y && this.y <= this.scrH) return;
            if ((this.rand() & 1) === 0) {
              this.dir = 1;
              this.x = this.scrW + this.scrX0;
              this.y = (this.rand() % (this.scrH - 64)) + this.scrY0;
            } else {
              this.dir = -1;
              this.x = -40;
              this.y = (this.rand() % (this.scrH - 64)) + this.scrY0;
            }
            this.state = 0xb;
            return;
          }
          this.state = 2;
          break;
        // ---- idle with gravity: next behaviour (DS:051A) or drop onto the active window ----
        case 0x2:
          this.gforce = 1;
          this.beamMain = 0;
          this.destroySub();
          if (this.pendingState !== 0) {
            this.state = this.pendingState;
            this.pendingState = 0;
            return;
          }
          this.state = this.tbl(T.RANDOM_GFORCE, this.rand() % 0x50);
          if (this.x <= this.scrW && -41 < this.x && -41 < this.y && this.y <= this.scrH) return;
          if (this.rand() % 10 === 0 && this.otherInstance === 0) {
            this.state = 6;
            return;
          }
          this.floor = this.host.getActiveWindow();
          if (
            this.floor === HWND_MAIN ||
            this.floor === this.subHwnd ||
            this.floor === 0 ||
            this.isPeerWindow(this.floor)
          ) {
            this.state = 3;
          } else {
            this.loadFloorRect(this.floor);
            if (this.floorT < 10) {
              this.state = 3;
            } else {
              // (sic) rand() % right - left, as in the original
              this.x =
                div((this.rand() % this.floorR) - this.floorL, 3) +
                div(this.floorR - this.floorL, 2) +
                this.floorL -
                20;
              this.y = -40;
              this.bounced = 0;
              this.vy = 0;
              this.vx = 0;
              this.fallMode = this.rand() % 2;
              this.state = 0x5c;
              if (this.rand() % 3 !== 0) return;
              this.state = 3;
            }
          }
          break;
        // ---- drop in from the top of the screen ----
        case 0x3:
          this.gforce = 1;
          this.x = this.rand() % (this.scrW - 40);
          this.y = -((this.rand() % 20) + 40);
          this.bounced = 0;
          this.vy = 0;
          this.vx = 0;
          this.fallMode = this.rand() % 2;
          if (this.rand() % 3 === 0) {
            this.host.bringToTop?.(HWND_MAIN);
          }
          this.state = 0x61;
          return;
        // ---- walk off screen, then a UFO episode (DS:05BA) ----
        case 0x4:
          if (this.x < div(this.scrW, 2) - 20) {
            this.dir = 1;
          } else {
            this.dir = -1;
          }
          this.show(4);
          this.state = 5;
          return;
        case 0x5:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          if (-41 < this.x && this.x <= this.scrW) return;
          this.state = 6;
          return;
        case 0x6:
          this.state = this.tbl(T.UFO_EPISODES, this.rand() % 8);
          return;
        // ---- Run ----
        case 0x7:
          this.wallCheck = 0;
          if ((this.rand() & 1) === 0) {
            this.wallCheck = 1;
          }
          if (this.wallCheck !== 0) {
            this.snapshotWindows();
          }
          this.show(4);
          this.count = (this.rand() % 10) + 10;
          this.state = 8;
          return;
        case 0x8:
          if (this.delay(1)) return;
          if (this.wallCheck !== 0) {
            const hit =
              this.dir < 1
                ? this.findWallHit(this.y, this.y + 40, 40 - (this.dir * 16 - this.x), this.x + 40)
                : this.findWallHit(this.y, this.y + 40, -(this.dir * 16 - this.x), this.x);
            if (hit.edge !== 0) {
              if (this.dir < 1) {
                this.x = hit.edge - 40;
              } else {
                this.x = hit.edge;
              }
              this.show();
              this.state = 0x1e;
              return;
            }
          }
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          if (this.rand() % 50 === 0 && this.gforce !== 0) {
            this.state = 9;
          }
          this.edgeCheckB(1);
          this.countDown();
          this.checkFloor(2);
          this.peerCollide(-(this.dir * 16 - this.x), this.dir * 16 + this.x, 2);
          return;
        // ---- Leap ----
        case 0x9:
          this.vy = -11;
          this.vx = this.dir * -8;
          this.prevY = this.y;
          this.state = 10;
        case 0xa:
          this.x += this.vx;
          this.y += this.vy;
          this.vy += 2;
          if (this.vy < -1 || 1 < this.vy) {
            if (this.vy < -1) {
              this.frame = 30;
            } else {
              this.frame = 24;
            }
          } else {
            this.frame = 23;
          }
          if (this.prevY <= this.y) {
            this.y = this.prevY;
            this.state = 7;
          }
          this.show();
          this.edgeCheckB(0);
          this.peerCollide(this.vx + this.x, this.x - this.vx, 2);
          if ((this.state as number) !== 30) return;
          if (this.prevY === this.y) return;
          this.yOffset = this.y - this.prevY;
          return;
        // ---- Walk ----
        case 0xb:
          this.wallCheck = 0;
          const coin = this.rand(); // always drawn, even without gravity
          if (this.gforce !== 0 && (coin & 1) === 0) {
            this.wallCheck = 1;
          }
          if (this.wallCheck !== 0) {
            this.snapshotWindows();
          }
          this.count = (this.rand() % 10) + 10;
          this.show(2);
          this.state = 0xc;
          return;
        case 0xc:
          if (this.delay(1)) return;
          if (this.wallCheck !== 0) {
            const hit =
              this.dir < 1
                ? this.findWallHit(this.y, this.y + 40, 40 - (this.dir * 6 - this.x), this.x + 40)
                : this.findWallHit(this.y, this.y + 40, -(this.dir * 6 - this.x), this.x);
            if (hit.edge !== 0) {
              if (this.dir < 1) {
                this.x = hit.edge - 40;
              } else {
                this.x = hit.edge;
              }
              this.floor = hit.hwnd;
              this.loadFloorRect(hit.hwnd);
              this.targetY = this.floorT - 12;
              this.gforce = 1;
              this.targetX = this.x;
              this.frame = 30;
              this.host.setZOrder?.(HWND_MAIN, this.floor);
              this.state = 0x59;
              return;
            }
          }
          this.x -= this.dir * 6;
          this.frame = this.frame === 2 ? 3 : 2;
          this.show();
          this.edgeCheckA();
          this.countDown();
          this.checkFloor(1);
          this.peerCollide(-(this.dir * 6 - this.x), this.dir * 6 + this.x, 1);
          return;
        // ---- Hand walk ----
        case 0xd:
          this.variant = this.rand() % 2;
          this.count = (this.rand() % 4) + 4;
          if (this.variant === 0) {
            this.frame = 86;
          } else {
            this.frame = 88;
          }
          this.show();
          this.state = 0xe;
          return;
        case 0xe:
          if (this.delay(3)) return;
          this.x -= this.dir * 6;
          if (this.variant === 0) {
            this.frame = this.frame === 86 ? 87 : 86;
          } else this.frame = this.frame === 88 ? 89 : 88;
          this.show();
          this.edgeCheckA();
          this.countDown();
          this.checkFloor(1);
          return;
        // ---- Beg ----
        case 0xf:
          this.variant = this.rand() % 2;
          this.count = (this.rand() % 3) + 3;
          if (this.variant === 0) {
            this.frame = 52;
          } else {
            this.frame = 54;
          }
          this.show();
          this.state = 0x10;
          return;
        case 0x10:
          if (this.delay(3)) return;
          if (this.variant === 0) {
            this.frame = this.frame === 52 ? 53 : 52;
          } else this.frame = this.frame === 54 ? 55 : 54;
          this.show();
          this.edgeCheckA();
          this.countDown();
          this.checkFloor(0);
          return;
        // ---- Sleep ----
        case 0x11:
          this.show(6);
          this.state = 0x12;
          return;
        case 0x12:
          if (this.delay(1)) return;
          this.frame++;
          this.show();
          if (this.frame === 8) {
            this.frame = 0;
            this.state = 0x13;
            this.count = (this.rand() % 8) + 8;
          }
          this.checkFloor(0);
          return;
        case 0x13:
          if (this.delay(4)) return;
          this.frame = this.frame === 0 ? 1 : 0;
          this.show();
          this.countDown();
          this.checkFloor(0);
          return;
        // ---- Look around ----
        case 0x14:
          this.variant = this.rand() % 3;
          if (this.variant === 0) {
            this.frame = 6;
          } else if (this.variant === 1) {
            this.frame = 31;
          } else {
            this.frame = 73;
          }
          this.show();
          this.state = 0x15;
          this.wait = (this.rand() % 15) + (this.rand() % 15);
          this.checkFloor(0);
          return;
        case 0x15:
          this.checkFloor(0);
          if (0 < this.wait) {
            this.wait--;
            return;
          }
          this.count = 0;
          this.wait--;
          this.state = 0x16;
          return;
        case 0x16:
          this.frame = this.tbl(T.LOOK_AROUND, this.variant * 8 + this.count);
          this.show();
          this.count++;
          if (7 < this.count) {
            this.state = 0x17;
            this.wait = (this.rand() % 15) + (this.rand() % 15);
          }
          this.checkFloor(0);
          return;
        case 0x17:
          this.checkFloor(0);
          if (0 < this.wait) {
            this.wait--;
            return;
          }
          this.wait--;
          this.state = 1;
          return;
        // ---- turn around ----
        case 0x18:
          if (this.delay(1)) return;
          this.show(3);
          this.variant = (this.rand() & 1) === 0 ? 1 : 0;
          this.count = 0;
          this.state = 0x19;
          return;
        case 0x19:
          if (this.delay(1)) return;
          if (this.variant === 0) {
            if (this.dir < 1) {
              this.frame = 14 - this.count;
            } else {
              this.frame = this.count + 12;
            }
          } else if (this.dir < 1) {
            this.frame = 11 - this.count;
          } else {
            this.frame = this.count + 9;
          }
          this.show();
          this.count++;
          if (2 < this.count) {
            this.dir = -this.dir;
            this.state = 0x1a;
          }
          this.checkFloor(0);
          return;
        case 0x1a:
          if (this.delay(1)) return;
          this.show(3);
          this.state = 1;
          this.checkFloor(0);
          return;
        // ---- bumped: jump back / roll ----
        case 0x1b:
          this.vy = -10;
          this.vx = this.dir << 3;
          this.prevY = this.y;
          this.seqIdx = 0;
          this.state = 0x1c;
        case 0x1c:
          this.x += this.vx;
          this.y += this.vy;
          this.vy += 2;
          this.frame = this.tbl(T.JUMP, this.seqIdx);
          this.seqIdx++;
          this.show();
          if (this.frame !== 64) return;
          this.fallMode = 3;
          this.state = 99;
          return;
        case 0x1d:
          this.wait = 0;
          this.count = 0;
          this.variant = 0;
          if ((this.rand() & 7) === 0) {
            this.variant = 1;
          }
          if (this.rand() % 5 === 0) {
            this.variant = 2;
          }
          this.state = 0x20;
          if (this.variant !== 0) {
            this.state = 0x22;
          }
          break;
        case 0x1e:
          if (this.gforce === 0) {
            this.state = 0x18;
          } else {
            this.state = 0x1b;
          }
          break;
        case 0x1f:
          this.peerCollide(this.dir * 10 + this.x, this.x, 2);
          if ((this.state as number) === 30) {
            if (this.count === 0) return;
            this.yOffset -= this.tbl(T.JUMP_DY, this.count);
            return;
          }
          this.frame = this.tbl(T.JUMP, this.count);
          this.setMain(this.x, this.y - this.tbl(T.JUMP_DY, 1 + this.count), this.frame);
          this.count++;
          if (this.variant !== 0 && this.frame === 66) {
            if (this.yOffset !== 0) {
              this.y -= this.yOffset;
              this.x += this.dir * 10;
              this.yOffset = 0;
              this.setMain(this.x, this.y, 66);
            }
            this.bounceCount = 3;
            this.state = 0x22;
            return;
          }
          if (8 < this.count) {
            this.state = 0x20;
            return;
          }
          this.x += this.dir * 10;
          return;
        case 0x20:
          this.checkFloor(0);
          if (this.delay(8)) return;
          this.dir = -this.dir;
          this.show(93);
          this.state = 0x21;
          return;
        case 0x21:
          this.checkFloor(0);
          if (this.delay(15)) return;
          this.state = 1;
          return;
        case 0x22:
          this.x += this.dir * 8;
          if (this.frame === 70) {
            this.frame = 63;
          } else {
            this.frame++;
          }
          this.show();
          if (this.variant === 2 && this.frame === 70) {
            this.state = 0x45;
            return;
          }
          if (this.scrW < this.x || this.x < -40) {
            this.state = 1;
          }
          this.peerCollide(this.dir * 8 + this.x, -(this.dir * 8 - this.x), 2);
          if ((this.state as number) === 30) {
            if (this.bounceCount < 1) {
              this.state = 0x22;
              this.bounceCount--;
            } else {
              this.dir = -this.dir;
              this.state = 0x22;
              this.bounceCount--;
            }
          }
          this.checkFloor(2);
          return;
        // ---- Tinkle ----
        case 0x23:
          if (this.delay(1)) return;
          this.show(3);
          this.count = 0;
          this.state = 0x25;
          return;
        default:
          return;
        case 0x25:
          if (this.delay(1)) return;
          if (this.dir < 1) {
            this.frame = 14 - this.count;
          } else {
            this.frame = this.count + 12;
          }
          this.show();
          this.count++;
          if (1 < this.count) {
            this.frame = 103;
            this.state = 0x26;
          }
          this.checkFloor(0);
          return;
        case 0x26:
          if (this.delay(1)) return;
          this.show();
          this.frame++;
          if (104 < this.frame) {
            this.count = 0;
            this.state = 0x27;
            return;
          }
          this.checkFloor(0);
          return;
        case 0x27:
          if (this.delay(this.count === 0 ? 10 : 1)) return;
          if (this.count < 9 || (11 < this.count && this.count < 13)) {
            this.frame = this.frame === 105 ? 106 : 105;
          } else {
            this.frame = 104;
          }
          this.show();
          if (15 < this.count) {
            this.state = 0x28;
            this.frame = 104;
          }
          this.count++;
          this.checkFloor(0);
          return;
        case 0x28:
          if (this.delay(1)) return;
          this.show();
          this.frame--;
          if (this.frame < 103) {
            this.count = 0;
            this.state = 0x29;
            return;
          }
          this.checkFloor(0);
          return;
        case 0x29:
          if (this.delay(1)) return;
          this.frame = (0 < this.dir ? -this.count : this.count) + 13;
          this.show();
          this.count++;
          if (1 < this.count) {
            this.state = 0x2a;
          }
          this.checkFloor(0);
          return;
        case 0x2a:
          this.checkFloor(0);
          if (this.delay(1)) return;
          this.show(3);
          this.count = 0;
          this.state = 1;
          return;
        // ---- Yawn ----
        case 0x2b:
          this.playSound(109);
          this.count = 0;
          this.state = 0x2c;
        case 0x2c:
          if (this.delay(1)) return;
          if (!this.nextFrame(T.YAWN)) {
            this.wait = 0;
            this.state = 1;
            return;
          }
          this.checkFloor(0);
          return;
        // ---- Baaaa ----
        case 0x2d:
          this.playSound(108);
          this.count = 0;
          this.state = 0x2e;
        case 0x2e:
          if (this.delay(0)) return;
          if (!this.nextFrame(T.BAA)) {
            this.wait = 0;
            this.state = 1;
            return;
          }
          this.checkFloor(0);
          return;
        // ---- Sneeze ----
        case 0x2f:
          this.count = 0;
          this.state = 0x30;
        case 0x30:
          if (this.delay(0)) return;
          if (this.count === 2) {
            this.playSound(110);
          }
          if (!this.nextFrame(T.SNEEZE)) {
            this.state = 1;
            return;
          }
          this.checkFloor(0);
          return;
        // ---- Bug Eyes ----
        case 0x31:
          this.count = 0;
          this.state = 0x32;
        case 0x32:
          if (this.delay(1)) return;
          if (!this.nextFrame(T.BUG_EYES)) {
            this.wait = 0;
            this.state = 1;
            return;
          }
          this.checkFloor(0);
          return;
        // ---- Charge ----
        case 0x33:
          this.count = 0;
          this.state = 0x34;
        case 0x34:
          if (this.delay(0)) return;
          this.frame = this.frame === 56 ? 57 : 56;
          if (30 < this.count) {
            this.frame = 3;
            this.state = 1;
          }
          this.count++;
          this.show();
          this.checkFloor(0);
          return;
        // ---- Eat Flowers (sub actor: flowers) ----
        case 0x35:
          this.count = 0;
          this.state = 0x36;
          this.createSub();
          this.subDir = this.dir;
          this.subY = this.y;
          this.subFrame = 149;
          if (this.dir < 1) {
            this.subX = this.x + 40;
          } else {
            this.subX = this.x - 40;
          }
          this.setSub(this.subX, this.y, 149);
          this.host.setZOrder?.(this.subHwnd, HWND_MAIN);
          return;
        case 0x36:
          if (this.delay(2)) return;
          this.frame = this.tbl(T.EAT_FLOWERS, this.count);
          this.count++;
          if (this.frame === 2) {
            this.x -= this.dir * 8;
            this.setMain(this.x, this.y, 2);
            return;
          }
          if (148 < this.frame && this.frame < 154) {
            this.subFrame = this.frame;
            if (this.frame === 153) {
              this.subFrame = 173;
            }
            this.setSub(this.subX, this.subY, this.subFrame);
            this.frame = this.tbl(T.EAT_FLOWERS, this.count);
            this.count++;
          }
          if (this.frame === 0) {
            this.destroySub();
            this.state = 1;
            return;
          }
          this.show();
          return;
        // ---- dance (a file was dropped on the sheep) ----
        case 0x38:
          this.count = 0;
          this.state = 0x39;
        case 0x39:
          if (this.delay(2)) return;
          this.frame = this.tbl(T.EAT_FLOWERS, this.count);
          this.count++;
          if (148 < this.frame && this.frame < 154) {
            // entries 149..153 drive the flower sprite in state 0x36; skip them here
            this.frame = this.tbl(T.EAT_FLOWERS, this.count++);
          }
          if (15 < this.count) {
            this.wait = 0;
            this.state = 0x2a;
            return;
          }
          this.show();
          this.checkFloor(0);
          return;
        // ---- Stare ----
        case 0x3a:
          if (this.delay(1)) return;
          this.show(3);
          this.count = 0;
          this.state = 0x3b;
          return;
        case 0x3b:
          if (this.delay(1)) return;
          if (this.dir < 1) {
            this.frame = 11 - this.count;
          } else {
            this.frame = this.count + 9;
          }
          this.count++;
          if (2 < this.count) {
            this.frame = 34;
            this.wait = -10;
            this.state = 0x3c;
            this.count = 0;
          }
          this.show();
          this.checkFloor(0);
          return;
        case 0x3c:
          if (this.delay(0)) return;
          this.frame = this.tbl(T.STARE, this.count);
          this.show();
          this.count++;
          if (7 < this.count) {
            this.count = 0;
            this.state = 0x3d;
            this.wait = -5;
          }
          this.checkFloor(0);
          return;
        case 0x3d:
          if (this.delay(1)) return;
          this.frame = (0 < this.dir ? -this.count : this.count) + 10;
          this.show();
          this.count++;
          if (1 < this.count) {
            this.state = 0x2a;
          }
          this.checkFloor(0);
          return;
        // ---- Blush ----
        case 0x3e:
          this.count = 0;
          this.state = 0x3f;
          return;
        case 0x3f:
          if (this.delay(2)) return;
          this.frame = this.tbl(T.BLUSH, this.count);
          if (this.frame === 0) {
            this.wait = 0;
            this.state = 1;
            return;
          }
          this.show();
          this.count++;
          this.checkFloor(0);
          return;
        // ---- Roll ----
        case 0x41:
          this.show(3);
          this.count = 0;
          this.state = 0x42;
          return;
        case 0x42:
          if (this.delay(1)) return;
          if (this.count === 0) {
            if (this.dir < 1) {
              this.frame = 11;
            } else {
              this.frame = 9;
            }
          } else {
            this.frame = 10;
          }
          this.show();
          if (0 < this.count) {
            this.state = 0x43;
            this.count = 0;
            this.count2 = ((this.rand() % 4) + 4) * 8;
            return;
          }
          this.count++;
          this.checkFloor(0);
          return;
        case 0x43:
          this.count--;
          if (this.count < 0) {
            this.count = 79;
          }
          this.x -= this.dir * 8;
          this.frame = this.tbl(T.ROLL, this.count % 8);
          this.show();
          if (0 < this.dir && this.x < 0) {
            this.state = 0x1e;
          }
          if (this.dir < 0 && this.scrW - FRAME_W < this.x) {
            this.state = 0x1e;
          }
          this.count2--;
          if (this.count2 < 1) {
            this.state = 0x44;
            this.count = 0;
          }
          this.checkFloor(2);
          this.peerCollide(-(this.dir * 8 - this.x), this.dir * 8 + this.x, 2);
          return;
        case 0x44:
          if (this.delay(1)) return;
          if (this.count === 1) {
            if (this.dir < 1) {
              this.frame = 11;
            } else {
              this.frame = 9;
            }
          } else if (this.count === 0) {
            this.frame = 10;
          } else {
            this.frame = 3;
          }
          this.show();
          if (1 < this.count) {
            this.count++;
            this.state = 1;
            return;
          }
          this.count++;
          this.checkFloor(0);
          return;
        // ---- Die ----
        case 0x45:
          this.wait = 0;
          this.count = 0;
          this.state = 0x46;
        case 0x46:
          if (this.dir < 1) {
            this.frame = this.tbl(T.DIE, (this.count + 4) % 8);
          } else {
            this.frame = this.tbl(T.DIE, this.count % 8);
          }
          if (this.frame === 2) {
            this.frame = 3;
            if (this.dir < 1) {
              this.setMain(this.x, this.y, 3);
            } else {
              this.dir = -this.dir;
              this.setMain(this.x, this.y, 3);
              this.dir = -this.dir;
            }
          } else if (this.frame === 3) {
            if (this.dir < 0) {
              this.dir = -this.dir;
              this.setMain(this.x, this.y, 3);
              this.dir = -this.dir;
            } else {
              this.setMain(this.x, this.y, 3);
            }
          } else {
            this.show();
          }
          const done = 15 < this.count;
          this.count++;
          if (done) {
            this.show(70);
            this.state = 0x47;
          }
          this.checkFloor(0);
          return;
        case 0x47:
          this.checkFloor(0);
          if (this.delay(14)) return;
          this.show(96);
          this.state = 0x48;
          return;
        case 0x48:
          this.checkFloor(0);
          if (this.delay(30)) return;
          this.show(3);
          this.state = 1;
          return;
        // ---- (unreachable in the original) ----
        case 0x49:
          this.count = 0;
          this.state = 0x4a;
        case 0x4a:
          if (this.delay(2)) return;
          if (!this.nextFrame(T.UNUSED_49)) {
            this.wait = 0;
            this.state = 1;
            return;
          }
          this.checkFloor(0);
          return;
        // ---- Climb ----
        case 0x4b:
          this.count = (this.rand() % 8) + 8;
          if (this.dir < 1) {
            this.frame = 14;
          } else {
            this.frame = 12;
          }
          this.count2 = this.count;
          this.show();
          this.state = 0x4c;
          return;
        case 0x4c:
          if (this.delay(1)) return;
          this.show(13);
          this.state = 0x4d;
          return;
        case 0x4d:
          if (this.delay(2)) return;
          this.frame = this.frame === 131 ? 132 : 131;
          this.y -= 8;
          this.show();
          if (0 < this.count) {
            this.count--;
            return;
          }
          this.count = this.count2;
          this.state = 0x4e;
          return;
        case 0x4e:
          this.frame = 133;
          this.y += 8;
          this.setMain(this.x, this.y, 133);
          if (0 < this.count) {
            this.count--;
            return;
          }
          this.count--;
          this.state = 0x4f;
          return;
        case 0x4f:
          if (this.wait < 10) return void this.wait++;
          this.count = 3;
          this.wait = 0;
          this.state = 0x50;
          return;
        case 0x50:
          if (this.delay(1)) return;
          if (this.dir < 1) {
            this.frame = this.tbl(T.CLIMB_DOWN_R, this.count);
          } else {
            this.frame = this.tbl(T.CLIMB_DOWN_L, this.count);
          }
          this.count++;
          if (this.frame === 0) {
            this.wait = 0;
            this.state = 1;
            return;
          }
          this.show();
          return;
        // ---- dangle (picked up / hourly alarm) ----
        case 0x51:
          this.show(4);
          this.state = 0x52;
          return;
        case 0x52:
          this.wait = 0;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          return;
        // ---- (unreachable in the original) ----
        case 0x54:
          this.state = 0;
          return;
        // ---- go to the active window: drop onto it or climb its side ----
        case 0x55:
          this.floor = this.host.getActiveWindow();
          if (
            this.floor === HWND_MAIN ||
            this.floor === this.subHwnd ||
            this.floor === 0 ||
            this.isPeerWindow(this.floor)
          ) {
            this.state = 1;
            return;
          }
          this.loadFloorRect(this.floor);
          if (this.floorT < 10) {
            this.state = 1;
            return;
          }
          if (
            (this.dir < 1 || this.x <= this.floorR || this.y <= this.floorT || this.floorB <= this.y + 40) &&
            (-1 < this.dir ||
              this.floorL <= this.x + 40 ||
              this.y <= this.floorT ||
              this.floorB <= this.y + 40)
          ) {
            this.targetX =
              div((this.rand() % this.floorR) - this.floorL, 3) +
              div(this.floorR - this.floorL, 2) +
              this.floorL +
              -20;
            this.targetY = this.floorT - 40;
            if (this.x < div(this.scrW, 2) - 20) {
              this.dir = 1;
            } else {
              this.dir = -1;
            }
            this.show(4);
            this.state = 0x56;
            return;
          }
          this.state = 0x57;
          return;
        case 0x56:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          if (-41 < this.x && this.x <= this.scrW) return;
          if (!this.isFloorValid(this.floor)) {
            this.state = 1;
            return;
          }
          if (this.rand() % 3 !== 0) {
            this.bounced = 0;
            this.state = 0x5c;
            this.gforce = 1;
            this.x = this.targetX;
            this.y = -40;
            this.vy = 0;
            this.vx = 0;
            this.fallMode = this.rand() % 2;
            if (this.fallMode !== 0) {
              this.vx = this.dir * -3;
            }
            this.host.setZOrder?.(HWND_MAIN, this.floor);
            return;
          }
          this.state = 3;
          break;
        case 0x57:
          this.host.setZOrder?.(HWND_MAIN, this.floor);
          if (this.dir < 1) {
            this.targetX = this.floorL - 40;
          } else {
            this.targetX = this.floorR;
          }
          this.targetY = this.floorT;
          this.state = 0x58;
        case 0x58:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          if ((this.targetX < this.x || this.dir < 1) && (this.x < this.targetX || -1 < this.dir)) {
            this.show();
            return;
          }
          if (!this.isFloorValid(this.floor)) {
            this.state = 1;
            return;
          }
          const r = this.getFloorRect(this.floor);
          if (r.left === this.floorL && r.right === this.floorR && r.top < this.y && this.y + 40 < r.bottom) {
            this.gforce = 1;
            this.x = this.targetX;
            this.frame = 30;
            this.targetY = r.top - 12;
            this.state = 0x59;
            return;
          }
          this.state = 1;
          return;
        case 0x59:
          if (this.delay(1)) return;
          this.show();
          this.y -= 6;
          this.frame = this.frame === 15 ? 16 : 15;
          if (this.y <= this.targetY) {
            this.state = 0x5a;
            return;
          }
          this.checkFloorEdge();
          return;
        case 0x5a:
          if (this.delay(2)) return;
          this.x -= this.dir * 8;
          this.y = this.targetY - 20;
          this.show(76);
          this.state = 0x5b;
          return;
        case 0x5b:
          if (this.delay(2)) return;
          this.x -= this.dir * 24;
          this.y -= 8;
          this.show(3);
          this.state = 0xb;
          return;
        // ---- dropping onto the active window ----
        case 0x5c:
          this.vy += 4;
          this.prevY = this.y;
          this.x += this.vx;
          this.y += this.vy;
          const land = this.checkLandOn(
            this.floor,
            this.y + FRAME_H,
            this.prevY + FRAME_H,
            this.x,
            this.x + FRAME_W,
          );
          if (land !== 0) {
            if (land === -1) {
              this.show();
              this.state = 0;
              return;
            }
            this.y = land - FRAME_H;
            if ((this.vy < 64 && this.bounced === 0) || this.vy < 8) {
              this.host.setZOrder?.(HWND_MAIN, this.floor);
              this.bounced = 0;
              this.count = 0;
              this.state = 0x5d;
              if (this.vy < 36) {
                this.frame = 49;
                this.wait = -4;
              } else {
                if ((this.rand() & 3) === 0) {
                  this.frame = 48;
                } else {
                  this.frame = 42;
                }
                this.wait = -12;
              }
              this.show();
              return;
            }
            this.vy = div(this.vy * 2, -3);
            this.bounced = 1;
          }
          if (this.fallMode === 0) {
            this.frame = 42;
          } else this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          return;
        case 0x5d:
          if (this.delay(1)) return;
          if (this.fallMode !== 0) {
            this.frame = 2;
            this.wait = 0;
            this.state = 0xb;
            return;
          }
          if (this.count === 0) {
            this.frame = 13;
          } else if (this.count === 1) {
            if (this.dir < 1) {
              this.frame = 14;
            } else {
              this.frame = 12;
            }
          } else if (this.count === 2) {
            this.frame = 3;
          }
          this.show();
          if (this.count < 2) {
            this.count++;
            return;
          }
          this.count++;
          this.state = 0xb;
          return;
        // ---- start falling (various ways) ----
        case 0x5e:
          this.gforce = 1;
          this.vy = 0;
          this.vx = this.dir * -8;
          this.fallMode = 1;
          this.state = 99;
          break;
        case 0x5f:
          this.gforce = 1;
          this.vy = 0;
          this.vx = this.dir * -3;
          this.fallMode = 1;
          this.state = 99;
          break;
        case 0x60:
          this.gforce = 1;
          this.vy = 0;
          this.vx = 0;
          this.fallMode = 0;
          this.state = 99;
          break;
        case 0x61:
          this.gforce = 1;
          this.vy = 0;
          this.vx = 0;
          this.fallMode = 1;
          this.state = 99;
          break;
        case 0x62:
          this.gforce = 1;
          this.vy = 0;
          this.vx = 0;
          this.fallMode = 2;
          this.state = 99;
          break;
        // ---- falling with gravity, bounce and land ----
        case 0x63:
          this.snapshotWindows();
          this.vy += 4;
          this.prevY = this.y;
          this.x += this.vx;
          const fellOff = this.scrH < this.y;
          this.y += this.vy;
          if (fellOff) {
            this.show();
            this.state = 0;
            return;
          }
          const landing = this.findLanding(this.y + FRAME_H, this.prevY + FRAME_H, this.x, this.x + FRAME_W);
          if (landing.top !== 0) {
            this.floor = landing.hwnd;
            if (!this.isFloorValid(this.floor)) {
              this.show();
              this.state = 0;
              return;
            }
            this.loadFloorRect(this.floor);
            this.y = landing.top - FRAME_H;
            if (this.fallMode === 3) {
              this.show(66);
              this.state = 0x1d;
              return;
            }
            if ((this.vy < 64 && this.bounced === 0) || this.vy < 8) {
              if (this.floor !== 0) {
                this.host.setZOrder?.(HWND_MAIN, this.floor);
              }
              this.bounced = 0;
              this.count = 0;
              this.state = 100;
              if (this.vy < 36) {
                this.frame = 49;
                this.wait = -4;
              } else {
                if ((this.rand() & 3) === 0) {
                  this.frame = 48;
                } else {
                  this.frame = 42;
                }
                this.wait = -10;
              }
              if (this.fallMode === 2) {
                if (this.vy < 36) {
                  this.frame = 41;
                } else {
                  this.frame = 45;
                }
              }
              this.show();
              return;
            }
            if ((this.rand() & 7) === 0 && this.bounced === 0) {
              this.bounced = 0;
              this.count = 0;
              this.state = 100;
              this.frame = 48;
              this.wait = -12;
              if (this.fallMode === 2) {
                this.frame = 45;
              }
              this.show();
              return;
            }
            this.vy = div(this.vy * 2, -3);
            this.bounced = 1;
          }
          if (this.fallMode === 2) {
            this.frame = this.frame === 40 ? 41 : 40;
          } else if (this.fallMode === 1) {
            this.frame = this.frame === 4 ? 5 : 4;
          } else if (this.fallMode === 0) {
            this.frame = 42;
          } else {
            this.frame = this.tbl(T.JUMP, this.seqIdx);
            if (this.frame !== 66) this.seqIdx++;
          }
          if (this.fallMode === 3 && this.peerCollide2(this.x, this.x - this.vx) !== 0) {
            this.dir = -this.dir;
            this.state = 0x1e;
            return;
          }
          this.show();
          return;
        case 0x64:
          if (this.delay(1)) return;
          if (this.fallMode === 1) {
            this.frame = 2;
            this.wait = 0;
            this.state = 0xb;
            return;
          }
          if (this.fallMode === 2) {
            this.count = 0;
            this.wait = 0;
            this.state = 0x65;
            return;
          }
          if (this.count === 0) {
            this.frame = 13;
          } else if (this.count === 1) {
            if (this.dir < 1) {
              this.frame = 14;
            } else {
              this.frame = 12;
            }
          } else if (this.count === 2) {
            this.frame = 3;
          }
          this.show();
          if (this.count < 2) {
            this.count++;
            return;
          }
          this.count++;
          this.state = 0xb;
          return;
        case 0x65:
          if (this.delay(1)) return;
          if (this.count === 0) {
            this.frame = 31;
            this.wait = -8;
          } else if (this.count === 2) {
            this.frame = 3;
          }
          this.show();
          if (this.count < 6) {
            this.count++;
            return;
          }
          this.count++;
          this.state = 0xb;
          return;
        // ---- floor vanished: startle, then fall ----
        case 0x66:
          this.host.stopSound();
          this.count = 6;
          this.frame = 3;
          this.variant = 0;
          if (this.rand() % 3 === 0) {
            this.variant = 1;
          }
          this.state = 0x67;
        case 0x67:
          if (this.variant === 0) {
            this.frame = this.frame === 4 ? 5 : 4;
          } else this.frame = this.frame === 50 ? 51 : 50;
          this.show();
          if (0 < this.count) {
            this.count--;
            return;
          }
          this.count--;
          this.state = 0x61;
          return;
        // ---- sit on / hang from the edge of a window ----
        case 0x68:
          this.fallMode = 0;
          this.state = 0x6a;
          break;
        case 0x69:
          this.fallMode = 1;
          this.state = 0x6a;
          break;
        case 0x6a:
          if (this.fallMode === 0) {
            // z-order: sit in front of whatever is under the sheep's feet
            const w0 = this.host.windowFromPoint?.(this.x, this.y + 39) ?? 0;
            const w1 = this.host.windowFromPoint?.(this.x + 39, this.y + 39) ?? 0;
            if (w0 === HWND_MAIN && w1 === HWND_MAIN) {
              this.host.bringToTop?.(HWND_MAIN);
            } else if (w0 === HWND_MAIN) {
              this.host.setZOrder?.(HWND_MAIN, w1);
            } else {
              this.host.setZOrder?.(HWND_MAIN, w0);
            }
            this.frame = 81;
          } else {
            this.frame = 78;
          }
          this.show();
          this.count = 0;
          this.state = 0x6b;
          return;
        case 0x6b:
          this.frame = this.tbl(T.EDGE_SIT, this.count + this.fallMode * -8);
          this.show();
          this.count++;
          if (this.count < 8) return;
          if (this.fallMode !== 0) {
            if ((this.rand() & 1) === 0) {
              this.state = 0x6f;
              return;
            }
            this.state = 0x6d;
            return;
          }
          if ((this.rand() & 1) === 0) {
            this.state = 0x6f;
            return;
          }
          this.state = 0x6c;
          return;
        case 0x6c:
          if (this.delay(10)) return;
          this.show(3);
          this.state = 1;
          return;
        case 0x6d:
          this.vx = this.dir * -14;
          this.frame = 23;
          this.x += this.vx;
          this.setMain(this.x, this.y, 23);
          this.count = 0;
          this.state = 0x5f;
          return;
        case 0x6e:
          this.x += this.vx;
          this.vx += this.dir;
          this.show();
          if (this.count < 4) {
            this.count++;
            return;
          }
          this.count++;
          this.state = 0x5f;
          return;
        case 0x6f:
          if (this.fallMode === 0) {
            this.variant = this.rand() % 2;
            if (this.variant === 0) {
              this.y += 20;
            } else {
              this.y += 36;
            }
          } else {
            this.x -= this.dir * 26;
            this.y += 35;
            this.dir = -this.dir;
          }
          this.count = 0;
          this.state = 0x70;
        case 0x70:
          if (this.delay(this.count === 0 ? 10 : 1)) return;
          if (this.fallMode === 0) {
            this.frame = this.tbl(T.DANGLE, (this.count % 4) + this.variant * 4);
          } else this.frame = this.frame === 40 ? 41 : 40;
          this.show();
          this.count++;
          if (this.count < 13) return;
          if (this.fallMode !== 0) {
            this.state = 0x62;
            return;
          }
          this.state = 0x60;
          return;
        // ---- deep sleep (mouse idle) ----
        case 0x71:
          this.sleeping = 1;
          this.show(6);
          this.state = 0x72;
          return;
        case 0x72:
          if (this.delay(1)) return;
          this.frame++;
          this.show();
          if (this.frame === 8) {
            this.frame = 0;
            this.state = 0x73;
          }
          this.checkFloor(0);
          return;
        case 0x73:
          this.checkFloor(0);
          if (this.delay(4)) return;
          this.frame = this.frame === 0 ? 1 : 0;
          this.show();
          return;
        // ---- Look Up: a black sheep passes overhead ----
        case 0x74:
          this.x = this.scrW;
          this.y = div(this.scrH * 7, 8);
          this.frame = 4;
          this.dir = 1;
          this.setMain(this.scrW, this.y, 4);
          this.state = 0x75;
          return;
        case 0x75:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          if (div(this.scrW, 2) - 20 < this.x) return;
          this.state = 0x76;
          return;
        case 0x76:
          this.createSub();
          this.subDir = -1;
          this.subX = -40;
          this.subY = div(this.scrH, 8);
          this.subFrame = 154;
          this.count = 0;
          this.state = 0x77;
          this.host.bringToTop?.(HWND_MAIN);
          this.host.bringToTop?.(this.subHwnd);
          return;
        case 0x77:
          if (this.count === 0) {
            this.show(73);
            if (this.rand() % 20 === 0) {
              this.count = 1;
            }
          } else {
            this.frame = this.tbl(T.LOOK_UP, this.count);
            this.show();
            this.count++;
            if (7 < this.count) {
              this.count = 0;
            }
          }
          if (this.delay(1)) return;
          this.subX -= this.subDir * 16;
          this.subFrame = this.subFrame === 154 ? 155 : 154;
          this.setSub(this.subX, this.subY, this.subFrame);
          if (this.x < this.subX) {
            this.dir = -1;
            this.show();
          }
          if (this.subX <= this.scrW) return;
          this.destroySub();
          this.state = 0x78;
          return;
        case 0x78:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          if (this.x <= this.scrW) return;
          this.state = 1;
          return;
        // ---- Rendezvous with the black sheep ----
        case 0x79:
          this.x = this.scrW;
          this.y = div(this.scrH * 7, 8);
          this.frame = 4;
          this.dir = 1;
          this.createSub();
          this.subDir = -1;
          this.subX = -40;
          this.subY = div(this.scrH * 7, 8);
          this.subFrame = 154;
          this.show();
          this.setSub(this.subX, this.subY, this.subFrame);
          this.state = 0x7a;
          this.host.bringToTop?.(HWND_MAIN);
          this.host.bringToTop?.(this.subHwnd);
          return;
        case 0x7a:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.subX -= this.subDir * 16;
          this.subFrame = this.subFrame === 154 ? 155 : 154;
          if (this.x - this.subX < 47) {
            this.x = div(this.scrW, 2) + 3;
            this.subX = div(this.scrW, 2) - 43;
            this.frame = 3;
            this.subFrame = 157;
            this.setMain(this.x, this.y, 3);
            this.setSub(this.subX, this.subY, this.subFrame);
            this.count = 0;
            this.state = 0x7b;
            return;
          }
          this.show();
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        case 0x7b:
          if (this.delay(3)) return;
          this.frame = this.count + 127;
          this.count++;
          this.show();
          if (this.count < 4) return;
          this.state = 0x7c;
          return;
        case 0x7c:
          if (this.delay(4)) return;
          this.gridFx++;
          if (this.gridFx < 9) {
            this.wait = 0;
            return;
          }
          this.destroySub();
          this.count = 0;
          this.state = 0x7d;
          return;
        case 0x7d:
          if (!this.nextFrame(T.RENDEZVOUS)) {
            this.state = 1;
            return;
          }
          return;
        // ---- Chased by the black sheep ----
        case 0x7e:
          this.x = this.scrW;
          this.y = div(this.scrH * 7, 8);
          this.frame = 4;
          this.dir = 1;
          this.createSub();
          this.subDir = 1;
          this.subX = this.scrW + 46;
          this.subY = div(this.scrH * 7, 8);
          this.subFrame = 154;
          this.show();
          this.setSub(this.subX, this.subY, this.subFrame);
          this.state = 0x7f;
          this.host.bringToTop?.(HWND_MAIN);
          this.host.bringToTop?.(this.subHwnd);
          return;
        case 0x7f:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.subX -= this.subDir * 16;
          this.subFrame = this.subFrame === 154 ? 155 : 154;
          if (this.subX < -40) {
            this.destroySub();
            this.state = 1;
            return;
          }
          this.show();
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        // ---- Beam Up: abducted by the UFO ----
        case 0x80:
          this.x = this.scrW;
          this.y = div(this.scrH * 7, 8);
          this.frame = 4;
          this.dir = 1;
          this.setMain(this.scrW, this.y, 4);
          this.state = 0x81;
          return;
        case 0x81:
          if (this.delay(1)) return;
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          if (div(this.scrW, 2) - 20 < this.x) return;
          this.state = 0x82;
          return;
        case 0x82:
          this.createSub();
          this.subDir = -1;
          this.subX = -40;
          this.subY = div(this.scrH, 8);
          this.subFrame = 158;
          this.count = 0;
          this.state = 0x83;
          this.host.bringToTop?.(HWND_MAIN);
          this.host.bringToTop?.(this.subHwnd);
          return;
        case 0x83:
          if (this.count === 0) {
            this.show(73);
            if (this.rand() % 20 === 0) {
              this.count = 1;
            }
          } else {
            this.frame = this.tbl(T.LOOK_UP, this.count);
            this.show();
            this.count++;
            if (7 < this.count) {
              this.count = 0;
            }
          }
          this.subX -= this.subDir * 16;
          if (this.subFrame === 161) {
            this.subFrame = 158;
          } else {
            this.subFrame++;
          }
          if (this.x < this.subX) {
            this.subX = this.x;
            this.subFrame = 162;
            this.state = 0x84;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        case 0x84:
          this.show(73);
          this.beamSub += 40;
          if (this.y - this.subY - 40 <= this.beamSub) {
            this.beamSub = this.y - this.subY - 60;
            this.state = 0x85;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          if (this.wait < 1) return void this.wait++;
          if (this.subFrame === 165) {
            this.subFrame = 162;
            this.wait = 0;
            return;
          }
          this.subFrame++;
          this.wait = 0;
          return;
        case 0x85:
          this.beamSub -= 20;
          if (this.beamSub < 1) {
            this.beamSub = 0;
            this.y = this.subY + 40;
            this.state = 0x86;
            this.frame = this.frame === 4 ? 5 : 4;
            this.show();
            this.subFrame = 158;
            this.setSub(this.subX, this.subY, 158);
            return;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          this.frame = this.frame === 4 ? 5 : 4;
          this.y -= 20;
          this.show();
          if (this.wait < 1) return void this.wait++;
          if (this.subFrame === 165) {
            this.subFrame = 162;
            this.wait = 0;
            return;
          }
          this.subFrame++;
          this.wait = 0;
          return;
        case 0x86:
          this.x = -80;
          this.setMain(-80, this.y, this.frame);
          this.subX -= this.subDir * 16;
          if (this.subFrame === 161) {
            this.subFrame = 158;
          } else {
            this.subFrame++;
          }
          if (this.scrW < this.subX) {
            this.destroySub();
            this.host.stopSound();
            this.state = 1;
            return;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        // ---- Bird from UFO ----
        case 0x87:
          this.y = div(this.scrH, 8);
          this.dir = -1;
          this.x = -40;
          this.frame = 158;
          this.subY = div(this.scrH * 7, 8);
          this.count = 0;
          this.state = 0x88;
          return;
        case 0x88:
          this.x -= this.dir * 16;
          if (this.frame === 161) {
            this.frame = 158;
          } else {
            this.frame++;
          }
          if (div(this.scrW, 2) - 20 < this.x) {
            this.x = div(this.scrW, 2) - 20;
            this.frame = 162;
            this.state = 0x89;
          }
          this.show();
          return;
        case 0x89:
          this.beamMain += 40;
          if (this.subY - this.y - 40 <= this.beamMain) {
            this.beamMain = this.subY - this.y - 40;
            this.state = 0x8a;
          }
          this.show();
          if (this.wait < 1) return void this.wait++;
          if (this.frame === 165) {
            this.frame = 162;
            this.wait = 0;
            return;
          }
          this.frame++;
          this.wait = 0;
          return;
        case 0x8a:
          if (this.delay(4)) return;
          this.createSub();
          this.subX = this.x;
          this.subFrame = 167;
          this.setSub(this.x, this.subY, 167);
          this.show();
          this.state = 0x8b;
          this.host.bringToTop?.(HWND_MAIN);
          this.host.bringToTop?.(this.subHwnd);
          return;
        case 0x8b:
          if (this.beamMain === 0) {
            this.x -= this.dir * 16;
            if (this.frame === 161) {
              this.frame = 158;
            } else {
              this.frame++;
            }
          } else {
            this.beamMain -= 40;
            if (this.beamMain < 1) {
              this.frame = 158;
              this.beamMain = 0;
            }
            if (this.frame === 165) {
              this.frame = 162;
            } else {
              this.frame++;
            }
          }
          if (this.scrW < this.x) {
            this.state = 0x8c;
          }
          this.show();
          if (this.delay(1)) return;
          this.subFrame = this.subFrame === 167 ? 168 : 167;
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        case 0x8c:
          this.subFrame = 166;
          this.setSub(this.subX, this.subY, 166);
          if (this.delay(1)) return;
          this.gridFx++;
          if (this.gridFx < 9) {
            this.wait = 0;
            return;
          }
          this.destroySub();
          this.host.stopSound();
          this.state = 1;
          return;
        // ---- Meet UFO ----
        case 0x8e:
          this.x = -80;
          this.y = div(this.scrH, 8);
          this.setMain(-80, this.y, this.frame);
          this.createSub();
          this.subDir = -1;
          this.subX = -40;
          this.subY = div(this.scrH * 7, 8);
          this.subFrame = 158;
          this.count = 0;
          this.state = 0x8f;
          this.host.bringToTop?.(HWND_MAIN);
          this.host.bringToTop?.(this.subHwnd);
          return;
        case 0x8f:
          this.subX -= this.subDir * 16;
          if (this.subFrame === 161) {
            this.subFrame = 158;
          } else {
            this.subFrame++;
          }
          // (sic) the original compares the x position with screenHeight / 8
          if (div(this.scrH, 8) < this.subX) {
            this.subX = div(this.scrH, 8);
            this.x = this.scrW;
            this.y = this.subY;
            this.frame = 4;
            this.dir = 1;
            this.state = 0x90;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        case 0x90:
          if (this.delay(1)) return;
          if (this.subFrame === 161) {
            this.subFrame = 158;
          } else {
            this.subFrame++;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          this.x -= this.dir * 16;
          this.frame = this.frame === 4 ? 5 : 4;
          this.show();
          if (this.subX + 40 < this.x) return;
          this.x = -80;
          this.setMain(-80, this.y, this.frame);
          this.state = 0x91;
          return;
        case 0x91:
          this.subY -= 40;
          if (this.subFrame === 161) {
            this.subFrame = 158;
          } else {
            this.subFrame++;
          }
          if (this.subY < -40) {
            this.destroySub();
            this.host.stopSound();
            this.state = 1;
            return;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        // ---- Flame Dive into the bathtub ----
        case 0x93:
          this.createSub();
          this.subDir = 1;
          this.subFrame = 146;
          this.count = 0;
          this.x = this.scrW;
          this.y = -40;
          this.dir = 1;
          this.vx = div(this.scrW, -96);
          this.vy = div(this.scrH, 96);
          this.subX = this.vx * 92 + this.scrW;
          this.subY = this.vy * 92 - 20;
          this.state = 0x94;
          this.host.bringToTop?.(this.subHwnd);
          this.host.bringToTop?.(HWND_MAIN);
        case 0x94:
          if (this.delay(0)) return;
          this.setSub(this.subX, this.subY, this.subFrame);
          this.x += this.vx;
          this.y += this.vy;
          this.frame = this.tbl(T.FLAME_DIVE, div(this.count, 3));
          if (this.frame !== 0) this.count++;
          if (this.frame === 0 || this.frame === 144 || this.frame === 145) {
            this.frame = this.frame === 144 ? 145 : 144;
          }
          if (this.frame === 137 || this.frame === 138) {
            this.frame = this.frame === 137 ? 138 : 137;
          }
          this.show();
          if (this.subX + 10 <= this.x && this.y <= this.subY + 20) return;
          this.count = 0;
          this.state = 0x95;
          this.show(173);
          return;
        case 0x95:
          if (this.delay(1)) return;
          this.x = -80;
          this.setMain(-80, this.y, this.frame);
          this.subFrame = this.tbl(T.BATHTUB, this.count);
          this.count++;
          if (this.subFrame === 0) {
            this.x = this.subX;
            this.y = this.subY;
            this.count = 0;
            this.playSound(108);
            this.state = 0x96;
            return;
          }
          this.setSub(this.subX, this.subY, this.subFrame);
          return;
        case 0x96:
          if (!this.nextFrame(T.BATH_EXIT)) {
            this.frame = 3;
            this.state = 0x97;
            return;
          }
          if (80 < this.frame && this.frame < 84) {
            this.setMain(this.x, this.y - 20, this.frame);
            return;
          }
          return;
        case 0x97:
          if (this.delay(1)) return;
          this.x -= this.dir * 6;
          this.frame = this.frame === 2 ? 3 : 2;
          this.show();
          if (-41 < this.x) return;
          this.destroySub();
          this.state = 1;
          return;
        // ---- no-ops ----
        case 0x99:
          return;
        case 0x9a:
          return;
      }
    }
  }
}
