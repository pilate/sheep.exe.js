"""Minimal PNG writer (standard library only).

Images are (width, height, pixels) with pixels a flat list of RGBA tuples.
Images with <= 256 distinct colours are written as indexed PNGs (with a tRNS
chunk for transparency), everything else as 8-bit RGBA.
"""
import struct, zlib


def _chunk(kind, data):
    c = kind + data
    return struct.pack(">I", len(data)) + c + struct.pack(">I", zlib.crc32(c) & 0xFFFFFFFF)


def encode(width, height, pixels):
    colours = {}
    for p in pixels:
        if p[3] == 0:
            p = (0, 0, 0, 0)
        if p not in colours:
            colours[p] = len(colours)
            if len(colours) > 256:
                break
    sig = b"\x89PNG\r\n\x1a\n"
    if len(colours) <= 256:
        # transparent entry first so tRNS stays short
        order = sorted(colours, key=lambda c: (c[3] != 0, colours[c]))
        index = {c: i for i, c in enumerate(order)}
        rows = b"".join(
            b"\0" + bytes(index[(0, 0, 0, 0) if p[3] == 0 else p] for p in pixels[y * width:(y + 1) * width])
            for y in range(height))
        ihdr = struct.pack(">IIBBBBB", width, height, 8, 3, 0, 0, 0)
        plte = b"".join(bytes(c[:3]) for c in order)
        alpha = bytes(c[3] for c in order)
        trns = alpha.rstrip(b"\xff")
        body = _chunk(b"IHDR", ihdr) + _chunk(b"PLTE", plte)
        if trns:
            body += _chunk(b"tRNS", trns)
    else:
        rows = b"".join(
            b"\0" + b"".join(bytes(p) for p in pixels[y * width:(y + 1) * width]) for y in range(height))
        body = _chunk(b"IHDR", struct.pack(">IIBBBBB", width, height, 8, 6, 0, 0, 0))
    return sig + body + _chunk(b"IDAT", zlib.compress(rows, 9)) + _chunk(b"IEND", b"")
