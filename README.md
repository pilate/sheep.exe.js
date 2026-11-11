# sheep.exe.js

The classic **Sheep.exe** desktop pet (*Screen Mate Poo* / "Stray Sheep", Fujitsu 1995) as a JavaScript library for web pages.

This is a port of the original 16-bit Windows binary, not a re-imagining:

- **Assets** (the 176 sprite frames, 3 sounds, cursor, icon and both dialogs) are extracted from `Sheep.exe` by a script.
- **Behaviour** is a TypeScript translation of the original code: the ~150-state machine `FUN_1000_4cf8` plus its helpers, the Microsoft C `rand()`, the animation and behaviour tables from the data segment, 16-bit integer semantics, and the quirks.
- **Fidelity is tested**: the original machine code runs in an x86 emulator against scripted scenarios, and the port has to match it **tick for tick** (state, position, frame, direction, sub-actor, beams and sounds).

The sheep walks on page elements the way the original walked on window title bars. It falls between them, gets beamed up by UFOs, sneezes and sleeps.

## Usage

### Drop-in `<script>`

```html
<script src="dist/sheep.js" data-autostart></script>
```

Optional attributes: `data-autostart="3"` (number of sheep), `data-sound`, `data-alarm`, `data-no-sleep`, `data-gforce="false"`, `data-scale="2"`, `data-windows="CSS selector"`.
The script exposes `window.SheepExe` (`Sheep`, `ACTIONS`, `spawn()`, `removeAll()`).

### ES module

```js
import { Sheep } from "sheep-exe-js";          // assets inlined (284 KiB, 120 KiB gzipped)

const sheep = new Sheep({ sound: true });
sheep.action("Flame Dive");                     // any debug-dialog label, or a state number
sheep.on("state", (s) => console.log(s.state.toString(16)));
Sheep.spawn(2);                                 // more sheep; they bump into each other
```

To serve the assets yourself, use the lite build (122 KiB, 26 KiB gzipped):

```js
import { Sheep } from "sheep-exe-js/lite";
new Sheep({ assetsUrl: "/static/sheep/" });     // a copy of assets/
```

### Options

| option | default | |
|---|---|---|
| `sound` | `false` | `[Stray] Sound=` in scmate.ini. Browsers only allow audio after the visitor has interacted with the page. |
| `alarm` | `false` | Hourly chime (it plays even with Sound off, as the original did) |
| `noSleep` | `false` | Don't fall asleep when the mouse is idle (~33 s) |
| `gforce` | `true` | Walk on "windows" and fall between them; off = bottom of the screen only |
| `windows` | images, headings, tables, buttons, `pre`, `[data-sheep-window]`, … | CSS selector or function returning the elements that act as windows |
| `minWindowWidth` | `40` | Ignore narrower elements |
| `scale` | `1` | Sprite scale (logic runs in scaled pixels, like a smaller screen) |
| `interval` | `110` | Timer period in ms (original: `SetTimer` 108 ms on Windows' 55 ms clock) |
| `zIndex` | `2147483000` | |
| `storageKey` | `"sheep.exe.js/scmate.ini"` | localStorage key for settings, `false` to disable |
| `dialogs` | `true` | Settings/debug dialogs and right-double-click removal |
| `autoStart` | `true` | Start the timer once the sprites are loaded |
| `seed` | — | Seed `rand()` instead of the tick count |

Methods: `start()`, `stop()`, `step()`, `action(labelOrState)`, `configure(settings)`, `openSettings()`, `openDebug()`, `remove()`, `on("state" | "remove", fn)`; static `Sheep.all`, `Sheep.spawn(n, opts)`, `Sheep.removeAll()`, `Sheep.actions`.

### Interaction (same as the original)

- **Drag** with the left or right mouse button. Releasing a right-button drag drops the sheep with gravity.
- **Double-click**: the *Screen Mate 1.0* settings dialog (Sound / Alarm / No Sleep / G-Force / Remove).
- **Shift+Ctrl+double-click**: the *Screen Mate Debug Window*, with every behaviour and nudge buttons.
- **Right double-click**: remove the sheep.
- **Drop an audio file** on the sheep: it plays the file and dances.
- Leave the mouse idle and the sheep falls asleep. Move it and the sheep wakes up.

## Dependencies

- **Runtime:** none.
- **Build and test:** Node ≥ 22.18. TypeScript runs natively through Node's type stripping, and `scripts/build.mjs` is a small bundler built on `node:module`'s `stripTypeScriptTypes`. The one dev dependency is `typescript`, used only for `npm run typecheck` and the `.d.ts` files.
- **Asset extraction:** Python 3 standard library only (`tools/png.py` writes the PNGs).
- **Reverse-engineering tooling** (not needed to build): capstone, Unicorn and Ghidra, each in Docker.

```sh
npm run build          # dist/sheep.mjs, dist/sheep.lite.mjs, dist/sheep.js (+ dist/types with typescript installed)
npm test               # node:test: differential test against the original + engine tests
npm run typecheck      # tsc (strict, erasableSyntaxOnly)
npm run test:browser   # headless Chromium (Docker image sheepjs-browser): DOM tests + screenshots in build/shots
npm run extract        # assets + src/generated from ./Sheep.exe (python:3.12-slim)
```

Without Node installed: `docker run --rm -v "$PWD":/work -w /work node:22-bookworm-slim npm test`.

## How it was made

```
Sheep.exe (NE, Win16)
 ├─ tools/ne.py, dib.py, dialogs.py, png.py   NE parser, RLE8 DIB decoder, DLGTEMPLATE parser, PNG writer
 ├─ tools/extract.py                          → assets/*.png|wav|json, src/generated/{tables,inline}.ts
 ├─ tools/disasm.py                           → re/code.asm (capstone, relocations resolved)
 ├─ tools/ghidra/*.java                       → re/decompiled.c (headless Ghidra; _chkstk prologues patched)
 └─ tools/emulate.py                          runs the original code (Unicorn) → test/traces/*.json
```

`src/engine.ts` began as a translation of Ghidra's output for `FUN_1000_4cf8` and was then rewritten into readable code. Every step of that rewrite was checked against the emulated original's traces, tick by tick. `npm run re:images`, `re:disasm`, `re:decompile` and `re:traces` regenerate the analysis.

`re/NOTES.md` maps the original's functions, globals and states.

### Source layout

| file | |
|---|---|
| `src/engine.ts` | The port: state machine, collision/landing/wall logic, events, `MsRand`. DOM-free; talks to an `EngineHost` |
| `src/sheep.ts` | Browser glue, ported from the main window procedure: shared timer, idle sleep, drag, dialogs, sound |
| `src/platforms.ts` | Page elements as "windows": handles, rects, z-order (reverse document order), active window |
| `src/render.ts` | Canvas sprites with mirroring, the tractor beam (blend modes), the grid dissolve |
| `src/ui.ts` | Dialogs 107/108 laid out from their DLGTEMPLATEs |
| `src/generated/` | Generated by `tools/extract.py`; do not edit |
| `test/` | `differential.test.ts` (original vs port), `engine.test.ts`, `browser/` (Chromium tests and screenshot scenes), `diff-tool.ts` (prints the first divergence) |

### Performance

All sheep share one timer per interval. Each tick, every sheep first reads the page (window rects, cached once per tick), then every sheep draws, so layout isn't forced between sheep. Sprite canvases are redrawn only when the frame changes, positioned with `transform`, and their styles are written only when a value changes.

## Where the web version differs

- **Windows → elements.** Top-level windows become elements matching `windows`. Z-order is reverse document order, with fixed/sticky elements first. Rects are viewport rects, so scrolling moves the "windows" under the sheep: it rides along when its element moves up and falls when it moves down or away, just as with a dragged window.
- **Active window.** This is the platform element last clicked or focused. If there is none, a random visible one is used (so the sheep still jumps onto things on pages nobody clicks).
- **Z-order.** The sheep always draws above the page. The relative order of the sheep and its second actor (UFO, black sheep, …) follows the original's `SetWindowPos` calls.
- **Not reproduced:** the popup menu sent via message `0x401`, WinHelp, and "always on top". The second actor isn't a landing target. Other sheep are seen live rather than re-enumerated every 100 ticks.

## Legal

Screen Mate Poo / Sheep.exe, including its program, artwork and sounds, is © 1995 Fujitsu. The engine here is a translation of the original program's logic, and the assets are extracted from it, so the bundles are derivative works. `npm run extract` reads from **your own copy** of `Sheep.exe` (md5 `385e7f952873d00e52ed31d16a7d5c61`). `re/` holds disassembly and decompiler output generated from it. Make sure you have the rights before publishing any of this.
