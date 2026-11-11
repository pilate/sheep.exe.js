/**
 * EngineHost driven by a scenario file — the TypeScript twin of the World
 * class in tools/emulate.py, so the port and the original see the same world.
 */
import { Engine, type EngineHost, type PeerInfo, type Rect, type WindowInfo } from "../src/engine.ts";
import { ACTIONS } from "../src/generated/tables.ts";

export interface ScenarioWindow {
  hwnd: number;
  title?: string;
  /** [fromTick, left, top, right, bottom][] */
  rects: number[][];
  until?: number;
}

export interface Scenario {
  description?: string;
  screen: [number, number];
  tickBase?: number;
  ticks: number;
  config?: { sound?: number; gforce?: number; noSleep?: number };
  windows?: ScenarioWindow[];
  /** [fromTick, hwnd][] */
  active?: number[][];
  /** [tick, "action"|"event"|"drag", ...args][] */
  events?: (string | number)[][];
  otherInstance?: number;
}

export class ScriptedHost implements EngineHost {
  tick = 0;
  /** [tick, soundId] like the emulator; 0 = sndPlaySound(NULL) */
  readonly sounds: number[][] = [];
  private loaded = false;
  peerList: PeerInfo[] = [];

  readonly sc: Scenario;

  constructor(sc: Scenario) {
    this.sc = sc;
  }

  now(): number {
    return this.tick * 110 + (this.sc.tickBase ?? 0);
  }

  windows(): WindowInfo[] {
    const out: WindowInfo[] = [];
    for (const w of this.sc.windows ?? []) {
      let rect: number[] | null = null;
      for (const step of w.rects) if (step[0] <= this.tick) rect = step.slice(1);
      if (rect && (w.until === undefined || this.tick < w.until)) {
        out.push({ hwnd: w.hwnd, left: rect[0], top: rect[1], right: rect[2], bottom: rect[3] });
      }
    }
    return out;
  }

  getActiveWindow(): number {
    let a = 0;
    for (const [t, h] of this.sc.active ?? []) if (t <= this.tick) a = h;
    return a;
  }

  isWindow(hwnd: number): boolean {
    return this.windows().some((w) => w.hwnd === hwnd);
  }

  getWindowRect(hwnd: number): Rect {
    const w = this.windows().find((x) => x.hwnd === hwnd);
    return w ? { left: w.left, top: w.top, right: w.right, bottom: w.bottom } : { left: 0, top: 0, right: 0, bottom: 0 };
  }

  enumWindows(): WindowInfo[] {
    return this.windows();
  }

  peers(): PeerInfo[] {
    return this.peerList;
  }

  playSound(id: number): void {
    // FUN_1000_4210: stop and free the previous WAVE resource first
    if (this.loaded) this.sounds.push([this.tick, 0]);
    this.sounds.push([this.tick, id]);
    this.loaded = true;
  }

  stopSound(): void {
    this.sounds.push([this.tick, 0]);
  }

  localTime(): { hour: number; minute: number } {
    return { hour: 10, minute: 30 };
  }
}

/** Replays a scenario; calls `check(tick, engine)` after every tick. */
export function replay(sc: Scenario, check: (tick: number, e: Engine, host: ScriptedHost) => void): ScriptedHost {
  const host = new ScriptedHost(sc);
  const e = new Engine(host, {
    sound: !!(sc.config?.sound ?? 1),
    gforce: !!(sc.config?.gforce ?? 1),
    noSleep: !!sc.config?.noSleep,
    alarm: false,
  });
  e.setScreen(sc.screen[0], sc.screen[1]);
  e.otherInstance = sc.otherInstance ?? 0;
  const events = new Map<number, (string | number)[][]>();
  for (const ev of sc.events ?? []) {
    const t = ev[0] as number;
    events.set(t, [...(events.get(t) ?? []), ev.slice(1)]);
  }
  for (let tick = 0; tick < sc.ticks; tick++) {
    host.tick = tick;
    for (const [kind, a, b] of events.get(tick) ?? []) {
      if (kind === "action") e.forceState(ACTIONS[a as number].state);
      else if (kind === "event") e.event(a as number);
      else if (kind === "drag") e.dragBy(a as number, b as number);
    }
    e.tick();
    check(tick, e, host);
  }
  return host;
}
