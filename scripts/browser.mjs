// Browser tests + screenshots with headless Chromium, no test libraries:
//   node scripts/browser.mjs [shots-dir]      (needs `chromium` on PATH and a fresh `npm run build`)
// Inside Docker: docker run --rm -v "$PWD":/work sheepjs-browser node scripts/browser.mjs
import { execFile } from "node:child_process";
import { mkdirSync, readFileSync } from "node:fs";
import { createServer } from "node:http";
import { extname, join, normalize, resolve } from "node:path";
import { promisify } from "node:util";

const root = resolve(import.meta.dirname, "..");
const shots = resolve(process.argv[2] ?? join(root, "build", "shots"));
const TYPES = { ".html": "text/html", ".mjs": "text/javascript", ".js": "text/javascript", ".png": "image/png", ".wav": "audio/wav", ".json": "application/json" };

const server = createServer((req, res) => {
  const path = normalize(decodeURIComponent(new URL(req.url, "http://x").pathname)).replace(/^(\.\.[/\\])+/, "");
  try {
    const body = readFileSync(join(root, path));
    res.writeHead(200, { "content-type": TYPES[extname(path)] ?? "application/octet-stream" }).end(body);
  } catch {
    res.writeHead(404).end();
  }
});
await new Promise((r) => server.listen(0, "127.0.0.1", r));
const base = `http://127.0.0.1:${server.address().port}`;

const chrome = (args) =>
  promisify(execFile)(
    process.env.CHROMIUM ?? "chromium",
    ["--headless", "--no-sandbox", "--disable-gpu", "--disable-dev-shm-usage", "--hide-scrollbars", "--virtual-time-budget=15000", ...args],
    { maxBuffer: 1 << 26 },
  );

let failed = false;
try {
  const { stdout } = await chrome(["--window-size=1000,700", "--dump-dom", `${base}/test/browser/tests.html`]);
  const out = stdout.match(/<pre id="results">([\s\S]*?)<\/pre>/)?.[1] ?? "(no results)";
  console.log(out.replace(/&gt;/g, ">").replace(/&lt;/g, "<").replace(/&amp;/g, "&"));
  failed = !out.includes("DONE") || /^not ok/m.test(out);

  mkdirSync(shots, { recursive: true });
  for (const scene of ["walk", "beam", "dissolve", "flame", "bird", "settings", "debug"]) {
    await chrome([`--window-size=900,600`, `--screenshot=${join(shots, scene + ".png")}`, `${base}/test/browser/scene.html?scene=${scene}`]);
  }
  console.log(`screenshots in ${shots}`);
} finally {
  server.close();
}
process.exitCode = failed ? 1 : 0;
