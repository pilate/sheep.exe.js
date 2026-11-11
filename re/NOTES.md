# Reverse-engineering notes: Sheep.exe

`Sheep.exe`, 317,792 bytes, md5 `385e7f952873d00e52ed31d16a7d5c61`. NE executable for Windows 3.1, module `MINI`, built with Microsoft C (medium model, `_chkstk` prologues).

| segment | file offset | size | |
|---|---|---|---|
| 1 CODE | 0x0620 | 0x9CE0 | CRT + application (one segment) |
| 2 DATA | 0xA660 | 0x2D9A | auto data segment (DS) |

Imports: KERNEL, GDI, USER, MMSYSTEM (`sndPlaySound`), SHELL (drag & drop).

## Resources

| resource | contents |
|---|---|
| BITMAP 101–111 | 11 strips of 640×40, RLE8, 51-colour palette. 16 frames of 40×40 each; frames 0–175. The transparent key is the first pixel of the DIB bits (blue) |
| WAVE 108 / 109 / 110 | "baa" (also the hourly chime), yawn, sneeze |
| DIALOG 107 | "Screen Mate 1.0": Sound / Alarm / No Sleep / G-Force, OK / Cancel / Help / Remove |
| DIALOG 108 | "Screen Mate Debug Window": 30 radio buttons (actions) + Up/Dn/<</>> |
| GROUP_CURSOR 106 | hand cursor, hotspot (17,17) |
| ICON 1–3, VERSION 1 | |

Settings live in `scmate.ini`, section `[Stray]`: `Sound` (0), `Alarm` (0), `NoSleep` (0), `GForce` (1).

## Functions (code segment 1)

| address | port | purpose |
|---|---|---|
| 0010 | (extract) | build a 1-bpp mask from a DIB; key = first pixel |
| 0230 | (extract) | RLE8 → raw DIB |
| 1a16 | (render) | flip DIB horizontally (mode 1) / vertically (2) |
| 129e / 12b6 | `MsRand` | `srand` (16-bit seed) / `rand` (MSC LCG 214013, 2531011) |
| 1c50 | | WinMain: classes `ScreenMatePoo` / `ScreenMatePooSub`, FindWindow → second instance |
| 1df3 | `Sheep` (sheep.ts) | main WndProc: timer, mouse, dialogs, drag & drop |
| 2699 | | sub-window WndProc (no input) |
| 27ff / 292a | `openSettings` / `openDebug` | dialog procs 107 / 108 |
| 2a21 / 2a96 | `createSub` / `destroySub` | second actor window |
| 2abf / 2b01 | `bringToTop` / `setZOrder` | SetWindowPos helpers |
| 2b30 | (extract) | load a bitmap strip (+ mirrored copy when the argument is −3) |
| 2f36 / 2ff8 | settings | read / write scmate.ini |
| 3284 / 3717 | `ActorRenderer` | draw the main window; tractor beam (DS:2D92) |
| 9438 / 9a49 | `ActorRenderer` | draw the sub window; grid dissolve (DS:2D66); beam (DS:2D7C) |
| 31a8 / 4807 | `setMain` | select frame (9–14 never mirrored; mirrored when dir ≤ 0); publish x/y via SetWindowWord |
| 9350 / 488c | `setSub` | same for the sub actor (DS:05CC) |
| 39d6 / 3a36 / 3b4c / 3c20 | `isPeerWindow` / `peerHit` / peers | other running sheep (title "Screen Mate", max 8) |
| 3df0 | `snapshotWindows` | visible top-level windows, z-order, max 32, 0x4C bytes each at DS:23DC |
| 3e7c | `findWallHit` | walking into the side of a window |
| 408c | `findLanding` | falling onto a top edge (unless occluded) or the bottom of the screen |
| 419e | `checkLandOn` | falling onto one specific window |
| 4210 / 42c8 / 428e | `playSound` / `stopSound` | WAVE resource via sndPlaySound (42c8 checks Sound=) |
| 42f3 | (extract) | build the frame table DS:0BC2 (normal) / DS:17C2 (mirrored), 12-byte entries |
| 4559 / 4614 | `edgeCheckA` / `edgeCheckB` | turn at screen edges / randomly |
| 46d2 | `countDown` | `count--`; at < 1 → state 0x2A |
| 46f7 | `alarmTick` | hourly chime using CRT `time`/`localtime` |
| 491d | `getFloorRect` | hwnd 0 = (0, scrH, scrW, 2·scrH) |
| 496f | `checkFloor` | follow / fall off the window being stood on |
| 4b3b | `checkFloorEdge` | climbing: window moved or vanished |
| 4c21 / 4c91 | `peerCollide` / `peerCollide2` | bump into another sheep |
| **4cf8** | `Engine.run` | **behaviour state machine, one call per WM_TIMER** |
| 8fd7 | `Engine.event` | 0 drop, 1 pick up, 2 drop with gravity, 3 idle → sleep, 4 file dropped |
| 904a | `Engine.forceState` | debug action (jump table at 0x918D) |
| 91cd | `Engine.dragBy` | |

## Globals (DS)

| addr | port | | addr | port |
|---|---|---|---|---|
| 0BC0 | `state` | | 0B3C | `floor` (hwnd stood on, 0 = screen bottom) |
| 0B20 / 0B22 | `x` / `y` | | 0B3E–0B44 | `floorL/T/R/B` |
| 0B24 | `frame` | | 0B2E / 0B30 / 0B32 | `subX` / `subY` / `subFrame` |
| 05CA / 05CC | `dir` / `subDir` (+1 = facing left) | | 2D90 | sub hwnd |
| 0B5A | `wait` (tick divider) | | 2D92 / 2D7C | `beamMain` / `beamSub` |
| 0B46 / 0B48 | `count` / `count2` | | 2D66 | `gridFx` |
| 0B4A | `variant` | | 23CE | z-order flag for the sub actor |
| 0B1C | `gforce` (gravity mode active) | | 2D74 | `pendingState` (sleep request) |
| 0B1E | `wallCheck` | | 2D96 | `sleeping` |
| 0B26 / 0B28 | `vy` / `vx` | | 2D5C | `otherInstance` (no UFO episodes) |
| 0B2C | `prevY` | | 2D70 / 2D72 | `scrW` / `scrH` |
| 0B5C / 0B5E | `targetX` / `targetY` | | 2D62 / 2D7A / 23CC / 23D6 | GForce / Sound / Alarm / NoSleep |
| 0B60 / 0B62 | `bounced` / `fallMode` | | 23C4 | idle tick counter (> 300 → sleep) |
| 0B64 / 0B66 / 0B68 | `yOffset` / `bounceCount` / `seqIdx` | | 0B4C | `noMove` (never written: always 0) |

The static tables at DS:0400–086F are exported as `DS_TABLES`. Random behaviour without gravity is DS:047A (80 entries); with gravity, DS:051A; UFO episodes, DS:05BA (8). The rest are frame sequences (0-terminated).

## States

0 (re)spawn and seed · 1/2 pick the next behaviour (without / with gravity) · 3 drop in from the top · 4–6 walk off-screen → UFO episode · 7–8 Run · 9–A Leap · B–C Walk · D–E Hand walk · F–10 Beg · 11–13 Sleep · 14–17 Look around · 18–1A turn around · 1B–22 bump/roll after a collision · 23–2A Tinkle · 2B–2C Yawn · 2D–2E Baaaa · 2F–30 Sneeze · 31–32 Bug Eyes · 33–34 Charge · 35–36 Eat Flowers · 38–39 dance (file dropped) · 3A–3D Stare · 3E–3F Blush · 41–44 Roll · 45–48 Die · 4B–50 Climb · 51–52 dangle (dragged / alarm) · 55–5B go to the active window (drop onto it, or climb its side) · 5C–5D drop onto it · 5E–65 fall with gravity and land · 66–67 floor vanished · 68–70 sit on / hang from an edge · 71–73 deep sleep · 74–78 Look Up · 79–7D Rendezvous · 7E–7F Chased · 80–86 Beam Up · 87–8C Bird from UFO · 8E–91 Meet UFO · 93–97 Flame Dive.

Never set by the original (dead code, but ported): 1F, 49–4A, 54, 6E, 99, 9A.

## Reproducing the analysis

The engine was translated from `re/statemachine.c` and then rewritten by hand. The differential test (`npm test`) is the authority on fidelity, not the decompiler output.

`tools/ghidra/PatchChkstk.java` rewrites `mov ax,N; call far _chkstk` into `sub sp,N` before analysis. Without it, Ghidra loses track of the stack frame and drops every call argument. `tools/rename.sed` applies the names above to the decompiler output (`re/decompiled.named.c`, `re/statemachine.c`).
