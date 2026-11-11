"""Minimal parser for Windows 3.x New Executable (NE) files.

Parses the header, segment table, resource table, module/import tables,
entry table and per-segment relocation records.  No third-party deps.
"""
import struct
from dataclasses import dataclass, field

RT_NAMES = {
    1: "CURSOR", 2: "BITMAP", 3: "ICON", 4: "MENU", 5: "DIALOG", 6: "STRING",
    7: "FONTDIR", 8: "FONT", 9: "ACCELERATOR", 10: "RCDATA", 11: "MESSAGETABLE",
    12: "GROUP_CURSOR", 14: "GROUP_ICON", 16: "VERSION",
}


@dataclass
class Reloc:
    src_type: int      # 0=lobyte 2=segment 3=far ptr 5=offset 11=ptr48 13=offset32
    flags: int         # 0=internal 1=import ordinal 2=import name 3=osfixup, bit2=additive
    offset: int        # offset within segment of first location in chain
    target: tuple      # ('internal', seg, off) | ('ordinal', mod, ord) | ('name', mod, name) | ('osfixup', type)


@dataclass
class Segment:
    index: int         # 1-based
    file_offset: int
    file_len: int
    flags: int
    min_alloc: int
    data: bytes = b""
    relocs: list = field(default_factory=list)

    @property
    def is_data(self):
        return bool(self.flags & 1)


@dataclass
class Resource:
    type_id: object    # int or str
    name_id: object    # int or str
    offset: int
    length: int
    flags: int
    data: bytes

    @property
    def type_name(self):
        if isinstance(self.type_id, int):
            return RT_NAMES.get(self.type_id, str(self.type_id))
        return self.type_id


class NE:
    def __init__(self, data: bytes):
        self.data = data
        assert data[:2] == b"MZ"
        self.ne_off = struct.unpack_from("<I", data, 0x3C)[0]
        h = self.ne_off
        assert data[h:h + 2] == b"NE", "not an NE file"
        (self.entry_tab_off, self.entry_tab_len, self.crc, self.flags,
         self.auto_data_seg, self.heap, self.stack, self.ip, self.cs, self.sp, self.ss,
         self.n_segs, self.n_mods, self.nonres_len, self.seg_tab_off, self.res_tab_off,
         self.resname_tab_off, self.modref_tab_off, self.impname_tab_off, self.nonres_tab_off,
         self.n_movable, self.align_shift, self.n_res_segs, self.target_os, self.os2flags,
         self.gangload_off, self.gangload_len, self.min_swap, self.expected_winver
         ) = struct.unpack_from("<HHIHHHHHHHHHHHHHHHHIHHHBBHHHH", data, h + 4)
        self._parse_segments()
        self._parse_modules()
        self._parse_names()
        self._parse_entries()
        self._parse_resources()
        for s in self.segments:
            self._parse_relocs(s)

    # ------------------------------------------------------------------
    def _parse_segments(self):
        self.segments = []
        p = self.ne_off + self.seg_tab_off
        for i in range(self.n_segs):
            off, ln, fl, mn = struct.unpack_from("<HHHH", self.data, p + i * 8)
            foff = off << self.align_shift
            flen = ln if ln or not off else 0x10000
            if off == 0:
                flen = 0
            seg = Segment(i + 1, foff, flen, fl, mn or 0x10000)
            seg.data = self.data[foff:foff + flen]
            self.segments.append(seg)

    def _pstr(self, off):
        n = self.data[off]
        return self.data[off + 1:off + 1 + n].decode("latin1")

    def _parse_modules(self):
        self.modules = []
        p = self.ne_off + self.modref_tab_off
        for i in range(self.n_mods):
            o = struct.unpack_from("<H", self.data, p + i * 2)[0]
            self.modules.append(self._pstr(self.ne_off + self.impname_tab_off + o))

    def imported_name(self, off):
        return self._pstr(self.ne_off + self.impname_tab_off + off)

    def _parse_names(self):
        self.resident_names = {}
        p = self.ne_off + self.resname_tab_off
        first = True
        while self.data[p]:
            n = self.data[p]
            name = self.data[p + 1:p + 1 + n].decode("latin1")
            ordn = struct.unpack_from("<H", self.data, p + 1 + n)[0]
            if first:
                self.module_name = name
                first = False
            else:
                self.resident_names[ordn] = name
            p += 3 + n
        self.nonresident_names = {}
        p = self.nonres_tab_off
        first = True
        end = p + self.nonres_len
        while p < end and self.data[p]:
            n = self.data[p]
            name = self.data[p + 1:p + 1 + n].decode("latin1")
            ordn = struct.unpack_from("<H", self.data, p + 1 + n)[0]
            if first:
                self.description = name
                first = False
            else:
                self.nonresident_names[ordn] = name
            p += 3 + n

    def _parse_entries(self):
        self.entries = {}   # ordinal -> (seg, off)
        p = self.ne_off + self.entry_tab_off
        ordn = 1
        while True:
            cnt = self.data[p]
            if cnt == 0:
                break
            ind = self.data[p + 1]
            p += 2
            for _ in range(cnt):
                if ind == 0:
                    pass
                elif ind == 0xFF:
                    _fl, _int3f, seg, off = struct.unpack_from("<BHBH", self.data, p)
                    self.entries[ordn] = (seg, off)
                    p += 6
                else:
                    _fl, off = struct.unpack_from("<BH", self.data, p)
                    self.entries[ordn] = (ind, off)
                    p += 3
                ordn += 1

    def _parse_resources(self):
        self.resources = []
        p = self.ne_off + self.res_tab_off
        if self.res_tab_off == self.resname_tab_off:
            return
        shift = struct.unpack_from("<H", self.data, p)[0]
        p += 2
        base = self.ne_off + self.res_tab_off

        def rname(v):
            if v & 0x8000:
                return v & 0x7FFF
            return self._pstr(base + v)

        while True:
            tid = struct.unpack_from("<H", self.data, p)[0]
            if tid == 0:
                break
            cnt = struct.unpack_from("<H", self.data, p + 2)[0]
            p += 8
            for _ in range(cnt):
                off, ln, fl, nid, _h, _u = struct.unpack_from("<HHHHHH", self.data, p)
                p += 12
                fo, fl_ = off << shift, ln << shift
                self.resources.append(Resource(rname(tid), rname(nid), fo, fl_, fl,
                                               self.data[fo:fo + fl_]))

    def _parse_relocs(self, seg: Segment):
        if not (seg.flags & 0x100) or not seg.file_len:
            return
        p = seg.file_offset + seg.file_len
        n = struct.unpack_from("<H", self.data, p)[0]
        p += 2
        for _ in range(n):
            st, fl, off, a, b = struct.unpack_from("<BBHHH", self.data, p)
            p += 8
            kind = fl & 3
            if kind == 0:
                if a == 0xFF:
                    tgt = ("internal_movable", b)   # entry ordinal
                else:
                    tgt = ("internal", a, b)
            elif kind == 1:
                tgt = ("ordinal", self.modules[a - 1], b)
            elif kind == 2:
                tgt = ("name", self.modules[a - 1], self.imported_name(b))
            else:
                tgt = ("osfixup", a)
            seg.relocs.append(Reloc(st, fl, off, tgt))

    # ------------------------------------------------------------------
    def reloc_sites(self, seg: Segment):
        """Yield (site_offset, reloc) for every patched location, following
        non-additive chains."""
        for r in seg.relocs:
            if r.flags & 4:
                yield r.offset, r
                continue
            off = r.offset
            seen = set()
            while off != 0xFFFF and off not in seen and off + 2 <= len(seg.data):
                seen.add(off)
                yield off, r
                off = struct.unpack_from("<H", seg.data, off)[0]
