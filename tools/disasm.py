"""Annotated 16-bit disassembly of an NE code segment.

Resolves relocation sites (imports / internal far pointers) and annotates
immediate operands that look like pointers to strings in the auto data
segment.  Output is a plain-text listing used for manual analysis.
"""
import sys, os, struct, re
sys.path.insert(0, os.path.dirname(__file__))
from ne import NE
from capstone import Cs, CS_ARCH_X86, CS_MODE_16

# Win16 ordinal -> name for the APIs Sheep.exe imports.
API = {
    "KERNEL": {1: "FatalExit", 3: "GetVersion", 5: "LocalAlloc", 6: "LocalReAlloc", 7: "LocalFree",
               10: "LocalSize", 15: "GlobalAlloc", 16: "GlobalReAlloc", 17: "GlobalFree",
               18: "GlobalLock", 19: "GlobalUnlock", 20: "GlobalSize", 23: "LockSegment",
               24: "UnlockSegment", 30: "WaitEvent", 49: "GetModuleFileName",
               51: "MakeProcInstance", 52: "FreeProcInstance", 60: "FindResource",
               61: "LoadResource", 62: "LockResource", 63: "FreeResource", 91: "InitTask",
               102: "DOS3Call", 127: "GetPrivateProfileInt", 129: "WritePrivateProfileString",
               131: "GetDOSEnvironment", 137: "FatalAppExit", 178: "__WINFLAGS",
               128: "GetPrivateProfileString"},
    "USER": {1: "MessageBox", 5: "InitApp", 6: "PostQuitMessage", 10: "SetTimer", 12: "KillTimer",
             13: "GetTickCount", 17: "GetCursorPos", 18: "SetCapture", 19: "ReleaseCapture",
             30: "WindowFromPoint", 32: "GetWindowRect", 36: "GetWindowText", 42: "ShowWindow",
             47: "IsWindow", 50: "FindWindow", 53: "DestroyWindow", 56: "MoveWindow",
             57: "RegisterClass", 60: "GetActiveWindow", 66: "GetDC", 68: "ReleaseDC",
             81: "FillRect", 87: "DialogBox", 88: "EndDialog", 96: "CheckRadioButton",
             98: "IsDlgButtonChecked", 101: "SendDlgItemMessage", 106: "GetKeyState",
             107: "DefWindowProc", 108: "GetMessage", 111: "SendMessage",
             113: "TranslateMessage", 114: "DispatchMessage", 124: "UpdateWindow",
             127: "ValidateRect?", 133: "GetWindowWord", 134: "SetWindowWord",
             135: "GetWindowLong", 152: "DestroyMenu", 171: "WinHelp", 173: "LoadCursor",
             174: "LoadIcon", 179: "GetSystemMetrics", 232: "SetWindowPos", 262: "GetWindow",
             282: "SelectPalette", 283: "RealizePalette", 286: "GetDesktopWindow",
             411: "AppendMenu", 415: "CreatePopupMenu", 416: "TrackPopupMenu",
             420: "wsprintf", 430: "lstrcmp", 452: "CreateWindowEx", 97: "CheckDlgButton",
             49: "IsWindowVisible", 31: "IsIconic", 33: "GetClientRect"},
    "GDI": {34: "BitBlt", 45: "SelectObject", 48: "CreateBitmap", 51: "CreateCompatibleBitmap",
            52: "CreateCompatibleDC", 66: "CreateSolidBrush", 68: "DeleteDC", 69: "DeleteObject",
            80: "GetDeviceCaps", 360: "CreatePalette", 363: "GetSystemPaletteEntries",
            364: "GetSystemPaletteUse?", 370: "GetNearestPaletteIndex", 375: "GetSystemPaletteUse",
            442: "CreateDIBitmap", 439: "StretchDIBits", 440: "SetDIBits"},
    "MMSYSTEM": {2: "sndPlaySound"},
    "SHELL": {9: "DragAcceptFiles", 11: "DragQueryFile", 12: "DragFinish"},
}


def data_strings(ds: bytes):
    """Map offset -> printable C string in data segment."""
    out = {}
    for m in re.finditer(rb"[\x20-\x7e]{3,}\x00", ds):
        out[m.start()] = m.group()[:-1].decode()
    return out


def main(path, out_path):
    ne = NE(open(path, "rb").read())
    code = ne.segments[0]
    ds = ne.segments[ne.auto_data_seg - 1].data
    strs = data_strings(ds)

    sites = {}
    for off, r in ne.reloc_sites(code):
        t = r.target
        if t[0] == "ordinal":
            name = API.get(t[1], {}).get(t[2], f"{t[1]}.{t[2]}")
        elif t[0] == "internal":
            name = f"seg{t[1]}:{t[2]:04x}"
        else:
            name = str(t)
        sites[off] = (r.src_type, name)

    md = Cs(CS_ARCH_X86, CS_MODE_16)
    md.skipdata = True
    data = code.data
    lines = []
    # collect near call targets for labelling
    calls = set()
    for ins in md.disasm(data, 0):
        if ins.mnemonic == "call" and ins.op_str.startswith("0x"):
            calls.add(int(ins.op_str, 16))
        if ins.mnemonic == "lcall" and ins.address + 3 in sites and sites[ins.address + 3][1].startswith("seg1"):
            calls.add(int(ins.op_str.split(",")[1], 16))
    for ins in md.disasm(data, 0):
        ann = []
        for k in range(ins.address, ins.address + ins.size):
            if k in sites:
                st, name = sites[k]
                ann.append(f"<{name}>")
        for m in re.finditer(r"0x([0-9a-f]+)", ins.op_str):
            v = int(m.group(1), 16)
            if v in strs and ins.mnemonic in ("push", "mov") and v > 0x40:
                ann.append(f'"{strs[v][:40]}"')
        if ins.address in calls:
            lines.append(f"\nsub_{ins.address:04x}:")
        b = ins.bytes.hex()
        if ins.mnemonic == "lcall" and ins.address + 3 in sites and sites[ins.address + 3][1].startswith("seg1"):
            tgt = int(ins.op_str.split(",")[1], 16)
            lines.append(f"{ins.address:04x}: {b:<16} fcall  sub_{tgt:04x}")
            continue
        lines.append(f"{ins.address:04x}: {b:<16} {ins.mnemonic:<6} {ins.op_str}" +
                     (("    ; " + " ".join(ann)) if ann else ""))
    open(out_path, "w").write("\n".join(lines) + "\n")
    print("wrote", out_path, len(lines), "lines")


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2])
