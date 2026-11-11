// Debug helper: print the ticks leading up to the first divergence from a trace.
//   node test/diff-tool.ts test/traces/desktop.json
import { readFileSync } from "node:fs";
import { replay, type Scenario } from "./scripted-host.ts";

const t = JSON.parse(readFileSync(process.argv[2], "utf8")) as { scenario: Scenario; fields: string[]; trace: unknown[][] };
const keys = t.fields.filter((f) => !["main", "sub", "peerWord", "subHwnd"].includes(f));
const hist: string[] = [];
try {
  replay(t.scenario, (tick, e) => {
    const rec = e as unknown as Record<string, unknown>;
    const bad = keys.filter((k) => rec[k] !== t.trace[tick][t.fields.indexOf(k)]);
    hist.push(`${tick}: ` + keys.map((k) => (bad.includes(k) ? `${k}=${rec[k]}!=${t.trace[tick][t.fields.indexOf(k)]}` : `${k}=${rec[k]}`)).join(" "));
    if (bad.length) throw new Error("diverged");
  });
  console.log("no divergence");
} catch {
  console.log(hist.slice(-8).join("\n"));
  process.exitCode = 1;
}
