import assert from "node:assert/strict";
import { describe, it } from "node:test";
import { Engine, MsRand, div } from "../src/engine.ts";
import { ACTIONS, DS_TABLES, FRAME_COUNT } from "../src/generated/tables.ts";
import { ScriptedHost, type Scenario } from "./scripted-host.ts";

describe("MsRand", () => {
  it("reproduces the Microsoft C rand() sequence", () => {
    const r = new MsRand();
    r.srand(1);
    assert.deepEqual(Array.from({ length: 10 }, () => r.rand()), [
      41, 18467, 6334, 26500, 19169, 15724, 11478, 29358, 26962, 24464,
    ]);
  });
  it("takes a 16-bit seed like srand(unsigned)", () => {
    const a = new MsRand();
    const b = new MsRand();
    a.srand(0x12345);
    b.srand(0x2345);
    assert.equal(a.rand(), b.rand());
  });
});

describe("div", () => {
  it("truncates toward zero like idiv", () => {
    assert.equal(div(7, 2), 3);
    assert.equal(div(-7, 2), -3);
    assert.equal(div(-40, -3), 13);
  });
});

describe("extracted tables", () => {
  const engine = new Engine(new ScriptedHost({ screen: [640, 480], ticks: 0 }));
  it("has the 30 debug actions", () => {
    assert.equal(ACTIONS.length, 30);
    assert.equal(ACTIONS.find((a) => a.label === "Flame Dive")?.state, 0x93);
    assert.equal(ACTIONS.find((a) => a.label === "Walk")?.state, 0xb);
  });
  it("random behaviour tables point at implemented states", () => {
    for (const base of [0x47a, 0x51a]) {
      for (let i = 0; i < 80; i++) {
        const s = engine.tbl(base, i);
        assert.ok(s > 0);
        assert.ok(s < 0x9b);
      }
    }
  });
  it("covers DS:0400..0870", () => {
    assert.equal(DS_TABLES.length, (0x870 - 0x400) / 2);
    assert.equal(FRAME_COUNT, 176);
  });
});

function world(seed: number): Scenario {
  // pseudo-random but deterministic windows
  const r = new MsRand();
  r.srand(seed);
  const windows = Array.from({ length: 1 + (r.rand() % 6) }, (_, i) => {
    const l = r.rand() % 900;
    const t = 20 + (r.rand() % 600);
    return {
      hwnd: 600 + i,
      rects: [
        [0, l, t, l + 60 + (r.rand() % 400), t + 30 + (r.rand() % 300)],
        [1500 + (r.rand() % 3000), l + 30, t - 40, l + 400, t + 200],
      ],
      until: r.rand() % 2 ? 2000 + (r.rand() % 4000) : undefined,
    };
  });
  return {
    screen: [400 + (r.rand() % 1200), 300 + (r.rand() % 800)],
    tickBase: seed * 7919,
    ticks: 6000,
    windows,
    active: [
      [0, windows[0].hwnd],
      [3000, 0],
      [4000, windows[windows.length - 1].hwnd],
    ],
  };
}

describe("engine fuzz", () => {
  for (let seed = 1; seed <= 12; seed++) {
    it(`random world #${seed} runs without errors`, () => {
      const sc = world(seed);
      const host = new ScriptedHost(sc);
      const e = new Engine(host, { sound: true, gforce: seed % 3 !== 0 });
      e.setScreen(sc.screen[0], sc.screen[1]);
      const states = new Set<number>();
      for (let t = 0; t < sc.ticks; t++) {
        host.tick = t;
        if (t % 997 === 500) e.forceState(ACTIONS[(t + seed) % ACTIONS.length].state);
        e.tick();
        states.add(e.state);
        assert.ok(e.main.frame >= 0);
        assert.ok(e.main.frame < FRAME_COUNT);
        assert.equal(Number.isFinite(e.main.x) && Number.isFinite(e.main.y), true);
        if (e.subHwnd) assert.ok(e.sub.frame < FRAME_COUNT);
      }
      assert.ok(states.size > 10);
    });
  }

  it("every action finishes and returns to the idle states", () => {
    for (const a of ACTIONS) {
      const host = new ScriptedHost({ screen: [1024, 768], ticks: 0, tickBase: 99 });
      const e = new Engine(host, { gforce: true });
      e.setScreen(1024, 768);
      for (let t = 0; t < 50; t++) e.tick();
      e.forceState(a.state);
      let back = false;
      for (let t = 0; t < 3000 && !back; t++) {
        host.tick = t;
        e.tick();
        // idle states that pick the next random behaviour
        back = e.state === 7 || e.state === 0xb || e.state === 0x11 || e.state === 0x14 || e.state === 0x61;
      }
      assert.equal(back, true, `${a.label} (0x${a.state.toString(16)})`);
    }
  });
});

describe("gravity", () => {
  it("lands on the top edge of a window", () => {
    const sc: Scenario = { screen: [800, 600], ticks: 0, windows: [{ hwnd: 7, rects: [[0, 100, 300, 700, 500]] }] };
    const host = new ScriptedHost(sc);
    const e = new Engine(host, { gforce: true });
    e.setScreen(800, 600);
    e.state = 0x61; // fall
    e.x = 300;
    e.y = 0;
    for (let i = 0; i < 200 && e.floor !== 7; i++) e.tick();
    assert.equal(e.floor, 7);
    assert.equal(e.y + 40, 300);
  });

  it("rides along when its window moves up and falls when it disappears", () => {
    const sc: Scenario = {
      screen: [800, 600],
      ticks: 0,
      windows: [{ hwnd: 7, rects: [[0, 100, 300, 700, 500], [100, 100, 250, 700, 450]], until: 200 }],
    };
    const host = new ScriptedHost(sc);
    const e = new Engine(host, { gforce: true });
    e.setScreen(800, 600);
    e.state = 0x61;
    e.x = 300;
    e.y = 0;
    let t = 0;
    for (; t < 100; t++) {
      host.tick = t;
      e.tick();
    }
    assert.equal(e.floor, 7);
    let rode = false;
    for (; t < 200; t++) {
      host.tick = t;
      e.tick();
      if (e.floor === 7 && e.y + 40 === 250) rode = true;
    }
    assert.equal(rode, true);
    for (; t < 400; t++) {
      host.tick = t;
      e.tick();
    }
    assert.equal(e.floor, 0); // now on the bottom of the screen
  });
});
