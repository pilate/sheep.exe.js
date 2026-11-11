"""Decode Windows DIBs (incl. RLE8) into palette + index rows (top-down)."""
import struct

def decode_dib(d):
    hsz, w, h, planes, bpp, comp, isz, _, _, clru, _ = struct.unpack_from("<IiiHHIIiiII", d, 0)
    ncol = clru or (1 << bpp)
    pal = [tuple(d[hsz + i*4: hsz + i*4 + 3][::-1]) for i in range(ncol)]  # BGR0 -> RGB
    p = hsz + ncol * 4
    H = abs(h)
    px = [[0] * w for _ in range(H)]
    if comp == 0:
        stride = ((w * bpp + 31) // 32) * 4
        assert bpp == 8
        for y in range(H):
            row = d[p + y*stride: p + y*stride + w]
            px[y] = list(row)
    elif comp == 1:  # RLE8
        x = y = 0
        while p < len(d):
            a, b = d[p], d[p+1]; p += 2
            if a:
                for _ in range(a):
                    if x < w and y < H: px[y][x] = b
                    x += 1
            elif b == 0: x = 0; y += 1
            elif b == 1: break
            elif b == 2: x += d[p]; y += d[p+1]; p += 2
            else:
                for i in range(b):
                    if x < w and y < H: px[y][x] = d[p+i]
                    x += 1
                p += b + (b & 1)
    else:
        raise ValueError("compression %d" % comp)
    if h > 0:
        px.reverse()
    return w, H, pal, px
