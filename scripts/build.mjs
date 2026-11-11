// Dependency-free build: bundles src/ with nothing but Node (>= 22.13).
//
//   dist/sheep.mjs        ES module, assets inlined
//   dist/sheep.lite.mjs   ES module, assets loaded from a URL
//   dist/sheep.js         classic <script> (window.SheepExe, data-autostart)
//   dist/types/           .d.ts files (only when `typescript` is installed)
//
// Types are removed with node:module's stripTypeScriptTypes (so the sources
// must only use erasable TypeScript syntax - enforced by tsconfig).  Each
// module becomes a function scope returning its exports; the bundler supports
// exactly the import/export forms used in src/ and fails loudly otherwise.
import { stripTypeScriptTypes } from "node:module";
import { execFileSync } from "node:child_process";
import { existsSync, mkdirSync, readFileSync, readdirSync, statSync, writeFileSync } from "node:fs";
import { dirname, join, relative, resolve } from "node:path";
import { gzipSync } from "node:zlib";

const root = resolve(import.meta.dirname, "..");
const BANNER =
  "/*! sheep.exe.js - Sheep.exe (Screen Mate Poo, (c) 1995 Fujitsu) ported to the web. " +
  "Sprites and sounds extracted from the original binary. */\n";

const ident = (file) => "__" + relative(join(root, "src"), file).replace(/\.ts$/, "").replace(/\W/g, "_");

/** `A, B as C, type D` -> [["A","A"], ["B","C"]] (type-only names are already blanked). */
function specifiers(list) {
  return list
    .split(",")
    .map((s) => s.trim())
    .filter((s) => s && !s.startsWith("type "))
    .map((s) => {
      const [name, alias] = s.split(/\s+as\s+/);
      return [name, alias ?? name];
    });
}

function bundle(entry) {
  const modules = [];
  const seen = new Set();

  const load = (file) => {
    if (seen.has(file)) return;
    seen.add(file);
    const src = readFileSync(file, "utf8");
    for (const m of src.matchAll(/^(?:import|export)\b[^;]*?\bfrom\s+"(\.[^"]+)";/gms)) {
      load(resolve(dirname(file), m[1]));
    }
    let code = stripTypeScriptTypes(src, { mode: "strip" });
    const exports = [];
    const dep = (spec) => ident(resolve(dirname(file), spec));

    code = code
      // import { a, b as c } from "./x.ts";
      .replace(/^import\s*\{([^}]*)\}\s*from\s*"([^"]+)";/gm, (_, list, spec) => {
        const names = specifiers(list);
        return names.length ? `const { ${names.map(([n, a]) => (n === a ? n : `${n}: ${a}`)).join(", ")} } = ${dep(spec)};` : "";
      })
      // export { a, b as c } from "./x.ts";
      .replace(/^export\s*\{([^}]*)\}\s*from\s*"([^"]+)";/gm, (_, list, spec) => {
        for (const [n, a] of specifiers(list)) exports.push([a, `${dep(spec)}.${n}`]);
        return "";
      })
      // export { a, b };
      .replace(/^export\s*\{([^}]*)\};/gm, (_, list) => {
        for (const [n, a] of specifiers(list)) exports.push([a, n]);
        return "";
      })
      .replace(/^export default (\w+);/gm, (_, n) => (exports.push(["default", n]), ""))
      .replace(/^export (?:(?:async )?function\*?|class|const|let) (\w+)/gm, (m, n) => {
        exports.push([n, n]);
        return m.slice("export ".length);
      });

    const leftover = code.match(/^\s*(?:import|export)\b.*$/m);
    if (leftover) throw new Error(`${relative(root, file)}: unsupported module syntax: ${leftover[0].trim()}`);
    code = code.replace(/[ \t]+$/gm, "").replace(/\n{3,}/g, "\n\n").trim();
    const ret = exports.map(([a, n]) => (a === n ? a : `${JSON.stringify(a)}: ${n}`)).join(", ");
    modules.push({ name: ident(file), code, exports: exports.map(([a]) => a), ret });
  };

  load(resolve(root, entry));
  const body = modules
    .map((m) => `// ${m.name.slice(2).replace(/_/g, "/")}\nconst ${m.name} = (() => {\n${m.code}\nreturn { ${m.ret} };\n})();`)
    .join("\n\n");
  return { body, main: modules[modules.length - 1] };
}

function esm(entry) {
  const { body, main } = bundle(entry);
  const named = main.exports.filter((n) => n !== "default");
  return (
    BANNER +
    body +
    `\n\nexport const { ${named.join(", ")} } = ${main.name};\n` +
    (main.exports.includes("default") ? `export default ${main.name}.default;\n` : "")
  );
}

function script(entry) {
  return BANNER + `(() => {\n"use strict";\n${bundle(entry).body}\n})();\n`;
}

mkdirSync(join(root, "dist"), { recursive: true });
const outputs = {
  "sheep.mjs": esm("src/index.ts"),
  "sheep.lite.mjs": esm("src/lite.ts"),
  "sheep.js": script("src/global.ts"),
};
for (const [name, code] of Object.entries(outputs)) {
  writeFileSync(join(root, "dist", name), code);
  const kib = (n) => (n / 1024).toFixed(1).padStart(6) + " KiB";
  console.log(`dist/${name.padEnd(15)} ${kib(code.length)}  (gzip ${kib(gzipSync(code).length)})`);
}

// Declarations: optional, needs the `typescript` dev dependency.
const tsc = join(root, "node_modules", "typescript", "bin", "tsc");
if (existsSync(tsc)) {
  execFileSync(process.execPath, [tsc, "-p", join(root, "tsconfig.types.json")], { stdio: "inherit" });
  const fix = (dir) => {
    for (const f of readdirSync(dir)) {
      const p = join(dir, f);
      if (statSync(p).isDirectory()) fix(p);
      else if (p.endsWith(".d.ts")) writeFileSync(p, readFileSync(p, "utf8").replace(/(from\s+"\.[^"]*)\.ts"/g, '$1.js"'));
    }
  };
  fix(join(root, "dist", "types"));
  console.log("dist/types/      declarations");
} else {
  console.log("(typescript not installed: skipped dist/types)");
}
