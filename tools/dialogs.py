"""Parse Win16 DLGTEMPLATE resources."""
import struct

CLASSES = {0x80: "BUTTON", 0x81: "EDIT", 0x82: "STATIC", 0x83: "LISTBOX", 0x84: "SCROLLBAR", 0x85: "COMBOBOX"}


def _cstr(d, p, enc):
    e = d.index(b"\0", p)
    return d[p:e].decode(enc, "replace"), e + 1


def _name(d, p, enc):
    if d[p] == 0xFF:
        return struct.unpack_from("<H", d, p + 1)[0], p + 3
    return _cstr(d, p, enc)


def parse_dialog(d, enc="cp932"):
    style, n, x, y, cx, cy = struct.unpack_from("<IBHHHH", d, 0)
    p = 13
    menu, p = _name(d, p, enc)
    cls, p = _cstr(d, p, enc)
    caption, p = _cstr(d, p, enc)
    font = None
    if style & 0x40:  # DS_SETFONT
        pt = struct.unpack_from("<H", d, p)[0]
        face, p = _cstr(d, p + 2, enc)
        font = (pt, face)
    items = []
    for _ in range(n):
        ix, iy, icx, icy, iid, istyle = struct.unpack_from("<HHHHHI", d, p)
        p += 14
        if d[p] & 0x80:
            icls = CLASSES.get(d[p], hex(d[p])); p += 1
        else:
            icls, p = _cstr(d, p, enc)
        text, p = _name(d, p, enc)
        extra = d[p]; p += 1 + extra
        items.append({"id": iid, "class": icls, "text": text, "rect": [ix, iy, icx, icy], "style": istyle})
    return {"caption": caption, "rect": [x, y, cx, cy], "font": font, "items": items}
