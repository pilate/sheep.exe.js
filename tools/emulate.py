"""Run the ORIGINAL behaviour code of Sheep.exe in an x86 emulator.

Used to produce reference traces for the TypeScript port (differential
testing): the original FUN_1000_4cf8 (one timer tick) is executed with
Unicorn in 16-bit mode, with the Win16 API replaced by a small scripted world
described in a scenario JSON (screen size, windows, active window, forced
actions ...).  After every tick the relevant globals are dumped.

    python3 tools/emulate.py Sheep.exe test/scenarios/foo.json test/traces/foo.json
"""
import json, os, struct, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from ne import NE
from unicorn import Uc, UC_ARCH_X86, UC_MODE_16, UC_HOOK_CODE, UC_HOOK_MEM_UNMAPPED
from unicorn.x86_const import *

CS_SEG, DS_SEG, STUB_SEG = 0x1000, 0x2000, 0x3000
SENTINEL = 0xFF00
HWND_MAIN, HWND_SUB, HWND_DESKTOP = 0x100, 0x300, 0x50

# Original functions
F_TICK = 0x4CF8      # FUN_1000_4cf8  behaviour state machine
F_EVENT = 0x8FD7     # FUN_1000_8fd7  mouse/idle/drop events
F_DEBUG = 0x904A     # FUN_1000_904a  debug-dialog action
F_DRAG = 0x91CD      # FUN_1000_91cd  dragged by (dx, dy)

# Pascal API stubs: name -> argument words popped by the callee.
ARGW = {
    "GetTickCount": 0, "GetActiveWindow": 0, "GetDesktopWindow": 0,
    "GetWindowRect": 3, "IsWindow": 1, "GetWindow": 2, "GetWindowLong": 2,
    "GetWindowText": 4, "lstrcmp": 4, "GetWindowWord": 2, "SetWindowWord": 3,
    "SetWindowPos": 7, "WindowFromPoint": 2, "CreateWindowEx": 17, "ShowWindow": 2,
    "UpdateWindow": 1, "DestroyWindow": 1, "sndPlaySound": 3, "FindResource": 5,
    "LoadResource": 2, "LockResource": 1, "GlobalUnlock": 1, "FreeResource": 1,
    "SendMessage": 5,
}
ORD = {("KERNEL", 13): "GetTickCount", ("USER", 13): "GetTickCount", ("USER", 60): "GetActiveWindow",
       ("USER", 286): "GetDesktopWindow", ("USER", 32): "GetWindowRect", ("USER", 47): "IsWindow",
       ("USER", 262): "GetWindow", ("USER", 135): "GetWindowLong", ("USER", 36): "GetWindowText",
       ("USER", 430): "lstrcmp", ("USER", 133): "GetWindowWord", ("USER", 134): "SetWindowWord",
       ("USER", 232): "SetWindowPos", ("USER", 30): "WindowFromPoint", ("USER", 452): "CreateWindowEx",
       ("USER", 42): "ShowWindow", ("USER", 124): "UpdateWindow", ("USER", 53): "DestroyWindow",
       ("MMSYSTEM", 2): "sndPlaySound", ("KERNEL", 60): "FindResource", ("KERNEL", 61): "LoadResource",
       ("KERNEL", 62): "LockResource", ("KERNEL", 19): "GlobalUnlock", ("KERNEL", 63): "FreeResource",
       ("USER", 111): "SendMessage"}

TRACE_VARS = {
    "state": 0x0BC0, "x": 0x0B20, "y": 0x0B22, "frame": 0x0B24, "dir": 0x05CA, "wait": 0x0B5A,
    "count": 0x0B46, "gforce": 0x0B1C, "floor": 0x0B3C, "vx": 0x0B28, "vy": 0x0B26,
    "subHwnd": 0x2D90, "subX": 0x0B2E, "subY": 0x0B30, "subFrame": 0x0B32, "subDir": 0x05CC,
    "beamMain": 0x2D92, "beamSub": 0x2D7C, "gridFx": 0x2D66, "sleeping": 0x2D96,
}


FIELDS = list(TRACE_VARS) + ["main", "sub", "peerWord"]


def s16(v):
    return v - 0x10000 if v & 0x8000 else v


class World:
    """Scripted stand-in for Windows, driven by the scenario."""

    def __init__(self, sc):
        self.sc = sc
        self.tick = 0
        self.words = {}
        self.sounds = []
        self.sub_alive = False

    def windows(self):
        """Top-level windows in z-order: the sheep itself first, then the scenario's."""
        out = [{"hwnd": HWND_MAIN, "title": "Screen Mate", "rect": [0, 0, 40, 40]}]
        for w in self.sc.get("windows", []):
            rect = None
            for step in w["rects"]:
                if step[0] <= self.tick:
                    rect = step[1:]
            if rect is not None and (w.get("until") is None or self.tick < w["until"]):
                out.append({"hwnd": w["hwnd"], "title": w.get("title", "Notepad"), "rect": rect})
        return out

    def find(self, hwnd):
        return next((w for w in self.windows() if w["hwnd"] == hwnd), None)

    def active(self):
        a = 0
        for step in self.sc.get("active", []):
            if step[0] <= self.tick:
                a = step[1]
        return a


class Emu:
    def __init__(self, exe, sc):
        self.ne = NE(open(exe, "rb").read())
        self.sc = sc
        self.world = World(sc)
        self.uc = uc = Uc(UC_ARCH_X86, UC_MODE_16)
        uc.mem_map(0, 0x100000)
        code = bytearray(self.ne.segments[0].data)
        data = self.ne.segments[1].data
        self.stubs = {}       # offset in stub segment -> name
        stub_off = {}
        for off, r in self.ne.reloc_sites(self.ne.segments[0]):
            t = r.target
            if t[0] == "internal":
                sel = CS_SEG if t[1] == 1 else DS_SEG
                if r.src_type == 2:
                    struct.pack_into("<H", code, off, sel)
                elif r.src_type == 3:
                    struct.pack_into("<HH", code, off, t[2], sel)
                elif r.src_type == 5:
                    struct.pack_into("<H", code, off, t[2])
            elif t[0] == "ordinal":
                name = ORD.get((t[1], t[2]), f"{t[1]}.{t[2]}")
                if name not in stub_off:
                    so = 0x10 + len(stub_off) * 4
                    stub_off[name] = so
                    self.stubs[so] = name
                    n = ARGW.get(name, 0)
                    uc.mem_write(STUB_SEG * 16 + so, bytes([0xCA, (n * 2) & 0xFF, (n * 2) >> 8, 0x90]))
                if r.src_type == 3:
                    struct.pack_into("<HH", code, off, stub_off[name], STUB_SEG)
                elif r.src_type in (2, 5):
                    struct.pack_into("<H", code, off, 0)
        uc.mem_write(CS_SEG * 16, bytes(code))
        uc.mem_write(DS_SEG * 16, data)
        uc.mem_write(STUB_SEG * 16 + SENTINEL, b"\xF4")
        uc.hook_add(UC_HOOK_CODE, self._stub_hook, begin=STUB_SEG * 16, end=STUB_SEG * 16 + 0xFFFF)
        uc.hook_add(UC_HOOK_MEM_UNMAPPED, self._bad)
        self._init_globals()

    # ---------------------------------------------------------------- memory
    def rw(self, off):
        return struct.unpack("<H", self.uc.mem_read(DS_SEG * 16 + off, 2))[0]

    def ww(self, off, v):
        self.uc.mem_write(DS_SEG * 16 + off, struct.pack("<H", v & 0xFFFF))

    def rfar(self, seg, off, n):
        return bytes(self.uc.mem_read(seg * 16 + off, n))

    def cstr(self, seg, off):
        b = self.rfar(seg, off, 128)
        return b[: b.index(0)].decode("latin1")

    def _bad(self, uc, access, addr, size, value, ud):
        raise RuntimeError(f"unmapped access {addr:#x}")

    # ------------------------------------------------------------- start-up
    def _init_globals(self):
        sc = self.sc
        W, H = sc["screen"]
        cfg = sc.get("config", {})
        self.ww(0x23D0, HWND_MAIN)           # hwnd of the main window
        self.ww(0x2D78, 0x0500)              # hInstance
        self.ww(0x2D70, W); self.ww(0x2D72, H)
        self.ww(0x2D6C, 0); self.ww(0x2D6E, 0)
        self.ww(0x2D98, 1); self.ww(0x2D5E, 0)
        self.ww(0x2D7A, int(cfg.get("sound", 1)))
        self.ww(0x23CC, 0)                   # alarm: needs the CRT clock, not emulated
        self.ww(0x23D6, int(cfg.get("noSleep", 0)))
        self.ww(0x2D62, int(cfg.get("gforce", 1)))
        self.ww(0x2D5C, int(sc.get("otherInstance", 0)))
        # sprite table (FUN_1000_42f3): 11 strips x 16 frames, normal + mirrored
        for strip in range(11):
            for j in range(16):
                for base, mirrored in ((0x0BC2, 0), (0x17C2, 1)):
                    e = base + (strip * 16 + j) * 12
                    self.ww(e + 0, 0x1000 + strip * 2 + mirrored * 0x1000)
                    self.ww(e + 2, 0x1001 + strip * 2 + mirrored * 0x1000)
                    self.ww(e + 4, ((15 - j) if mirrored else j) * 40)
                    self.ww(e + 6, 0); self.ww(e + 8, 40); self.ww(e + 10, 40)

    # ---------------------------------------------------------------- calls
    def call(self, ip, *args):
        """cdecl far call of a function in the code segment."""
        uc = self.uc
        sp = 0xFF00
        words = list(args)[::-1] + []
        for a in words:
            sp -= 2
            uc.mem_write(DS_SEG * 16 + sp, struct.pack("<H", a & 0xFFFF))
        sp -= 4
        uc.mem_write(DS_SEG * 16 + sp, struct.pack("<HH", SENTINEL, STUB_SEG))
        for reg, v in ((UC_X86_REG_DS, DS_SEG), (UC_X86_REG_ES, DS_SEG), (UC_X86_REG_SS, DS_SEG),
                       (UC_X86_REG_SP, sp), (UC_X86_REG_BP, 0), (UC_X86_REG_CS, CS_SEG)):
            uc.reg_write(reg, v)
        uc.emu_start(ip, CS_SEG * 16 + 0xFFFFF, count=2_000_000)
        if uc.reg_read(UC_X86_REG_CS) != STUB_SEG or uc.reg_read(UC_X86_REG_IP) not in (SENTINEL, SENTINEL + 1):
            raise RuntimeError(f"call {ip:#x} did not return (at {uc.reg_read(UC_X86_REG_CS):#x}:{uc.reg_read(UC_X86_REG_IP):#x})")

    def _stub_hook(self, uc, address, size, ud):
        off = address - STUB_SEG * 16
        if off == SENTINEL:
            uc.emu_stop()
            return
        name = self.stubs.get(off)
        if name is None:
            return
        sp = uc.reg_read(UC_X86_REG_SP)
        n = ARGW.get(name, 0)
        raw = struct.unpack("<%dH" % n, uc.mem_read(DS_SEG * 16 + sp + 4, n * 2)) if n else ()
        args = list(raw[::-1])  # declaration order; far pointers come out as (seg, off)
        ax, dx = self.api(name, args)
        uc.reg_write(UC_X86_REG_AX, ax & 0xFFFF)
        uc.reg_write(UC_X86_REG_DX, dx & 0xFFFF)

    def api(self, name, a):
        w = self.world
        if name == "GetTickCount":
            t = w.tick * 110 + self.sc.get("tickBase", 0)
            return t & 0xFFFF, t >> 16
        if name == "GetActiveWindow":
            return w.active(), 0
        if name == "GetDesktopWindow":
            return HWND_DESKTOP, 0
        if name == "GetWindow":
            hwnd, cmd = a
            wins = w.windows()
            if hwnd == HWND_DESKTOP and cmd == 5:
                return (wins[0]["hwnd"] if wins else 0), 0
            if cmd == 2:
                idx = next((i for i, x in enumerate(wins) if x["hwnd"] == hwnd), None)
                if idx is not None and idx + 1 < len(wins):
                    return wins[idx + 1]["hwnd"], 0
            return 0, 0
        if name == "GetWindowLong":
            return 0, (0x1000 if w.find(a[0]) else 0)  # WS_VISIBLE
        if name == "GetWindowText":
            hwnd, seg, off, cch = a
            win = w.find(hwnd)
            t = (win["title"] if win else "")[: cch - 1].encode() + b"\0"
            self.uc.mem_write(seg * 16 + off, t)
            return len(t) - 1, 0
        if name == "lstrcmp":
            s1, o1, s2, o2 = a
            x, y = self.cstr(s1, o1), self.cstr(s2, o2)
            return (0 if x == y else (1 if x > y else -1)), 0
        if name == "GetWindowRect":
            hwnd, seg, off = a
            win = w.find(hwnd)
            r = win["rect"] if win else [0, 0, 0, 0]
            self.uc.mem_write(seg * 16 + off, struct.pack("<4h", *r))
            return 1, 0
        if name == "IsWindow":
            return (1 if w.find(a[0]) else 0), 0
        if name == "GetWindowWord":
            return w.words.get((a[0], a[1]), 0), 0
        if name == "SetWindowWord":
            w.words[(a[0], a[1])] = a[2]
            return 0, 0
        if name == "CreateWindowEx":
            w.sub_alive = True
            # WM_CREATE of the sub window (FUN_1000_9200)
            for off in (0x2D66, 0x2D7C, 0x2D76, 0x0BB0, 0x0BB2, 0x0BB4, 0x0BB6):
                self.ww(off, 0)
            return HWND_SUB, 0
        if name == "DestroyWindow":
            if a[0] == HWND_SUB:
                w.sub_alive = False
            return 1, 0
        if name == "sndPlaySound":
            seg, off, flags = a
            w.sounds.append([w.tick, 0 if (off == 0 and seg == 0) else self.last_sound])
            return 1, 0
        if name == "FindResource":
            hinst, nseg, noff, tseg, toff = a
            self.last_sound = noff
            return 0x77, 0
        if name == "LoadResource":
            return 0x78, 0
        if name == "LockResource":
            return 0x0000, 0x4000
        return 1, 0

    # ---------------------------------------------------------------- run
    def snapshot(self):
        """[*TRACE_VARS, main, sub, peerWord] where main/sub = [x, y, frame, mirrored] or null."""
        d = {k: s16(self.rw(v)) for k, v in TRACE_VARS.items()}
        # what the main/sub windows show (FUN_1000_31a8 / FUN_1000_9350)
        for prefix, xo, yo, bo, so in (("main", 0x0AFA, 0x0AFC, 0x0ADC, 0x0AE0), ("sub", 0x0B98, 0x0B9A, 0x0B76, 0x0B7E)):
            bmp = self.rw(bo)
            if bmp == 0:
                d[prefix] = None
                continue
            mirrored = bmp >= 0x2000
            strip = ((bmp - (0x2000 if mirrored else 0x1000)) // 2)
            col = self.rw(so) // 40
            j = 15 - col if mirrored else col
            d[prefix] = [s16(self.rw(xo)), s16(self.rw(yo)), strip * 16 + j, int(mirrored)]
        d["peerWord"] = [s16(self.world.words.get((HWND_MAIN, 0), 0)), s16(self.world.words.get((HWND_MAIN, 2), 0))]
        return [d[k] for k in FIELDS]

    def run(self):
        sc = self.sc
        events = {}
        for e in sc.get("events", []):
            events.setdefault(e[0], []).append(e[1:])
        trace = []
        for t in range(sc["ticks"]):
            self.world.tick = t
            for ev in events.get(t, []):
                kind = ev[0]
                if kind == "action":
                    self.call(F_DEBUG, ev[1])
                elif kind == "event":
                    self.call(F_EVENT, ev[1])
                elif kind == "drag":
                    self.call(F_DRAG, ev[1], ev[2])
            self.call(F_TICK)
            trace.append(self.snapshot())
        return {"scenario": sc, "trace": trace, "sounds": self.world.sounds}


def main(exe, scen_path, out_path):
    sc = json.load(open(scen_path))
    res = Emu(exe, sc).run()
    os.makedirs(os.path.dirname(out_path) or ".", exist_ok=True)
    with open(out_path, "w") as f:
        f.write('{"scenario":' + json.dumps(res["scenario"]) + ',\n"fields":' + json.dumps(FIELDS) +
                ',\n"sounds":' + json.dumps(res["sounds"]) + ',\n"trace":[\n')
        f.write(",\n".join(json.dumps(t, separators=(",", ":")) for t in res["trace"]))
        f.write("\n]}\n")
    states = sorted({t[0] for t in res["trace"]})
    print(f"{os.path.basename(scen_path)}: {len(res['trace'])} ticks, {len(states)} states:",
          " ".join(f"{s:x}" for s in states))


if __name__ == "__main__":
    main(*sys.argv[1:4])
