/**
 * Differential test: the TypeScript engine must reproduce, tick for tick, the
 * traces recorded by running the ORIGINAL code of Sheep.exe in an x86
 * emulator (tools/emulate.py, see test/scenarios/*.json).
 */
import assert from "node:assert/strict";
import { readFileSync, readdirSync } from "node:fs";
import { join } from "node:path";
import { describe, it } from "node:test";
import type { Engine } from "../src/engine.ts";
import { replay, type Scenario } from "./scripted-host.ts";

interface Trace {
  scenario: Scenario;
  fields: string[];
  sounds: number[][];
  trace: unknown[][];
}

const dir = join(import.meta.dirname, "traces");
const files = readdirSync(dir).filter((f) => f.endsWith(".json"));

/** The engine's view of the fields the emulator records (see TRACE_VARS in emulate.py). */
function snapshot(e: Engine): Record<string, unknown> {
  return {
    state: e.state,
    x: e.x,
    y: e.y,
    frame: e.frame,
    dir: e.dir,
    wait: e.wait,
    count: e.count,
    gforce: e.gforce,
    floor: e.floor,
    vx: e.vx,
    vy: e.vy,
    subHwnd: e.subHwnd !== 0 ? 1 : 0,
    subX: e.subX,
    subY: e.subY,
    subFrame: e.subFrame,
    subDir: e.subDir,
    beamMain: e.beamMain,
    beamSub: e.beamSub,
    gridFx: e.gridFx,
    sleeping: e.sleeping,
    main: [e.main.x, e.main.y, e.main.frame, e.main.mirrored ? 1 : 0],
    sub: [e.sub.x, e.sub.y, e.sub.frame, e.sub.mirrored ? 1 : 0],
    peerWord: [e.publishedX, e.publishedY],
  };
}

describe("port matches the original binary (emulated)", () => {
  it("has reference traces", () => assert.ok(files.length > 0));

  for (const file of files) {
    it(file, () => {
      const t = JSON.parse(readFileSync(join(dir, file), "utf8")) as Trace;
      const host = replay(t.scenario, (tick, e) => {
        const want = Object.fromEntries(t.fields.map((f, i) => [f, t.trace[tick][i]]));
        const got = snapshot(e);
        // a window that was never drawn has no bitmap selected in the original
        for (const k of ["main", "sub"]) if (want[k] === null) delete want[k], delete got[k];
        if (want.subHwnd !== 0) want.subHwnd = 1;
        if (JSON.stringify(got) !== JSON.stringify(want)) assert.deepEqual({ tick, ...got }, { tick, ...want });
      });
      assert.deepEqual(host.sounds, t.sounds);
    });
  }
});
