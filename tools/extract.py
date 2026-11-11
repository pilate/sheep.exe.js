"""Extract everything the JavaScript port needs from Sheep.exe.

Outputs
  assets/sprites.png        11 sprite strips stacked (640x440), transparent key
  assets/sounds/<id>.wav    the three WAVE resources, untouched
  assets/cursor.png         the "hand" cursor (32x32) + hotspot in manifest
  assets/icon.png           application icon
  assets/manifest.json      metadata (frame size, sound ids, cursor hotspot ...)
  src/generated/tables.ts   data-segment tables + debug action list + strings
  src/generated/inline.ts   the assets above as data: URIs (single-file build)

Usage:  python3 tools/extract.py Sheep.exe <project-root>
Standard library only.  Images are (width, height, [RGBA, ...]).
"""
import base64, json, os, struct, sys, hashlib

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from ne import NE
from dib import decode_dib
from dialogs import parse_dialog
import png

KNOWN_MD5 = "385e7f952873d00e52ed31d16a7d5c61"

# Region of the auto data segment holding the static animation/state tables.
TABLE_LO, TABLE_HI = 0x400, 0x870
# Debug dialog: jump table of FUN_1000_904a (actions 0..29 -> state numbers).
DEBUG_JUMPTABLE = 0x918D
DEBUG_COUNT = 30
DEBUG_FIRST_ID = 0x3EA


def frame_strip_ids(ne):
    """The bitmap table at DS:0x202 (16-byte entries, word +0 = resource id)
    lists the strips in frame order (16 frames each)."""
    ds = ne.segments[ne.auto_data_seg - 1].data
    ids = []
    for i in range(16):
        rid = struct.unpack_from("<H", ds, 0x202 + i * 16)[0]
        if not rid:
            break
        ids.append(rid)
    return ids


def build_sprites(ne):
    """Stack the strips into one sheet; returns ((W, H, pixels), strips, key colours)."""
    bmps = {r.name_id: r for r in ne.resources if r.type_name == "BITMAP"}
    strips = []
    for rid in frame_strip_ids(ne):
        w, h, pal, px = decode_dib(bmps[rid].data)
        # FUN_1000_0010 builds the mask from the *first pixel of the DIB bits*
        # (bottom-left, since DIBs are bottom-up) -> that index is transparent.
        strips.append((w, h, pal, px, px[h - 1][0]))
    W = max(s[0] for s in strips)
    pixels, keys = [], set()
    for w, h, pal, px, key in strips:
        keys.add(tuple(pal[key]))
        for row in px:
            pixels += [(0, 0, 0, 0) if i == key else tuple(pal[i]) + (255,) for i in row]
            pixels += [(0, 0, 0, 0)] * (W - w)
    return (W, len(pixels) // W, pixels), strips, keys


def cursor_png(ne):
    cur = next(r for r in ne.resources if r.type_name == "CURSOR")
    hx, hy = struct.unpack_from("<HH", cur.data, 0)
    d = cur.data[4:]
    hsz, w, h2 = struct.unpack_from("<Iii", d, 0)
    h = h2 // 2
    bpp = struct.unpack_from("<H", d, 14)[0]
    assert bpp == 1
    off = hsz + 2 * 4
    stride = ((w + 31) // 32) * 4
    xor = d[off: off + stride * h]
    and_ = d[off + stride * h: off + 2 * stride * h]
    im = [(0, 0, 0, 0)] * (w * h)
    for y in range(h):
        for x in range(w):
            sy = h - 1 - y
            bit = 7 - (x % 8)
            a = (and_[sy * stride + x // 8] >> bit) & 1
            c = (xor[sy * stride + x // 8] >> bit) & 1
            if a == 0:
                im[y * w + x] = (255, 255, 255, 255) if c else (0, 0, 0, 255)
            elif c:  # inverted screen -> approximate with black
                im[y * w + x] = (0, 0, 0, 255)
    return (w, h, im), (hx, hy)


def icon_png(ne):
    best = None
    for r in ne.resources:
        if r.type_name != "ICON":
            continue
        d = r.data
        hsz, w, h2, _pl, bpp = struct.unpack_from("<IiiHH", d, 0)
        if best is None or (w, bpp) > (best[1], best[3]):
            best = (r, w, h2 // 2, bpp)
    r, w, h, bpp = best
    d = r.data
    hsz = struct.unpack_from("<I", d, 0)[0]
    ncol = 1 << bpp if bpp <= 8 else 0
    pal = [tuple(d[hsz + i * 4: hsz + i * 4 + 3][::-1]) for i in range(ncol)]
    off = hsz + ncol * 4
    stride = ((w * bpp + 31) // 32) * 4
    astride = ((w + 31) // 32) * 4
    xor = d[off: off + stride * h]
    and_ = d[off + stride * h:]
    im = []
    for y in range(h):
        sy = h - 1 - y
        for x in range(w):
            if bpp == 4:
                b = xor[sy * stride + x // 2]
                i = (b >> 4) if x % 2 == 0 else (b & 15)
            elif bpp == 8:
                i = xor[sy * stride + x]
            else:
                i = (xor[sy * stride + x // 8] >> (7 - x % 8)) & 1
            a = (and_[sy * astride + x // 8] >> (7 - x % 8)) & 1
            im.append((0, 0, 0, 0) if a else pal[i] + (255,))
    return (w, h, im)


def debug_actions(ne, dialogs):
    code = ne.segments[0].data
    labels = {}
    for dl in dialogs.values():
        for it in dl["items"]:
            labels.setdefault(it["id"], it["text"])
    out = []
    for i in range(DEBUG_COUNT):
        tgt = struct.unpack_from("<H", code, DEBUG_JUMPTABLE + i * 2)[0]
        # each case is "C7 06 C0 0B imm16" = mov word ptr [0xbc0], imm16
        assert code[tgt:tgt + 4] == b"\xc7\x06\xc0\x0b", hex(tgt)
        state = struct.unpack_from("<H", code, tgt + 4)[0]
        label = labels.get(DEBUG_FIRST_ID + i, "?").replace("&", "")
        out.append({"label": label, "state": state})
    return out


def data_uri(mime, b):
    return f"data:{mime};base64," + base64.b64encode(b).decode()


def main(exe, root):
    raw = open(exe, "rb").read()
    md5 = hashlib.md5(raw).hexdigest()
    if md5 != KNOWN_MD5:
        print(f"warning: md5 {md5} differs from the analysed build {KNOWN_MD5}; "
              "table offsets may not match", file=sys.stderr)
    ne = NE(raw)
    ds = ne.segments[ne.auto_data_seg - 1].data
    assets = os.path.join(root, "assets")
    gen = os.path.join(root, "src", "generated")
    os.makedirs(os.path.join(assets, "sounds"), exist_ok=True)
    os.makedirs(gen, exist_ok=True)

    sheet, strips, keys = build_sprites(ne)
    sprites_png = png.encode(*sheet)
    open(os.path.join(assets, "sprites.png"), "wb").write(sprites_png)

    sounds = {}
    for r in ne.resources:
        if r.type_name == "WAVE":
            sounds[r.name_id] = r.data
            open(os.path.join(assets, "sounds", f"{r.name_id}.wav"), "wb").write(r.data)

    cur, hotspot = cursor_png(ne)
    cursor_bytes = png.encode(*cur)
    open(os.path.join(assets, "cursor.png"), "wb").write(cursor_bytes)
    ico = icon_png(ne)
    icon_bytes = png.encode(*ico)
    open(os.path.join(assets, "icon.png"), "wb").write(icon_bytes)

    dialogs = {r.name_id: parse_dialog(r.data) for r in ne.resources if r.type_name == "DIALOG"}
    actions = debug_actions(ne, dialogs)

    frames = sum(s[0] // 40 for s in strips)
    manifest = {
        "source": {"file": os.path.basename(exe), "md5": md5, "module": ne.module_name},
        "frame": {"width": 40, "height": 40, "perRow": 16, "count": frames},
        "sheet": {"width": sheet[0], "height": sheet[1], "file": "sprites.png"},
        "transparentKey": sorted(keys),
        "sounds": {str(k): f"sounds/{k}.wav" for k in sorted(sounds)},
        "cursor": {"file": "cursor.png", "hotspot": list(hotspot)},
        "icon": "icon.png",
        "actions": actions,
        "dialogs": dialogs,
    }
    json.dump(manifest, open(os.path.join(assets, "manifest.json"), "w"), indent=1, ensure_ascii=False)

    words = struct.unpack_from("<%dh" % ((TABLE_HI - TABLE_LO) // 2), ds, TABLE_LO)
    lines = [
        "// AUTO-GENERATED by tools/extract.py from %s (md5 %s). Do not edit." % (os.path.basename(exe), md5),
        "",
        "/** Base address (in the original auto data segment) of {@link DS_TABLES}. */",
        "export const DS_TABLE_BASE = 0x%x;" % TABLE_LO,
        "/** Words DS:0x%x..0x%x of the original data segment: animation/state tables. */" % (TABLE_LO, TABLE_HI),
        "export const DS_TABLES = new Int16Array([",
    ]
    for i in range(0, len(words), 16):
        lines.append("  " + ", ".join(str(w) for w in words[i:i + 16]) + ",")
    lines += ["]);", "",
              "/** Debug-dialog actions (FUN_1000_904a jump table) in dialog order. */",
              "export const ACTIONS: ReadonlyArray<{ readonly label: string; readonly state: number }> = ["]
    for a in actions:
        lines.append("  { label: %s, state: 0x%x }," % (json.dumps(a["label"]), a["state"]))
    lines += ["];", "",
              "export interface DialogItem { readonly id: number; readonly text: string; readonly rect: readonly number[]; readonly style: number }",
              "export interface DialogTemplate { readonly caption: string; readonly rect: readonly number[]; readonly items: readonly DialogItem[] }",
              "/** DIALOG resources (Win16 DLGTEMPLATE, coordinates in dialog units). */",
              "export const DIALOGS: Readonly<Record<number, DialogTemplate>> = {"]
    for did, dl in sorted(dialogs.items()):
        items = [{"id": it["id"], "text": it["text"] if isinstance(it["text"], str) else "",
                  "rect": it["rect"], "style": it["style"]} for it in dl["items"]]
        lines.append("  %d: %s," % (did, json.dumps({"caption": dl["caption"], "rect": dl["rect"], "items": items},
                                                    ensure_ascii=False)))
    lines += ["};", "",
              "export const FRAME_COUNT = %d;" % frames,
              "export const SHEET_WIDTH = %d;" % sheet[0],
              "export const SHEET_HEIGHT = %d;" % sheet[1],
              "export const CURSOR_HOTSPOT: readonly [number, number] = [%d, %d];" % hotspot,
              "export const SOUND_IDS: readonly number[] = [%s];" % ", ".join(str(k) for k in sorted(sounds)),
              ""]
    open(os.path.join(gen, "tables.ts"), "w").write("\n".join(lines))

    inline = [
        "// AUTO-GENERATED by tools/extract.py. Do not edit.",
        "export const SPRITES_URI = %s;" % json.dumps(data_uri("image/png", sprites_png)),
        "export const CURSOR_URI = %s;" % json.dumps(data_uri("image/png", cursor_bytes)),
        "export const ICON_URI = %s;" % json.dumps(data_uri("image/png", icon_bytes)),
        "export const SOUND_URIS: Record<number, string> = {",
    ]
    for k in sorted(sounds):
        inline.append("  %d: %s," % (k, json.dumps(data_uri("audio/wav", sounds[k]))))
    inline += ["};", ""]
    open(os.path.join(gen, "inline.ts"), "w").write("\n".join(inline))

    print("frames:", frames, "sheet:", sheet[:2], "png bytes:", len(sprites_png),
          "sounds:", {k: len(v) for k, v in sounds.items()}, "cursor hotspot:", hotspot)
    print("actions:", ", ".join("%s=0x%x" % (a["label"], a["state"]) for a in actions))


if __name__ == "__main__":
    main(sys.argv[1], sys.argv[2] if len(sys.argv) > 2 else ".")
