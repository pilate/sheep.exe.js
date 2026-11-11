/*
 * Web-page stand-in for the Win16 window manager.
 *
 * The original sheep walks on the title bars of top-level windows.  On a web
 * page the "windows" are DOM elements matched by a selector (images, headings,
 * tables, anything with data-sheep-window ...).  Each element gets a stable
 * integer handle so the engine can keep treating them as HWNDs.
 */
import type { Rect, WindowInfo } from "./engine.ts";

export const DEFAULT_PLATFORM_SELECTOR =
  "[data-sheep-window],img,video,canvas,iframe,button,textarea,select,pre,table,blockquote,figure,h1,h2,h3,dialog[open]";

export interface PlatformOptions {
  /** CSS selector, or a function returning the candidate elements. */
  selector: string | (() => Iterable<Element>);
  /** Elements narrower than this (CSS px) are ignored. */
  minWidth: number;
  /** CSS px per engine px. */
  scale: number;
}

/** The sheep's own nodes carry this attribute and are never platforms. */
export const OWN_NODE_ATTR = "data-sheep-node";

const isOwnNode = (el: Element): boolean => el.closest(`[${OWN_NODE_ATTR}]`) !== null;

// The element last clicked or focused, shared by all sheep (GetActiveWindow).
let lastTouched: Element | null = null;
let tracking = false;
function trackActivity(): void {
  if (tracking) return;
  tracking = true;
  const note = (ev: Event): void => {
    if (ev.target instanceof Element && !isOwnNode(ev.target)) lastTouched = ev.target;
  };
  document.addEventListener("pointerdown", note, true);
  document.addEventListener("focusin", note, true);
}

interface Visible {
  el: Element;
  rect: DOMRect;
  floating: boolean;
}

export class Platforms {
  private readonly opts: PlatformOptions;
  private nextHandle = 1;
  private readonly handles = new WeakMap<Element, number>();
  private readonly elements = new Map<number, WeakRef<Element>>();
  /** Visible candidates, computed at most once per tick (see invalidate()). */
  private cache: Visible[] | null = null;

  constructor(opts: PlatformOptions) {
    this.opts = opts;
    trackActivity();
  }

  /** Forget the cached layout; called by the ticker before every tick. */
  invalidate(): void {
    this.cache = null;
  }

  private handleOf(el: Element): number {
    let h = this.handles.get(el);
    if (h === undefined) {
      h = this.nextHandle++;
      this.handles.set(el, h);
      this.elements.set(h, new WeakRef(el));
    }
    return h;
  }

  private element(hwnd: number): Element | null {
    const el = this.elements.get(hwnd)?.deref() ?? null;
    if (!el) this.elements.delete(hwnd);
    return el;
  }

  private matches(el: Element): boolean {
    const sel = this.opts.selector;
    return typeof sel === "string" ? el.matches(sel) : this.candidates().includes(el);
  }

  private candidates(): Element[] {
    const sel = this.opts.selector;
    const list = typeof sel === "string" ? document.querySelectorAll(sel) : sel();
    return Array.from(list).filter((el) => !isOwnNode(el));
  }

  /** Candidates that are laid out, wide enough and near the viewport, in document order. */
  private visible(): Visible[] {
    if (this.cache) return this.cache;
    const vw = document.documentElement.clientWidth;
    const vh = document.documentElement.clientHeight;
    const out: Visible[] = [];
    for (const el of this.candidates()) {
      const rect = el.getBoundingClientRect();
      if (rect.width < this.opts.minWidth || rect.height <= 0) continue;
      if (rect.bottom < -vh || rect.top > vh * 2 || rect.right < 0 || rect.left > vw) continue;
      const cs = getComputedStyle(el);
      if (cs.visibility === "hidden") continue;
      out.push({ el, rect, floating: cs.position === "fixed" || cs.position === "sticky" });
    }
    return (this.cache = out);
  }

  private toEngine(r: DOMRect): Rect {
    const s = this.opts.scale;
    return {
      left: Math.round(r.left / s),
      top: Math.round(r.top / s),
      right: Math.round(r.right / s),
      bottom: Math.round(r.bottom / s),
    };
  }

  // ---- EngineHost pieces -------------------------------------------------

  /** IsWindow */
  isWindow(hwnd: number): boolean {
    const el = this.element(hwnd);
    if (!el?.isConnected) return false;
    const r = el.getBoundingClientRect();
    return r.width > 0 || r.height > 0;
  }

  /** GetWindowRect */
  getWindowRect(hwnd: number): Rect {
    const el = this.element(hwnd);
    return el ? this.toEngine(el.getBoundingClientRect()) : { left: 0, top: 0, right: 0, bottom: 0 };
  }

  /**
   * EnumWindows in z-order, top-most first: fixed/sticky elements float above
   * the flow, and later elements paint above earlier ones.
   */
  enumWindows(): WindowInfo[] {
    const vis = this.visible();
    const order = vis.map((_, i) => i).sort((a, b) => +vis[b].floating - +vis[a].floating || b - a);
    return order.map((i) => ({ hwnd: this.handleOf(vis[i].el), ...this.toEngine(vis[i].rect) }));
  }

  /**
   * GetActiveWindow: the platform the visitor last clicked or focused, else a
   * random visible one (so the sheep still finds something on pages nobody
   * clicks).  `random` must not be the engine's rand(): the original's
   * GetActiveWindow never consumed it.
   */
  getActiveWindow(random: () => number): number {
    const vis = this.visible();
    for (let el = lastTouched; el; el = el.parentElement) {
      if (this.matches(el)) {
        const v = vis.find((x) => x.el === el);
        if (v) return this.handleOf(el);
        break;
      }
    }
    const vh = document.documentElement.clientHeight;
    const onScreen = vis.filter((v) => v.rect.top > 0 && v.rect.top < vh);
    return onScreen.length ? this.handleOf(onScreen[Math.floor(random() * onScreen.length)].el) : 0;
  }
}
