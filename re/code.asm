0000: 0000             add    byte ptr [bx + si], al
0002: 0000             add    byte ptr [bx + si], al
0004: 0000             add    byte ptr [bx + si], al
0006: 0000             add    byte ptr [bx + si], al
0008: 0000             add    byte ptr [bx + si], al
000a: 0000             add    byte ptr [bx + si], al
000c: 0000             add    byte ptr [bx + si], al
000e: 0000             add    byte ptr [bx + si], al

sub_0010:
0010: c8060000         enter  6, 0
0014: 9c               pushf  
0015: 1e               push   ds
0016: 6657             push   edi
0018: 6656             push   esi
001a: fc               cld    
001b: 6633ff           xor    edi, edi
001e: 6633f6           xor    esi, esi
0021: 6633c0           xor    eax, eax
0024: 6633c9           xor    ecx, ecx
0027: 6633d2           xor    edx, edx
002a: c57606           lds    si, ptr [bp + 6]
002d: c47e0a           les    di, ptr [bp + 0xa]
0030: e8e103           call   0x414
0033: 50               push   ax
0034: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0036: 66ad             lodsd  eax, dword ptr [si]
0038: 8946fa           mov    word ptr [bp - 6], ax
003b: 66ab             stosd  dword ptr es:[di], eax
003d: 66ad             lodsd  eax, dword ptr [si]
003f: 668bc8           mov    ecx, eax
0042: 66ab             stosd  dword ptr es:[di], eax
0044: 66ad             lodsd  eax, dword ptr [si]
0046: 66b801000100     mov    eax, 0x10001
004c: 66ab             stosd  dword ptr es:[di], eax
004e: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0050: 66ad             lodsd  eax, dword ptr [si]
0052: 8b46fa           mov    ax, word ptr [bp - 6]
0055: 051f00           add    ax, 0x1f
0058: c1e805           shr    ax, 5
005b: 8946fc           mov    word ptr [bp - 4], ax
005e: c1e002           shl    ax, 2
0061: f7e1             mul    cx
0063: 66ab             stosd  dword ptr es:[di], eax
0065: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0067: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0069: 66ad             lodsd  eax, dword ptr [si]
006b: 66b802000000     mov    eax, 2
0071: 66ab             stosd  dword ptr es:[di], eax
0073: 66ad             lodsd  eax, dword ptr [si]
0075: 66b802000000     mov    eax, 2
007b: 66ab             stosd  dword ptr es:[di], eax
007d: 58               pop    ax
007e: c1e002           shl    ax, 2
0081: 03f0             add    si, ax
0083: 66b8ffffff00     mov    eax, 0xffffff
0089: 66ab             stosd  dword ptr es:[di], eax
008b: 6633c0           xor    eax, eax
008e: 66ab             stosd  dword ptr es:[di], eax
0090: 678a06           mov    al, byte ptr [esi]
0093: 8846fe           mov    byte ptr [bp - 2], al
0096: 51               push   cx
0097: 8b56fa           mov    dx, word ptr [bp - 6]
009a: 8b4efc           mov    cx, word ptr [bp - 4]
009d: 51               push   cx
009e: 6633db           xor    ebx, ebx
00a1: b90800           mov    cx, 8
00a4: 83fa00           cmp    dx, 0
00a7: 7e47             jle    0xf0
00a9: 90               nop    
00aa: 90               nop    
00ab: 6667ad           lodsd  eax, dword ptr [esi]
00ae: 83ea04           sub    dx, 4
00b1: 3a46fe           cmp    al, byte ptr [bp - 2]
00b4: 0f94c0           sete   al
00b7: 3c01             cmp    al, 1
00b9: 66d1d3           rcl    ebx, 1
00bc: 66c1e808         shr    eax, 8
00c0: 3a46fe           cmp    al, byte ptr [bp - 2]
00c3: 0f94c0           sete   al
00c6: 3c01             cmp    al, 1
00c8: 66d1d3           rcl    ebx, 1
00cb: 66c1e808         shr    eax, 8
00cf: 3a46fe           cmp    al, byte ptr [bp - 2]
00d2: 0f94c0           sete   al
00d5: 3c01             cmp    al, 1
00d7: 66d1d3           rcl    ebx, 1
00da: 66c1e808         shr    eax, 8
00de: 3a46fe           cmp    al, byte ptr [bp - 2]
00e1: 0f94c0           sete   al
00e4: 3c01             cmp    al, 1
00e6: 66d1d3           rcl    ebx, 1
00e9: 66c1e808         shr    eax, 8
00ed: eb05             jmp    0xf4
00ef: 90               nop    
00f0: 66c1e304         shl    ebx, 4
00f4: e2ae             loop   0xa4
00f6: 668bc3           mov    eax, ebx
00f9: 86c4             xchg   ah, al
00fb: 66c1c810         ror    eax, 0x10
00ff: 86c4             xchg   ah, al
0101: 6667ab           stosd  dword ptr es:[edi], eax
0104: 59               pop    cx
0105: e296             loop   0x9d
0107: 59               pop    cx
0108: e28c             loop   0x96
010a: 665e             pop    esi
010c: 665f             pop    edi
010e: 1f               pop    ds
010f: 9d               popf   
0110: c9               leave  
0111: ca0800           retf   8
0114: c8080000         enter  8, 0
0118: 9c               pushf  
0119: 1e               push   ds
011a: 6657             push   edi
011c: 6656             push   esi
011e: fc               cld    
011f: c746fc0000       mov    word ptr [bp - 4], 0
0124: 6633ff           xor    edi, edi
0127: 6633f6           xor    esi, esi
012a: 6633c0           xor    eax, eax
012d: 6633c9           xor    ecx, ecx
0130: 6633d2           xor    edx, edx
0133: c57608           lds    si, ptr [bp + 8]
0136: c47e0c           les    di, ptr [bp + 0xc]
0139: e8d802           call   0x414
013c: 50               push   ax
013d: 66a5             movsd  dword ptr es:[di], dword ptr [si]
013f: 66ad             lodsd  eax, dword ptr [si]
0141: 8946f8           mov    word ptr [bp - 8], ax
0144: 66ab             stosd  dword ptr es:[di], eax
0146: 66ad             lodsd  eax, dword ptr [si]
0148: 668bc8           mov    ecx, eax
014b: 66ab             stosd  dword ptr es:[di], eax
014d: 66ad             lodsd  eax, dword ptr [si]
014f: 66b801000100     mov    eax, 0x10001
0155: 66ab             stosd  dword ptr es:[di], eax
0157: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0159: 66ad             lodsd  eax, dword ptr [si]
015b: 8b46f8           mov    ax, word ptr [bp - 8]
015e: 051f00           add    ax, 0x1f
0161: c1e805           shr    ax, 5
0164: 8946fa           mov    word ptr [bp - 6], ax
0167: c1e002           shl    ax, 2
016a: f7e1             mul    cx
016c: 66ab             stosd  dword ptr es:[di], eax
016e: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0170: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0172: 66ad             lodsd  eax, dword ptr [si]
0174: 66b802000000     mov    eax, 2
017a: 66ab             stosd  dword ptr es:[di], eax
017c: 66ad             lodsd  eax, dword ptr [si]
017e: 66b802000000     mov    eax, 2
0184: 66ab             stosd  dword ptr es:[di], eax
0186: 6656             push   esi
0188: 8b4606           mov    ax, word ptr [bp + 6]
018b: c1e002           shl    ax, 2
018e: 03f0             add    si, ax
0190: 66a5             movsd  dword ptr es:[di], dword ptr [si]
0192: 6633c0           xor    eax, eax
0195: 66ab             stosd  dword ptr es:[di], eax
0197: 665e             pop    esi
0199: 58               pop    ax
019a: c1e002           shl    ax, 2
019d: 03f0             add    si, ax
019f: 8b4606           mov    ax, word ptr [bp + 6]
01a2: 8846fe           mov    byte ptr [bp - 2], al
01a5: 51               push   cx
01a6: 8b56f8           mov    dx, word ptr [bp - 8]
01a9: 8b4efa           mov    cx, word ptr [bp - 6]
01ac: 51               push   cx
01ad: 6633db           xor    ebx, ebx
01b0: b90800           mov    cx, 8
01b3: 83fa00           cmp    dx, 0
01b6: 7e51             jle    0x209
01b8: 90               nop    
01b9: 90               nop    
01ba: 6667ad           lodsd  eax, dword ptr [esi]
01bd: 83ea04           sub    dx, 4
01c0: 3a46fe           cmp    al, byte ptr [bp - 2]
01c3: 0f94c0           sete   al
01c6: 3c01             cmp    al, 1
01c8: 66d1d3           rcl    ebx, 1
01cb: 66c1e808         shr    eax, 8
01cf: 3a46fe           cmp    al, byte ptr [bp - 2]
01d2: 0f94c0           sete   al
01d5: 3c01             cmp    al, 1
01d7: 66d1d3           rcl    ebx, 1
01da: 66c1e808         shr    eax, 8
01de: 3a46fe           cmp    al, byte ptr [bp - 2]
01e1: 0f94c0           sete   al
01e4: 3c01             cmp    al, 1
01e6: 66d1d3           rcl    ebx, 1
01e9: 66c1e808         shr    eax, 8
01ed: 3a46fe           cmp    al, byte ptr [bp - 2]
01f0: 0f94c0           sete   al
01f3: 3c01             cmp    al, 1
01f5: 66d1d3           rcl    ebx, 1
01f8: 66c1e808         shr    eax, 8
01fc: 8ac3             mov    al, bl
01fe: 240f             and    al, 0xf
0200: 3c0f             cmp    al, 0xf
0202: 8356fc00         adc    word ptr [bp - 4], 0
0206: eb05             jmp    0x20d
0208: 90               nop    
0209: 66c1e304         shl    ebx, 4
020d: e2a4             loop   0x1b3
020f: 668bc3           mov    eax, ebx
0212: 86c4             xchg   ah, al
0214: 66c1c810         ror    eax, 0x10
0218: 86c4             xchg   ah, al
021a: 6667ab           stosd  dword ptr es:[edi], eax
021d: 59               pop    cx
021e: e28c             loop   0x1ac
0220: 59               pop    cx
0221: e282             loop   0x1a5
0223: 8b46fc           mov    ax, word ptr [bp - 4]
0226: 665e             pop    esi
0228: 665f             pop    edi
022a: 1f               pop    ds
022b: 9d               popf   
022c: c9               leave  
022d: ca0a00           retf   0xa

sub_0230:
0230: c8020000         enter  2, 0
0234: 9c               pushf  
0235: 1e               push   ds
0236: 6657             push   edi
0238: 6656             push   esi
023a: fc               cld    
023b: 6633ff           xor    edi, edi
023e: 6633f6           xor    esi, esi
0241: c57606           lds    si, ptr [bp + 6]
0244: c47e0a           les    di, ptr [bp + 0xa]
0247: 8b4404           mov    ax, word ptr [si + 4]
024a: 8946fe           mov    word ptr [bp - 2], ax
024d: 050300           add    ax, 3
0250: 25fcff           and    ax, 0xfffc
0253: 660fb7d8         movzx  ebx, ax
0257: 668b5408         mov    edx, dword ptr [si + 8]
025b: ff7410           push   word ptr [si + 0x10]
025e: ff740e           push   word ptr [si + 0xe]
0261: 668b0c           mov    ecx, dword ptr [si]
0264: c1e902           shr    cx, 2
0267: f366a5           rep movsd dword ptr es:[di], dword ptr [si]
026a: 57               push   di
026b: 33ff             xor    di, di
026d: 26c745100000     mov    word ptr es:[di + 0x10], 0
0273: 5f               pop    di
0274: e89d01           call   0x414
0277: 8bc8             mov    cx, ax
0279: f366a5           rep movsd dword ptr es:[di], dword ptr [si]
027c: 59               pop    cx
027d: 58               pop    ax
027e: 3d0000           cmp    ax, 0
0281: 7578             jne    0x2fb
0283: 90               nop    
0284: 90               nop    
0285: 83f904           cmp    cx, 4
0288: 755e             jne    0x2e8
028a: 90               nop    
028b: 90               nop    
028c: 57               push   di
028d: 33ff             xor    di, di
028f: 26c7450e0800     mov    word ptr es:[di + 0xe], 8
0295: 6626837d2000     cmp    dword ptr es:[di + 0x20], 0
029b: 7508             jne    0x2a5
029d: 90               nop    
029e: 90               nop    
029f: 26c745201000     mov    word ptr es:[di + 0x20], 0x10
02a5: 5f               pop    di
02a6: 668bca           mov    ecx, edx
02a9: 8b46fe           mov    ax, word ptr [bp - 2]
02ac: 40               inc    ax
02ad: d1e8             shr    ax, 1
02af: 050300           add    ax, 3
02b2: 25fcff           and    ax, 0xfffc
02b5: 660fb7d0         movzx  edx, ax
02b9: 51               push   cx
02ba: 6656             push   esi
02bc: 6657             push   edi
02be: 8bcb             mov    cx, bx
02c0: f7c10100         test   cx, 1
02c4: 750b             jne    0x2d1
02c6: 90               nop    
02c7: 90               nop    
02c8: ac               lodsb  al, byte ptr [si]
02c9: 8ae0             mov    ah, al
02cb: c0e804           shr    al, 4
02ce: eb05             jmp    0x2d5
02d0: 90               nop    
02d1: 8ac4             mov    al, ah
02d3: 240f             and    al, 0xf
02d5: aa               stosb  byte ptr es:[di], al
02d6: e2e8             loop   0x2c0
02d8: 665f             pop    edi
02da: 665e             pop    esi
02dc: 6603fb           add    edi, ebx
02df: 6603f2           add    esi, edx
02e2: 59               pop    cx
02e3: e2d4             loop   0x2b9
02e5: e92201           jmp    0x40a
02e8: 668bc3           mov    eax, ebx
02eb: 66f7e2           mul    edx
02ee: 66c1e802         shr    eax, 2
02f2: 668bc8           mov    ecx, eax
02f5: f366a5           rep movsd dword ptr es:[di], dword ptr [si]
02f8: e90f01           jmp    0x40a
02fb: 3d0100           cmp    ax, 1
02fe: 0f84a300         je     0x3a5
0302: 57               push   di
0303: 33ff             xor    di, di
0305: 26c7450e0800     mov    word ptr es:[di + 0xe], 8
030b: 6626837d2000     cmp    dword ptr es:[di + 0x20], 0
0311: 7508             jne    0x31b
0313: 90               nop    
0314: 90               nop    
0315: 26c745201000     mov    word ptr es:[di + 0x20], 0x10
031b: 5f               pop    di
031c: 668bd7           mov    edx, edi
031f: 67ad             lodsw  ax, word ptr [esi]
0321: 0ac0             or     al, al
0323: 7566             jne    0x38b
0325: 90               nop    
0326: 90               nop    
0327: 3ae0             cmp    ah, al
0329: 750a             jne    0x335
032b: 90               nop    
032c: 90               nop    
032d: 668bfa           mov    edi, edx
0330: 6603fb           add    edi, ebx
0333: ebe7             jmp    0x31c
0335: fec0             inc    al
0337: 3ae0             cmp    ah, al
0339: 0f84cd00         je     0x40a
033d: fec0             inc    al
033f: 3ae0             cmp    ah, al
0341: 751a             jne    0x35d
0343: 90               nop    
0344: 90               nop    
0345: 67ad             lodsw  ax, word ptr [esi]
0347: 0ae4             or     ah, ah
0349: 740c             je     0x357
034b: 90               nop    
034c: 90               nop    
034d: 6603fb           add    edi, ebx
0350: 6603d3           add    edx, ebx
0353: fecc             dec    ah
0355: 75f6             jne    0x34d
0357: 6603f8           add    edi, eax
035a: eb2c             jmp    0x388
035c: 90               nop    
035d: 52               push   dx
035e: 8acc             mov    cl, ah
0360: 67ad             lodsw  ax, word ptr [esi]
0362: 8ad0             mov    dl, al
0364: c0e804           shr    al, 4
0367: 67aa             stosb  byte ptr es:[edi], al
0369: 49               dec    cx
036a: e31b             jcxz   0x387
036c: 8ac2             mov    al, dl
036e: 240f             and    al, 0xf
0370: 67aa             stosb  byte ptr es:[edi], al
0372: 49               dec    cx
0373: e312             jcxz   0x387
0375: 8ac4             mov    al, ah
0377: c0e804           shr    al, 4
037a: 67aa             stosb  byte ptr es:[edi], al
037c: 49               dec    cx
037d: e308             jcxz   0x387
037f: 8ac4             mov    al, ah
0381: 240f             and    al, 0xf
0383: 67aa             stosb  byte ptr es:[edi], al
0385: e2d9             loop   0x360
0387: 5a               pop    dx
0388: eb15             jmp    0x39f
038a: 90               nop    
038b: 8ac8             mov    cl, al
038d: 8ac4             mov    al, ah
038f: c0e804           shr    al, 4
0392: 80e40f           and    ah, 0xf
0395: d1e9             shr    cx, 1
0397: f367ab           rep stosw word ptr es:[edi], ax
039a: 12c9             adc    cl, cl
039c: f367aa           rep stosb byte ptr es:[edi], al
039f: e97dff           jmp    0x31f
03a2: eb66             jmp    0x40a
03a4: 90               nop    
03a5: 668bd7           mov    edx, edi
03a8: 67ad             lodsw  ax, word ptr [esi]
03aa: 0ac0             or     al, al
03ac: 754c             jne    0x3fa
03ae: 90               nop    
03af: 90               nop    
03b0: 3ae0             cmp    ah, al
03b2: 750a             jne    0x3be
03b4: 90               nop    
03b5: 90               nop    
03b6: 668bfa           mov    edi, edx
03b9: 6603fb           add    edi, ebx
03bc: ebe7             jmp    0x3a5
03be: fec0             inc    al
03c0: 3ae0             cmp    ah, al
03c2: 7446             je     0x40a
03c4: 90               nop    
03c5: 90               nop    
03c6: fec0             inc    al
03c8: 3ae0             cmp    ah, al
03ca: 751a             jne    0x3e6
03cc: 90               nop    
03cd: 90               nop    
03ce: 67ad             lodsw  ax, word ptr [esi]
03d0: 0ae4             or     ah, ah
03d2: 740c             je     0x3e0
03d4: 90               nop    
03d5: 90               nop    
03d6: 6603fb           add    edi, ebx
03d9: 6603d3           add    edx, ebx
03dc: fecc             dec    ah
03de: 75f6             jne    0x3d6
03e0: 6603f8           add    edi, eax
03e3: eb12             jmp    0x3f7
03e5: 90               nop    
03e6: 8acc             mov    cl, ah
03e8: d1e9             shr    cx, 1
03ea: f367a5           rep movsw word ptr es:[edi], word ptr [esi]
03ed: 12c9             adc    cl, cl
03ef: f367a4           rep movsb byte ptr es:[edi], byte ptr [esi]
03f2: 6646             inc    esi
03f4: 83e6fe           and    si, 0xfffe
03f7: eb0f             jmp    0x408
03f9: 90               nop    
03fa: 8ac8             mov    cl, al
03fc: 8ac4             mov    al, ah
03fe: d1e9             shr    cx, 1
0400: f367ab           rep stosw word ptr es:[edi], ax
0403: 12c9             adc    cl, cl
0405: f367aa           rep stosb byte ptr es:[edi], al
0408: eb9e             jmp    0x3a8
040a: 665e             pop    esi
040c: 665f             pop    edi
040e: 1f               pop    ds
040f: 9d               popf   
0410: c9               leave  
0411: ca0800           retf   8

sub_0414:
0414: 6656             push   esi
0416: 33f6             xor    si, si
0418: 8b4420           mov    ax, word ptr [si + 0x20]
041b: 0bc0             or     ax, ax
041d: 750c             jne    0x42b
041f: 90               nop    
0420: 90               nop    
0421: 51               push   cx
0422: 8b4c0e           mov    cx, word ptr [si + 0xe]
0425: b80100           mov    ax, 1
0428: d3e0             shl    ax, cl
042a: 59               pop    cx
042b: 665e             pop    esi
042d: c3               ret    
042e: ff               .byte  0xff    ; <__WINFLAGS>
042f: ffb0ff50         push   word ptr [bx + si + 0x50ff]
0433: 9afb05529a       fcall  sub_05fb
0438: 33ed             xor    bp, bp
043a: 55               push   bp
043b: 9affff0000       lcall  0, 0xffff    ; <InitTask>
0440: 0bc0             or     ax, ax
0442: 74ec             je     0x430
0444: 8c069c08         mov    word ptr [0x89c], es
0448: 81c10001         add    cx, 0x100
044c: 72e2             jb     0x430
044e: 890e6608         mov    word ptr [0x866], cx
0452: 89366808         mov    word ptr [0x868], si
0456: 893e6a08         mov    word ptr [0x86a], di
045a: 891e6c08         mov    word ptr [0x86c], bx
045e: 8c066e08         mov    word ptr [0x86e], es
0462: 89167008         mov    word ptr [0x870], dx
0466: 9affff0000       lcall  0, 0xffff    ; <GetVersion>
046b: 86c4             xchg   ah, al
046d: a39e08           mov    word ptr [0x89e], ax
0470: b430             mov    ah, 0x30
0472: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0479: 7407             je     0x482
047b: 9affff0000       lcall  0, 0xffff    ; <DOS3Call>
0480: eb02             jmp    0x484
0482: cd21             int    0x21
0484: a3a208           mov    word ptr [0x8a2], ax
0487: 86c4             xchg   ah, al
0489: a3a008           mov    word ptr [0x8a0], ax
048c: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0493: 7505             jne    0x49a
0495: b000             mov    al, 0
0497: a2a508           mov    byte ptr [0x8a5], al
049a: 33c0             xor    ax, ax
049c: 50               push   ax
049d: 9affff0000       lcall  0, 0xffff    ; <WaitEvent>
04a2: ff366a08         push   word ptr [0x86a]
04a6: 9affff0000       lcall  0, 0xffff    ; <InitApp>
04ab: 0bc0             or     ax, ax
04ad: 7481             je     0x430
04af: 9a0e053604       fcall  sub_050e
04b4: 9a4607b204       fcall  sub_0746
04b9: 9ac808b704       fcall  sub_08c8
04be: e8950f           call   0x1456
04c1: ff36da08         push   word ptr [0x8da]
04c5: ff36d808         push   word ptr [0x8d8]
04c9: ff36d608         push   word ptr [0x8d6]
04cd: 9ae204bc04       fcall  sub_04e2
04d2: 83c406           add    sp, 6
04d5: 50               push   ax
04d6: 9aed05d004       fcall  sub_05ed
04db: b81500           mov    ax, 0x15
04de: e97c04           jmp    0x95d
04e1: 008cd890         add    byte ptr [si - 0x6f28], cl
04e5: 45               inc    bp
04e6: 55               push   bp
04e7: 8bec             mov    bp, sp
04e9: 1e               push   ds
04ea: 8ed8             mov    ds, ax
04ec: ff366a08         push   word ptr [0x86a]
04f0: ff366808         push   word ptr [0x868]
04f4: ff366e08         push   word ptr [0x86e]
04f8: ff366c08         push   word ptr [0x86c]
04fc: ff367008         push   word ptr [0x870]
0500: 9a501cd904       fcall  sub_1c50
0505: 83ed02           sub    bp, 2
0508: 8be5             mov    sp, bp
050a: 1f               pop    ds
050b: 5d               pop    bp
050c: 4d               dec    bp
050d: cb               retf   

sub_050e:
050e: 8cd8             mov    ax, ds
0510: 90               nop    
0511: 45               inc    bp
0512: 55               push   bp
0513: 8bec             mov    bp, sp
0515: 1e               push   ds
0516: 8ed8             mov    ds, ax
0518: b80035           mov    ax, 0x3500
051b: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0522: 7407             je     0x52b
0524: 9a7c040000       lcall  0, 0x47c    ; <DOS3Call>
0529: eb02             jmp    0x52d
052b: cd21             int    0x21
052d: 891e8808         mov    word ptr [0x888], bx
0531: 8c068a08         mov    word ptr [0x88a], es
0535: 0e               push   cs
0536: 1f               pop    ds
0537: b80025           mov    ax, 0x2500
053a: ba5809           mov    dx, 0x958
053d: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0544: 7407             je     0x54d
0546: 9a25050000       lcall  0, 0x525    ; <DOS3Call>
054b: eb02             jmp    0x54f
054d: cd21             int    0x21
054f: 16               push   ss
0550: 1f               pop    ds
0551: 8b0e5c09         mov    cx, word ptr [0x95c]
0555: e329             jcxz   0x580
0557: 8e069c08         mov    es, word ptr [0x89c]
055b: 268b362c00       mov    si, word ptr es:[0x2c]
0560: a15e09           mov    ax, word ptr [0x95e]
0563: 8b166009         mov    dx, word ptr [0x960]
0567: 33db             xor    bx, bx
0569: ff1e5a09         lcall  [0x95a]
056d: 7303             jae    0x572
056f: e97a01           jmp    0x6ec
0572: a16209           mov    ax, word ptr [0x962]
0575: 8b166409         mov    dx, word ptr [0x964]
0579: bb0300           mov    bx, 3
057c: ff1e5a09         lcall  [0x95a]
0580: 8e069c08         mov    es, word ptr [0x89c]
0584: 268b0e2c00       mov    cx, word ptr es:[0x2c]
0589: e33e             jcxz   0x5c9
058b: 8ec1             mov    es, cx
058d: 33ff             xor    di, di
058f: 26803d00         cmp    byte ptr es:[di], 0
0593: 7434             je     0x5c9
0595: b90d00           mov    cx, 0xd
0598: be7a08           mov    si, 0x87a    ; "_C_FILE_INFO="
059b: f3a6             repe cmpsb byte ptr [si], byte ptr es:[di]
059d: 740b             je     0x5aa
059f: b9ff7f           mov    cx, 0x7fff
05a2: 33c0             xor    ax, ax
05a4: f2ae             repne scasb al, byte ptr es:[di]
05a6: 7521             jne    0x5c9
05a8: ebe5             jmp    0x58f
05aa: 06               push   es
05ab: 1e               push   ds
05ac: 07               pop    es
05ad: 1f               pop    ds
05ae: 8bf7             mov    si, di
05b0: bfae08           mov    di, 0x8ae
05b3: b104             mov    cl, 4
05b5: ac               lodsb  al, byte ptr [si]
05b6: 2c41             sub    al, 0x41
05b8: 720d             jb     0x5c7
05ba: d2e0             shl    al, cl
05bc: 92               xchg   dx, ax
05bd: ac               lodsb  al, byte ptr [si]
05be: 2c41             sub    al, 0x41
05c0: 7205             jb     0x5c7
05c2: 0ac2             or     al, dl
05c4: aa               stosb  byte ptr es:[di], al
05c5: ebee             jmp    0x5b5
05c7: 16               push   ss
05c8: 1f               pop    ds
05c9: be6609           mov    si, 0x966    ; "<<NMSG>>"
05cc: bf6609           mov    di, 0x966    ; "<<NMSG>>"
05cf: e8e200           call   0x6b4
05d2: be6609           mov    si, 0x966    ; "<<NMSG>>"
05d5: bf6609           mov    di, 0x966    ; "<<NMSG>>"
05d8: e8d900           call   0x6b4
05db: be6609           mov    si, 0x966    ; "<<NMSG>>"
05de: bf6609           mov    di, 0x966    ; "<<NMSG>>"
05e1: e8d000           call   0x6b4
05e4: 83ed02           sub    bp, 2
05e7: 8be5             mov    sp, bp
05e9: 1f               pop    ds
05ea: 5d               pop    bp
05eb: 4d               dec    bp
05ec: cb               retf   

sub_05ed:
05ed: 8cd8             mov    ax, ds
05ef: 90               nop    
05f0: 45               inc    bp
05f1: 55               push   bp
05f2: 8bec             mov    bp, sp
05f4: 1e               push   ds
05f5: 8ed8             mov    ds, ax
05f7: 33c9             xor    cx, cx
05f9: eb2f             jmp    0x62a

sub_05fb:
05fb: 8cd8             mov    ax, ds
05fd: 90               nop    
05fe: 45               inc    bp
05ff: 55               push   bp
0600: 8bec             mov    bp, sp
0602: 1e               push   ds
0603: 8ed8             mov    ds, ax
0605: b90100           mov    cx, 1
0608: eb20             jmp    0x62a
060a: 8cd8             mov    ax, ds
060c: 90               nop    
060d: 45               inc    bp
060e: 55               push   bp
060f: 8bec             mov    bp, sp
0611: 1e               push   ds
0612: 8ed8             mov    ds, ax
0614: 56               push   si
0615: 57               push   di
0616: b90001           mov    cx, 0x100
0619: eb0f             jmp    0x62a
061b: 8cd8             mov    ax, ds
061d: 90               nop    
061e: 45               inc    bp
061f: 55               push   bp
0620: 8bec             mov    bp, sp
0622: 1e               push   ds
0623: 8ed8             mov    ds, ax
0625: 56               push   si
0626: 57               push   di
0627: b90101           mov    cx, 0x101
062a: 882ee308         mov    byte ptr [0x8e3], ch
062e: 51               push   cx
062f: 0ac9             or     cl, cl
0631: 751c             jne    0x64f
0633: bebc0b           mov    si, 0xbbc
0636: bfbc0b           mov    di, 0xbbc
0639: e87800           call   0x6b4
063c: be6609           mov    si, 0x966    ; "<<NMSG>>"
063f: bf6609           mov    di, 0x966    ; "<<NMSG>>"
0642: e86f00           call   0x6b4
0645: 8b7606           mov    si, word ptr [bp + 6]
0648: 56               push   si
0649: e80a0e           call   0x1456
064c: 83c402           add    sp, 2
064f: be6609           mov    si, 0x966    ; "<<NMSG>>"
0652: bf6609           mov    di, 0x966    ; "<<NMSG>>"
0655: e85c00           call   0x6b4
0658: be6609           mov    si, 0x966    ; "<<NMSG>>"
065b: bf6609           mov    di, 0x966    ; "<<NMSG>>"
065e: e85300           call   0x6b4
0661: e82700           call   0x68b
0664: 58               pop    ax
0665: 0ae4             or     ah, ah
0667: 7517             jne    0x680
0669: 8b4606           mov    ax, word ptr [bp + 6]
066c: b44c             mov    ah, 0x4c
066e: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0675: 7407             je     0x67e
0677: 9a47050000       lcall  0, 0x547    ; <DOS3Call>
067c: eb02             jmp    0x680
067e: cd21             int    0x21
0680: 5f               pop    di
0681: 5e               pop    si
0682: 83ed02           sub    bp, 2
0685: 8be5             mov    sp, bp
0687: 1f               pop    ds
0688: 5d               pop    bp
0689: 4d               dec    bp
068a: cb               retf   

sub_068b:
068b: 8b0e5c09         mov    cx, word ptr [0x95c]
068f: e307             jcxz   0x698
0691: bb0200           mov    bx, 2
0694: ff1e5a09         lcall  [0x95a]
0698: 1e               push   ds
0699: c5168808         lds    dx, ptr [0x888]
069d: b80025           mov    ax, 0x2500
06a0: 2ef7062e040100   test   word ptr cs:[0x42e], 1
06a7: 7407             je     0x6b0
06a9: 9a78060000       lcall  0, 0x678    ; <DOS3Call>
06ae: eb02             jmp    0x6b2
06b0: cd21             int    0x21
06b2: 1f               pop    ds
06b3: c3               ret    

sub_06b4:
06b4: 3bf7             cmp    si, di
06b6: 730e             jae    0x6c6
06b8: 83ef04           sub    di, 4
06bb: 8b05             mov    ax, word ptr [di]
06bd: 0b4502           or     ax, word ptr [di + 2]
06c0: 74f2             je     0x6b4
06c2: ff1d             lcall  [di]
06c4: ebee             jmp    0x6b4
06c6: c3               ret    
06c7: 008cd890         add    byte ptr [si - 0x6f28], cl
06cb: 45               inc    bp
06cc: 55               push   bp
06cd: 8bec             mov    bp, sp
06cf: 1e               push   ds
06d0: 8ed8             mov    ds, ax
06d2: b8fc00           mov    ax, 0xfc    ; "Scmpoo16.hlp"
06d5: 50               push   ax
06d6: 0e               push   cs
06d7: e8fd02           call   0x9d7
06da: b8ff00           mov    ax, 0xff
06dd: 50               push   ax
06de: 0e               push   cs
06df: e8f502           call   0x9d7
06e2: 83ed02           sub    bp, 2
06e5: 8be5             mov    sp, bp
06e7: 1f               pop    ds
06e8: 5d               pop    bp
06e9: 4d               dec    bp
06ea: cb               retf   
06eb: 00b80200         add    byte ptr [bx + si + 2], bh
06ef: e96b02           jmp    0x95d
06f2: 5b               pop    bx
06f3: 40               inc    ax
06f4: 24fe             and    al, 0xfe
06f6: 2bc4             sub    ax, sp
06f8: 7345             jae    0x73f
06fa: f7d8             neg    ax
06fc: 3639060a00       cmp    word ptr ss:[0xa], ax
0701: 773c             ja     0x73f
0703: 3639060c00       cmp    word ptr ss:[0xc], ax
0708: 7604             jbe    0x70e
070a: 36a30c00         mov    word ptr ss:[0xc], ax
070e: 8be0             mov    sp, ax
0710: ffe3             jmp    bx

sub_0712:
0712: 5b               pop    bx
0713: 5a               pop    dx
0714: 40               inc    ax
0715: 24fe             and    al, 0xfe
0717: 2bc4             sub    ax, sp
0719: 7319             jae    0x734
071b: f7d8             neg    ax
071d: 3639060a00       cmp    word ptr ss:[0xa], ax
0722: 7710             ja     0x734
0724: 3639060c00       cmp    word ptr ss:[0xc], ax
0729: 7604             jbe    0x72f
072b: 36a30c00         mov    word ptr ss:[0xc], ax
072f: 8be0             mov    sp, ax
0731: 52               push   dx
0732: 53               push   bx
0733: cb               retf   
0734: 8b16e808         mov    dx, word ptr [0x8e8]
0738: 42               inc    dx
0739: 7404             je     0x73f
073b: ff2ee808         ljmp   [0x8e8]
073f: b80000           mov    ax, 0
0742: e91802           jmp    0x95d
0745: 008f06ec         add    byte ptr [bx - 0x13fa], cl
0749: 088f06ee         or     byte ptr [bx - 0x11fa], cl
074d: 08b80401         or     byte ptr [bx + si + 0x104], bh
0751: b90800           mov    cx, 8
0754: e8bd02           call   0xa14
0757: 8916de08         mov    word ptr [0x8de], dx
075b: a3dc08           mov    word ptr [0x8dc], ax
075e: 52               push   dx
075f: 50               push   ax
0760: ff366a08         push   word ptr [0x86a]
0764: 52               push   dx
0765: 50               push   ax
0766: b80401           mov    ax, 0x104
0769: 50               push   ax
076a: 9affff0000       lcall  0, 0xffff    ; <GetModuleFileName>
076f: 5b               pop    bx
0770: 07               pop    es
0771: 03d8             add    bx, ax
0773: 26c60700         mov    byte ptr es:[bx], 0
0777: ba0100           mov    dx, 1
077a: bf0100           mov    di, 1
077d: be8100           mov    si, 0x81
0780: 8e1e9c08         mov    ds, word ptr [0x89c]
0784: ac               lodsb  al, byte ptr [si]
0785: 3c20             cmp    al, 0x20
0787: 74fb             je     0x784
0789: 3c09             cmp    al, 9
078b: 74f7             je     0x784
078d: 3c0d             cmp    al, 0xd
078f: 746f             je     0x800
0791: 0ac0             or     al, al
0793: 746b             je     0x800
0795: 47               inc    di
0796: 4e               dec    si
0797: ac               lodsb  al, byte ptr [si]
0798: 3c20             cmp    al, 0x20
079a: 74e8             je     0x784
079c: 3c09             cmp    al, 9
079e: 74e4             je     0x784
07a0: 3c0d             cmp    al, 0xd
07a2: 745c             je     0x800
07a4: 0ac0             or     al, al
07a6: 7458             je     0x800
07a8: 3c22             cmp    al, 0x22
07aa: 7424             je     0x7d0
07ac: 3c5c             cmp    al, 0x5c
07ae: 7403             je     0x7b3
07b0: 42               inc    dx
07b1: ebe4             jmp    0x797
07b3: 33c9             xor    cx, cx
07b5: 41               inc    cx
07b6: ac               lodsb  al, byte ptr [si]
07b7: 3c5c             cmp    al, 0x5c
07b9: 74fa             je     0x7b5
07bb: 3c22             cmp    al, 0x22
07bd: 7404             je     0x7c3
07bf: 03d1             add    dx, cx
07c1: ebd3             jmp    0x796
07c3: 8bc1             mov    ax, cx
07c5: d1e9             shr    cx, 1
07c7: 13d1             adc    dx, cx
07c9: a801             test   al, 1
07cb: 75ca             jne    0x797
07cd: eb01             jmp    0x7d0
07cf: 4e               dec    si
07d0: ac               lodsb  al, byte ptr [si]
07d1: 3c0d             cmp    al, 0xd
07d3: 742b             je     0x800
07d5: 0ac0             or     al, al
07d7: 7427             je     0x800
07d9: 3c22             cmp    al, 0x22
07db: 74ba             je     0x797
07dd: 3c5c             cmp    al, 0x5c
07df: 7403             je     0x7e4
07e1: 42               inc    dx
07e2: ebec             jmp    0x7d0
07e4: 33c9             xor    cx, cx
07e6: 41               inc    cx
07e7: ac               lodsb  al, byte ptr [si]
07e8: 3c5c             cmp    al, 0x5c
07ea: 74fa             je     0x7e6
07ec: 3c22             cmp    al, 0x22
07ee: 7404             je     0x7f4
07f0: 03d1             add    dx, cx
07f2: ebdb             jmp    0x7cf
07f4: 8bc1             mov    ax, cx
07f6: d1e9             shr    cx, 1
07f8: 13d1             adc    dx, cx
07fa: a801             test   al, 1
07fc: 75d2             jne    0x7d0
07fe: eb97             jmp    0x797
0800: 16               push   ss
0801: 1f               pop    ds
0802: 893ed608         mov    word ptr [0x8d6], di
0806: 03d7             add    dx, di
0808: 47               inc    di
0809: d1e7             shl    di, 1
080b: 03d7             add    dx, di
080d: 42               inc    dx
080e: 80e2fe           and    dl, 0xfe
0811: 2be2             sub    sp, dx
0813: 8bc4             mov    ax, sp
0815: a3d808           mov    word ptr [0x8d8], ax
0818: 8bd8             mov    bx, ax
081a: 03fb             add    di, bx
081c: 16               push   ss
081d: 07               pop    es
081e: c536dc08         lds    si, ptr [0x8dc]
0822: 368937           mov    word ptr ss:[bx], si
0825: 43               inc    bx
0826: 43               inc    bx
0827: 368e1e9c08       mov    ds, word ptr ss:[0x89c]
082c: be8100           mov    si, 0x81
082f: eb03             jmp    0x834
0831: 33c0             xor    ax, ax
0833: aa               stosb  byte ptr es:[di], al
0834: ac               lodsb  al, byte ptr [si]
0835: 3c20             cmp    al, 0x20
0837: 74fb             je     0x834
0839: 3c09             cmp    al, 9
083b: 74f7             je     0x834
083d: 3c0d             cmp    al, 0xd
083f: 747c             je     0x8bd
0841: 0ac0             or     al, al
0843: 7478             je     0x8bd
0845: 36893f           mov    word ptr ss:[bx], di
0848: 43               inc    bx
0849: 43               inc    bx
084a: 4e               dec    si
084b: ac               lodsb  al, byte ptr [si]
084c: 3c20             cmp    al, 0x20
084e: 74e1             je     0x831
0850: 3c09             cmp    al, 9
0852: 74dd             je     0x831
0854: 3c0d             cmp    al, 0xd
0856: 7462             je     0x8ba
0858: 0ac0             or     al, al
085a: 745e             je     0x8ba
085c: 3c22             cmp    al, 0x22
085e: 7427             je     0x887
0860: 3c5c             cmp    al, 0x5c
0862: 7403             je     0x867
0864: aa               stosb  byte ptr es:[di], al
0865: ebe4             jmp    0x84b
0867: 33c9             xor    cx, cx
0869: 41               inc    cx
086a: ac               lodsb  al, byte ptr [si]
086b: 3c5c             cmp    al, 0x5c
086d: 74fa             je     0x869
086f: 3c22             cmp    al, 0x22
0871: 7406             je     0x879
0873: b05c             mov    al, 0x5c
0875: f3aa             rep stosb byte ptr es:[di], al
0877: ebd1             jmp    0x84a
0879: b05c             mov    al, 0x5c
087b: d1e9             shr    cx, 1
087d: f3aa             rep stosb byte ptr es:[di], al
087f: 7306             jae    0x887
0881: b022             mov    al, 0x22
0883: aa               stosb  byte ptr es:[di], al
0884: ebc5             jmp    0x84b
0886: 4e               dec    si
0887: ac               lodsb  al, byte ptr [si]
0888: 3c0d             cmp    al, 0xd
088a: 742e             je     0x8ba
088c: 0ac0             or     al, al
088e: 742a             je     0x8ba
0890: 3c22             cmp    al, 0x22
0892: 74b7             je     0x84b
0894: 3c5c             cmp    al, 0x5c
0896: 7403             je     0x89b
0898: aa               stosb  byte ptr es:[di], al
0899: ebec             jmp    0x887
089b: 33c9             xor    cx, cx
089d: 41               inc    cx
089e: ac               lodsb  al, byte ptr [si]
089f: 3c5c             cmp    al, 0x5c
08a1: 74fa             je     0x89d
08a3: 3c22             cmp    al, 0x22
08a5: 7406             je     0x8ad
08a7: b05c             mov    al, 0x5c
08a9: f3aa             rep stosb byte ptr es:[di], al
08ab: ebd9             jmp    0x886
08ad: b05c             mov    al, 0x5c
08af: d1e9             shr    cx, 1
08b1: f3aa             rep stosb byte ptr es:[di], al
08b3: 7396             jae    0x84b
08b5: b022             mov    al, 0x22
08b7: aa               stosb  byte ptr es:[di], al
08b8: ebcd             jmp    0x887
08ba: 33c0             xor    ax, ax
08bc: aa               stosb  byte ptr es:[di], al
08bd: 16               push   ss
08be: 1f               pop    ds
08bf: c7070000         mov    word ptr [bx], 0
08c3: ff2eec08         ljmp   [0x8ec]
08c7: 008cd890         add    byte ptr [si - 0x6f28], cl
08cb: 45               inc    bp
08cc: 55               push   bp
08cd: 8bec             mov    bp, sp
08cf: 1e               push   ds
08d0: 8ed8             mov    ds, ax
08d2: 1e               push   ds
08d3: 9affff0000       lcall  0, 0xffff    ; <GetDOSEnvironment>
08d8: 0bc0             or     ax, ax
08da: 7403             je     0x8df
08dc: ba0000           mov    dx, 0
08df: 8bda             mov    bx, dx
08e1: 8ec2             mov    es, dx
08e3: 33c0             xor    ax, ax
08e5: 33f6             xor    si, si
08e7: 33ff             xor    di, di
08e9: b9ffff           mov    cx, 0xffff
08ec: 0bdb             or     bx, bx
08ee: 740e             je     0x8fe
08f0: 26803e000000     cmp    byte ptr es:[0], 0
08f6: 7406             je     0x8fe
08f8: f2ae             repne scasb al, byte ptr es:[di]
08fa: 46               inc    si
08fb: ae               scasb  al, byte ptr es:[di]
08fc: 75fa             jne    0x8f8
08fe: 8bc7             mov    ax, di
0900: 40               inc    ax
0901: 24fe             and    al, 0xfe
0903: 46               inc    si
0904: 8bfe             mov    di, si
0906: d1e6             shl    si, 1
0908: b90900           mov    cx, 9
090b: e80601           call   0xa14
090e: 50               push   ax
090f: 8bc6             mov    ax, si
0911: e80001           call   0xa14
0914: a3da08           mov    word ptr [0x8da], ax
0917: 06               push   es
0918: 1e               push   ds
0919: 07               pop    es
091a: 1f               pop    ds
091b: 8bcf             mov    cx, di
091d: 8bd8             mov    bx, ax
091f: 33f6             xor    si, si
0921: 5f               pop    di
0922: 49               dec    cx
0923: e326             jcxz   0x94b
0925: 8b04             mov    ax, word ptr [si]
0927: 363b067a08       cmp    ax, word ptr ss:[0x87a]
092c: 7510             jne    0x93e
092e: 51               push   cx
092f: 56               push   si
0930: 57               push   di
0931: bf7a08           mov    di, 0x87a    ; "_C_FILE_INFO="
0934: b90600           mov    cx, 6
0937: f3a7             repe cmpsw word ptr [si], word ptr es:[di]
0939: 5f               pop    di
093a: 5e               pop    si
093b: 59               pop    cx
093c: 7405             je     0x943
093e: 26893f           mov    word ptr es:[bx], di
0941: 43               inc    bx
0942: 43               inc    bx
0943: ac               lodsb  al, byte ptr [si]
0944: aa               stosb  byte ptr es:[di], al
0945: 0ac0             or     al, al
0947: 75fa             jne    0x943
0949: e2da             loop   0x925
094b: 26890f           mov    word ptr es:[bx], cx
094e: 1f               pop    ds
094f: 83ed02           sub    bp, 2
0952: 8be5             mov    sp, bp
0954: 1f               pop    ds
0955: 5d               pop    bp
0956: 4d               dec    bp
0957: cb               retf   
0958: 16               push   ss
0959: 1f               pop    ds
095a: b80300           mov    ax, 3
095d: 50               push   ax
095e: 50               push   ax
095f: 0e               push   cs
0960: e865fd           call   0x6c8
0963: 0e               push   cs
0964: e87000           call   0x9d7
0967: 0e               push   cs
0968: e83500           call   0x9a0
096b: 33db             xor    bx, bx
096d: 0bc0             or     ax, ax
096f: 741d             je     0x98e
0971: 8bf8             mov    di, ax
0973: b80900           mov    ax, 9
0976: 803d4d           cmp    byte ptr [di], 0x4d
0979: 7503             jne    0x97e
097b: b80f00           mov    ax, 0xf
097e: 03f8             add    di, ax
0980: 57               push   di
0981: 1e               push   ds
0982: 07               pop    es
0983: b00d             mov    al, 0xd
0985: b92200           mov    cx, 0x22
0988: f2ae             repne scasb al, byte ptr es:[di]
098a: 885dff           mov    byte ptr [di - 1], bl
098d: 58               pop    ax
098e: 53               push   bx
098f: 1e               push   ds
0990: 50               push   ax
0991: 9affff0000       lcall  0, 0xffff    ; <FatalAppExit>
0996: b8ff00           mov    ax, 0xff
0999: 50               push   ax
099a: 9affff0000       lcall  0, 0xffff    ; <FatalExit>
099f: 008cd890         add    byte ptr [si - 0x6f28], cl
09a3: 45               inc    bp
09a4: 55               push   bp
09a5: 8bec             mov    bp, sp
09a7: 1e               push   ds
09a8: 8ed8             mov    ds, ax
09aa: 56               push   si
09ab: 57               push   di
09ac: 1e               push   ds
09ad: 07               pop    es
09ae: 8b5606           mov    dx, word ptr [bp + 6]
09b1: be6e09           mov    si, 0x96e
09b4: ad               lodsw  ax, word ptr [si]
09b5: 3bc2             cmp    ax, dx
09b7: 7410             je     0x9c9
09b9: 40               inc    ax
09ba: 96               xchg   si, ax
09bb: 740c             je     0x9c9
09bd: 97               xchg   di, ax
09be: 33c0             xor    ax, ax
09c0: b9ffff           mov    cx, 0xffff
09c3: f2ae             repne scasb al, byte ptr es:[di]
09c5: 8bf7             mov    si, di
09c7: ebeb             jmp    0x9b4
09c9: 96               xchg   si, ax
09ca: 5f               pop    di
09cb: 5e               pop    si
09cc: 83ed02           sub    bp, 2
09cf: 8be5             mov    sp, bp
09d1: 1f               pop    ds
09d2: 5d               pop    bp
09d3: 4d               dec    bp
09d4: ca0200           retf   2

sub_09d7:
09d7: 8cd8             mov    ax, ds
09d9: 90               nop    
09da: 45               inc    bp
09db: 55               push   bp
09dc: 8bec             mov    bp, sp
09de: 1e               push   ds
09df: 8ed8             mov    ds, ax
09e1: 57               push   di
09e2: 833e520900       cmp    word ptr [0x952], 0
09e7: 741f             je     0xa08
09e9: ff7606           push   word ptr [bp + 6]
09ec: 0e               push   cs
09ed: e8b0ff           call   0x9a0
09f0: 0bc0             or     ax, ax
09f2: 7414             je     0xa08
09f4: 92               xchg   dx, ax
09f5: 8bfa             mov    di, dx
09f7: 33c0             xor    ax, ax
09f9: b9ffff           mov    cx, 0xffff
09fc: f2ae             repne scasb al, byte ptr es:[di]
09fe: f7d1             not    cx
0a00: 49               dec    cx
0a01: 8b1ea808         mov    bx, word ptr [0x8a8]
0a05: e8530a           call   0x145b
0a08: 5f               pop    di
0a09: 83ed02           sub    bp, 2
0a0c: 8be5             mov    sp, bp
0a0e: 1f               pop    ds
0a0f: 5d               pop    bp
0a10: 4d               dec    bp
0a11: ca0200           retf   2

sub_0a14:
0a14: 55               push   bp
0a15: 8bec             mov    bp, sp
0a17: 53               push   bx
0a18: 06               push   es
0a19: 51               push   cx
0a1a: b90010           mov    cx, 0x1000
0a1d: 870ef008         xchg   word ptr [0x8f0], cx
0a21: 51               push   cx
0a22: 50               push   ax
0a23: 9a62140305       fcall  sub_1462
0a28: 5b               pop    bx
0a29: 8f06f008         pop    word ptr [0x8f0]
0a2d: 59               pop    cx
0a2e: 8cda             mov    dx, ds
0a30: 0bc0             or     ax, ax
0a32: 7404             je     0xa38
0a34: 07               pop    es
0a35: 5b               pop    bx
0a36: eb05             jmp    0xa3d
0a38: 8bc1             mov    ax, cx
0a3a: e920ff           jmp    0x95d
0a3d: 8be5             mov    sp, bp
0a3f: 5d               pop    bp
0a40: c3               ret    
0a41: 005157           add    byte ptr [bx + di + 0x57], dl
0a44: f6470201         test   byte ptr [bx + 2], 1
0a48: 7463             je     0xaad
0a4a: e8e700           call   0xb34
0a4d: 8bfe             mov    di, si
0a4f: 8b04             mov    ax, word ptr [si]
0a51: a801             test   al, 1
0a53: 7403             je     0xa58
0a55: 2bc8             sub    cx, ax
0a57: 49               dec    cx
0a58: 41               inc    cx
0a59: 41               inc    cx
0a5a: 8b7704           mov    si, word ptr [bx + 4]
0a5d: 0bf6             or     si, si
0a5f: 744c             je     0xaad
0a61: 03ce             add    cx, si
0a63: 7309             jae    0xa6e
0a65: 33c0             xor    ax, ax
0a67: baf0ff           mov    dx, 0xfff0
0a6a: e330             jcxz   0xa9c
0a6c: eb3f             jmp    0xaad
0a6e: 16               push   ss
0a6f: 07               pop    es
0a70: 26a1f008         mov    ax, word ptr es:[0x8f0]
0a74: 3d0010           cmp    ax, 0x1000
0a77: 7416             je     0xa8f
0a79: ba0080           mov    dx, 0x8000
0a7c: 3bd0             cmp    dx, ax
0a7e: 7206             jb     0xa86
0a80: d1ea             shr    dx, 1
0a82: 75f8             jne    0xa7c
0a84: eb22             jmp    0xaa8
0a86: 83fa08           cmp    dx, 8
0a89: 721d             jb     0xaa8
0a8b: d1e2             shl    dx, 1
0a8d: 8bc2             mov    ax, dx
0a8f: 48               dec    ax
0a90: 8bd0             mov    dx, ax
0a92: 03c1             add    ax, cx
0a94: 7302             jae    0xa98
0a96: 33c0             xor    ax, ax
0a98: f7d2             not    dx
0a9a: 23c2             and    ax, dx
0a9c: 52               push   dx
0a9d: e82e00           call   0xace
0aa0: 5a               pop    dx
0aa1: 730d             jae    0xab0
0aa3: 83faf0           cmp    dx, -0x10
0aa6: 7405             je     0xaad
0aa8: b81000           mov    ax, 0x10
0aab: ebe2             jmp    0xa8f
0aad: f9               stc    
0aae: eb1b             jmp    0xacb
0ab0: 8bd0             mov    dx, ax
0ab2: 2b5704           sub    dx, word ptr [bx + 4]
0ab5: 894704           mov    word ptr [bx + 4], ax
0ab8: 897f0a           mov    word ptr [bx + 0xa], di
0abb: 8b770c           mov    si, word ptr [bx + 0xc]
0abe: 4a               dec    dx
0abf: 8914             mov    word ptr [si], dx
0ac1: 42               inc    dx
0ac2: 03f2             add    si, dx
0ac4: c704feff         mov    word ptr [si], 0xfffe
0ac8: 89770c           mov    word ptr [bx + 0xc], si
0acb: 5f               pop    di
0acc: 59               pop    cx
0acd: c3               ret    

sub_0ace:
0ace: 8bd0             mov    dx, ax
0ad0: f6470204         test   byte ptr [bx + 2], 4
0ad4: 7402             je     0xad8
0ad6: eb51             jmp    0xb29
0ad8: 52               push   dx
0ad9: 51               push   cx
0ada: 53               push   bx
0adb: 8b7706           mov    si, word ptr [bx + 6]
0ade: 2e8b1e2e04       mov    bx, word ptr cs:[0x42e]
0ae3: 33c9             xor    cx, cx
0ae5: 0bd2             or     dx, dx
0ae7: 7507             jne    0xaf0
0ae9: f7c31000         test   bx, 0x10
0aed: 7540             jne    0xb2f
0aef: 41               inc    cx
0af0: b80200           mov    ax, 2
0af3: f7c30100         test   bx, 1
0af7: 7503             jne    0xafc
0af9: b82000           mov    ax, 0x20
0afc: 56               push   si
0afd: 51               push   cx
0afe: 52               push   dx
0aff: 50               push   ax
0b00: 9affff0000       lcall  0, 0xffff    ; <GlobalReAlloc>
0b05: 0bc0             or     ax, ax
0b07: 7426             je     0xb2f
0b09: 3bc6             cmp    ax, si
0b0b: 751c             jne    0xb29
0b0d: 56               push   si
0b0e: 9affff0000       lcall  0, 0xffff    ; <GlobalSize>
0b13: 0bd0             or     dx, ax
0b15: 7412             je     0xb29
0b17: 5b               pop    bx
0b18: 59               pop    cx
0b19: 5a               pop    dx
0b1a: 8bc2             mov    ax, dx
0b1c: f6470204         test   byte ptr [bx + 2], 4
0b20: 7404             je     0xb26
0b22: 4a               dec    dx
0b23: 8957fe           mov    word ptr [bx - 2], dx
0b26: f8               clc    
0b27: eb0a             jmp    0xb33
0b29: b81200           mov    ax, 0x12
0b2c: e92efe           jmp    0x95d
0b2f: 5b               pop    bx
0b30: 59               pop    cx
0b31: 5a               pop    dx
0b32: f9               stc    
0b33: c3               ret    

sub_0b34:
0b34: 57               push   di
0b35: 8b770a           mov    si, word ptr [bx + 0xa]
0b38: 3b770c           cmp    si, word ptr [bx + 0xc]
0b3b: 7503             jne    0xb40
0b3d: 8b7708           mov    si, word ptr [bx + 8]
0b40: ad               lodsw  ax, word ptr [si]
0b41: 83f8fe           cmp    ax, -2
0b44: 7408             je     0xb4e
0b46: 8bfe             mov    di, si
0b48: 24fe             and    al, 0xfe
0b4a: 03f0             add    si, ax
0b4c: ebf2             jmp    0xb40
0b4e: 4f               dec    di
0b4f: 4f               dec    di
0b50: 8bf7             mov    si, di
0b52: 5f               pop    di
0b53: c3               ret    

sub_0b54:
0b54: 55               push   bp
0b55: 8bec             mov    bp, sp
0b57: 8bd7             mov    dx, di
0b59: 8cd8             mov    ax, ds
0b5b: 8ec0             mov    es, ax
0b5d: 8b7e06           mov    di, word ptr [bp + 6]
0b60: 33c0             xor    ax, ax
0b62: b9ffff           mov    cx, 0xffff
0b65: f2ae             repne scasb al, byte ptr es:[di]
0b67: f7d1             not    cx
0b69: 49               dec    cx
0b6a: 91               xchg   cx, ax
0b6b: 8bfa             mov    di, dx
0b6d: 5d               pop    bp
0b6e: cb               retf   
0b6f: 00558b           add    byte ptr [di - 0x75], dl
0b72: ec               in     al, dx
0b73: 57               push   di
0b74: 56               push   si
0b75: 1e               push   ds
0b76: 07               pop    es
0b77: 8b7e06           mov    di, word ptr [bp + 6]
0b7a: 8b7608           mov    si, word ptr [bp + 8]
0b7d: 8bdf             mov    bx, di
0b7f: 8b4e0a           mov    cx, word ptr [bp + 0xa]
0b82: e30c             jcxz   0xb90
0b84: ac               lodsb  al, byte ptr [si]
0b85: 0ac0             or     al, al
0b87: 7403             je     0xb8c
0b89: aa               stosb  byte ptr es:[di], al
0b8a: e2f8             loop   0xb84
0b8c: 32c0             xor    al, al
0b8e: f3aa             rep stosb byte ptr es:[di], al
0b90: 8bc3             mov    ax, bx
0b92: 5e               pop    si
0b93: 5f               pop    di
0b94: 8be5             mov    sp, bp
0b96: 5d               pop    bp
0b97: cb               retf   

sub_0b98:
0b98: 55               push   bp
0b99: 8bec             mov    bp, sp
0b9b: 57               push   di
0b9c: 56               push   si
0b9d: 1e               push   ds
0b9e: 07               pop    es
0b9f: 8b4e0a           mov    cx, word ptr [bp + 0xa]
0ba2: e326             jcxz   0xbca
0ba4: 8bd9             mov    bx, cx
0ba6: 8b7e06           mov    di, word ptr [bp + 6]
0ba9: 8bf7             mov    si, di
0bab: 33c0             xor    ax, ax
0bad: f2ae             repne scasb al, byte ptr es:[di]
0baf: f7d9             neg    cx
0bb1: 03cb             add    cx, bx
0bb3: 8bfe             mov    di, si
0bb5: 8b7608           mov    si, word ptr [bp + 8]
0bb8: f3a6             repe cmpsb byte ptr [si], byte ptr es:[di]
0bba: 8a44ff           mov    al, byte ptr [si - 1]
0bbd: 33c9             xor    cx, cx
0bbf: 3a45ff           cmp    al, byte ptr [di - 1]
0bc2: 7704             ja     0xbc8
0bc4: 7404             je     0xbca
0bc6: 49               dec    cx
0bc7: 49               dec    cx
0bc8: f7d1             not    cx
0bca: 8bc1             mov    ax, cx
0bcc: 5e               pop    si
0bcd: 5f               pop    di
0bce: 8be5             mov    sp, bp
0bd0: 5d               pop    bp
0bd1: cb               retf   

sub_0bd2:
0bd2: e90100           jmp    0xbd6
0bd5: 00558b           add    byte ptr [di - 0x75], dl
0bd8: ec               in     al, dx
0bd9: 57               push   di
0bda: 56               push   si
0bdb: 8b7606           mov    si, word ptr [bp + 6]
0bde: 33c0             xor    ax, ax
0be0: 99               cdq    
0be1: 33db             xor    bx, bx
0be3: ac               lodsb  al, byte ptr [si]
0be4: 3c20             cmp    al, 0x20
0be6: 74fb             je     0xbe3
0be8: 3c09             cmp    al, 9
0bea: 74f7             je     0xbe3
0bec: 50               push   ax
0bed: 3c2d             cmp    al, 0x2d
0bef: 7404             je     0xbf5
0bf1: 3c2b             cmp    al, 0x2b
0bf3: 7501             jne    0xbf6
0bf5: ac               lodsb  al, byte ptr [si]
0bf6: 3c39             cmp    al, 0x39
0bf8: 771f             ja     0xc19
0bfa: 2c30             sub    al, 0x30
0bfc: 721b             jb     0xc19
0bfe: d1e3             shl    bx, 1
0c00: d1d2             rcl    dx, 1
0c02: 8bcb             mov    cx, bx
0c04: 8bfa             mov    di, dx
0c06: d1e3             shl    bx, 1
0c08: d1d2             rcl    dx, 1
0c0a: d1e3             shl    bx, 1
0c0c: d1d2             rcl    dx, 1
0c0e: 03d9             add    bx, cx
0c10: 13d7             adc    dx, di
0c12: 03d8             add    bx, ax
0c14: 83d200           adc    dx, 0
0c17: ebdc             jmp    0xbf5
0c19: 58               pop    ax
0c1a: 3c2d             cmp    al, 0x2d
0c1c: 93               xchg   bx, ax
0c1d: 7507             jne    0xc26
0c1f: f7d8             neg    ax
0c21: 83d200           adc    dx, 0
0c24: f7da             neg    dx
0c26: 5e               pop    si
0c27: 5f               pop    di
0c28: 5d               pop    bp
0c29: cb               retf   

sub_0c2a:
0c2a: 45               inc    bp
0c2b: 55               push   bp
0c2c: 8bec             mov    bp, sp
0c2e: 1e               push   ds
0c2f: 57               push   di
0c30: 56               push   si
0c31: 8b36da08         mov    si, word ptr [0x8da]
0c35: 0bf6             or     si, si
0c37: 744b             je     0xc84
0c39: 837e0600         cmp    word ptr [bp + 6], 0
0c3d: 7445             je     0xc84
0c3f: ff7606           push   word ptr [bp + 6]
0c42: 9a540b530c       fcall  sub_0b54
0c47: 83c402           add    sp, 2
0c4a: 8bf8             mov    di, ax
0c4c: eb31             jmp    0xc7f
0c4e: ff34             push   word ptr [si]
0c50: 9a540b6b0c       fcall  sub_0b54
0c55: 83c402           add    sp, 2
0c58: 3bc7             cmp    ax, di
0c5a: 7620             jbe    0xc7c
0c5c: 8b1c             mov    bx, word ptr [si]
0c5e: 80393d           cmp    byte ptr [bx + di], 0x3d
0c61: 7519             jne    0xc7c
0c63: 57               push   di
0c64: ff7606           push   word ptr [bp + 6]
0c67: 53               push   bx
0c68: 9a980b260a       fcall  sub_0b98
0c6d: 83c406           add    sp, 6
0c70: 0bc0             or     ax, ax
0c72: 7508             jne    0xc7c
0c74: 8b04             mov    ax, word ptr [si]
0c76: 03c7             add    ax, di
0c78: 40               inc    ax
0c79: eb0b             jmp    0xc86
0c7b: 90               nop    
0c7c: 83c602           add    si, 2
0c7f: 833c00           cmp    word ptr [si], 0
0c82: 75ca             jne    0xc4e
0c84: 33c0             xor    ax, ax
0c86: 5e               pop    si
0c87: 5f               pop    di
0c88: 8d66fe           lea    sp, [bp - 2]
0c8b: 1f               pop    ds
0c8c: 5d               pop    bp
0c8d: 4d               dec    bp
0c8e: cb               retf   
0c8f: 90               nop    

sub_0c90:
0c90: 45               inc    bp
0c91: 55               push   bp
0c92: 8bec             mov    bp, sp
0c94: 1e               push   ds
0c95: 83ec08           sub    sp, 8
0c98: 57               push   di
0c99: 56               push   si
0c9a: c746f80000       mov    word ptr [bp - 8], 0
0c9f: 8b5e06           mov    bx, word ptr [bp + 6]
0ca2: bf2609           mov    di, 0x926
0ca5: 8b07             mov    ax, word ptr [bx]
0ca7: 8b5702           mov    dx, word ptr [bx + 2]
0caa: 8946fa           mov    word ptr [bp - 6], ax
0cad: 8956fc           mov    word ptr [bp - 4], dx
0cb0: 0bd2             or     dx, dx
0cb2: 7d06             jge    0xcba
0cb4: 33c0             xor    ax, ax
0cb6: e96401           jmp    0xe1d
0cb9: 90               nop    
0cba: b880e0           mov    ax, 0xe080
0cbd: ba79f8           mov    dx, 0xf879
0cc0: 52               push   dx
0cc1: 50               push   ax
0cc2: b8801f           mov    ax, 0x1f80
0cc5: ba8607           mov    dx, 0x786
0cc8: 52               push   dx
0cc9: 50               push   ax
0cca: ff76fc           push   word ptr [bp - 4]
0ccd: ff76fa           push   word ptr [bp - 6]
0cd0: 9aea12dd0c       fcall  sub_12ea
0cd5: 8bf0             mov    si, ax
0cd7: 99               cdq    
0cd8: 52               push   dx
0cd9: 50               push   ax
0cda: 9a8413630d       fcall  sub_1384
0cdf: 0146fa           add    word ptr [bp - 6], ax
0ce2: 1156fc           adc    word ptr [bp - 4], dx
0ce5: 8bc6             mov    ax, si
0ce7: 03c0             add    ax, ax
0ce9: 03c0             add    ax, ax
0ceb: 054600           add    ax, 0x46
0cee: 8bf0             mov    si, ax
0cf0: 817efce101       cmp    word ptr [bp - 4], 0x1e1
0cf5: 7c58             jl     0xd4f
0cf7: 7f07             jg     0xd00
0cf9: 817efa8033       cmp    word ptr [bp - 6], 0x3380
0cfe: 724f             jb     0xd4f
0d00: 46               inc    si
0d01: 816efa8033       sub    word ptr [bp - 6], 0x3380
0d06: 815efce101       sbb    word ptr [bp - 4], 0x1e1
0d0b: 817efce101       cmp    word ptr [bp - 4], 0x1e1
0d10: 7c3d             jl     0xd4f
0d12: 7f07             jg     0xd1b
0d14: 817efa8033       cmp    word ptr [bp - 6], 0x3380
0d19: 7234             jb     0xd4f
0d1b: 46               inc    si
0d1c: 8b46fa           mov    ax, word ptr [bp - 6]
0d1f: 8b56fc           mov    dx, word ptr [bp - 4]
0d22: 2d8033           sub    ax, 0x3380
0d25: 81dae101         sbb    dx, 0x1e1
0d29: 8946fa           mov    word ptr [bp - 6], ax
0d2c: 8956fc           mov    word ptr [bp - 4], dx
0d2f: 81fae201         cmp    dx, 0x1e2
0d33: 7c17             jl     0xd4c
0d35: 7f05             jg     0xd3c
0d37: 3d0085           cmp    ax, 0x8500
0d3a: 7210             jb     0xd4c
0d3c: 46               inc    si
0d3d: 2d0085           sub    ax, 0x8500
0d40: 81dae201         sbb    dx, 0x1e2
0d44: 8946fa           mov    word ptr [bp - 6], ax
0d47: 8956fc           mov    word ptr [bp - 4], dx
0d4a: eb03             jmp    0xd4f
0d4c: ff46f8           inc    word ptr [bp - 8]
0d4f: 89750a           mov    word ptr [di + 0xa], si
0d52: b88051           mov    ax, 0x5180
0d55: ba0100           mov    dx, 1
0d58: 52               push   dx
0d59: 50               push   ax
0d5a: ff76fc           push   word ptr [bp - 4]
0d5d: ff76fa           push   word ptr [bp - 6]
0d60: 9aea12760d       fcall  sub_12ea
0d65: 89450e           mov    word ptr [di + 0xe], ax
0d68: b980ae           mov    cx, 0xae80
0d6b: bafeff           mov    dx, 0xfffe
0d6e: 52               push   dx
0d6f: 51               push   cx
0d70: 99               cdq    
0d71: 52               push   dx
0d72: 50               push   ax
0d73: 9a8413c80d       fcall  sub_1384
0d78: 0146fa           add    word ptr [bp - 6], ax
0d7b: 1156fc           adc    word ptr [bp - 4], dx
0d7e: 837ef800         cmp    word ptr [bp - 8], 0
0d82: 7408             je     0xd8c
0d84: c746f6f208       mov    word ptr [bp - 0xa], 0x8f2
0d89: eb06             jmp    0xd91
0d8b: 90               nop    
0d8c: c746f60c09       mov    word ptr [bp - 0xa], 0x90c
0d91: be0100           mov    si, 1
0d94: eb01             jmp    0xd97
0d96: 46               inc    si
0d97: 8b450e           mov    ax, word ptr [di + 0xe]
0d9a: 8bde             mov    bx, si
0d9c: 03de             add    bx, si
0d9e: 035ef6           add    bx, word ptr [bp - 0xa]
0da1: 3907             cmp    word ptr [bx], ax
0da3: 7cf1             jl     0xd96
0da5: 4e               dec    si
0da6: 897508           mov    word ptr [di + 8], si
0da9: 8bde             mov    bx, si
0dab: 03de             add    bx, si
0dad: 035ef6           add    bx, word ptr [bp - 0xa]
0db0: 2b07             sub    ax, word ptr [bx]
0db2: 894506           mov    word ptr [di + 6], ax
0db5: b88051           mov    ax, 0x5180
0db8: ba0100           mov    dx, 1
0dbb: 52               push   dx
0dbc: 50               push   ax
0dbd: 8b5e06           mov    bx, word ptr [bp + 6]
0dc0: ff7702           push   word ptr [bx + 2]
0dc3: ff37             push   word ptr [bx]
0dc5: 9aea12e50d       fcall  sub_12ea
0dca: 050400           add    ax, 4
0dcd: b90700           mov    cx, 7
0dd0: 99               cdq    
0dd1: f7f9             idiv   cx
0dd3: 89550c           mov    word ptr [di + 0xc], dx
0dd6: b8100e           mov    ax, 0xe10
0dd9: 99               cdq    
0dda: 52               push   dx
0ddb: 50               push   ax
0ddc: ff76fc           push   word ptr [bp - 4]
0ddf: ff76fa           push   word ptr [bp - 6]
0de2: 9aea12070e       fcall  sub_12ea
0de7: 894504           mov    word ptr [di + 4], ax
0dea: b93c00           mov    cx, 0x3c
0ded: 33d2             xor    dx, dx
0def: 52               push   dx
0df0: 51               push   cx
0df1: b9f0f1           mov    cx, 0xf1f0
0df4: f7e9             imul   cx
0df6: 0146fa           add    word ptr [bp - 6], ax
0df9: 1156fc           adc    word ptr [bp - 4], dx
0dfc: 8b46fa           mov    ax, word ptr [bp - 6]
0dff: 8b56fc           mov    dx, word ptr [bp - 4]
0e02: 52               push   dx
0e03: 50               push   ax
0e04: 9aea12450c       fcall  sub_12ea
0e09: 894502           mov    word ptr [di + 2], ax
0e0c: b9c4ff           mov    cx, 0xffc4
0e0f: f7e9             imul   cx
0e11: 0346fa           add    ax, word ptr [bp - 6]
0e14: 8905             mov    word ptr [di], ax
0e16: c745100000       mov    word ptr [di + 0x10], 0
0e1b: 8bc7             mov    ax, di
0e1d: 5e               pop    si
0e1e: 5f               pop    di
0e1f: 8d66fe           lea    sp, [bp - 2]
0e22: 1f               pop    ds
0e23: 5d               pop    bp
0e24: 4d               dec    bp
0e25: cb               retf   

sub_0e26:
0e26: 45               inc    bp
0e27: 55               push   bp
0e28: 8bec             mov    bp, sp
0e2a: 1e               push   ds
0e2b: 83ec04           sub    sp, 4
0e2e: 56               push   si
0e2f: 8b5e06           mov    bx, word ptr [bp + 6]
0e32: 837f0200         cmp    word ptr [bx + 2], 0
0e36: 7d06             jge    0xe3e
0e38: 33c0             xor    ax, ax
0e3a: e9de00           jmp    0xf1b
0e3d: 90               nop    
0e3e: 9ab60f640e       fcall  sub_0fb6
0e43: 8b5e06           mov    bx, word ptr [bp + 6]
0e46: 8b07             mov    ax, word ptr [bx]
0e48: 8b5702           mov    dx, word ptr [bx + 2]
0e4b: 2b063c09         sub    ax, word ptr [0x93c]
0e4f: 1b163e09         sbb    dx, word ptr [0x93e]
0e53: 8946fa           mov    word ptr [bp - 6], ax
0e56: 8956fc           mov    word ptr [bp - 4], dx
0e59: 0bd2             or     dx, dx
0e5b: 7c4d             jl     0xeaa
0e5d: 8d46fa           lea    ax, [bp - 6]
0e60: 50               push   ax
0e61: 9a900c790e       fcall  sub_0c90
0e66: 83c402           add    sp, 2
0e69: 8bf0             mov    si, ax
0e6b: 833e400900       cmp    word ptr [0x940], 0
0e70: 7503             jne    0xe75
0e72: e9a400           jmp    0xf19
0e75: 50               push   ax
0e76: 9ad6109b0e       fcall  sub_10d6
0e7b: 83c402           add    sp, 2
0e7e: 0bc0             or     ax, ax
0e80: 7503             jne    0xe85
0e82: e99400           jmp    0xf19
0e85: 8146fa100e       add    word ptr [bp - 6], 0xe10
0e8a: 8356fc00         adc    word ptr [bp - 4], 0
0e8e: 837efc00         cmp    word ptr [bp - 4], 0
0e92: 7ca4             jl     0xe38
0e94: 8d46fa           lea    ax, [bp - 6]
0e97: 50               push   ax
0e98: 9a900cc10e       fcall  sub_0c90
0e9d: 8bf0             mov    si, ax
0e9f: 83c402           add    sp, 2
0ea2: c744100100       mov    word ptr [si + 0x10], 1
0ea7: eb70             jmp    0xf19
0ea9: 90               nop    
0eaa: 058051           add    ax, 0x5180
0ead: 83d201           adc    dx, 1
0eb0: 0bd2             or     dx, dx
0eb2: 7c30             jl     0xee4
0eb4: 8946fa           mov    word ptr [bp - 6], ax
0eb7: 8956fc           mov    word ptr [bp - 4], dx
0eba: 8d46fa           lea    ax, [bp - 6]
0ebd: 50               push   ax
0ebe: 9a900c010f       fcall  sub_0c90
0ec3: 8bf0             mov    si, ax
0ec5: 83c402           add    sp, 2
0ec8: c7440a4500       mov    word ptr [si + 0xa], 0x45
0ecd: c744080b00       mov    word ptr [si + 8], 0xb
0ed2: c744061f00       mov    word ptr [si + 6], 0x1f
0ed7: c7440c0300       mov    word ptr [si + 0xc], 3
0edc: c7440e6c01       mov    word ptr [si + 0xe], 0x16c
0ee1: eb36             jmp    0xf19
0ee3: 90               nop    
0ee4: 8b46fa           mov    ax, word ptr [bp - 6]
0ee7: 8b56fc           mov    dx, word ptr [bp - 4]
0eea: 2d8051           sub    ax, 0x5180
0eed: 83da01           sbb    dx, 1
0ef0: 0bd2             or     dx, dx
0ef2: 7c25             jl     0xf19
0ef4: 8946fa           mov    word ptr [bp - 6], ax
0ef7: 8956fc           mov    word ptr [bp - 4], dx
0efa: 8d46fa           lea    ax, [bp - 6]
0efd: 50               push   ax
0efe: 9a900cd30c       fcall  sub_0c90
0f03: 8bf0             mov    si, ax
0f05: 83c402           add    sp, 2
0f08: ff4406           inc    word ptr [si + 6]
0f0b: 8b440c           mov    ax, word ptr [si + 0xc]
0f0e: 40               inc    ax
0f0f: 89440c           mov    word ptr [si + 0xc], ax
0f12: 8b440e           mov    ax, word ptr [si + 0xe]
0f15: 40               inc    ax
0f16: 89440e           mov    word ptr [si + 0xe], ax
0f19: 8bc6             mov    ax, si
0f1b: 5e               pop    si
0f1c: 8d66fe           lea    sp, [bp - 2]
0f1f: 1f               pop    ds
0f20: 5d               pop    bp
0f21: 4d               dec    bp
0f22: cb               retf   
0f23: 90               nop    

sub_0f24:
0f24: 8cd8             mov    ax, ds
0f26: 90               nop    
0f27: 45               inc    bp
0f28: 55               push   bp
0f29: 8bec             mov    bp, sp
0f2b: 1e               push   ds
0f2c: 8ed8             mov    ds, ax
0f2e: 56               push   si
0f2f: b42a             mov    ah, 0x2a
0f31: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0f38: 7407             je     0xf41
0f3a: 9aaa060000       lcall  0, 0x6aa    ; <DOS3Call>
0f3f: eb02             jmp    0xf43
0f41: cd21             int    0x21
0f43: 8bda             mov    bx, dx
0f45: 8bf1             mov    si, cx
0f47: b42c             mov    ah, 0x2c
0f49: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0f50: 7407             je     0xf59
0f52: 9a3b0f0000       lcall  0, 0xf3b    ; <DOS3Call>
0f57: eb02             jmp    0xf5b
0f59: cd21             int    0x21
0f5b: b400             mov    ah, 0
0f5d: 8ac6             mov    al, dh
0f5f: 50               push   ax
0f60: 8ac1             mov    al, cl
0f62: 50               push   ax
0f63: 8ac5             mov    al, ch
0f65: 50               push   ax
0f66: 50               push   ax
0f67: b42a             mov    ah, 0x2a
0f69: 2ef7062e040100   test   word ptr cs:[0x42e], 1
0f70: 7407             je     0xf79
0f72: 9a530f0000       lcall  0, 0xf53    ; <DOS3Call>
0f77: eb02             jmp    0xf7b
0f79: cd21             int    0x21
0f7b: 3bda             cmp    bx, dx
0f7d: 58               pop    ax
0f7e: 7408             je     0xf88
0f80: 3c17             cmp    al, 0x17
0f82: 7504             jne    0xf88
0f84: 8bd3             mov    dx, bx
0f86: 8bce             mov    cx, si
0f88: b400             mov    ah, 0
0f8a: 8ac2             mov    al, dl
0f8c: 50               push   ax
0f8d: 8ac6             mov    al, dh
0f8f: 50               push   ax
0f90: 81e9bc07         sub    cx, 0x7bc
0f94: 51               push   cx
0f95: 9aa211410e       fcall  sub_11a2
0f9a: 83c40c           add    sp, 0xc
0f9d: 837e0600         cmp    word ptr [bp + 6], 0
0fa1: 7408             je     0xfab
0fa3: 8b5e06           mov    bx, word ptr [bp + 6]
0fa6: 895702           mov    word ptr [bx + 2], dx
0fa9: 8907             mov    word ptr [bx], ax
0fab: 5e               pop    si
0fac: 83ed02           sub    bp, 2
0faf: 8be5             mov    sp, bp
0fb1: 1f               pop    ds
0fb2: 5d               pop    bp
0fb3: 4d               dec    bp
0fb4: cb               retf   
0fb5: 004555           add    byte ptr [di + 0x55], al
0fb8: 8bec             mov    bp, sp
0fba: 1e               push   ds
0fbb: 833eba0b00       cmp    word ptr [0xbba], 0
0fc0: 7509             jne    0xfcb
0fc2: 9ad20fe20f       fcall  sub_0fd2
0fc7: ff06ba0b         inc    word ptr [0xbba]
0fcb: 8d66fe           lea    sp, [bp - 2]
0fce: 1f               pop    ds
0fcf: 5d               pop    bp
0fd0: 4d               dec    bp
0fd1: cb               retf   

sub_0fd2:
0fd2: 45               inc    bp
0fd3: 55               push   bp
0fd4: 8bec             mov    bp, sp
0fd6: 1e               push   ds
0fd7: 57               push   di
0fd8: 56               push   si
0fd9: 33ff             xor    di, di
0fdb: b83809           mov    ax, 0x938
0fde: 50               push   ax
0fdf: 9a2a0c0410       fcall  sub_0c2a
0fe4: 83c402           add    sp, 2
0fe7: 8bf0             mov    si, ax
0fe9: 0bf0             or     si, ax
0feb: 7503             jne    0xff0
0fed: e9dd00           jmp    0x10cd
0ff0: 803c00           cmp    byte ptr [si], 0
0ff3: 7503             jne    0xff8
0ff5: e9d500           jmp    0x10cd
0ff8: b80300           mov    ax, 3
0ffb: 50               push   ax
0ffc: 56               push   si
0ffd: ff364a09         push   word ptr [0x94a]
1001: 9a700b1d10       fcall  sub_0b70
1006: 83c406           add    sp, 6
1009: 83c603           add    si, 3
100c: 803c2d           cmp    byte ptr [si], 0x2d
100f: 7502             jne    0x1013
1011: 47               inc    di
1012: 46               inc    si
1013: b8100e           mov    ax, 0xe10
1016: 99               cdq    
1017: 52               push   dx
1018: 50               push   ax
1019: 56               push   si
101a: 9ad20b2710       fcall  sub_0bd2
101f: 83c402           add    sp, 2
1022: 52               push   dx
1023: 50               push   ax
1024: 9a84135210       fcall  sub_1384
1029: a33c09           mov    word ptr [0x93c], ax
102c: 89163e09         mov    word ptr [0x93e], dx
1030: 803c2b           cmp    byte ptr [si], 0x2b
1033: 740a             je     0x103f
1035: 803c30           cmp    byte ptr [si], 0x30
1038: 7c08             jl     0x1042
103a: 803c39           cmp    byte ptr [si], 0x39
103d: 7f03             jg     0x1042
103f: 46               inc    si
1040: ebee             jmp    0x1030
1042: 803c3a           cmp    byte ptr [si], 0x3a
1045: 7550             jne    0x1097
1047: b83c00           mov    ax, 0x3c
104a: 99               cdq    
104b: 52               push   dx
104c: 50               push   ax
104d: 46               inc    si
104e: 56               push   si
104f: 9ad20b5c10       fcall  sub_0bd2
1054: 83c402           add    sp, 2
1057: 52               push   dx
1058: 50               push   ax
1059: 9a84137d10       fcall  sub_1384
105e: 01063c09         add    word ptr [0x93c], ax
1062: 11163e09         adc    word ptr [0x93e], dx
1066: eb06             jmp    0x106e
1068: 803c39           cmp    byte ptr [si], 0x39
106b: 7f06             jg     0x1073
106d: 46               inc    si
106e: 803c30           cmp    byte ptr [si], 0x30
1071: 7df5             jge    0x1068
1073: 803c3a           cmp    byte ptr [si], 0x3a
1076: 751f             jne    0x1097
1078: 46               inc    si
1079: 56               push   si
107a: 9ad20bbe10       fcall  sub_0bd2
107f: 83c402           add    sp, 2
1082: 01063c09         add    word ptr [0x93c], ax
1086: 11163e09         adc    word ptr [0x93e], dx
108a: eb06             jmp    0x1092
108c: 803c39           cmp    byte ptr [si], 0x39
108f: 7f06             jg     0x1097
1091: 46               inc    si
1092: 803c30           cmp    byte ptr [si], 0x30
1095: 7df5             jge    0x108c
1097: 0bff             or     di, di
1099: 740d             je     0x10a8
109b: f71e3c09         neg    word ptr [0x93c]
109f: 83163e0900       adc    word ptr [0x93e], 0
10a4: f71e3e09         neg    word ptr [0x93e]
10a8: 8a04             mov    al, byte ptr [si]
10aa: 98               cwde   
10ab: a34009           mov    word ptr [0x940], ax
10ae: 0bc0             or     ax, ax
10b0: 7414             je     0x10c6
10b2: b80300           mov    ax, 3
10b5: 50               push   ax
10b6: 56               push   si
10b7: ff364c09         push   word ptr [0x94c]
10bb: 9a700b6311       fcall  sub_0b70
10c0: 83c406           add    sp, 6
10c3: eb08             jmp    0x10cd
10c5: 90               nop    
10c6: 8b1e4c09         mov    bx, word ptr [0x94c]
10ca: c60700           mov    byte ptr [bx], 0
10cd: 5e               pop    si
10ce: 5f               pop    di
10cf: 8d66fe           lea    sp, [bp - 2]
10d2: 1f               pop    ds
10d3: 5d               pop    bp
10d4: 4d               dec    bp
10d5: cb               retf   

sub_10d6:
10d6: 45               inc    bp
10d7: 55               push   bp
10d8: 8bec             mov    bp, sp
10da: 1e               push   ds
10db: 83ec04           sub    sp, 4
10de: 57               push   di
10df: 56               push   si
10e0: 8b7606           mov    si, word ptr [bp + 6]
10e3: 837c0a43         cmp    word ptr [si + 0xa], 0x43
10e7: 7d03             jge    0x10ec
10e9: e9aa00           jmp    0x1196
10ec: 837c0803         cmp    word ptr [si + 8], 3
10f0: 7d03             jge    0x10f5
10f2: e9a100           jmp    0x1196
10f5: 837c0809         cmp    word ptr [si + 8], 9
10f9: 7e03             jle    0x10fe
10fb: e99800           jmp    0x1196
10fe: 837c0803         cmp    word ptr [si + 8], 3
1102: 7e06             jle    0x110a
1104: 837c0809         cmp    word ptr [si + 8], 9
1108: 7c76             jl     0x1180
110a: 8b7c0a           mov    di, word ptr [si + 0xa]
110d: 83ff56           cmp    di, 0x56
1110: 7e16             jle    0x1128
1112: 837c0803         cmp    word ptr [si + 8], 3
1116: 7510             jne    0x1128
1118: 8b5c08           mov    bx, word ptr [si + 8]
111b: 03db             add    bx, bx
111d: 8b870c09         mov    ax, word ptr [bx + 0x90c]
1121: 050700           add    ax, 7
1124: eb0b             jmp    0x1131
1126: 90               nop    
1127: 90               nop    
1128: 8b5c08           mov    bx, word ptr [si + 8]
112b: 03db             add    bx, bx
112d: 8b870e09         mov    ax, word ptr [bx + 0x90e]
1131: 8946fc           mov    word ptr [bp - 4], ax
1134: f7c70300         test   di, 3
1138: 7503             jne    0x113d
113a: ff46fc           inc    word ptr [bp - 4]
113d: b80700           mov    ax, 7
1140: 99               cdq    
1141: 52               push   dx
1142: 50               push   ax
1143: b96d01           mov    cx, 0x16d
1146: 8d45ba           lea    ax, [di - 0x46]
1149: f7e9             imul   cx
114b: 8d4dff           lea    cx, [di - 1]
114e: d1f9             sar    cx, 1
1150: d1f9             sar    cx, 1
1152: 03c1             add    ax, cx
1154: 0346fc           add    ax, word ptr [bp - 4]
1157: 99               cdq    
1158: 2d0d00           sub    ax, 0xd
115b: 83da00           sbb    dx, 0
115e: 52               push   dx
115f: 50               push   ax
1160: 9ab613980f       fcall  sub_13b6
1165: 2b46fc           sub    ax, word ptr [bp - 4]
1168: f7d8             neg    ax
116a: 8946fa           mov    word ptr [bp - 6], ax
116d: 837c0803         cmp    word ptr [si + 8], 3
1171: 7513             jne    0x1186
1173: 3b440e           cmp    ax, word ptr [si + 0xe]
1176: 7c08             jl     0x1180
1178: 751c             jne    0x1196
117a: 837c0402         cmp    word ptr [si + 4], 2
117e: 7c16             jl     0x1196
1180: b80100           mov    ax, 1
1183: eb13             jmp    0x1198
1185: 90               nop    
1186: 8b440e           mov    ax, word ptr [si + 0xe]
1189: 3946fa           cmp    word ptr [bp - 6], ax
118c: 7ff2             jg     0x1180
118e: 7506             jne    0x1196
1190: 837c0401         cmp    word ptr [si + 4], 1
1194: 7cea             jl     0x1180
1196: 33c0             xor    ax, ax
1198: 5e               pop    si
1199: 5f               pop    di
119a: 8d66fe           lea    sp, [bp - 2]
119d: 1f               pop    ds
119e: 5d               pop    bp
119f: 4d               dec    bp
11a0: cb               retf   
11a1: 90               nop    

sub_11a2:
11a2: 45               inc    bp
11a3: 55               push   bp
11a4: 8bec             mov    bp, sp
11a6: 1e               push   ds
11a7: 83ec1a           sub    sp, 0x1a
11aa: 57               push   di
11ab: 56               push   si
11ac: 8b7606           mov    si, word ptr [bp + 6]
11af: 8b5e08           mov    bx, word ptr [bp + 8]
11b2: 03db             add    bx, bx
11b4: 8bbf0a09         mov    di, word ptr [bx + 0x90a]
11b8: f7c60300         test   si, 3
11bc: 7507             jne    0x11c5
11be: 837e0802         cmp    word ptr [bp + 8], 2
11c2: 7e01             jle    0x11c5
11c4: 47               inc    di
11c5: 9ab60f1212       fcall  sub_0fb6
11ca: b83c00           mov    ax, 0x3c
11cd: 99               cdq    
11ce: 52               push   dx
11cf: 50               push   ax
11d0: 52               push   dx
11d1: 50               push   ax
11d2: b81800           mov    ax, 0x18
11d5: 99               cdq    
11d6: 52               push   dx
11d7: 50               push   ax
11d8: 8bc6             mov    ax, si
11da: b96d01           mov    cx, 0x16d
11dd: f7e9             imul   cx
11df: 8bc8             mov    cx, ax
11e1: 8b460a           mov    ax, word ptr [bp + 0xa]
11e4: 8bda             mov    bx, dx
11e6: 99               cdq    
11e7: 8946e4           mov    word ptr [bp - 0x1c], ax
11ea: 8956e6           mov    word ptr [bp - 0x1a], dx
11ed: 8d4403           lea    ax, [si + 3]
11f0: d1f8             sar    ax, 1
11f2: d1f8             sar    ax, 1
11f4: 99               cdq    
11f5: 0346e4           add    ax, word ptr [bp - 0x1c]
11f8: 1356e6           adc    dx, word ptr [bp - 0x1a]
11fb: 03c8             add    cx, ax
11fd: 13da             adc    bx, dx
11ff: 8bc7             mov    ax, di
1201: 99               cdq    
1202: 03cf             add    cx, di
1204: 13da             adc    bx, dx
1206: 81c1440e         add    cx, 0xe44
120a: 83d300           adc    bx, 0
120d: 53               push   bx
120e: 51               push   cx
120f: 9a84132512       fcall  sub_1384
1214: 8bc8             mov    cx, ax
1216: 8b460c           mov    ax, word ptr [bp + 0xc]
1219: 8bda             mov    bx, dx
121b: 99               cdq    
121c: 03c8             add    cx, ax
121e: 13da             adc    bx, dx
1220: 53               push   bx
1221: 51               push   cx
1222: 9a84133812       fcall  sub_1384
1227: 8bc8             mov    cx, ax
1229: 8b460e           mov    ax, word ptr [bp + 0xe]
122c: 8bda             mov    bx, dx
122e: 99               cdq    
122f: 03c8             add    cx, ax
1231: 13da             adc    bx, dx
1233: 53               push   bx
1234: 51               push   cx
1235: 9a84137d12       fcall  sub_1384
123a: 8bc8             mov    cx, ax
123c: 8b4610           mov    ax, word ptr [bp + 0x10]
123f: 8bda             mov    bx, dx
1241: 99               cdq    
1242: 03c8             add    cx, ax
1244: 13da             adc    bx, dx
1246: 030e3c09         add    cx, word ptr [0x93c]
124a: 131e3e09         adc    bx, word ptr [0x93e]
124e: 894ee8           mov    word ptr [bp - 0x18], cx
1251: 895eea           mov    word ptr [bp - 0x16], bx
1254: 8b460a           mov    ax, word ptr [bp + 0xa]
1257: 03c7             add    ax, di
1259: 8946fa           mov    word ptr [bp - 6], ax
125c: 8d4450           lea    ax, [si + 0x50]
125f: 8946f6           mov    word ptr [bp - 0xa], ax
1262: 8b4608           mov    ax, word ptr [bp + 8]
1265: 48               dec    ax
1266: 8946f4           mov    word ptr [bp - 0xc], ax
1269: 8b460c           mov    ax, word ptr [bp + 0xc]
126c: 8946f0           mov    word ptr [bp - 0x10], ax
126f: 833e400900       cmp    word ptr [0x940], 0
1274: 7419             je     0x128f
1276: 8d46ec           lea    ax, [bp - 0x14]
1279: 50               push   ax
127a: 9ad610c50f       fcall  sub_10d6
127f: 83c402           add    sp, 2
1282: 0bc0             or     ax, ax
1284: 7409             je     0x128f
1286: 816ee8100e       sub    word ptr [bp - 0x18], 0xe10
128b: 835eea00         sbb    word ptr [bp - 0x16], 0
128f: 8b46e8           mov    ax, word ptr [bp - 0x18]
1292: 8b56ea           mov    dx, word ptr [bp - 0x16]
1295: 5e               pop    si
1296: 5f               pop    di
1297: 8d66fe           lea    sp, [bp - 2]
129a: 1f               pop    ds
129b: 5d               pop    bp
129c: 4d               dec    bp
129d: cb               retf   

sub_129e:
129e: 45               inc    bp
129f: 55               push   bp
12a0: 8bec             mov    bp, sp
12a2: 1e               push   ds
12a3: 8b4606           mov    ax, word ptr [bp + 6]
12a6: a34e09           mov    word ptr [0x94e], ax
12a9: c70650090000     mov    word ptr [0x950], 0
12af: 8d66fe           lea    sp, [bp - 2]
12b2: 1f               pop    ds
12b3: 5d               pop    bp
12b4: 4d               dec    bp
12b5: cb               retf   

sub_12b6:
12b6: 45               inc    bp
12b7: 55               push   bp
12b8: 8bec             mov    bp, sp
12ba: 1e               push   ds
12bb: b8fd43           mov    ax, 0x43fd
12be: ba0300           mov    dx, 3
12c1: 52               push   dx
12c2: 50               push   ax
12c3: ff365009         push   word ptr [0x950]
12c7: ff364e09         push   word ptr [0x94e]
12cb: 9a8413c811       fcall  sub_1384
12d0: 05c39e           add    ax, 0x9ec3
12d3: 83d226           adc    dx, 0x26
12d6: a34e09           mov    word ptr [0x94e], ax
12d9: 89165009         mov    word ptr [0x950], dx
12dd: 8bc2             mov    ax, dx
12df: 80e47f           and    ah, 0x7f
12e2: 8d66fe           lea    sp, [bp - 2]
12e5: 1f               pop    ds
12e6: 5d               pop    bp
12e7: 4d               dec    bp
12e8: cb               retf   
12e9: 90               nop    

sub_12ea:
12ea: 55               push   bp
12eb: 8bec             mov    bp, sp
12ed: 57               push   di
12ee: 56               push   si
12ef: 53               push   bx
12f0: 33ff             xor    di, di
12f2: 8b4608           mov    ax, word ptr [bp + 8]
12f5: 0bc0             or     ax, ax
12f7: 7d11             jge    0x130a
12f9: 47               inc    di
12fa: 8b5606           mov    dx, word ptr [bp + 6]
12fd: f7d8             neg    ax
12ff: f7da             neg    dx
1301: 83d800           sbb    ax, 0
1304: 894608           mov    word ptr [bp + 8], ax
1307: 895606           mov    word ptr [bp + 6], dx
130a: 8b460c           mov    ax, word ptr [bp + 0xc]
130d: 0bc0             or     ax, ax
130f: 7d11             jge    0x1322
1311: 47               inc    di
1312: 8b560a           mov    dx, word ptr [bp + 0xa]
1315: f7d8             neg    ax
1317: f7da             neg    dx
1319: 83d800           sbb    ax, 0
131c: 89460c           mov    word ptr [bp + 0xc], ax
131f: 89560a           mov    word ptr [bp + 0xa], dx
1322: 0bc0             or     ax, ax
1324: 7515             jne    0x133b
1326: 8b4e0a           mov    cx, word ptr [bp + 0xa]
1329: 8b4608           mov    ax, word ptr [bp + 8]
132c: 33d2             xor    dx, dx
132e: f7f1             div    cx
1330: 8bd8             mov    bx, ax
1332: 8b4606           mov    ax, word ptr [bp + 6]
1335: f7f1             div    cx
1337: 8bd3             mov    dx, bx
1339: eb38             jmp    0x1373
133b: 8bd8             mov    bx, ax
133d: 8b4e0a           mov    cx, word ptr [bp + 0xa]
1340: 8b5608           mov    dx, word ptr [bp + 8]
1343: 8b4606           mov    ax, word ptr [bp + 6]
1346: d1eb             shr    bx, 1
1348: d1d9             rcr    cx, 1
134a: d1ea             shr    dx, 1
134c: d1d8             rcr    ax, 1
134e: 0bdb             or     bx, bx
1350: 75f4             jne    0x1346
1352: f7f1             div    cx
1354: 8bf0             mov    si, ax
1356: f7660c           mul    word ptr [bp + 0xc]
1359: 91               xchg   cx, ax
135a: 8b460a           mov    ax, word ptr [bp + 0xa]
135d: f7e6             mul    si
135f: 03d1             add    dx, cx
1361: 720c             jb     0x136f
1363: 3b5608           cmp    dx, word ptr [bp + 8]
1366: 7707             ja     0x136f
1368: 7206             jb     0x1370
136a: 3b4606           cmp    ax, word ptr [bp + 6]
136d: 7601             jbe    0x1370
136f: 4e               dec    si
1370: 33d2             xor    dx, dx
1372: 96               xchg   si, ax
1373: 4f               dec    di
1374: 7507             jne    0x137d
1376: f7da             neg    dx
1378: f7d8             neg    ax
137a: 83da00           sbb    dx, 0
137d: 5b               pop    bx
137e: 5e               pop    si
137f: 5f               pop    di
1380: 5d               pop    bp
1381: ca0800           retf   8

sub_1384:
1384: 55               push   bp
1385: 8bec             mov    bp, sp
1387: 8b4608           mov    ax, word ptr [bp + 8]
138a: 8b4e0c           mov    cx, word ptr [bp + 0xc]
138d: 0bc8             or     cx, ax
138f: 8b4e0a           mov    cx, word ptr [bp + 0xa]
1392: 7509             jne    0x139d
1394: 8b4606           mov    ax, word ptr [bp + 6]
1397: f7e1             mul    cx
1399: 5d               pop    bp
139a: ca0800           retf   8
139d: 53               push   bx
139e: f7e1             mul    cx
13a0: 8bd8             mov    bx, ax
13a2: 8b4606           mov    ax, word ptr [bp + 6]
13a5: f7660c           mul    word ptr [bp + 0xc]
13a8: 03d8             add    bx, ax
13aa: 8b4606           mov    ax, word ptr [bp + 6]
13ad: f7e1             mul    cx
13af: 03d3             add    dx, bx
13b1: 5b               pop    bx
13b2: 5d               pop    bp
13b3: ca0800           retf   8

sub_13b6:
13b6: 55               push   bp
13b7: 8bec             mov    bp, sp
13b9: 53               push   bx
13ba: 57               push   di
13bb: 33ff             xor    di, di
13bd: 8b4608           mov    ax, word ptr [bp + 8]
13c0: 0bc0             or     ax, ax
13c2: 7d11             jge    0x13d5
13c4: 47               inc    di
13c5: 8b5606           mov    dx, word ptr [bp + 6]
13c8: f7d8             neg    ax
13ca: f7da             neg    dx
13cc: 83d800           sbb    ax, 0
13cf: 894608           mov    word ptr [bp + 8], ax
13d2: 895606           mov    word ptr [bp + 6], dx
13d5: 8b460c           mov    ax, word ptr [bp + 0xc]
13d8: 0bc0             or     ax, ax
13da: 7d10             jge    0x13ec
13dc: 8b560a           mov    dx, word ptr [bp + 0xa]
13df: f7d8             neg    ax
13e1: f7da             neg    dx
13e3: 83d800           sbb    ax, 0
13e6: 89460c           mov    word ptr [bp + 0xc], ax
13e9: 89560a           mov    word ptr [bp + 0xa], dx
13ec: 0bc0             or     ax, ax
13ee: 7518             jne    0x1408
13f0: 8b4e0a           mov    cx, word ptr [bp + 0xa]
13f3: 8b4608           mov    ax, word ptr [bp + 8]
13f6: 33d2             xor    dx, dx
13f8: f7f1             div    cx
13fa: 8b4606           mov    ax, word ptr [bp + 6]
13fd: f7f1             div    cx
13ff: 8bc2             mov    ax, dx
1401: 33d2             xor    dx, dx
1403: 4f               dec    di
1404: 7943             jns    0x1449
1406: eb48             jmp    0x1450
1408: 8bd8             mov    bx, ax
140a: 8b4e0a           mov    cx, word ptr [bp + 0xa]
140d: 8b5608           mov    dx, word ptr [bp + 8]
1410: 8b4606           mov    ax, word ptr [bp + 6]
1413: d1eb             shr    bx, 1
1415: d1d9             rcr    cx, 1
1417: d1ea             shr    dx, 1
1419: d1d8             rcr    ax, 1
141b: 0bdb             or     bx, bx
141d: 75f4             jne    0x1413
141f: f7f1             div    cx
1421: 8bc8             mov    cx, ax
1423: f7660c           mul    word ptr [bp + 0xc]
1426: 91               xchg   cx, ax
1427: f7660a           mul    word ptr [bp + 0xa]
142a: 03d1             add    dx, cx
142c: 720c             jb     0x143a
142e: 3b5608           cmp    dx, word ptr [bp + 8]
1431: 7707             ja     0x143a
1433: 720b             jb     0x1440
1435: 3b4606           cmp    ax, word ptr [bp + 6]
1438: 7606             jbe    0x1440
143a: 2b460a           sub    ax, word ptr [bp + 0xa]
143d: 1b560c           sbb    dx, word ptr [bp + 0xc]
1440: 2b4606           sub    ax, word ptr [bp + 6]
1443: 1b5608           sbb    dx, word ptr [bp + 8]
1446: 4f               dec    di
1447: 7907             jns    0x1450
1449: f7da             neg    dx
144b: f7d8             neg    ax
144d: 83da00           sbb    dx, 0
1450: 5f               pop    di
1451: 5b               pop    bx
1452: 5d               pop    bp
1453: ca0800           retf   8

sub_1456:
1456: 55               push   bp
1457: 8bec             mov    bp, sp
1459: 5d               pop    bp
145a: c3               ret    

sub_145b:
145b: b81400           mov    ax, 0x14
145e: e9fcf4           jmp    0x95d
1461: 004555           add    byte ptr [di + 0x55], al
1464: 8bec             mov    bp, sp
1466: 1e               push   ds
1467: 83ec02           sub    sp, 2
146a: 837e0600         cmp    word ptr [bp + 6], 0
146e: 7505             jne    0x1475
1470: c746060100       mov    word ptr [bp + 6], 1
1475: b8ffff           mov    ax, 0xffff
1478: 50               push   ax
1479: 9a0f150000       lcall  0, 0x150f    ; <LockSegment>
147e: b82000           mov    ax, 0x20
1481: 50               push   ax
1482: ff7606           push   word ptr [bp + 6]
1485: 9ac7160000       lcall  0, 0x16c7    ; <LocalAlloc>
148a: 8946fc           mov    word ptr [bp - 4], ax
148d: b8ffff           mov    ax, 0xffff
1490: 50               push   ax
1491: 9a37150000       lcall  0, 0x1537    ; <UnlockSegment>
1496: 837efc00         cmp    word ptr [bp - 4], 0
149a: 7517             jne    0x14b3
149c: a15609           mov    ax, word ptr [0x956]
149f: 0b065409         or     ax, word ptr [0x954]
14a3: 740e             je     0x14b3
14a5: ff7606           push   word ptr [bp + 6]
14a8: ff1e5409         lcall  [0x954]
14ac: 83c402           add    sp, 2
14af: 0bc0             or     ax, ax
14b1: 75c2             jne    0x1475
14b3: 8b46fc           mov    ax, word ptr [bp - 4]
14b6: 8d66fe           lea    sp, [bp - 2]
14b9: 1f               pop    ds
14ba: 5d               pop    bp
14bb: 4d               dec    bp
14bc: cb               retf   
14bd: 90               nop    

sub_14be:
14be: 45               inc    bp
14bf: 55               push   bp
14c0: 8bec             mov    bp, sp
14c2: 1e               push   ds
14c3: 837e0600         cmp    word ptr [bp + 6], 0
14c7: 7408             je     0x14d1
14c9: ff7606           push   word ptr [bp + 6]
14cc: 9a35190000       lcall  0, 0x1935    ; <LocalFree>
14d1: 8d66fe           lea    sp, [bp - 2]
14d4: 1f               pop    ds
14d5: 5d               pop    bp
14d6: 4d               dec    bp
14d7: cb               retf   
14d8: 45               inc    bp
14d9: 55               push   bp
14da: 8bec             mov    bp, sp
14dc: 1e               push   ds
14dd: 83ec04           sub    sp, 4
14e0: 837e0600         cmp    word ptr [bp + 6], 0
14e4: 750e             jne    0x14f4
14e6: ff7608           push   word ptr [bp + 8]
14e9: 9a62140015       fcall  sub_1462
14ee: 83c402           add    sp, 2
14f1: eb4b             jmp    0x153e
14f3: 90               nop    
14f4: 837e0800         cmp    word ptr [bp + 8], 0
14f8: 7510             jne    0x150a
14fa: ff7606           push   word ptr [bp + 6]
14fd: 9abe14ce12       fcall  sub_14be
1502: 83c402           add    sp, 2
1505: 33c0             xor    ax, ax
1507: eb35             jmp    0x153e
1509: 90               nop    
150a: b8ffff           mov    ax, 0xffff
150d: 50               push   ax
150e: 9affff0000       lcall  0, 0xffff    ; <LockSegment>
1513: ff7606           push   word ptr [bp + 6]
1516: 837e0800         cmp    word ptr [bp + 8], 0
151a: 7406             je     0x1522
151c: 8b4608           mov    ax, word ptr [bp + 8]
151f: eb04             jmp    0x1525
1521: 90               nop    
1522: b80100           mov    ax, 1
1525: 50               push   ax
1526: b86200           mov    ax, 0x62
1529: 50               push   ax
152a: 9affff0000       lcall  0, 0xffff    ; <LocalReAlloc>
152f: 8946fc           mov    word ptr [bp - 4], ax
1532: b8ffff           mov    ax, 0xffff
1535: 50               push   ax
1536: 9affff0000       lcall  0, 0xffff    ; <UnlockSegment>
153b: 8b46fc           mov    ax, word ptr [bp - 4]
153e: 8d66fe           lea    sp, [bp - 2]
1541: 1f               pop    ds
1542: 5d               pop    bp
1543: 4d               dec    bp
1544: cb               retf   
1545: 90               nop    
1546: 45               inc    bp
1547: 55               push   bp
1548: 8bec             mov    bp, sp
154a: 1e               push   ds
154b: ff7606           push   word ptr [bp + 6]
154e: 9affff0000       lcall  0, 0xffff    ; <LocalSize>
1553: 8d66fe           lea    sp, [bp - 2]
1556: 1f               pop    ds
1557: 5d               pop    bp
1558: 4d               dec    bp
1559: cb               retf   

sub_155a:
155a: 55               push   bp
155b: 8bec             mov    bp, sp
155d: b80600           mov    ax, 6
1560: 9a12077c15       fcall  sub_0712
1565: 57               push   di
1566: 56               push   si
1567: 8b4606           mov    ax, word ptr [bp + 6]
156a: 8b5608           mov    dx, word ptr [bp + 8]
156d: 8946fc           mov    word ptr [bp - 4], ax
1570: 8956fe           mov    word ptr [bp - 2], dx
1573: ff76fe           push   word ptr [bp - 2]
1576: ff76fc           push   word ptr [bp - 4]
1579: 9ab415bd15       fcall  sub_15b4
157e: 83c404           add    sp, 4
1581: 8946fa           mov    word ptr [bp - 6], ax
1584: c45efc           les    bx, ptr [bp - 4]
1587: 26833f0c         cmp    word ptr es:[bx], 0xc
158b: 0f851800         jne    0x15a7
158f: 26837f0200       cmp    word ptr es:[bx + 2], 0
1594: 0f850f00         jne    0x15a7
1598: 8b46fa           mov    ax, word ptr [bp - 6]
159b: 8bc8             mov    cx, ax
159d: d1e0             shl    ax, 1
159f: 03c1             add    ax, cx
15a1: e90c00           jmp    0x15b0
15a4: e90900           jmp    0x15b0
15a7: 8b46fa           mov    ax, word ptr [bp - 6]
15aa: c1e002           shl    ax, 2
15ad: e90000           jmp    0x15b0
15b0: 5e               pop    si
15b1: 5f               pop    di
15b2: c9               leave  
15b3: cb               retf   

sub_15b4:
15b4: 55               push   bp
15b5: 8bec             mov    bp, sp
15b7: b80a00           mov    ax, 0xa
15ba: 9a12076116       fcall  sub_0712
15bf: 57               push   di
15c0: 56               push   si
15c1: 8b4606           mov    ax, word ptr [bp + 6]
15c4: 8b5608           mov    dx, word ptr [bp + 8]
15c7: 8946fa           mov    word ptr [bp - 6], ax
15ca: 8956fc           mov    word ptr [bp - 4], dx
15cd: 8b4606           mov    ax, word ptr [bp + 6]
15d0: 8b5608           mov    dx, word ptr [bp + 8]
15d3: 8946f6           mov    word ptr [bp - 0xa], ax
15d6: 8956f8           mov    word ptr [bp - 8], dx
15d9: c45efa           les    bx, ptr [bp - 6]
15dc: 26833f0c         cmp    word ptr es:[bx], 0xc
15e0: 0f850900         jne    0x15ed
15e4: 26837f0200       cmp    word ptr es:[bx + 2], 0
15e9: 0f842600         je     0x1613
15ed: c45efa           les    bx, ptr [bp - 6]
15f0: 268b4722         mov    ax, word ptr es:[bx + 0x22]
15f4: 260b4720         or     ax, word ptr es:[bx + 0x20]
15f8: 0f840a00         je     0x1606
15fc: c45efa           les    bx, ptr [bp - 6]
15ff: 268b4720         mov    ax, word ptr es:[bx + 0x20]
1603: e94e00           jmp    0x1654
1606: c45efa           les    bx, ptr [bp - 6]
1609: 268b470e         mov    ax, word ptr es:[bx + 0xe]
160d: 8946fe           mov    word ptr [bp - 2], ax
1610: e90a00           jmp    0x161d
1613: c45ef6           les    bx, ptr [bp - 0xa]
1616: 268b470a         mov    ax, word ptr es:[bx + 0xa]
161a: 8946fe           mov    word ptr [bp - 2], ax
161d: 8b46fe           mov    ax, word ptr [bp - 2]
1620: e91b00           jmp    0x163e
1623: b80200           mov    ax, 2
1626: e92b00           jmp    0x1654
1629: b81000           mov    ax, 0x10
162c: e92500           jmp    0x1654
162f: b80001           mov    ax, 0x100
1632: e91f00           jmp    0x1654
1635: b80000           mov    ax, 0
1638: e91900           jmp    0x1654
163b: e91600           jmp    0x1654
163e: 48               dec    ax
163f: 0f84e0ff         je     0x1623
1643: 2d0300           sub    ax, 3
1646: 0f84dfff         je     0x1629
164a: 2d0400           sub    ax, 4
164d: 0f84deff         je     0x162f
1651: e9e1ff           jmp    0x1635
1654: 5e               pop    si
1655: 5f               pop    di
1656: c9               leave  
1657: cb               retf   

sub_1658:
1658: 55               push   bp
1659: 8bec             mov    bp, sp
165b: b80c00           mov    ax, 0xc
165e: 9a12079a17       fcall  sub_0712
1663: 57               push   di
1664: 56               push   si
1665: ff7606           push   word ptr [bp + 6]
1668: 6a26             push   0x26
166a: 9ab3160000       lcall  0, 0x16b3    ; <GetDeviceCaps>
166f: f6c401           test   ah, 1
1672: 0f850800         jne    0x167e
1676: c746f60001       mov    word ptr [bp - 0xa], 0x100
167b: e93c00           jmp    0x16ba
167e: 8b460a           mov    ax, word ptr [bp + 0xa]
1681: 0b4608           or     ax, word ptr [bp + 8]
1684: 0f842500         je     0x16ad
1688: c45e08           les    bx, ptr [bp + 8]
168b: 26837f2000       cmp    word ptr es:[bx + 0x20], 0
1690: 0f840a00         je     0x169e
1694: c45e08           les    bx, ptr [bp + 8]
1697: 268b4720         mov    ax, word ptr es:[bx + 0x20]
169b: e90c00           jmp    0x16aa
169e: b80100           mov    ax, 1
16a1: c45e08           les    bx, ptr [bp + 8]
16a4: 268a4f0e         mov    cl, byte ptr es:[bx + 0xe]
16a8: d3e0             shl    ax, cl
16aa: e90a00           jmp    0x16b7
16ad: ff7606           push   word ptr [bp + 6]
16b0: 6a68             push   0x68
16b2: 9a10180000       lcall  0, 0x1810    ; <GetDeviceCaps>
16b7: 8946f6           mov    word ptr [bp - 0xa], ax
16ba: 6a40             push   0x40
16bc: 8b46f6           mov    ax, word ptr [bp - 0xa]
16bf: 050200           add    ax, 2
16c2: c1e002           shl    ax, 2
16c5: 50               push   ax
16c6: 9aa3170000       lcall  0, 0x17a3    ; <LocalAlloc>
16cb: 8946f8           mov    word ptr [bp - 8], ax
16ce: 8b5ef8           mov    bx, word ptr [bp - 8]
16d1: c7070003         mov    word ptr [bx], 0x300
16d5: 8b46f6           mov    ax, word ptr [bp - 0xa]
16d8: 8b5ef8           mov    bx, word ptr [bp - 8]
16db: 894702           mov    word ptr [bx + 2], ax
16de: 8b460a           mov    ax, word ptr [bp + 0xa]
16e1: 0b4608           or     ax, word ptr [bp + 8]
16e4: 0f847600         je     0x175e
16e8: c45e08           les    bx, ptr [bp + 8]
16eb: 268b07           mov    ax, word ptr es:[bx]
16ee: 034608           add    ax, word ptr [bp + 8]
16f1: 8b560a           mov    dx, word ptr [bp + 0xa]
16f4: 8946fc           mov    word ptr [bp - 4], ax
16f7: 8956fe           mov    word ptr [bp - 2], dx
16fa: c746f40000       mov    word ptr [bp - 0xc], 0
16ff: e90300           jmp    0x1705
1702: ff46f4           inc    word ptr [bp - 0xc]
1705: 8b46f6           mov    ax, word ptr [bp - 0xa]
1708: 3946f4           cmp    word ptr [bp - 0xc], ax
170b: 0f8d4c00         jge    0x175b
170f: c45efc           les    bx, ptr [bp - 4]
1712: 268a4702         mov    al, byte ptr es:[bx + 2]
1716: 8b76f4           mov    si, word ptr [bp - 0xc]
1719: c1e602           shl    si, 2
171c: 8b5ef8           mov    bx, word ptr [bp - 8]
171f: 884004           mov    byte ptr [bx + si + 4], al
1722: c45efc           les    bx, ptr [bp - 4]
1725: 268a4701         mov    al, byte ptr es:[bx + 1]
1729: 8b76f4           mov    si, word ptr [bp - 0xc]
172c: c1e602           shl    si, 2
172f: 8b5ef8           mov    bx, word ptr [bp - 8]
1732: 884005           mov    byte ptr [bx + si + 5], al
1735: c45efc           les    bx, ptr [bp - 4]
1738: 268a07           mov    al, byte ptr es:[bx]
173b: 8b76f4           mov    si, word ptr [bp - 0xc]
173e: c1e602           shl    si, 2
1741: 8b5ef8           mov    bx, word ptr [bp - 8]
1744: 884006           mov    byte ptr [bx + si + 6], al
1747: 8b76f4           mov    si, word ptr [bp - 0xc]
174a: c1e602           shl    si, 2
174d: 8b5ef8           mov    bx, word ptr [bp - 8]
1750: c6400700         mov    byte ptr [bx + si + 7], 0
1754: 8346fc04         add    word ptr [bp - 4], 4
1758: e9a7ff           jmp    0x1702
175b: e91500           jmp    0x1773
175e: ff7606           push   word ptr [bp + 6]
1761: 6a00             push   0
1763: ff76f6           push   word ptr [bp - 0xa]
1766: 8b46f8           mov    ax, word ptr [bp - 8]
1769: 050400           add    ax, 4
176c: 1e               push   ds
176d: 50               push   ax
176e: 9affff0000       lcall  0, 0xffff    ; <GetSystemPaletteUse>
1773: 1e               push   ds
1774: ff76f8           push   word ptr [bp - 8]
1777: 9ae4170000       lcall  0, 0x17e4    ; <CreatePalette>
177c: 8946fa           mov    word ptr [bp - 6], ax
177f: ff76f8           push   word ptr [bp - 8]
1782: 9aef170000       lcall  0, 0x17ef    ; <LocalFree>
1787: 8b46fa           mov    ax, word ptr [bp - 6]
178a: e90000           jmp    0x178d
178d: 5e               pop    si
178e: 5f               pop    di
178f: c9               leave  
1790: cb               retf   
1791: 55               push   bp
1792: 8bec             mov    bp, sp
1794: b80800           mov    ax, 8
1797: 9a12070618       fcall  sub_0712
179c: 57               push   di
179d: 56               push   si
179e: 6a40             push   0x40
17a0: 6a0c             push   0xc
17a2: 9a42180000       lcall  0, 0x1842    ; <LocalAlloc>
17a7: 8946f8           mov    word ptr [bp - 8], ax
17aa: 8b5ef8           mov    bx, word ptr [bp - 8]
17ad: c7070003         mov    word ptr [bx], 0x300
17b1: 8b5ef8           mov    bx, word ptr [bp - 8]
17b4: c747020100       mov    word ptr [bx + 2], 1
17b9: 8a4608           mov    al, byte ptr [bp + 8]
17bc: 8b5ef8           mov    bx, word ptr [bp - 8]
17bf: 884704           mov    byte ptr [bx + 4], al
17c2: 8a4609           mov    al, byte ptr [bp + 9]
17c5: 8b5ef8           mov    bx, word ptr [bp - 8]
17c8: 884705           mov    byte ptr [bx + 5], al
17cb: 8a460a           mov    al, byte ptr [bp + 0xa]
17ce: 8b5ef8           mov    bx, word ptr [bp - 8]
17d1: 884706           mov    byte ptr [bx + 6], al
17d4: 8b5ef8           mov    bx, word ptr [bp - 8]
17d7: c6470700         mov    byte ptr [bx + 7], 0
17db: 8346fc04         add    word ptr [bp - 4], 4
17df: 1e               push   ds
17e0: ff76f8           push   word ptr [bp - 8]
17e3: 9affff0000       lcall  0, 0xffff    ; <CreatePalette>
17e8: 8946fa           mov    word ptr [bp - 6], ax
17eb: ff76f8           push   word ptr [bp - 8]
17ee: 9affff0000       lcall  0, 0xffff    ; <LocalFree>
17f3: 8b46fa           mov    ax, word ptr [bp - 6]
17f6: e90000           jmp    0x17f9
17f9: 5e               pop    si
17fa: 5f               pop    di
17fb: c9               leave  
17fc: cb               retf   
17fd: 55               push   bp
17fe: 8bec             mov    bp, sp
1800: b81200           mov    ax, 0x12
1803: 9a1207ffff       fcall  sub_0712
1808: 57               push   di
1809: 56               push   si
180a: ff7606           push   word ptr [bp + 6]
180d: 6a26             push   0x26
180f: 9a24180000       lcall  0, 0x1824    ; <GetDeviceCaps>
1814: f6c401           test   ah, 1
1817: 0f850300         jne    0x181e
181b: e92301           jmp    0x1941
181e: ff7606           push   word ptr [bp + 6]
1821: 6a68             push   0x68
1823: 9affff0000       lcall  0, 0xffff    ; <GetDeviceCaps>
1828: 8946fa           mov    word ptr [bp - 6], ax
182b: 837efa00         cmp    word ptr [bp - 6], 0
182f: 0f850500         jne    0x1838
1833: c746fa0001       mov    word ptr [bp - 6], 0x100
1838: 6a40             push   0x40
183a: 8b460c           mov    ax, word ptr [bp + 0xc]
183d: c1e002           shl    ax, 2
1840: 50               push   ax
1841: 9a53180000       lcall  0, 0x1853    ; <LocalAlloc>
1846: 8946fe           mov    word ptr [bp - 2], ax
1849: 6a40             push   0x40
184b: 8b46fa           mov    ax, word ptr [bp - 6]
184e: c1e002           shl    ax, 2
1851: 50               push   ax
1852: 9affff0000       lcall  0, 0xffff    ; <LocalAlloc>
1857: 8946fc           mov    word ptr [bp - 4], ax
185a: ff760a           push   word ptr [bp + 0xa]
185d: 6a00             push   0
185f: ff760c           push   word ptr [bp + 0xc]
1862: 1e               push   ds
1863: ff76fe           push   word ptr [bp - 2]
1866: 9a78180000       lcall  0, 0x1878    ; <GetSystemPaletteEntries>
186b: ff7608           push   word ptr [bp + 8]
186e: 6a00             push   0
1870: ff76fa           push   word ptr [bp - 6]
1873: 1e               push   ds
1874: ff76fc           push   word ptr [bp - 4]
1877: 9affff0000       lcall  0, 0xffff    ; <GetSystemPaletteEntries>
187c: c746f80000       mov    word ptr [bp - 8], 0
1881: e90300           jmp    0x1887
1884: ff46f8           inc    word ptr [bp - 8]
1887: 8b460c           mov    ax, word ptr [bp + 0xc]
188a: 3946f8           cmp    word ptr [bp - 8], ax
188d: 0f8d8f00         jge    0x1920
1891: 8b5ef8           mov    bx, word ptr [bp - 8]
1894: c1e302           shl    bx, 2
1897: 8b76fe           mov    si, word ptr [bp - 2]
189a: 8b00             mov    ax, word ptr [bx + si]
189c: 8b5002           mov    dx, word ptr [bx + si + 2]
189f: 8946f4           mov    word ptr [bp - 0xc], ax
18a2: 8956f6           mov    word ptr [bp - 0xa], dx
18a5: ff7608           push   word ptr [bp + 8]
18a8: ff76f6           push   word ptr [bp - 0xa]
18ab: ff76f4           push   word ptr [bp - 0xc]
18ae: 9affff0000       lcall  0, 0xffff    ; <GetNearestPaletteIndex>
18b3: 8946ee           mov    word ptr [bp - 0x12], ax
18b6: 8b5eee           mov    bx, word ptr [bp - 0x12]
18b9: c1e302           shl    bx, 2
18bc: 8b76fc           mov    si, word ptr [bp - 4]
18bf: 8b00             mov    ax, word ptr [bx + si]
18c1: 8b5002           mov    dx, word ptr [bx + si + 2]
18c4: 8946f0           mov    word ptr [bp - 0x10], ax
18c7: 8956f2           mov    word ptr [bp - 0xe], dx
18ca: 8b46f4           mov    ax, word ptr [bp - 0xc]
18cd: 8b56f6           mov    dx, word ptr [bp - 0xa]
18d0: 3946f0           cmp    word ptr [bp - 0x10], ax
18d3: 0f850700         jne    0x18de
18d7: 3956f2           cmp    word ptr [bp - 0xe], dx
18da: 0f843f00         je     0x191d
18de: 837eee0a         cmp    word ptr [bp - 0x12], 0xa
18e2: 0f8c0a00         jl     0x18f0
18e6: a11000           mov    ax, word ptr [0x10]
18e9: 3946ee           cmp    word ptr [bp - 0x12], ax
18ec: 0f8e1900         jle    0x1909
18f0: 833e10000a       cmp    word ptr [0x10], 0xa
18f5: 0f8d0600         jge    0x18ff
18f9: e92400           jmp    0x1920
18fc: e90a00           jmp    0x1909
18ff: a11000           mov    ax, word ptr [0x10]
1902: ff0e1000         dec    word ptr [0x10]
1906: 8946ee           mov    word ptr [bp - 0x12], ax
1909: 8b46f4           mov    ax, word ptr [bp - 0xc]
190c: 8b56f6           mov    dx, word ptr [bp - 0xa]
190f: 8b5eee           mov    bx, word ptr [bp - 0x12]
1912: c1e302           shl    bx, 2
1915: 8b76fc           mov    si, word ptr [bp - 4]
1918: 8900             mov    word ptr [bx + si], ax
191a: 895002           mov    word ptr [bx + si + 2], dx
191d: e964ff           jmp    0x1884
1920: ff7608           push   word ptr [bp + 8]
1923: 6a00             push   0
1925: ff76fa           push   word ptr [bp - 6]
1928: 1e               push   ds
1929: ff76fc           push   word ptr [bp - 4]
192c: 9affff0000       lcall  0, 0xffff    ; <GetSystemPaletteUse?>
1931: ff76fc           push   word ptr [bp - 4]
1934: 9a3d190000       lcall  0, 0x193d    ; <LocalFree>
1939: ff76fe           push   word ptr [bp - 2]
193c: 9a83170000       lcall  0, 0x1783    ; <LocalFree>
1941: 5e               pop    si
1942: 5f               pop    di
1943: c9               leave  
1944: cb               retf   

sub_1945:
1945: 55               push   bp
1946: 8bec             mov    bp, sp
1948: b80600           mov    ax, 6
194b: 9a12075b19       fcall  sub_0712
1950: 57               push   di
1951: 56               push   si
1952: ff7608           push   word ptr [bp + 8]
1955: ff7606           push   word ptr [bp + 6]
1958: 9aec19f519       fcall  sub_19ec
195d: 83c404           add    sp, 4
1960: 8946fc           mov    word ptr [bp - 4], ax
1963: 8956fe           mov    word ptr [bp - 2], dx
1966: c45efc           les    bx, ptr [bp - 4]
1969: ff46fc           inc    word ptr [bp - 4]
196c: 268a07           mov    al, byte ptr es:[bx]
196f: 8846fa           mov    byte ptr [bp - 6], al
1972: c45e06           les    bx, ptr [bp + 6]
1975: 268b4710         mov    ax, word ptr es:[bx + 0x10]
1979: 268b5712         mov    dx, word ptr es:[bx + 0x12]
197d: e94700           jmp    0x19c7
1980: c45e06           les    bx, ptr [bp + 6]
1983: 26837f0e04       cmp    word ptr es:[bx + 0xe], 4
1988: 0f850400         jne    0x1990
198c: c06efa04         shr    byte ptr [bp - 6], 4
1990: e94d00           jmp    0x19e0
1993: 807efa00         cmp    byte ptr [bp - 6], 0
1997: 0f850300         jne    0x199e
199b: ff46fc           inc    word ptr [bp - 4]
199e: c45efc           les    bx, ptr [bp - 4]
19a1: 268a07           mov    al, byte ptr es:[bx]
19a4: 8846fa           mov    byte ptr [bp - 6], al
19a7: e93600           jmp    0x19e0
19aa: 807efa00         cmp    byte ptr [bp - 6], 0
19ae: 0f850300         jne    0x19b5
19b2: ff46fc           inc    word ptr [bp - 4]
19b5: c45efc           les    bx, ptr [bp - 4]
19b8: 268a07           mov    al, byte ptr es:[bx]
19bb: c0e804           shr    al, 4
19be: 8846fa           mov    byte ptr [bp - 6], al
19c1: e91c00           jmp    0x19e0
19c4: e91900           jmp    0x19e0
19c7: 0bd2             or     dx, dx
19c9: 0f851300         jne    0x19e0
19cd: 0bc0             or     ax, ax
19cf: 0f84adff         je     0x1980
19d3: 48               dec    ax
19d4: 0f84bbff         je     0x1993
19d8: 48               dec    ax
19d9: 0f84cdff         je     0x19aa
19dd: e90000           jmp    0x19e0
19e0: 8a46fa           mov    al, byte ptr [bp - 6]
19e3: 2ae4             sub    ah, ah
19e5: e90000           jmp    0x19e8
19e8: 5e               pop    si
19e9: 5f               pop    di
19ea: c9               leave  
19eb: cb               retf   

sub_19ec:
19ec: 55               push   bp
19ed: 8bec             mov    bp, sp
19ef: b80000           mov    ax, 0
19f2: 9a12071f1a       fcall  sub_0712
19f7: 57               push   di
19f8: 56               push   si
19f9: c45e06           les    bx, ptr [bp + 6]
19fc: 268b4720         mov    ax, word ptr es:[bx + 0x20]
1a00: c1e002           shl    ax, 2
1a03: c45e06           les    bx, ptr [bp + 6]
1a06: 260307           add    ax, word ptr es:[bx]
1a09: 034606           add    ax, word ptr [bp + 6]
1a0c: 8b5608           mov    dx, word ptr [bp + 8]
1a0f: e90000           jmp    0x1a12
1a12: 5e               pop    si
1a13: 5f               pop    di
1a14: c9               leave  
1a15: cb               retf   

sub_1a16:
1a16: 55               push   bp
1a17: 8bec             mov    bp, sp
1a19: b81800           mov    ax, 0x18
1a1c: 9a1207441a       fcall  sub_0712
1a21: 57               push   di
1a22: 56               push   si
1a23: 8b4606           mov    ax, word ptr [bp + 6]
1a26: 8b5608           mov    dx, word ptr [bp + 8]
1a29: 8946fc           mov    word ptr [bp - 4], ax
1a2c: 8956fe           mov    word ptr [bp - 2], dx
1a2f: 8b460a           mov    ax, word ptr [bp + 0xa]
1a32: 8b560c           mov    dx, word ptr [bp + 0xc]
1a35: 8946f8           mov    word ptr [bp - 8], ax
1a38: 8956fa           mov    word ptr [bp - 6], dx
1a3b: ff760c           push   word ptr [bp + 0xc]
1a3e: ff760a           push   word ptr [bp + 0xa]
1a41: 9aec196315       fcall  sub_19ec
1a46: 83c404           add    sp, 4
1a49: 8946f4           mov    word ptr [bp - 0xc], ax
1a4c: 8956f6           mov    word ptr [bp - 0xa], dx
1a4f: 8b46f8           mov    ax, word ptr [bp - 8]
1a52: 3946f4           cmp    word ptr [bp - 0xc], ax
1a55: 0f861500         jbe    0x1a6e
1a59: c45ef8           les    bx, ptr [bp - 8]
1a5c: ff46f8           inc    word ptr [bp - 8]
1a5f: 268a07           mov    al, byte ptr es:[bx]
1a62: c45efc           les    bx, ptr [bp - 4]
1a65: ff46fc           inc    word ptr [bp - 4]
1a68: 268807           mov    byte ptr es:[bx], al
1a6b: e9e1ff           jmp    0x1a4f
1a6e: c45e0a           les    bx, ptr [bp + 0xa]
1a71: 26837f0e04       cmp    word ptr es:[bx + 0xe], 4
1a76: 0f851700         jne    0x1a91
1a7a: c45e0a           les    bx, ptr [bp + 0xa]
1a7d: 268b4704         mov    ax, word ptr es:[bx + 4]
1a81: b90800           mov    cx, 8
1a84: 99               cdq    
1a85: f7f9             idiv   cx
1a87: 8bc2             mov    ax, dx
1a89: f7d8             neg    ax
1a8b: 250700           and    ax, 7
1a8e: e91400           jmp    0x1aa5
1a91: c45e0a           les    bx, ptr [bp + 0xa]
1a94: 268b4704         mov    ax, word ptr es:[bx + 4]
1a98: b90400           mov    cx, 4
1a9b: 99               cdq    
1a9c: f7f9             idiv   cx
1a9e: 8bc2             mov    ax, dx
1aa0: f7d8             neg    ax
1aa2: 250300           and    ax, 3
1aa5: 8946f2           mov    word ptr [bp - 0xe], ax
1aa8: c45e0a           les    bx, ptr [bp + 0xa]
1aab: 26837f0e04       cmp    word ptr es:[bx + 0xe], 4
1ab0: 0f850f00         jne    0x1ac3
1ab4: c45e0a           les    bx, ptr [bp + 0xa]
1ab7: 268b4704         mov    ax, word ptr es:[bx + 4]
1abb: 0346f2           add    ax, word ptr [bp - 0xe]
1abe: d1f8             sar    ax, 1
1ac0: e90a00           jmp    0x1acd
1ac3: c45e0a           les    bx, ptr [bp + 0xa]
1ac6: 268b4704         mov    ax, word ptr es:[bx + 4]
1aca: 0346f2           add    ax, word ptr [bp - 0xe]
1acd: 8946f0           mov    word ptr [bp - 0x10], ax
1ad0: f6460e02         test   byte ptr [bp + 0xe], 2
1ad4: 0f840e00         je     0x1ae6
1ad8: c45e0a           les    bx, ptr [bp + 0xa]
1adb: 268b4708         mov    ax, word ptr es:[bx + 8]
1adf: 48               dec    ax
1ae0: f76ef0           imul   word ptr [bp - 0x10]
1ae3: 0146f4           add    word ptr [bp - 0xc], ax
1ae6: f6460e01         test   byte ptr [bp + 0xe], 1
1aea: 0f843300         je     0x1b21
1aee: c45e0a           les    bx, ptr [bp + 0xa]
1af1: 26837f0e04       cmp    word ptr es:[bx + 0xe], 4
1af6: 0f851200         jne    0x1b0c
1afa: c45e0a           les    bx, ptr [bp + 0xa]
1afd: 268b4704         mov    ax, word ptr es:[bx + 4]
1b01: 268b5706         mov    dx, word ptr es:[bx + 6]
1b05: d1fa             sar    dx, 1
1b07: d1d8             rcr    ax, 1
1b09: e90b00           jmp    0x1b17
1b0c: c45e0a           les    bx, ptr [bp + 0xa]
1b0f: 268b4704         mov    ax, word ptr es:[bx + 4]
1b13: 268b5706         mov    dx, word ptr es:[bx + 6]
1b17: 8946e8           mov    word ptr [bp - 0x18], ax
1b1a: 8956ea           mov    word ptr [bp - 0x16], dx
1b1d: 48               dec    ax
1b1e: 0146f4           add    word ptr [bp - 0xc], ax
1b21: c746ee0000       mov    word ptr [bp - 0x12], 0
1b26: e90300           jmp    0x1b2c
1b29: ff46ee           inc    word ptr [bp - 0x12]
1b2c: 8b46ee           mov    ax, word ptr [bp - 0x12]
1b2f: 99               cdq    
1b30: c45e0a           les    bx, ptr [bp + 0xa]
1b33: 2639570a         cmp    word ptr es:[bx + 0xa], dx
1b37: 0f8c1101         jl     0x1c4c
1b3b: 0f8f0800         jg     0x1b47
1b3f: 26394708         cmp    word ptr es:[bx + 8], ax
1b43: 0f860501         jbe    0x1c4c
1b47: 8b46f4           mov    ax, word ptr [bp - 0xc]
1b4a: 8b56f6           mov    dx, word ptr [bp - 0xa]
1b4d: 8946f8           mov    word ptr [bp - 8], ax
1b50: 8956fa           mov    word ptr [bp - 6], dx
1b53: c45e0a           les    bx, ptr [bp + 0xa]
1b56: 26837f0e04       cmp    word ptr es:[bx + 0xe], 4
1b5b: 0f857200         jne    0x1bd1
1b5f: f6460e01         test   byte ptr [bp + 0xe], 1
1b63: 0f843d00         je     0x1ba4
1b67: c746ec0000       mov    word ptr [bp - 0x14], 0
1b6c: e90300           jmp    0x1b72
1b6f: ff46ec           inc    word ptr [bp - 0x14]
1b72: 8b46f0           mov    ax, word ptr [bp - 0x10]
1b75: 3946ec           cmp    word ptr [bp - 0x14], ax
1b78: 0f8d2500         jge    0x1ba1
1b7c: c45ef8           les    bx, ptr [bp - 8]
1b7f: 268a07           mov    al, byte ptr es:[bx]
1b82: c0f804           sar    al, 4
1b85: 240f             and    al, 0xf
1b87: c45ef8           les    bx, ptr [bp - 8]
1b8a: 268a0f           mov    cl, byte ptr es:[bx]
1b8d: c0e104           shl    cl, 4
1b90: 0ac1             or     al, cl
1b92: c45efc           les    bx, ptr [bp - 4]
1b95: 268807           mov    byte ptr es:[bx], al
1b98: ff4ef8           dec    word ptr [bp - 8]
1b9b: ff46fc           inc    word ptr [bp - 4]
1b9e: e9ceff           jmp    0x1b6f
1ba1: e92a00           jmp    0x1bce
1ba4: c746ec0000       mov    word ptr [bp - 0x14], 0
1ba9: e90300           jmp    0x1baf
1bac: ff46ec           inc    word ptr [bp - 0x14]
1baf: 8b46f0           mov    ax, word ptr [bp - 0x10]
1bb2: 3946ec           cmp    word ptr [bp - 0x14], ax
1bb5: 0f8d1500         jge    0x1bce
1bb9: c45ef8           les    bx, ptr [bp - 8]
1bbc: ff46f8           inc    word ptr [bp - 8]
1bbf: 268a07           mov    al, byte ptr es:[bx]
1bc2: c45efc           les    bx, ptr [bp - 4]
1bc5: ff46fc           inc    word ptr [bp - 4]
1bc8: 268807           mov    byte ptr es:[bx], al
1bcb: e9deff           jmp    0x1bac
1bce: e95f00           jmp    0x1c30
1bd1: f6460e01         test   byte ptr [bp + 0xe], 1
1bd5: 0f842d00         je     0x1c06
1bd9: c746ec0000       mov    word ptr [bp - 0x14], 0
1bde: e90300           jmp    0x1be4
1be1: ff46ec           inc    word ptr [bp - 0x14]
1be4: 8b46f0           mov    ax, word ptr [bp - 0x10]
1be7: 3946ec           cmp    word ptr [bp - 0x14], ax
1bea: 0f8d1500         jge    0x1c03
1bee: c45ef8           les    bx, ptr [bp - 8]
1bf1: ff4ef8           dec    word ptr [bp - 8]
1bf4: 268a07           mov    al, byte ptr es:[bx]
1bf7: c45efc           les    bx, ptr [bp - 4]
1bfa: ff46fc           inc    word ptr [bp - 4]
1bfd: 268807           mov    byte ptr es:[bx], al
1c00: e9deff           jmp    0x1be1
1c03: e92a00           jmp    0x1c30
1c06: c746ec0000       mov    word ptr [bp - 0x14], 0
1c0b: e90300           jmp    0x1c11
1c0e: ff46ec           inc    word ptr [bp - 0x14]
1c11: 8b46f0           mov    ax, word ptr [bp - 0x10]
1c14: 3946ec           cmp    word ptr [bp - 0x14], ax
1c17: 0f8d1500         jge    0x1c30
1c1b: c45ef8           les    bx, ptr [bp - 8]
1c1e: ff46f8           inc    word ptr [bp - 8]
1c21: 268a07           mov    al, byte ptr es:[bx]
1c24: c45efc           les    bx, ptr [bp - 4]
1c27: ff46fc           inc    word ptr [bp - 4]
1c2a: 268807           mov    byte ptr es:[bx], al
1c2d: e9deff           jmp    0x1c0e
1c30: f6460e02         test   byte ptr [bp + 0xe], 2
1c34: 0f840800         je     0x1c40
1c38: 8b46f0           mov    ax, word ptr [bp - 0x10]
1c3b: f7d8             neg    ax
1c3d: e90300           jmp    0x1c43
1c40: 8b46f0           mov    ax, word ptr [bp - 0x10]
1c43: 8946e8           mov    word ptr [bp - 0x18], ax
1c46: 0146f4           add    word ptr [bp - 0xc], ax
1c49: e9ddfe           jmp    0x1b29
1c4c: 5e               pop    si
1c4d: 5f               pop    di
1c4e: c9               leave  
1c4f: cb               retf   

sub_1c50:
1c50: 55               push   bp
1c51: 8bec             mov    bp, sp
1c53: b82e00           mov    ax, 0x2e
1c56: 9a1207721c       fcall  sub_0712
1c5b: 57               push   di
1c5c: 56               push   si
1c5d: 837e0c00         cmp    word ptr [bp + 0xc], 0
1c61: 0f856900         jne    0x1cce
1c65: c746d20800       mov    word ptr [bp - 0x2e], 8
1c6a: c746d4f31d       mov    word ptr [bp - 0x2c], 0x1df3
1c6f: c746d6e31c       mov    word ptr [bp - 0x2a], 0x1ce3    ; <seg1:0000>
1c74: c746d80000       mov    word ptr [bp - 0x28], 0
1c79: c746da0800       mov    word ptr [bp - 0x26], 8
1c7e: 8b460e           mov    ax, word ptr [bp + 0xe]
1c81: 8946dc           mov    word ptr [bp - 0x24], ax
1c84: ff760e           push   word ptr [bp + 0xe]
1c87: 6a00             push   0
1c89: 6a64             push   0x64
1c8b: 9affff0000       lcall  0, 0xffff    ; <LoadIcon>
1c90: 8946de           mov    word ptr [bp - 0x22], ax
1c93: ff760e           push   word ptr [bp + 0xe]
1c96: 6a00             push   0
1c98: 6a6a             push   0x6a
1c9a: 9a021d0000       lcall  0, 0x1d02    ; <LoadCursor>
1c9f: 8946e0           mov    word ptr [bp - 0x20], ax
1ca2: c746e20000       mov    word ptr [bp - 0x1e], 0
1ca7: 2bc0             sub    ax, ax
1ca9: 8946e6           mov    word ptr [bp - 0x1a], ax
1cac: 8946e4           mov    word ptr [bp - 0x1c], ax
1caf: c746e81200       mov    word ptr [bp - 0x18], 0x12
1cb4: 8c5eea           mov    word ptr [bp - 0x16], ds
1cb7: 8d46d2           lea    ax, [bp - 0x2e]
1cba: 16               push   ss
1cbb: 50               push   ax
1cbc: 9a241d0000       lcall  0, 0x1d24    ; <RegisterClass>
1cc1: 3d0000           cmp    ax, 0
1cc4: 0f850600         jne    0x1cce
1cc8: b80000           mov    ax, 0
1ccb: e90801           jmp    0x1dd6
1cce: 837e0c00         cmp    word ptr [bp + 0xc], 0
1cd2: 0f855f00         jne    0x1d35
1cd6: c746d20800       mov    word ptr [bp - 0x2e], 8
1cdb: c746d49926       mov    word ptr [bp - 0x2c], 0x2699
1ce0: c746d6e51d       mov    word ptr [bp - 0x2a], 0x1de5    ; <seg1:0000>
1ce5: c746d80000       mov    word ptr [bp - 0x28], 0
1cea: c746da0000       mov    word ptr [bp - 0x26], 0
1cef: 8b460e           mov    ax, word ptr [bp + 0xe]
1cf2: 8946dc           mov    word ptr [bp - 0x24], ax
1cf5: c746de0000       mov    word ptr [bp - 0x22], 0
1cfa: 6a00             push   0
1cfc: 6a00             push   0
1cfe: 68007f           push   0x7f00
1d01: 9affff0000       lcall  0, 0xffff    ; <LoadCursor>
1d06: 8946e0           mov    word ptr [bp - 0x20], ax
1d09: c746e20000       mov    word ptr [bp - 0x1e], 0
1d0e: 2bc0             sub    ax, ax
1d10: 8946e6           mov    word ptr [bp - 0x1a], ax
1d13: 8946e4           mov    word ptr [bp - 0x1c], ax
1d16: c746e82000       mov    word ptr [bp - 0x18], 0x20
1d1b: 8c5eea           mov    word ptr [bp - 0x16], ds
1d1e: 8d46d2           lea    ax, [bp - 0x2e]
1d21: 16               push   ss
1d22: 50               push   ax
1d23: 9affff0000       lcall  0, 0xffff    ; <RegisterClass>
1d28: 3d0000           cmp    ax, 0
1d2b: 0f850600         jne    0x1d35
1d2f: b80000           mov    ax, 0
1d32: e9a100           jmp    0x1dd6
1d35: 8b460e           mov    ax, word ptr [bp + 0xe]
1d38: a3782d           mov    word ptr [0x2d78], ax
1d3b: 1e               push   ds
1d3c: 683d00           push   0x3d
1d3f: 1e               push   ds
1d40: 683100           push   0x31
1d43: 9affff0000       lcall  0, 0xffff    ; <FindWindow>
1d48: 3d0000           cmp    ax, 0
1d4b: 0f840600         je     0x1d55
1d4f: c7065c2d0100     mov    word ptr [0x2d5c], 1
1d55: 6a00             push   0
1d57: 6a00             push   0
1d59: 1e               push   ds
1d5a: 685700           push   0x57    ; "ScreenMatePoo"
1d5d: 1e               push   ds
1d5e: 684b00           push   0x4b    ; "Screen Mate"
1d61: 680080           push   0x8000
1d64: 6a00             push   0
1d66: 6a00             push   0
1d68: 6a00             push   0
1d6a: 6a00             push   0
1d6c: 6a00             push   0
1d6e: 6a00             push   0
1d70: 6a00             push   0
1d72: ff760e           push   word ptr [bp + 0xe]
1d75: 6a00             push   0
1d77: 6a00             push   0
1d79: 9affff0000       lcall  0, 0xffff    ; <CreateWindowEx>
1d7e: 8946fe           mov    word ptr [bp - 2], ax
1d81: 837efe00         cmp    word ptr [bp - 2], 0
1d85: 0f850600         jne    0x1d8f
1d89: b80000           mov    ax, 0
1d8c: e94700           jmp    0x1dd6
1d8f: ff76fe           push   word ptr [bp - 2]
1d92: ff7606           push   word ptr [bp + 6]
1d95: 9affff0000       lcall  0, 0xffff    ; <ShowWindow>
1d9a: ff76fe           push   word ptr [bp - 2]
1d9d: 9affff0000       lcall  0, 0xffff    ; <UpdateWindow>
1da2: 8d46ec           lea    ax, [bp - 0x14]
1da5: 16               push   ss
1da6: 50               push   ax
1da7: 6a00             push   0
1da9: 6a00             push   0
1dab: 6a00             push   0
1dad: 9affff0000       lcall  0, 0xffff    ; <GetMessage>
1db2: 3d0000           cmp    ax, 0
1db5: 0f841700         je     0x1dd0
1db9: 8d46ec           lea    ax, [bp - 0x14]
1dbc: 16               push   ss
1dbd: 50               push   ax
1dbe: 9affff0000       lcall  0, 0xffff    ; <TranslateMessage>
1dc3: 8d46ec           lea    ax, [bp - 0x14]
1dc6: 16               push   ss
1dc7: 50               push   ax
1dc8: 9affff0000       lcall  0, 0xffff    ; <DispatchMessage>
1dcd: e9d2ff           jmp    0x1da2
1dd0: 8b46f0           mov    ax, word ptr [bp - 0x10]
1dd3: e90000           jmp    0x1dd6
1dd6: 5e               pop    si
1dd7: 5f               pop    di
1dd8: c9               leave  
1dd9: ca0a00           retf   0xa
1ddc: 55               push   bp
1ddd: 8bec             mov    bp, sp
1ddf: b80000           mov    ax, 0
1de2: 9a1207fc1d       fcall  sub_0712
1de7: 57               push   di
1de8: 56               push   si
1de9: c706b80a0100     mov    word ptr [0xab8], 1
1def: 5e               pop    si
1df0: 5f               pop    di
1df1: c9               leave  
1df2: cb               retf   
1df3: 55               push   bp
1df4: 8bec             mov    bp, sp
1df6: b82801           mov    ax, 0x128
1df9: 9a12070c1e       fcall  sub_0712
1dfe: 57               push   di
1dff: 56               push   si
1e00: 8b460c           mov    ax, word ptr [bp + 0xc]
1e03: e9e807           jmp    0x25ee
1e06: ff760e           push   word ptr [bp + 0xe]
1e09: 9a203c461e       fcall  sub_3c20
1e0e: 83c402           add    sp, 2
1e11: 3d0000           cmp    ax, 0
1e14: 0f851b00         jne    0x1e33
1e18: ff760e           push   word ptr [bp + 0xe]
1e1b: 1e               push   ds
1e1c: 687100           push   0x71
1e1f: 1e               push   ds
1e20: 686500           push   0x65    ; "Screen Mate"
1e23: 6a10             push   0x10
1e25: 9a111f0000       lcall  0, 0x1f11    ; <MessageBox>
1e2a: b8ffff           mov    ax, 0xffff
1e2d: baffff           mov    dx, 0xffff
1e30: e96008           jmp    0x2693
1e33: ff760e           push   word ptr [bp + 0xe]
1e36: 6a01             push   1
1e38: 9affff0000       lcall  0, 0xffff    ; <DragAcceptFiles>
1e3d: 8b460e           mov    ax, word ptr [bp + 0xe]
1e40: a3d023           mov    word ptr [0x23d0], ax
1e43: 9a362fa81e       fcall  sub_2f36
1e48: 833e5e2d00       cmp    word ptr [0x2d5e], 0
1e4d: 0f841400         je     0x1e65
1e51: ff760e           push   word ptr [bp + 0xe]
1e54: 6aff             push   -1
1e56: 6a00             push   0
1e58: 6a00             push   0
1e5a: 6a00             push   0
1e5c: 6a00             push   0
1e5e: 6a03             push   3
1e60: 9affff0000       lcall  0, 0xffff    ; <SetWindowPos>
1e65: ff760e           push   word ptr [bp + 0xe]
1e68: 9affff0000       lcall  0, 0xffff    ; <GetDC>
1e6d: 8946fe           mov    word ptr [bp - 2], ax
1e70: ff36782d         push   word ptr [0x2d78]
1e74: 6a00             push   0
1e76: 6a65             push   0x65    ; "Screen Mate"
1e78: 6a00             push   0
1e7a: 6a02             push   2
1e7c: 9affff0000       lcall  0, 0xffff    ; <FindResource>
1e81: 8946f6           mov    word ptr [bp - 0xa], ax
1e84: ff36782d         push   word ptr [0x2d78]
1e88: ff76f6           push   word ptr [bp - 0xa]
1e8b: 9affff0000       lcall  0, 0xffff    ; <LoadResource>
1e90: 8946f8           mov    word ptr [bp - 8], ax
1e93: 50               push   ax
1e94: 9affff0000       lcall  0, 0xffff    ; <LockResource>
1e99: 8946fa           mov    word ptr [bp - 6], ax
1e9c: 8956fc           mov    word ptr [bp - 4], dx
1e9f: ff76fc           push   word ptr [bp - 4]
1ea2: ff76fa           push   word ptr [bp - 6]
1ea5: 9a5a15cb1e       fcall  sub_155a
1eaa: 83c404           add    sp, 4
1ead: c45efa           les    bx, ptr [bp - 6]
1eb0: 260307           add    ax, word ptr es:[bx]
1eb3: 0346fa           add    ax, word ptr [bp - 6]
1eb6: 8b56fc           mov    dx, word ptr [bp - 4]
1eb9: 8946f2           mov    word ptr [bp - 0xe], ax
1ebc: 8956f4           mov    word ptr [bp - 0xc], dx
1ebf: ff76fc           push   word ptr [bp - 4]
1ec2: ff76fa           push   word ptr [bp - 6]
1ec5: ff76fe           push   word ptr [bp - 2]
1ec8: 9a5816f71e       fcall  sub_1658
1ecd: 83c406           add    sp, 6
1ed0: a36a2d           mov    word ptr [0x2d6a], ax
1ed3: ff76f8           push   word ptr [bp - 8]
1ed6: 9affff0000       lcall  0, 0xffff    ; <FreeResource>
1edb: ff76fe           push   word ptr [bp - 2]
1ede: ff366a2d         push   word ptr [0x2d6a]
1ee2: 6a00             push   0
1ee4: 9affff0000       lcall  0, 0xffff    ; <SelectPalette>
1ee9: ff76fe           push   word ptr [bp - 2]
1eec: 9affff0000       lcall  0, 0xffff    ; <RealizePalette>
1ef1: ff76fe           push   word ptr [bp - 2]
1ef4: 9af3423a1f       fcall  sub_42f3
1ef9: 83c402           add    sp, 2
1efc: 3d0000           cmp    ax, 0
1eff: 0f852600         jne    0x1f29
1f03: ff760e           push   word ptr [bp + 0xe]
1f06: 1e               push   ds
1f07: 689b00           push   0x9b
1f0a: 1e               push   ds
1f0b: 688f00           push   0x8f    ; "Screen Mate"
1f0e: 6a10             push   0x10
1f10: 9a541f0000       lcall  0, 0x1f54    ; <MessageBox>
1f15: ff760e           push   word ptr [bp + 0xe]
1f18: ff76fe           push   word ptr [bp - 2]
1f1b: 9a301f0000       lcall  0, 0x1f30    ; <ReleaseDC>
1f20: b8ffff           mov    ax, 0xffff
1f23: baffff           mov    dx, 0xffff
1f26: e96a07           jmp    0x2693
1f29: ff760e           push   word ptr [bp + 0xe]
1f2c: ff76fe           push   word ptr [bp - 2]
1f2f: 9affff0000       lcall  0, 0xffff    ; <ReleaseDC>
1f34: ff760e           push   word ptr [bp + 0xe]
1f37: 9a6a30a01f       fcall  sub_306a
1f3c: 83c402           add    sp, 2
1f3f: 3d0000           cmp    ax, 0
1f42: 0f851b00         jne    0x1f61
1f46: ff760e           push   word ptr [bp + 0xe]
1f49: 1e               push   ds
1f4a: 68be00           push   0xbe
1f4d: 1e               push   ds
1f4e: 68b200           push   0xb2    ; "Screen Mate"
1f51: 6a10             push   0x10
1f53: 9affff0000       lcall  0, 0xffff    ; <MessageBox>
1f58: b8ffff           mov    ax, 0xffff
1f5b: baffff           mov    dx, 0xffff
1f5e: e93207           jmp    0x2693
1f61: ff760e           push   word ptr [bp + 0xe]
1f64: 6a01             push   1
1f66: 6a6c             push   0x6c
1f68: 6a00             push   0
1f6a: 6a00             push   0
1f6c: 9affff0000       lcall  0, 0xffff    ; <SetTimer>
1f71: e90807           jmp    0x267c
1f74: 833e902d00       cmp    word ptr [0x2d90], 0
1f79: 0f853200         jne    0x1faf
1f7d: ff760a           push   word ptr [bp + 0xa]
1f80: 6a00             push   0
1f82: 8d86defe         lea    ax, [bp - 0x122]
1f86: 16               push   ss
1f87: 50               push   ax
1f88: 680401           push   0x104
1f8b: 9affff0000       lcall  0, 0xffff    ; <DragQueryFile>
1f90: 3d0000           cmp    ax, 0
1f93: 0f841800         je     0x1faf
1f97: 8d86defe         lea    ax, [bp - 0x122]
1f9b: 16               push   ss
1f9c: 50               push   ax
1f9d: 9aaa42aa1f       fcall  sub_42aa
1fa2: 83c404           add    sp, 4
1fa5: 6a04             push   4
1fa7: 9ad78fdc1f       fcall  sub_8fd7
1fac: 83c402           add    sp, 2
1faf: ff760a           push   word ptr [bp + 0xa]
1fb2: 9affff0000       lcall  0, 0xffff    ; <DragFinish>
1fb7: e9c206           jmp    0x267c
1fba: 8b4606           mov    ax, word ptr [bp + 6]
1fbd: 8b5608           mov    dx, word ptr [bp + 8]
1fc0: e9c100           jmp    0x2084
1fc3: 833ece2300       cmp    word ptr [0x23ce], 0
1fc8: 0f842300         je     0x1fef
1fcc: 833e902d00       cmp    word ptr [0x2d90], 0
1fd1: 0f840c00         je     0x1fe1
1fd5: ff36902d         push   word ptr [0x2d90]
1fd9: 9abf2ae71f       fcall  sub_2abf
1fde: 83c402           add    sp, 2
1fe1: ff760e           push   word ptr [bp + 0xe]
1fe4: 9abf2af51f       fcall  sub_2abf
1fe9: 83c402           add    sp, 2
1fec: e92000           jmp    0x200f
1fef: ff760e           push   word ptr [bp + 0xe]
1ff2: 9abf2a4e19       fcall  sub_2abf
1ff7: 83c402           add    sp, 2
1ffa: 833e902d00       cmp    word ptr [0x2d90], 0
1fff: 0f840c00         je     0x200f
2003: ff36902d         push   word ptr [0x2d90]
2007: 9abf2a1520       fcall  sub_2abf
200c: 83c402           add    sp, 2
200f: ff760e           push   word ptr [bp + 0xe]
2012: 9abf2a5f21       fcall  sub_2abf
2017: 83c402           add    sp, 2
201a: 9affff0000       lcall  0, 0xffff    ; <CreatePopupMenu>
201f: 8986defe         mov    word ptr [bp - 0x122], ax
2023: ffb6defe         push   word ptr [bp - 0x122]
2027: 6a00             push   0
2029: 6a65             push   0x65    ; "Screen Mate"
202b: 1e               push   ds
202c: 68d500           push   0xd5
202f: 9a41200000       lcall  0, 0x2041    ; <AppendMenu>
2034: ffb6defe         push   word ptr [bp - 0x122]
2038: 6a00             push   0
203a: 6a02             push   2
203c: 1e               push   ds
203d: 68ea00           push   0xea
2040: 9affff0000       lcall  0, 0xffff    ; <AppendMenu>
2045: 8d86dafe         lea    ax, [bp - 0x126]
2049: 16               push   ss
204a: 50               push   ax
204b: 9a10210000       lcall  0, 0x2110    ; <GetCursorPos>
2050: ffb6defe         push   word ptr [bp - 0x122]
2054: 6a00             push   0
2056: ffb6dafe         push   word ptr [bp - 0x126]
205a: ffb6dcfe         push   word ptr [bp - 0x124]
205e: 6a00             push   0
2060: ff760e           push   word ptr [bp + 0xe]
2063: 6a00             push   0
2065: 6a00             push   0
2067: 9affff0000       lcall  0, 0xffff    ; <TrackPopupMenu>
206c: ffb6defe         push   word ptr [bp - 0x122]
2070: 9affff0000       lcall  0, 0xffff    ; <DestroyMenu>
2075: b80000           mov    ax, 0
2078: ba0000           mov    dx, 0
207b: e91506           jmp    0x2693
207e: e91a00           jmp    0x209b
2081: e91700           jmp    0x209b
2084: 0bd2             or     dx, dx
2086: 0f851100         jne    0x209b
208a: 2d0202           sub    ax, 0x202
208d: 0f8432ff         je     0x1fc3
2091: 2d0300           sub    ax, 3
2094: 0f842bff         je     0x1fc3
2098: e90000           jmp    0x209b
209b: b80000           mov    ax, 0
209e: ba0000           mov    dx, 0
20a1: e9ef05           jmp    0x2693
20a4: 8b4606           mov    ax, word ptr [bp + 6]
20a7: 8b5608           mov    dx, word ptr [bp + 8]
20aa: 8986dafe         mov    word ptr [bp - 0x126], ax
20ae: 8996dcfe         mov    word ptr [bp - 0x124], dx
20b2: 833ec20a00       cmp    word ptr [0xac2], 0
20b7: 0f840e00         je     0x20c9
20bb: 8b4606           mov    ax, word ptr [bp + 6]
20be: 8b5608           mov    dx, word ptr [bp + 8]
20c1: 8986dafe         mov    word ptr [bp - 0x126], ax
20c5: 8996dcfe         mov    word ptr [bp - 0x124], dx
20c9: c49edafe         les    bx, ptr [bp - 0x126]
20cd: 26814f0c0001     or     word ptr es:[bx + 0xc], 0x100
20d3: c706cc0a0100     mov    word ptr [0xacc], 1
20d9: b80000           mov    ax, 0
20dc: ba0000           mov    dx, 0
20df: e9b105           jmp    0x2693
20e2: b80000           mov    ax, 0
20e5: ba0000           mov    dx, 0
20e8: e9a805           jmp    0x2693
20eb: 833eda2300       cmp    word ptr [0x23da], 0
20f0: 0f840d00         je     0x2101
20f4: ff0eda23         dec    word ptr [0x23da]
20f8: b80000           mov    ax, 0
20fb: ba0000           mov    dx, 0
20fe: e99205           jmp    0x2693
2101: 833ed62300       cmp    word ptr [0x23d6], 0
2106: 0f858d00         jne    0x2197
210a: 8d46e2           lea    ax, [bp - 0x1e]
210d: 16               push   ss
210e: 50               push   ax
210f: 9affff0000       lcall  0, 0xffff    ; <GetCursorPos>
2114: 8b46e2           mov    ax, word ptr [bp - 0x1e]
2117: 3906d00a         cmp    word ptr [0xad0], ax
211b: 0f850b00         jne    0x212a
211f: 8b46e4           mov    ax, word ptr [bp - 0x1c]
2122: 3906d20a         cmp    word ptr [0xad2], ax
2126: 0f841200         je     0x213c
212a: 8b46e2           mov    ax, word ptr [bp - 0x1e]
212d: a3d00a           mov    word ptr [0xad0], ax
2130: 8b46e4           mov    ax, word ptr [bp - 0x1c]
2133: a3d20a           mov    word ptr [0xad2], ax
2136: c706b80a0100     mov    word ptr [0xab8], 1
213c: 833e962d00       cmp    word ptr [0x2d96], 0
2141: 0f842200         je     0x2167
2145: 833eb80a00       cmp    word ptr [0xab8], 0
214a: 0f841600         je     0x2164
214e: c706962d0000     mov    word ptr [0x2d96], 0
2154: c706c4230000     mov    word ptr [0x23c4], 0
215a: 6a00             push   0
215c: 9ad78f9221       fcall  sub_8fd7
2161: 83c402           add    sp, 2
2164: e93000           jmp    0x2197
2167: 833eb80a00       cmp    word ptr [0xab8], 0
216c: 0f840f00         je     0x217f
2170: c706b80a0000     mov    word ptr [0xab8], 0
2176: c706c4230000     mov    word ptr [0x23c4], 0
217c: e91800           jmp    0x2197
217f: a1c423           mov    ax, word ptr [0x23c4]
2182: ff06c423         inc    word ptr [0x23c4]
2186: 3d2c01           cmp    ax, 0x12c
2189: 0f8e0a00         jle    0x2197
218d: 6a03             push   3
218f: 9ad78fa621       fcall  sub_8fd7
2194: 83c402           add    sp, 2
2197: c706cc0a0000     mov    word ptr [0xacc], 0
219d: 8b460e           mov    ax, word ptr [bp + 0xe]
21a0: a3d023           mov    word ptr [0x23d0], ax
21a3: 9af84cae21       fcall  sub_4cf8
21a8: ff760e           push   word ptr [bp + 0xe]
21ab: 9a8432b921       fcall  sub_3284
21b0: 83c402           add    sp, 2
21b3: ff760e           push   word ptr [bp + 0xe]
21b6: 9a1737db21       fcall  sub_3717
21bb: 83c402           add    sp, 2
21be: c706c20a0100     mov    word ptr [0xac2], 1
21c4: b80000           mov    ax, 0
21c7: ba0000           mov    dx, 0
21ca: e9c604           jmp    0x2693
21cd: 837e0a01         cmp    word ptr [bp + 0xa], 1
21d1: 0f850b00         jne    0x21e0
21d5: ff7606           push   word ptr [bp + 6]
21d8: 9a5f3dee21       fcall  sub_3d5f
21dd: 83c402           add    sp, 2
21e0: 837e0a02         cmp    word ptr [bp + 0xa], 2
21e4: 0f850b00         jne    0x21f3
21e8: ff7606           push   word ptr [bp + 6]
21eb: 9aa73d2622       fcall  sub_3da7
21f0: 83c402           add    sp, 2
21f3: b80000           mov    ax, 0
21f6: ba0000           mov    dx, 0
21f9: e99704           jmp    0x2693
21fc: 833ecc0a00       cmp    word ptr [0xacc], 0
2201: 0f841b00         je     0x2220
2205: c706cc0a0000     mov    word ptr [0xacc], 0
220b: ff760e           push   word ptr [bp + 0xe]
220e: 6a00             push   0
2210: 6a00             push   0
2212: 9a33220000       lcall  0, 0x2233    ; <ValidateRect?>
2217: b80000           mov    ax, 0
221a: ba0000           mov    dx, 0
221d: e97304           jmp    0x2693
2220: ff760e           push   word ptr [bp + 0xe]
2223: 9a37327f22       fcall  sub_3237
2228: 83c402           add    sp, 2
222b: ff760e           push   word ptr [bp + 0xe]
222e: 6a00             push   0
2230: 6a00             push   0
2232: 9a8c220000       lcall  0, 0x228c    ; <ValidateRect?>
2237: b80000           mov    ax, 0
223a: ba0000           mov    dx, 0
223d: e95304           jmp    0x2693
2240: ff760e           push   word ptr [bp + 0xe]
2243: 8d46e6           lea    ax, [bp - 0x1a]
2246: 16               push   ss
2247: 50               push   ax
2248: 9aa1220000       lcall  0, 0x22a1    ; <GetWindowRect>
224d: 8b46e8           mov    ax, word ptr [bp - 0x18]
2250: 3906c60a         cmp    word ptr [0xac6], ax
2254: 0f854100         jne    0x2299
2258: 8b46ec           mov    ax, word ptr [bp - 0x14]
225b: 3906ca0a         cmp    word ptr [0xaca], ax
225f: 0f853600         jne    0x2299
2263: 8b46e6           mov    ax, word ptr [bp - 0x1a]
2266: 3906c40a         cmp    word ptr [0xac4], ax
226a: 0f852b00         jne    0x2299
226e: 8b46ea           mov    ax, word ptr [bp - 0x16]
2271: 3906c80a         cmp    word ptr [0xac8], ax
2275: 0f852000         jne    0x2299
2279: ff760e           push   word ptr [bp + 0xe]
227c: 9a37325123       fcall  sub_3237
2281: 83c402           add    sp, 2
2284: ff760e           push   word ptr [bp + 0xe]
2287: 6a00             push   0
2289: 6a00             push   0
228b: 9aad220000       lcall  0, 0x22ad    ; <ValidateRect?>
2290: b80000           mov    ax, 0
2293: ba0000           mov    dx, 0
2296: e9fa03           jmp    0x2693
2299: ff760e           push   word ptr [bp + 0xe]
229c: 1e               push   ds
229d: 68c40a           push   0xac4
22a0: 9a30230000       lcall  0, 0x2330    ; <GetWindowRect>
22a5: ff760e           push   word ptr [bp + 0xe]
22a8: 6a00             push   0
22aa: 6a00             push   0
22ac: 9affff0000       lcall  0, 0xffff    ; <ValidateRect?>
22b1: b80000           mov    ax, 0
22b4: ba0000           mov    dx, 0
22b7: e9d903           jmp    0x2693
22ba: e9bf03           jmp    0x267c
22bd: b80000           mov    ax, 0
22c0: ba0000           mov    dx, 0
22c3: e9cd03           jmp    0x2693
22c6: 8b460a           mov    ax, word ptr [bp + 0xa]
22c9: e92800           jmp    0x22f4
22cc: ff760e           push   word ptr [bp + 0xe]
22cf: 680204           push   0x402
22d2: 6a00             push   0
22d4: 6a00             push   0
22d6: 6a00             push   0
22d8: 9affff0000       lcall  0, 0xffff    ; <SendMessage>
22dd: e92400           jmp    0x2304
22e0: ff760e           push   word ptr [bp + 0xe]
22e3: 9affff0000       lcall  0, 0xffff    ; <DestroyWindow>
22e8: b80000           mov    ax, 0
22eb: ba0000           mov    dx, 0
22ee: e9a203           jmp    0x2693
22f1: e91000           jmp    0x2304
22f4: 48               dec    ax
22f5: 48               dec    ax
22f6: 0f84e6ff         je     0x22e0
22fa: 2d6300           sub    ax, 0x63
22fd: 0f84cbff         je     0x22cc
2301: e90000           jmp    0x2304
2304: e97503           jmp    0x267c
2307: 833e902d00       cmp    word ptr [0x2d90], 0
230c: 0f840300         je     0x2313
2310: e96903           jmp    0x267c
2313: 833ebe0a00       cmp    word ptr [0xabe], 0
2318: 0f840300         je     0x231f
231c: e95d03           jmp    0x267c
231f: ff760e           push   word ptr [bp + 0xe]
2322: 9affff0000       lcall  0, 0xffff    ; <SetCapture>
2327: ff760e           push   word ptr [bp + 0xe]
232a: 8d46e6           lea    ax, [bp - 0x1a]
232d: 16               push   ss
232e: 50               push   ax
232f: 9a84230000       lcall  0, 0x2384    ; <GetWindowRect>
2334: 8b4606           mov    ax, word ptr [bp + 6]
2337: 0346e6           add    ax, word ptr [bp - 0x1a]
233a: a3ba0a           mov    word ptr [0xaba], ax
233d: 8b4608           mov    ax, word ptr [bp + 8]
2340: 0346e8           add    ax, word ptr [bp - 0x18]
2343: a3bc0a           mov    word ptr [0xabc], ax
2346: c706be0a0100     mov    word ptr [0xabe], 1
234c: 6a01             push   1
234e: 9ad78f5c23       fcall  sub_8fd7
2353: 83c402           add    sp, 2
2356: ff760e           push   word ptr [bp + 0xe]
2359: 9a84326723       fcall  sub_3284
235e: 83c402           add    sp, 2
2361: ff760e           push   word ptr [bp + 0xe]
2364: 9a1737591c       fcall  sub_3717
2369: 83c402           add    sp, 2
236c: e90d03           jmp    0x267c
236f: 833ebe0a00       cmp    word ptr [0xabe], 0
2374: 0f850300         jne    0x237b
2378: e90103           jmp    0x267c
237b: ff760e           push   word ptr [bp + 0xe]
237e: 8d46e6           lea    ax, [bp - 0x1a]
2381: 16               push   ss
2382: 50               push   ax
2383: 9affff0000       lcall  0, 0xffff    ; <GetWindowRect>
2388: 8b4606           mov    ax, word ptr [bp + 6]
238b: 0346e6           add    ax, word ptr [bp - 0x1a]
238e: 8946f0           mov    word ptr [bp - 0x10], ax
2391: 8b4608           mov    ax, word ptr [bp + 8]
2394: 0346e8           add    ax, word ptr [bp - 0x18]
2397: 8946ee           mov    word ptr [bp - 0x12], ax
239a: 8b46f0           mov    ax, word ptr [bp - 0x10]
239d: 3906ba0a         cmp    word ptr [0xaba], ax
23a1: 0f850e00         jne    0x23b3
23a5: 8b46ee           mov    ax, word ptr [bp - 0x12]
23a8: 3906bc0a         cmp    word ptr [0xabc], ax
23ac: 0f850300         jne    0x23b3
23b0: e9c902           jmp    0x267c
23b3: 8b46ee           mov    ax, word ptr [bp - 0x12]
23b6: 2b06bc0a         sub    ax, word ptr [0xabc]
23ba: 50               push   ax
23bb: 8b46f0           mov    ax, word ptr [bp - 0x10]
23be: 2b06ba0a         sub    ax, word ptr [0xaba]
23c2: 50               push   ax
23c3: 9acd91dd23       fcall  sub_91cd
23c8: 83c404           add    sp, 4
23cb: 8b46f0           mov    ax, word ptr [bp - 0x10]
23ce: a3ba0a           mov    word ptr [0xaba], ax
23d1: 8b46ee           mov    ax, word ptr [bp - 0x12]
23d4: a3bc0a           mov    word ptr [0xabc], ax
23d7: ff760e           push   word ptr [bp + 0xe]
23da: 9a8432e823       fcall  sub_3284
23df: 83c402           add    sp, 2
23e2: ff760e           push   word ptr [bp + 0xe]
23e5: 9a17373f24       fcall  sub_3717
23ea: 83c402           add    sp, 2
23ed: e98c02           jmp    0x267c
23f0: 833ec00a00       cmp    word ptr [0xac0], 0
23f5: 0f840b00         je     0x2404
23f9: ff760e           push   word ptr [bp + 0xe]
23fc: 9ac2260000       lcall  0, 0x26c2    ; <DestroyWindow>
2401: e97802           jmp    0x267c
2404: 833ebe0a00       cmp    word ptr [0xabe], 0
2409: 0f847500         je     0x2482
240d: ff760e           push   word ptr [bp + 0xe]
2410: 8d46e6           lea    ax, [bp - 0x1a]
2413: 16               push   ss
2414: 50               push   ax
2415: 9a49220000       lcall  0, 0x2249    ; <GetWindowRect>
241a: 8b4606           mov    ax, word ptr [bp + 6]
241d: 0346e6           add    ax, word ptr [bp - 0x1a]
2420: 8946f0           mov    word ptr [bp - 0x10], ax
2423: 8b4608           mov    ax, word ptr [bp + 8]
2426: 0346e8           add    ax, word ptr [bp - 0x18]
2429: 8946ee           mov    word ptr [bp - 0x12], ax
242c: 8b46ee           mov    ax, word ptr [bp - 0x12]
242f: 2b06bc0a         sub    ax, word ptr [0xabc]
2433: 50               push   ax
2434: 8b46f0           mov    ax, word ptr [bp - 0x10]
2437: 2b06ba0a         sub    ax, word ptr [0xaba]
243b: 50               push   ax
243c: 9acd914924       fcall  sub_91cd
2441: 83c404           add    sp, 4
2444: 6a00             push   0
2446: 9ad78f5c24       fcall  sub_8fd7
244b: 83c402           add    sp, 2
244e: 817e0c0502       cmp    word ptr [bp + 0xc], 0x205
2453: 0f850a00         jne    0x2461
2457: 6a02             push   2
2459: 9ad78f6724       fcall  sub_8fd7
245e: 83c402           add    sp, 2
2461: ff760e           push   word ptr [bp + 0xe]
2464: 9a84327224       fcall  sub_3284
2469: 83c402           add    sp, 2
246c: ff760e           push   word ptr [bp + 0xe]
246f: 9a1737bf24       fcall  sub_3717
2474: 83c402           add    sp, 2
2477: 9affff0000       lcall  0, 0xffff    ; <ReleaseCapture>
247c: c706be0a0000     mov    word ptr [0xabe], 0
2482: e9f701           jmp    0x267c
2485: c706c00a0100     mov    word ptr [0xac0], 1
248b: e9ee01           jmp    0x267c
248e: a15e2d           mov    ax, word ptr [0x2d5e]
2491: 8986defe         mov    word ptr [bp - 0x122], ax
2495: a1622d           mov    ax, word ptr [0x2d62]
2498: 8986d8fe         mov    word ptr [bp - 0x128], ax
249c: 8b460e           mov    ax, word ptr [bp + 0xe]
249f: a3d023           mov    word ptr [0x23d0], ax
24a2: 6a10             push   0x10
24a4: 9ab3240000       lcall  0, 0x24b3    ; <GetKeyState>
24a9: f6c480           test   ah, 0x80
24ac: 0f844000         je     0x24f0
24b0: 6a11             push   0x11
24b2: 9affff0000       lcall  0, 0xffff    ; <GetKeyState>
24b7: f6c480           test   ah, 0x80
24ba: 0f843200         je     0x24f0
24be: 68f124           push   0x24f1    ; <seg1:0000>
24c1: 682a29           push   0x292a
24c4: ff36782d         push   word ptr [0x2d78]
24c8: 9afb240000       lcall  0, 0x24fb    ; <MakeProcInstance>
24cd: 8986dafe         mov    word ptr [bp - 0x126], ax
24d1: 8996dcfe         mov    word ptr [bp - 0x124], dx
24d5: ff36782d         push   word ptr [0x2d78]
24d9: 6a00             push   0
24db: 6a6c             push   0x6c
24dd: ff760e           push   word ptr [bp + 0xe]
24e0: ffb6dcfe         push   word ptr [bp - 0x124]
24e4: ffb6dafe         push   word ptr [bp - 0x126]
24e8: 9a1b250000       lcall  0, 0x251b    ; <DialogBox>
24ed: e92f00           jmp    0x251f
24f0: 683225           push   0x2532    ; <seg1:0000>
24f3: 68ff27           push   0x27ff
24f6: ff36782d         push   word ptr [0x2d78]
24fa: 9affff0000       lcall  0, 0xffff    ; <MakeProcInstance>
24ff: 8986dafe         mov    word ptr [bp - 0x126], ax
2503: 8996dcfe         mov    word ptr [bp - 0x124], dx
2507: ff36782d         push   word ptr [0x2d78]
250b: 6a00             push   0
250d: 6a6b             push   0x6b
250f: ff760e           push   word ptr [bp + 0xe]
2512: ffb6dcfe         push   word ptr [bp - 0x124]
2516: ffb6dafe         push   word ptr [bp - 0x126]
251a: 9affff0000       lcall  0, 0xffff    ; <DialogBox>
251f: ffb6dcfe         push   word ptr [bp - 0x124]
2523: ffb6dafe         push   word ptr [bp - 0x126]
2527: 9affff0000       lcall  0, 0xffff    ; <FreeProcInstance>
252c: ff760e           push   word ptr [bp + 0xe]
252f: 9a37328f25       fcall  sub_3237
2534: 83c402           add    sp, 2
2537: a15e2d           mov    ax, word ptr [0x2d5e]
253a: 3986defe         cmp    word ptr [bp - 0x122], ax
253e: 0f843400         je     0x2576
2542: 833e5e2d00       cmp    word ptr [0x2d5e], 0
2547: 0f841700         je     0x2562
254b: ff760e           push   word ptr [bp + 0xe]
254e: 6aff             push   -1
2550: 6a00             push   0
2552: 6a00             push   0
2554: 6a00             push   0
2556: 6a00             push   0
2558: 6a03             push   3
255a: 9a72250000       lcall  0, 0x2572    ; <SetWindowPos>
255f: e91400           jmp    0x2576
2562: ff760e           push   word ptr [bp + 0xe]
2565: 6afe             push   -2
2567: 6a00             push   0
2569: 6a00             push   0
256b: 6a00             push   0
256d: 6a00             push   0
256f: 6a03             push   3
2571: 9a611e0000       lcall  0, 0x1e61    ; <SetWindowPos>
2576: a1622d           mov    ax, word ptr [0x2d62]
2579: 3986d8fe         cmp    word ptr [bp - 0x128], ax
257d: 0f841300         je     0x2594
2581: 833e622d00       cmp    word ptr [0x2d62], 0
2586: 0f840a00         je     0x2594
258a: 6a02             push   2
258c: 9ad78f9d25       fcall  sub_8fd7
2591: 83c402           add    sp, 2
2594: e9e500           jmp    0x267c
2597: ff760e           push   word ptr [bp + 0xe]
259a: 9a123dae25       fcall  sub_3d12
259f: 83c402           add    sp, 2
25a2: 833e902d00       cmp    word ptr [0x2d90], 0
25a7: 0f840500         je     0x25b0
25ab: 9a962abd25       fcall  sub_2a96
25b0: ff760e           push   word ptr [bp + 0xe]
25b3: 6a01             push   1
25b5: 9affff0000       lcall  0, 0xffff    ; <KillTimer>
25ba: 9a8e42c425       fcall  sub_428e
25bf: 6a00             push   0
25c1: 9a1931cc25       fcall  sub_3119
25c6: 83c402           add    sp, 2
25c9: 9aed44a226       fcall  sub_44ed
25ce: ff366a2d         push   word ptr [0x2d6a]
25d2: 9affff0000       lcall  0, 0xffff    ; <DeleteObject>
25d7: ff760e           push   word ptr [bp + 0xe]
25da: 6a00             push   0
25dc: 9a391e0000       lcall  0, 0x1e39    ; <DragAcceptFiles>
25e1: 6a00             push   0
25e3: 9affff0000       lcall  0, 0xffff    ; <PostQuitMessage>
25e8: e99100           jmp    0x267c
25eb: e98e00           jmp    0x267c
25ee: 3d0102           cmp    ax, 0x201
25f1: 0f8412fd         je     0x2307
25f5: 0f874400         ja     0x263d
25f9: 3d4600           cmp    ax, 0x46
25fc: 0f84a4fa         je     0x20a4
2600: 0f871b00         ja     0x261f
2604: 48               dec    ax
2605: 0f84fdf7         je     0x1e06
2609: 48               dec    ax
260a: 0f8489ff         je     0x2597
260e: 2d0d00           sub    ax, 0xd
2611: 0f84e7fb         je     0x21fc
2615: 2d0500           sub    ax, 5
2618: 0f84a1fc         je     0x22bd
261c: e95d00           jmp    0x267c
261f: 2d4700           sub    ax, 0x47
2622: 0f84bcfa         je     0x20e2
2626: 2dca00           sub    ax, 0xca
2629: 0f8499fc         je     0x22c6
262d: 48               dec    ax
262e: 48               dec    ax
262f: 0f84b8fa         je     0x20eb
2633: 2ded00           sub    ax, 0xed
2636: 0f8435fd         je     0x236f
263a: e93f00           jmp    0x267c
263d: 3d0602           cmp    ax, 0x206
2640: 0f8441fe         je     0x2485
2644: 0f871900         ja     0x2661
2648: 2d0202           sub    ax, 0x202
264b: 0f84b5fd         je     0x2404
264f: 48               dec    ax
2650: 0f843afe         je     0x248e
2654: 48               dec    ax
2655: 0f84aefc         je     0x2307
2659: 48               dec    ax
265a: 0f8492fd         je     0x23f0
265e: e91b00           jmp    0x267c
2661: 2d3302           sub    ax, 0x233
2664: 0f840cf9         je     0x1f74
2668: 2dcd01           sub    ax, 0x1cd
266b: 0f845efb         je     0x21cd
266f: 48               dec    ax
2670: 0f8446f9         je     0x1fba
2674: 48               dec    ax
2675: 0f8415fe         je     0x248e
2679: e90000           jmp    0x267c
267c: ff760e           push   word ptr [bp + 0xe]
267f: ff760c           push   word ptr [bp + 0xc]
2682: ff760a           push   word ptr [bp + 0xa]
2685: ff7608           push   word ptr [bp + 8]
2688: ff7606           push   word ptr [bp + 6]
268b: 9affff0000       lcall  0, 0xffff    ; <DefWindowProc>
2690: e90000           jmp    0x2693
2693: 5e               pop    si
2694: 5f               pop    di
2695: c9               leave  
2696: ca0a00           retf   0xa
2699: 55               push   bp
269a: 8bec             mov    bp, sp
269c: b80400           mov    ax, 4
269f: 9a1207b226       fcall  sub_0712
26a4: 57               push   di
26a5: 56               push   si
26a6: 8b460c           mov    ax, word ptr [bp + 0xc]
26a9: e90101           jmp    0x27ad
26ac: ff760e           push   word ptr [bp + 0xe]
26af: 9a00921b27       fcall  sub_9200
26b4: 83c402           add    sp, 2
26b7: 3d0000           cmp    ax, 0
26ba: 0f851100         jne    0x26cf
26be: ff760e           push   word ptr [bp + 0xe]
26c1: 9ae4220000       lcall  0, 0x22e4    ; <DestroyWindow>
26c6: b80100           mov    ax, 1
26c9: ba0000           mov    dx, 0
26cc: e92a01           jmp    0x27f9
26cf: ff760e           push   word ptr [bp + 0xe]
26d2: 6a01             push   1
26d4: 6a6c             push   0x6c
26d6: 6a00             push   0
26d8: 6a00             push   0
26da: 9a6d1f0000       lcall  0, 0x1f6d    ; <SetTimer>
26df: e90001           jmp    0x27e2
26e2: 8b4606           mov    ax, word ptr [bp + 6]
26e5: 8b5608           mov    dx, word ptr [bp + 8]
26e8: 8946fc           mov    word ptr [bp - 4], ax
26eb: 8956fe           mov    word ptr [bp - 2], dx
26ee: c45efc           les    bx, ptr [bp - 4]
26f1: 26814f0c0001     or     word ptr es:[bx + 0xc], 0x100
26f7: c706d40a0100     mov    word ptr [0xad4], 1
26fd: b80000           mov    ax, 0
2700: ba0000           mov    dx, 0
2703: e9f300           jmp    0x27f9
2706: b80000           mov    ax, 0
2709: ba0000           mov    dx, 0
270c: e9ea00           jmp    0x27f9
270f: c706d40a0000     mov    word ptr [0xad4], 0
2715: ff760e           push   word ptr [bp + 0xe]
2718: 9a38942627       fcall  sub_9438
271d: 83c402           add    sp, 2
2720: ff760e           push   word ptr [bp + 0xe]
2723: 9a499a3b27       fcall  sub_9a49
2728: 83c402           add    sp, 2
272b: 3d0000           cmp    ax, 0
272e: 0f850b00         jne    0x273d
2732: c7065c2d0100     mov    word ptr [0x2d5c], 1
2738: 9ae14c0a20       fcall  sub_4ce1
273d: b80000           mov    ax, 0
2740: ba0000           mov    dx, 0
2743: e9b300           jmp    0x27f9
2746: 833ed40a00       cmp    word ptr [0xad4], 0
274b: 0f841b00         je     0x276a
274f: c706d40a0000     mov    word ptr [0xad4], 0
2755: ff760e           push   word ptr [bp + 0xe]
2758: 6a00             push   0
275a: 6a00             push   0
275c: 9a13220000       lcall  0, 0x2213    ; <ValidateRect?>
2761: b80000           mov    ax, 0
2764: ba0000           mov    dx, 0
2767: e98f00           jmp    0x27f9
276a: ff760e           push   word ptr [bp + 0xe]
276d: 9adf939827       fcall  sub_93df
2772: 83c402           add    sp, 2
2775: ff760e           push   word ptr [bp + 0xe]
2778: 6a00             push   0
277a: 6a00             push   0
277c: 9a5d270000       lcall  0, 0x275d    ; <ValidateRect?>
2781: b80000           mov    ax, 0
2784: ba0000           mov    dx, 0
2787: e96f00           jmp    0x27f9
278a: b80000           mov    ax, 0
278d: ba0000           mov    dx, 0
2790: e96600           jmp    0x27f9
2793: 6a00             push   0
2795: 9a0f930828       fcall  sub_930f
279a: 83c402           add    sp, 2
279d: ff760e           push   word ptr [bp + 0xe]
27a0: 6a01             push   1
27a2: 9ab6250000       lcall  0, 0x25b6    ; <KillTimer>
27a7: e93800           jmp    0x27e2
27aa: e93500           jmp    0x27e2
27ad: 3d1400           cmp    ax, 0x14
27b0: 0f84d6ff         je     0x278a
27b4: 0f871400         ja     0x27cc
27b8: 48               dec    ax
27b9: 0f84effe         je     0x26ac
27bd: 48               dec    ax
27be: 0f84d1ff         je     0x2793
27c2: 2d0d00           sub    ax, 0xd
27c5: 0f847dff         je     0x2746
27c9: e91600           jmp    0x27e2
27cc: 2d4600           sub    ax, 0x46
27cf: 0f840fff         je     0x26e2
27d3: 48               dec    ax
27d4: 0f842eff         je     0x2706
27d8: 2dcc00           sub    ax, 0xcc
27db: 0f8430ff         je     0x270f
27df: e90000           jmp    0x27e2
27e2: ff760e           push   word ptr [bp + 0xe]
27e5: ff760c           push   word ptr [bp + 0xc]
27e8: ff760a           push   word ptr [bp + 0xa]
27eb: ff7608           push   word ptr [bp + 8]
27ee: ff7606           push   word ptr [bp + 6]
27f1: 9a8c260000       lcall  0, 0x268c    ; <DefWindowProc>
27f6: e90000           jmp    0x27f9
27f9: 5e               pop    si
27fa: 5f               pop    di
27fb: c9               leave  
27fc: ca0a00           retf   0xa
27ff: 55               push   bp
2800: 8bec             mov    bp, sp
2802: b80000           mov    ax, 0
2805: 9a1207d328       fcall  sub_0712
280a: 57               push   di
280b: 56               push   si
280c: 8b460c           mov    ax, word ptr [bp + 0xc]
280f: e9fd00           jmp    0x290f
2812: ff760e           push   word ptr [bp + 0xe]
2815: 68e903           push   0x3e9
2818: 680104           push   0x401
281b: ff36cc23         push   word ptr [0x23cc]
281f: 6a00             push   0
2821: 6a00             push   0
2823: 9a3a280000       lcall  0, 0x283a    ; <SendDlgItemMessage>
2828: ff760e           push   word ptr [bp + 0xe]
282b: 68ea03           push   0x3ea
282e: 680104           push   0x401
2831: ff367a2d         push   word ptr [0x2d7a]
2835: 6a00             push   0
2837: 6a00             push   0
2839: 9a50280000       lcall  0, 0x2850    ; <SendDlgItemMessage>
283e: ff760e           push   word ptr [bp + 0xe]
2841: 68eb03           push   0x3eb
2844: 680104           push   0x401
2847: ff36d623         push   word ptr [0x23d6]
284b: 6a00             push   0
284d: 6a00             push   0
284f: 9a66280000       lcall  0, 0x2866    ; <SendDlgItemMessage>
2854: ff760e           push   word ptr [bp + 0xe]
2857: 68ec03           push   0x3ec
285a: 680104           push   0x401
285d: ff36622d         push   word ptr [0x2d62]
2861: 6a00             push   0
2863: 6a00             push   0
2865: 9affff0000       lcall  0, 0xffff    ; <SendDlgItemMessage>
286a: b80100           mov    ax, 1
286d: e9b400           jmp    0x2924
2870: 837e0a04         cmp    word ptr [bp + 0xa], 4
2874: 0f851800         jne    0x2890
2878: ff760e           push   word ptr [bp + 0xe]
287b: 1e               push   ds
287c: 68fc00           push   0xfc    ; "Scmpoo16.hlp"
287f: 6a03             push   3
2881: 6a00             push   0
2883: 6a00             push   0
2885: 9affff0000       lcall  0, 0xffff    ; <WinHelp>
288a: b80100           mov    ax, 1
288d: e99400           jmp    0x2924
2890: 837e0a01         cmp    word ptr [bp + 0xa], 1
2894: 0f853d00         jne    0x28d5
2898: ff760e           push   word ptr [bp + 0xe]
289b: 68e903           push   0x3e9
289e: 9aad280000       lcall  0, 0x28ad    ; <IsDlgButtonChecked>
28a3: a3cc23           mov    word ptr [0x23cc], ax
28a6: ff760e           push   word ptr [bp + 0xe]
28a9: 68ea03           push   0x3ea
28ac: 9abb280000       lcall  0, 0x28bb    ; <IsDlgButtonChecked>
28b1: a37a2d           mov    word ptr [0x2d7a], ax
28b4: ff760e           push   word ptr [bp + 0xe]
28b7: 68eb03           push   0x3eb
28ba: 9ac9280000       lcall  0, 0x28c9    ; <IsDlgButtonChecked>
28bf: a3d623           mov    word ptr [0x23d6], ax
28c2: ff760e           push   word ptr [bp + 0xe]
28c5: 68ec03           push   0x3ec
28c8: 9a88290000       lcall  0, 0x2988    ; <IsDlgButtonChecked>
28cd: a3622d           mov    word ptr [0x2d62], ax
28d0: 9af82f3329       fcall  sub_2ff8
28d5: 837e0a03         cmp    word ptr [bp + 0xa], 3
28d9: 0f850900         jne    0x28e6
28dd: ff36d023         push   word ptr [0x23d0]
28e1: 9ab12a0000       lcall  0, 0x2ab1    ; <DestroyWindow>
28e6: 837e0a01         cmp    word ptr [bp + 0xa], 1
28ea: 0f841000         je     0x28fe
28ee: 837e0a02         cmp    word ptr [bp + 0xa], 2
28f2: 0f840800         je     0x28fe
28f6: 837e0a03         cmp    word ptr [bp + 0xa], 3
28fa: 0f850b00         jne    0x2909
28fe: ff760e           push   word ptr [bp + 0xe]
2901: ff760a           push   word ptr [bp + 0xa]
2904: 9a6b290000       lcall  0, 0x296b    ; <EndDialog>
2909: e91200           jmp    0x291e
290c: e90f00           jmp    0x291e
290f: 2d1001           sub    ax, 0x110
2912: 0f84fcfe         je     0x2812
2916: 48               dec    ax
2917: 0f8455ff         je     0x2870
291b: e90000           jmp    0x291e
291e: b80000           mov    ax, 0
2921: e90000           jmp    0x2924
2924: 5e               pop    si
2925: 5f               pop    di
2926: c9               leave  
2927: ca0a00           retf   0xa
292a: 55               push   bp
292b: 8bec             mov    bp, sp
292d: b80000           mov    ax, 0
2930: 9a12079d29       fcall  sub_0712
2935: 57               push   di
2936: 56               push   si
2937: 8b460c           mov    ax, word ptr [bp + 0xc]
293a: e9c900           jmp    0x2a06
293d: ff760e           push   word ptr [bp + 0xe]
2940: 68ea03           push   0x3ea
2943: 68fb03           push   0x3fb
2946: 68ea03           push   0x3ea
2949: 9affff0000       lcall  0, 0xffff    ; <CheckRadioButton>
294e: b80100           mov    ax, 1
2951: e9c700           jmp    0x2a1b
2954: 837e0a01         cmp    word ptr [bp + 0xa], 1
2958: 0f840800         je     0x2964
295c: 837e0a02         cmp    word ptr [bp + 0xa], 2
2960: 0f850b00         jne    0x296f
2964: ff760e           push   word ptr [bp + 0xe]
2967: ff760a           push   word ptr [bp + 0xa]
296a: 9affff0000       lcall  0, 0xffff    ; <EndDialog>
296f: 817e0aea03       cmp    word ptr [bp + 0xa], 0x3ea
2974: 0f822a00         jb     0x29a2
2978: 817e0a0704       cmp    word ptr [bp + 0xa], 0x407
297d: 0f872100         ja     0x29a2
2981: ff760e           push   word ptr [bp + 0xe]
2984: ff760a           push   word ptr [bp + 0xa]
2987: 9affff0000       lcall  0, 0xffff    ; <IsDlgButtonChecked>
298c: 3d0000           cmp    ax, 0
298f: 0f840f00         je     0x29a2
2993: 8b460a           mov    ax, word ptr [bp + 0xa]
2996: 2dea03           sub    ax, 0x3ea
2999: 50               push   ax
299a: 9a4a90af29       fcall  sub_904a
299f: 83c402           add    sp, 2
29a2: 8b460a           mov    ax, word ptr [bp + 0xa]
29a5: e93f00           jmp    0x29e7
29a8: 6aec             push   -0x14
29aa: 6a00             push   0
29ac: 9acd91be29       fcall  sub_91cd
29b1: 83c404           add    sp, 4
29b4: e94900           jmp    0x2a00
29b7: 6a14             push   0x14
29b9: 6a00             push   0
29bb: 9acd91cd29       fcall  sub_91cd
29c0: 83c404           add    sp, 4
29c3: e93a00           jmp    0x2a00
29c6: 6a00             push   0
29c8: 6aec             push   -0x14
29ca: 9acd91dc29       fcall  sub_91cd
29cf: 83c404           add    sp, 4
29d2: e92b00           jmp    0x2a00
29d5: 6a00             push   0
29d7: 6a14             push   0x14
29d9: 9acd912a2a       fcall  sub_91cd
29de: 83c404           add    sp, 4
29e1: e91c00           jmp    0x2a00
29e4: e91900           jmp    0x2a00
29e7: 2d0804           sub    ax, 0x408
29ea: 0f84baff         je     0x29a8
29ee: 48               dec    ax
29ef: 0f84c4ff         je     0x29b7
29f3: 48               dec    ax
29f4: 0f84ceff         je     0x29c6
29f8: 48               dec    ax
29f9: 0f84d8ff         je     0x29d5
29fd: e90000           jmp    0x2a00
2a00: e91200           jmp    0x2a15
2a03: e90f00           jmp    0x2a15
2a06: 2d1001           sub    ax, 0x110
2a09: 0f8430ff         je     0x293d
2a0d: 48               dec    ax
2a0e: 0f8442ff         je     0x2954
2a12: e90000           jmp    0x2a15
2a15: b80000           mov    ax, 0
2a18: e90000           jmp    0x2a1b
2a1b: 5e               pop    si
2a1c: 5f               pop    di
2a1d: c9               leave  
2a1e: ca0a00           retf   0xa

sub_2a21:
2a21: 55               push   bp
2a22: 8bec             mov    bp, sp
2a24: b80000           mov    ax, 0
2a27: 9a1207902a       fcall  sub_0712
2a2c: 57               push   di
2a2d: 56               push   si
2a2e: 833e902d00       cmp    word ptr [0x2d90], 0
2a33: 0f840300         je     0x2a3a
2a37: e95800           jmp    0x2a92
2a3a: 6a00             push   0
2a3c: 6a00             push   0
2a3e: 1e               push   ds
2a3f: 681801           push   0x118    ; "ScreenMatePooSub"
2a42: 1e               push   ds
2a43: 680901           push   0x109    ; "ScreenMate Sub"
2a46: 680080           push   0x8000
2a49: 6a00             push   0
2a4b: 6a00             push   0
2a4d: 6a00             push   0
2a4f: 6a00             push   0
2a51: 6a00             push   0
2a53: 6a00             push   0
2a55: 6a00             push   0
2a57: ff36782d         push   word ptr [0x2d78]
2a5b: 6a00             push   0
2a5d: 6a00             push   0
2a5f: 9a7a1d0000       lcall  0, 0x1d7a    ; <CreateWindowEx>
2a64: a3902d           mov    word ptr [0x2d90], ax
2a67: 833e902d00       cmp    word ptr [0x2d90], 0
2a6c: 0f841700         je     0x2a87
2a70: ff36902d         push   word ptr [0x2d90]
2a74: 6a08             push   8
2a76: 9a961d0000       lcall  0, 0x1d96    ; <ShowWindow>
2a7b: ff36902d         push   word ptr [0x2d90]
2a7f: 9a9e1d0000       lcall  0, 0x1d9e    ; <UpdateWindow>
2a84: e90b00           jmp    0x2a92
2a87: c7065c2d0100     mov    word ptr [0x2d5c], 1
2a8d: 9ae14c9f2a       fcall  sub_4ce1
2a92: 5e               pop    si
2a93: 5f               pop    di
2a94: c9               leave  
2a95: cb               retf   

sub_2a96:
2a96: 55               push   bp
2a97: 8bec             mov    bp, sp
2a99: b80000           mov    ax, 0
2a9c: 9a1207c82a       fcall  sub_0712
2aa1: 57               push   di
2aa2: 56               push   si
2aa3: 833e902d00       cmp    word ptr [0x2d90], 0
2aa8: 0f840f00         je     0x2abb
2aac: ff36902d         push   word ptr [0x2d90]
2ab0: 9afd230000       lcall  0, 0x23fd    ; <DestroyWindow>
2ab5: c706902d0000     mov    word ptr [0x2d90], 0
2abb: 5e               pop    si
2abc: 5f               pop    di
2abd: c9               leave  
2abe: cb               retf   

sub_2abf:
2abf: 55               push   bp
2ac0: 8bec             mov    bp, sp
2ac2: b80000           mov    ax, 0
2ac5: 9a12070a2b       fcall  sub_0712
2aca: 57               push   di
2acb: 56               push   si
2acc: 833e5e2d00       cmp    word ptr [0x2d5e], 0
2ad1: 0f852800         jne    0x2afd
2ad5: ff7606           push   word ptr [bp + 6]
2ad8: 6aff             push   -1
2ada: 6a00             push   0
2adc: 6a00             push   0
2ade: 6a00             push   0
2ae0: 6a00             push   0
2ae2: 6a13             push   0x13
2ae4: 9af92a0000       lcall  0, 0x2af9    ; <SetWindowPos>
2ae9: ff7606           push   word ptr [bp + 6]
2aec: 6afe             push   -2
2aee: 6a00             push   0
2af0: 6a00             push   0
2af2: 6a00             push   0
2af4: 6a00             push   0
2af6: 6a13             push   0x13
2af8: 9a5b250000       lcall  0, 0x255b    ; <SetWindowPos>
2afd: 5e               pop    si
2afe: 5f               pop    di
2aff: c9               leave  
2b00: cb               retf   

sub_2b01:
2b01: 55               push   bp
2b02: 8bec             mov    bp, sp
2b04: b80000           mov    ax, 0
2b07: 9a1207c623       fcall  sub_0712
2b0c: 57               push   di
2b0d: 56               push   si
2b0e: 833e5e2d00       cmp    word ptr [0x2d5e], 0
2b13: 0f851500         jne    0x2b2c
2b17: ff7606           push   word ptr [bp + 6]
2b1a: ff7608           push   word ptr [bp + 8]
2b1d: 6a00             push   0
2b1f: 6a00             push   0
2b21: 6a00             push   0
2b23: 6a00             push   0
2b25: 6a13             push   0x13
2b27: 9ae52a0000       lcall  0, 0x2ae5    ; <SetWindowPos>
2b2c: 5e               pop    si
2b2d: 5f               pop    di
2b2e: c9               leave  
2b2f: cb               retf   

sub_2b30:
2b30: 55               push   bp
2b31: 8bec             mov    bp, sp
2b33: b81a00           mov    ax, 0x1a
2b36: 9a12071d2c       fcall  sub_0712
2b3b: 57               push   di
2b3c: 56               push   si
2b3d: c746ea0000       mov    word ptr [bp - 0x16], 0
2b42: c746e80000       mov    word ptr [bp - 0x18], 0
2b47: c746e60000       mov    word ptr [bp - 0x1a], 0
2b4c: ff36782d         push   word ptr [0x2d78]
2b50: ff36782d         push   word ptr [0x2d78]
2b54: 8b460a           mov    ax, word ptr [bp + 0xa]
2b57: 99               cdq    
2b58: 52               push   dx
2b59: 50               push   ax
2b5a: 6a00             push   0
2b5c: 6a02             push   2
2b5e: 9af72d0000       lcall  0, 0x2df7    ; <FindResource>
2b63: 50               push   ax
2b64: 9afd2d0000       lcall  0, 0x2dfd    ; <LoadResource>
2b69: 8946ea           mov    word ptr [bp - 0x16], ax
2b6c: 50               push   ax
2b6d: 9a062e0000       lcall  0, 0x2e06    ; <LockResource>
2b72: 8946f4           mov    word ptr [bp - 0xc], ax
2b75: 8956f6           mov    word ptr [bp - 0xa], dx
2b78: 837eea00         cmp    word ptr [bp - 0x16], 0
2b7c: 0f850600         jne    0x2b86
2b80: b80000           mov    ax, 0
2b83: e96203           jmp    0x2ee8
2b86: 8b5e08           mov    bx, word ptr [bp + 8]
2b89: c747040000       mov    word ptr [bx + 4], 0
2b8e: 8b5e08           mov    bx, word ptr [bp + 8]
2b91: c747060000       mov    word ptr [bx + 6], 0
2b96: c45ef4           les    bx, ptr [bp - 0xc]
2b99: 268b4704         mov    ax, word ptr es:[bx + 4]
2b9d: 8b5e08           mov    bx, word ptr [bp + 8]
2ba0: 894708           mov    word ptr [bx + 8], ax
2ba3: c45ef4           les    bx, ptr [bp - 0xc]
2ba6: 268b4708         mov    ax, word ptr es:[bx + 8]
2baa: 8b5e08           mov    bx, word ptr [bp + 8]
2bad: 89470a           mov    word ptr [bx + 0xa], ax
2bb0: 837e0c00         cmp    word ptr [bp + 0xc], 0
2bb4: 0f8dc501         jge    0x2d7d
2bb8: 6a02             push   2
2bba: 6a00             push   0
2bbc: 6aff             push   -1
2bbe: 9aee2b0000       lcall  0, 0x2bee    ; <GlobalAlloc>
2bc3: 8946e8           mov    word ptr [bp - 0x18], ax
2bc6: 837ee800         cmp    word ptr [bp - 0x18], 0
2bca: 0f850300         jne    0x2bd1
2bce: e9e102           jmp    0x2eb2
2bd1: ff76e8           push   word ptr [bp - 0x18]
2bd4: 9a042c0000       lcall  0, 0x2c04    ; <GlobalLock>
2bd9: 8946f0           mov    word ptr [bp - 0x10], ax
2bdc: 8956f2           mov    word ptr [bp - 0xe], dx
2bdf: 837e0cff         cmp    word ptr [bp + 0xc], -1
2be3: 0f8d7f00         jge    0x2c66
2be7: 6a02             push   2
2be9: 6a00             push   0
2beb: 6aff             push   -1
2bed: 9affff0000       lcall  0, 0xffff    ; <GlobalAlloc>
2bf2: 8946e6           mov    word ptr [bp - 0x1a], ax
2bf5: 837ee600         cmp    word ptr [bp - 0x1a], 0
2bf9: 0f850300         jne    0x2c00
2bfd: e9b202           jmp    0x2eb2
2c00: ff76e6           push   word ptr [bp - 0x1a]
2c03: 9affff0000       lcall  0, 0xffff    ; <GlobalLock>
2c08: 8946ec           mov    word ptr [bp - 0x14], ax
2c0b: 8956ee           mov    word ptr [bp - 0x12], dx
2c0e: ff76ee           push   word ptr [bp - 0x12]
2c11: ff76ec           push   word ptr [bp - 0x14]
2c14: ff76f6           push   word ptr [bp - 0xa]
2c17: ff76f4           push   word ptr [bp - 0xc]
2c1a: 9a3002382c       fcall  sub_0230
2c1f: 837e0cfe         cmp    word ptr [bp + 0xc], -2
2c23: 0f851900         jne    0x2c40
2c27: 6a02             push   2
2c29: ff76ee           push   word ptr [bp - 0x12]
2c2c: ff76ec           push   word ptr [bp - 0x14]
2c2f: ff76f2           push   word ptr [bp - 0xe]
2c32: ff76f0           push   word ptr [bp - 0x10]
2c35: 9a161a512c       fcall  sub_1a16
2c3a: 83c40a           add    sp, 0xa
2c3d: e91600           jmp    0x2c56
2c40: 6a01             push   1
2c42: ff76ee           push   word ptr [bp - 0x12]
2c45: ff76ec           push   word ptr [bp - 0x14]
2c48: ff76f2           push   word ptr [bp - 0xe]
2c4b: ff76f0           push   word ptr [bp - 0x10]
2c4e: 9a161a752c       fcall  sub_1a16
2c53: 83c40a           add    sp, 0xa
2c56: ff76e6           push   word ptr [bp - 0x1a]
2c59: 9a6e2d0000       lcall  0, 0x2d6e    ; <GlobalFree>
2c5e: c746e60000       mov    word ptr [bp - 0x1a], 0
2c63: e91100           jmp    0x2c77
2c66: ff76f2           push   word ptr [bp - 0xe]
2c69: ff76f0           push   word ptr [bp - 0x10]
2c6c: ff76f6           push   word ptr [bp - 0xa]
2c6f: ff76f4           push   word ptr [bp - 0xc]
2c72: 9a3002802c       fcall  sub_0230
2c77: ff76f2           push   word ptr [bp - 0xe]
2c7a: ff76f0           push   word ptr [bp - 0x10]
2c7d: 9a5a15a02c       fcall  sub_155a
2c82: 83c404           add    sp, 4
2c85: c45ef0           les    bx, ptr [bp - 0x10]
2c88: 260307           add    ax, word ptr es:[bx]
2c8b: 0346f0           add    ax, word ptr [bp - 0x10]
2c8e: 8b56f2           mov    dx, word ptr [bp - 0xe]
2c91: 8946fc           mov    word ptr [bp - 4], ax
2c94: 8956fe           mov    word ptr [bp - 2], dx
2c97: ff76f2           push   word ptr [bp - 0xe]
2c9a: ff76f0           push   word ptr [bp - 0x10]
2c9d: 9a4519072d       fcall  sub_1945
2ca2: 83c404           add    sp, 4
2ca5: c1e002           shl    ax, 2
2ca8: c45ef0           les    bx, ptr [bp - 0x10]
2cab: 260307           add    ax, word ptr es:[bx]
2cae: 0346f0           add    ax, word ptr [bp - 0x10]
2cb1: 8b56f2           mov    dx, word ptr [bp - 0xe]
2cb4: 8946f8           mov    word ptr [bp - 8], ax
2cb7: 8956fa           mov    word ptr [bp - 6], dx
2cba: c45ef8           les    bx, ptr [bp - 8]
2cbd: 2bc0             sub    ax, ax
2cbf: 26894702         mov    word ptr es:[bx + 2], ax
2cc3: 268907           mov    word ptr es:[bx], ax
2cc6: ff7606           push   word ptr [bp + 6]
2cc9: ff76f2           push   word ptr [bp - 0xe]
2ccc: ff76f0           push   word ptr [bp - 0x10]
2ccf: 6a00             push   0
2cd1: 6a04             push   4
2cd3: ff76fe           push   word ptr [bp - 2]
2cd6: ff76fc           push   word ptr [bp - 4]
2cd9: ff76f2           push   word ptr [bp - 0xe]
2cdc: ff76f0           push   word ptr [bp - 0x10]
2cdf: 6a00             push   0
2ce1: 9a452d0000       lcall  0, 0x2d45    ; <CreateDIBitmap>
2ce6: 8b5e08           mov    bx, word ptr [bp + 8]
2ce9: 8907             mov    word ptr [bx], ax
2ceb: 8b5e08           mov    bx, word ptr [bp + 8]
2cee: 833f00           cmp    word ptr [bx], 0
2cf1: 0f850300         jne    0x2cf8
2cf5: e9ba01           jmp    0x2eb2
2cf8: ff76f2           push   word ptr [bp - 0xe]
2cfb: ff76f0           push   word ptr [bp - 0x10]
2cfe: ff76f2           push   word ptr [bp - 0xe]
2d01: ff76f0           push   word ptr [bp - 0x10]
2d04: 9a1000122d       fcall  sub_0010
2d09: ff76f2           push   word ptr [bp - 0xe]
2d0c: ff76f0           push   word ptr [bp - 0x10]
2d0f: 9a5a15862d       fcall  sub_155a
2d14: 83c404           add    sp, 4
2d17: c45ef0           les    bx, ptr [bp - 0x10]
2d1a: 260307           add    ax, word ptr es:[bx]
2d1d: 0346f0           add    ax, word ptr [bp - 0x10]
2d20: 8b56f2           mov    dx, word ptr [bp - 0xe]
2d23: 8946fc           mov    word ptr [bp - 4], ax
2d26: 8956fe           mov    word ptr [bp - 2], dx
2d29: ff7606           push   word ptr [bp + 6]
2d2c: ff76f2           push   word ptr [bp - 0xe]
2d2f: ff76f0           push   word ptr [bp - 0x10]
2d32: 6a00             push   0
2d34: 6a04             push   4
2d36: ff76fe           push   word ptr [bp - 2]
2d39: ff76fc           push   word ptr [bp - 4]
2d3c: ff76f2           push   word ptr [bp - 0xe]
2d3f: ff76f0           push   word ptr [bp - 0x10]
2d42: 6a00             push   0
2d44: 9ab92d0000       lcall  0, 0x2db9    ; <CreateDIBitmap>
2d49: 8b5e08           mov    bx, word ptr [bp + 8]
2d4c: 894702           mov    word ptr [bx + 2], ax
2d4f: 8b5e08           mov    bx, word ptr [bp + 8]
2d52: 837f0200         cmp    word ptr [bx + 2], 0
2d56: 0f850300         jne    0x2d5d
2d5a: e95501           jmp    0x2eb2
2d5d: ff76ea           push   word ptr [bp - 0x16]
2d60: 9ad32d0000       lcall  0, 0x2dd3    ; <FreeResource>
2d65: c746ea0000       mov    word ptr [bp - 0x16], 0
2d6a: ff76e8           push   word ptr [bp - 0x18]
2d6d: 9affff0000       lcall  0, 0xffff    ; <GlobalFree>
2d72: c746e80000       mov    word ptr [bp - 0x18], 0
2d77: b80100           mov    ax, 1
2d7a: e96b01           jmp    0x2ee8
2d7d: ff76f6           push   word ptr [bp - 0xa]
2d80: ff76f4           push   word ptr [bp - 0xc]
2d83: 9a5a154e2e       fcall  sub_155a
2d88: 83c404           add    sp, 4
2d8b: c45ef4           les    bx, ptr [bp - 0xc]
2d8e: 260307           add    ax, word ptr es:[bx]
2d91: 0346f4           add    ax, word ptr [bp - 0xc]
2d94: 8b56f6           mov    dx, word ptr [bp - 0xa]
2d97: 8946fc           mov    word ptr [bp - 4], ax
2d9a: 8956fe           mov    word ptr [bp - 2], dx
2d9d: ff7606           push   word ptr [bp + 6]
2da0: ff76f6           push   word ptr [bp - 0xa]
2da3: ff76f4           push   word ptr [bp - 0xc]
2da6: 6a00             push   0
2da8: 6a04             push   4
2daa: ff76fe           push   word ptr [bp - 2]
2dad: ff76fc           push   word ptr [bp - 4]
2db0: ff76f6           push   word ptr [bp - 0xa]
2db3: ff76f4           push   word ptr [bp - 0xc]
2db6: 6a00             push   0
2db8: 9a812e0000       lcall  0, 0x2e81    ; <CreateDIBitmap>
2dbd: 8b5e08           mov    bx, word ptr [bp + 8]
2dc0: 8907             mov    word ptr [bx], ax
2dc2: 8b5e08           mov    bx, word ptr [bp + 8]
2dc5: 833f00           cmp    word ptr [bx], 0
2dc8: 0f850300         jne    0x2dcf
2dcc: e9e300           jmp    0x2eb2
2dcf: ff76ea           push   word ptr [bp - 0x16]
2dd2: 9a9d2e0000       lcall  0, 0x2e9d    ; <FreeResource>
2dd7: c746ea0000       mov    word ptr [bp - 0x16], 0
2ddc: 837e0c00         cmp    word ptr [bp + 0xc], 0
2de0: 0f84c000         je     0x2ea4
2de4: ff36782d         push   word ptr [0x2d78]
2de8: ff36782d         push   word ptr [0x2d78]
2dec: 8b460c           mov    ax, word ptr [bp + 0xc]
2def: 99               cdq    
2df0: 52               push   dx
2df1: 50               push   ax
2df2: 6a00             push   0
2df4: 6a02             push   2
2df6: 9a7d1e0000       lcall  0, 0x1e7d    ; <FindResource>
2dfb: 50               push   ax
2dfc: 9a8c1e0000       lcall  0, 0x1e8c    ; <LoadResource>
2e01: 8946ea           mov    word ptr [bp - 0x16], ax
2e04: 50               push   ax
2e05: 9a951e0000       lcall  0, 0x1e95    ; <LockResource>
2e0a: 8946f4           mov    word ptr [bp - 0xc], ax
2e0d: 8956f6           mov    word ptr [bp - 0xa], dx
2e10: 837eea00         cmp    word ptr [bp - 0x16], 0
2e14: 0f850300         jne    0x2e1b
2e18: e99700           jmp    0x2eb2
2e1b: 8b5e08           mov    bx, word ptr [bp + 8]
2e1e: c747040000       mov    word ptr [bx + 4], 0
2e23: 8b5e08           mov    bx, word ptr [bp + 8]
2e26: c747060000       mov    word ptr [bx + 6], 0
2e2b: c45ef4           les    bx, ptr [bp - 0xc]
2e2e: 268b4704         mov    ax, word ptr es:[bx + 4]
2e32: 8b5e08           mov    bx, word ptr [bp + 8]
2e35: 894708           mov    word ptr [bx + 8], ax
2e38: c45ef4           les    bx, ptr [bp - 0xc]
2e3b: 268b4708         mov    ax, word ptr es:[bx + 8]
2e3f: 8b5e08           mov    bx, word ptr [bp + 8]
2e42: 89470a           mov    word ptr [bx + 0xa], ax
2e45: ff76f6           push   word ptr [bp - 0xa]
2e48: ff76f4           push   word ptr [bp - 0xc]
2e4b: 9a5a157027       fcall  sub_155a
2e50: 83c404           add    sp, 4
2e53: c45ef4           les    bx, ptr [bp - 0xc]
2e56: 260307           add    ax, word ptr es:[bx]
2e59: 0346f4           add    ax, word ptr [bp - 0xc]
2e5c: 8b56f6           mov    dx, word ptr [bp - 0xa]
2e5f: 8946fc           mov    word ptr [bp - 4], ax
2e62: 8956fe           mov    word ptr [bp - 2], dx
2e65: ff7606           push   word ptr [bp + 6]
2e68: ff76f6           push   word ptr [bp - 0xa]
2e6b: ff76f4           push   word ptr [bp - 0xc]
2e6e: 6a00             push   0
2e70: 6a04             push   4
2e72: ff76fe           push   word ptr [bp - 2]
2e75: ff76fc           push   word ptr [bp - 4]
2e78: ff76f6           push   word ptr [bp - 0xa]
2e7b: ff76f4           push   word ptr [bp - 0xc]
2e7e: 6a00             push   0
2e80: 9affff0000       lcall  0, 0xffff    ; <CreateDIBitmap>
2e85: 8b5e08           mov    bx, word ptr [bp + 8]
2e88: 894702           mov    word ptr [bx + 2], ax
2e8b: 8b5e08           mov    bx, word ptr [bp + 8]
2e8e: 837f0200         cmp    word ptr [bx + 2], 0
2e92: 0f850300         jne    0x2e99
2e96: e91900           jmp    0x2eb2
2e99: ff76ea           push   word ptr [bp - 0x16]
2e9c: 9abe2e0000       lcall  0, 0x2ebe    ; <FreeResource>
2ea1: e90800           jmp    0x2eac
2ea4: 8b5e08           mov    bx, word ptr [bp + 8]
2ea7: c747020000       mov    word ptr [bx + 2], 0
2eac: b80100           mov    ax, 1
2eaf: e93600           jmp    0x2ee8
2eb2: 837eea00         cmp    word ptr [bp - 0x16], 0
2eb6: 0f840800         je     0x2ec2
2eba: ff76ea           push   word ptr [bp - 0x16]
2ebd: 9ad71e0000       lcall  0, 0x1ed7    ; <FreeResource>
2ec2: 837ee800         cmp    word ptr [bp - 0x18], 0
2ec6: 0f840800         je     0x2ed2
2eca: ff76e8           push   word ptr [bp - 0x18]
2ecd: 9ade2e0000       lcall  0, 0x2ede    ; <GlobalFree>
2ed2: 837ee600         cmp    word ptr [bp - 0x1a], 0
2ed6: 0f840800         je     0x2ee2
2eda: ff76e6           push   word ptr [bp - 0x1a]
2edd: 9a5a2c0000       lcall  0, 0x2c5a    ; <GlobalFree>
2ee2: b80000           mov    ax, 0
2ee5: e90000           jmp    0x2ee8
2ee8: 5e               pop    si
2ee9: 5f               pop    di
2eea: c9               leave  
2eeb: cb               retf   

sub_2eec:
2eec: 55               push   bp
2eed: 8bec             mov    bp, sp
2eef: b80000           mov    ax, 0
2ef2: 9a12073f2f       fcall  sub_0712
2ef7: 57               push   di
2ef8: 56               push   si
2ef9: 8b5e06           mov    bx, word ptr [bp + 6]
2efc: 833f00           cmp    word ptr [bx], 0
2eff: 0f840a00         je     0x2f0d
2f03: 8b5e06           mov    bx, word ptr [bp + 6]
2f06: ff37             push   word ptr [bx]
2f08: 9a1f2f0000       lcall  0, 0x2f1f    ; <DeleteObject>
2f0d: 8b5e06           mov    bx, word ptr [bp + 6]
2f10: 837f0200         cmp    word ptr [bx + 2], 0
2f14: 0f840b00         je     0x2f23
2f18: 8b5e06           mov    bx, word ptr [bp + 6]
2f1b: ff7702           push   word ptr [bx + 2]
2f1e: 9ad3250000       lcall  0, 0x25d3    ; <DeleteObject>
2f23: 8b5e06           mov    bx, word ptr [bp + 6]
2f26: c7070000         mov    word ptr [bx], 0
2f2a: 8b5e06           mov    bx, word ptr [bp + 6]
2f2d: c747020000       mov    word ptr [bx + 2], 0
2f32: 5e               pop    si
2f33: 5f               pop    di
2f34: c9               leave  
2f35: cb               retf   

sub_2f36:
2f36: 55               push   bp
2f37: 8bec             mov    bp, sp
2f39: b80000           mov    ax, 0
2f3c: 9a1207c02f       fcall  sub_0712
2f41: 57               push   di
2f42: 56               push   si
2f43: c706982d0100     mov    word ptr [0x2d98], 1
2f49: c7065e2d0000     mov    word ptr [0x2d5e], 0
2f4f: c706cc230000     mov    word ptr [0x23cc], 0
2f55: c7067a2d0000     mov    word ptr [0x2d7a], 0
2f5b: 1e               push   ds
2f5c: 683a01           push   0x13a    ; "Stray"
2f5f: 1e               push   ds
2f60: 683401           push   0x134    ; "Sound"
2f63: 6a00             push   0
2f65: 1e               push   ds
2f66: 682901           push   0x129    ; "scmate.ini"
2f69: 9a802f0000       lcall  0, 0x2f80    ; <GetPrivateProfileInt>
2f6e: a37a2d           mov    word ptr [0x2d7a], ax
2f71: 1e               push   ds
2f72: 685101           push   0x151    ; "Stray"
2f75: 1e               push   ds
2f76: 684b01           push   0x14b    ; "Alarm"
2f79: 6a00             push   0
2f7b: 1e               push   ds
2f7c: 684001           push   0x140    ; "scmate.ini"
2f7f: 9a962f0000       lcall  0, 0x2f96    ; <GetPrivateProfileInt>
2f84: a3cc23           mov    word ptr [0x23cc], ax
2f87: 1e               push   ds
2f88: 686a01           push   0x16a    ; "Stray"
2f8b: 1e               push   ds
2f8c: 686201           push   0x162    ; "NoSleep"
2f8f: 6a00             push   0
2f91: 1e               push   ds
2f92: 685701           push   0x157    ; "scmate.ini"
2f95: 9aac2f0000       lcall  0, 0x2fac    ; <GetPrivateProfileInt>
2f9a: a3d623           mov    word ptr [0x23d6], ax
2f9d: 1e               push   ds
2f9e: 688201           push   0x182    ; "Stray"
2fa1: 1e               push   ds
2fa2: 687b01           push   0x17b    ; "GForce"
2fa5: 6a01             push   1
2fa7: 1e               push   ds
2fa8: 687001           push   0x170    ; "scmate.ini"
2fab: 9affff0000       lcall  0, 0xffff    ; <GetPrivateProfileInt>
2fb0: a3622d           mov    word ptr [0x2d62], ax
2fb3: 5e               pop    si
2fb4: 5f               pop    di
2fb5: c9               leave  
2fb6: cb               retf   

sub_2fb7:
2fb7: 55               push   bp
2fb8: 8bec             mov    bp, sp
2fba: b82800           mov    ax, 0x28
2fbd: 9a12070130       fcall  sub_0712
2fc2: 57               push   di
2fc3: 56               push   si
2fc4: ff760e           push   word ptr [bp + 0xe]
2fc7: 1e               push   ds
2fc8: 688801           push   0x188
2fcb: 8d46d8           lea    ax, [bp - 0x28]
2fce: 16               push   ss
2fcf: 50               push   ax
2fd0: 9affff0000       lcall  0, 0xffff    ; <wsprintf>
2fd5: 83c40a           add    sp, 0xa
2fd8: ff7608           push   word ptr [bp + 8]
2fdb: ff7606           push   word ptr [bp + 6]
2fde: ff760c           push   word ptr [bp + 0xc]
2fe1: ff760a           push   word ptr [bp + 0xa]
2fe4: 8d46d8           lea    ax, [bp - 0x28]
2fe7: 16               push   ss
2fe8: 50               push   ax
2fe9: ff7612           push   word ptr [bp + 0x12]
2fec: ff7610           push   word ptr [bp + 0x10]
2fef: 9affff0000       lcall  0, 0xffff    ; <WritePrivateProfileString>
2ff4: 5e               pop    si
2ff5: 5f               pop    di
2ff6: c9               leave  
2ff7: cb               retf   

sub_2ff8:
2ff8: 55               push   bp
2ff9: 8bec             mov    bp, sp
2ffb: b80000           mov    ax, 0
2ffe: 9a12071830       fcall  sub_0712
3003: 57               push   di
3004: 56               push   si
3005: 1e               push   ds
3006: 688b01           push   0x18b    ; "scmate.ini"
3009: ff367a2d         push   word ptr [0x2d7a]
300d: 1e               push   ds
300e: 689601           push   0x196    ; "Sound"
3011: 1e               push   ds
3012: 689c01           push   0x19c    ; "Stray"
3015: 9ab72f3030       fcall  sub_2fb7
301a: 83c40e           add    sp, 0xe
301d: 1e               push   ds
301e: 68a201           push   0x1a2    ; "scmate.ini"
3021: ff36cc23         push   word ptr [0x23cc]
3025: 1e               push   ds
3026: 68ad01           push   0x1ad    ; "Alarm"
3029: 1e               push   ds
302a: 68b301           push   0x1b3    ; "Stray"
302d: 9ab72f4830       fcall  sub_2fb7
3032: 83c40e           add    sp, 0xe
3035: 1e               push   ds
3036: 68b901           push   0x1b9    ; "scmate.ini"
3039: ff36d623         push   word ptr [0x23d6]
303d: 1e               push   ds
303e: 68c401           push   0x1c4    ; "NoSleep"
3041: 1e               push   ds
3042: 68cc01           push   0x1cc    ; "Stray"
3045: 9ab72f6030       fcall  sub_2fb7
304a: 83c40e           add    sp, 0xe
304d: 1e               push   ds
304e: 68d201           push   0x1d2    ; "scmate.ini"
3051: ff36622d         push   word ptr [0x2d62]
3055: 1e               push   ds
3056: 68dd01           push   0x1dd    ; "GForce"
3059: 1e               push   ds
305a: 68e401           push   0x1e4    ; "Stray"
305d: 9ab72f392b       fcall  sub_2fb7
3062: 83c40e           add    sp, 0xe
3065: 5e               pop    si
3066: 5f               pop    di
3067: c9               leave  
3068: cb               retf   
3069: 00558b           add    byte ptr [di - 0x75], dl
306c: ec               in     al, dx
306d: b80200           mov    ax, 2
3070: 9a12072231       fcall  sub_0712
3075: 57               push   di
3076: 56               push   si
3077: ff7606           push   word ptr [bp + 6]
307a: 9add320000       lcall  0, 0x32dd    ; <GetDC>
307f: 8946fe           mov    word ptr [bp - 2], ax
3082: ff76fe           push   word ptr [bp - 2]
3085: 6a64             push   0x64
3087: 6a64             push   0x64
3089: 9aa5300000       lcall  0, 0x30a5    ; <CreateCompatibleBitmap>
308e: a3d60a           mov    word ptr [0xad6], ax
3091: 833ed60a00       cmp    word ptr [0xad6], 0
3096: 0f850300         jne    0x309d
309a: e96700           jmp    0x3104
309d: ff76fe           push   word ptr [bp - 2]
30a0: 6a64             push   0x64
30a2: 6a64             push   0x64
30a4: 9ac0300000       lcall  0, 0x30c0    ; <CreateCompatibleBitmap>
30a9: a3d80a           mov    word ptr [0xad8], ax
30ac: 833ed80a00       cmp    word ptr [0xad8], 0
30b1: 0f850300         jne    0x30b8
30b5: e94c00           jmp    0x3104
30b8: ff76fe           push   word ptr [bp - 2]
30bb: 6a64             push   0x64
30bd: 6a64             push   0x64
30bf: 9affff0000       lcall  0, 0xffff    ; <CreateCompatibleBitmap>
30c4: a3da0a           mov    word ptr [0xada], ax
30c7: 833eda0a00       cmp    word ptr [0xada], 0
30cc: 0f850300         jne    0x30d3
30d0: e93100           jmp    0x3104
30d3: c7066c2d0000     mov    word ptr [0x2d6c], 0
30d9: c7066e2d0000     mov    word ptr [0x2d6e], 0
30df: 6a00             push   0
30e1: 9aec300000       lcall  0, 0x30ec    ; <GetSystemMetrics>
30e6: a3702d           mov    word ptr [0x2d70], ax
30e9: 6a01             push   1
30eb: 9affff0000       lcall  0, 0xffff    ; <GetSystemMetrics>
30f0: a3722d           mov    word ptr [0x2d72], ax
30f3: ff7606           push   word ptr [bp + 6]
30f6: ff76fe           push   word ptr [bp - 2]
30f9: 9a0b310000       lcall  0, 0x310b    ; <ReleaseDC>
30fe: b80100           mov    ax, 1
3101: e91100           jmp    0x3115
3104: ff7606           push   word ptr [bp + 6]
3107: ff76fe           push   word ptr [bp - 2]
310a: 9a1c1f0000       lcall  0, 0x1f1c    ; <ReleaseDC>
310f: b80000           mov    ax, 0
3112: e90000           jmp    0x3115
3115: 5e               pop    si
3116: 5f               pop    di
3117: c9               leave  
3118: cb               retf   

sub_3119:
3119: 55               push   bp
311a: 8bec             mov    bp, sp
311c: b80000           mov    ax, 0
311f: 9a1207b131       fcall  sub_0712
3124: 57               push   di
3125: 56               push   si
3126: ff36d60a         push   word ptr [0xad6]
312a: 9a34310000       lcall  0, 0x3134    ; <DeleteObject>
312f: ff36d80a         push   word ptr [0xad8]
3133: 9a3d310000       lcall  0, 0x313d    ; <DeleteObject>
3138: ff36da0a         push   word ptr [0xada]
313c: 9a4f310000       lcall  0, 0x314f    ; <DeleteObject>
3141: 833ed42300       cmp    word ptr [0x23d4], 0
3146: 0f840f00         je     0x3159
314a: ff36d423         push   word ptr [0x23d4]
314e: 9a67310000       lcall  0, 0x3167    ; <DeleteObject>
3153: c706d4230000     mov    word ptr [0x23d4], 0
3159: 833e642d00       cmp    word ptr [0x2d64], 0
315e: 0f840f00         je     0x3171
3162: ff36642d         push   word ptr [0x2d64]
3166: 9a7f310000       lcall  0, 0x317f    ; <DeleteObject>
316b: c706642d0000     mov    word ptr [0x2d64], 0
3171: 833ed22300       cmp    word ptr [0x23d2], 0
3176: 0f840f00         je     0x3189
317a: ff36d223         push   word ptr [0x23d2]
317e: 9a97310000       lcall  0, 0x3197    ; <DeleteObject>
3183: c706d2230000     mov    word ptr [0x23d2], 0
3189: 833ed82300       cmp    word ptr [0x23d8], 0
318e: 0f840f00         je     0x31a1
3192: ff36d823         push   word ptr [0x23d8]
3196: 9a092f0000       lcall  0, 0x2f09    ; <DeleteObject>
319b: c706d8230000     mov    word ptr [0x23d8], 0
31a1: e90000           jmp    0x31a4
31a4: 5e               pop    si
31a5: 5f               pop    di
31a6: c9               leave  
31a7: cb               retf   

sub_31a8:
31a8: 55               push   bp
31a9: 8bec             mov    bp, sp
31ab: b80000           mov    ax, 0
31ae: 9a12074032       fcall  sub_0712
31b3: 57               push   di
31b4: 56               push   si
31b5: 8b4606           mov    ax, word ptr [bp + 6]
31b8: a3fa0a           mov    word ptr [0xafa], ax
31bb: 8b4608           mov    ax, word ptr [bp + 8]
31be: a3fc0a           mov    word ptr [0xafc], ax
31c1: 8b5e0a           mov    bx, word ptr [bp + 0xa]
31c4: 8bc3             mov    ax, bx
31c6: d1e3             shl    bx, 1
31c8: 03d8             add    bx, ax
31ca: c1e302           shl    bx, 2
31cd: 8b87c20b         mov    ax, word ptr [bx + 0xbc2]
31d1: a3dc0a           mov    word ptr [0xadc], ax
31d4: 8b5e0a           mov    bx, word ptr [bp + 0xa]
31d7: 8bc3             mov    ax, bx
31d9: d1e3             shl    bx, 1
31db: 03d8             add    bx, ax
31dd: c1e302           shl    bx, 2
31e0: 8b87c40b         mov    ax, word ptr [bx + 0xbc4]
31e4: a3de0a           mov    word ptr [0xade], ax
31e7: 8b5e0a           mov    bx, word ptr [bp + 0xa]
31ea: 8bc3             mov    ax, bx
31ec: d1e3             shl    bx, 1
31ee: 03d8             add    bx, ax
31f0: c1e302           shl    bx, 2
31f3: 8b87c60b         mov    ax, word ptr [bx + 0xbc6]
31f7: a3e00a           mov    word ptr [0xae0], ax
31fa: 8b5e0a           mov    bx, word ptr [bp + 0xa]
31fd: 8bc3             mov    ax, bx
31ff: d1e3             shl    bx, 1
3201: 03d8             add    bx, ax
3203: c1e302           shl    bx, 2
3206: 8b87c80b         mov    ax, word ptr [bx + 0xbc8]
320a: a3e20a           mov    word ptr [0xae2], ax
320d: 8b5e0a           mov    bx, word ptr [bp + 0xa]
3210: 8bc3             mov    ax, bx
3212: d1e3             shl    bx, 1
3214: 03d8             add    bx, ax
3216: c1e302           shl    bx, 2
3219: 8b87ca0b         mov    ax, word ptr [bx + 0xbca]
321d: a3fe0a           mov    word ptr [0xafe], ax
3220: 8b5e0a           mov    bx, word ptr [bp + 0xa]
3223: 8bc3             mov    ax, bx
3225: d1e3             shl    bx, 1
3227: 03d8             add    bx, ax
3229: c1e302           shl    bx, 2
322c: 8b87cc0b         mov    ax, word ptr [bx + 0xbcc]
3230: a3000b           mov    word ptr [0xb00], ax
3233: 5e               pop    si
3234: 5f               pop    di
3235: c9               leave  
3236: cb               retf   

sub_3237:
3237: 55               push   bp
3238: 8bec             mov    bp, sp
323a: b80000           mov    ax, 0
323d: 9a12078d32       fcall  sub_0712
3242: 57               push   di
3243: 56               push   si
3244: c706120b0000     mov    word ptr [0xb12], 0
324a: c706140b0000     mov    word ptr [0xb14], 0
3250: c706160b0000     mov    word ptr [0xb16], 0
3256: c706180b0000     mov    word ptr [0xb18], 0
325c: ff7606           push   word ptr [bp + 6]
325f: 6a00             push   0
3261: 6a00             push   0
3263: 6a00             push   0
3265: 6a00             push   0
3267: 6a01             push   1
3269: 9affff0000       lcall  0, 0xffff    ; <MoveWindow>
326e: c706f40a0100     mov    word ptr [0xaf4], 1
3274: c706da230100     mov    word ptr [0x23da], 1
327a: c706f80a0000     mov    word ptr [0xaf8], 0
3280: 5e               pop    si
3281: 5f               pop    di
3282: c9               leave  
3283: cb               retf   

sub_3284:
3284: 55               push   bp
3285: 8bec             mov    bp, sp
3287: b81e00           mov    ax, 0x1e
328a: 9a1207f52e       fcall  sub_0712
328f: 57               push   di
3290: 56               push   si
3291: 833ef20a00       cmp    word ptr [0xaf2], 0
3296: 0f840300         je     0x329d
329a: e97604           jmp    0x3713
329d: a1fa0a           mov    ax, word ptr [0xafa]
32a0: 3906120b         cmp    word ptr [0xb12], ax
32a4: 0f852d00         jne    0x32d5
32a8: a1fc0a           mov    ax, word ptr [0xafc]
32ab: 3906140b         cmp    word ptr [0xb14], ax
32af: 0f852200         jne    0x32d5
32b3: a1dc0a           mov    ax, word ptr [0xadc]
32b6: 3906f80a         cmp    word ptr [0xaf8], ax
32ba: 0f851700         jne    0x32d5
32be: a1e00a           mov    ax, word ptr [0xae0]
32c1: 3906e80a         cmp    word ptr [0xae8], ax
32c5: 0f850c00         jne    0x32d5
32c9: 833e922d00       cmp    word ptr [0x2d92], 0
32ce: 0f850300         jne    0x32d5
32d2: e93e04           jmp    0x3713
32d5: 8336f00a01       xor    word ptr [0xaf0], 1
32da: 6a00             push   0
32dc: 9a691e0000       lcall  0, 0x1e69    ; <GetDC>
32e1: 8946fe           mov    word ptr [bp - 2], ax
32e4: ff76fe           push   word ptr [bp - 2]
32e7: ff366a2d         push   word ptr [0x2d6a]
32eb: 6a00             push   0
32ed: 9a12330000       lcall  0, 0x3312    ; <SelectPalette>
32f2: ff76fe           push   word ptr [bp - 2]
32f5: 9a01330000       lcall  0, 0x3301    ; <CreateCompatibleDC>
32fa: 8946fc           mov    word ptr [bp - 4], ax
32fd: ff76fe           push   word ptr [bp - 2]
3300: 9affff0000       lcall  0, 0xffff    ; <CreateCompatibleDC>
3305: 8946fa           mov    word ptr [bp - 6], ax
3308: ff76fa           push   word ptr [bp - 6]
330b: ff366a2d         push   word ptr [0x2d6a]
330f: 6a00             push   0
3311: 9a20330000       lcall  0, 0x3320    ; <SelectPalette>
3316: ff76fc           push   word ptr [bp - 4]
3319: ff366a2d         push   word ptr [0x2d6a]
331d: 6a00             push   0
331f: 9ae51e0000       lcall  0, 0x1ee5    ; <SelectPalette>
3324: a1120b           mov    ax, word ptr [0xb12]
3327: 3b06fa0a         cmp    ax, word ptr [0xafa]
332b: 0f8d0300         jge    0x3332
332f: a1fa0a           mov    ax, word ptr [0xafa]
3332: 8946ea           mov    word ptr [bp - 0x16], ax
3335: a1140b           mov    ax, word ptr [0xb14]
3338: 3b06fc0a         cmp    ax, word ptr [0xafc]
333c: 0f8d0300         jge    0x3343
3340: a1fc0a           mov    ax, word ptr [0xafc]
3343: 8946ec           mov    word ptr [bp - 0x14], ax
3346: a1160b           mov    ax, word ptr [0xb16]
3349: 0306120b         add    ax, word ptr [0xb12]
334d: 8b0efe0a         mov    cx, word ptr [0xafe]
3351: 030efa0a         add    cx, word ptr [0xafa]
3355: 3bc1             cmp    ax, cx
3357: 0f8e0200         jle    0x335d
335b: 8bc1             mov    ax, cx
335d: 2b46ea           sub    ax, word ptr [bp - 0x16]
3360: 8946ee           mov    word ptr [bp - 0x12], ax
3363: a1140b           mov    ax, word ptr [0xb14]
3366: 0306180b         add    ax, word ptr [0xb18]
336a: 8b0efc0a         mov    cx, word ptr [0xafc]
336e: 030e000b         add    cx, word ptr [0xb00]
3372: 3bc1             cmp    ax, cx
3374: 0f8e0200         jle    0x337a
3378: 8bc1             mov    ax, cx
337a: 2b46ec           sub    ax, word ptr [bp - 0x14]
337d: 8946f0           mov    word ptr [bp - 0x10], ax
3380: 837eee00         cmp    word ptr [bp - 0x12], 0
3384: 0f8e0800         jle    0x3390
3388: 837ef000         cmp    word ptr [bp - 0x10], 0
338c: 0f8f6600         jg     0x33f6
3390: c7061a0b0100     mov    word ptr [0xb1a], 1
3396: 833ef40a00       cmp    word ptr [0xaf4], 0
339b: 0f840600         je     0x33a5
339f: c706f40a0000     mov    word ptr [0xaf4], 0
33a5: a1fa0a           mov    ax, word ptr [0xafa]
33a8: a3020b           mov    word ptr [0xb02], ax
33ab: a1fc0a           mov    ax, word ptr [0xafc]
33ae: a3040b           mov    word ptr [0xb04], ax
33b1: a1fe0a           mov    ax, word ptr [0xafe]
33b4: a3060b           mov    word ptr [0xb06], ax
33b7: a1000b           mov    ax, word ptr [0xb00]
33ba: a3080b           mov    word ptr [0xb08], ax
33bd: ff76fc           push   word ptr [bp - 4]
33c0: 8b1ef00a         mov    bx, word ptr [0xaf0]
33c4: d1e3             shl    bx, 1
33c6: ffb7d60a         push   word ptr [bx + 0xad6]
33ca: 9affff0000       lcall  0, 0xffff    ; <SelectObject>
33cf: ff76fc           push   word ptr [bp - 4]
33d2: 6a00             push   0
33d4: 6a00             push   0
33d6: ff36060b         push   word ptr [0xb06]
33da: ff36080b         push   word ptr [0xb08]
33de: ff76fe           push   word ptr [bp - 2]
33e1: ff36020b         push   word ptr [0xb02]
33e5: ff36040b         push   word ptr [0xb04]
33e9: 68cc00           push   0xcc
33ec: 6a20             push   0x20
33ee: 9affff0000       lcall  0, 0xffff    ; <BitBlt>
33f3: e99001           jmp    0x3586
33f6: c7061a0b0000     mov    word ptr [0xb1a], 0
33fc: a1120b           mov    ax, word ptr [0xb12]
33ff: 3b06fa0a         cmp    ax, word ptr [0xafa]
3403: 0f8e0300         jle    0x340a
3407: a1fa0a           mov    ax, word ptr [0xafa]
340a: a3020b           mov    word ptr [0xb02], ax
340d: a1140b           mov    ax, word ptr [0xb14]
3410: 3b06fc0a         cmp    ax, word ptr [0xafc]
3414: 0f8e0300         jle    0x341b
3418: a1fc0a           mov    ax, word ptr [0xafc]
341b: a3040b           mov    word ptr [0xb04], ax
341e: a1160b           mov    ax, word ptr [0xb16]
3421: 0306120b         add    ax, word ptr [0xb12]
3425: 8b0efe0a         mov    cx, word ptr [0xafe]
3429: 030efa0a         add    cx, word ptr [0xafa]
342d: 3bc1             cmp    ax, cx
342f: 0f8d0200         jge    0x3435
3433: 8bc1             mov    ax, cx
3435: 2b06020b         sub    ax, word ptr [0xb02]
3439: a3060b           mov    word ptr [0xb06], ax
343c: a1140b           mov    ax, word ptr [0xb14]
343f: 0306180b         add    ax, word ptr [0xb18]
3443: 8b0efc0a         mov    cx, word ptr [0xafc]
3447: 030e000b         add    cx, word ptr [0xb00]
344b: 3bc1             cmp    ax, cx
344d: 0f8d0200         jge    0x3453
3451: 8bc1             mov    ax, cx
3453: 2b06040b         sub    ax, word ptr [0xb04]
3457: a3080b           mov    word ptr [0xb08], ax
345a: ff76fc           push   word ptr [bp - 4]
345d: 8b1ef00a         mov    bx, word ptr [0xaf0]
3461: d1e3             shl    bx, 1
3463: ffb7d60a         push   word ptr [bx + 0xad6]
3467: 9a60350000       lcall  0, 0x3560    ; <SelectObject>
346c: ff76fc           push   word ptr [bp - 4]
346f: 6a00             push   0
3471: 6a00             push   0
3473: ff36060b         push   word ptr [0xb06]
3477: ff36080b         push   word ptr [0xb08]
347b: ff76fe           push   word ptr [bp - 2]
347e: ff36020b         push   word ptr [0xb02]
3482: ff36040b         push   word ptr [0xb04]
3486: 68cc00           push   0xcc
3489: 6a20             push   0x20
348b: 9a82350000       lcall  0, 0x3582    ; <BitBlt>
3490: a10a0b           mov    ax, word ptr [0xb0a]
3493: 3b06020b         cmp    ax, word ptr [0xb02]
3497: 0f8d0300         jge    0x349e
349b: a1020b           mov    ax, word ptr [0xb02]
349e: 8946e2           mov    word ptr [bp - 0x1e], ax
34a1: a10c0b           mov    ax, word ptr [0xb0c]
34a4: 3b06040b         cmp    ax, word ptr [0xb04]
34a8: 0f8d0300         jge    0x34af
34ac: a1040b           mov    ax, word ptr [0xb04]
34af: 8946e4           mov    word ptr [bp - 0x1c], ax
34b2: a10e0b           mov    ax, word ptr [0xb0e]
34b5: 03060a0b         add    ax, word ptr [0xb0a]
34b9: 8b0e060b         mov    cx, word ptr [0xb06]
34bd: 030e020b         add    cx, word ptr [0xb02]
34c1: 3bc1             cmp    ax, cx
34c3: 0f8e0200         jle    0x34c9
34c7: 8bc1             mov    ax, cx
34c9: 2b46e2           sub    ax, word ptr [bp - 0x1e]
34cc: 8946e6           mov    word ptr [bp - 0x1a], ax
34cf: a10c0b           mov    ax, word ptr [0xb0c]
34d2: 0306100b         add    ax, word ptr [0xb10]
34d6: 8b0e040b         mov    cx, word ptr [0xb04]
34da: 030e080b         add    cx, word ptr [0xb08]
34de: 3bc1             cmp    ax, cx
34e0: 0f8e0200         jle    0x34e6
34e4: 8bc1             mov    ax, cx
34e6: 2b46e4           sub    ax, word ptr [bp - 0x1c]
34e9: 8946e8           mov    word ptr [bp - 0x18], ax
34ec: 8b46e2           mov    ax, word ptr [bp - 0x1e]
34ef: 2b06020b         sub    ax, word ptr [0xb02]
34f3: 3d0000           cmp    ax, 0
34f6: 0f8d0300         jge    0x34fd
34fa: b80000           mov    ax, 0
34fd: 8946ea           mov    word ptr [bp - 0x16], ax
3500: 8b46e4           mov    ax, word ptr [bp - 0x1c]
3503: 2b06040b         sub    ax, word ptr [0xb04]
3507: 3d0000           cmp    ax, 0
350a: 0f8d0300         jge    0x3511
350e: b80000           mov    ax, 0
3511: 8946ec           mov    word ptr [bp - 0x14], ax
3514: 8b46e2           mov    ax, word ptr [bp - 0x1e]
3517: 2b060a0b         sub    ax, word ptr [0xb0a]
351b: 3d0000           cmp    ax, 0
351e: 0f8d0300         jge    0x3525
3522: b80000           mov    ax, 0
3525: 8946f2           mov    word ptr [bp - 0xe], ax
3528: 8b46e4           mov    ax, word ptr [bp - 0x1c]
352b: 2b060c0b         sub    ax, word ptr [0xb0c]
352f: 3d0000           cmp    ax, 0
3532: 0f8d0300         jge    0x3539
3536: b80000           mov    ax, 0
3539: 8946f4           mov    word ptr [bp - 0xc], ax
353c: 837ee600         cmp    word ptr [bp - 0x1a], 0
3540: 0f8e4200         jle    0x3586
3544: 837ee800         cmp    word ptr [bp - 0x18], 0
3548: 0f8e3a00         jle    0x3586
354c: ff76fa           push   word ptr [bp - 6]
354f: 8a1ef00a         mov    bl, byte ptr [0xaf0]
3553: 80ebff           sub    bl, 0xff
3556: 83e301           and    bx, 1
3559: d1e3             shl    bx, 1
355b: ffb7d60a         push   word ptr [bx + 0xad6]
355f: 9a97350000       lcall  0, 0x3597    ; <SelectObject>
3564: ff76fc           push   word ptr [bp - 4]
3567: ff76ea           push   word ptr [bp - 0x16]
356a: ff76ec           push   word ptr [bp - 0x14]
356d: ff76e6           push   word ptr [bp - 0x1a]
3570: ff76e8           push   word ptr [bp - 0x18]
3573: ff76fa           push   word ptr [bp - 6]
3576: ff76f2           push   word ptr [bp - 0xe]
3579: ff76f4           push   word ptr [bp - 0xc]
357c: 68cc00           push   0xcc
357f: 6a20             push   0x20
3581: 9ab7350000       lcall  0, 0x35b7    ; <BitBlt>
3586: 833edc0a00       cmp    word ptr [0xadc], 0
358b: 0f842801         je     0x36b7
358f: ff76fa           push   word ptr [bp - 6]
3592: ff36da0a         push   word ptr [0xada]
3596: 9af4350000       lcall  0, 0x35f4    ; <SelectObject>
359b: ff76fa           push   word ptr [bp - 6]
359e: 6a00             push   0
35a0: 6a00             push   0
35a2: ff36060b         push   word ptr [0xb06]
35a6: ff36080b         push   word ptr [0xb08]
35aa: ff76fc           push   word ptr [bp - 4]
35ad: 6a00             push   0
35af: 6a00             push   0
35b1: 68cc00           push   0xcc
35b4: 6a20             push   0x20
35b6: 9a1b360000       lcall  0, 0x361b    ; <BitBlt>
35bb: a1fa0a           mov    ax, word ptr [0xafa]
35be: 2b06020b         sub    ax, word ptr [0xb02]
35c2: 3d0000           cmp    ax, 0
35c5: 0f8d0300         jge    0x35cc
35c9: b80000           mov    ax, 0
35cc: 8946ea           mov    word ptr [bp - 0x16], ax
35cf: a1fc0a           mov    ax, word ptr [0xafc]
35d2: 2b06040b         sub    ax, word ptr [0xb04]
35d6: 3d0000           cmp    ax, 0
35d9: 0f8d0300         jge    0x35e0
35dd: b80000           mov    ax, 0
35e0: 8946ec           mov    word ptr [bp - 0x14], ax
35e3: 833ede0a00       cmp    word ptr [0xade], 0
35e8: 0f846900         je     0x3655
35ec: ff76fc           push   word ptr [bp - 4]
35ef: ff36de0a         push   word ptr [0xade]
35f3: 9a27360000       lcall  0, 0x3627    ; <SelectObject>
35f8: ff76fa           push   word ptr [bp - 6]
35fb: ff76ea           push   word ptr [bp - 0x16]
35fe: ff76ec           push   word ptr [bp - 0x14]
3601: ff36fe0a         push   word ptr [0xafe]
3605: ff36000b         push   word ptr [0xb00]
3609: ff76fc           push   word ptr [bp - 4]
360c: ff36e00a         push   word ptr [0xae0]
3610: ff36e20a         push   word ptr [0xae2]
3614: 688800           push   0x88
3617: 68c600           push   0xc6
361a: 9a4e360000       lcall  0, 0x364e    ; <BitBlt>
361f: ff76fc           push   word ptr [bp - 4]
3622: ff36dc0a         push   word ptr [0xadc]
3626: 9a5d360000       lcall  0, 0x365d    ; <SelectObject>
362b: ff76fa           push   word ptr [bp - 6]
362e: ff76ea           push   word ptr [bp - 0x16]
3631: ff76ec           push   word ptr [bp - 0x14]
3634: ff36fe0a         push   word ptr [0xafe]
3638: ff36000b         push   word ptr [0xb00]
363c: ff76fc           push   word ptr [bp - 4]
363f: ff36e00a         push   word ptr [0xae0]
3643: ff36e20a         push   word ptr [0xae2]
3647: 68ee00           push   0xee
364a: 688600           push   0x86
364d: 9a83360000       lcall  0, 0x3683    ; <BitBlt>
3652: e93200           jmp    0x3687
3655: ff76fc           push   word ptr [bp - 4]
3658: ff36dc0a         push   word ptr [0xadc]
365c: 9a78370000       lcall  0, 0x3778    ; <SelectObject>
3661: ff76fa           push   word ptr [bp - 6]
3664: ff76ea           push   word ptr [bp - 0x16]
3667: ff76ec           push   word ptr [bp - 0x14]
366a: ff36fe0a         push   word ptr [0xafe]
366e: ff36000b         push   word ptr [0xb00]
3672: ff76fc           push   word ptr [bp - 4]
3675: ff36e00a         push   word ptr [0xae0]
3679: ff36e20a         push   word ptr [0xae2]
367d: 68cc00           push   0xcc
3680: 6a20             push   0x20
3682: 9a98370000       lcall  0, 0x3798    ; <BitBlt>
3687: c706f20a0100     mov    word ptr [0xaf2], 1
368d: c7067e2d0100     mov    word ptr [0x2d7e], 1
3693: ff7606           push   word ptr [bp + 6]
3696: ff36020b         push   word ptr [0xb02]
369a: ff36040b         push   word ptr [0xb04]
369e: ff36060b         push   word ptr [0xb06]
36a2: a1080b           mov    ax, word ptr [0xb08]
36a5: 0306922d         add    ax, word ptr [0x2d92]
36a9: 50               push   ax
36aa: 6a01             push   1
36ac: 9a6a320000       lcall  0, 0x326a    ; <MoveWindow>
36b1: c7067e2d0000     mov    word ptr [0x2d7e], 0
36b7: ff76fc           push   word ptr [bp - 4]
36ba: 9ac3360000       lcall  0, 0x36c3    ; <DeleteDC>
36bf: ff76fa           push   word ptr [bp - 6]
36c2: 9affff0000       lcall  0, 0xffff    ; <DeleteDC>
36c7: a1020b           mov    ax, word ptr [0xb02]
36ca: a30a0b           mov    word ptr [0xb0a], ax
36cd: a1040b           mov    ax, word ptr [0xb04]
36d0: a30c0b           mov    word ptr [0xb0c], ax
36d3: a1060b           mov    ax, word ptr [0xb06]
36d6: a30e0b           mov    word ptr [0xb0e], ax
36d9: a1080b           mov    ax, word ptr [0xb08]
36dc: a3100b           mov    word ptr [0xb10], ax
36df: a1fa0a           mov    ax, word ptr [0xafa]
36e2: a3120b           mov    word ptr [0xb12], ax
36e5: a1fc0a           mov    ax, word ptr [0xafc]
36e8: a3140b           mov    word ptr [0xb14], ax
36eb: a1fe0a           mov    ax, word ptr [0xafe]
36ee: a3160b           mov    word ptr [0xb16], ax
36f1: a1000b           mov    ax, word ptr [0xb00]
36f4: a3180b           mov    word ptr [0xb18], ax
36f7: a1dc0a           mov    ax, word ptr [0xadc]
36fa: a3f80a           mov    word ptr [0xaf8], ax
36fd: a1e00a           mov    ax, word ptr [0xae0]
3700: a3e80a           mov    word ptr [0xae8], ax
3703: a1e20a           mov    ax, word ptr [0xae2]
3706: a3ea0a           mov    word ptr [0xaea], ax
3709: 6a00             push   0
370b: ff76fe           push   word ptr [bp - 2]
370e: 9afa300000       lcall  0, 0x30fa    ; <ReleaseDC>
3713: 5e               pop    si
3714: 5f               pop    di
3715: c9               leave  
3716: cb               retf   

sub_3717:
3717: 55               push   bp
3718: 8bec             mov    bp, sp
371a: b80e00           mov    ax, 0xe
371d: 9a12077330       fcall  sub_0712
3722: 57               push   di
3723: 56               push   si
3724: 833ef20a00       cmp    word ptr [0xaf2], 0
3729: 0f850300         jne    0x3730
372d: e96902           jmp    0x3999
3730: c706f20a0000     mov    word ptr [0xaf2], 0
3736: ff7606           push   word ptr [bp + 6]
3739: 9a7b300000       lcall  0, 0x307b    ; <GetDC>
373e: 8946fe           mov    word ptr [bp - 2], ax
3741: ff76fe           push   word ptr [bp - 2]
3744: ff366a2d         push   word ptr [0x2d6a]
3748: 6a00             push   0
374a: 9a6c370000       lcall  0, 0x376c    ; <SelectPalette>
374f: ff76fe           push   word ptr [bp - 2]
3752: 9aed1e0000       lcall  0, 0x1eed    ; <RealizePalette>
3757: ff76fe           push   word ptr [bp - 2]
375a: 9af6320000       lcall  0, 0x32f6    ; <CreateCompatibleDC>
375f: 8946fc           mov    word ptr [bp - 4], ax
3762: ff76fc           push   word ptr [bp - 4]
3765: ff366a2d         push   word ptr [0x2d6a]
3769: 6a00             push   0
376b: 9aee320000       lcall  0, 0x32ee    ; <SelectPalette>
3770: ff76fc           push   word ptr [bp - 4]
3773: ff36da0a         push   word ptr [0xada]
3777: 9acb330000       lcall  0, 0x33cb    ; <SelectObject>
377c: ff76fe           push   word ptr [bp - 2]
377f: 6a00             push   0
3781: 6a00             push   0
3783: ff36060b         push   word ptr [0xb06]
3787: ff36080b         push   word ptr [0xb08]
378b: ff76fc           push   word ptr [bp - 4]
378e: 6a00             push   0
3790: 6a00             push   0
3792: 68cc00           push   0xcc
3795: 6a20             push   0x20
3797: 9aef330000       lcall  0, 0x33ef    ; <BitBlt>
379c: 833e922d00       cmp    word ptr [0x2d92], 0
37a1: 0f847001         je     0x3915
37a5: 833ed82300       cmp    word ptr [0x23d8], 0
37aa: 0f852600         jne    0x37d4
37ae: ff76fe           push   word ptr [bp - 2]
37b1: 6a28             push   0x28
37b3: a1722d           mov    ax, word ptr [0x2d72]
37b6: c1e002           shl    ax, 2
37b9: b90500           mov    cx, 5
37bc: 99               cdq    
37bd: f7f9             idiv   cx
37bf: 50               push   ax
37c0: 9a8a300000       lcall  0, 0x308a    ; <CreateCompatibleBitmap>
37c5: a3d823           mov    word ptr [0x23d8], ax
37c8: 833ed82300       cmp    word ptr [0x23d8], 0
37cd: 0f850300         jne    0x37d4
37d1: e9b701           jmp    0x398b
37d4: 833ed22300       cmp    word ptr [0x23d2], 0
37d9: 0f852600         jne    0x3803
37dd: ff76fe           push   word ptr [bp - 2]
37e0: 6a28             push   0x28
37e2: a1722d           mov    ax, word ptr [0x2d72]
37e5: c1e002           shl    ax, 2
37e8: b90500           mov    cx, 5
37eb: 99               cdq    
37ec: f7f9             idiv   cx
37ee: 50               push   ax
37ef: 9ac1370000       lcall  0, 0x37c1    ; <CreateCompatibleBitmap>
37f4: a3d223           mov    word ptr [0x23d2], ax
37f7: 833ed22300       cmp    word ptr [0x23d2], 0
37fc: 0f850300         jne    0x3803
3800: e98801           jmp    0x398b
3803: 833e642d00       cmp    word ptr [0x2d64], 0
3808: 0f850c00         jne    0x3818
380c: 6a00             push   0
380e: 6aff             push   -1
3810: 9a27380000       lcall  0, 0x3827    ; <CreateSolidBrush>
3815: a3642d           mov    word ptr [0x2d64], ax
3818: 833ed42300       cmp    word ptr [0x23d4], 0
381d: 0f850d00         jne    0x382e
3821: 6a00             push   0
3823: 688080           push   0x8080
3826: 9affff0000       lcall  0, 0xffff    ; <CreateSolidBrush>
382b: a3d423           mov    word ptr [0x23d4], ax
382e: ff76fe           push   word ptr [bp - 2]
3831: 9a5b370000       lcall  0, 0x375b    ; <CreateCompatibleDC>
3836: 8946f2           mov    word ptr [bp - 0xe], ax
3839: ff76f2           push   word ptr [bp - 0xe]
383c: ff36d223         push   word ptr [0x23d2]
3840: 9a80380000       lcall  0, 0x3880    ; <SelectObject>
3845: ff76f2           push   word ptr [bp - 0xe]
3848: 6a00             push   0
384a: 6a00             push   0
384c: 6a28             push   0x28
384e: ff36922d         push   word ptr [0x2d92]
3852: ff76fe           push   word ptr [bp - 2]
3855: 6a00             push   0
3857: 6a28             push   0x28
3859: 68cc00           push   0xcc
385c: 6a20             push   0x20
385e: 9ab0380000       lcall  0, 0x38b0    ; <BitBlt>
3863: c746f40000       mov    word ptr [bp - 0xc], 0
3868: c746f60000       mov    word ptr [bp - 0xa], 0
386d: c746f82800       mov    word ptr [bp - 8], 0x28
3872: a1922d           mov    ax, word ptr [0x2d92]
3875: 8946fa           mov    word ptr [bp - 6], ax
3878: ff76fc           push   word ptr [bp - 4]
387b: ff36d823         push   word ptr [0x23d8]
387f: 9a68340000       lcall  0, 0x3468    ; <SelectObject>
3884: ff76fc           push   word ptr [bp - 4]
3887: 8d46f4           lea    ax, [bp - 0xc]
388a: 16               push   ss
388b: 50               push   ax
388c: ff36642d         push   word ptr [0x2d64]
3890: 9ac1380000       lcall  0, 0x38c1    ; <FillRect>
3895: ff76f2           push   word ptr [bp - 0xe]
3898: 6a00             push   0
389a: 6a00             push   0
389c: 6a28             push   0x28
389e: ff36922d         push   word ptr [0x2d92]
38a2: ff76fc           push   word ptr [bp - 4]
38a5: 6a00             push   0
38a7: 6a00             push   0
38a9: 688800           push   0x88
38ac: 68c600           push   0xc6
38af: 9ae0380000       lcall  0, 0x38e0    ; <BitBlt>
38b4: ff76fc           push   word ptr [bp - 4]
38b7: 8d46f4           lea    ax, [bp - 0xc]
38ba: 16               push   ss
38bb: 50               push   ax
38bc: ff36d423         push   word ptr [0x23d4]
38c0: 9affff0000       lcall  0, 0xffff    ; <FillRect>
38c5: ff76f2           push   word ptr [bp - 0xe]
38c8: 6a00             push   0
38ca: 6a00             push   0
38cc: 6a28             push   0x28
38ce: ff36922d         push   word ptr [0x2d92]
38d2: ff76fc           push   word ptr [bp - 4]
38d5: 6a00             push   0
38d7: 6a00             push   0
38d9: 68ee00           push   0xee
38dc: 688600           push   0x86
38df: 9afe380000       lcall  0, 0x38fe    ; <BitBlt>
38e4: ff76fe           push   word ptr [bp - 2]
38e7: 6a00             push   0
38e9: 6a28             push   0x28
38eb: 6a28             push   0x28
38ed: ff36922d         push   word ptr [0x2d92]
38f1: ff76f2           push   word ptr [bp - 0xe]
38f4: 6a00             push   0
38f6: 6a00             push   0
38f8: 68cc00           push   0xcc
38fb: 6a20             push   0x20
38fd: 9a8c340000       lcall  0, 0x348c    ; <BitBlt>
3902: ff76f2           push   word ptr [bp - 0xe]
3905: 9a0e390000       lcall  0, 0x390e    ; <DeleteDC>
390a: ff76fc           push   word ptr [bp - 4]
390d: 9a79390000       lcall  0, 0x3979    ; <DeleteDC>
3912: e96800           jmp    0x397d
3915: 833ed42300       cmp    word ptr [0x23d4], 0
391a: 0f840f00         je     0x392d
391e: ff36d423         push   word ptr [0x23d4]
3922: 9a3b390000       lcall  0, 0x393b    ; <DeleteObject>
3927: c706d4230000     mov    word ptr [0x23d4], 0
392d: 833e642d00       cmp    word ptr [0x2d64], 0
3932: 0f840f00         je     0x3945
3936: ff36642d         push   word ptr [0x2d64]
393a: 9a53390000       lcall  0, 0x3953    ; <DeleteObject>
393f: c706642d0000     mov    word ptr [0x2d64], 0
3945: 833ed22300       cmp    word ptr [0x23d2], 0
394a: 0f840f00         je     0x395d
394e: ff36d223         push   word ptr [0x23d2]
3952: 9a6b390000       lcall  0, 0x396b    ; <DeleteObject>
3957: c706d2230000     mov    word ptr [0x23d2], 0
395d: 833ed82300       cmp    word ptr [0x23d8], 0
3962: 0f840f00         je     0x3975
3966: ff36d823         push   word ptr [0x23d8]
396a: 9a2b310000       lcall  0, 0x312b    ; <DeleteObject>
396f: c706d8230000     mov    word ptr [0x23d8], 0
3975: ff76fc           push   word ptr [bp - 4]
3978: 9abb360000       lcall  0, 0x36bb    ; <DeleteDC>
397d: ff7606           push   word ptr [bp + 6]
3980: ff76fe           push   word ptr [bp - 2]
3983: 9a92390000       lcall  0, 0x3992    ; <ReleaseDC>
3988: e90e00           jmp    0x3999
398b: ff7606           push   word ptr [bp + 6]
398e: ff76fe           push   word ptr [bp - 2]
3991: 9a0f370000       lcall  0, 0x370f    ; <ReleaseDC>
3996: e90000           jmp    0x3999
3999: 5e               pop    si
399a: 5f               pop    di
399b: c9               leave  
399c: cb               retf   
399d: 55               push   bp
399e: 8bec             mov    bp, sp
39a0: b80000           mov    ax, 0
39a3: 9a12072037       fcall  sub_0712
39a8: 57               push   di
39a9: 56               push   si
39aa: ff7606           push   word ptr [bp + 6]
39ad: ff7608           push   word ptr [bp + 8]
39b0: ff760a           push   word ptr [bp + 0xa]
39b3: ff760c           push   word ptr [bp + 0xc]
39b6: ff760e           push   word ptr [bp + 0xe]
39b9: 6a00             push   0
39bb: 9ace390000       lcall  0, 0x39ce    ; <MoveWindow>
39c0: ff7606           push   word ptr [bp + 6]
39c3: 6a00             push   0
39c5: 6a00             push   0
39c7: 6a00             push   0
39c9: 6a00             push   0
39cb: 6a01             push   1
39cd: 9aad360000       lcall  0, 0x36ad    ; <MoveWindow>
39d2: 5e               pop    si
39d3: 5f               pop    di
39d4: c9               leave  
39d5: cb               retf   

sub_39d6:
39d6: 55               push   bp
39d7: 8bec             mov    bp, sp
39d9: b80200           mov    ax, 2
39dc: 9a12073f3a       fcall  sub_0712
39e1: 57               push   di
39e2: 56               push   si
39e3: 833e602d00       cmp    word ptr [0x2d60], 0
39e8: 0f850600         jne    0x39f2
39ec: b80000           mov    ax, 0
39ef: e94000           jmp    0x3a32
39f2: c746fe0000       mov    word ptr [bp - 2], 0
39f7: e90300           jmp    0x39fd
39fa: ff46fe           inc    word ptr [bp - 2]
39fd: 837efe08         cmp    word ptr [bp - 2], 8
3a01: 0f8d2700         jge    0x3a2c
3a05: 8b4606           mov    ax, word ptr [bp + 6]
3a08: 8b5efe           mov    bx, word ptr [bp - 2]
3a0b: d1e3             shl    bx, 1
3a0d: 3987802d         cmp    word ptr [bx + 0x2d80], ax
3a11: 0f851400         jne    0x3a29
3a15: 8b5efe           mov    bx, word ptr [bp - 2]
3a18: d1e3             shl    bx, 1
3a1a: 83bf802d00       cmp    word ptr [bx + 0x2d80], 0
3a1f: 0f840600         je     0x3a29
3a23: b80100           mov    ax, 1
3a26: e90900           jmp    0x3a32
3a29: e9ceff           jmp    0x39fa
3a2c: b80000           mov    ax, 0
3a2f: e90000           jmp    0x3a32
3a32: 5e               pop    si
3a33: 5f               pop    di
3a34: c9               leave  
3a35: cb               retf   

sub_3a36:
3a36: 55               push   bp
3a37: 8bec             mov    bp, sp
3a39: b80a00           mov    ax, 0xa
3a3c: 9a1207553b       fcall  sub_0712
3a41: 57               push   di
3a42: 56               push   si
3a43: c746fe0000       mov    word ptr [bp - 2], 0
3a48: e90300           jmp    0x3a4e
3a4b: ff46fe           inc    word ptr [bp - 2]
3a4e: 837efe08         cmp    word ptr [bp - 2], 8
3a52: 0f8dec00         jge    0x3b42
3a56: 8b5efe           mov    bx, word ptr [bp - 2]
3a59: d1e3             shl    bx, 1
3a5b: 83bf802d00       cmp    word ptr [bx + 0x2d80], 0
3a60: 0f84db00         je     0x3b3f
3a64: 8b5efe           mov    bx, word ptr [bp - 2]
3a67: d1e3             shl    bx, 1
3a69: ffb7802d         push   word ptr [bx + 0x2d80]
3a6d: 6a00             push   0
3a6f: 9a833a0000       lcall  0, 0x3a83    ; <GetWindowWord>
3a74: 8946fc           mov    word ptr [bp - 4], ax
3a77: 8b5efe           mov    bx, word ptr [bp - 2]
3a7a: d1e3             shl    bx, 1
3a7c: ffb7802d         push   word ptr [bx + 0x2d80]
3a80: 6a02             push   2
3a82: 9affff0000       lcall  0, 0xffff    ; <GetWindowWord>
3a87: 8946f8           mov    word ptr [bp - 8], ax
3a8a: 8b46fc           mov    ax, word ptr [bp - 4]
3a8d: 052800           add    ax, 0x28
3a90: 8946fa           mov    word ptr [bp - 6], ax
3a93: 8b46f8           mov    ax, word ptr [bp - 8]
3a96: 052800           add    ax, 0x28
3a99: 8946f6           mov    word ptr [bp - 0xa], ax
3a9c: 837efa00         cmp    word ptr [bp - 6], 0
3aa0: 0f850300         jne    0x3aa7
3aa4: e9a4ff           jmp    0x3a4b
3aa7: 8b460a           mov    ax, word ptr [bp + 0xa]
3aaa: 3946f8           cmp    word ptr [bp - 8], ax
3aad: 0f8f0a00         jg     0x3abb
3ab1: 8b460a           mov    ax, word ptr [bp + 0xa]
3ab4: 3946f6           cmp    word ptr [bp - 0xa], ax
3ab7: 0f8f1400         jg     0x3acf
3abb: 8b460c           mov    ax, word ptr [bp + 0xc]
3abe: 3946f8           cmp    word ptr [bp - 8], ax
3ac1: 0f8d2e00         jge    0x3af3
3ac5: 8b460c           mov    ax, word ptr [bp + 0xc]
3ac8: 3946f6           cmp    word ptr [bp - 0xa], ax
3acb: 0f8e2400         jle    0x3af3
3acf: 8b4606           mov    ax, word ptr [bp + 6]
3ad2: 3946fa           cmp    word ptr [bp - 6], ax
3ad5: 0f8e1a00         jle    0x3af3
3ad9: 8b4608           mov    ax, word ptr [bp + 8]
3adc: 3946fa           cmp    word ptr [bp - 6], ax
3adf: 0f8f1000         jg     0x3af3
3ae3: 8b4606           mov    ax, word ptr [bp + 6]
3ae6: 394608           cmp    word ptr [bp + 8], ax
3ae9: 0f8e0600         jle    0x3af3
3aed: 8b46fa           mov    ax, word ptr [bp - 6]
3af0: e95500           jmp    0x3b48
3af3: 8b460a           mov    ax, word ptr [bp + 0xa]
3af6: 3946f8           cmp    word ptr [bp - 8], ax
3af9: 0f8f0a00         jg     0x3b07
3afd: 8b460a           mov    ax, word ptr [bp + 0xa]
3b00: 3946f6           cmp    word ptr [bp - 0xa], ax
3b03: 0f8f1400         jg     0x3b1b
3b07: 8b460c           mov    ax, word ptr [bp + 0xc]
3b0a: 3946f8           cmp    word ptr [bp - 8], ax
3b0d: 0f8d2e00         jge    0x3b3f
3b11: 8b460c           mov    ax, word ptr [bp + 0xc]
3b14: 3946f6           cmp    word ptr [bp - 0xa], ax
3b17: 0f8e2400         jle    0x3b3f
3b1b: 8b4608           mov    ax, word ptr [bp + 8]
3b1e: 3946fc           cmp    word ptr [bp - 4], ax
3b21: 0f8c1a00         jl     0x3b3f
3b25: 8b4606           mov    ax, word ptr [bp + 6]
3b28: 3946fc           cmp    word ptr [bp - 4], ax
3b2b: 0f8d1000         jge    0x3b3f
3b2f: 8b4606           mov    ax, word ptr [bp + 6]
3b32: 394608           cmp    word ptr [bp + 8], ax
3b35: 0f8d0600         jge    0x3b3f
3b39: 8b46fc           mov    ax, word ptr [bp - 4]
3b3c: e90900           jmp    0x3b48
3b3f: e909ff           jmp    0x3a4b
3b42: b80000           mov    ax, 0
3b45: e90000           jmp    0x3b48
3b48: 5e               pop    si
3b49: 5f               pop    di
3b4a: c9               leave  
3b4b: cb               retf   

sub_3b4c:
3b4c: 55               push   bp
3b4d: 8bec             mov    bp, sp
3b4f: b84800           mov    ax, 0x48
3b52: 9a1207293c       fcall  sub_0712
3b57: 57               push   di
3b58: 56               push   si
3b59: c746fa0000       mov    word ptr [bp - 6], 0
3b5e: e90300           jmp    0x3b64
3b61: ff46fa           inc    word ptr [bp - 6]
3b64: 837efa08         cmp    word ptr [bp - 6], 8
3b68: 0f8d0e00         jge    0x3b7a
3b6c: 8b5efa           mov    bx, word ptr [bp - 6]
3b6f: d1e3             shl    bx, 1
3b71: c787802d0000     mov    word ptr [bx + 0x2d80], 0
3b77: e9e7ff           jmp    0x3b61
3b7a: 9a2e3c0000       lcall  0, 0x3c2e    ; <GetDesktopWindow>
3b7f: 8946fe           mov    word ptr [bp - 2], ax
3b82: c746fc0500       mov    word ptr [bp - 4], 5
3b87: c746fa0000       mov    word ptr [bp - 6], 0
3b8c: c746f80000       mov    word ptr [bp - 8], 0
3b91: ff76fe           push   word ptr [bp - 2]
3b94: ff76fc           push   word ptr [bp - 4]
3b97: 9a4b3c0000       lcall  0, 0x3c4b    ; <GetWindow>
3b9c: 8946fe           mov    word ptr [bp - 2], ax
3b9f: 3d0000           cmp    ax, 0
3ba2: 0f847000         je     0x3c16
3ba6: 837efa40         cmp    word ptr [bp - 6], 0x40
3baa: 0f8d6800         jge    0x3c16
3bae: c746fc0200       mov    word ptr [bp - 4], 2
3bb3: 8b4606           mov    ax, word ptr [bp + 6]
3bb6: 3946fe           cmp    word ptr [bp - 2], ax
3bb9: 0f850300         jne    0x3bc0
3bbd: e9d1ff           jmp    0x3b91
3bc0: ff76fe           push   word ptr [bp - 2]
3bc3: 6af0             push   -0x10
3bc5: 9a793c0000       lcall  0, 0x3c79    ; <GetWindowLong>
3bca: f7c20010         test   dx, 0x1000
3bce: 0f844100         je     0x3c13
3bd2: ff76fe           push   word ptr [bp - 2]
3bd5: 8d46b8           lea    ax, [bp - 0x48]
3bd8: 16               push   ss
3bd9: 50               push   ax
3bda: 6a10             push   0x10
3bdc: 9a903c0000       lcall  0, 0x3c90    ; <GetWindowText>
3be1: 8d46b8           lea    ax, [bp - 0x48]
3be4: 16               push   ss
3be5: 50               push   ax
3be6: 1e               push   ds
3be7: 68ea01           push   0x1ea    ; "Screen Mate"
3bea: 9a9e3c0000       lcall  0, 0x3c9e    ; <lstrcmp>
3bef: 3d0000           cmp    ax, 0
3bf2: 0f851a00         jne    0x3c10
3bf6: 8b46fe           mov    ax, word ptr [bp - 2]
3bf9: 8b5ef8           mov    bx, word ptr [bp - 8]
3bfc: d1e3             shl    bx, 1
3bfe: 8987802d         mov    word ptr [bx + 0x2d80], ax
3c02: ff46f8           inc    word ptr [bp - 8]
3c05: 837ef808         cmp    word ptr [bp - 8], 8
3c09: 0f8e0300         jle    0x3c10
3c0d: e90c00           jmp    0x3c1c
3c10: ff46fa           inc    word ptr [bp - 6]
3c13: e97bff           jmp    0x3b91
3c16: 8b46f8           mov    ax, word ptr [bp - 8]
3c19: a3602d           mov    word ptr [0x2d60], ax
3c1c: 5e               pop    si
3c1d: 5f               pop    di
3c1e: c9               leave  
3c1f: cb               retf   

sub_3c20:
3c20: 55               push   bp
3c21: 8bec             mov    bp, sp
3c23: b84800           mov    ax, 0x48
3c26: 9a12071b3d       fcall  sub_0712
3c2b: 57               push   di
3c2c: 56               push   si
3c2d: 9affff0000       lcall  0, 0xffff    ; <GetDesktopWindow>
3c32: 8946fe           mov    word ptr [bp - 2], ax
3c35: c746fc0500       mov    word ptr [bp - 4], 5
3c3a: c746fa0000       mov    word ptr [bp - 6], 0
3c3f: c746f80000       mov    word ptr [bp - 8], 0
3c44: ff76fe           push   word ptr [bp - 2]
3c47: ff76fc           push   word ptr [bp - 4]
3c4a: 9affff0000       lcall  0, 0xffff    ; <GetWindow>
3c4f: 8946fe           mov    word ptr [bp - 2], ax
3c52: 3d0000           cmp    ax, 0
3c55: 0f847300         je     0x3ccc
3c59: 837efa40         cmp    word ptr [bp - 6], 0x40
3c5d: 0f8d6b00         jge    0x3ccc
3c61: c746fc0200       mov    word ptr [bp - 4], 2
3c66: 8b4606           mov    ax, word ptr [bp + 6]
3c69: 3946fe           cmp    word ptr [bp - 2], ax
3c6c: 0f850300         jne    0x3c73
3c70: e9d1ff           jmp    0x3c44
3c73: ff76fe           push   word ptr [bp - 2]
3c76: 6af0             push   -0x10
3c78: 9affff0000       lcall  0, 0xffff    ; <GetWindowLong>
3c7d: f7c20010         test   dx, 0x1000
3c81: 0f844400         je     0x3cc9
3c85: ff76fe           push   word ptr [bp - 2]
3c88: 8d46b8           lea    ax, [bp - 0x48]
3c8b: 16               push   ss
3c8c: 50               push   ax
3c8d: 6a10             push   0x10
3c8f: 9affff0000       lcall  0, 0xffff    ; <GetWindowText>
3c94: 8d46b8           lea    ax, [bp - 0x48]
3c97: 16               push   ss
3c98: 50               push   ax
3c99: 1e               push   ds
3c9a: 68f601           push   0x1f6    ; "Screen Mate"
3c9d: 9affff0000       lcall  0, 0xffff    ; <lstrcmp>
3ca2: 3d0000           cmp    ax, 0
3ca5: 0f851d00         jne    0x3cc6
3ca9: 8b46fe           mov    ax, word ptr [bp - 2]
3cac: 8b5ef8           mov    bx, word ptr [bp - 8]
3caf: d1e3             shl    bx, 1
3cb1: 8987802d         mov    word ptr [bx + 0x2d80], ax
3cb5: ff46f8           inc    word ptr [bp - 8]
3cb8: 837ef808         cmp    word ptr [bp - 8], 8
3cbc: 0f8e0600         jle    0x3cc6
3cc0: b80000           mov    ax, 0
3cc3: e94800           jmp    0x3d0e
3cc6: ff46fa           inc    word ptr [bp - 6]
3cc9: e978ff           jmp    0x3c44
3ccc: 8b46f8           mov    ax, word ptr [bp - 8]
3ccf: a3602d           mov    word ptr [0x2d60], ax
3cd2: 8b46f8           mov    ax, word ptr [bp - 8]
3cd5: a3682d           mov    word ptr [0x2d68], ax
3cd8: c746fa0000       mov    word ptr [bp - 6], 0
3cdd: e90300           jmp    0x3ce3
3ce0: ff46fa           inc    word ptr [bp - 6]
3ce3: a1602d           mov    ax, word ptr [0x2d60]
3ce6: 3946fa           cmp    word ptr [bp - 6], ax
3ce9: 0f8d1b00         jge    0x3d08
3ced: 8b5efa           mov    bx, word ptr [bp - 6]
3cf0: d1e3             shl    bx, 1
3cf2: ffb7802d         push   word ptr [bx + 0x2d80]
3cf6: 680004           push   0x400
3cf9: 6a01             push   1
3cfb: 6a00             push   0
3cfd: ff7606           push   word ptr [bp + 6]
3d00: 9a543d0000       lcall  0, 0x3d54    ; <SendMessage>
3d05: e9d8ff           jmp    0x3ce0
3d08: b80100           mov    ax, 1
3d0b: e90000           jmp    0x3d0e
3d0e: 5e               pop    si
3d0f: 5f               pop    di
3d10: c9               leave  
3d11: cb               retf   

sub_3d12:
3d12: 55               push   bp
3d13: 8bec             mov    bp, sp
3d15: b80200           mov    ax, 2
3d18: 9a1207683d       fcall  sub_0712
3d1d: 57               push   di
3d1e: 56               push   si
3d1f: c746fe0000       mov    word ptr [bp - 2], 0
3d24: e90300           jmp    0x3d2a
3d27: ff46fe           inc    word ptr [bp - 2]
3d2a: 837efe08         cmp    word ptr [bp - 2], 8
3d2e: 0f8d2900         jge    0x3d5b
3d32: 8b5efe           mov    bx, word ptr [bp - 2]
3d35: d1e3             shl    bx, 1
3d37: 83bf802d00       cmp    word ptr [bx + 0x2d80], 0
3d3c: 0f841800         je     0x3d58
3d40: 8b5efe           mov    bx, word ptr [bp - 2]
3d43: d1e3             shl    bx, 1
3d45: ffb7802d         push   word ptr [bx + 0x2d80]
3d49: 680004           push   0x400
3d4c: 6a02             push   2
3d4e: 6a00             push   0
3d50: ff7606           push   word ptr [bp + 6]
3d53: 9ad9220000       lcall  0, 0x22d9    ; <SendMessage>
3d58: e9ccff           jmp    0x3d27
3d5b: 5e               pop    si
3d5c: 5f               pop    di
3d5d: c9               leave  
3d5e: cb               retf   

sub_3d5f:
3d5f: 55               push   bp
3d60: 8bec             mov    bp, sp
3d62: b80200           mov    ax, 2
3d65: 9a1207a639       fcall  sub_0712
3d6a: 57               push   di
3d6b: 56               push   si
3d6c: c746fe0000       mov    word ptr [bp - 2], 0
3d71: e90300           jmp    0x3d77
3d74: ff46fe           inc    word ptr [bp - 2]
3d77: 837efe08         cmp    word ptr [bp - 2], 8
3d7b: 0f8d2400         jge    0x3da3
3d7f: 8b5efe           mov    bx, word ptr [bp - 2]
3d82: d1e3             shl    bx, 1
3d84: 83bf802d00       cmp    word ptr [bx + 0x2d80], 0
3d89: 0f851300         jne    0x3da0
3d8d: ff06602d         inc    word ptr [0x2d60]
3d91: 8b4606           mov    ax, word ptr [bp + 6]
3d94: 8b5efe           mov    bx, word ptr [bp - 2]
3d97: d1e3             shl    bx, 1
3d99: 8987802d         mov    word ptr [bx + 0x2d80], ax
3d9d: e90300           jmp    0x3da3
3da0: e9d1ff           jmp    0x3d74
3da3: 5e               pop    si
3da4: 5f               pop    di
3da5: c9               leave  
3da6: cb               retf   

sub_3da7:
3da7: 55               push   bp
3da8: 8bec             mov    bp, sp
3daa: b80200           mov    ax, 2
3dad: 9a1207f93d       fcall  sub_0712
3db2: 57               push   di
3db3: 56               push   si
3db4: c746fe0000       mov    word ptr [bp - 2], 0
3db9: e90300           jmp    0x3dbf
3dbc: ff46fe           inc    word ptr [bp - 2]
3dbf: 837efe08         cmp    word ptr [bp - 2], 8
3dc3: 0f8d2500         jge    0x3dec
3dc7: 8b4606           mov    ax, word ptr [bp + 6]
3dca: 8b5efe           mov    bx, word ptr [bp - 2]
3dcd: d1e3             shl    bx, 1
3dcf: 3987802d         cmp    word ptr [bx + 0x2d80], ax
3dd3: 0f851200         jne    0x3de9
3dd7: ff0e602d         dec    word ptr [0x2d60]
3ddb: 8b5efe           mov    bx, word ptr [bp - 2]
3dde: d1e3             shl    bx, 1
3de0: c787802d0000     mov    word ptr [bx + 0x2d80], 0
3de6: e90300           jmp    0x3dec
3de9: e9d0ff           jmp    0x3dbc
3dec: 5e               pop    si
3ded: 5f               pop    di
3dee: c9               leave  
3def: cb               retf   

sub_3df0:
3df0: 55               push   bp
3df1: 8bec             mov    bp, sp
3df3: b80600           mov    ax, 6
3df6: 9a1207853e       fcall  sub_0712
3dfb: 57               push   di
3dfc: 56               push   si
3dfd: 9a7b3b0000       lcall  0, 0x3b7b    ; <GetDesktopWindow>
3e02: 8946fe           mov    word ptr [bp - 2], ax
3e05: c746fc0500       mov    word ptr [bp - 4], 5
3e0a: c746fa0000       mov    word ptr [bp - 6], 0
3e0f: ff76fe           push   word ptr [bp - 2]
3e12: ff76fc           push   word ptr [bp - 4]
3e15: 9a983b0000       lcall  0, 0x3b98    ; <GetWindow>
3e1a: 8946fe           mov    word ptr [bp - 2], ax
3e1d: 3d0000           cmp    ax, 0
3e20: 0f844e00         je     0x3e72
3e24: 837efa20         cmp    word ptr [bp - 6], 0x20
3e28: 0f8d4600         jge    0x3e72
3e2c: c746fc0200       mov    word ptr [bp - 4], 2
3e31: a1d023           mov    ax, word ptr [0x23d0]
3e34: 3946fe           cmp    word ptr [bp - 2], ax
3e37: 0f850300         jne    0x3e3e
3e3b: e9d1ff           jmp    0x3e0f
3e3e: ff76fe           push   word ptr [bp - 2]
3e41: 6af0             push   -0x10
3e43: 9ac63b0000       lcall  0, 0x3bc6    ; <GetWindowLong>
3e48: f7c20010         test   dx, 0x1000
3e4c: 0f841f00         je     0x3e6f
3e50: ff76fe           push   word ptr [bp - 2]
3e53: 6b46fa4c         imul   ax, word ptr [bp - 6], 0x4c
3e57: 05de23           add    ax, 0x23de
3e5a: 1e               push   ds
3e5b: 50               push   ax
3e5c: 9a673f0000       lcall  0, 0x3f67    ; <GetWindowRect>
3e61: 8b46fe           mov    ax, word ptr [bp - 2]
3e64: 6b5efa4c         imul   bx, word ptr [bp - 6], 0x4c
3e68: 8987dc23         mov    word ptr [bx + 0x23dc], ax
3e6c: ff46fa           inc    word ptr [bp - 6]
3e6f: e99dff           jmp    0x3e0f
3e72: 8b46fa           mov    ax, word ptr [bp - 6]
3e75: a3942d           mov    word ptr [0x2d94], ax
3e78: 5e               pop    si
3e79: 5f               pop    di
3e7a: c9               leave  
3e7b: cb               retf   

sub_3e7c:
3e7c: 55               push   bp
3e7d: 8bec             mov    bp, sp
3e7f: b80c00           mov    ax, 0xc
3e82: 9a12079540       fcall  sub_0712
3e87: 57               push   di
3e88: 56               push   si
3e89: c746fe0000       mov    word ptr [bp - 2], 0
3e8e: e90300           jmp    0x3e94
3e91: ff46fe           inc    word ptr [bp - 2]
3e94: a1942d           mov    ax, word ptr [0x2d94]
3e97: 3946fe           cmp    word ptr [bp - 2], ax
3e9a: 0f8de401         jge    0x4082
3e9e: 8b460c           mov    ax, word ptr [bp + 0xc]
3ea1: 39460e           cmp    word ptr [bp + 0xe], ax
3ea4: 0f8eed00         jle    0x3f95
3ea8: 8b460c           mov    ax, word ptr [bp + 0xc]
3eab: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3eaf: 3987e223         cmp    word ptr [bx + 0x23e2], ax
3eb3: 0f8cdb00         jl     0x3f92
3eb7: 8b460e           mov    ax, word ptr [bp + 0xe]
3eba: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3ebe: 3987e223         cmp    word ptr [bx + 0x23e2], ax
3ec2: 0f8dcc00         jge    0x3f92
3ec6: 8b4608           mov    ax, word ptr [bp + 8]
3ec9: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3ecd: 3987e023         cmp    word ptr [bx + 0x23e0], ax
3ed1: 0f8dbd00         jge    0x3f92
3ed5: 8b460a           mov    ax, word ptr [bp + 0xa]
3ed8: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3edc: 3987e423         cmp    word ptr [bx + 0x23e4], ax
3ee0: 0f8eae00         jle    0x3f92
3ee4: c746fc0000       mov    word ptr [bp - 4], 0
3ee9: e90300           jmp    0x3eef
3eec: ff46fc           inc    word ptr [bp - 4]
3eef: 8b46fe           mov    ax, word ptr [bp - 2]
3ef2: 3946fc           cmp    word ptr [bp - 4], ax
3ef5: 0f8d4200         jge    0x3f3b
3ef9: 8b4608           mov    ax, word ptr [bp + 8]
3efc: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
3f00: 3987e023         cmp    word ptr [bx + 0x23e0], ax
3f04: 0f8f3000         jg     0x3f38
3f08: 8b460a           mov    ax, word ptr [bp + 0xa]
3f0b: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
3f0f: 3987e423         cmp    word ptr [bx + 0x23e4], ax
3f13: 0f8c2100         jl     0x3f38
3f17: 8b460c           mov    ax, word ptr [bp + 0xc]
3f1a: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
3f1e: 3987de23         cmp    word ptr [bx + 0x23de], ax
3f22: 0f8f1200         jg     0x3f38
3f26: 8b460e           mov    ax, word ptr [bp + 0xe]
3f29: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
3f2d: 3987e223         cmp    word ptr [bx + 0x23e2], ax
3f31: 0f8c0300         jl     0x3f38
3f35: e90300           jmp    0x3f3b
3f38: e9b1ff           jmp    0x3eec
3f3b: 8b46fe           mov    ax, word ptr [bp - 2]
3f3e: 3946fc           cmp    word ptr [bp - 4], ax
3f41: 0f854d00         jne    0x3f92
3f45: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3f49: ffb7dc23         push   word ptr [bx + 0x23dc]
3f4d: 9a3b400000       lcall  0, 0x403b    ; <IsWindow>
3f52: 3d0000           cmp    ax, 0
3f55: 0f843900         je     0x3f92
3f59: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3f5d: ffb7dc23         push   word ptr [bx + 0x23dc]
3f61: 8d46f4           lea    ax, [bp - 0xc]
3f64: 16               push   ss
3f65: 50               push   ax
3f66: 9a54400000       lcall  0, 0x4054    ; <GetWindowRect>
3f6b: 8b46f8           mov    ax, word ptr [bp - 8]
3f6e: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3f72: 3987e223         cmp    word ptr [bx + 0x23e2], ax
3f76: 0f851800         jne    0x3f92
3f7a: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3f7e: 8b87dc23         mov    ax, word ptr [bx + 0x23dc]
3f82: 8b5e06           mov    bx, word ptr [bp + 6]
3f85: 8907             mov    word ptr [bx], ax
3f87: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3f8b: 8b87e223         mov    ax, word ptr [bx + 0x23e2]
3f8f: e9f600           jmp    0x4088
3f92: e9ea00           jmp    0x407f
3f95: 8b460c           mov    ax, word ptr [bp + 0xc]
3f98: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3f9c: 3987de23         cmp    word ptr [bx + 0x23de], ax
3fa0: 0f8fdb00         jg     0x407f
3fa4: 8b460e           mov    ax, word ptr [bp + 0xe]
3fa7: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3fab: 3987de23         cmp    word ptr [bx + 0x23de], ax
3faf: 0f8ecc00         jle    0x407f
3fb3: 8b4608           mov    ax, word ptr [bp + 8]
3fb6: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3fba: 3987e023         cmp    word ptr [bx + 0x23e0], ax
3fbe: 0f8dbd00         jge    0x407f
3fc2: 8b460a           mov    ax, word ptr [bp + 0xa]
3fc5: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
3fc9: 3987e423         cmp    word ptr [bx + 0x23e4], ax
3fcd: 0f8eae00         jle    0x407f
3fd1: c746fc0000       mov    word ptr [bp - 4], 0
3fd6: e90300           jmp    0x3fdc
3fd9: ff46fc           inc    word ptr [bp - 4]
3fdc: 8b46fe           mov    ax, word ptr [bp - 2]
3fdf: 3946fc           cmp    word ptr [bp - 4], ax
3fe2: 0f8d4200         jge    0x4028
3fe6: 8b4608           mov    ax, word ptr [bp + 8]
3fe9: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
3fed: 3987e023         cmp    word ptr [bx + 0x23e0], ax
3ff1: 0f8f3000         jg     0x4025
3ff5: 8b460a           mov    ax, word ptr [bp + 0xa]
3ff8: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
3ffc: 3987e423         cmp    word ptr [bx + 0x23e4], ax
4000: 0f8c2100         jl     0x4025
4004: 8b460c           mov    ax, word ptr [bp + 0xc]
4007: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
400b: 3987de23         cmp    word ptr [bx + 0x23de], ax
400f: 0f8f1200         jg     0x4025
4013: 8b460e           mov    ax, word ptr [bp + 0xe]
4016: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
401a: 3987e223         cmp    word ptr [bx + 0x23e2], ax
401e: 0f8c0300         jl     0x4025
4022: e90300           jmp    0x4028
4025: e9b1ff           jmp    0x3fd9
4028: 8b46fe           mov    ax, word ptr [bp - 2]
402b: 3946fc           cmp    word ptr [bp - 4], ax
402e: 0f854d00         jne    0x407f
4032: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
4036: ffb7dc23         push   word ptr [bx + 0x23dc]
403a: 9affff0000       lcall  0, 0xffff    ; <IsWindow>
403f: 3d0000           cmp    ax, 0
4042: 0f843900         je     0x407f
4046: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
404a: ffb7dc23         push   word ptr [bx + 0x23dc]
404e: 8d46f4           lea    ax, [bp - 0xc]
4051: 16               push   ss
4052: 50               push   ax
4053: 9a16240000       lcall  0, 0x2416    ; <GetWindowRect>
4058: 8b46f4           mov    ax, word ptr [bp - 0xc]
405b: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
405f: 3987de23         cmp    word ptr [bx + 0x23de], ax
4063: 0f851800         jne    0x407f
4067: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
406b: 8b87dc23         mov    ax, word ptr [bx + 0x23dc]
406f: 8b5e06           mov    bx, word ptr [bp + 6]
4072: 8907             mov    word ptr [bx], ax
4074: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
4078: 8b87de23         mov    ax, word ptr [bx + 0x23de]
407c: e90900           jmp    0x4088
407f: e90ffe           jmp    0x3e91
4082: b80000           mov    ax, 0
4085: e90000           jmp    0x4088
4088: 5e               pop    si
4089: 5f               pop    di
408a: c9               leave  
408b: cb               retf   

sub_408c:
408c: 55               push   bp
408d: 8bec             mov    bp, sp
408f: b80400           mov    ax, 4
4092: 9a1207df39       fcall  sub_0712
4097: 57               push   di
4098: 56               push   si
4099: c746fe0000       mov    word ptr [bp - 2], 0
409e: e90300           jmp    0x40a4
40a1: ff46fe           inc    word ptr [bp - 2]
40a4: a1942d           mov    ax, word ptr [0x2d94]
40a7: 3946fe           cmp    word ptr [bp - 2], ax
40aa: 0f8dc500         jge    0x4173
40ae: 8b4608           mov    ax, word ptr [bp + 8]
40b1: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
40b5: 3987e023         cmp    word ptr [bx + 0x23e0], ax
40b9: 0f8fb300         jg     0x4170
40bd: 8b460a           mov    ax, word ptr [bp + 0xa]
40c0: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
40c4: 3987e023         cmp    word ptr [bx + 0x23e0], ax
40c8: 0f8ea400         jle    0x4170
40cc: 8b460e           mov    ax, word ptr [bp + 0xe]
40cf: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
40d3: 3987de23         cmp    word ptr [bx + 0x23de], ax
40d7: 0f8d9500         jge    0x4170
40db: 8b460c           mov    ax, word ptr [bp + 0xc]
40de: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
40e2: 3987e223         cmp    word ptr [bx + 0x23e2], ax
40e6: 0f8e8600         jle    0x4170
40ea: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
40ee: 83bfe0230a       cmp    word ptr [bx + 0x23e0], 0xa
40f3: 0f8e7900         jle    0x4170
40f7: c746fc0000       mov    word ptr [bp - 4], 0
40fc: e90300           jmp    0x4102
40ff: ff46fc           inc    word ptr [bp - 4]
4102: 8b46fe           mov    ax, word ptr [bp - 2]
4105: 3946fc           cmp    word ptr [bp - 4], ax
4108: 0f8d4200         jge    0x414e
410c: 8b460c           mov    ax, word ptr [bp + 0xc]
410f: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
4113: 3987de23         cmp    word ptr [bx + 0x23de], ax
4117: 0f8f3000         jg     0x414b
411b: 8b460e           mov    ax, word ptr [bp + 0xe]
411e: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
4122: 3987e223         cmp    word ptr [bx + 0x23e2], ax
4126: 0f8c2100         jl     0x414b
412a: 8b460a           mov    ax, word ptr [bp + 0xa]
412d: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
4131: 3987e023         cmp    word ptr [bx + 0x23e0], ax
4135: 0f8f1200         jg     0x414b
4139: 8b4608           mov    ax, word ptr [bp + 8]
413c: 6b5efc4c         imul   bx, word ptr [bp - 4], 0x4c
4140: 3987e423         cmp    word ptr [bx + 0x23e4], ax
4144: 0f8c0300         jl     0x414b
4148: e90300           jmp    0x414e
414b: e9b1ff           jmp    0x40ff
414e: 8b46fe           mov    ax, word ptr [bp - 2]
4151: 3946fc           cmp    word ptr [bp - 4], ax
4154: 0f851800         jne    0x4170
4158: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
415c: 8b87dc23         mov    ax, word ptr [bx + 0x23dc]
4160: 8b5e06           mov    bx, word ptr [bp + 6]
4163: 8907             mov    word ptr [bx], ax
4165: 6b5efe4c         imul   bx, word ptr [bp - 2], 0x4c
4169: 8b87e023         mov    ax, word ptr [bx + 0x23e0]
416d: e92a00           jmp    0x419a
4170: e92eff           jmp    0x40a1
4173: a1722d           mov    ax, word ptr [0x2d72]
4176: 394608           cmp    word ptr [bp + 8], ax
4179: 0f8c1700         jl     0x4194
417d: a1722d           mov    ax, word ptr [0x2d72]
4180: 39460a           cmp    word ptr [bp + 0xa], ax
4183: 0f8f0d00         jg     0x4194
4187: 8b5e06           mov    bx, word ptr [bp + 6]
418a: c7070000         mov    word ptr [bx], 0
418e: a1722d           mov    ax, word ptr [0x2d72]
4191: e90600           jmp    0x419a
4194: b80000           mov    ax, 0
4197: e90000           jmp    0x419a
419a: 5e               pop    si
419b: 5f               pop    di
419c: c9               leave  
419d: cb               retf   

sub_419e:
419e: 55               push   bp
419f: 8bec             mov    bp, sp
41a1: b80800           mov    ax, 8
41a4: 9a1207b03d       fcall  sub_0712
41a9: 57               push   di
41aa: 56               push   si
41ab: ff7606           push   word ptr [bp + 6]
41ae: 9a4e3f0000       lcall  0, 0x3f4e    ; <IsWindow>
41b3: 3d0000           cmp    ax, 0
41b6: 0f843b00         je     0x41f5
41ba: ff7606           push   word ptr [bp + 6]
41bd: 8d46f8           lea    ax, [bp - 8]
41c0: 16               push   ss
41c1: 50               push   ax
41c2: 9a5d3e0000       lcall  0, 0x3e5d    ; <GetWindowRect>
41c7: 8b4608           mov    ax, word ptr [bp + 8]
41ca: 3946fa           cmp    word ptr [bp - 6], ax
41cd: 0f8f2400         jg     0x41f5
41d1: 8b460a           mov    ax, word ptr [bp + 0xa]
41d4: 3946fa           cmp    word ptr [bp - 6], ax
41d7: 0f8e1a00         jle    0x41f5
41db: 8b460e           mov    ax, word ptr [bp + 0xe]
41de: 3946f8           cmp    word ptr [bp - 8], ax
41e1: 0f8d1000         jge    0x41f5
41e5: 8b460c           mov    ax, word ptr [bp + 0xc]
41e8: 3946fc           cmp    word ptr [bp - 4], ax
41eb: 0f8e0600         jle    0x41f5
41ef: 8b46fa           mov    ax, word ptr [bp - 6]
41f2: e91600           jmp    0x420b
41f5: a1722d           mov    ax, word ptr [0x2d72]
41f8: 394608           cmp    word ptr [bp + 8], ax
41fb: 0f8e0600         jle    0x4205
41ff: b8ffff           mov    ax, 0xffff
4202: e90600           jmp    0x420b
4205: b80000           mov    ax, 0
4208: e90000           jmp    0x420b
420b: 5e               pop    si
420c: 5f               pop    di
420d: c9               leave  
420e: cb               retf   
420f: 00558b           add    byte ptr [di - 0x75], dl
4212: ec               in     al, dx
4213: b80400           mov    ax, 4
4216: 9a12079742       fcall  sub_0712
421b: 57               push   di
421c: 56               push   si
421d: 833e4e0b00       cmp    word ptr [0xb4e], 0
4222: 0f842300         je     0x4249
4226: 6a00             push   0
4228: 6a00             push   0
422a: 6a00             push   0
422c: 9a86420000       lcall  0, 0x4286    ; <sndPlaySound>
4231: ff364e0b         push   word ptr [0xb4e]
4235: 9affff0000       lcall  0, 0xffff    ; <GlobalUnlock>
423a: ff364e0b         push   word ptr [0xb4e]
423e: 9a612d0000       lcall  0, 0x2d61    ; <FreeResource>
4243: c7064e0b0000     mov    word ptr [0xb4e], 0
4249: ff36782d         push   word ptr [0x2d78]
424d: ff36782d         push   word ptr [0x2d78]
4251: 8b4606           mov    ax, word ptr [bp + 6]
4254: 99               cdq    
4255: 52               push   dx
4256: 50               push   ax
4257: 1e               push   ds
4258: 68ce05           push   0x5ce    ; "WAVE"
425b: 9a5f2b0000       lcall  0, 0x2b5f    ; <FindResource>
4260: 50               push   ax
4261: 9a652b0000       lcall  0, 0x2b65    ; <LoadResource>
4266: a34e0b           mov    word ptr [0xb4e], ax
4269: ff364e0b         push   word ptr [0xb4e]
426d: 9a6e2b0000       lcall  0, 0x2b6e    ; <LockResource>
4272: 8946fc           mov    word ptr [bp - 4], ax
4275: 8956fe           mov    word ptr [bp - 2], dx
4278: ff76fe           push   word ptr [bp - 2]
427b: ff76fc           push   word ptr [bp - 4]
427e: 8b4608           mov    ax, word ptr [bp + 8]
4281: 0d0500           or     ax, 5
4284: 50               push   ax
4285: 9aa2420000       lcall  0, 0x42a2    ; <sndPlaySound>
428a: 5e               pop    si
428b: 5f               pop    di
428c: c9               leave  
428d: cb               retf   

sub_428e:
428e: 55               push   bp
428f: 8bec             mov    bp, sp
4291: b80000           mov    ax, 0
4294: 9a1207b342       fcall  sub_0712
4299: 57               push   di
429a: 56               push   si
429b: 6a00             push   0
429d: 6a00             push   0
429f: 6a00             push   0
42a1: 9ac0420000       lcall  0, 0x42c0    ; <sndPlaySound>
42a6: 5e               pop    si
42a7: 5f               pop    di
42a8: c9               leave  
42a9: cb               retf   

sub_42aa:
42aa: 55               push   bp
42ab: 8bec             mov    bp, sp
42ad: b80000           mov    ax, 0
42b0: 9a1207d142       fcall  sub_0712
42b5: 57               push   di
42b6: 56               push   si
42b7: ff7608           push   word ptr [bp + 8]
42ba: ff7606           push   word ptr [bp + 6]
42bd: 6a01             push   1
42bf: 9affff0000       lcall  0, 0xffff    ; <sndPlaySound>
42c4: 5e               pop    si
42c5: 5f               pop    di
42c6: c9               leave  
42c7: cb               retf   

sub_42c8:
42c8: 55               push   bp
42c9: 8bec             mov    bp, sp
42cb: b80000           mov    ax, 0
42ce: 9a1207ea42       fcall  sub_0712
42d3: 57               push   di
42d4: 56               push   si
42d5: 833e7a2d00       cmp    word ptr [0x2d7a], 0
42da: 0f841100         je     0x42ef
42de: ff760a           push   word ptr [bp + 0xa]
42e1: ff7608           push   word ptr [bp + 8]
42e4: ff7606           push   word ptr [bp + 6]
42e7: 9a1042fc42       fcall  sub_4210
42ec: 83c406           add    sp, 6
42ef: 5e               pop    si
42f0: 5f               pop    di
42f1: c9               leave  
42f2: cb               retf   

sub_42f3:
42f3: 55               push   bp
42f4: 8bec             mov    bp, sp
42f6: b80400           mov    ax, 4
42f9: 9a12074143       fcall  sub_0712
42fe: 57               push   di
42ff: 56               push   si
4300: c746fe0000       mov    word ptr [bp - 2], 0
4305: e90300           jmp    0x430b
4308: ff46fe           inc    word ptr [bp - 2]
430b: 837efe10         cmp    word ptr [bp - 2], 0x10
430f: 0f8dd001         jge    0x44e3
4313: 8b5efe           mov    bx, word ptr [bp - 2]
4316: c1e304           shl    bx, 4
4319: 83bf020200       cmp    word ptr [bx + 0x202], 0
431e: 0f850300         jne    0x4325
4322: e9be01           jmp    0x44e3
4325: 6aff             push   -1
4327: 8b5efe           mov    bx, word ptr [bp - 2]
432a: c1e304           shl    bx, 4
432d: ffb70202         push   word ptr [bx + 0x202]
4331: 8b46fe           mov    ax, word ptr [bp - 2]
4334: c1e004           shl    ax, 4
4337: 050602           add    ax, 0x206
433a: 50               push   ax
433b: ff7606           push   word ptr [bp + 6]
433e: 9a302b6f43       fcall  sub_2b30
4343: 83c408           add    sp, 8
4346: 3d0000           cmp    ax, 0
4349: 0f850600         jne    0x4353
434d: b80000           mov    ax, 0
4350: e99601           jmp    0x44e9
4353: 6afd             push   -3
4355: 8b5efe           mov    bx, word ptr [bp - 2]
4358: c1e304           shl    bx, 4
435b: ffb70202         push   word ptr [bx + 0x202]
435f: 8b46fe           mov    ax, word ptr [bp - 2]
4362: c1e004           shl    ax, 4
4365: 050603           add    ax, 0x306
4368: 50               push   ax
4369: ff7606           push   word ptr [bp + 6]
436c: 9a302bf644       fcall  sub_2b30
4371: 83c408           add    sp, 8
4374: 3d0000           cmp    ax, 0
4377: 0f850600         jne    0x4381
437b: b80000           mov    ax, 0
437e: e96801           jmp    0x44e9
4381: c746fc0000       mov    word ptr [bp - 4], 0
4386: e90300           jmp    0x438c
4389: ff46fc           inc    word ptr [bp - 4]
438c: 837efc10         cmp    word ptr [bp - 4], 0x10
4390: 0f8d4c01         jge    0x44e0
4394: 8b5efe           mov    bx, word ptr [bp - 2]
4397: c1e304           shl    bx, 4
439a: 8b870602         mov    ax, word ptr [bx + 0x206]
439e: 8b5efe           mov    bx, word ptr [bp - 2]
43a1: c1e304           shl    bx, 4
43a4: 035efc           add    bx, word ptr [bp - 4]
43a7: 8bcb             mov    cx, bx
43a9: d1e3             shl    bx, 1
43ab: 03d9             add    bx, cx
43ad: c1e302           shl    bx, 2
43b0: 8987c20b         mov    word ptr [bx + 0xbc2], ax
43b4: 8b5efe           mov    bx, word ptr [bp - 2]
43b7: c1e304           shl    bx, 4
43ba: 8b870802         mov    ax, word ptr [bx + 0x208]
43be: 8b5efe           mov    bx, word ptr [bp - 2]
43c1: c1e304           shl    bx, 4
43c4: 035efc           add    bx, word ptr [bp - 4]
43c7: 8bcb             mov    cx, bx
43c9: d1e3             shl    bx, 1
43cb: 03d9             add    bx, cx
43cd: c1e302           shl    bx, 2
43d0: 8987c40b         mov    word ptr [bx + 0xbc4], ax
43d4: 8b5efe           mov    bx, word ptr [bp - 2]
43d7: c1e304           shl    bx, 4
43da: 035efc           add    bx, word ptr [bp - 4]
43dd: 8bc3             mov    ax, bx
43df: d1e3             shl    bx, 1
43e1: 03d8             add    bx, ax
43e3: c1e302           shl    bx, 2
43e6: c787ca0b2800     mov    word ptr [bx + 0xbca], 0x28
43ec: 8b5efe           mov    bx, word ptr [bp - 2]
43ef: c1e304           shl    bx, 4
43f2: 035efc           add    bx, word ptr [bp - 4]
43f5: 8bc3             mov    ax, bx
43f7: d1e3             shl    bx, 1
43f9: 03d8             add    bx, ax
43fb: c1e302           shl    bx, 2
43fe: c787cc0b2800     mov    word ptr [bx + 0xbcc], 0x28
4404: 6b46fc28         imul   ax, word ptr [bp - 4], 0x28
4408: 8b5efe           mov    bx, word ptr [bp - 2]
440b: c1e304           shl    bx, 4
440e: 035efc           add    bx, word ptr [bp - 4]
4411: 8bcb             mov    cx, bx
4413: d1e3             shl    bx, 1
4415: 03d9             add    bx, cx
4417: c1e302           shl    bx, 2
441a: 8987c60b         mov    word ptr [bx + 0xbc6], ax
441e: 8b5efe           mov    bx, word ptr [bp - 2]
4421: c1e304           shl    bx, 4
4424: 035efc           add    bx, word ptr [bp - 4]
4427: 8bc3             mov    ax, bx
4429: d1e3             shl    bx, 1
442b: 03d8             add    bx, ax
442d: c1e302           shl    bx, 2
4430: c787c80b0000     mov    word ptr [bx + 0xbc8], 0
4436: 8b5efe           mov    bx, word ptr [bp - 2]
4439: c1e304           shl    bx, 4
443c: 8b870603         mov    ax, word ptr [bx + 0x306]
4440: 8b5efe           mov    bx, word ptr [bp - 2]
4443: c1e304           shl    bx, 4
4446: 035efc           add    bx, word ptr [bp - 4]
4449: 8bcb             mov    cx, bx
444b: d1e3             shl    bx, 1
444d: 03d9             add    bx, cx
444f: c1e302           shl    bx, 2
4452: 8987c217         mov    word ptr [bx + 0x17c2], ax
4456: 8b5efe           mov    bx, word ptr [bp - 2]
4459: c1e304           shl    bx, 4
445c: 8b870803         mov    ax, word ptr [bx + 0x308]
4460: 8b5efe           mov    bx, word ptr [bp - 2]
4463: c1e304           shl    bx, 4
4466: 035efc           add    bx, word ptr [bp - 4]
4469: 8bcb             mov    cx, bx
446b: d1e3             shl    bx, 1
446d: 03d9             add    bx, cx
446f: c1e302           shl    bx, 2
4472: 8987c417         mov    word ptr [bx + 0x17c4], ax
4476: 8b5efe           mov    bx, word ptr [bp - 2]
4479: c1e304           shl    bx, 4
447c: 035efc           add    bx, word ptr [bp - 4]
447f: 8bc3             mov    ax, bx
4481: d1e3             shl    bx, 1
4483: 03d8             add    bx, ax
4485: c1e302           shl    bx, 2
4488: c787ca172800     mov    word ptr [bx + 0x17ca], 0x28
448e: 8b5efe           mov    bx, word ptr [bp - 2]
4491: c1e304           shl    bx, 4
4494: 035efc           add    bx, word ptr [bp - 4]
4497: 8bc3             mov    ax, bx
4499: d1e3             shl    bx, 1
449b: 03d8             add    bx, ax
449d: c1e302           shl    bx, 2
44a0: c787cc172800     mov    word ptr [bx + 0x17cc], 0x28
44a6: b80f00           mov    ax, 0xf
44a9: 2b46fc           sub    ax, word ptr [bp - 4]
44ac: 6bc028           imul   ax, ax, 0x28
44af: 8b5efe           mov    bx, word ptr [bp - 2]
44b2: c1e304           shl    bx, 4
44b5: 035efc           add    bx, word ptr [bp - 4]
44b8: 8bcb             mov    cx, bx
44ba: d1e3             shl    bx, 1
44bc: 03d9             add    bx, cx
44be: c1e302           shl    bx, 2
44c1: 8987c617         mov    word ptr [bx + 0x17c6], ax
44c5: 8b5efe           mov    bx, word ptr [bp - 2]
44c8: c1e304           shl    bx, 4
44cb: 035efc           add    bx, word ptr [bp - 4]
44ce: 8bc3             mov    ax, bx
44d0: d1e3             shl    bx, 1
44d2: 03d8             add    bx, ax
44d4: c1e302           shl    bx, 2
44d7: c787c8170000     mov    word ptr [bx + 0x17c8], 0
44dd: e9a9fe           jmp    0x4389
44e0: e925fe           jmp    0x4308
44e3: b80100           mov    ax, 1
44e6: e90000           jmp    0x44e9
44e9: 5e               pop    si
44ea: 5f               pop    di
44eb: c9               leave  
44ec: cb               retf   

sub_44ed:
44ed: 55               push   bp
44ee: 8bec             mov    bp, sp
44f0: b80200           mov    ax, 2
44f3: 9a12072c45       fcall  sub_0712
44f8: 57               push   di
44f9: 56               push   si
44fa: c746fe0000       mov    word ptr [bp - 2], 0
44ff: e90300           jmp    0x4505
4502: ff46fe           inc    word ptr [bp - 2]
4505: 837efe10         cmp    word ptr [bp - 2], 0x10
4509: 0f8d4800         jge    0x4555
450d: 8b5efe           mov    bx, word ptr [bp - 2]
4510: c1e304           shl    bx, 4
4513: 83bf020200       cmp    word ptr [bx + 0x202], 0
4518: 0f850300         jne    0x451f
451c: e93600           jmp    0x4555
451f: 8b46fe           mov    ax, word ptr [bp - 2]
4522: c1e004           shl    ax, 4
4525: 050602           add    ax, 0x206
4528: 50               push   ax
4529: 9aec2e4d45       fcall  sub_2eec
452e: 83c402           add    sp, 2
4531: 8b5efe           mov    bx, word ptr [bp - 2]
4534: c1e304           shl    bx, 4
4537: 83bf040201       cmp    word ptr [bx + 0x204], 1
453c: 0f851200         jne    0x4552
4540: 8b46fe           mov    ax, word ptr [bp - 2]
4543: c1e004           shl    ax, 4
4546: 050603           add    ax, 0x306
4549: 50               push   ax
454a: 9aec2e6245       fcall  sub_2eec
454f: 83c402           add    sp, 2
4552: e9adff           jmp    0x4502
4555: 5e               pop    si
4556: 5f               pop    di
4557: c9               leave  
4558: cb               retf   

sub_4559:
4559: 55               push   bp
455a: 8bec             mov    bp, sp
455c: b80000           mov    ax, 0
455f: 9a1207a741       fcall  sub_0712
4564: 57               push   di
4565: 56               push   si
4566: 833eca0500       cmp    word ptr [0x5ca], 0
456b: 0f8e0f00         jle    0x457e
456f: 833e200b00       cmp    word ptr [0xb20], 0
4574: 0f8d0600         jge    0x457e
4578: c706c00b1800     mov    word ptr [0xbc0], 0x18
457e: 833eca0500       cmp    word ptr [0x5ca], 0
4583: 0f8d2200         jge    0x45a9
4587: a1702d           mov    ax, word ptr [0x2d70]
458a: 8b1e240b         mov    bx, word ptr [0xb24]
458e: 8bcb             mov    cx, bx
4590: d1e3             shl    bx, 1
4592: 03d9             add    bx, cx
4594: c1e302           shl    bx, 2
4597: 2b87ca0b         sub    ax, word ptr [bx + 0xbca]
459b: 3b06200b         cmp    ax, word ptr [0xb20]
459f: 0f8d0600         jge    0x45a9
45a3: c706c00b1800     mov    word ptr [0xbc0], 0x18
45a9: 833eca0500       cmp    word ptr [0x5ca], 0
45ae: 0f8e3400         jle    0x45e6
45b2: a1702d           mov    ax, word ptr [0x2d70]
45b5: 8b1e240b         mov    bx, word ptr [0xb24]
45b9: 8bcb             mov    cx, bx
45bb: d1e3             shl    bx, 1
45bd: 03d9             add    bx, cx
45bf: c1e302           shl    bx, 2
45c2: 2b87ca0b         sub    ax, word ptr [bx + 0xbca]
45c6: 3b06200b         cmp    ax, word ptr [0xb20]
45ca: 0f8e1800         jle    0x45e6
45ce: 9ab612fb45       fcall  sub_12b6
45d3: b91400           mov    cx, 0x14
45d6: 99               cdq    
45d7: f7f9             idiv   cx
45d9: 83fa00           cmp    dx, 0
45dc: 0f850600         jne    0x45e6
45e0: c706c00b1800     mov    word ptr [0xbc0], 0x18
45e6: 833eca0500       cmp    word ptr [0x5ca], 0
45eb: 0f8d2100         jge    0x4610
45ef: 833e200b00       cmp    word ptr [0xb20], 0
45f4: 0f8e1800         jle    0x4610
45f8: 9ab6121d46       fcall  sub_12b6
45fd: b91400           mov    cx, 0x14
4600: 99               cdq    
4601: f7f9             idiv   cx
4603: 83fa00           cmp    dx, 0
4606: 0f850600         jne    0x4610
460a: c706c00b1800     mov    word ptr [0xbc0], 0x18
4610: 5e               pop    si
4611: 5f               pop    di
4612: c9               leave  
4613: cb               retf   

sub_4614:
4614: 55               push   bp
4615: 8bec             mov    bp, sp
4617: b80000           mov    ax, 0
461a: 9a12078f46       fcall  sub_0712
461f: 57               push   di
4620: 56               push   si
4621: 833e1c0b00       cmp    word ptr [0xb1c], 0
4626: 0f854300         jne    0x466d
462a: 833eca0500       cmp    word ptr [0x5ca], 0
462f: 0f8e0f00         jle    0x4642
4633: 833e200b00       cmp    word ptr [0xb20], 0
4638: 0f8d0600         jge    0x4642
463c: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
4642: 833eca0500       cmp    word ptr [0x5ca], 0
4647: 0f8d2200         jge    0x466d
464b: a1702d           mov    ax, word ptr [0x2d70]
464e: 8b1e240b         mov    bx, word ptr [0xb24]
4652: 8bcb             mov    cx, bx
4654: d1e3             shl    bx, 1
4656: 03d9             add    bx, cx
4658: c1e302           shl    bx, 2
465b: 2b87ca0b         sub    ax, word ptr [bx + 0xbca]
465f: 3b06200b         cmp    ax, word ptr [0xb20]
4663: 0f8d0600         jge    0x466d
4667: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
466d: 837e0600         cmp    word ptr [bp + 6], 0
4671: 0f845900         je     0x46ce
4675: 833eca0500       cmp    word ptr [0x5ca], 0
467a: 0f8e2600         jle    0x46a4
467e: a1702d           mov    ax, word ptr [0x2d70]
4681: 2d5000           sub    ax, 0x50
4684: 3b06200b         cmp    ax, word ptr [0xb20]
4688: 0f8e1800         jle    0x46a4
468c: 9ab612b946       fcall  sub_12b6
4691: b91400           mov    cx, 0x14
4694: 99               cdq    
4695: f7f9             idiv   cx
4697: 83fa00           cmp    dx, 0
469a: 0f850600         jne    0x46a4
469e: c706c00b1800     mov    word ptr [0xbc0], 0x18
46a4: 833eca0500       cmp    word ptr [0x5ca], 0
46a9: 0f8d2100         jge    0x46ce
46ad: 833e200b28       cmp    word ptr [0xb20], 0x28
46b2: 0f8e1800         jle    0x46ce
46b6: 9ab612db46       fcall  sub_12b6
46bb: b91400           mov    cx, 0x14
46be: 99               cdq    
46bf: f7f9             idiv   cx
46c1: 83fa00           cmp    dx, 0
46c4: 0f850600         jne    0x46ce
46c8: c706c00b1800     mov    word ptr [0xbc0], 0x18
46ce: 5e               pop    si
46cf: 5f               pop    di
46d0: c9               leave  
46d1: cb               retf   

sub_46d2:
46d2: 55               push   bp
46d3: 8bec             mov    bp, sp
46d5: b80200           mov    ax, 2
46d8: 9a12070047       fcall  sub_0712
46dd: 57               push   di
46de: 56               push   si
46df: a1460b           mov    ax, word ptr [0xb46]
46e2: ff0e460b         dec    word ptr [0xb46]
46e6: 3d0000           cmp    ax, 0
46e9: 0f8f0600         jg     0x46f3
46ed: c706c00b2a00     mov    word ptr [0xbc0], 0x2a
46f3: 5e               pop    si
46f4: 5f               pop    di
46f5: c9               leave  
46f6: cb               retf   

sub_46f7:
46f7: 55               push   bp
46f8: 8bec             mov    bp, sp
46fa: b80e00           mov    ax, 0xe
46fd: 9a12075a47       fcall  sub_0712
4702: 57               push   di
4703: 56               push   si
4704: 833e520b00       cmp    word ptr [0xb52], 0
4709: 0f847000         je     0x477d
470d: 9affff0000       lcall  0, 0xffff    ; <GetTickCount>
4712: 8946f6           mov    word ptr [bp - 0xa], ax
4715: 8956f8           mov    word ptr [bp - 8], dx
4718: a1540b           mov    ax, word ptr [0xb54]
471b: 8b16560b         mov    dx, word ptr [0xb56]
471f: 05e803           add    ax, 0x3e8
4722: 83d200           adc    dx, 0
4725: 3b56f8           cmp    dx, word ptr [bp - 8]
4728: 0f874e00         ja     0x477a
472c: 0f820700         jb     0x4737
4730: 3b46f6           cmp    ax, word ptr [bp - 0xa]
4733: 0f834300         jae    0x477a
4737: 8b46f6           mov    ax, word ptr [bp - 0xa]
473a: 8b56f8           mov    dx, word ptr [bp - 8]
473d: a3540b           mov    word ptr [0xb54], ax
4740: 8916560b         mov    word ptr [0xb56], dx
4744: ff0e520b         dec    word ptr [0xb52]
4748: 833e520b00       cmp    word ptr [0xb52], 0
474d: 0f841100         je     0x4762
4751: 6a00             push   0
4753: 6a00             push   0
4755: 6a6c             push   0x6c
4757: 9a10429b47       fcall  sub_4210
475c: 83c406           add    sp, 6
475f: e91800           jmp    0x477a
4762: 833e962d00       cmp    word ptr [0x2d96], 0
4767: 0f840900         je     0x4774
476b: c706c00b7100     mov    word ptr [0xbc0], 0x71
4771: e90600           jmp    0x477a
4774: c706c00b0100     mov    word ptr [0xbc0], 1
477a: e98600           jmp    0x4803
477d: a1580b           mov    ax, word ptr [0xb58]
4780: ff06580b         inc    word ptr [0xb58]
4784: 3d0a00           cmp    ax, 0xa
4787: 0f8d0300         jge    0x478e
478b: e97500           jmp    0x4803
478e: c706580b0000     mov    word ptr [0xb58], 0
4794: 8d46fa           lea    ax, [bp - 6]
4797: 50               push   ax
4798: 9a240fa747       fcall  sub_0f24
479d: 83c402           add    sp, 2
47a0: 8d46fa           lea    ax, [bp - 6]
47a3: 50               push   ax
47a4: 9a260ee647       fcall  sub_0e26
47a9: 83c402           add    sp, 2
47ac: 8946fe           mov    word ptr [bp - 2], ax
47af: 8b5efe           mov    bx, word ptr [bp - 2]
47b2: 8b4704           mov    ax, word ptr [bx + 4]
47b5: b90c00           mov    cx, 0xc
47b8: 99               cdq    
47b9: f7f9             idiv   cx
47bb: 8956f4           mov    word ptr [bp - 0xc], dx
47be: 837ef400         cmp    word ptr [bp - 0xc], 0
47c2: 0f850800         jne    0x47ce
47c6: c746f40c00       mov    word ptr [bp - 0xc], 0xc
47cb: e90000           jmp    0x47ce
47ce: 8b5efe           mov    bx, word ptr [bp - 2]
47d1: 837f0200         cmp    word ptr [bx + 2], 0
47d5: 0f852a00         jne    0x4803
47d9: a1500b           mov    ax, word ptr [0xb50]
47dc: 3946f4           cmp    word ptr [bp - 0xc], ax
47df: 0f842000         je     0x4803
47e3: 9a962a1048       fcall  sub_2a96
47e8: 2bc0             sub    ax, ax
47ea: a3560b           mov    word ptr [0xb56], ax
47ed: a3540b           mov    word ptr [0xb54], ax
47f0: 8b46f4           mov    ax, word ptr [bp - 0xc]
47f3: a3500b           mov    word ptr [0xb50], ax
47f6: a1500b           mov    ax, word ptr [0xb50]
47f9: 40               inc    ax
47fa: a3520b           mov    word ptr [0xb52], ax
47fd: c706c00b5100     mov    word ptr [0xbc0], 0x51
4803: 5e               pop    si
4804: 5f               pop    di
4805: c9               leave  
4806: cb               retf   

sub_4807:
4807: 55               push   bp
4808: 8bec             mov    bp, sp
480a: b80000           mov    ax, 0
480d: 9a12074e48       fcall  sub_0712
4812: 57               push   di
4813: 56               push   si
4814: ff36d023         push   word ptr [0x23d0]
4818: 6a00             push   0
481a: ff36200b         push   word ptr [0xb20]
481e: 9a2e480000       lcall  0, 0x482e    ; <SetWindowWord>
4823: ff36d023         push   word ptr [0x23d0]
4827: 6a02             push   2
4829: ff36220b         push   word ptr [0xb22]
482d: 9affff0000       lcall  0, 0xffff    ; <SetWindowWord>
4832: 837e0a09         cmp    word ptr [bp + 0xa], 9
4836: 0f8c1c00         jl     0x4856
483a: 837e0a0e         cmp    word ptr [bp + 0xa], 0xe
483e: 0f8f1400         jg     0x4856
4842: ff760a           push   word ptr [bp + 0xa]
4845: ff7608           push   word ptr [bp + 8]
4848: ff7606           push   word ptr [bp + 6]
484b: 9aa8316b48       fcall  sub_31a8
4850: 83c406           add    sp, 6
4853: e93200           jmp    0x4888
4856: 833eca0500       cmp    word ptr [0x5ca], 0
485b: 0f8e1400         jle    0x4873
485f: ff760a           push   word ptr [bp + 0xa]
4862: ff7608           push   word ptr [bp + 8]
4865: ff7606           push   word ptr [bp + 6]
4868: 9aa8318348       fcall  sub_31a8
486d: 83c406           add    sp, 6
4870: e91500           jmp    0x4888
4873: 8b460a           mov    ax, word ptr [bp + 0xa]
4876: 050001           add    ax, 0x100
4879: 50               push   ax
487a: ff7608           push   word ptr [bp + 8]
487d: ff7606           push   word ptr [bp + 6]
4880: 9aa8319548       fcall  sub_31a8
4885: 83c406           add    sp, 6
4888: 5e               pop    si
4889: 5f               pop    di
488a: c9               leave  
488b: cb               retf   

sub_488c:
488c: 55               push   bp
488d: 8bec             mov    bp, sp
488f: b80000           mov    ax, 0
4892: 9a1207b548       fcall  sub_0712
4897: 57               push   di
4898: 56               push   si
4899: 837e0a09         cmp    word ptr [bp + 0xa], 9
489d: 0f8c1c00         jl     0x48bd
48a1: 837e0a0e         cmp    word ptr [bp + 0xa], 0xe
48a5: 0f8f1400         jg     0x48bd
48a9: ff760a           push   word ptr [bp + 0xa]
48ac: ff7608           push   word ptr [bp + 8]
48af: ff7606           push   word ptr [bp + 6]
48b2: 9a5093d248       fcall  sub_9350
48b7: 83c406           add    sp, 6
48ba: e93200           jmp    0x48ef
48bd: 833ecc0500       cmp    word ptr [0x5cc], 0
48c2: 0f8e1400         jle    0x48da
48c6: ff760a           push   word ptr [bp + 0xa]
48c9: ff7608           push   word ptr [bp + 8]
48cc: ff7606           push   word ptr [bp + 6]
48cf: 9a5093ea48       fcall  sub_9350
48d4: 83c406           add    sp, 6
48d7: e91500           jmp    0x48ef
48da: 8b460a           mov    ax, word ptr [bp + 0xa]
48dd: 050001           add    ax, 0x100
48e0: 50               push   ax
48e1: ff7608           push   word ptr [bp + 8]
48e4: ff7606           push   word ptr [bp + 6]
48e7: 9a5093fc48       fcall  sub_9350
48ec: 83c406           add    sp, 6
48ef: 5e               pop    si
48f0: 5f               pop    di
48f1: c9               leave  
48f2: cb               retf   

sub_48f3:
48f3: 55               push   bp
48f4: 8bec             mov    bp, sp
48f6: b80000           mov    ax, 0
48f9: 9a12072649       fcall  sub_0712
48fe: 57               push   di
48ff: 56               push   si
4900: 837e0600         cmp    word ptr [bp + 6], 0
4904: 0f850600         jne    0x490e
4908: b80100           mov    ax, 1
490b: e90b00           jmp    0x4919
490e: ff7606           push   word ptr [bp + 6]
4911: 9aaf410000       lcall  0, 0x41af    ; <IsWindow>
4916: e90000           jmp    0x4919
4919: 5e               pop    si
491a: 5f               pop    di
491b: c9               leave  
491c: cb               retf   

sub_491d:
491d: 55               push   bp
491e: 8bec             mov    bp, sp
4920: b80000           mov    ax, 0
4923: 9a12071942       fcall  sub_0712
4928: 57               push   di
4929: 56               push   si
492a: 837e0600         cmp    word ptr [bp + 6], 0
492e: 0f852b00         jne    0x495d
4932: c45e08           les    bx, ptr [bp + 8]
4935: 26c7070000       mov    word ptr es:[bx], 0
493a: a1702d           mov    ax, word ptr [0x2d70]
493d: c45e08           les    bx, ptr [bp + 8]
4940: 26894704         mov    word ptr es:[bx + 4], ax
4944: a1722d           mov    ax, word ptr [0x2d72]
4947: c45e08           les    bx, ptr [bp + 8]
494a: 26894702         mov    word ptr es:[bx + 2], ax
494e: a1722d           mov    ax, word ptr [0x2d72]
4951: d1e0             shl    ax, 1
4953: c45e08           les    bx, ptr [bp + 8]
4956: 26894706         mov    word ptr es:[bx + 6], ax
495a: e90e00           jmp    0x496b
495d: ff7606           push   word ptr [bp + 6]
4960: ff760a           push   word ptr [bp + 0xa]
4963: ff7608           push   word ptr [bp + 8]
4966: 9ac3410000       lcall  0, 0x41c3    ; <GetWindowRect>
496b: 5e               pop    si
496c: 5f               pop    di
496d: c9               leave  
496e: cb               retf   

sub_496f:
496f: 55               push   bp
4970: 8bec             mov    bp, sp
4972: b80800           mov    ax, 8
4975: 9a12079849       fcall  sub_0712
497a: 57               push   di
497b: 56               push   si
497c: 833e1c0b00       cmp    word ptr [0xb1c], 0
4981: 0f850300         jne    0x4988
4985: e9af01           jmp    0x4b37
4988: 833e3c0b00       cmp    word ptr [0xb3c], 0
498d: 0f847301         je     0x4b04
4991: ff363c0b         push   word ptr [0xb3c]
4995: 9af348ca49       fcall  sub_48f3
499a: 83c402           add    sp, 2
499d: 3d0000           cmp    ax, 0
49a0: 0f851a00         jne    0x49be
49a4: 837e0602         cmp    word ptr [bp + 6], 2
49a8: 0f850900         jne    0x49b5
49ac: c706c00b5e00     mov    word ptr [0xbc0], 0x5e
49b2: e90600           jmp    0x49bb
49b5: c706c00b6600     mov    word ptr [0xbc0], 0x66
49bb: e97901           jmp    0x4b37
49be: 8d46f8           lea    ax, [bp - 8]
49c1: 16               push   ss
49c2: 50               push   ax
49c3: ff363c0b         push   word ptr [0xb3c]
49c7: 9a1d49524a       fcall  sub_491d
49cc: 83c406           add    sp, 6
49cf: a1400b           mov    ax, word ptr [0xb40]
49d2: 3946fa           cmp    word ptr [bp - 6], ax
49d5: 0f8f1700         jg     0x49f0
49d9: a1200b           mov    ax, word ptr [0xb20]
49dc: 052800           add    ax, 0x28
49df: 3b46f8           cmp    ax, word ptr [bp - 8]
49e2: 0f8c0a00         jl     0x49f0
49e6: a1200b           mov    ax, word ptr [0xb20]
49e9: 3946fc           cmp    word ptr [bp - 4], ax
49ec: 0f8d1a00         jge    0x4a0a
49f0: 837e0602         cmp    word ptr [bp + 6], 2
49f4: 0f850900         jne    0x4a01
49f8: c706c00b5e00     mov    word ptr [0xbc0], 0x5e
49fe: e90600           jmp    0x4a07
4a01: c706c00b6600     mov    word ptr [0xbc0], 0x66
4a07: e92d01           jmp    0x4b37
4a0a: a1400b           mov    ax, word ptr [0xb40]
4a0d: 3946fa           cmp    word ptr [bp - 6], ax
4a10: 0f8d4600         jge    0x4a5a
4a14: 8b46fa           mov    ax, word ptr [bp - 6]
4a17: 8b1e240b         mov    bx, word ptr [0xb24]
4a1b: 8bcb             mov    cx, bx
4a1d: d1e3             shl    bx, 1
4a1f: 03d9             add    bx, cx
4a21: c1e302           shl    bx, 2
4a24: 2b87cc0b         sub    ax, word ptr [bx + 0xbcc]
4a28: a3220b           mov    word ptr [0xb22], ax
4a2b: 8b46fa           mov    ax, word ptr [bp - 6]
4a2e: a3400b           mov    word ptr [0xb40], ax
4a31: 8b46fe           mov    ax, word ptr [bp - 2]
4a34: a3440b           mov    word ptr [0xb44], ax
4a37: 8b46f8           mov    ax, word ptr [bp - 8]
4a3a: a33e0b           mov    word ptr [0xb3e], ax
4a3d: 8b46fc           mov    ax, word ptr [bp - 4]
4a40: a3420b           mov    word ptr [0xb42], ax
4a43: ff36240b         push   word ptr [0xb24]
4a47: ff36220b         push   word ptr [0xb22]
4a4b: ff36200b         push   word ptr [0xb20]
4a4f: 9a0748b54a       fcall  sub_4807
4a54: 83c406           add    sp, 6
4a57: e9dd00           jmp    0x4b37
4a5a: 837e0601         cmp    word ptr [bp + 6], 1
4a5e: 0f857700         jne    0x4ad9
4a62: a1200b           mov    ax, word ptr [0xb20]
4a65: 050800           add    ax, 8
4a68: 3b46f8           cmp    ax, word ptr [bp - 8]
4a6b: 0f8d1b00         jge    0x4a8a
4a6f: 833eca0500       cmp    word ptr [0x5ca], 0
4a74: 0f8e1200         jle    0x4a8a
4a78: c706c00b6900     mov    word ptr [0xbc0], 0x69
4a7e: 8b46f8           mov    ax, word ptr [bp - 8]
4a81: 2d0a00           sub    ax, 0xa
4a84: a3200b           mov    word ptr [0xb20], ax
4a87: e9ad00           jmp    0x4b37
4a8a: a1200b           mov    ax, word ptr [0xb20]
4a8d: 052000           add    ax, 0x20
4a90: 3b46fc           cmp    ax, word ptr [bp - 4]
4a93: 0f8c1b00         jl     0x4ab2
4a97: 833eca0500       cmp    word ptr [0x5ca], 0
4a9c: 0f8d1200         jge    0x4ab2
4aa0: c706c00b6900     mov    word ptr [0xbc0], 0x69
4aa6: 8b46fc           mov    ax, word ptr [bp - 4]
4aa9: 2d1e00           sub    ax, 0x1e
4aac: a3200b           mov    word ptr [0xb20], ax
4aaf: e98500           jmp    0x4b37
4ab2: 9ab612444b       fcall  sub_12b6
4ab7: b91400           mov    cx, 0x14
4aba: 99               cdq    
4abb: f7f9             idiv   cx
4abd: 4a               dec    dx
4abe: 0f851700         jne    0x4ad9
4ac2: a1722d           mov    ax, word ptr [0x2d72]
4ac5: 2b06220b         sub    ax, word ptr [0xb22]
4ac9: 3d6400           cmp    ax, 0x64
4acc: 0f8e0900         jle    0x4ad9
4ad0: c706c00b6800     mov    word ptr [0xbc0], 0x68
4ad6: e95e00           jmp    0x4b37
4ad9: 837e0602         cmp    word ptr [bp + 6], 2
4add: 0f852300         jne    0x4b04
4ae1: a1200b           mov    ax, word ptr [0xb20]
4ae4: 052000           add    ax, 0x20
4ae7: 3b46f8           cmp    ax, word ptr [bp - 8]
4aea: 0f8c0d00         jl     0x4afb
4aee: a1200b           mov    ax, word ptr [0xb20]
4af1: 050800           add    ax, 8
4af4: 3b46fc           cmp    ax, word ptr [bp - 4]
4af7: 0f8e0900         jle    0x4b04
4afb: c706c00b5e00     mov    word ptr [0xbc0], 0x5e
4b01: e93300           jmp    0x4b37
4b04: 8b1e240b         mov    bx, word ptr [0xb24]
4b08: 8bc3             mov    ax, bx
4b0a: d1e3             shl    bx, 1
4b0c: 03d8             add    bx, ax
4b0e: c1e302           shl    bx, 2
4b11: 8b87ca0b         mov    ax, word ptr [bx + 0xbca]
4b15: 0306200b         add    ax, word ptr [0xb20]
4b19: 3d0000           cmp    ax, 0
4b1c: 0f8c0b00         jl     0x4b2b
4b20: a1702d           mov    ax, word ptr [0x2d70]
4b23: 3906200b         cmp    word ptr [0xb20], ax
4b27: 0f8e0900         jle    0x4b34
4b2b: c706c00b0000     mov    word ptr [0xbc0], 0
4b31: e90300           jmp    0x4b37
4b34: e90000           jmp    0x4b37
4b37: 5e               pop    si
4b38: 5f               pop    di
4b39: c9               leave  
4b3a: cb               retf   

sub_4b3b:
4b3b: 55               push   bp
4b3c: 8bec             mov    bp, sp
4b3e: b80800           mov    ax, 8
4b41: 9a1207644b       fcall  sub_0712
4b46: 57               push   di
4b47: 56               push   si
4b48: 833e1c0b00       cmp    word ptr [0xb1c], 0
4b4d: 0f850300         jne    0x4b54
4b51: e9c900           jmp    0x4c1d
4b54: 833e3c0b00       cmp    word ptr [0xb3c], 0
4b59: 0f84bd00         je     0x4c1a
4b5d: ff363c0b         push   word ptr [0xb3c]
4b61: 9af348854b       fcall  sub_48f3
4b66: 83c402           add    sp, 2
4b69: 3d0000           cmp    ax, 0
4b6c: 0f850900         jne    0x4b79
4b70: c706c00b6600     mov    word ptr [0xbc0], 0x66
4b76: e9a400           jmp    0x4c1d
4b79: 8d46f8           lea    ax, [bp - 8]
4b7c: 16               push   ss
4b7d: 50               push   ax
4b7e: ff363c0b         push   word ptr [0xb3c]
4b82: 9a1d490c4c       fcall  sub_491d
4b87: 83c406           add    sp, 6
4b8a: a1420b           mov    ax, word ptr [0xb42]
4b8d: 3946fc           cmp    word ptr [bp - 4], ax
4b90: 0f8d0900         jge    0x4b9d
4b94: 833eca0500       cmp    word ptr [0x5ca], 0
4b99: 0f8f1300         jg     0x4bb0
4b9d: a13e0b           mov    ax, word ptr [0xb3e]
4ba0: 3946f8           cmp    word ptr [bp - 8], ax
4ba3: 0f8e1200         jle    0x4bb9
4ba7: 833eca0500       cmp    word ptr [0x5ca], 0
4bac: 0f8d0900         jge    0x4bb9
4bb0: c706c00b6600     mov    word ptr [0xbc0], 0x66
4bb6: e96400           jmp    0x4c1d
4bb9: a1420b           mov    ax, word ptr [0xb42]
4bbc: 3946fc           cmp    word ptr [bp - 4], ax
4bbf: 0f8e0900         jle    0x4bcc
4bc3: 833eca0500       cmp    word ptr [0x5ca], 0
4bc8: 0f8f1300         jg     0x4bdf
4bcc: a13e0b           mov    ax, word ptr [0xb3e]
4bcf: 3946f8           cmp    word ptr [bp - 8], ax
4bd2: 0f8d4400         jge    0x4c1a
4bd6: 833eca0500       cmp    word ptr [0x5ca], 0
4bdb: 0f8d3b00         jge    0x4c1a
4bdf: 833eca0500       cmp    word ptr [0x5ca], 0
4be4: 0f8e0c00         jle    0x4bf4
4be8: 8b46fc           mov    ax, word ptr [bp - 4]
4beb: 050a00           add    ax, 0xa
4bee: a3200b           mov    word ptr [0xb20], ax
4bf1: e90900           jmp    0x4bfd
4bf4: 8b46f8           mov    ax, word ptr [bp - 8]
4bf7: 2d3200           sub    ax, 0x32
4bfa: a3200b           mov    word ptr [0xb20], ax
4bfd: ff36240b         push   word ptr [0xb24]
4c01: ff36220b         push   word ptr [0xb22]
4c05: ff36200b         push   word ptr [0xb20]
4c09: 9a07482a4c       fcall  sub_4807
4c0e: 83c406           add    sp, 6
4c11: c706c00b6600     mov    word ptr [0xbc0], 0x66
4c17: e90300           jmp    0x4c1d
4c1a: e90000           jmp    0x4c1d
4c1d: 5e               pop    si
4c1e: 5f               pop    di
4c1f: c9               leave  
4c20: cb               retf   

sub_4c21:
4c21: 55               push   bp
4c22: 8bec             mov    bp, sp
4c24: b80000           mov    ax, 0
4c27: 9a1207654c       fcall  sub_0712
4c2c: 57               push   di
4c2d: 56               push   si
4c2e: 8b4606           mov    ax, word ptr [bp + 6]
4c31: 394608           cmp    word ptr [bp + 8], ax
4c34: 0f8d1000         jge    0x4c48
4c38: 83460628         add    word ptr [bp + 6], 0x28
4c3c: 8b4606           mov    ax, word ptr [bp + 6]
4c3f: 2d5000           sub    ax, 0x50
4c42: 894608           mov    word ptr [bp + 8], ax
4c45: e90900           jmp    0x4c51
4c48: 8b4606           mov    ax, word ptr [bp + 6]
4c4b: 055000           add    ax, 0x50
4c4e: 894608           mov    word ptr [bp + 8], ax
4c51: a1220b           mov    ax, word ptr [0xb22]
4c54: 052800           add    ax, 0x28
4c57: 50               push   ax
4c58: ff36220b         push   word ptr [0xb22]
4c5c: ff7608           push   word ptr [bp + 8]
4c5f: ff7606           push   word ptr [bp + 6]
4c62: 9a363a9a4c       fcall  sub_3a36
4c67: 83c408           add    sp, 8
4c6a: 3d0000           cmp    ax, 0
4c6d: 0f841c00         je     0x4c8d
4c71: 837e0a01         cmp    word ptr [bp + 0xa], 1
4c75: 0f850600         jne    0x4c7f
4c79: c706c00b1800     mov    word ptr [0xbc0], 0x18
4c7f: 837e0a02         cmp    word ptr [bp + 0xa], 2
4c83: 0f850600         jne    0x4c8d
4c87: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
4c8d: 5e               pop    si
4c8e: 5f               pop    di
4c8f: c9               leave  
4c90: cb               retf   

sub_4c91:
4c91: 55               push   bp
4c92: 8bec             mov    bp, sp
4c94: b80000           mov    ax, 0
4c97: 9a1207d54c       fcall  sub_0712
4c9c: 57               push   di
4c9d: 56               push   si
4c9e: 8b4606           mov    ax, word ptr [bp + 6]
4ca1: 394608           cmp    word ptr [bp + 8], ax
4ca4: 0f8d1000         jge    0x4cb8
4ca8: 83460628         add    word ptr [bp + 6], 0x28
4cac: 8b4606           mov    ax, word ptr [bp + 6]
4caf: 2d5000           sub    ax, 0x50
4cb2: 894608           mov    word ptr [bp + 8], ax
4cb5: e90900           jmp    0x4cc1
4cb8: 8b4606           mov    ax, word ptr [bp + 6]
4cbb: 055000           add    ax, 0x50
4cbe: 894608           mov    word ptr [bp + 8], ax
4cc1: a1220b           mov    ax, word ptr [0xb22]
4cc4: 052800           add    ax, 0x28
4cc7: 50               push   ax
4cc8: ff36220b         push   word ptr [0xb22]
4ccc: ff7608           push   word ptr [bp + 8]
4ccf: ff7606           push   word ptr [bp + 6]
4cd2: 9a363aea4c       fcall  sub_3a36
4cd7: 83c408           add    sp, 8
4cda: e90000           jmp    0x4cdd
4cdd: 5e               pop    si
4cde: 5f               pop    di
4cdf: c9               leave  
4ce0: cb               retf   

sub_4ce1:
4ce1: 55               push   bp
4ce2: 8bec             mov    bp, sp
4ce4: b80000           mov    ax, 0
4ce7: 9a1207014d       fcall  sub_0712
4cec: 57               push   di
4ced: 56               push   si
4cee: c706c00b0000     mov    word ptr [0xbc0], 0
4cf4: 5e               pop    si
4cf5: 5f               pop    di
4cf6: c9               leave  
4cf7: cb               retf   

sub_4cf8:
4cf8: 55               push   bp
4cf9: 8bec             mov    bp, sp
4cfb: b81400           mov    ax, 0x14
4cfe: 9a12071a4d       fcall  sub_0712
4d03: 57               push   di
4d04: 56               push   si
4d05: a16a0b           mov    ax, word ptr [0xb6a]
4d08: ff066a0b         inc    word ptr [0xb6a]
4d0c: 3d6400           cmp    ax, 0x64
4d0f: 0f8e1200         jle    0x4d25
4d13: ff36d023         push   word ptr [0x23d0]
4d17: 9a4c3bd145       fcall  sub_3b4c
4d1c: 83c402           add    sp, 2
4d1f: c7066a0b0000     mov    word ptr [0xb6a], 0
4d25: 833ecc2300       cmp    word ptr [0x23cc], 0
4d2a: 0f840500         je     0x4d33
4d2e: 9af746484d       fcall  sub_46f7
4d33: a1c00b           mov    ax, word ptr [0xbc0]
4d36: e95541           jmp    0x8e8e
4d39: c7061c0b0000     mov    word ptr [0xb1c], 0
4d3f: 9a0e470000       lcall  0, 0x470e    ; <GetTickCount>
4d44: 50               push   ax
4d45: 9a9e12804d       fcall  sub_129e
4d4a: 83c402           add    sp, 2
4d4d: c706200bb0ff     mov    word ptr [0xb20], 0xffb0
4d53: c706220bb0ff     mov    word ptr [0xb22], 0xffb0
4d59: c706c00b0100     mov    word ptr [0xbc0], 1
4d5f: c706640b0000     mov    word ptr [0xb64], 0
4d65: 833e622d00       cmp    word ptr [0x2d62], 0
4d6a: 0f840900         je     0x4d77
4d6e: c706c00b0200     mov    word ptr [0xbc0], 2
4d74: e9bcff           jmp    0x4d33
4d77: c706922d0000     mov    word ptr [0x2d92], 0
4d7d: 9a962a9d4d       fcall  sub_2a96
4d82: 833e742d00       cmp    word ptr [0x2d74], 0
4d87: 0f840f00         je     0x4d9a
4d8b: a1742d           mov    ax, word ptr [0x2d74]
4d8e: a3c00b           mov    word ptr [0xbc0], ax
4d91: c706742d0000     mov    word ptr [0x2d74], 0
4d97: e93942           jmp    0x8fd3
4d9a: 9ab612c14d       fcall  sub_12b6
4d9f: b91400           mov    cx, 0x14
4da2: 99               cdq    
4da3: f7f9             idiv   cx
4da5: 83fa05           cmp    dx, 5
4da8: 0f851200         jne    0x4dbe
4dac: 833e1c0b00       cmp    word ptr [0xb1c], 0
4db1: 0f850900         jne    0x4dbe
4db5: c706c00b5500     mov    word ptr [0xbc0], 0x55
4dbb: e91542           jmp    0x8fd3
4dbe: 9ab612ee4d       fcall  sub_12b6
4dc3: b92800           mov    cx, 0x28
4dc6: 99               cdq    
4dc7: f7f9             idiv   cx
4dc9: 83fa05           cmp    dx, 5
4dcc: 0f851b00         jne    0x4deb
4dd0: 833e1c0b00       cmp    word ptr [0xb1c], 0
4dd5: 0f851200         jne    0x4deb
4dd9: 833e5c2d00       cmp    word ptr [0x2d5c], 0
4dde: 0f850900         jne    0x4deb
4de2: c706c00b0400     mov    word ptr [0xbc0], 4
4de8: e9e841           jmp    0x8fd3
4deb: 9ab6122c4e       fcall  sub_12b6
4df0: b95000           mov    cx, 0x50
4df3: 99               cdq    
4df4: f7f9             idiv   cx
4df6: 8bda             mov    bx, dx
4df8: d1e3             shl    bx, 1
4dfa: 8b877a04         mov    ax, word ptr [bx + 0x47a]
4dfe: a3c00b           mov    word ptr [0xbc0], ax
4e01: a1702d           mov    ax, word ptr [0x2d70]
4e04: 3906200b         cmp    word ptr [0xb20], ax
4e08: 0f8f1d00         jg     0x4e29
4e0c: 833e200bd8       cmp    word ptr [0xb20], -0x28
4e11: 0f8c1400         jl     0x4e29
4e15: 833e220bd8       cmp    word ptr [0xb22], -0x28
4e1a: 0f8c0b00         jl     0x4e29
4e1e: a1722d           mov    ax, word ptr [0x2d72]
4e21: 3906220b         cmp    word ptr [0xb22], ax
4e25: 0f8e5e00         jle    0x4e87
4e29: 9ab612474e       fcall  sub_12b6
4e2e: a801             test   al, 1
4e30: 0f852a00         jne    0x4e5e
4e34: c706ca050100     mov    word ptr [0x5ca], 1
4e3a: a1702d           mov    ax, word ptr [0x2d70]
4e3d: 03066c2d         add    ax, word ptr [0x2d6c]
4e41: a3200b           mov    word ptr [0xb20], ax
4e44: 9ab6126d4e       fcall  sub_12b6
4e49: 8b0e722d         mov    cx, word ptr [0x2d72]
4e4d: 83e940           sub    cx, 0x40
4e50: 99               cdq    
4e51: f7f9             idiv   cx
4e53: 03166e2d         add    dx, word ptr [0x2d6e]
4e57: 8916220b         mov    word ptr [0xb22], dx
4e5b: e92300           jmp    0x4e81
4e5e: c706ca05ffff     mov    word ptr [0x5ca], 0xffff
4e64: c706200bd8ff     mov    word ptr [0xb20], 0xffd8
4e6a: 9ab612994e       fcall  sub_12b6
4e6f: 8b0e722d         mov    cx, word ptr [0x2d72]
4e73: 83e940           sub    cx, 0x40
4e76: 99               cdq    
4e77: f7f9             idiv   cx
4e79: 03166e2d         add    dx, word ptr [0x2d6e]
4e7d: 8916220b         mov    word ptr [0xb22], dx
4e81: c706c00b0b00     mov    word ptr [0xbc0], 0xb
4e87: e94941           jmp    0x8fd3
4e8a: c7061c0b0100     mov    word ptr [0xb1c], 1
4e90: c706922d0000     mov    word ptr [0x2d92], 0
4e96: 9a962ab64e       fcall  sub_2a96
4e9b: 833e742d00       cmp    word ptr [0x2d74], 0
4ea0: 0f840f00         je     0x4eb3
4ea4: a1742d           mov    ax, word ptr [0x2d74]
4ea7: a3c00b           mov    word ptr [0xbc0], ax
4eaa: c706742d0000     mov    word ptr [0x2d74], 0
4eb0: e92041           jmp    0x8fd3
4eb3: 9ab612f44e       fcall  sub_12b6
4eb8: b95000           mov    cx, 0x50
4ebb: 99               cdq    
4ebc: f7f9             idiv   cx
4ebe: 8bda             mov    bx, dx
4ec0: d1e3             shl    bx, 1
4ec2: 8b871a05         mov    ax, word ptr [bx + 0x51a]
4ec6: a3c00b           mov    word ptr [0xbc0], ax
4ec9: a1702d           mov    ax, word ptr [0x2d70]
4ecc: 3906200b         cmp    word ptr [0xb20], ax
4ed0: 0f8f1d00         jg     0x4ef1
4ed4: 833e200bd8       cmp    word ptr [0xb20], -0x28
4ed9: 0f8c1400         jl     0x4ef1
4edd: 833e220bd8       cmp    word ptr [0xb22], -0x28
4ee2: 0f8c0b00         jl     0x4ef1
4ee6: a1722d           mov    ax, word ptr [0x2d72]
4ee9: 3906220b         cmp    word ptr [0xb22], ax
4eed: 0f8e0401         jle    0x4ff5
4ef1: 9ab612434f       fcall  sub_12b6
4ef6: b90a00           mov    cx, 0xa
4ef9: 99               cdq    
4efa: f7f9             idiv   cx
4efc: 83fa00           cmp    dx, 0
4eff: 0f851200         jne    0x4f15
4f03: 833e5c2d00       cmp    word ptr [0x2d5c], 0
4f08: 0f850900         jne    0x4f15
4f0c: c706c00b0600     mov    word ptr [0xbc0], 6
4f12: e9be40           jmp    0x8fd3
4f15: 9affff0000       lcall  0, 0xffff    ; <GetActiveWindow>
4f1a: a33c0b           mov    word ptr [0xb3c], ax
4f1d: a1d023           mov    ax, word ptr [0x23d0]
4f20: 39063c0b         cmp    word ptr [0xb3c], ax
4f24: 0f842700         je     0x4f4f
4f28: a1902d           mov    ax, word ptr [0x2d90]
4f2b: 39063c0b         cmp    word ptr [0xb3c], ax
4f2f: 0f841c00         je     0x4f4f
4f33: 833e3c0b00       cmp    word ptr [0xb3c], 0
4f38: 0f841300         je     0x4f4f
4f3c: ff363c0b         push   word ptr [0xb3c]
4f40: 9ad639634f       fcall  sub_39d6
4f45: 83c402           add    sp, 2
4f48: 3d0000           cmp    ax, 0
4f4b: 0f840900         je     0x4f58
4f4f: c706c00b0300     mov    word ptr [0xbc0], 3
4f55: e9dbfd           jmp    0x4d33
4f58: 1e               push   ds
4f59: 683e0b           push   0xb3e
4f5c: ff363c0b         push   word ptr [0xb3c]
4f60: 9a1d497d4f       fcall  sub_491d
4f65: 83c406           add    sp, 6
4f68: 833e400b0a       cmp    word ptr [0xb40], 0xa
4f6d: 0f8d0900         jge    0x4f7a
4f71: c706c00b0300     mov    word ptr [0xbc0], 3
4f77: e9b9fd           jmp    0x4d33
4f7a: 9ab612c84f       fcall  sub_12b6
4f7f: 99               cdq    
4f80: f73e420b         idiv   word ptr [0xb42]
4f84: 8bc2             mov    ax, dx
4f86: 2b063e0b         sub    ax, word ptr [0xb3e]
4f8a: b90300           mov    cx, 3
4f8d: 99               cdq    
4f8e: f7f9             idiv   cx
4f90: 8bd0             mov    dx, ax
4f92: a1420b           mov    ax, word ptr [0xb42]
4f95: 2b063e0b         sub    ax, word ptr [0xb3e]
4f99: 8bda             mov    bx, dx
4f9b: 99               cdq    
4f9c: 2bc2             sub    ax, dx
4f9e: d1f8             sar    ax, 1
4fa0: 03d8             add    bx, ax
4fa2: 031e3e0b         add    bx, word ptr [0xb3e]
4fa6: 83eb14           sub    bx, 0x14
4fa9: 891e200b         mov    word ptr [0xb20], bx
4fad: c706220bd8ff     mov    word ptr [0xb22], 0xffd8
4fb3: c706600b0000     mov    word ptr [0xb60], 0
4fb9: c706260b0000     mov    word ptr [0xb26], 0
4fbf: c706280b0000     mov    word ptr [0xb28], 0
4fc5: 9ab612dd4f       fcall  sub_12b6
4fca: b90200           mov    cx, 2
4fcd: 99               cdq    
4fce: f7f9             idiv   cx
4fd0: 8916620b         mov    word ptr [0xb62], dx
4fd4: c706c00b5c00     mov    word ptr [0xbc0], 0x5c
4fda: 9ab6120150       fcall  sub_12b6
4fdf: b90300           mov    cx, 3
4fe2: 99               cdq    
4fe3: f7f9             idiv   cx
4fe5: 83fa00           cmp    dx, 0
4fe8: 0f850900         jne    0x4ff5
4fec: c706c00b0300     mov    word ptr [0xbc0], 3
4ff2: e93efd           jmp    0x4d33
4ff5: e9db3f           jmp    0x8fd3
4ff8: c7061c0b0100     mov    word ptr [0xb1c], 1
4ffe: 9ab6121450       fcall  sub_12b6
5003: 8b0e702d         mov    cx, word ptr [0x2d70]
5007: 83e928           sub    cx, 0x28
500a: 99               cdq    
500b: f7f9             idiv   cx
500d: 8916200b         mov    word ptr [0xb20], dx
5011: 9ab6123a50       fcall  sub_12b6
5016: b91400           mov    cx, 0x14
5019: 99               cdq    
501a: f7f9             idiv   cx
501c: 83ead8           sub    dx, -0x28
501f: f7da             neg    dx
5021: 8916220b         mov    word ptr [0xb22], dx
5025: c706600b0000     mov    word ptr [0xb60], 0
502b: c706260b0000     mov    word ptr [0xb26], 0
5031: c706280b0000     mov    word ptr [0xb28], 0
5037: 9ab6124950       fcall  sub_12b6
503c: b90200           mov    cx, 2
503f: 99               cdq    
5040: f7f9             idiv   cx
5042: 8916620b         mov    word ptr [0xb62], dx
5046: 9ab6125f50       fcall  sub_12b6
504b: b90300           mov    cx, 3
504e: 99               cdq    
504f: f7f9             idiv   cx
5051: 83fa00           cmp    dx, 0
5054: 0f850c00         jne    0x5064
5058: ff36d023         push   word ptr [0x23d0]
505c: 9abf2aaa50       fcall  sub_2abf
5061: 83c402           add    sp, 2
5064: c706c00b6100     mov    word ptr [0xbc0], 0x61
506a: e9663f           jmp    0x8fd3
506d: e9633f           jmp    0x8fd3
5070: e9603f           jmp    0x8fd3
5073: a1702d           mov    ax, word ptr [0x2d70]
5076: 99               cdq    
5077: 2bc2             sub    ax, dx
5079: d1f8             sar    ax, 1
507b: 2d1400           sub    ax, 0x14
507e: 3b06200b         cmp    ax, word ptr [0xb20]
5082: 0f8e0900         jle    0x508f
5086: c706ca050100     mov    word ptr [0x5ca], 1
508c: e90600           jmp    0x5095
508f: c706ca05ffff     mov    word ptr [0x5ca], 0xffff
5095: c706240b0400     mov    word ptr [0xb24], 4
509b: ff36240b         push   word ptr [0xb24]
509f: ff36220b         push   word ptr [0xb22]
50a3: ff36200b         push   word ptr [0xb20]
50a7: 9a07487849       fcall  sub_4807
50ac: 83c406           add    sp, 6
50af: c706c00b0500     mov    word ptr [0xbc0], 5
50b5: e91b3f           jmp    0x8fd3
50b8: a15a0b           mov    ax, word ptr [0xb5a]
50bb: ff065a0b         inc    word ptr [0xb5a]
50bf: 3d0100           cmp    ax, 1
50c2: 0f8d0300         jge    0x50c9
50c6: e90a3f           jmp    0x8fd3
50c9: c7065a0b0000     mov    word ptr [0xb5a], 0
50cf: a1ca05           mov    ax, word ptr [0x5ca]
50d2: c1e004           shl    ax, 4
50d5: 2906200b         sub    word ptr [0xb20], ax
50d9: 833e240b04       cmp    word ptr [0xb24], 4
50de: 0f850600         jne    0x50e8
50e2: b80500           mov    ax, 5
50e5: e90300           jmp    0x50eb
50e8: b80400           mov    ax, 4
50eb: a3240b           mov    word ptr [0xb24], ax
50ee: ff36240b         push   word ptr [0xb24]
50f2: ff36220b         push   word ptr [0xb22]
50f6: ff36200b         push   word ptr [0xb20]
50fa: 9a07482251       fcall  sub_4807
50ff: 83c406           add    sp, 6
5102: 833e200bd8       cmp    word ptr [0xb20], -0x28
5107: 0f8c0b00         jl     0x5116
510b: a1702d           mov    ax, word ptr [0x2d70]
510e: 3906200b         cmp    word ptr [0xb20], ax
5112: 0f8e0600         jle    0x511c
5116: c706c00b0600     mov    word ptr [0xbc0], 6
511c: e9b43e           jmp    0x8fd3
511f: 9ab6124151       fcall  sub_12b6
5124: b90800           mov    cx, 8
5127: 99               cdq    
5128: f7f9             idiv   cx
512a: 8bda             mov    bx, dx
512c: d1e3             shl    bx, 1
512e: 8b87ba05         mov    ax, word ptr [bx + 0x5ba]
5132: a3c00b           mov    word ptr [0xbc0], ax
5135: e99b3e           jmp    0x8fd3
5138: c7061e0b0000     mov    word ptr [0xb1e], 0
513e: 9ab6125b51       fcall  sub_12b6
5143: a801             test   al, 1
5145: 0f850600         jne    0x514f
5149: c7061e0b0100     mov    word ptr [0xb1e], 1
514f: 833e1e0b00       cmp    word ptr [0xb1e], 0
5154: 0f840500         je     0x515d
5158: 9af03d7251       fcall  sub_3df0
515d: c706240b0400     mov    word ptr [0xb24], 4
5163: ff36240b         push   word ptr [0xb24]
5167: ff36220b         push   word ptr [0xb22]
516b: ff36200b         push   word ptr [0xb20]
516f: 9a07487a51       fcall  sub_4807
5174: 83c406           add    sp, 6
5177: 9ab612dd51       fcall  sub_12b6
517c: b90a00           mov    cx, 0xa
517f: 99               cdq    
5180: f7f9             idiv   cx
5182: 03d1             add    dx, cx
5184: 8916460b         mov    word ptr [0xb46], dx
5188: c706c00b0800     mov    word ptr [0xbc0], 8
518e: e9423e           jmp    0x8fd3
5191: a15a0b           mov    ax, word ptr [0xb5a]
5194: ff065a0b         inc    word ptr [0xb5a]
5198: 3d0100           cmp    ax, 1
519b: 0f8d0300         jge    0x51a2
519f: e9313e           jmp    0x8fd3
51a2: c7065a0b0000     mov    word ptr [0xb5a], 0
51a8: 833e1e0b00       cmp    word ptr [0xb1e], 0
51ad: 0f84a800         je     0x5259
51b1: 833eca0500       cmp    word ptr [0x5ca], 0
51b6: 0f8e2e00         jle    0x51e8
51ba: ff36200b         push   word ptr [0xb20]
51be: a1ca05           mov    ax, word ptr [0x5ca]
51c1: c1e004           shl    ax, 4
51c4: 2b06200b         sub    ax, word ptr [0xb20]
51c8: f7d8             neg    ax
51ca: 50               push   ax
51cb: a1220b           mov    ax, word ptr [0xb22]
51ce: 052800           add    ax, 0x28
51d1: 50               push   ax
51d2: ff36220b         push   word ptr [0xb22]
51d6: 8d46fa           lea    ax, [bp - 6]
51d9: 50               push   ax
51da: 9a7c3e1152       fcall  sub_3e7c
51df: 83c40a           add    sp, 0xa
51e2: 8946fe           mov    word ptr [bp - 2], ax
51e5: e93100           jmp    0x5219
51e8: a1200b           mov    ax, word ptr [0xb20]
51eb: 052800           add    ax, 0x28
51ee: 50               push   ax
51ef: a1ca05           mov    ax, word ptr [0x5ca]
51f2: c1e004           shl    ax, 4
51f5: 2b06200b         sub    ax, word ptr [0xb20]
51f9: f7d8             neg    ax
51fb: 052800           add    ax, 0x28
51fe: 50               push   ax
51ff: a1220b           mov    ax, word ptr [0xb22]
5202: 052800           add    ax, 0x28
5205: 50               push   ax
5206: ff36220b         push   word ptr [0xb22]
520a: 8d46fa           lea    ax, [bp - 6]
520d: 50               push   ax
520e: 9a7c3e4b52       fcall  sub_3e7c
5213: 83c40a           add    sp, 0xa
5216: 8946fe           mov    word ptr [bp - 2], ax
5219: 837efe00         cmp    word ptr [bp - 2], 0
521d: 0f843800         je     0x5259
5221: 833eca0500       cmp    word ptr [0x5ca], 0
5226: 0f8e0900         jle    0x5233
522a: 8b46fe           mov    ax, word ptr [bp - 2]
522d: a3200b           mov    word ptr [0xb20], ax
5230: e90900           jmp    0x523c
5233: 8b46fe           mov    ax, word ptr [bp - 2]
5236: 2d2800           sub    ax, 0x28
5239: a3200b           mov    word ptr [0xb20], ax
523c: ff36240b         push   word ptr [0xb24]
5240: ff36220b         push   word ptr [0xb22]
5244: ff36200b         push   word ptr [0xb20]
5248: 9a07489052       fcall  sub_4807
524d: 83c406           add    sp, 6
5250: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
5256: e97a3d           jmp    0x8fd3
5259: 833e4c0b00       cmp    word ptr [0xb4c], 0
525e: 0f850a00         jne    0x526c
5262: a1ca05           mov    ax, word ptr [0x5ca]
5265: c1e004           shl    ax, 4
5268: 2906200b         sub    word ptr [0xb20], ax
526c: 833e240b04       cmp    word ptr [0xb24], 4
5271: 0f850600         jne    0x527b
5275: b80500           mov    ax, 5
5278: e90300           jmp    0x527e
527b: b80400           mov    ax, 4
527e: a3240b           mov    word ptr [0xb24], ax
5281: ff36240b         push   word ptr [0xb24]
5285: ff36220b         push   word ptr [0xb22]
5289: ff36200b         push   word ptr [0xb20]
528d: 9a07489852       fcall  sub_4807
5292: 83c406           add    sp, 6
5295: 9ab612bb52       fcall  sub_12b6
529a: b93200           mov    cx, 0x32
529d: 99               cdq    
529e: f7f9             idiv   cx
52a0: 83fa00           cmp    dx, 0
52a3: 0f850f00         jne    0x52b6
52a7: 833e1c0b00       cmp    word ptr [0xb1c], 0
52ac: 0f840600         je     0x52b6
52b0: c706c00b0900     mov    word ptr [0xbc0], 9
52b6: 6a01             push   1
52b8: 9a1446c352       fcall  sub_4614
52bd: 83c402           add    sp, 2
52c0: 9ad246ca52       fcall  sub_46d2
52c5: 6a02             push   2
52c7: 9a6f49ec52       fcall  sub_496f
52cc: 83c402           add    sp, 2
52cf: 6a02             push   2
52d1: a1ca05           mov    ax, word ptr [0x5ca]
52d4: c1e004           shl    ax, 4
52d7: 0306200b         add    ax, word ptr [0xb20]
52db: 50               push   ax
52dc: a1ca05           mov    ax, word ptr [0x5ca]
52df: c1e004           shl    ax, 4
52e2: 2b06200b         sub    ax, word ptr [0xb20]
52e6: f7d8             neg    ax
52e8: 50               push   ax
52e9: 9a214c7d53       fcall  sub_4c21
52ee: 83c406           add    sp, 6
52f1: e9df3c           jmp    0x8fd3
52f4: c706260bf5ff     mov    word ptr [0xb26], 0xfff5
52fa: a1ca05           mov    ax, word ptr [0x5ca]
52fd: c1e003           shl    ax, 3
5300: f7d8             neg    ax
5302: a3280b           mov    word ptr [0xb28], ax
5305: a1220b           mov    ax, word ptr [0xb22]
5308: a32c0b           mov    word ptr [0xb2c], ax
530b: c706c00b0a00     mov    word ptr [0xbc0], 0xa
5311: a1280b           mov    ax, word ptr [0xb28]
5314: 0106200b         add    word ptr [0xb20], ax
5318: a1260b           mov    ax, word ptr [0xb26]
531b: 0106220b         add    word ptr [0xb22], ax
531f: 8306260b02       add    word ptr [0xb26], 2
5324: 833e260bff       cmp    word ptr [0xb26], -1
5329: 0f8c1200         jl     0x533f
532d: 833e260b01       cmp    word ptr [0xb26], 1
5332: 0f8f0900         jg     0x533f
5336: c706240b1700     mov    word ptr [0xb24], 0x17
533c: e91800           jmp    0x5357
533f: 833e260bff       cmp    word ptr [0xb26], -1
5344: 0f8d0900         jge    0x5351
5348: c706240b1e00     mov    word ptr [0xb24], 0x1e
534e: e90600           jmp    0x5357
5351: c706240b1800     mov    word ptr [0xb24], 0x18
5357: a1220b           mov    ax, word ptr [0xb22]
535a: 39062c0b         cmp    word ptr [0xb2c], ax
535e: 0f8f0c00         jg     0x536e
5362: a12c0b           mov    ax, word ptr [0xb2c]
5365: a3220b           mov    word ptr [0xb22], ax
5368: c706c00b0700     mov    word ptr [0xbc0], 7
536e: ff36240b         push   word ptr [0xb24]
5372: ff36220b         push   word ptr [0xb22]
5376: ff36200b         push   word ptr [0xb20]
537a: 9a07488753       fcall  sub_4807
537f: 83c406           add    sp, 6
5382: 6a00             push   0
5384: 9a1446a153       fcall  sub_4614
5389: 83c402           add    sp, 2
538c: 6a02             push   2
538e: a1200b           mov    ax, word ptr [0xb20]
5391: 2b06280b         sub    ax, word ptr [0xb28]
5395: 50               push   ax
5396: a1280b           mov    ax, word ptr [0xb28]
5399: 0306200b         add    ax, word ptr [0xb20]
539d: 50               push   ax
539e: 9a214cd053       fcall  sub_4c21
53a3: 83c406           add    sp, 6
53a6: 833ec00b1e       cmp    word ptr [0xbc0], 0x1e
53ab: 0f851500         jne    0x53c4
53af: a1220b           mov    ax, word ptr [0xb22]
53b2: 39062c0b         cmp    word ptr [0xb2c], ax
53b6: 0f840a00         je     0x53c4
53ba: a1220b           mov    ax, word ptr [0xb22]
53bd: 2b062c0b         sub    ax, word ptr [0xb2c]
53c1: a3640b           mov    word ptr [0xb64], ax
53c4: e90c3c           jmp    0x8fd3
53c7: c7061e0b0000     mov    word ptr [0xb1e], 0
53cd: 9ab612f653       fcall  sub_12b6
53d2: 250100           and    ax, 1
53d5: 3d0100           cmp    ax, 1
53d8: 1bc0             sbb    ax, ax
53da: f7d8             neg    ax
53dc: 85061c0b         test   word ptr [0xb1c], ax
53e0: 0f840600         je     0x53ea
53e4: c7061e0b0100     mov    word ptr [0xb1e], 1
53ea: 833e1e0b00       cmp    word ptr [0xb1e], 0
53ef: 0f840500         je     0x53f8
53f3: 9af03dfb53       fcall  sub_3df0
53f8: 9ab6121e54       fcall  sub_12b6
53fd: b90a00           mov    cx, 0xa
5400: 99               cdq    
5401: f7f9             idiv   cx
5403: 03d1             add    dx, cx
5405: 8916460b         mov    word ptr [0xb46], dx
5409: c706240b0200     mov    word ptr [0xb24], 2
540f: ff36240b         push   word ptr [0xb24]
5413: ff36220b         push   word ptr [0xb22]
5417: ff36200b         push   word ptr [0xb20]
541b: 9a07487d54       fcall  sub_4807
5420: 83c406           add    sp, 6
5423: c706c00b0c00     mov    word ptr [0xbc0], 0xc
5429: e9a73b           jmp    0x8fd3
542c: a15a0b           mov    ax, word ptr [0xb5a]
542f: ff065a0b         inc    word ptr [0xb5a]
5433: 3d0100           cmp    ax, 1
5436: 0f8d0300         jge    0x543d
543a: e9963b           jmp    0x8fd3
543d: c7065a0b0000     mov    word ptr [0xb5a], 0
5443: 833e1e0b00       cmp    word ptr [0xb1e], 0
5448: 0f84df00         je     0x552b
544c: 833eca0500       cmp    word ptr [0x5ca], 0
5451: 0f8e3300         jle    0x5488
5455: ff36200b         push   word ptr [0xb20]
5459: a1ca05           mov    ax, word ptr [0x5ca]
545c: 8bc8             mov    cx, ax
545e: d1e0             shl    ax, 1
5460: 03c1             add    ax, cx
5462: d1e0             shl    ax, 1
5464: 2b06200b         sub    ax, word ptr [0xb20]
5468: f7d8             neg    ax
546a: 50               push   ax
546b: a1220b           mov    ax, word ptr [0xb22]
546e: 052800           add    ax, 0x28
5471: 50               push   ax
5472: ff36220b         push   word ptr [0xb22]
5476: 8d46fa           lea    ax, [bp - 6]
5479: 50               push   ax
547a: 9a7c3e314d       fcall  sub_3e7c
547f: 83c40a           add    sp, 0xa
5482: 8946fe           mov    word ptr [bp - 2], ax
5485: e93600           jmp    0x54be
5488: a1200b           mov    ax, word ptr [0xb20]
548b: 052800           add    ax, 0x28
548e: 50               push   ax
548f: a1ca05           mov    ax, word ptr [0x5ca]
5492: 8bc8             mov    cx, ax
5494: d1e0             shl    ax, 1
5496: 03c1             add    ax, cx
5498: d1e0             shl    ax, 1
549a: 2b06200b         sub    ax, word ptr [0xb20]
549e: f7d8             neg    ax
54a0: 052800           add    ax, 0x28
54a3: 50               push   ax
54a4: a1220b           mov    ax, word ptr [0xb22]
54a7: 052800           add    ax, 0x28
54aa: 50               push   ax
54ab: ff36220b         push   word ptr [0xb22]
54af: 8d46fa           lea    ax, [bp - 6]
54b2: 50               push   ax
54b3: 9a7c3ef254       fcall  sub_3e7c
54b8: 83c40a           add    sp, 0xa
54bb: 8946fe           mov    word ptr [bp - 2], ax
54be: 837efe00         cmp    word ptr [bp - 2], 0
54c2: 0f846500         je     0x552b
54c6: 833eca0500       cmp    word ptr [0x5ca], 0
54cb: 0f8e0900         jle    0x54d8
54cf: 8b46fe           mov    ax, word ptr [bp - 2]
54d2: a3200b           mov    word ptr [0xb20], ax
54d5: e90900           jmp    0x54e1
54d8: 8b46fe           mov    ax, word ptr [bp - 2]
54db: 2d2800           sub    ax, 0x28
54de: a3200b           mov    word ptr [0xb20], ax
54e1: 8b46fa           mov    ax, word ptr [bp - 6]
54e4: a33c0b           mov    word ptr [0xb3c], ax
54e7: 1e               push   ds
54e8: 683e0b           push   0xb3e
54eb: ff363c0b         push   word ptr [0xb3c]
54ef: 9a1d491d55       fcall  sub_491d
54f4: 83c406           add    sp, 6
54f7: a1400b           mov    ax, word ptr [0xb40]
54fa: 2d0c00           sub    ax, 0xc
54fd: a35e0b           mov    word ptr [0xb5e], ax
5500: c7061c0b0100     mov    word ptr [0xb1c], 1
5506: a1200b           mov    ax, word ptr [0xb20]
5509: a35c0b           mov    word ptr [0xb5c], ax
550c: c706240b1e00     mov    word ptr [0xb24], 0x1e
5512: ff363c0b         push   word ptr [0xb3c]
5516: ff36d023         push   word ptr [0x23d0]
551a: 9a012b6755       fcall  sub_2b01
551f: 83c404           add    sp, 4
5522: c706c00b5900     mov    word ptr [0xbc0], 0x59
5528: e9a83a           jmp    0x8fd3
552b: 833e4c0b00       cmp    word ptr [0xb4c], 0
5530: 0f850f00         jne    0x5543
5534: a1ca05           mov    ax, word ptr [0x5ca]
5537: 8bc8             mov    cx, ax
5539: d1e0             shl    ax, 1
553b: 03c1             add    ax, cx
553d: d1e0             shl    ax, 1
553f: 2906200b         sub    word ptr [0xb20], ax
5543: 833e240b02       cmp    word ptr [0xb24], 2
5548: 0f850600         jne    0x5552
554c: b80300           mov    ax, 3
554f: e90300           jmp    0x5555
5552: b80200           mov    ax, 2
5555: a3240b           mov    word ptr [0xb24], ax
5558: ff36240b         push   word ptr [0xb24]
555c: ff36220b         push   word ptr [0xb22]
5560: ff36200b         push   word ptr [0xb20]
5564: 9a07486f55       fcall  sub_4807
5569: 83c406           add    sp, 6
556c: 9a59457455       fcall  sub_4559
5571: 9ad2467b55       fcall  sub_46d2
5576: 6a01             push   1
5578: 9a6f49a755       fcall  sub_496f
557d: 83c402           add    sp, 2
5580: 6a01             push   1
5582: a1ca05           mov    ax, word ptr [0x5ca]
5585: 8bc8             mov    cx, ax
5587: d1e0             shl    ax, 1
5589: 03c1             add    ax, cx
558b: d1e0             shl    ax, 1
558d: 0306200b         add    ax, word ptr [0xb20]
5591: 50               push   ax
5592: a1ca05           mov    ax, word ptr [0x5ca]
5595: 8bc8             mov    cx, ax
5597: d1e0             shl    ax, 1
5599: 03c1             add    ax, cx
559b: d1e0             shl    ax, 1
559d: 2b06200b         sub    ax, word ptr [0xb20]
55a1: f7d8             neg    ax
55a3: 50               push   ax
55a4: 9a214cb255       fcall  sub_4c21
55a9: 83c406           add    sp, 6
55ac: e9243a           jmp    0x8fd3
55af: 9ab612c155       fcall  sub_12b6
55b4: b90200           mov    cx, 2
55b7: 99               cdq    
55b8: f7f9             idiv   cx
55ba: 89164a0b         mov    word ptr [0xb4a], dx
55be: 9ab612f655       fcall  sub_12b6
55c3: b90400           mov    cx, 4
55c6: 99               cdq    
55c7: f7f9             idiv   cx
55c9: 03d1             add    dx, cx
55cb: 8916460b         mov    word ptr [0xb46], dx
55cf: 833e4a0b00       cmp    word ptr [0xb4a], 0
55d4: 0f840900         je     0x55e1
55d8: c706240b5800     mov    word ptr [0xb24], 0x58
55de: e90600           jmp    0x55e7
55e1: c706240b5600     mov    word ptr [0xb24], 0x56
55e7: ff36240b         push   word ptr [0xb24]
55eb: ff36220b         push   word ptr [0xb22]
55ef: ff36200b         push   word ptr [0xb20]
55f3: 9a07487856       fcall  sub_4807
55f8: 83c406           add    sp, 6
55fb: c706c00b0e00     mov    word ptr [0xbc0], 0xe
5601: e9cf39           jmp    0x8fd3
5604: a15a0b           mov    ax, word ptr [0xb5a]
5607: ff065a0b         inc    word ptr [0xb5a]
560b: 3d0300           cmp    ax, 3
560e: 0f8d0300         jge    0x5615
5612: e9be39           jmp    0x8fd3
5615: c7065a0b0000     mov    word ptr [0xb5a], 0
561b: 833e4c0b00       cmp    word ptr [0xb4c], 0
5620: 0f850f00         jne    0x5633
5624: a1ca05           mov    ax, word ptr [0x5ca]
5627: 8bc8             mov    cx, ax
5629: d1e0             shl    ax, 1
562b: 03c1             add    ax, cx
562d: d1e0             shl    ax, 1
562f: 2906200b         sub    word ptr [0xb20], ax
5633: 833e4a0b00       cmp    word ptr [0xb4a], 0
5638: 0f841800         je     0x5654
563c: 833e240b58       cmp    word ptr [0xb24], 0x58
5641: 0f850600         jne    0x564b
5645: b85900           mov    ax, 0x59
5648: e90300           jmp    0x564e
564b: b85800           mov    ax, 0x58
564e: a3240b           mov    word ptr [0xb24], ax
5651: e91500           jmp    0x5669
5654: 833e240b56       cmp    word ptr [0xb24], 0x56
5659: 0f850600         jne    0x5663
565d: b85700           mov    ax, 0x57    ; "ScreenMatePoo"
5660: e90300           jmp    0x5666
5663: b85600           mov    ax, 0x56
5666: a3240b           mov    word ptr [0xb24], ax
5669: ff36240b         push   word ptr [0xb24]
566d: ff36220b         push   word ptr [0xb22]
5671: ff36200b         push   word ptr [0xb20]
5675: 9a07488056       fcall  sub_4807
567a: 83c406           add    sp, 6
567d: 9a59458556       fcall  sub_4559
5682: 9ad2468c56       fcall  sub_46d2
5687: 6a01             push   1
5689: 9a6f499756       fcall  sub_496f
568e: 83c402           add    sp, 2
5691: e93f39           jmp    0x8fd3
5694: 9ab612a656       fcall  sub_12b6
5699: b90200           mov    cx, 2
569c: 99               cdq    
569d: f7f9             idiv   cx
569f: 89164a0b         mov    word ptr [0xb4a], dx
56a3: 9ab612db56       fcall  sub_12b6
56a8: b90300           mov    cx, 3
56ab: 99               cdq    
56ac: f7f9             idiv   cx
56ae: 03d1             add    dx, cx
56b0: 8916460b         mov    word ptr [0xb46], dx
56b4: 833e4a0b00       cmp    word ptr [0xb4a], 0
56b9: 0f840900         je     0x56c6
56bd: c706240b3600     mov    word ptr [0xb24], 0x36
56c3: e90600           jmp    0x56cc
56c6: c706240b3400     mov    word ptr [0xb24], 0x34
56cc: ff36240b         push   word ptr [0xb24]
56d0: ff36220b         push   word ptr [0xb22]
56d4: ff36200b         push   word ptr [0xb20]
56d8: 9a07484557       fcall  sub_4807
56dd: 83c406           add    sp, 6
56e0: c706c00b1000     mov    word ptr [0xbc0], 0x10
56e6: e9ea38           jmp    0x8fd3
56e9: a15a0b           mov    ax, word ptr [0xb5a]
56ec: ff065a0b         inc    word ptr [0xb5a]
56f0: 3d0300           cmp    ax, 3
56f3: 0f8d0300         jge    0x56fa
56f7: e9d938           jmp    0x8fd3
56fa: c7065a0b0000     mov    word ptr [0xb5a], 0
5700: 833e4a0b00       cmp    word ptr [0xb4a], 0
5705: 0f841800         je     0x5721
5709: 833e240b36       cmp    word ptr [0xb24], 0x36
570e: 0f850600         jne    0x5718
5712: b83700           mov    ax, 0x37
5715: e90300           jmp    0x571b
5718: b83600           mov    ax, 0x36
571b: a3240b           mov    word ptr [0xb24], ax
571e: e91500           jmp    0x5736
5721: 833e240b34       cmp    word ptr [0xb24], 0x34
5726: 0f850600         jne    0x5730
572a: b83500           mov    ax, 0x35
572d: e90300           jmp    0x5733
5730: b83400           mov    ax, 0x34
5733: a3240b           mov    word ptr [0xb24], ax
5736: ff36240b         push   word ptr [0xb24]
573a: ff36220b         push   word ptr [0xb22]
573e: ff36200b         push   word ptr [0xb20]
5742: 9a07484d57       fcall  sub_4807
5747: 83c406           add    sp, 6
574a: 9a59455257       fcall  sub_4559
574f: 9ad2465957       fcall  sub_46d2
5754: 6a00             push   0
5756: 9a6f497657       fcall  sub_496f
575b: 83c402           add    sp, 2
575e: e97238           jmp    0x8fd3
5761: c706240b0600     mov    word ptr [0xb24], 6
5767: ff36240b         push   word ptr [0xb24]
576b: ff36220b         push   word ptr [0xb22]
576f: ff36200b         push   word ptr [0xb20]
5773: 9a0748ae57       fcall  sub_4807
5778: 83c406           add    sp, 6
577b: c706c00b1200     mov    word ptr [0xbc0], 0x12
5781: e94f38           jmp    0x8fd3
5784: a15a0b           mov    ax, word ptr [0xb5a]
5787: ff065a0b         inc    word ptr [0xb5a]
578b: 3d0100           cmp    ax, 1
578e: 0f8d0300         jge    0x5795
5792: e93e38           jmp    0x8fd3
5795: c7065a0b0000     mov    word ptr [0xb5a], 0
579b: ff06240b         inc    word ptr [0xb24]
579f: ff36240b         push   word ptr [0xb24]
57a3: ff36220b         push   word ptr [0xb22]
57a7: ff36200b         push   word ptr [0xb20]
57ab: 9a0748cb57       fcall  sub_4807
57b0: 83c406           add    sp, 6
57b3: 833e240b08       cmp    word ptr [0xb24], 8
57b8: 0f851d00         jne    0x57d9
57bc: c706240b0000     mov    word ptr [0xb24], 0
57c2: c706c00b1300     mov    word ptr [0xbc0], 0x13
57c8: 9ab612de57       fcall  sub_12b6
57cd: b90800           mov    cx, 8
57d0: 99               cdq    
57d1: f7f9             idiv   cx
57d3: 03d1             add    dx, cx
57d5: 8916460b         mov    word ptr [0xb46], dx
57d9: 6a00             push   0
57db: 9a6f491858       fcall  sub_496f
57e0: 83c402           add    sp, 2
57e3: e9ed37           jmp    0x8fd3
57e6: a15a0b           mov    ax, word ptr [0xb5a]
57e9: ff065a0b         inc    word ptr [0xb5a]
57ed: 3d0400           cmp    ax, 4
57f0: 0f8d0300         jge    0x57f7
57f4: e9dc37           jmp    0x8fd3
57f7: c7065a0b0000     mov    word ptr [0xb5a], 0
57fd: 833e240b01       cmp    word ptr [0xb24], 1
5802: 1bc0             sbb    ax, ax
5804: f7d8             neg    ax
5806: a3240b           mov    word ptr [0xb24], ax
5809: ff36240b         push   word ptr [0xb24]
580d: ff36220b         push   word ptr [0xb22]
5811: ff36200b         push   word ptr [0xb20]
5815: 9a07482058       fcall  sub_4807
581a: 83c406           add    sp, 6
581d: 9ad2462758       fcall  sub_46d2
5822: 6a00             push   0
5824: 9a6f493258       fcall  sub_496f
5829: 83c402           add    sp, 2
582c: e9a437           jmp    0x8fd3
582f: 9ab612fd50       fcall  sub_12b6
5834: b90300           mov    cx, 3
5837: 99               cdq    
5838: f7f9             idiv   cx
583a: 89164a0b         mov    word ptr [0xb4a], dx
583e: 833e4a0b00       cmp    word ptr [0xb4a], 0
5843: 0f850900         jne    0x5850
5847: c706240b0600     mov    word ptr [0xb24], 6
584d: e91800           jmp    0x5868
5850: 833e4a0b01       cmp    word ptr [0xb4a], 1
5855: 0f850900         jne    0x5862
5859: c706240b1f00     mov    word ptr [0xb24], 0x1f
585f: e90600           jmp    0x5868
5862: c706240b4900     mov    word ptr [0xb24], 0x49
5868: ff36240b         push   word ptr [0xb24]
586c: ff36220b         push   word ptr [0xb22]
5870: ff36200b         push   word ptr [0xb20]
5874: 9a07488558       fcall  sub_4807
5879: 83c406           add    sp, 6
587c: c706c00b1500     mov    word ptr [0xbc0], 0x15
5882: 9ab6129258       fcall  sub_12b6
5887: b90f00           mov    cx, 0xf
588a: 99               cdq    
588b: f7f9             idiv   cx
588d: 8bf2             mov    si, dx
588f: 9ab612a558       fcall  sub_12b6
5894: b90f00           mov    cx, 0xf
5897: 99               cdq    
5898: f7f9             idiv   cx
589a: 03f2             add    si, dx
589c: 89365a0b         mov    word ptr [0xb5a], si
58a0: 6a00             push   0
58a2: 9a6f49b258       fcall  sub_496f
58a7: 83c402           add    sp, 2
58aa: e92637           jmp    0x8fd3
58ad: 6a00             push   0
58af: 9a6f49fa58       fcall  sub_496f
58b4: 83c402           add    sp, 2
58b7: a15a0b           mov    ax, word ptr [0xb5a]
58ba: ff0e5a0b         dec    word ptr [0xb5a]
58be: 3d0000           cmp    ax, 0
58c1: 0f8e0300         jle    0x58c8
58c5: e90b37           jmp    0x8fd3
58c8: c706c00b1600     mov    word ptr [0xbc0], 0x16
58ce: c706460b0000     mov    word ptr [0xb46], 0
58d4: e9fc36           jmp    0x8fd3
58d7: 8b1e4a0b         mov    bx, word ptr [0xb4a]
58db: c1e303           shl    bx, 3
58de: 031e460b         add    bx, word ptr [0xb46]
58e2: d1e3             shl    bx, 1
58e4: 8b87d405         mov    ax, word ptr [bx + 0x5d4]
58e8: a3240b           mov    word ptr [0xb24], ax
58eb: ff36240b         push   word ptr [0xb24]
58ef: ff36220b         push   word ptr [0xb22]
58f3: ff36200b         push   word ptr [0xb20]
58f7: 9a07481559       fcall  sub_4807
58fc: 83c406           add    sp, 6
58ff: ff06460b         inc    word ptr [0xb46]
5903: 833e460b07       cmp    word ptr [0xb46], 7
5908: 0f8e2400         jle    0x5930
590c: c706c00b1700     mov    word ptr [0xbc0], 0x17
5912: 9ab6122259       fcall  sub_12b6
5917: b90f00           mov    cx, 0xf
591a: 99               cdq    
591b: f7f9             idiv   cx
591d: 8bf2             mov    si, dx
591f: 9ab6123559       fcall  sub_12b6
5924: b90f00           mov    cx, 0xf
5927: 99               cdq    
5928: f7f9             idiv   cx
592a: 03f2             add    si, dx
592c: 89365a0b         mov    word ptr [0xb5a], si
5930: 6a00             push   0
5932: 9a6f494259       fcall  sub_496f
5937: 83c402           add    sp, 2
593a: e99636           jmp    0x8fd3
593d: 6a00             push   0
593f: 9a6f498d59       fcall  sub_496f
5944: 83c402           add    sp, 2
5947: a15a0b           mov    ax, word ptr [0xb5a]
594a: ff0e5a0b         dec    word ptr [0xb5a]
594e: 3d0000           cmp    ax, 0
5951: 0f8e0300         jle    0x5958
5955: e97b36           jmp    0x8fd3
5958: c706c00b0100     mov    word ptr [0xbc0], 1
595e: e97236           jmp    0x8fd3
5961: a15a0b           mov    ax, word ptr [0xb5a]
5964: ff065a0b         inc    word ptr [0xb5a]
5968: 3d0100           cmp    ax, 1
596b: 0f8d0300         jge    0x5972
596f: e96136           jmp    0x8fd3
5972: c7065a0b0000     mov    word ptr [0xb5a], 0
5978: c706240b0300     mov    word ptr [0xb24], 3
597e: ff36240b         push   word ptr [0xb24]
5982: ff36220b         push   word ptr [0xb22]
5986: ff36200b         push   word ptr [0xb20]
598a: 9a07489559       fcall  sub_4807
598f: 83c406           add    sp, 6
5992: 9ab6122b5a       fcall  sub_12b6
5997: a801             test   al, 1
5999: 0f840900         je     0x59a6
599d: c7064a0b0000     mov    word ptr [0xb4a], 0
59a3: e90600           jmp    0x59ac
59a6: c7064a0b0100     mov    word ptr [0xb4a], 1
59ac: c706c00b1900     mov    word ptr [0xbc0], 0x19
59b2: c706460b0000     mov    word ptr [0xb46], 0
59b8: e91836           jmp    0x8fd3
59bb: a15a0b           mov    ax, word ptr [0xb5a]
59be: ff065a0b         inc    word ptr [0xb5a]
59c2: 3d0100           cmp    ax, 1
59c5: 0f8d0300         jge    0x59cc
59c9: e90736           jmp    0x8fd3
59cc: c7065a0b0000     mov    word ptr [0xb5a], 0
59d2: 833e4a0b00       cmp    word ptr [0xb4a], 0
59d7: 0f842200         je     0x59fd
59db: 833eca0500       cmp    word ptr [0x5ca], 0
59e0: 0f8e0c00         jle    0x59f0
59e4: a1460b           mov    ax, word ptr [0xb46]
59e7: 050900           add    ax, 9
59ea: a3240b           mov    word ptr [0xb24], ax
59ed: e90a00           jmp    0x59fa
59f0: b80b00           mov    ax, 0xb
59f3: 2b06460b         sub    ax, word ptr [0xb46]
59f7: a3240b           mov    word ptr [0xb24], ax
59fa: e91f00           jmp    0x5a1c
59fd: 833eca0500       cmp    word ptr [0x5ca], 0
5a02: 0f8e0c00         jle    0x5a12
5a06: a1460b           mov    ax, word ptr [0xb46]
5a09: 050c00           add    ax, 0xc
5a0c: a3240b           mov    word ptr [0xb24], ax
5a0f: e90a00           jmp    0x5a1c
5a12: b80e00           mov    ax, 0xe
5a15: 2b06460b         sub    ax, word ptr [0xb46]
5a19: a3240b           mov    word ptr [0xb24], ax
5a1c: ff36240b         push   word ptr [0xb24]
5a20: ff36220b         push   word ptr [0xb22]
5a24: ff36200b         push   word ptr [0xb20]
5a28: 9a07484c5a       fcall  sub_4807
5a2d: 83c406           add    sp, 6
5a30: ff06460b         inc    word ptr [0xb46]
5a34: 833e460b02       cmp    word ptr [0xb46], 2
5a39: 0f8e0a00         jle    0x5a47
5a3d: f71eca05         neg    word ptr [0x5ca]
5a41: c706c00b1a00     mov    word ptr [0xbc0], 0x1a
5a47: 6a00             push   0
5a49: 9a6f49805a       fcall  sub_496f
5a4e: 83c402           add    sp, 2
5a51: e97f35           jmp    0x8fd3
5a54: a15a0b           mov    ax, word ptr [0xb5a]
5a57: ff065a0b         inc    word ptr [0xb5a]
5a5b: 3d0100           cmp    ax, 1
5a5e: 0f8d0300         jge    0x5a65
5a62: e96e35           jmp    0x8fd3
5a65: c7065a0b0000     mov    word ptr [0xb5a], 0
5a6b: c706240b0300     mov    word ptr [0xb24], 3
5a71: ff36240b         push   word ptr [0xb24]
5a75: ff36220b         push   word ptr [0xb22]
5a79: ff36200b         push   word ptr [0xb20]
5a7d: 9a0748905a       fcall  sub_4807
5a82: 83c406           add    sp, 6
5a85: c706c00b0100     mov    word ptr [0xbc0], 1
5a8b: 6a00             push   0
5a8d: 9a6f49ec5a       fcall  sub_496f
5a92: 83c402           add    sp, 2
5a95: e93b35           jmp    0x8fd3
5a98: c706260bf6ff     mov    word ptr [0xb26], 0xfff6
5a9e: a1ca05           mov    ax, word ptr [0x5ca]
5aa1: c1e003           shl    ax, 3
5aa4: a3280b           mov    word ptr [0xb28], ax
5aa7: a1220b           mov    ax, word ptr [0xb22]
5aaa: a32c0b           mov    word ptr [0xb2c], ax
5aad: c706680b0000     mov    word ptr [0xb68], 0
5ab3: c706c00b1c00     mov    word ptr [0xbc0], 0x1c
5ab9: a1280b           mov    ax, word ptr [0xb28]
5abc: 0106200b         add    word ptr [0xb20], ax
5ac0: a1260b           mov    ax, word ptr [0xb26]
5ac3: 0106220b         add    word ptr [0xb22], ax
5ac7: 8306260b02       add    word ptr [0xb26], 2
5acc: 8b1e680b         mov    bx, word ptr [0xb68]
5ad0: d1e3             shl    bx, 1
5ad2: 8b874406         mov    ax, word ptr [bx + 0x644]
5ad6: a3240b           mov    word ptr [0xb24], ax
5ad9: ff06680b         inc    word ptr [0xb68]
5add: ff36240b         push   word ptr [0xb24]
5ae1: ff36220b         push   word ptr [0xb22]
5ae5: ff36200b         push   word ptr [0xb20]
5ae9: 9a0748215b       fcall  sub_4807
5aee: 83c406           add    sp, 6
5af1: 833e240b40       cmp    word ptr [0xb24], 0x40
5af6: 0f850f00         jne    0x5b09
5afa: c706620b0300     mov    word ptr [0xb62], 3
5b00: c706c00b6300     mov    word ptr [0xbc0], 0x63
5b06: e9ca34           jmp    0x8fd3
5b09: e9c734           jmp    0x8fd3
5b0c: c7065a0b0000     mov    word ptr [0xb5a], 0
5b12: c706460b0000     mov    word ptr [0xb46], 0
5b18: c7064a0b0000     mov    word ptr [0xb4a], 0
5b1e: 9ab612325b       fcall  sub_12b6
5b23: a807             test   al, 7
5b25: 0f850600         jne    0x5b2f
5b29: c7064a0b0100     mov    word ptr [0xb4a], 1
5b2f: 9ab612925b       fcall  sub_12b6
5b34: b90500           mov    cx, 5
5b37: 99               cdq    
5b38: f7f9             idiv   cx
5b3a: 83fa00           cmp    dx, 0
5b3d: 0f850600         jne    0x5b47
5b41: c7064a0b0200     mov    word ptr [0xb4a], 2
5b47: c706c00b2000     mov    word ptr [0xbc0], 0x20
5b4d: 833e4a0b00       cmp    word ptr [0xb4a], 0
5b52: 0f840600         je     0x5b5c
5b56: c706c00b2200     mov    word ptr [0xbc0], 0x22
5b5c: e9d4f1           jmp    0x4d33
5b5f: 833e1c0b00       cmp    word ptr [0xb1c], 0
5b64: 0f840c00         je     0x5b74
5b68: c706c00b1b00     mov    word ptr [0xbc0], 0x1b
5b6e: e9c2f1           jmp    0x4d33
5b71: e90900           jmp    0x5b7d
5b74: c706c00b1800     mov    word ptr [0xbc0], 0x18
5b7a: e9b6f1           jmp    0x4d33
5b7d: c7065a0b0000     mov    word ptr [0xb5a], 0
5b83: c706460b0000     mov    word ptr [0xb46], 0
5b89: c7064a0b0000     mov    word ptr [0xb4a], 0
5b8f: 9ab612a35b       fcall  sub_12b6
5b94: a807             test   al, 7
5b96: 0f850600         jne    0x5ba0
5b9a: c7064a0b0100     mov    word ptr [0xb4a], 1
5ba0: 9ab612d85b       fcall  sub_12b6
5ba5: b90500           mov    cx, 5
5ba8: 99               cdq    
5ba9: f7f9             idiv   cx
5bab: 83fa00           cmp    dx, 0
5bae: 0f850600         jne    0x5bb8
5bb2: c7064a0b0200     mov    word ptr [0xb4a], 2
5bb8: c706c00b1f00     mov    word ptr [0xbc0], 0x1f
5bbe: 6a02             push   2
5bc0: ff36200b         push   word ptr [0xb20]
5bc4: a1ca05           mov    ax, word ptr [0x5ca]
5bc7: 8bc8             mov    cx, ax
5bc9: c1e002           shl    ax, 2
5bcc: 03c1             add    ax, cx
5bce: d1e0             shl    ax, 1
5bd0: 0306200b         add    ax, word ptr [0xb20]
5bd4: 50               push   ax
5bd5: 9a214cb654       fcall  sub_4c21
5bda: 83c406           add    sp, 6
5bdd: 833ec00b1e       cmp    word ptr [0xbc0], 0x1e
5be2: 0f851a00         jne    0x5c00
5be6: 833e460b00       cmp    word ptr [0xb46], 0
5beb: 0f840e00         je     0x5bfd
5bef: 8b1e460b         mov    bx, word ptr [0xb46]
5bf3: d1e3             shl    bx, 1
5bf5: 8b875606         mov    ax, word ptr [bx + 0x656]
5bf9: 2906640b         sub    word ptr [0xb64], ax
5bfd: e9d333           jmp    0x8fd3
5c00: 8b1e460b         mov    bx, word ptr [0xb46]
5c04: d1e3             shl    bx, 1
5c06: 8b874406         mov    ax, word ptr [bx + 0x644]
5c0a: a3240b           mov    word ptr [0xb24], ax
5c0d: ff36240b         push   word ptr [0xb24]
5c11: a1220b           mov    ax, word ptr [0xb22]
5c14: 8b1e460b         mov    bx, word ptr [0xb46]
5c18: d1e3             shl    bx, 1
5c1a: 2b875806         sub    ax, word ptr [bx + 0x658]
5c1e: 50               push   ax
5c1f: ff36200b         push   word ptr [0xb20]
5c23: 9a0748765c       fcall  sub_4807
5c28: 83c406           add    sp, 6
5c2b: ff06460b         inc    word ptr [0xb46]
5c2f: 833e4a0b00       cmp    word ptr [0xb4a], 0
5c34: 0f845200         je     0x5c8a
5c38: 833e240b42       cmp    word ptr [0xb24], 0x42
5c3d: 0f854900         jne    0x5c8a
5c41: 833e640b00       cmp    word ptr [0xb64], 0
5c46: 0f843100         je     0x5c7b
5c4a: a1640b           mov    ax, word ptr [0xb64]
5c4d: 2906220b         sub    word ptr [0xb22], ax
5c51: a1ca05           mov    ax, word ptr [0x5ca]
5c54: 8bc8             mov    cx, ax
5c56: c1e002           shl    ax, 2
5c59: 03c1             add    ax, cx
5c5b: d1e0             shl    ax, 1
5c5d: 0106200b         add    word ptr [0xb20], ax
5c61: c706640b0000     mov    word ptr [0xb64], 0
5c67: ff36240b         push   word ptr [0xb24]
5c6b: ff36220b         push   word ptr [0xb22]
5c6f: ff36200b         push   word ptr [0xb20]
5c73: 9a0748b45c       fcall  sub_4807
5c78: 83c406           add    sp, 6
5c7b: c706660b0300     mov    word ptr [0xb66], 3
5c81: c706c00b2200     mov    word ptr [0xbc0], 0x22
5c87: e94933           jmp    0x8fd3
5c8a: 833e460b08       cmp    word ptr [0xb46], 8
5c8f: 0f8e0900         jle    0x5c9c
5c93: c706c00b2000     mov    word ptr [0xbc0], 0x20
5c99: e93733           jmp    0x8fd3
5c9c: a1ca05           mov    ax, word ptr [0x5ca]
5c9f: 8bc8             mov    cx, ax
5ca1: c1e002           shl    ax, 2
5ca4: 03c1             add    ax, cx
5ca6: d1e0             shl    ax, 1
5ca8: 0106200b         add    word ptr [0xb20], ax
5cac: e92433           jmp    0x8fd3
5caf: 6a00             push   0
5cb1: 9a6f49e95c       fcall  sub_496f
5cb6: 83c402           add    sp, 2
5cb9: a15a0b           mov    ax, word ptr [0xb5a]
5cbc: ff065a0b         inc    word ptr [0xb5a]
5cc0: 3d0800           cmp    ax, 8
5cc3: 0f8d0300         jge    0x5cca
5cc7: e90933           jmp    0x8fd3
5cca: c7065a0b0000     mov    word ptr [0xb5a], 0
5cd0: f71eca05         neg    word ptr [0x5ca]
5cd4: c706240b5d00     mov    word ptr [0xb24], 0x5d
5cda: ff36240b         push   word ptr [0xb24]
5cde: ff36220b         push   word ptr [0xb22]
5ce2: ff36200b         push   word ptr [0xb20]
5ce6: 9a0748fc5c       fcall  sub_4807
5ceb: 83c406           add    sp, 6
5cee: c706c00b2100     mov    word ptr [0xbc0], 0x21
5cf4: e9dc32           jmp    0x8fd3
5cf7: 6a00             push   0
5cf9: 9a6f49505d       fcall  sub_496f
5cfe: 83c402           add    sp, 2
5d01: a15a0b           mov    ax, word ptr [0xb5a]
5d04: ff065a0b         inc    word ptr [0xb5a]
5d08: 3d0f00           cmp    ax, 0xf
5d0b: 0f8d0300         jge    0x5d12
5d0f: e9c132           jmp    0x8fd3
5d12: c7065a0b0000     mov    word ptr [0xb5a], 0
5d18: c706c00b0100     mov    word ptr [0xbc0], 1
5d1e: e9b232           jmp    0x8fd3
5d21: a1ca05           mov    ax, word ptr [0x5ca]
5d24: c1e003           shl    ax, 3
5d27: 0106200b         add    word ptr [0xb20], ax
5d2b: 833e240b46       cmp    word ptr [0xb24], 0x46
5d30: 0f850900         jne    0x5d3d
5d34: c706240b3f00     mov    word ptr [0xb24], 0x3f
5d3a: e90400           jmp    0x5d41
5d3d: ff06240b         inc    word ptr [0xb24]
5d41: ff36240b         push   word ptr [0xb24]
5d45: ff36220b         push   word ptr [0xb22]
5d49: ff36200b         push   word ptr [0xb20]
5d4d: 9a0748a75d       fcall  sub_4807
5d52: 83c406           add    sp, 6
5d55: 833e4a0b02       cmp    word ptr [0xb4a], 2
5d5a: 0f851200         jne    0x5d70
5d5e: 833e240b46       cmp    word ptr [0xb24], 0x46
5d63: 0f850900         jne    0x5d70
5d67: c706c00b4500     mov    word ptr [0xbc0], 0x45
5d6d: e96332           jmp    0x8fd3
5d70: a1702d           mov    ax, word ptr [0x2d70]
5d73: 3906200b         cmp    word ptr [0xb20], ax
5d77: 0f8f0900         jg     0x5d84
5d7b: 833e200bd8       cmp    word ptr [0xb20], -0x28
5d80: 0f8d0600         jge    0x5d8a
5d84: c706c00b0100     mov    word ptr [0xbc0], 1
5d8a: 6a02             push   2
5d8c: a1ca05           mov    ax, word ptr [0x5ca]
5d8f: c1e003           shl    ax, 3
5d92: 2b06200b         sub    ax, word ptr [0xb20]
5d96: f7d8             neg    ax
5d98: 50               push   ax
5d99: a1ca05           mov    ax, word ptr [0x5ca]
5d9c: c1e003           shl    ax, 3
5d9f: 0306200b         add    ax, word ptr [0xb20]
5da3: 50               push   ax
5da4: 9a214cdb5d       fcall  sub_4c21
5da9: 83c406           add    sp, 6
5dac: 833ec00b1e       cmp    word ptr [0xbc0], 0x1e
5db1: 0f852100         jne    0x5dd6
5db5: a1660b           mov    ax, word ptr [0xb66]
5db8: ff0e660b         dec    word ptr [0xb66]
5dbc: 3d0000           cmp    ax, 0
5dbf: 0f8e0d00         jle    0x5dd0
5dc3: f71eca05         neg    word ptr [0x5ca]
5dc7: c706c00b2200     mov    word ptr [0xbc0], 0x22
5dcd: e90600           jmp    0x5dd6
5dd0: c706c00b2200     mov    word ptr [0xbc0], 0x22
5dd6: 6a02             push   2
5dd8: 9a6f490f5e       fcall  sub_496f
5ddd: 83c402           add    sp, 2
5de0: e9f031           jmp    0x8fd3
5de3: a15a0b           mov    ax, word ptr [0xb5a]
5de6: ff065a0b         inc    word ptr [0xb5a]
5dea: 3d0100           cmp    ax, 1
5ded: 0f8d0300         jge    0x5df4
5df1: e9df31           jmp    0x8fd3
5df4: c7065a0b0000     mov    word ptr [0xb5a], 0
5dfa: c706240b0300     mov    word ptr [0xb24], 3
5e00: ff36240b         push   word ptr [0xb24]
5e04: ff36220b         push   word ptr [0xb22]
5e08: ff36200b         push   word ptr [0xb20]
5e0c: 9a0748685e       fcall  sub_4807
5e11: 83c406           add    sp, 6
5e14: c706c00b2500     mov    word ptr [0xbc0], 0x25
5e1a: c706460b0000     mov    word ptr [0xb46], 0
5e20: e9b031           jmp    0x8fd3
5e23: a15a0b           mov    ax, word ptr [0xb5a]
5e26: ff065a0b         inc    word ptr [0xb5a]
5e2a: 3d0100           cmp    ax, 1
5e2d: 0f8d0300         jge    0x5e34
5e31: e99f31           jmp    0x8fd3
5e34: c7065a0b0000     mov    word ptr [0xb5a], 0
5e3a: 833eca0500       cmp    word ptr [0x5ca], 0
5e3f: 0f8e0c00         jle    0x5e4f
5e43: a1460b           mov    ax, word ptr [0xb46]
5e46: 050c00           add    ax, 0xc
5e49: a3240b           mov    word ptr [0xb24], ax
5e4c: e90a00           jmp    0x5e59
5e4f: b80e00           mov    ax, 0xe
5e52: 2b06460b         sub    ax, word ptr [0xb46]
5e56: a3240b           mov    word ptr [0xb24], ax
5e59: ff36240b         push   word ptr [0xb24]
5e5d: ff36220b         push   word ptr [0xb22]
5e61: ff36200b         push   word ptr [0xb20]
5e65: 9a07488b5e       fcall  sub_4807
5e6a: 83c406           add    sp, 6
5e6d: ff06460b         inc    word ptr [0xb46]
5e71: 833e460b01       cmp    word ptr [0xb46], 1
5e76: 0f8e0c00         jle    0x5e86
5e7a: c706240b6700     mov    word ptr [0xb24], 0x67
5e80: c706c00b2600     mov    word ptr [0xbc0], 0x26
5e86: 6a00             push   0
5e88: 9a6f49b95e       fcall  sub_496f
5e8d: 83c402           add    sp, 2
5e90: e94031           jmp    0x8fd3
5e93: a15a0b           mov    ax, word ptr [0xb5a]
5e96: ff065a0b         inc    word ptr [0xb5a]
5e9a: 3d0100           cmp    ax, 1
5e9d: 0f8d0300         jge    0x5ea4
5ea1: e92f31           jmp    0x8fd3
5ea4: c7065a0b0000     mov    word ptr [0xb5a], 0
5eaa: ff36240b         push   word ptr [0xb24]
5eae: ff36220b         push   word ptr [0xb22]
5eb2: ff36200b         push   word ptr [0xb20]
5eb6: 9a0748df5e       fcall  sub_4807
5ebb: 83c406           add    sp, 6
5ebe: ff06240b         inc    word ptr [0xb24]
5ec2: 833e240b68       cmp    word ptr [0xb24], 0x68
5ec7: 0f8e0f00         jle    0x5eda
5ecb: c706460b0000     mov    word ptr [0xb46], 0
5ed1: c706c00b2700     mov    word ptr [0xbc0], 0x27
5ed7: e9f930           jmp    0x8fd3
5eda: 6a00             push   0
5edc: 9a6f49695f       fcall  sub_496f
5ee1: 83c402           add    sp, 2
5ee4: e9ec30           jmp    0x8fd3
5ee7: 833e460b00       cmp    word ptr [0xb46], 0
5eec: 0f851a00         jne    0x5f0a
5ef0: a15a0b           mov    ax, word ptr [0xb5a]
5ef3: ff065a0b         inc    word ptr [0xb5a]
5ef7: 3d0a00           cmp    ax, 0xa
5efa: 0f8d0300         jge    0x5f01
5efe: e9d230           jmp    0x8fd3
5f01: c7065a0b0000     mov    word ptr [0xb5a], 0
5f07: e91700           jmp    0x5f21
5f0a: a15a0b           mov    ax, word ptr [0xb5a]
5f0d: ff065a0b         inc    word ptr [0xb5a]
5f11: 3d0100           cmp    ax, 1
5f14: 0f8d0300         jge    0x5f1b
5f18: e9b830           jmp    0x8fd3
5f1b: c7065a0b0000     mov    word ptr [0xb5a], 0
5f21: 833e460b08       cmp    word ptr [0xb46], 8
5f26: 0f8e1200         jle    0x5f3c
5f2a: 833e460b0c       cmp    word ptr [0xb46], 0xc
5f2f: 0f8c2100         jl     0x5f54
5f33: 833e460b0c       cmp    word ptr [0xb46], 0xc
5f38: 0f8f1800         jg     0x5f54
5f3c: 833e240b69       cmp    word ptr [0xb24], 0x69
5f41: 0f850600         jne    0x5f4b
5f45: b86a00           mov    ax, 0x6a
5f48: e90300           jmp    0x5f4e
5f4b: b86900           mov    ax, 0x69
5f4e: a3240b           mov    word ptr [0xb24], ax
5f51: e90600           jmp    0x5f5a
5f54: c706240b6800     mov    word ptr [0xb24], 0x68
5f5a: ff36240b         push   word ptr [0xb24]
5f5e: ff36220b         push   word ptr [0xb22]
5f62: ff36200b         push   word ptr [0xb20]
5f66: 9a07488d5f       fcall  sub_4807
5f6b: 83c406           add    sp, 6
5f6e: a1460b           mov    ax, word ptr [0xb46]
5f71: ff06460b         inc    word ptr [0xb46]
5f75: 3d0f00           cmp    ax, 0xf
5f78: 0f8e0c00         jle    0x5f88
5f7c: c706c00b2800     mov    word ptr [0xbc0], 0x28
5f82: c706240b6800     mov    word ptr [0xb24], 0x68
5f88: 6a00             push   0
5f8a: 9a6f497758       fcall  sub_496f
5f8f: 83c402           add    sp, 2
5f92: e93e30           jmp    0x8fd3
5f95: a15a0b           mov    ax, word ptr [0xb5a]
5f98: ff065a0b         inc    word ptr [0xb5a]
5f9c: 3d0100           cmp    ax, 1
5f9f: 0f8d0300         jge    0x5fa6
5fa3: e92d30           jmp    0x8fd3
5fa6: c7065a0b0000     mov    word ptr [0xb5a], 0
5fac: ff36240b         push   word ptr [0xb24]
5fb0: ff36220b         push   word ptr [0xb22]
5fb4: ff36200b         push   word ptr [0xb20]
5fb8: 9a0748e15f       fcall  sub_4807
5fbd: 83c406           add    sp, 6
5fc0: ff0e240b         dec    word ptr [0xb24]
5fc4: 833e240b67       cmp    word ptr [0xb24], 0x67
5fc9: 0f8d0f00         jge    0x5fdc
5fcd: c706460b0000     mov    word ptr [0xb46], 0
5fd3: c706c00b2900     mov    word ptr [0xbc0], 0x29
5fd9: e9f72f           jmp    0x8fd3
5fdc: 6a00             push   0
5fde: 9a6f492e60       fcall  sub_496f
5fe3: 83c402           add    sp, 2
5fe6: e9ea2f           jmp    0x8fd3
5fe9: a15a0b           mov    ax, word ptr [0xb5a]
5fec: ff065a0b         inc    word ptr [0xb5a]
5ff0: 3d0100           cmp    ax, 1
5ff3: 0f8d0300         jge    0x5ffa
5ff7: e9d92f           jmp    0x8fd3
5ffa: c7065a0b0000     mov    word ptr [0xb5a], 0
6000: 833eca0500       cmp    word ptr [0x5ca], 0
6005: 0f8e0d00         jle    0x6016
6009: b80d00           mov    ax, 0xd
600c: 2b06460b         sub    ax, word ptr [0xb46]
6010: a3240b           mov    word ptr [0xb24], ax
6013: e90900           jmp    0x601f
6016: a1460b           mov    ax, word ptr [0xb46]
6019: 050d00           add    ax, 0xd
601c: a3240b           mov    word ptr [0xb24], ax
601f: ff36240b         push   word ptr [0xb24]
6023: ff36220b         push   word ptr [0xb22]
6027: ff36200b         push   word ptr [0xb20]
602b: 9a07484b60       fcall  sub_4807
6030: 83c406           add    sp, 6
6033: ff06460b         inc    word ptr [0xb46]
6037: 833e460b01       cmp    word ptr [0xb46], 1
603c: 0f8e0600         jle    0x6046
6040: c706c00b2a00     mov    word ptr [0xbc0], 0x2a
6046: 6a00             push   0
6048: 9a6f495860       fcall  sub_496f
604d: 83c402           add    sp, 2
6050: e9802f           jmp    0x8fd3
6053: 6a00             push   0
6055: 9a6f498960       fcall  sub_496f
605a: 83c402           add    sp, 2
605d: a15a0b           mov    ax, word ptr [0xb5a]
6060: ff065a0b         inc    word ptr [0xb5a]
6064: 3d0100           cmp    ax, 1
6067: 0f8d0300         jge    0x606e
606b: e9652f           jmp    0x8fd3
606e: c7065a0b0000     mov    word ptr [0xb5a], 0
6074: c706240b0300     mov    word ptr [0xb24], 3
607a: ff36240b         push   word ptr [0xb24]
607e: ff36220b         push   word ptr [0xb22]
6082: ff36200b         push   word ptr [0xb20]
6086: 9a0748a660       fcall  sub_4807
608b: 83c406           add    sp, 6
608e: c706c00b0100     mov    word ptr [0xbc0], 1
6094: c706460b0000     mov    word ptr [0xb46], 0
609a: e9362f           jmp    0x8fd3
609d: 6a00             push   0
609f: 6a00             push   0
60a1: 6a6d             push   0x6d
60a3: 9ac8420061       fcall  sub_42c8
60a8: 83c406           add    sp, 6
60ab: c706460b0000     mov    word ptr [0xb46], 0
60b1: c706c00b2c00     mov    word ptr [0xbc0], 0x2c
60b7: a15a0b           mov    ax, word ptr [0xb5a]
60ba: ff065a0b         inc    word ptr [0xb5a]
60be: 3d0100           cmp    ax, 1
60c1: 0f8d0300         jge    0x60c8
60c5: e90b2f           jmp    0x8fd3
60c8: c7065a0b0000     mov    word ptr [0xb5a], 0
60ce: 8b1e460b         mov    bx, word ptr [0xb46]
60d2: d1e3             shl    bx, 1
60d4: 8b876c06         mov    ax, word ptr [bx + 0x66c]
60d8: a3240b           mov    word ptr [0xb24], ax
60db: ff06460b         inc    word ptr [0xb46]
60df: 833e240b00       cmp    word ptr [0xb24], 0
60e4: 0f850900         jne    0x60f1
60e8: c706c00b0100     mov    word ptr [0xbc0], 1
60ee: e9e22e           jmp    0x8fd3
60f1: ff36240b         push   word ptr [0xb24]
60f5: ff36220b         push   word ptr [0xb22]
60f9: ff36200b         push   word ptr [0xb20]
60fd: 9a07480a61       fcall  sub_4807
6102: 83c406           add    sp, 6
6105: 6a00             push   0
6107: 9a6f491b61       fcall  sub_496f
610c: 83c402           add    sp, 2
610f: e9c12e           jmp    0x8fd3
6112: 6a00             push   0
6114: 6a00             push   0
6116: 6a6c             push   0x6c
6118: 9ac8427561       fcall  sub_42c8
611d: 83c406           add    sp, 6
6120: c706460b0000     mov    word ptr [0xb46], 0
6126: c706c00b2e00     mov    word ptr [0xbc0], 0x2e
612c: a15a0b           mov    ax, word ptr [0xb5a]
612f: ff065a0b         inc    word ptr [0xb5a]
6133: 3d0000           cmp    ax, 0
6136: 0f8d0300         jge    0x613d
613a: e9962e           jmp    0x8fd3
613d: c7065a0b0000     mov    word ptr [0xb5a], 0
6143: 8b1e460b         mov    bx, word ptr [0xb46]
6147: d1e3             shl    bx, 1
6149: 8b878206         mov    ax, word ptr [bx + 0x682]
614d: a3240b           mov    word ptr [0xb24], ax
6150: ff06460b         inc    word ptr [0xb46]
6154: 833e240b00       cmp    word ptr [0xb24], 0
6159: 0f850900         jne    0x6166
615d: c706c00b0100     mov    word ptr [0xbc0], 1
6163: e96d2e           jmp    0x8fd3
6166: ff36240b         push   word ptr [0xb24]
616a: ff36220b         push   word ptr [0xb22]
616e: ff36200b         push   word ptr [0xb20]
6172: 9a07487f61       fcall  sub_4807
6177: 83c406           add    sp, 6
617a: 6a00             push   0
617c: 9a6f49bc61       fcall  sub_496f
6181: 83c402           add    sp, 2
6184: e94c2e           jmp    0x8fd3
6187: c706460b0000     mov    word ptr [0xb46], 0
618d: c706c00b3000     mov    word ptr [0xbc0], 0x30
6193: a15a0b           mov    ax, word ptr [0xb5a]
6196: ff065a0b         inc    word ptr [0xb5a]
619a: 3d0000           cmp    ax, 0
619d: 0f8d0300         jge    0x61a4
61a1: e92f2e           jmp    0x8fd3
61a4: c7065a0b0000     mov    word ptr [0xb5a], 0
61aa: 833e460b02       cmp    word ptr [0xb46], 2
61af: 0f850e00         jne    0x61c1
61b3: 6a00             push   0
61b5: 6a00             push   0
61b7: 6a6e             push   0x6e
61b9: 9ac842f361       fcall  sub_42c8
61be: 83c406           add    sp, 6
61c1: 8b1e460b         mov    bx, word ptr [0xb46]
61c5: d1e3             shl    bx, 1
61c7: 8b879206         mov    ax, word ptr [bx + 0x692]
61cb: a3240b           mov    word ptr [0xb24], ax
61ce: ff06460b         inc    word ptr [0xb46]
61d2: 833e240b00       cmp    word ptr [0xb24], 0
61d7: 0f850900         jne    0x61e4
61db: c706c00b0100     mov    word ptr [0xbc0], 1
61e1: e9ef2d           jmp    0x8fd3
61e4: ff36240b         push   word ptr [0xb24]
61e8: ff36220b         push   word ptr [0xb22]
61ec: ff36200b         push   word ptr [0xb20]
61f0: 9a0748fd61       fcall  sub_4807
61f5: 83c406           add    sp, 6
61f8: 6a00             push   0
61fa: 9a6f495a62       fcall  sub_496f
61ff: 83c402           add    sp, 2
6202: e9ce2d           jmp    0x8fd3
6205: c706460b0000     mov    word ptr [0xb46], 0
620b: c706c00b3200     mov    word ptr [0xbc0], 0x32
6211: a15a0b           mov    ax, word ptr [0xb5a]
6214: ff065a0b         inc    word ptr [0xb5a]
6218: 3d0100           cmp    ax, 1
621b: 0f8d0300         jge    0x6222
621f: e9b12d           jmp    0x8fd3
6222: c7065a0b0000     mov    word ptr [0xb5a], 0
6228: 8b1e460b         mov    bx, word ptr [0xb46]
622c: d1e3             shl    bx, 1
622e: 8b87ac06         mov    ax, word ptr [bx + 0x6ac]
6232: a3240b           mov    word ptr [0xb24], ax
6235: ff06460b         inc    word ptr [0xb46]
6239: 833e240b00       cmp    word ptr [0xb24], 0
623e: 0f850900         jne    0x624b
6242: c706c00b0100     mov    word ptr [0xbc0], 1
6248: e9882d           jmp    0x8fd3
624b: ff36240b         push   word ptr [0xb24]
624f: ff36220b         push   word ptr [0xb22]
6253: ff36200b         push   word ptr [0xb20]
6257: 9a07486462       fcall  sub_4807
625c: 83c406           add    sp, 6
625f: 6a00             push   0
6261: 9a6f49cd62       fcall  sub_496f
6266: 83c402           add    sp, 2
6269: e9672d           jmp    0x8fd3
626c: c706460b0000     mov    word ptr [0xb46], 0
6272: c706c00b3400     mov    word ptr [0xbc0], 0x34
6278: a15a0b           mov    ax, word ptr [0xb5a]
627b: ff065a0b         inc    word ptr [0xb5a]
627f: 3d0000           cmp    ax, 0
6282: 0f8d0300         jge    0x6289
6286: e94a2d           jmp    0x8fd3
6289: c7065a0b0000     mov    word ptr [0xb5a], 0
628f: 833e240b38       cmp    word ptr [0xb24], 0x38
6294: 0f850600         jne    0x629e
6298: b83900           mov    ax, 0x39
629b: e90300           jmp    0x62a1
629e: b83800           mov    ax, 0x38
62a1: a3240b           mov    word ptr [0xb24], ax
62a4: a1460b           mov    ax, word ptr [0xb46]
62a7: ff06460b         inc    word ptr [0xb46]
62ab: 3d1e00           cmp    ax, 0x1e
62ae: 0f8e0c00         jle    0x62be
62b2: c706240b0300     mov    word ptr [0xb24], 3
62b8: c706c00b0100     mov    word ptr [0xbc0], 1
62be: ff36240b         push   word ptr [0xb24]
62c2: ff36220b         push   word ptr [0xb22]
62c6: ff36200b         push   word ptr [0xb20]
62ca: 9a0748d762       fcall  sub_4807
62cf: 83c406           add    sp, 6
62d2: 6a00             push   0
62d4: 9a6f49ee62       fcall  sub_496f
62d9: 83c402           add    sp, 2
62dc: e9f42c           jmp    0x8fd3
62df: c706460b0000     mov    word ptr [0xb46], 0
62e5: c706c00b3600     mov    word ptr [0xbc0], 0x36
62eb: 9a212a2f63       fcall  sub_2a21
62f0: a1ca05           mov    ax, word ptr [0x5ca]
62f3: a3cc05           mov    word ptr [0x5cc], ax
62f6: a1220b           mov    ax, word ptr [0xb22]
62f9: a3300b           mov    word ptr [0xb30], ax
62fc: c706320b9500     mov    word ptr [0xb32], 0x95
6302: 833eca0500       cmp    word ptr [0x5ca], 0
6307: 0f8e0c00         jle    0x6317
630b: a1200b           mov    ax, word ptr [0xb20]
630e: 2d2800           sub    ax, 0x28
6311: a32e0b           mov    word ptr [0xb2e], ax
6314: e90900           jmp    0x6320
6317: a1200b           mov    ax, word ptr [0xb20]
631a: 052800           add    ax, 0x28
631d: a32e0b           mov    word ptr [0xb2e], ax
6320: ff36320b         push   word ptr [0xb32]
6324: ff36300b         push   word ptr [0xb30]
6328: ff362e0b         push   word ptr [0xb2e]
632c: 9a8c484563       fcall  sub_488c
6331: 83c406           add    sp, 6
6334: c706ce230100     mov    word ptr [0x23ce], 1
633a: ff36d023         push   word ptr [0x23d0]
633e: ff36902d         push   word ptr [0x2d90]
6342: 9a012b265c       fcall  sub_2b01
6347: 83c404           add    sp, 4
634a: e9862c           jmp    0x8fd3
634d: a15a0b           mov    ax, word ptr [0xb5a]
6350: ff065a0b         inc    word ptr [0xb5a]
6354: 3d0200           cmp    ax, 2
6357: 0f8d0300         jge    0x635e
635b: e9752c           jmp    0x8fd3
635e: c7065a0b0000     mov    word ptr [0xb5a], 0
6364: 8b1e460b         mov    bx, word ptr [0xb46]
6368: d1e3             shl    bx, 1
636a: 8b87b806         mov    ax, word ptr [bx + 0x6b8]
636e: a3240b           mov    word ptr [0xb24], ax
6371: ff06460b         inc    word ptr [0xb46]
6375: 833e240b02       cmp    word ptr [0xb24], 2
637a: 0f852100         jne    0x639f
637e: a1ca05           mov    ax, word ptr [0x5ca]
6381: c1e003           shl    ax, 3
6384: 2906200b         sub    word ptr [0xb20], ax
6388: ff36240b         push   word ptr [0xb24]
638c: ff36220b         push   word ptr [0xb22]
6390: ff36200b         push   word ptr [0xb20]
6394: 9a0748d863       fcall  sub_4807
6399: 83c406           add    sp, 6
639c: e9342c           jmp    0x8fd3
639f: 813e240b9500     cmp    word ptr [0xb24], 0x95
63a5: 0f8c4500         jl     0x63ee
63a9: 813e240b9900     cmp    word ptr [0xb24], 0x99
63af: 0f8f3b00         jg     0x63ee
63b3: a1240b           mov    ax, word ptr [0xb24]
63b6: a3320b           mov    word ptr [0xb32], ax
63b9: 813e320b9900     cmp    word ptr [0xb32], 0x99
63bf: 0f850600         jne    0x63c9
63c3: c706320bad00     mov    word ptr [0xb32], 0xad
63c9: ff36320b         push   word ptr [0xb32]
63cd: ff36300b         push   word ptr [0xb30]
63d1: ff362e0b         push   word ptr [0xb2e]
63d5: 9a8c48fa63       fcall  sub_488c
63da: 83c406           add    sp, 6
63dd: 8b1e460b         mov    bx, word ptr [0xb46]
63e1: d1e3             shl    bx, 1
63e3: 8b87b806         mov    ax, word ptr [bx + 0x6b8]
63e7: a3240b           mov    word ptr [0xb24], ax
63ea: ff06460b         inc    word ptr [0xb46]
63ee: 833e240b00       cmp    word ptr [0xb24], 0
63f3: 0f850e00         jne    0x6405
63f7: 9a962a1464       fcall  sub_2a96
63fc: c706c00b0100     mov    word ptr [0xbc0], 1
6402: e9ce2b           jmp    0x8fd3
6405: ff36240b         push   word ptr [0xb24]
6409: ff36220b         push   word ptr [0xb22]
640d: ff36200b         push   word ptr [0xb20]
6411: 9a07485764       fcall  sub_4807
6416: 83c406           add    sp, 6
6419: e9b72b           jmp    0x8fd3
641c: a15a0b           mov    ax, word ptr [0xb5a]
641f: ff065a0b         inc    word ptr [0xb5a]
6423: 3d0100           cmp    ax, 1
6426: 0f8d0300         jge    0x642d
642a: e9a62b           jmp    0x8fd3
642d: c7065a0b0000     mov    word ptr [0xb5a], 0
6433: a1ca05           mov    ax, word ptr [0x5ca]
6436: 8bc8             mov    cx, ax
6438: d1e0             shl    ax, 1
643a: 03c1             add    ax, cx
643c: d1e0             shl    ax, 1
643e: 2906200b         sub    word ptr [0xb20], ax
6442: c706240b0200     mov    word ptr [0xb24], 2
6448: ff36240b         push   word ptr [0xb24]
644c: ff36220b         push   word ptr [0xb22]
6450: ff36200b         push   word ptr [0xb20]
6454: 9a07485f64       fcall  sub_4807
6459: 83c406           add    sp, 6
645c: 9a59456464       fcall  sub_4559
6461: 9ad2466b64       fcall  sub_46d2
6466: 6a01             push   1
6468: 9a6f499764       fcall  sub_496f
646d: 83c402           add    sp, 2
6470: 6a01             push   1
6472: a1ca05           mov    ax, word ptr [0x5ca]
6475: 8bc8             mov    cx, ax
6477: d1e0             shl    ax, 1
6479: 03c1             add    ax, cx
647b: d1e0             shl    ax, 1
647d: 0306200b         add    ax, word ptr [0xb20]
6481: 50               push   ax
6482: a1ca05           mov    ax, word ptr [0x5ca]
6485: 8bc8             mov    cx, ax
6487: d1e0             shl    ax, 1
6489: 03c1             add    ax, cx
648b: d1e0             shl    ax, 1
648d: 2b06200b         sub    ax, word ptr [0xb20]
6491: f7d8             neg    ax
6493: 50               push   ax
6494: 9a214c1f65       fcall  sub_4c21
6499: 83c406           add    sp, 6
649c: c706c00b3600     mov    word ptr [0xbc0], 0x36
64a2: e92e2b           jmp    0x8fd3
64a5: c706460b0000     mov    word ptr [0xb46], 0
64ab: c706c00b3900     mov    word ptr [0xbc0], 0x39
64b1: a15a0b           mov    ax, word ptr [0xb5a]
64b4: ff065a0b         inc    word ptr [0xb5a]
64b8: 3d0200           cmp    ax, 2
64bb: 0f8d0300         jge    0x64c2
64bf: e9112b           jmp    0x8fd3
64c2: c7065a0b0000     mov    word ptr [0xb5a], 0
64c8: 8b1e460b         mov    bx, word ptr [0xb46]
64cc: d1e3             shl    bx, 1
64ce: 8b87b806         mov    ax, word ptr [bx + 0x6b8]
64d2: a3240b           mov    word ptr [0xb24], ax
64d5: ff06460b         inc    word ptr [0xb46]
64d9: 813e240b9500     cmp    word ptr [0xb24], 0x95
64df: 0f8c1b00         jl     0x64fe
64e3: 813e240b9900     cmp    word ptr [0xb24], 0x99
64e9: 0f8f1100         jg     0x64fe
64ed: 8b1e460b         mov    bx, word ptr [0xb46]
64f1: d1e3             shl    bx, 1
64f3: 8b87b806         mov    ax, word ptr [bx + 0x6b8]
64f7: a3240b           mov    word ptr [0xb24], ax
64fa: ff06460b         inc    word ptr [0xb46]
64fe: 833e460b10       cmp    word ptr [0xb46], 0x10
6503: 0f8c0900         jl     0x6510
6507: c706c00b2a00     mov    word ptr [0xbc0], 0x2a
650d: e9c32a           jmp    0x8fd3
6510: ff36240b         push   word ptr [0xb24]
6514: ff36220b         push   word ptr [0xb22]
6518: ff36200b         push   word ptr [0xb20]
651c: 9a07482965       fcall  sub_4807
6521: 83c406           add    sp, 6
6524: 6a00             push   0
6526: 9a6f495d65       fcall  sub_496f
652b: 83c402           add    sp, 2
652e: e9a22a           jmp    0x8fd3
6531: a15a0b           mov    ax, word ptr [0xb5a]
6534: ff065a0b         inc    word ptr [0xb5a]
6538: 3d0100           cmp    ax, 1
653b: 0f8d0300         jge    0x6542
653f: e9912a           jmp    0x8fd3
6542: c7065a0b0000     mov    word ptr [0xb5a], 0
6548: c706240b0300     mov    word ptr [0xb24], 3
654e: ff36240b         push   word ptr [0xb24]
6552: ff36220b         push   word ptr [0xb22]
6556: ff36200b         push   word ptr [0xb20]
655a: 9a0748db65       fcall  sub_4807
655f: 83c406           add    sp, 6
6562: c706c00b3b00     mov    word ptr [0xbc0], 0x3b
6568: c706460b0000     mov    word ptr [0xb46], 0
656e: e9622a           jmp    0x8fd3
6571: a15a0b           mov    ax, word ptr [0xb5a]
6574: ff065a0b         inc    word ptr [0xb5a]
6578: 3d0100           cmp    ax, 1
657b: 0f8d0300         jge    0x6582
657f: e9512a           jmp    0x8fd3
6582: c7065a0b0000     mov    word ptr [0xb5a], 0
6588: 833eca0500       cmp    word ptr [0x5ca], 0
658d: 0f8e0c00         jle    0x659d
6591: a1460b           mov    ax, word ptr [0xb46]
6594: 050900           add    ax, 9
6597: a3240b           mov    word ptr [0xb24], ax
659a: e90a00           jmp    0x65a7
659d: b80b00           mov    ax, 0xb
65a0: 2b06460b         sub    ax, word ptr [0xb46]
65a4: a3240b           mov    word ptr [0xb24], ax
65a7: ff06460b         inc    word ptr [0xb46]
65ab: 833e460b02       cmp    word ptr [0xb46], 2
65b0: 0f8e1800         jle    0x65cc
65b4: c706240b2200     mov    word ptr [0xb24], 0x22
65ba: c7065a0bf6ff     mov    word ptr [0xb5a], 0xfff6
65c0: c706c00b3c00     mov    word ptr [0xbc0], 0x3c
65c6: c706460b0000     mov    word ptr [0xb46], 0
65cc: ff36240b         push   word ptr [0xb24]
65d0: ff36220b         push   word ptr [0xb22]
65d4: ff36200b         push   word ptr [0xb20]
65d8: 9a0748e565       fcall  sub_4807
65dd: 83c406           add    sp, 6
65e0: 6a00             push   0
65e2: 9a6f492066       fcall  sub_496f
65e7: 83c402           add    sp, 2
65ea: e9e629           jmp    0x8fd3
65ed: a15a0b           mov    ax, word ptr [0xb5a]
65f0: ff065a0b         inc    word ptr [0xb5a]
65f4: 3d0000           cmp    ax, 0
65f7: 0f8d0300         jge    0x65fe
65fb: e9d529           jmp    0x8fd3
65fe: c7065a0b0000     mov    word ptr [0xb5a], 0
6604: 8b1e460b         mov    bx, word ptr [0xb46]
6608: d1e3             shl    bx, 1
660a: 8b872406         mov    ax, word ptr [bx + 0x624]
660e: a3240b           mov    word ptr [0xb24], ax
6611: ff36240b         push   word ptr [0xb24]
6615: ff36220b         push   word ptr [0xb22]
6619: ff36200b         push   word ptr [0xb20]
661d: 9a07484966       fcall  sub_4807
6622: 83c406           add    sp, 6
6625: ff06460b         inc    word ptr [0xb46]
6629: 833e460b07       cmp    word ptr [0xb46], 7
662e: 0f8e1200         jle    0x6644
6632: c706460b0000     mov    word ptr [0xb46], 0
6638: c706c00b3d00     mov    word ptr [0xbc0], 0x3d
663e: c7065a0bfbff     mov    word ptr [0xb5a], 0xfffb
6644: 6a00             push   0
6646: 9a6f499666       fcall  sub_496f
664b: 83c402           add    sp, 2
664e: e98229           jmp    0x8fd3
6651: a15a0b           mov    ax, word ptr [0xb5a]
6654: ff065a0b         inc    word ptr [0xb5a]
6658: 3d0100           cmp    ax, 1
665b: 0f8d0300         jge    0x6662
665f: e97129           jmp    0x8fd3
6662: c7065a0b0000     mov    word ptr [0xb5a], 0
6668: 833eca0500       cmp    word ptr [0x5ca], 0
666d: 0f8e0d00         jle    0x667e
6671: b80a00           mov    ax, 0xa
6674: 2b06460b         sub    ax, word ptr [0xb46]
6678: a3240b           mov    word ptr [0xb24], ax
667b: e90900           jmp    0x6687
667e: a1460b           mov    ax, word ptr [0xb46]
6681: 050a00           add    ax, 0xa
6684: a3240b           mov    word ptr [0xb24], ax
6687: ff36240b         push   word ptr [0xb24]
668b: ff36220b         push   word ptr [0xb22]
668f: ff36200b         push   word ptr [0xb20]
6693: 9a0748b366       fcall  sub_4807
6698: 83c406           add    sp, 6
669b: ff06460b         inc    word ptr [0xb46]
669f: 833e460b01       cmp    word ptr [0xb46], 1
66a4: 0f8e0600         jle    0x66ae
66a8: c706c00b2a00     mov    word ptr [0xbc0], 0x2a
66ae: 6a00             push   0
66b0: 9a6f49d066       fcall  sub_496f
66b5: 83c402           add    sp, 2
66b8: e91829           jmp    0x8fd3
66bb: c706240b0300     mov    word ptr [0xb24], 3
66c1: ff36240b         push   word ptr [0xb24]
66c5: ff36220b         push   word ptr [0xb22]
66c9: ff36200b         push   word ptr [0xb20]
66cd: 9a0748bb5f       fcall  sub_4807
66d2: 83c406           add    sp, 6
66d5: c706460b0000     mov    word ptr [0xb46], 0
66db: c706c00b4200     mov    word ptr [0xbc0], 0x42
66e1: e9ef28           jmp    0x8fd3
66e4: a15a0b           mov    ax, word ptr [0xb5a]
66e7: ff065a0b         inc    word ptr [0xb5a]
66eb: 3d0100           cmp    ax, 1
66ee: 0f8d0300         jge    0x66f5
66f2: e9de28           jmp    0x8fd3
66f5: c7065a0b0000     mov    word ptr [0xb5a], 0
66fb: 833e460b00       cmp    word ptr [0xb46], 0
6700: 0f851b00         jne    0x671f
6704: 833eca0500       cmp    word ptr [0x5ca], 0
6709: 0f8e0900         jle    0x6716
670d: c706240b0900     mov    word ptr [0xb24], 9
6713: e90600           jmp    0x671c
6716: c706240b0b00     mov    word ptr [0xb24], 0xb
671c: e90600           jmp    0x6725
671f: c706240b0a00     mov    word ptr [0xb24], 0xa
6725: ff36240b         push   word ptr [0xb24]
6729: ff36220b         push   word ptr [0xb22]
672d: ff36200b         push   word ptr [0xb20]
6731: 9a07485067       fcall  sub_4807
6736: 83c406           add    sp, 6
6739: a1460b           mov    ax, word ptr [0xb46]
673c: ff06460b         inc    word ptr [0xb46]
6740: 3d0000           cmp    ax, 0
6743: 0f8e2300         jle    0x676a
6747: c706c00b4300     mov    word ptr [0xbc0], 0x43
674d: 9ab6126f67       fcall  sub_12b6
6752: b90400           mov    cx, 4
6755: 99               cdq    
6756: f7f9             idiv   cx
6758: 03d1             add    dx, cx
675a: c1e203           shl    dx, 3
675d: 8916480b         mov    word ptr [0xb48], dx
6761: c706460b0000     mov    word ptr [0xb46], 0
6767: e96928           jmp    0x8fd3
676a: 6a00             push   0
676c: 9a6f49b767       fcall  sub_496f
6771: 83c402           add    sp, 2
6774: e95c28           jmp    0x8fd3
6777: ff0e460b         dec    word ptr [0xb46]
677b: 833e460b00       cmp    word ptr [0xb46], 0
6780: 0f8d0600         jge    0x678a
6784: c706460b4f00     mov    word ptr [0xb46], 0x4f
678a: a1ca05           mov    ax, word ptr [0x5ca]
678d: c1e003           shl    ax, 3
6790: 2906200b         sub    word ptr [0xb20], ax
6794: a1460b           mov    ax, word ptr [0xb46]
6797: b90800           mov    cx, 8
679a: 99               cdq    
679b: f7f9             idiv   cx
679d: 8bda             mov    bx, dx
679f: d1e3             shl    bx, 1
67a1: 8b874408         mov    ax, word ptr [bx + 0x844]
67a5: a3240b           mov    word ptr [0xb24], ax
67a8: ff36240b         push   word ptr [0xb24]
67ac: ff36220b         push   word ptr [0xb22]
67b0: ff36200b         push   word ptr [0xb20]
67b4: 9a07481d68       fcall  sub_4807
67b9: 83c406           add    sp, 6
67bc: 833eca0500       cmp    word ptr [0x5ca], 0
67c1: 0f8e0f00         jle    0x67d4
67c5: 833e200b00       cmp    word ptr [0xb20], 0
67ca: 0f8d0600         jge    0x67d4
67ce: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
67d4: 833eca0500       cmp    word ptr [0x5ca], 0
67d9: 0f8d2200         jge    0x67ff
67dd: a1702d           mov    ax, word ptr [0x2d70]
67e0: 8b1e240b         mov    bx, word ptr [0xb24]
67e4: 8bcb             mov    cx, bx
67e6: d1e3             shl    bx, 1
67e8: 03d9             add    bx, cx
67ea: c1e302           shl    bx, 2
67ed: 2b87ca0b         sub    ax, word ptr [bx + 0xbca]
67f1: 3b06200b         cmp    ax, word ptr [0xb20]
67f5: 0f8d0600         jge    0x67ff
67f9: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
67ff: ff0e480b         dec    word ptr [0xb48]
6803: 833e480b00       cmp    word ptr [0xb48], 0
6808: 0f8f0c00         jg     0x6818
680c: c706c00b4400     mov    word ptr [0xbc0], 0x44
6812: c706460b0000     mov    word ptr [0xb46], 0
6818: 6a02             push   2
681a: 9a6f493f68       fcall  sub_496f
681f: 83c402           add    sp, 2
6822: 6a02             push   2
6824: a1ca05           mov    ax, word ptr [0x5ca]
6827: c1e003           shl    ax, 3
682a: 0306200b         add    ax, word ptr [0xb20]
682e: 50               push   ax
682f: a1ca05           mov    ax, word ptr [0x5ca]
6832: c1e003           shl    ax, 3
6835: 2b06200b         sub    ax, word ptr [0xb20]
6839: f7d8             neg    ax
683b: 50               push   ax
683c: 9a214ca968       fcall  sub_4c21
6841: 83c406           add    sp, 6
6844: e98c27           jmp    0x8fd3
6847: a15a0b           mov    ax, word ptr [0xb5a]
684a: ff065a0b         inc    word ptr [0xb5a]
684e: 3d0100           cmp    ax, 1
6851: 0f8d0300         jge    0x6858
6855: e97b27           jmp    0x8fd3
6858: c7065a0b0000     mov    word ptr [0xb5a], 0
685e: 833e460b01       cmp    word ptr [0xb46], 1
6863: 0f851b00         jne    0x6882
6867: 833eca0500       cmp    word ptr [0x5ca], 0
686c: 0f8e0900         jle    0x6879
6870: c706240b0900     mov    word ptr [0xb24], 9
6876: e90600           jmp    0x687f
6879: c706240b0b00     mov    word ptr [0xb24], 0xb
687f: e91800           jmp    0x689a
6882: 833e460b00       cmp    word ptr [0xb46], 0
6887: 0f850900         jne    0x6894
688b: c706240b0a00     mov    word ptr [0xb24], 0xa
6891: e90600           jmp    0x689a
6894: c706240b0300     mov    word ptr [0xb24], 3
689a: ff36240b         push   word ptr [0xb24]
689e: ff36220b         push   word ptr [0xb22]
68a2: ff36200b         push   word ptr [0xb20]
68a6: 9a0748ca68       fcall  sub_4807
68ab: 83c406           add    sp, 6
68ae: a1460b           mov    ax, word ptr [0xb46]
68b1: ff06460b         inc    word ptr [0xb46]
68b5: 3d0100           cmp    ax, 1
68b8: 0f8e0900         jle    0x68c5
68bc: c706c00b0100     mov    word ptr [0xbc0], 1
68c2: e90e27           jmp    0x8fd3
68c5: 6a00             push   0
68c7: 9a6f492669       fcall  sub_496f
68cc: 83c402           add    sp, 2
68cf: e90127           jmp    0x8fd3
68d2: c706c00b3f00     mov    word ptr [0xbc0], 0x3f
68d8: c706460b0000     mov    word ptr [0xb46], 0
68de: e9f226           jmp    0x8fd3
68e1: a15a0b           mov    ax, word ptr [0xb5a]
68e4: ff065a0b         inc    word ptr [0xb5a]
68e8: 3d0200           cmp    ax, 2
68eb: 0f8d0300         jge    0x68f2
68ef: e9e126           jmp    0x8fd3
68f2: c7065a0b0000     mov    word ptr [0xb5a], 0
68f8: 8b1e460b         mov    bx, word ptr [0xb46]
68fc: d1e3             shl    bx, 1
68fe: 8b872c08         mov    ax, word ptr [bx + 0x82c]
6902: a3240b           mov    word ptr [0xb24], ax
6905: 833e240b00       cmp    word ptr [0xb24], 0
690a: 0f850900         jne    0x6917
690e: c706c00b0100     mov    word ptr [0xbc0], 1
6914: e9bc26           jmp    0x8fd3
6917: ff36240b         push   word ptr [0xb24]
691b: ff36220b         push   word ptr [0xb22]
691f: ff36200b         push   word ptr [0xb20]
6923: 9a07483469       fcall  sub_4807
6928: 83c406           add    sp, 6
692b: ff06460b         inc    word ptr [0xb46]
692f: 6a00             push   0
6931: 9a6f493f69       fcall  sub_496f
6936: 83c402           add    sp, 2
6939: e99726           jmp    0x8fd3
693c: 9ab6128069       fcall  sub_12b6
6941: b90800           mov    cx, 8
6944: 99               cdq    
6945: f7f9             idiv   cx
6947: 03d1             add    dx, cx
6949: 8916460b         mov    word ptr [0xb46], dx
694d: a1460b           mov    ax, word ptr [0xb46]
6950: a3480b           mov    word ptr [0xb48], ax
6953: c706240b8300     mov    word ptr [0xb24], 0x83
6959: 833eca0500       cmp    word ptr [0x5ca], 0
695e: 0f8e0900         jle    0x696b
6962: c706240b0c00     mov    word ptr [0xb24], 0xc
6968: e90600           jmp    0x6971
696b: c706240b0e00     mov    word ptr [0xb24], 0xe
6971: ff36240b         push   word ptr [0xb24]
6975: ff36220b         push   word ptr [0xb22]
6979: ff36200b         push   word ptr [0xb20]
697d: 9a0748ba69       fcall  sub_4807
6982: 83c406           add    sp, 6
6985: c706c00b4c00     mov    word ptr [0xbc0], 0x4c
698b: e94526           jmp    0x8fd3
698e: a15a0b           mov    ax, word ptr [0xb5a]
6991: ff065a0b         inc    word ptr [0xb5a]
6995: 3d0100           cmp    ax, 1
6998: 0f8d0300         jge    0x699f
699c: e93426           jmp    0x8fd3
699f: c7065a0b0000     mov    word ptr [0xb5a], 0
69a5: c706240b0d00     mov    word ptr [0xb24], 0xd
69ab: ff36240b         push   word ptr [0xb24]
69af: ff36220b         push   word ptr [0xb22]
69b3: ff36200b         push   word ptr [0xb20]
69b7: 9a0748096a       fcall  sub_4807
69bc: 83c406           add    sp, 6
69bf: c706c00b4d00     mov    word ptr [0xbc0], 0x4d
69c5: e90b26           jmp    0x8fd3
69c8: a15a0b           mov    ax, word ptr [0xb5a]
69cb: ff065a0b         inc    word ptr [0xb5a]
69cf: 3d0200           cmp    ax, 2
69d2: 0f8d0300         jge    0x69d9
69d6: e9fa25           jmp    0x8fd3
69d9: c7065a0b0000     mov    word ptr [0xb5a], 0
69df: 813e240b8300     cmp    word ptr [0xb24], 0x83
69e5: 0f850600         jne    0x69ef
69e9: b88400           mov    ax, 0x84
69ec: e90300           jmp    0x69f2
69ef: b88300           mov    ax, 0x83
69f2: a3240b           mov    word ptr [0xb24], ax
69f5: 832e220b08       sub    word ptr [0xb22], 8
69fa: ff36240b         push   word ptr [0xb24]
69fe: ff36220b         push   word ptr [0xb22]
6a02: ff36200b         push   word ptr [0xb20]
6a06: 9a0748456a       fcall  sub_4807
6a0b: 83c406           add    sp, 6
6a0e: a1460b           mov    ax, word ptr [0xb46]
6a11: ff0e460b         dec    word ptr [0xb46]
6a15: 3d0000           cmp    ax, 0
6a18: 0f8f0c00         jg     0x6a28
6a1c: a1480b           mov    ax, word ptr [0xb48]
6a1f: a3460b           mov    word ptr [0xb46], ax
6a22: c706c00b4e00     mov    word ptr [0xbc0], 0x4e
6a28: e9a825           jmp    0x8fd3
6a2b: c706240b8500     mov    word ptr [0xb24], 0x85
6a31: 8306220b08       add    word ptr [0xb22], 8
6a36: ff36240b         push   word ptr [0xb24]
6a3a: ff36220b         push   word ptr [0xb22]
6a3e: ff36200b         push   word ptr [0xb20]
6a42: 9a07489763       fcall  sub_4807
6a47: 83c406           add    sp, 6
6a4a: a1460b           mov    ax, word ptr [0xb46]
6a4d: ff0e460b         dec    word ptr [0xb46]
6a51: 3d0000           cmp    ax, 0
6a54: 0f8f0600         jg     0x6a5e
6a58: c706c00b4f00     mov    word ptr [0xbc0], 0x4f
6a5e: e97225           jmp    0x8fd3
6a61: a15a0b           mov    ax, word ptr [0xb5a]
6a64: ff065a0b         inc    word ptr [0xb5a]
6a68: 3d0a00           cmp    ax, 0xa
6a6b: 0f8d0300         jge    0x6a72
6a6f: e96125           jmp    0x8fd3
6a72: c7065a0b0000     mov    word ptr [0xb5a], 0
6a78: c706c00b5000     mov    word ptr [0xbc0], 0x50
6a7e: c706460b0300     mov    word ptr [0xb46], 3
6a84: e94c25           jmp    0x8fd3
6a87: a15a0b           mov    ax, word ptr [0xb5a]
6a8a: ff065a0b         inc    word ptr [0xb5a]
6a8e: 3d0100           cmp    ax, 1
6a91: 0f8d0300         jge    0x6a98
6a95: e93b25           jmp    0x8fd3
6a98: c7065a0b0000     mov    word ptr [0xb5a], 0
6a9e: 833eca0500       cmp    word ptr [0x5ca], 0
6aa3: 0f8e1400         jle    0x6abb
6aa7: 8b1e460b         mov    bx, word ptr [0xb46]
6aab: d1e3             shl    bx, 1
6aad: 8b875c07         mov    ax, word ptr [bx + 0x75c]
6ab1: a3240b           mov    word ptr [0xb24], ax
6ab4: ff06460b         inc    word ptr [0xb46]
6ab8: e91100           jmp    0x6acc
6abb: 8b1e460b         mov    bx, word ptr [0xb46]
6abf: d1e3             shl    bx, 1
6ac1: 8b876c07         mov    ax, word ptr [bx + 0x76c]
6ac5: a3240b           mov    word ptr [0xb24], ax
6ac8: ff06460b         inc    word ptr [0xb46]
6acc: 833e240b00       cmp    word ptr [0xb24], 0
6ad1: 0f850900         jne    0x6ade
6ad5: c706c00b0100     mov    word ptr [0xbc0], 1
6adb: e9f524           jmp    0x8fd3
6ade: ff36240b         push   word ptr [0xb24]
6ae2: ff36220b         push   word ptr [0xb22]
6ae6: ff36200b         push   word ptr [0xb20]
6aea: 9a0748696b       fcall  sub_4807
6aef: 83c406           add    sp, 6
6af2: e9de24           jmp    0x8fd3
6af5: c7065a0b0000     mov    word ptr [0xb5a], 0
6afb: c706460b0000     mov    word ptr [0xb46], 0
6b01: c706c00b4600     mov    word ptr [0xbc0], 0x46
6b07: 833eca0500       cmp    word ptr [0x5ca], 0
6b0c: 0f8e1700         jle    0x6b27
6b10: a1460b           mov    ax, word ptr [0xb46]
6b13: b90800           mov    cx, 8
6b16: 99               cdq    
6b17: f7f9             idiv   cx
6b19: 8bda             mov    bx, dx
6b1b: d1e3             shl    bx, 1
6b1d: 8b875608         mov    ax, word ptr [bx + 0x856]
6b21: a3240b           mov    word ptr [0xb24], ax
6b24: e91700           jmp    0x6b3e
6b27: a1460b           mov    ax, word ptr [0xb46]
6b2a: 050400           add    ax, 4
6b2d: b90800           mov    cx, 8
6b30: 99               cdq    
6b31: f7f9             idiv   cx
6b33: 8bda             mov    bx, dx
6b35: d1e3             shl    bx, 1
6b37: 8b875608         mov    ax, word ptr [bx + 0x856]
6b3b: a3240b           mov    word ptr [0xb24], ax
6b3e: 833e240b02       cmp    word ptr [0xb24], 2
6b43: 0f854500         jne    0x6b8c
6b47: c706240b0300     mov    word ptr [0xb24], 3
6b4d: 833eca0500       cmp    word ptr [0x5ca], 0
6b52: 0f8e1f00         jle    0x6b75
6b56: f71eca05         neg    word ptr [0x5ca]
6b5a: ff36240b         push   word ptr [0xb24]
6b5e: ff36220b         push   word ptr [0xb22]
6b62: ff36200b         push   word ptr [0xb20]
6b66: 9a0748846b       fcall  sub_4807
6b6b: 83c406           add    sp, 6
6b6e: f71eca05         neg    word ptr [0x5ca]
6b72: e91400           jmp    0x6b89
6b75: ff36240b         push   word ptr [0xb24]
6b79: ff36220b         push   word ptr [0xb22]
6b7d: ff36200b         push   word ptr [0xb20]
6b81: 9a0748b16b       fcall  sub_4807
6b86: 83c406           add    sp, 6
6b89: e95c00           jmp    0x6be8
6b8c: 833e240b03       cmp    word ptr [0xb24], 3
6b91: 0f853f00         jne    0x6bd4
6b95: 833eca0500       cmp    word ptr [0x5ca], 0
6b9a: 0f8d1f00         jge    0x6bbd
6b9e: f71eca05         neg    word ptr [0x5ca]
6ba2: ff36240b         push   word ptr [0xb24]
6ba6: ff36220b         push   word ptr [0xb22]
6baa: ff36200b         push   word ptr [0xb20]
6bae: 9a0748cc6b       fcall  sub_4807
6bb3: 83c406           add    sp, 6
6bb6: f71eca05         neg    word ptr [0x5ca]
6bba: e91400           jmp    0x6bd1
6bbd: ff36240b         push   word ptr [0xb24]
6bc1: ff36220b         push   word ptr [0xb22]
6bc5: ff36200b         push   word ptr [0xb20]
6bc9: 9a0748e36b       fcall  sub_4807
6bce: 83c406           add    sp, 6
6bd1: e91400           jmp    0x6be8
6bd4: ff36240b         push   word ptr [0xb24]
6bd8: ff36220b         push   word ptr [0xb22]
6bdc: ff36200b         push   word ptr [0xb20]
6be0: 9a07480b6c       fcall  sub_4807
6be5: 83c406           add    sp, 6
6be8: a1460b           mov    ax, word ptr [0xb46]
6beb: ff06460b         inc    word ptr [0xb46]
6bef: 3d1000           cmp    ax, 0x10
6bf2: 0f8c2000         jl     0x6c16
6bf6: c706240b4600     mov    word ptr [0xb24], 0x46
6bfc: ff36240b         push   word ptr [0xb24]
6c00: ff36220b         push   word ptr [0xb22]
6c04: ff36200b         push   word ptr [0xb20]
6c08: 9a07481b6c       fcall  sub_4807
6c0d: 83c406           add    sp, 6
6c10: c706c00b4700     mov    word ptr [0xbc0], 0x47
6c16: 6a00             push   0
6c18: 9a6f49286c       fcall  sub_496f
6c1d: 83c402           add    sp, 2
6c20: e9b023           jmp    0x8fd3
6c23: 6a00             push   0
6c25: 9a6f49596c       fcall  sub_496f
6c2a: 83c402           add    sp, 2
6c2d: a15a0b           mov    ax, word ptr [0xb5a]
6c30: ff065a0b         inc    word ptr [0xb5a]
6c34: 3d0e00           cmp    ax, 0xe
6c37: 0f8d0300         jge    0x6c3e
6c3b: e99523           jmp    0x8fd3
6c3e: c7065a0b0000     mov    word ptr [0xb5a], 0
6c44: c706240b6000     mov    word ptr [0xb24], 0x60
6c4a: ff36240b         push   word ptr [0xb24]
6c4e: ff36220b         push   word ptr [0xb22]
6c52: ff36200b         push   word ptr [0xb20]
6c56: 9a07486c6c       fcall  sub_4807
6c5b: 83c406           add    sp, 6
6c5e: c706c00b4800     mov    word ptr [0xbc0], 0x48
6c64: e96c23           jmp    0x8fd3
6c67: 6a00             push   0
6c69: 9a6f499d6c       fcall  sub_496f
6c6e: 83c402           add    sp, 2
6c71: a15a0b           mov    ax, word ptr [0xb5a]
6c74: ff065a0b         inc    word ptr [0xb5a]
6c78: 3d1e00           cmp    ax, 0x1e
6c7b: 0f8d0300         jge    0x6c82
6c7f: e95123           jmp    0x8fd3
6c82: c7065a0b0000     mov    word ptr [0xb5a], 0
6c88: c706240b0300     mov    word ptr [0xb24], 3
6c8e: ff36240b         push   word ptr [0xb24]
6c92: ff36220b         push   word ptr [0xb22]
6c96: ff36200b         push   word ptr [0xb20]
6c9a: 9a0748006d       fcall  sub_4807
6c9f: 83c406           add    sp, 6
6ca2: c706c00b0100     mov    word ptr [0xbc0], 1
6ca8: e92823           jmp    0x8fd3
6cab: c706460b0000     mov    word ptr [0xb46], 0
6cb1: c706c00b4a00     mov    word ptr [0xbc0], 0x4a
6cb7: a15a0b           mov    ax, word ptr [0xb5a]
6cba: ff065a0b         inc    word ptr [0xb5a]
6cbe: 3d0200           cmp    ax, 2
6cc1: 0f8d0300         jge    0x6cc8
6cc5: e90b23           jmp    0x8fd3
6cc8: c7065a0b0000     mov    word ptr [0xb5a], 0
6cce: 8b1e460b         mov    bx, word ptr [0xb46]
6cd2: d1e3             shl    bx, 1
6cd4: 8b874207         mov    ax, word ptr [bx + 0x742]
6cd8: a3240b           mov    word ptr [0xb24], ax
6cdb: ff06460b         inc    word ptr [0xb46]
6cdf: 833e240b00       cmp    word ptr [0xb24], 0
6ce4: 0f850900         jne    0x6cf1
6ce8: c706c00b0100     mov    word ptr [0xbc0], 1
6cee: e9e222           jmp    0x8fd3
6cf1: ff36240b         push   word ptr [0xb24]
6cf5: ff36220b         push   word ptr [0xb22]
6cf9: ff36200b         push   word ptr [0xb20]
6cfd: 9a07480a6d       fcall  sub_4807
6d02: 83c406           add    sp, 6
6d05: 6a00             push   0
6d07: 9a6f49276d       fcall  sub_496f
6d0c: 83c402           add    sp, 2
6d0f: e9c122           jmp    0x8fd3
6d12: c706240b0400     mov    word ptr [0xb24], 4
6d18: ff36240b         push   word ptr [0xb24]
6d1c: ff36220b         push   word ptr [0xb22]
6d20: ff36200b         push   word ptr [0xb20]
6d24: 9a07485f6d       fcall  sub_4807
6d29: 83c406           add    sp, 6
6d2c: c706c00b5200     mov    word ptr [0xbc0], 0x52
6d32: e99e22           jmp    0x8fd3
6d35: c7065a0b0000     mov    word ptr [0xb5a], 0
6d3b: 833e240b04       cmp    word ptr [0xb24], 4
6d40: 0f850600         jne    0x6d4a
6d44: b80500           mov    ax, 5
6d47: e90300           jmp    0x6d4d
6d4a: b80400           mov    ax, 4
6d4d: a3240b           mov    word ptr [0xb24], ax
6d50: ff36240b         push   word ptr [0xb24]
6d54: ff36220b         push   word ptr [0xb22]
6d58: ff36200b         push   word ptr [0xb20]
6d5c: 9a07489e6d       fcall  sub_4807
6d61: 83c406           add    sp, 6
6d64: e96c22           jmp    0x8fd3
6d67: c706c00b0000     mov    word ptr [0xbc0], 0
6d6d: e96322           jmp    0x8fd3
6d70: 9a164f0000       lcall  0, 0x4f16    ; <GetActiveWindow>
6d75: a33c0b           mov    word ptr [0xb3c], ax
6d78: a1d023           mov    ax, word ptr [0x23d0]
6d7b: 39063c0b         cmp    word ptr [0xb3c], ax
6d7f: 0f842700         je     0x6daa
6d83: a1902d           mov    ax, word ptr [0x2d90]
6d86: 39063c0b         cmp    word ptr [0xb3c], ax
6d8a: 0f841c00         je     0x6daa
6d8e: 833e3c0b00       cmp    word ptr [0xb3c], 0
6d93: 0f841300         je     0x6daa
6d97: ff363c0b         push   word ptr [0xb3c]
6d9b: 9ad639be6d       fcall  sub_39d6
6da0: 83c402           add    sp, 2
6da3: 3d0000           cmp    ax, 0
6da6: 0f840900         je     0x6db3
6daa: c706c00b0100     mov    word ptr [0xbc0], 1
6db0: e92022           jmp    0x8fd3
6db3: 1e               push   ds
6db4: 683e0b           push   0xb3e
6db7: ff363c0b         push   word ptr [0xb3c]
6dbb: 9a1d493e6e       fcall  sub_491d
6dc0: 83c406           add    sp, 6
6dc3: 833e400b0a       cmp    word ptr [0xb40], 0xa
6dc8: 0f8d0900         jge    0x6dd5
6dcc: c706c00b0100     mov    word ptr [0xbc0], 1
6dd2: e9fe21           jmp    0x8fd3
6dd5: 833eca0500       cmp    word ptr [0x5ca], 0
6dda: 0f8e2400         jle    0x6e02
6dde: a1200b           mov    ax, word ptr [0xb20]
6de1: 3906420b         cmp    word ptr [0xb42], ax
6de5: 0f8d1900         jge    0x6e02
6de9: a1220b           mov    ax, word ptr [0xb22]
6dec: 3906400b         cmp    word ptr [0xb40], ax
6df0: 0f8d0e00         jge    0x6e02
6df4: a1220b           mov    ax, word ptr [0xb22]
6df7: 052800           add    ax, 0x28
6dfa: 3b06440b         cmp    ax, word ptr [0xb44]
6dfe: 0f8c3000         jl     0x6e32
6e02: 833eca0500       cmp    word ptr [0x5ca], 0
6e07: 0f8d3000         jge    0x6e3b
6e0b: a1200b           mov    ax, word ptr [0xb20]
6e0e: 052800           add    ax, 0x28
6e11: 3b063e0b         cmp    ax, word ptr [0xb3e]
6e15: 0f8d2200         jge    0x6e3b
6e19: a1220b           mov    ax, word ptr [0xb22]
6e1c: 3906400b         cmp    word ptr [0xb40], ax
6e20: 0f8d1700         jge    0x6e3b
6e24: a1220b           mov    ax, word ptr [0xb22]
6e27: 052800           add    ax, 0x28
6e2a: 3b06440b         cmp    ax, word ptr [0xb44]
6e2e: 0f8d0900         jge    0x6e3b
6e32: c706c00b5700     mov    word ptr [0xbc0], 0x57    ; "ScreenMatePoo"
6e38: e99821           jmp    0x8fd3
6e3b: 9ab6123467       fcall  sub_12b6
6e40: 99               cdq    
6e41: f73e420b         idiv   word ptr [0xb42]
6e45: 8bc2             mov    ax, dx
6e47: 2b063e0b         sub    ax, word ptr [0xb3e]
6e4b: b90300           mov    cx, 3
6e4e: 99               cdq    
6e4f: f7f9             idiv   cx
6e51: 8bc8             mov    cx, ax
6e53: a1420b           mov    ax, word ptr [0xb42]
6e56: 2b063e0b         sub    ax, word ptr [0xb3e]
6e5a: 99               cdq    
6e5b: 2bc2             sub    ax, dx
6e5d: d1f8             sar    ax, 1
6e5f: 03c8             add    cx, ax
6e61: 030e3e0b         add    cx, word ptr [0xb3e]
6e65: 83e914           sub    cx, 0x14
6e68: 890e5c0b         mov    word ptr [0xb5c], cx
6e6c: a1400b           mov    ax, word ptr [0xb40]
6e6f: 2d2800           sub    ax, 0x28
6e72: a35e0b           mov    word ptr [0xb5e], ax
6e75: a1702d           mov    ax, word ptr [0x2d70]
6e78: 99               cdq    
6e79: 2bc2             sub    ax, dx
6e7b: d1f8             sar    ax, 1
6e7d: 2d1400           sub    ax, 0x14
6e80: 3b06200b         cmp    ax, word ptr [0xb20]
6e84: 0f8e0900         jle    0x6e91
6e88: c706ca050100     mov    word ptr [0x5ca], 1
6e8e: e90600           jmp    0x6e97
6e91: c706ca05ffff     mov    word ptr [0x5ca], 0xffff
6e97: c706240b0400     mov    word ptr [0xb24], 4
6e9d: ff36240b         push   word ptr [0xb24]
6ea1: ff36220b         push   word ptr [0xb22]
6ea5: ff36200b         push   word ptr [0xb20]
6ea9: 9a0748ff6e       fcall  sub_4807
6eae: 83c406           add    sp, 6
6eb1: c706c00b5600     mov    word ptr [0xbc0], 0x56
6eb7: e91921           jmp    0x8fd3
6eba: a15a0b           mov    ax, word ptr [0xb5a]
6ebd: ff065a0b         inc    word ptr [0xb5a]
6ec1: 3d0100           cmp    ax, 1
6ec4: 0f8d0300         jge    0x6ecb
6ec8: e90821           jmp    0x8fd3
6ecb: c7065a0b0000     mov    word ptr [0xb5a], 0
6ed1: a1ca05           mov    ax, word ptr [0x5ca]
6ed4: c1e004           shl    ax, 4
6ed7: 2906200b         sub    word ptr [0xb20], ax
6edb: 833e240b04       cmp    word ptr [0xb24], 4
6ee0: 0f850600         jne    0x6eea
6ee4: b80500           mov    ax, 5
6ee7: e90300           jmp    0x6eed
6eea: b80400           mov    ax, 4
6eed: a3240b           mov    word ptr [0xb24], ax
6ef0: ff36240b         push   word ptr [0xb24]
6ef4: ff36220b         push   word ptr [0xb22]
6ef8: ff36200b         push   word ptr [0xb20]
6efc: 9a07481f6f       fcall  sub_4807
6f01: 83c406           add    sp, 6
6f04: 833e200bd8       cmp    word ptr [0xb20], -0x28
6f09: 0f8c0b00         jl     0x6f18
6f0d: a1702d           mov    ax, word ptr [0x2d70]
6f10: 3906200b         cmp    word ptr [0xb20], ax
6f14: 0f8e9700         jle    0x6faf
6f18: ff363c0b         push   word ptr [0xb3c]
6f1c: 9af348376f       fcall  sub_48f3
6f21: 83c402           add    sp, 2
6f24: 3d0000           cmp    ax, 0
6f27: 0f850900         jne    0x6f34
6f2b: c706c00b0100     mov    word ptr [0xbc0], 1
6f31: e99f20           jmp    0x8fd3
6f34: 9ab6127c6f       fcall  sub_12b6
6f39: b90300           mov    cx, 3
6f3c: 99               cdq    
6f3d: f7f9             idiv   cx
6f3f: 83fa00           cmp    dx, 0
6f42: 0f850900         jne    0x6f4f
6f46: c706c00b0300     mov    word ptr [0xbc0], 3
6f4c: e9e4dd           jmp    0x4d33
6f4f: c706600b0000     mov    word ptr [0xb60], 0
6f55: c706c00b5c00     mov    word ptr [0xbc0], 0x5c
6f5b: c7061c0b0100     mov    word ptr [0xb1c], 1
6f61: a15c0b           mov    ax, word ptr [0xb5c]
6f64: a3200b           mov    word ptr [0xb20], ax
6f67: c706220bd8ff     mov    word ptr [0xb22], 0xffd8
6f6d: c706260b0000     mov    word ptr [0xb26], 0
6f73: c706280b0000     mov    word ptr [0xb28], 0
6f79: 9ab612aa6f       fcall  sub_12b6
6f7e: b90200           mov    cx, 2
6f81: 99               cdq    
6f82: f7f9             idiv   cx
6f84: 8916620b         mov    word ptr [0xb62], dx
6f88: 833e620b00       cmp    word ptr [0xb62], 0
6f8d: 0f840e00         je     0x6f9f
6f91: a1ca05           mov    ax, word ptr [0x5ca]
6f94: 8bc8             mov    cx, ax
6f96: d1e0             shl    ax, 1
6f98: 03c1             add    ax, cx
6f9a: f7d8             neg    ax
6f9c: a3280b           mov    word ptr [0xb28], ax
6f9f: ff363c0b         push   word ptr [0xb3c]
6fa3: ff36d023         push   word ptr [0x23d0]
6fa7: 9a012bbd6f       fcall  sub_2b01
6fac: 83c404           add    sp, 4
6faf: e92120           jmp    0x8fd3
6fb2: ff363c0b         push   word ptr [0xb3c]
6fb6: ff36d023         push   word ptr [0x23d0]
6fba: 9a012b5470       fcall  sub_2b01
6fbf: 83c404           add    sp, 4
6fc2: 833eca0500       cmp    word ptr [0x5ca], 0
6fc7: 0f8e0f00         jle    0x6fda
6fcb: a1420b           mov    ax, word ptr [0xb42]
6fce: a35c0b           mov    word ptr [0xb5c], ax
6fd1: a1400b           mov    ax, word ptr [0xb40]
6fd4: a35e0b           mov    word ptr [0xb5e], ax
6fd7: e90f00           jmp    0x6fe9
6fda: a13e0b           mov    ax, word ptr [0xb3e]
6fdd: 2d2800           sub    ax, 0x28
6fe0: a35c0b           mov    word ptr [0xb5c], ax
6fe3: a1400b           mov    ax, word ptr [0xb40]
6fe6: a35e0b           mov    word ptr [0xb5e], ax
6fe9: c706c00b5800     mov    word ptr [0xbc0], 0x58
6fef: a15a0b           mov    ax, word ptr [0xb5a]
6ff2: ff065a0b         inc    word ptr [0xb5a]
6ff6: 3d0100           cmp    ax, 1
6ff9: 0f8d0300         jge    0x7000
6ffd: e9d31f           jmp    0x8fd3
7000: c7065a0b0000     mov    word ptr [0xb5a], 0
7006: a1ca05           mov    ax, word ptr [0x5ca]
7009: c1e004           shl    ax, 4
700c: 2906200b         sub    word ptr [0xb20], ax
7010: 833e240b04       cmp    word ptr [0xb24], 4
7015: 0f850600         jne    0x701f
7019: b80500           mov    ax, 5
701c: e90300           jmp    0x7022
701f: b80400           mov    ax, 4
7022: a3240b           mov    word ptr [0xb24], ax
7025: a1200b           mov    ax, word ptr [0xb20]
7028: 39065c0b         cmp    word ptr [0xb5c], ax
702c: 0f8c0900         jl     0x7039
7030: 833eca0500       cmp    word ptr [0x5ca], 0
7035: 0f8f1400         jg     0x704d
7039: a1200b           mov    ax, word ptr [0xb20]
703c: 39065c0b         cmp    word ptr [0xb5c], ax
7040: 0f8f9100         jg     0x70d5
7044: 833eca0500       cmp    word ptr [0x5ca], 0
7049: 0f8d8800         jge    0x70d5
704d: ff363c0b         push   word ptr [0xb3c]
7051: 9af3487570       fcall  sub_48f3
7056: 83c402           add    sp, 2
7059: 3d0000           cmp    ax, 0
705c: 0f850900         jne    0x7069
7060: c706c00b0100     mov    word ptr [0xbc0], 1
7066: e96a1f           jmp    0x8fd3
7069: 8d46f0           lea    ax, [bp - 0x10]
706c: 16               push   ss
706d: 50               push   ax
706e: ff363c0b         push   word ptr [0xb3c]
7072: 9a1d49e470       fcall  sub_491d
7077: 83c406           add    sp, 6
707a: a13e0b           mov    ax, word ptr [0xb3e]
707d: 3946f0           cmp    word ptr [bp - 0x10], ax
7080: 0f854800         jne    0x70cc
7084: a1420b           mov    ax, word ptr [0xb42]
7087: 3946f4           cmp    word ptr [bp - 0xc], ax
708a: 0f853e00         jne    0x70cc
708e: a1220b           mov    ax, word ptr [0xb22]
7091: 3946f2           cmp    word ptr [bp - 0xe], ax
7094: 0f8d3400         jge    0x70cc
7098: a1220b           mov    ax, word ptr [0xb22]
709b: 052800           add    ax, 0x28
709e: 3b46f6           cmp    ax, word ptr [bp - 0xa]
70a1: 0f8d2700         jge    0x70cc
70a5: 8b46f2           mov    ax, word ptr [bp - 0xe]
70a8: 2d0c00           sub    ax, 0xc
70ab: a35e0b           mov    word ptr [0xb5e], ax
70ae: c7061c0b0100     mov    word ptr [0xb1c], 1
70b4: a15c0b           mov    ax, word ptr [0xb5c]
70b7: a3200b           mov    word ptr [0xb20], ax
70ba: c706240b1e00     mov    word ptr [0xb24], 0x1e
70c0: c706c00b5900     mov    word ptr [0xbc0], 0x59
70c6: e90a1f           jmp    0x8fd3
70c9: e90900           jmp    0x70d5
70cc: c706c00b0100     mov    word ptr [0xbc0], 1
70d2: e9fe1e           jmp    0x8fd3
70d5: ff36240b         push   word ptr [0xb24]
70d9: ff36220b         push   word ptr [0xb22]
70dd: ff36200b         push   word ptr [0xb20]
70e1: 9a07481271       fcall  sub_4807
70e6: 83c406           add    sp, 6
70e9: e9e71e           jmp    0x8fd3
70ec: a15a0b           mov    ax, word ptr [0xb5a]
70ef: ff065a0b         inc    word ptr [0xb5a]
70f3: 3d0100           cmp    ax, 1
70f6: 0f8d0300         jge    0x70fd
70fa: e9d61e           jmp    0x8fd3
70fd: c7065a0b0000     mov    word ptr [0xb5a], 0
7103: ff36240b         push   word ptr [0xb24]
7107: ff36220b         push   word ptr [0xb22]
710b: ff36200b         push   word ptr [0xb20]
710f: 9a07484871       fcall  sub_4807
7114: 83c406           add    sp, 6
7117: 832e220b06       sub    word ptr [0xb22], 6
711c: 833e240b0f       cmp    word ptr [0xb24], 0xf
7121: 0f850600         jne    0x712b
7125: b81000           mov    ax, 0x10
7128: e90300           jmp    0x712e
712b: b80f00           mov    ax, 0xf
712e: a3240b           mov    word ptr [0xb24], ax
7131: a1220b           mov    ax, word ptr [0xb22]
7134: 39065e0b         cmp    word ptr [0xb5e], ax
7138: 0f8c0900         jl     0x7145
713c: c706c00b5a00     mov    word ptr [0xbc0], 0x5a
7142: e98e1e           jmp    0x8fd3
7145: 9a3b4b8c71       fcall  sub_4b3b
714a: e9861e           jmp    0x8fd3
714d: a15a0b           mov    ax, word ptr [0xb5a]
7150: ff065a0b         inc    word ptr [0xb5a]
7154: 3d0200           cmp    ax, 2
7157: 0f8d0300         jge    0x715e
715b: e9751e           jmp    0x8fd3
715e: c7065a0b0000     mov    word ptr [0xb5a], 0
7164: a1ca05           mov    ax, word ptr [0x5ca]
7167: c1e003           shl    ax, 3
716a: 2906200b         sub    word ptr [0xb20], ax
716e: a15e0b           mov    ax, word ptr [0xb5e]
7171: 2d1400           sub    ax, 0x14
7174: a3220b           mov    word ptr [0xb22], ax
7177: c706240b4c00     mov    word ptr [0xb24], 0x4c
717d: ff36240b         push   word ptr [0xb24]
7181: ff36220b         push   word ptr [0xb22]
7185: ff36200b         push   word ptr [0xb20]
7189: 9a0748d471       fcall  sub_4807
718e: 83c406           add    sp, 6
7191: c706c00b5b00     mov    word ptr [0xbc0], 0x5b
7197: e9391e           jmp    0x8fd3
719a: a15a0b           mov    ax, word ptr [0xb5a]
719d: ff065a0b         inc    word ptr [0xb5a]
71a1: 3d0200           cmp    ax, 2
71a4: 0f8d0300         jge    0x71ab
71a8: e9281e           jmp    0x8fd3
71ab: c7065a0b0000     mov    word ptr [0xb5a], 0
71b1: 6b06ca05e8       imul   ax, word ptr [0x5ca], -0x18
71b6: 0106200b         add    word ptr [0xb20], ax
71ba: 832e220b08       sub    word ptr [0xb22], 8
71bf: c706240b0300     mov    word ptr [0xb24], 3
71c5: ff36240b         push   word ptr [0xb24]
71c9: ff36220b         push   word ptr [0xb22]
71cd: ff36200b         push   word ptr [0xb20]
71d1: 9a0748ed6a       fcall  sub_4807
71d6: 83c406           add    sp, 6
71d9: c706c00b0b00     mov    word ptr [0xbc0], 0xb
71df: e9f11d           jmp    0x8fd3
71e2: 8306260b04       add    word ptr [0xb26], 4
71e7: a1220b           mov    ax, word ptr [0xb22]
71ea: a32c0b           mov    word ptr [0xb2c], ax
71ed: a1280b           mov    ax, word ptr [0xb28]
71f0: 0106200b         add    word ptr [0xb20], ax
71f4: a1260b           mov    ax, word ptr [0xb26]
71f7: 0106220b         add    word ptr [0xb22], ax
71fb: 8b1e240b         mov    bx, word ptr [0xb24]
71ff: 8bc3             mov    ax, bx
7201: d1e3             shl    bx, 1
7203: 03d8             add    bx, ax
7205: c1e302           shl    bx, 2
7208: 8b87ca0b         mov    ax, word ptr [bx + 0xbca]
720c: 0306200b         add    ax, word ptr [0xb20]
7210: 50               push   ax
7211: ff36200b         push   word ptr [0xb20]
7215: 8b1e240b         mov    bx, word ptr [0xb24]
7219: 8bc3             mov    ax, bx
721b: d1e3             shl    bx, 1
721d: 03d8             add    bx, ax
721f: c1e302           shl    bx, 2
7222: 8b87cc0b         mov    ax, word ptr [bx + 0xbcc]
7226: 03062c0b         add    ax, word ptr [0xb2c]
722a: 50               push   ax
722b: 8b1e240b         mov    bx, word ptr [0xb24]
722f: 8bc3             mov    ax, bx
7231: d1e3             shl    bx, 1
7233: 03d8             add    bx, ax
7235: c1e302           shl    bx, 2
7238: 8b87cc0b         mov    ax, word ptr [bx + 0xbcc]
723c: 0306220b         add    ax, word ptr [0xb22]
7240: 50               push   ax
7241: ff363c0b         push   word ptr [0xb3c]
7245: 9a9e416e72       fcall  sub_419e
724a: 83c40a           add    sp, 0xa
724d: 8946fc           mov    word ptr [bp - 4], ax
7250: 3d0000           cmp    ax, 0
7253: 0f84e600         je     0x733d
7257: 837efcff         cmp    word ptr [bp - 4], -1
725b: 0f851d00         jne    0x727c
725f: ff36240b         push   word ptr [0xb24]
7263: ff36220b         push   word ptr [0xb22]
7267: ff36200b         push   word ptr [0xb20]
726b: 9a0748f272       fcall  sub_4807
7270: 83c406           add    sp, 6
7273: c706c00b0000     mov    word ptr [0xbc0], 0
7279: e9571d           jmp    0x8fd3
727c: 8b46fc           mov    ax, word ptr [bp - 4]
727f: 8b1e240b         mov    bx, word ptr [0xb24]
7283: 8bcb             mov    cx, bx
7285: d1e3             shl    bx, 1
7287: 03d9             add    bx, cx
7289: c1e302           shl    bx, 2
728c: 2b87cc0b         sub    ax, word ptr [bx + 0xbcc]
7290: a3220b           mov    word ptr [0xb22], ax
7293: 833e260b40       cmp    word ptr [0xb26], 0x40
7298: 0f8d0900         jge    0x72a5
729c: 833e600b00       cmp    word ptr [0xb60], 0
72a1: 0f840900         je     0x72ae
72a5: 833e260b08       cmp    word ptr [0xb26], 8
72aa: 0f8d7b00         jge    0x7329
72ae: ff36d023         push   word ptr [0x23d0]
72b2: ff363c0b         push   word ptr [0xb3c]
72b6: 6a00             push   0
72b8: 6a00             push   0
72ba: 6a00             push   0
72bc: 6a00             push   0
72be: 6a13             push   0x13
72c0: 9a282b0000       lcall  0, 0x2b28    ; <SetWindowPos>
72c5: c706600b0000     mov    word ptr [0xb60], 0
72cb: c706460b0000     mov    word ptr [0xb46], 0
72d1: c706c00b5d00     mov    word ptr [0xbc0], 0x5d
72d7: 833e260b24       cmp    word ptr [0xb26], 0x24
72dc: 0f8d0f00         jge    0x72ef
72e0: c706240b3100     mov    word ptr [0xb24], 0x31
72e6: c7065a0bfcff     mov    word ptr [0xb5a], 0xfffc
72ec: e92000           jmp    0x730f
72ef: 9ab6121e73       fcall  sub_12b6
72f4: a803             test   al, 3
72f6: 0f850900         jne    0x7303
72fa: c706240b3000     mov    word ptr [0xb24], 0x30
7300: e90600           jmp    0x7309
7303: c706240b2a00     mov    word ptr [0xb24], 0x2a
7309: c7065a0bf4ff     mov    word ptr [0xb5a], 0xfff4
730f: ff36240b         push   word ptr [0xb24]
7313: ff36220b         push   word ptr [0xb22]
7317: ff36200b         push   word ptr [0xb20]
731b: 9a07487373       fcall  sub_4807
7320: 83c406           add    sp, 6
7323: e9ad1c           jmp    0x8fd3
7326: e91400           jmp    0x733d
7329: a1260b           mov    ax, word ptr [0xb26]
732c: d1e0             shl    ax, 1
732e: b9fdff           mov    cx, 0xfffd
7331: 99               cdq    
7332: f7f9             idiv   cx
7334: a3260b           mov    word ptr [0xb26], ax
7337: c706600b0100     mov    word ptr [0xb60], 1
733d: 833e620b00       cmp    word ptr [0xb62], 0
7342: 0f841800         je     0x735e
7346: 833e240b04       cmp    word ptr [0xb24], 4
734b: 0f850600         jne    0x7355
734f: b80500           mov    ax, 5
7352: e90300           jmp    0x7358
7355: b80400           mov    ax, 4
7358: a3240b           mov    word ptr [0xb24], ax
735b: e90600           jmp    0x7364
735e: c706240b2a00     mov    word ptr [0xb24], 0x2a
7364: ff36240b         push   word ptr [0xb24]
7368: ff36220b         push   word ptr [0xb22]
736c: ff36200b         push   word ptr [0xb20]
7370: 9a0748fe73       fcall  sub_4807
7375: 83c406           add    sp, 6
7378: e9581c           jmp    0x8fd3
737b: a15a0b           mov    ax, word ptr [0xb5a]
737e: ff065a0b         inc    word ptr [0xb5a]
7382: 3d0100           cmp    ax, 1
7385: 0f8d0300         jge    0x738c
7389: e9471c           jmp    0x8fd3
738c: c7065a0b0000     mov    word ptr [0xb5a], 0
7392: 833e620b00       cmp    word ptr [0xb62], 0
7397: 0f840f00         je     0x73aa
739b: c706c00b0b00     mov    word ptr [0xbc0], 0xb
73a1: c706240b0200     mov    word ptr [0xb24], 2
73a7: e9291c           jmp    0x8fd3
73aa: 833e460b00       cmp    word ptr [0xb46], 0
73af: 0f850900         jne    0x73bc
73b3: c706240b0d00     mov    word ptr [0xb24], 0xd
73b9: e93300           jmp    0x73ef
73bc: 833e460b01       cmp    word ptr [0xb46], 1
73c1: 0f851b00         jne    0x73e0
73c5: 833eca0500       cmp    word ptr [0x5ca], 0
73ca: 0f8e0900         jle    0x73d7
73ce: c706240b0c00     mov    word ptr [0xb24], 0xc
73d4: e90600           jmp    0x73dd
73d7: c706240b0e00     mov    word ptr [0xb24], 0xe
73dd: e90f00           jmp    0x73ef
73e0: 833e460b02       cmp    word ptr [0xb46], 2
73e5: 0f850600         jne    0x73ef
73e9: c706240b0300     mov    word ptr [0xb24], 3
73ef: ff36240b         push   word ptr [0xb24]
73f3: ff36220b         push   word ptr [0xb22]
73f7: ff36200b         push   word ptr [0xb20]
73fb: 9a0748cf74       fcall  sub_4807
7400: 83c406           add    sp, 6
7403: a1460b           mov    ax, word ptr [0xb46]
7406: ff06460b         inc    word ptr [0xb46]
740a: 3d0200           cmp    ax, 2
740d: 0f8c0600         jl     0x7417
7411: c706c00b0b00     mov    word ptr [0xbc0], 0xb
7417: e9b91b           jmp    0x8fd3
741a: c7061c0b0100     mov    word ptr [0xb1c], 1
7420: c706260b0000     mov    word ptr [0xb26], 0
7426: a1ca05           mov    ax, word ptr [0x5ca]
7429: c1e003           shl    ax, 3
742c: f7d8             neg    ax
742e: a3280b           mov    word ptr [0xb28], ax
7431: c706620b0100     mov    word ptr [0xb62], 1
7437: c706c00b6300     mov    word ptr [0xbc0], 0x63
743d: e9f3d8           jmp    0x4d33
7440: c7061c0b0100     mov    word ptr [0xb1c], 1
7446: c706260b0000     mov    word ptr [0xb26], 0
744c: a1ca05           mov    ax, word ptr [0x5ca]
744f: 8bc8             mov    cx, ax
7451: d1e0             shl    ax, 1
7453: 03c1             add    ax, cx
7455: f7d8             neg    ax
7457: a3280b           mov    word ptr [0xb28], ax
745a: c706620b0100     mov    word ptr [0xb62], 1
7460: c706c00b6300     mov    word ptr [0xbc0], 0x63
7466: e9cad8           jmp    0x4d33
7469: c7061c0b0100     mov    word ptr [0xb1c], 1
746f: c706260b0000     mov    word ptr [0xb26], 0
7475: c706280b0000     mov    word ptr [0xb28], 0
747b: c706620b0000     mov    word ptr [0xb62], 0
7481: c706c00b6300     mov    word ptr [0xbc0], 0x63
7487: e9a9d8           jmp    0x4d33
748a: c7061c0b0100     mov    word ptr [0xb1c], 1
7490: c706260b0000     mov    word ptr [0xb26], 0
7496: c706280b0000     mov    word ptr [0xb28], 0
749c: c706620b0100     mov    word ptr [0xb62], 1
74a2: c706c00b6300     mov    word ptr [0xbc0], 0x63
74a8: e988d8           jmp    0x4d33
74ab: c7061c0b0100     mov    word ptr [0xb1c], 1
74b1: c706260b0000     mov    word ptr [0xb26], 0
74b7: c706280b0000     mov    word ptr [0xb28], 0
74bd: c706620b0200     mov    word ptr [0xb62], 2
74c3: c706c00b6300     mov    word ptr [0xbc0], 0x63
74c9: e967d8           jmp    0x4d33
74cc: 9af03d0475       fcall  sub_3df0
74d1: 8306260b04       add    word ptr [0xb26], 4
74d6: a1220b           mov    ax, word ptr [0xb22]
74d9: a32c0b           mov    word ptr [0xb2c], ax
74dc: a1280b           mov    ax, word ptr [0xb28]
74df: 0106200b         add    word ptr [0xb20], ax
74e3: a1260b           mov    ax, word ptr [0xb26]
74e6: 0106220b         add    word ptr [0xb22], ax
74ea: a1722d           mov    ax, word ptr [0x2d72]
74ed: 39062c0b         cmp    word ptr [0xb2c], ax
74f1: 0f8e1d00         jle    0x7512
74f5: ff36240b         push   word ptr [0xb24]
74f9: ff36220b         push   word ptr [0xb22]
74fd: ff36200b         push   word ptr [0xb20]
7501: 9a07485e75       fcall  sub_4807
7506: 83c406           add    sp, 6
7509: c706c00b0000     mov    word ptr [0xbc0], 0
750f: e9c11a           jmp    0x8fd3
7512: 8b1e240b         mov    bx, word ptr [0xb24]
7516: 8bc3             mov    ax, bx
7518: d1e3             shl    bx, 1
751a: 03d8             add    bx, ax
751c: c1e302           shl    bx, 2
751f: 8b87ca0b         mov    ax, word ptr [bx + 0xbca]
7523: 0306200b         add    ax, word ptr [0xb20]
7527: 50               push   ax
7528: ff36200b         push   word ptr [0xb20]
752c: 8b1e240b         mov    bx, word ptr [0xb24]
7530: 8bc3             mov    ax, bx
7532: d1e3             shl    bx, 1
7534: 03d8             add    bx, ax
7536: c1e302           shl    bx, 2
7539: 8b87cc0b         mov    ax, word ptr [bx + 0xbcc]
753d: 03062c0b         add    ax, word ptr [0xb2c]
7541: 50               push   ax
7542: 8b1e240b         mov    bx, word ptr [0xb24]
7546: 8bc3             mov    ax, bx
7548: d1e3             shl    bx, 1
754a: 03d8             add    bx, ax
754c: c1e302           shl    bx, 2
754f: 8b87cc0b         mov    ax, word ptr [bx + 0xbcc]
7553: 0306220b         add    ax, word ptr [0xb22]
7557: 50               push   ax
7558: 683c0b           push   0xb3c
755b: 9a8c407475       fcall  sub_408c
7560: 83c40a           add    sp, 0xa
7563: 8946fc           mov    word ptr [bp - 4], ax
7566: 3d0000           cmp    ax, 0
7569: 0f84af01         je     0x771c
756d: ff363c0b         push   word ptr [0xb3c]
7571: 9af3488f75       fcall  sub_48f3
7576: 83c402           add    sp, 2
7579: 3d0000           cmp    ax, 0
757c: 0f851d00         jne    0x759d
7580: ff36240b         push   word ptr [0xb24]
7584: ff36220b         push   word ptr [0xb22]
7588: ff36200b         push   word ptr [0xb20]
758c: 9a0748a875       fcall  sub_4807
7591: 83c406           add    sp, 6
7594: c706c00b0000     mov    word ptr [0xbc0], 0
759a: e9361a           jmp    0x8fd3
759d: 1e               push   ds
759e: 683e0b           push   0xb3e
75a1: ff363c0b         push   word ptr [0xb3c]
75a5: 9a1d49ac6e       fcall  sub_491d
75aa: 83c406           add    sp, 6
75ad: 8b46fc           mov    ax, word ptr [bp - 4]
75b0: 8b1e240b         mov    bx, word ptr [0xb24]
75b4: 8bcb             mov    cx, bx
75b6: d1e3             shl    bx, 1
75b8: 03d9             add    bx, cx
75ba: c1e302           shl    bx, 2
75bd: 2b87cc0b         sub    ax, word ptr [bx + 0xbcc]
75c1: a3220b           mov    word ptr [0xb22], ax
75c4: 833e620b03       cmp    word ptr [0xb62], 3
75c9: 0f852300         jne    0x75f0
75cd: c706240b4200     mov    word ptr [0xb24], 0x42
75d3: ff36240b         push   word ptr [0xb24]
75d7: ff36220b         push   word ptr [0xb22]
75db: ff36200b         push   word ptr [0xb20]
75df: 9a07485876       fcall  sub_4807
75e4: 83c406           add    sp, 6
75e7: c706c00b1d00     mov    word ptr [0xbc0], 0x1d
75ed: e9e319           jmp    0x8fd3
75f0: 833e260b40       cmp    word ptr [0xb26], 0x40
75f5: 0f8d0900         jge    0x7602
75f9: 833e600b00       cmp    word ptr [0xb60], 0
75fe: 0f840900         je     0x760b
7602: 833e260b08       cmp    word ptr [0xb26], 8
7607: 0f8da500         jge    0x76b0
760b: 833e3c0b00       cmp    word ptr [0xb3c], 0
7610: 0f841700         je     0x762b
7614: ff36d023         push   word ptr [0x23d0]
7618: ff363c0b         push   word ptr [0xb3c]
761c: 6a00             push   0
761e: 6a00             push   0
7620: 6a00             push   0
7622: 6a00             push   0
7624: 6a13             push   0x13
7626: 9ac1720000       lcall  0, 0x72c1    ; <SetWindowPos>
762b: c706600b0000     mov    word ptr [0xb60], 0
7631: c706460b0000     mov    word ptr [0xb46], 0
7637: c706c00b6400     mov    word ptr [0xbc0], 0x64
763d: 833e260b24       cmp    word ptr [0xb26], 0x24
7642: 0f8d0f00         jge    0x7655
7646: c706240b3100     mov    word ptr [0xb24], 0x31
764c: c7065a0bfcff     mov    word ptr [0xb5a], 0xfffc
7652: e92000           jmp    0x7675
7655: 9ab612a576       fcall  sub_12b6
765a: a803             test   al, 3
765c: 0f850900         jne    0x7669
7660: c706240b3000     mov    word ptr [0xb24], 0x30
7666: e90600           jmp    0x766f
7669: c706240b2a00     mov    word ptr [0xb24], 0x2a
766f: c7065a0bf6ff     mov    word ptr [0xb5a], 0xfff6
7675: 833e620b02       cmp    word ptr [0xb62], 2
767a: 0f851800         jne    0x7696
767e: 833e260b24       cmp    word ptr [0xb26], 0x24
7683: 0f8d0900         jge    0x7690
7687: c706240b2900     mov    word ptr [0xb24], 0x29
768d: e90600           jmp    0x7696
7690: c706240b2d00     mov    word ptr [0xb24], 0x2d
7696: ff36240b         push   word ptr [0xb24]
769a: ff36220b         push   word ptr [0xb22]
769e: ff36200b         push   word ptr [0xb20]
76a2: 9a0748b376       fcall  sub_4807
76a7: 83c406           add    sp, 6
76aa: e92619           jmp    0x8fd3
76ad: e96c00           jmp    0x771c
76b0: 9ab6120077       fcall  sub_12b6
76b5: a807             test   al, 7
76b7: 0f854d00         jne    0x7708
76bb: 833e600b00       cmp    word ptr [0xb60], 0
76c0: 0f854400         jne    0x7708
76c4: c706600b0000     mov    word ptr [0xb60], 0
76ca: c706460b0000     mov    word ptr [0xb46], 0
76d0: c706c00b6400     mov    word ptr [0xbc0], 0x64
76d6: c706240b3000     mov    word ptr [0xb24], 0x30
76dc: c7065a0bf4ff     mov    word ptr [0xb5a], 0xfff4
76e2: 833e620b02       cmp    word ptr [0xb62], 2
76e7: 0f850600         jne    0x76f1
76eb: c706240b2d00     mov    word ptr [0xb24], 0x2d
76f1: ff36240b         push   word ptr [0xb24]
76f5: ff36220b         push   word ptr [0xb22]
76f9: ff36200b         push   word ptr [0xb20]
76fd: 9a0748a677       fcall  sub_4807
7702: 83c406           add    sp, 6
7705: e9cb18           jmp    0x8fd3
7708: a1260b           mov    ax, word ptr [0xb26]
770b: d1e0             shl    ax, 1
770d: b9fdff           mov    cx, 0xfffd
7710: 99               cdq    
7711: f7f9             idiv   cx
7713: a3260b           mov    word ptr [0xb26], ax
7716: c706600b0100     mov    word ptr [0xb60], 1
771c: 833e620b02       cmp    word ptr [0xb62], 2
7721: 0f851800         jne    0x773d
7725: 833e240b28       cmp    word ptr [0xb24], 0x28
772a: 0f850600         jne    0x7734
772e: b82900           mov    ax, 0x29
7731: e90300           jmp    0x7737
7734: b82800           mov    ax, 0x28
7737: a3240b           mov    word ptr [0xb24], ax
773a: e95100           jmp    0x778e
773d: 833e620b01       cmp    word ptr [0xb62], 1
7742: 0f851800         jne    0x775e
7746: 833e240b04       cmp    word ptr [0xb24], 4
774b: 0f850600         jne    0x7755
774f: b80500           mov    ax, 5
7752: e90300           jmp    0x7758
7755: b80400           mov    ax, 4
7758: a3240b           mov    word ptr [0xb24], ax
775b: e93000           jmp    0x778e
775e: 833e620b00       cmp    word ptr [0xb62], 0
7763: 0f850900         jne    0x7770
7767: c706240b2a00     mov    word ptr [0xb24], 0x2a
776d: e91e00           jmp    0x778e
7770: 8b1e680b         mov    bx, word ptr [0xb68]
7774: d1e3             shl    bx, 1
7776: 8b874406         mov    ax, word ptr [bx + 0x644]
777a: a3240b           mov    word ptr [0xb24], ax
777d: ff06680b         inc    word ptr [0xb68]
7781: 833e240b42       cmp    word ptr [0xb24], 0x42
7786: 0f850400         jne    0x778e
778a: ff0e680b         dec    word ptr [0xb68]
778e: 833e620b03       cmp    word ptr [0xb62], 3
7793: 0f852800         jne    0x77bf
7797: a1200b           mov    ax, word ptr [0xb20]
779a: 2b06280b         sub    ax, word ptr [0xb28]
779e: 50               push   ax
779f: ff36200b         push   word ptr [0xb20]
77a3: 9a914cce77       fcall  sub_4c91
77a8: 83c404           add    sp, 4
77ab: 3d0000           cmp    ax, 0
77ae: 0f840d00         je     0x77bf
77b2: f71eca05         neg    word ptr [0x5ca]
77b6: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
77bc: e91418           jmp    0x8fd3
77bf: ff36240b         push   word ptr [0xb24]
77c3: ff36220b         push   word ptr [0xb22]
77c7: ff36200b         push   word ptr [0xb20]
77cb: 9a07487178       fcall  sub_4807
77d0: 83c406           add    sp, 6
77d3: e9fd17           jmp    0x8fd3
77d6: a15a0b           mov    ax, word ptr [0xb5a]
77d9: ff065a0b         inc    word ptr [0xb5a]
77dd: 3d0100           cmp    ax, 1
77e0: 0f8d0300         jge    0x77e7
77e4: e9ec17           jmp    0x8fd3
77e7: c7065a0b0000     mov    word ptr [0xb5a], 0
77ed: 833e620b01       cmp    word ptr [0xb62], 1
77f2: 0f850f00         jne    0x7805
77f6: c706c00b0b00     mov    word ptr [0xbc0], 0xb
77fc: c706240b0200     mov    word ptr [0xb24], 2
7802: e9ce17           jmp    0x8fd3
7805: 833e620b02       cmp    word ptr [0xb62], 2
780a: 0f850f00         jne    0x781d
780e: c706460b0000     mov    word ptr [0xb46], 0
7814: c706c00b6500     mov    word ptr [0xbc0], 0x65    ; "Screen Mate"
781a: e9b617           jmp    0x8fd3
781d: 833e460b00       cmp    word ptr [0xb46], 0
7822: 0f850900         jne    0x782f
7826: c706240b0d00     mov    word ptr [0xb24], 0xd
782c: e93300           jmp    0x7862
782f: 833e460b01       cmp    word ptr [0xb46], 1
7834: 0f851b00         jne    0x7853
7838: 833eca0500       cmp    word ptr [0x5ca], 0
783d: 0f8e0900         jle    0x784a
7841: c706240b0c00     mov    word ptr [0xb24], 0xc
7847: e90600           jmp    0x7850
784a: c706240b0e00     mov    word ptr [0xb24], 0xe
7850: e90f00           jmp    0x7862
7853: 833e460b02       cmp    word ptr [0xb46], 2
7858: 0f850600         jne    0x7862
785c: c706240b0300     mov    word ptr [0xb24], 3
7862: ff36240b         push   word ptr [0xb24]
7866: ff36220b         push   word ptr [0xb22]
786a: ff36200b         push   word ptr [0xb20]
786e: 9a0748da78       fcall  sub_4807
7873: 83c406           add    sp, 6
7876: a1460b           mov    ax, word ptr [0xb46]
7879: ff06460b         inc    word ptr [0xb46]
787d: 3d0200           cmp    ax, 2
7880: 0f8c0600         jl     0x788a
7884: c706c00b0b00     mov    word ptr [0xbc0], 0xb
788a: e94617           jmp    0x8fd3
788d: a15a0b           mov    ax, word ptr [0xb5a]
7890: ff065a0b         inc    word ptr [0xb5a]
7894: 3d0100           cmp    ax, 1
7897: 0f8d0300         jge    0x789e
789b: e93517           jmp    0x8fd3
789e: c7065a0b0000     mov    word ptr [0xb5a], 0
78a4: 833e460b00       cmp    word ptr [0xb46], 0
78a9: 0f850f00         jne    0x78bc
78ad: c706240b1f00     mov    word ptr [0xb24], 0x1f
78b3: c7065a0bf8ff     mov    word ptr [0xb5a], 0xfff8
78b9: e90f00           jmp    0x78cb
78bc: 833e460b02       cmp    word ptr [0xb46], 2
78c1: 0f850600         jne    0x78cb
78c5: c706240b0300     mov    word ptr [0xb24], 3
78cb: ff36240b         push   word ptr [0xb24]
78cf: ff36220b         push   word ptr [0xb22]
78d3: ff36200b         push   word ptr [0xb20]
78d7: 9a0748f978       fcall  sub_4807
78dc: 83c406           add    sp, 6
78df: a1460b           mov    ax, word ptr [0xb46]
78e2: ff06460b         inc    word ptr [0xb46]
78e6: 3d0600           cmp    ax, 6
78e9: 0f8c0600         jl     0x78f3
78ed: c706c00b0b00     mov    word ptr [0xbc0], 0xb
78f3: e9dd16           jmp    0x8fd3
78f6: 9a8e421079       fcall  sub_428e
78fb: c706460b0600     mov    word ptr [0xb46], 6
7901: c706240b0300     mov    word ptr [0xb24], 3
7907: c7064a0b0000     mov    word ptr [0xb4a], 0
790d: 9ab6124872       fcall  sub_12b6
7912: b90300           mov    cx, 3
7915: 99               cdq    
7916: f7f9             idiv   cx
7918: 83fa00           cmp    dx, 0
791b: 0f850600         jne    0x7925
791f: c7064a0b0100     mov    word ptr [0xb4a], 1
7925: c706c00b6700     mov    word ptr [0xbc0], 0x67
792b: 833e4a0b00       cmp    word ptr [0xb4a], 0
7930: 0f841800         je     0x794c
7934: 833e240b32       cmp    word ptr [0xb24], 0x32
7939: 0f850600         jne    0x7943
793d: b83300           mov    ax, 0x33
7940: e90300           jmp    0x7946
7943: b83200           mov    ax, 0x32
7946: a3240b           mov    word ptr [0xb24], ax
7949: e91500           jmp    0x7961
794c: 833e240b04       cmp    word ptr [0xb24], 4
7951: 0f850600         jne    0x795b
7955: b80500           mov    ax, 5
7958: e90300           jmp    0x795e
795b: b80400           mov    ax, 4
795e: a3240b           mov    word ptr [0xb24], ax
7961: ff36240b         push   word ptr [0xb24]
7965: ff36220b         push   word ptr [0xb22]
7969: ff36200b         push   word ptr [0xb20]
796d: 9a0748027a       fcall  sub_4807
7972: 83c406           add    sp, 6
7975: a1460b           mov    ax, word ptr [0xb46]
7978: ff0e460b         dec    word ptr [0xb46]
797c: 3d0000           cmp    ax, 0
797f: 0f8f0600         jg     0x7989
7983: c706c00b6100     mov    word ptr [0xbc0], 0x61
7989: e94716           jmp    0x8fd3
798c: c706620b0000     mov    word ptr [0xb62], 0
7992: c706c00b6a00     mov    word ptr [0xbc0], 0x6a
7998: e998d3           jmp    0x4d33
799b: c706620b0100     mov    word ptr [0xb62], 1
79a1: c706c00b6a00     mov    word ptr [0xbc0], 0x6a
79a7: e989d3           jmp    0x4d33
79aa: 833e620b00       cmp    word ptr [0xb62], 0
79af: 0f858b00         jne    0x7a3e
79b3: a1200b           mov    ax, word ptr [0xb20]
79b6: 8946ec           mov    word ptr [bp - 0x14], ax
79b9: a1220b           mov    ax, word ptr [0xb22]
79bc: 052700           add    ax, 0x27
79bf: 8946ee           mov    word ptr [bp - 0x12], ax
79c2: ff76ee           push   word ptr [bp - 0x12]
79c5: ff76ec           push   word ptr [bp - 0x14]
79c8: 9ae0790000       lcall  0, 0x79e0    ; <WindowFromPoint>
79cd: 8946f0           mov    word ptr [bp - 0x10], ax
79d0: a1200b           mov    ax, word ptr [0xb20]
79d3: 052700           add    ax, 0x27
79d6: 8946ec           mov    word ptr [bp - 0x14], ax
79d9: ff76ee           push   word ptr [bp - 0x12]
79dc: ff76ec           push   word ptr [bp - 0x14]
79df: 9affff0000       lcall  0, 0xffff    ; <WindowFromPoint>
79e4: 8946f8           mov    word ptr [bp - 8], ax
79e7: a1d023           mov    ax, word ptr [0x23d0]
79ea: 3946f0           cmp    word ptr [bp - 0x10], ax
79ed: 0f851900         jne    0x7a0a
79f1: a1d023           mov    ax, word ptr [0x23d0]
79f4: 3946f8           cmp    word ptr [bp - 8], ax
79f7: 0f850f00         jne    0x7a0a
79fb: ff36d023         push   word ptr [0x23d0]
79ff: 9abf2a1e7a       fcall  sub_2abf
7a04: 83c402           add    sp, 2
7a07: e92b00           jmp    0x7a35
7a0a: a1d023           mov    ax, word ptr [0x23d0]
7a0d: 3946f0           cmp    word ptr [bp - 0x10], ax
7a10: 0f851200         jne    0x7a26
7a14: ff76f8           push   word ptr [bp - 8]
7a17: ff36d023         push   word ptr [0x23d0]
7a1b: 9a012b307a       fcall  sub_2b01
7a20: 83c404           add    sp, 4
7a23: e90f00           jmp    0x7a35
7a26: ff76f0           push   word ptr [bp - 0x10]
7a29: ff36d023         push   word ptr [0x23d0]
7a2d: 9a012b537a       fcall  sub_2b01
7a32: 83c404           add    sp, 4
7a35: c706240b5100     mov    word ptr [0xb24], 0x51
7a3b: e90600           jmp    0x7a44
7a3e: c706240b4e00     mov    word ptr [0xb24], 0x4e
7a44: ff36240b         push   word ptr [0xb24]
7a48: ff36220b         push   word ptr [0xb22]
7a4c: ff36200b         push   word ptr [0xb20]
7a50: 9a07488b7a       fcall  sub_4807
7a55: 83c406           add    sp, 6
7a58: c706c00b6b00     mov    word ptr [0xbc0], 0x6b
7a5e: c706460b0000     mov    word ptr [0xb46], 0
7a64: e96c15           jmp    0x8fd3
7a67: 8b1e460b         mov    bx, word ptr [0xb46]
7a6b: a1620b           mov    ax, word ptr [0xb62]
7a6e: c1e003           shl    ax, 3
7a71: 2bd8             sub    bx, ax
7a73: d1e3             shl    bx, 1
7a75: 8b871406         mov    ax, word ptr [bx + 0x614]
7a79: a3240b           mov    word ptr [0xb24], ax
7a7c: ff36240b         push   word ptr [0xb24]
7a80: ff36220b         push   word ptr [0xb22]
7a84: ff36200b         push   word ptr [0xb20]
7a88: 9a0748a97a       fcall  sub_4807
7a8d: 83c406           add    sp, 6
7a90: ff06460b         inc    word ptr [0xb46]
7a94: 833e460b07       cmp    word ptr [0xb46], 7
7a99: 0f8e4000         jle    0x7add
7a9d: 833e620b00       cmp    word ptr [0xb62], 0
7aa2: 0f841d00         je     0x7ac3
7aa6: 9ab612c67a       fcall  sub_12b6
7aab: a801             test   al, 1
7aad: 0f850900         jne    0x7aba
7ab1: c706c00b6f00     mov    word ptr [0xbc0], 0x6f
7ab7: e90600           jmp    0x7ac0
7aba: c706c00b6d00     mov    word ptr [0xbc0], 0x6d
7ac0: e91a00           jmp    0x7add
7ac3: 9ab6120c7b       fcall  sub_12b6
7ac8: a801             test   al, 1
7aca: 0f850900         jne    0x7ad7
7ace: c706c00b6f00     mov    word ptr [0xbc0], 0x6f
7ad4: e90600           jmp    0x7add
7ad7: c706c00b6c00     mov    word ptr [0xbc0], 0x6c
7add: e9f314           jmp    0x8fd3
7ae0: a15a0b           mov    ax, word ptr [0xb5a]
7ae3: ff065a0b         inc    word ptr [0xb5a]
7ae7: 3d0a00           cmp    ax, 0xa
7aea: 0f8d0300         jge    0x7af1
7aee: e9e214           jmp    0x8fd3
7af1: c7065a0b0000     mov    word ptr [0xb5a], 0
7af7: c706240b0300     mov    word ptr [0xb24], 3
7afd: ff36240b         push   word ptr [0xb24]
7b01: ff36220b         push   word ptr [0xb22]
7b05: ff36200b         push   word ptr [0xb20]
7b09: 9a07484a7b       fcall  sub_4807
7b0e: 83c406           add    sp, 6
7b11: c706c00b0100     mov    word ptr [0xbc0], 1
7b17: e9b914           jmp    0x8fd3
7b1a: a1ca05           mov    ax, word ptr [0x5ca]
7b1d: 8bc8             mov    cx, ax
7b1f: d1e0             shl    ax, 1
7b21: 03c1             add    ax, cx
7b23: d1e0             shl    ax, 1
7b25: 03c1             add    ax, cx
7b27: d1e0             shl    ax, 1
7b29: f7d8             neg    ax
7b2b: a3280b           mov    word ptr [0xb28], ax
7b2e: c706240b1700     mov    word ptr [0xb24], 0x17
7b34: a1280b           mov    ax, word ptr [0xb28]
7b37: 0106200b         add    word ptr [0xb20], ax
7b3b: ff36240b         push   word ptr [0xb24]
7b3f: ff36220b         push   word ptr [0xb22]
7b43: ff36200b         push   word ptr [0xb20]
7b47: 9a07487b7b       fcall  sub_4807
7b4c: 83c406           add    sp, 6
7b4f: c706c00b5f00     mov    word ptr [0xbc0], 0x5f
7b55: c706460b0000     mov    word ptr [0xb46], 0
7b5b: e97514           jmp    0x8fd3
7b5e: a1280b           mov    ax, word ptr [0xb28]
7b61: 0106200b         add    word ptr [0xb20], ax
7b65: a1ca05           mov    ax, word ptr [0x5ca]
7b68: 0106280b         add    word ptr [0xb28], ax
7b6c: ff36240b         push   word ptr [0xb24]
7b70: ff36220b         push   word ptr [0xb22]
7b74: ff36200b         push   word ptr [0xb20]
7b78: 9a0748b87b       fcall  sub_4807
7b7d: 83c406           add    sp, 6
7b80: a1460b           mov    ax, word ptr [0xb46]
7b83: ff06460b         inc    word ptr [0xb46]
7b87: 3d0300           cmp    ax, 3
7b8a: 0f8e0600         jle    0x7b94
7b8e: c706c00b5f00     mov    word ptr [0xbc0], 0x5f
7b94: e93c14           jmp    0x8fd3
7b97: 833e620b00       cmp    word ptr [0xb62], 0
7b9c: 0f841500         je     0x7bb5
7ba0: 6b06ca05e6       imul   ax, word ptr [0x5ca], -0x1a
7ba5: 0106200b         add    word ptr [0xb20], ax
7ba9: 8306220b23       add    word ptr [0xb22], 0x23
7bae: f71eca05         neg    word ptr [0x5ca]
7bb2: e92500           jmp    0x7bda
7bb5: 9ab6126c7c       fcall  sub_12b6
7bba: b90200           mov    cx, 2
7bbd: 99               cdq    
7bbe: f7f9             idiv   cx
7bc0: 89164a0b         mov    word ptr [0xb4a], dx
7bc4: 833e4a0b00       cmp    word ptr [0xb4a], 0
7bc9: 0f840800         je     0x7bd5
7bcd: 8306220b24       add    word ptr [0xb22], 0x24
7bd2: e90500           jmp    0x7bda
7bd5: 8306220b14       add    word ptr [0xb22], 0x14
7bda: c706460b0000     mov    word ptr [0xb46], 0
7be0: c706c00b7000     mov    word ptr [0xbc0], 0x70
7be6: 833e460b00       cmp    word ptr [0xb46], 0
7beb: 0f851a00         jne    0x7c09
7bef: a15a0b           mov    ax, word ptr [0xb5a]
7bf2: ff065a0b         inc    word ptr [0xb5a]
7bf6: 3d0a00           cmp    ax, 0xa
7bf9: 0f8d0300         jge    0x7c00
7bfd: e9d313           jmp    0x8fd3
7c00: c7065a0b0000     mov    word ptr [0xb5a], 0
7c06: e91700           jmp    0x7c20
7c09: a15a0b           mov    ax, word ptr [0xb5a]
7c0c: ff065a0b         inc    word ptr [0xb5a]
7c10: 3d0100           cmp    ax, 1
7c13: 0f8d0300         jge    0x7c1a
7c17: e9b913           jmp    0x8fd3
7c1a: c7065a0b0000     mov    word ptr [0xb5a], 0
7c20: 833e620b00       cmp    word ptr [0xb62], 0
7c25: 0f841800         je     0x7c41
7c29: 833e240b28       cmp    word ptr [0xb24], 0x28
7c2e: 0f850600         jne    0x7c38
7c32: b82900           mov    ax, 0x29
7c35: e90300           jmp    0x7c3b
7c38: b82800           mov    ax, 0x28
7c3b: a3240b           mov    word ptr [0xb24], ax
7c3e: e91c00           jmp    0x7c5d
7c41: a1460b           mov    ax, word ptr [0xb46]
7c44: b90400           mov    cx, 4
7c47: 99               cdq    
7c48: f7f9             idiv   cx
7c4a: 8bda             mov    bx, dx
7c4c: a14a0b           mov    ax, word ptr [0xb4a]
7c4f: c1e002           shl    ax, 2
7c52: 03d8             add    bx, ax
7c54: d1e3             shl    bx, 1
7c56: 8b873406         mov    ax, word ptr [bx + 0x634]
7c5a: a3240b           mov    word ptr [0xb24], ax
7c5d: ff36240b         push   word ptr [0xb24]
7c61: ff36220b         push   word ptr [0xb22]
7c65: ff36200b         push   word ptr [0xb20]
7c69: 9a0748b47c       fcall  sub_4807
7c6e: 83c406           add    sp, 6
7c71: ff06460b         inc    word ptr [0xb46]
7c75: 833e460b0c       cmp    word ptr [0xb46], 0xc
7c7a: 0f8e1800         jle    0x7c96
7c7e: 833e620b00       cmp    word ptr [0xb62], 0
7c83: 0f840900         je     0x7c90
7c87: c706c00b6200     mov    word ptr [0xbc0], 0x62
7c8d: e90600           jmp    0x7c96
7c90: c706c00b6000     mov    word ptr [0xbc0], 0x60
7c96: e93a13           jmp    0x8fd3
7c99: c706962d0100     mov    word ptr [0x2d96], 1
7c9f: c706240b0600     mov    word ptr [0xb24], 6
7ca5: ff36240b         push   word ptr [0xb24]
7ca9: ff36220b         push   word ptr [0xb22]
7cad: ff36200b         push   word ptr [0xb20]
7cb1: 9a0748ec7c       fcall  sub_4807
7cb6: 83c406           add    sp, 6
7cb9: c706c00b7200     mov    word ptr [0xbc0], 0x72
7cbf: e91113           jmp    0x8fd3
7cc2: a15a0b           mov    ax, word ptr [0xb5a]
7cc5: ff065a0b         inc    word ptr [0xb5a]
7cc9: 3d0100           cmp    ax, 1
7ccc: 0f8d0300         jge    0x7cd3
7cd0: e90013           jmp    0x8fd3
7cd3: c7065a0b0000     mov    word ptr [0xb5a], 0
7cd9: ff06240b         inc    word ptr [0xb24]
7cdd: ff36240b         push   word ptr [0xb24]
7ce1: ff36220b         push   word ptr [0xb22]
7ce5: ff36200b         push   word ptr [0xb20]
7ce9: 9a07480b7d       fcall  sub_4807
7cee: 83c406           add    sp, 6
7cf1: 833e240b08       cmp    word ptr [0xb24], 8
7cf6: 0f850c00         jne    0x7d06
7cfa: c706240b0000     mov    word ptr [0xb24], 0
7d00: c706c00b7300     mov    word ptr [0xbc0], 0x73
7d06: 6a00             push   0
7d08: 9a6f49e275       fcall  sub_496f
7d0d: 83c402           add    sp, 2
7d10: e9c012           jmp    0x8fd3
7d13: 6a00             push   0
7d15: 9a6f494f7d       fcall  sub_496f
7d1a: 83c402           add    sp, 2
7d1d: a15a0b           mov    ax, word ptr [0xb5a]
7d20: ff065a0b         inc    word ptr [0xb5a]
7d24: 3d0400           cmp    ax, 4
7d27: 0f8d0300         jge    0x7d2e
7d2b: e9a512           jmp    0x8fd3
7d2e: c7065a0b0000     mov    word ptr [0xb5a], 0
7d34: 833e240b01       cmp    word ptr [0xb24], 1
7d39: 1bc0             sbb    ax, ax
7d3b: f7d8             neg    ax
7d3d: a3240b           mov    word ptr [0xb24], ax
7d40: ff36240b         push   word ptr [0xb24]
7d44: ff36220b         push   word ptr [0xb22]
7d48: ff36200b         push   word ptr [0xb20]
7d4c: 9a0748917d       fcall  sub_4807
7d51: 83c406           add    sp, 6
7d54: e97c12           jmp    0x8fd3
7d57: a1702d           mov    ax, word ptr [0x2d70]
7d5a: a3200b           mov    word ptr [0xb20], ax
7d5d: a1722d           mov    ax, word ptr [0x2d72]
7d60: 8bc8             mov    cx, ax
7d62: d1e0             shl    ax, 1
7d64: 03c1             add    ax, cx
7d66: d1e0             shl    ax, 1
7d68: 03c1             add    ax, cx
7d6a: 99               cdq    
7d6b: 83e207           and    dx, 7
7d6e: 03c2             add    ax, dx
7d70: c1f803           sar    ax, 3
7d73: a3220b           mov    word ptr [0xb22], ax
7d76: c706240b0400     mov    word ptr [0xb24], 4
7d7c: c706ca050100     mov    word ptr [0x5ca], 1
7d82: ff36240b         push   word ptr [0xb24]
7d86: ff36220b         push   word ptr [0xb22]
7d8a: ff36200b         push   word ptr [0xb20]
7d8e: 9a0748e47d       fcall  sub_4807
7d93: 83c406           add    sp, 6
7d96: c706c00b7500     mov    word ptr [0xbc0], 0x75
7d9c: e93412           jmp    0x8fd3
7d9f: a15a0b           mov    ax, word ptr [0xb5a]
7da2: ff065a0b         inc    word ptr [0xb5a]
7da6: 3d0100           cmp    ax, 1
7da9: 0f8d0300         jge    0x7db0
7dad: e92312           jmp    0x8fd3
7db0: c7065a0b0000     mov    word ptr [0xb5a], 0
7db6: a1ca05           mov    ax, word ptr [0x5ca]
7db9: c1e004           shl    ax, 4
7dbc: 2906200b         sub    word ptr [0xb20], ax
7dc0: 833e240b04       cmp    word ptr [0xb24], 4
7dc5: 0f850600         jne    0x7dcf
7dc9: b80500           mov    ax, 5
7dcc: e90300           jmp    0x7dd2
7dcf: b80400           mov    ax, 4
7dd2: a3240b           mov    word ptr [0xb24], ax
7dd5: ff36240b         push   word ptr [0xb24]
7dd9: ff36220b         push   word ptr [0xb22]
7ddd: ff36200b         push   word ptr [0xb20]
7de1: 9a0748087e       fcall  sub_4807
7de6: 83c406           add    sp, 6
7de9: a1702d           mov    ax, word ptr [0x2d70]
7dec: 99               cdq    
7ded: 2bc2             sub    ax, dx
7def: d1f8             sar    ax, 1
7df1: 2d1400           sub    ax, 0x14
7df4: 3b06200b         cmp    ax, word ptr [0xb20]
7df8: 0f8c0600         jl     0x7e02
7dfc: c706c00b7600     mov    word ptr [0xbc0], 0x76
7e02: e9ce11           jmp    0x8fd3
7e05: 9a212a447e       fcall  sub_2a21
7e0a: c706cc05ffff     mov    word ptr [0x5cc], 0xffff
7e10: c7062e0bd8ff     mov    word ptr [0xb2e], 0xffd8
7e16: a1722d           mov    ax, word ptr [0x2d72]
7e19: 99               cdq    
7e1a: 83e207           and    dx, 7
7e1d: 03c2             add    ax, dx
7e1f: c1f803           sar    ax, 3
7e22: a3300b           mov    word ptr [0xb30], ax
7e25: c706320b9a00     mov    word ptr [0xb32], 0x9a
7e2b: c706460b0000     mov    word ptr [0xb46], 0
7e31: c706c00b7700     mov    word ptr [0xbc0], 0x77
7e37: c706ce230000     mov    word ptr [0x23ce], 0
7e3d: ff36d023         push   word ptr [0x23d0]
7e41: 9abf2a507e       fcall  sub_2abf
7e46: 83c402           add    sp, 2
7e49: ff36902d         push   word ptr [0x2d90]
7e4d: 9abf2a7d7e       fcall  sub_2abf
7e52: 83c402           add    sp, 2
7e55: e97b11           jmp    0x8fd3
7e58: 833e460b00       cmp    word ptr [0xb46], 0
7e5d: 0f843700         je     0x7e98
7e61: 8b1e460b         mov    bx, word ptr [0xb46]
7e65: d1e3             shl    bx, 1
7e67: 8b87f405         mov    ax, word ptr [bx + 0x5f4]
7e6b: a3240b           mov    word ptr [0xb24], ax
7e6e: ff36240b         push   word ptr [0xb24]
7e72: ff36220b         push   word ptr [0xb22]
7e76: ff36200b         push   word ptr [0xb20]
7e7a: 9a0748ad7e       fcall  sub_4807
7e7f: 83c406           add    sp, 6
7e82: ff06460b         inc    word ptr [0xb46]
7e86: 833e460b07       cmp    word ptr [0xb46], 7
7e8b: 0f8e0600         jle    0x7e95
7e8f: c706460b0000     mov    word ptr [0xb46], 0
7e95: e93200           jmp    0x7eca
7e98: c706240b4900     mov    word ptr [0xb24], 0x49
7e9e: ff36240b         push   word ptr [0xb24]
7ea2: ff36220b         push   word ptr [0xb22]
7ea6: ff36200b         push   word ptr [0xb20]
7eaa: 9a0748b57e       fcall  sub_4807
7eaf: 83c406           add    sp, 6
7eb2: 9ab612107f       fcall  sub_12b6
7eb7: b91400           mov    cx, 0x14
7eba: 99               cdq    
7ebb: f7f9             idiv   cx
7ebd: 83fa00           cmp    dx, 0
7ec0: 0f850600         jne    0x7eca
7ec4: c706460b0100     mov    word ptr [0xb46], 1
7eca: a15a0b           mov    ax, word ptr [0xb5a]
7ecd: ff065a0b         inc    word ptr [0xb5a]
7ed1: 3d0100           cmp    ax, 1
7ed4: 0f8d0300         jge    0x7edb
7ed8: e9f810           jmp    0x8fd3
7edb: c7065a0b0000     mov    word ptr [0xb5a], 0
7ee1: a1cc05           mov    ax, word ptr [0x5cc]
7ee4: c1e004           shl    ax, 4
7ee7: 29062e0b         sub    word ptr [0xb2e], ax
7eeb: 813e320b9a00     cmp    word ptr [0xb32], 0x9a
7ef1: 0f850600         jne    0x7efb
7ef5: b89b00           mov    ax, 0x9b
7ef8: e90300           jmp    0x7efe
7efb: b89a00           mov    ax, 0x9a
7efe: a3320b           mov    word ptr [0xb32], ax
7f01: ff36320b         push   word ptr [0xb32]
7f05: ff36300b         push   word ptr [0xb30]
7f09: ff362e0b         push   word ptr [0xb2e]
7f0d: 9a8c48357f       fcall  sub_488c
7f12: 83c406           add    sp, 6
7f15: a1200b           mov    ax, word ptr [0xb20]
7f18: 39062e0b         cmp    word ptr [0xb2e], ax
7f1c: 0f8e1a00         jle    0x7f3a
7f20: c706ca05ffff     mov    word ptr [0x5ca], 0xffff
7f26: ff36240b         push   word ptr [0xb24]
7f2a: ff36220b         push   word ptr [0xb22]
7f2e: ff36200b         push   word ptr [0xb20]
7f32: 9a0748487f       fcall  sub_4807
7f37: 83c406           add    sp, 6
7f3a: a1702d           mov    ax, word ptr [0x2d70]
7f3d: 39062e0b         cmp    word ptr [0xb2e], ax
7f41: 0f8e0b00         jle    0x7f50
7f45: 9a962a987f       fcall  sub_2a96
7f4a: c706c00b7800     mov    word ptr [0xbc0], 0x78
7f50: e98010           jmp    0x8fd3
7f53: a15a0b           mov    ax, word ptr [0xb5a]
7f56: ff065a0b         inc    word ptr [0xb5a]
7f5a: 3d0100           cmp    ax, 1
7f5d: 0f8d0300         jge    0x7f64
7f61: e96f10           jmp    0x8fd3
7f64: c7065a0b0000     mov    word ptr [0xb5a], 0
7f6a: a1ca05           mov    ax, word ptr [0x5ca]
7f6d: c1e004           shl    ax, 4
7f70: 2906200b         sub    word ptr [0xb20], ax
7f74: 833e240b04       cmp    word ptr [0xb24], 4
7f79: 0f850600         jne    0x7f83
7f7d: b80500           mov    ax, 5
7f80: e90300           jmp    0x7f86
7f83: b80400           mov    ax, 4
7f86: a3240b           mov    word ptr [0xb24], ax
7f89: ff36240b         push   word ptr [0xb24]
7f8d: ff36220b         push   word ptr [0xb22]
7f91: ff36200b         push   word ptr [0xb20]
7f95: 9a0748df7f       fcall  sub_4807
7f9a: 83c406           add    sp, 6
7f9d: a1702d           mov    ax, word ptr [0x2d70]
7fa0: 3906200b         cmp    word ptr [0xb20], ax
7fa4: 0f8e0600         jle    0x7fae
7fa8: c706c00b0100     mov    word ptr [0xbc0], 1
7fae: e92210           jmp    0x8fd3
7fb1: a1702d           mov    ax, word ptr [0x2d70]
7fb4: a3200b           mov    word ptr [0xb20], ax
7fb7: a1722d           mov    ax, word ptr [0x2d72]
7fba: 8bc8             mov    cx, ax
7fbc: d1e0             shl    ax, 1
7fbe: 03c1             add    ax, cx
7fc0: d1e0             shl    ax, 1
7fc2: 03c1             add    ax, cx
7fc4: 99               cdq    
7fc5: 83e207           and    dx, 7
7fc8: 03c2             add    ax, dx
7fca: c1f803           sar    ax, 3
7fcd: a3220b           mov    word ptr [0xb22], ax
7fd0: c706240b0400     mov    word ptr [0xb24], 4
7fd6: c706ca050100     mov    word ptr [0x5ca], 1
7fdc: 9a212a1b80       fcall  sub_2a21
7fe1: c706cc05ffff     mov    word ptr [0x5cc], 0xffff
7fe7: c7062e0bd8ff     mov    word ptr [0xb2e], 0xffd8
7fed: a1722d           mov    ax, word ptr [0x2d72]
7ff0: 8bc8             mov    cx, ax
7ff2: d1e0             shl    ax, 1
7ff4: 03c1             add    ax, cx
7ff6: d1e0             shl    ax, 1
7ff8: 03c1             add    ax, cx
7ffa: 99               cdq    
7ffb: 83e207           and    dx, 7
7ffe: 03c2             add    ax, dx
8000: c1f803           sar    ax, 3
8003: a3300b           mov    word ptr [0xb30], ax
8006: c706320b9a00     mov    word ptr [0xb32], 0x9a
800c: ff36240b         push   word ptr [0xb24]
8010: ff36220b         push   word ptr [0xb22]
8014: ff36200b         push   word ptr [0xb20]
8018: 9a07482f80       fcall  sub_4807
801d: 83c406           add    sp, 6
8020: ff36320b         push   word ptr [0xb32]
8024: ff36300b         push   word ptr [0xb30]
8028: ff362e0b         push   word ptr [0xb2e]
802c: 9a8c484780       fcall  sub_488c
8031: 83c406           add    sp, 6
8034: c706c00b7a00     mov    word ptr [0xbc0], 0x7a
803a: c706ce230000     mov    word ptr [0x23ce], 0
8040: ff36d023         push   word ptr [0x23d0]
8044: 9abf2a5380       fcall  sub_2abf
8049: 83c402           add    sp, 2
804c: ff36902d         push   word ptr [0x2d90]
8050: 9abf2a7079       fcall  sub_2abf
8055: 83c402           add    sp, 2
8058: e9780f           jmp    0x8fd3
805b: a15a0b           mov    ax, word ptr [0xb5a]
805e: ff065a0b         inc    word ptr [0xb5a]
8062: 3d0100           cmp    ax, 1
8065: 0f8d0300         jge    0x806c
8069: e9670f           jmp    0x8fd3
806c: c7065a0b0000     mov    word ptr [0xb5a], 0
8072: a1ca05           mov    ax, word ptr [0x5ca]
8075: c1e004           shl    ax, 4
8078: 2906200b         sub    word ptr [0xb20], ax
807c: 833e240b04       cmp    word ptr [0xb24], 4
8081: 0f850600         jne    0x808b
8085: b80500           mov    ax, 5
8088: e90300           jmp    0x808e
808b: b80400           mov    ax, 4
808e: a3240b           mov    word ptr [0xb24], ax
8091: a1cc05           mov    ax, word ptr [0x5cc]
8094: c1e004           shl    ax, 4
8097: 29062e0b         sub    word ptr [0xb2e], ax
809b: 813e320b9a00     cmp    word ptr [0xb32], 0x9a
80a1: 0f850600         jne    0x80ab
80a5: b89b00           mov    ax, 0x9b
80a8: e90300           jmp    0x80ae
80ab: b89a00           mov    ax, 0x9a
80ae: a3320b           mov    word ptr [0xb32], ax
80b1: a1200b           mov    ax, word ptr [0xb20]
80b4: 2b062e0b         sub    ax, word ptr [0xb2e]
80b8: 3d2e00           cmp    ax, 0x2e
80bb: 0f8f5f00         jg     0x811e
80bf: a1702d           mov    ax, word ptr [0x2d70]
80c2: 99               cdq    
80c3: 2bc2             sub    ax, dx
80c5: d1f8             sar    ax, 1
80c7: 050300           add    ax, 3
80ca: a3200b           mov    word ptr [0xb20], ax
80cd: a1702d           mov    ax, word ptr [0x2d70]
80d0: 99               cdq    
80d1: 2bc2             sub    ax, dx
80d3: d1f8             sar    ax, 1
80d5: 2d2b00           sub    ax, 0x2b
80d8: a32e0b           mov    word ptr [0xb2e], ax
80db: c706240b0300     mov    word ptr [0xb24], 3
80e1: c706320b9d00     mov    word ptr [0xb32], 0x9d
80e7: ff36240b         push   word ptr [0xb24]
80eb: ff36220b         push   word ptr [0xb22]
80ef: ff36200b         push   word ptr [0xb20]
80f3: 9a07480a81       fcall  sub_4807
80f8: 83c406           add    sp, 6
80fb: ff36320b         push   word ptr [0xb32]
80ff: ff36300b         push   word ptr [0xb30]
8103: ff362e0b         push   word ptr [0xb2e]
8107: 9a8c482d81       fcall  sub_488c
810c: 83c406           add    sp, 6
810f: c706460b0000     mov    word ptr [0xb46], 0
8115: c706c00b7b00     mov    word ptr [0xbc0], 0x7b
811b: e92800           jmp    0x8146
811e: ff36240b         push   word ptr [0xb24]
8122: ff36220b         push   word ptr [0xb22]
8126: ff36200b         push   word ptr [0xb20]
812a: 9a07484181       fcall  sub_4807
812f: 83c406           add    sp, 6
8132: ff36320b         push   word ptr [0xb32]
8136: ff36300b         push   word ptr [0xb30]
813a: ff362e0b         push   word ptr [0xb2e]
813e: 9a8c487c81       fcall  sub_488c
8143: 83c406           add    sp, 6
8146: e98a0e           jmp    0x8fd3
8149: a15a0b           mov    ax, word ptr [0xb5a]
814c: ff065a0b         inc    word ptr [0xb5a]
8150: 3d0300           cmp    ax, 3
8153: 0f8d0300         jge    0x815a
8157: e9790e           jmp    0x8fd3
815a: c7065a0b0000     mov    word ptr [0xb5a], 0
8160: a1460b           mov    ax, word ptr [0xb46]
8163: 057f00           add    ax, 0x7f
8166: a3240b           mov    word ptr [0xb24], ax
8169: ff06460b         inc    word ptr [0xb46]
816d: ff36240b         push   word ptr [0xb24]
8171: ff36220b         push   word ptr [0xb22]
8175: ff36200b         push   word ptr [0xb20]
8179: 9a0748ba81       fcall  sub_4807
817e: 83c406           add    sp, 6
8181: 833e460b04       cmp    word ptr [0xb46], 4
8186: 0f8c0600         jl     0x8190
818a: c706c00b7c00     mov    word ptr [0xbc0], 0x7c
8190: e9400e           jmp    0x8fd3
8193: a15a0b           mov    ax, word ptr [0xb5a]
8196: ff065a0b         inc    word ptr [0xb5a]
819a: 3d0400           cmp    ax, 4
819d: 0f8d0300         jge    0x81a4
81a1: e92f0e           jmp    0x8fd3
81a4: c7065a0b0000     mov    word ptr [0xb5a], 0
81aa: ff06662d         inc    word ptr [0x2d66]
81ae: 833e662d08       cmp    word ptr [0x2d66], 8
81b3: 0f8e1100         jle    0x81c8
81b7: 9a962afd81       fcall  sub_2a96
81bc: c706460b0000     mov    word ptr [0xb46], 0
81c2: c706c00b7d00     mov    word ptr [0xbc0], 0x7d
81c8: e9080e           jmp    0x8fd3
81cb: 8b1e460b         mov    bx, word ptr [0xb46]
81cf: d1e3             shl    bx, 1
81d1: 8b877c07         mov    ax, word ptr [bx + 0x77c]
81d5: a3240b           mov    word ptr [0xb24], ax
81d8: ff06460b         inc    word ptr [0xb46]
81dc: 833e240b00       cmp    word ptr [0xb24], 0
81e1: 0f850900         jne    0x81ee
81e5: c706c00b0100     mov    word ptr [0xbc0], 1
81eb: e9e50d           jmp    0x8fd3
81ee: ff36240b         push   word ptr [0xb24]
81f2: ff36220b         push   word ptr [0xb22]
81f6: ff36200b         push   word ptr [0xb20]
81fa: 9a07483382       fcall  sub_4807
81ff: 83c406           add    sp, 6
8202: e9ce0d           jmp    0x8fd3
8205: a1702d           mov    ax, word ptr [0x2d70]
8208: a3200b           mov    word ptr [0xb20], ax
820b: a1722d           mov    ax, word ptr [0x2d72]
820e: 8bc8             mov    cx, ax
8210: d1e0             shl    ax, 1
8212: 03c1             add    ax, cx
8214: d1e0             shl    ax, 1
8216: 03c1             add    ax, cx
8218: 99               cdq    
8219: 83e207           and    dx, 7
821c: 03c2             add    ax, dx
821e: c1f803           sar    ax, 3
8221: a3220b           mov    word ptr [0xb22], ax
8224: c706240b0400     mov    word ptr [0xb24], 4
822a: c706ca050100     mov    word ptr [0x5ca], 1
8230: 9a212a7282       fcall  sub_2a21
8235: c706cc050100     mov    word ptr [0x5cc], 1
823b: a1702d           mov    ax, word ptr [0x2d70]
823e: 052e00           add    ax, 0x2e
8241: a32e0b           mov    word ptr [0xb2e], ax
8244: a1722d           mov    ax, word ptr [0x2d72]
8247: 8bc8             mov    cx, ax
8249: d1e0             shl    ax, 1
824b: 03c1             add    ax, cx
824d: d1e0             shl    ax, 1
824f: 03c1             add    ax, cx
8251: 99               cdq    
8252: 83e207           and    dx, 7
8255: 03c2             add    ax, dx
8257: c1f803           sar    ax, 3
825a: a3300b           mov    word ptr [0xb30], ax
825d: c706320b9a00     mov    word ptr [0xb32], 0x9a
8263: ff36240b         push   word ptr [0xb24]
8267: ff36220b         push   word ptr [0xb22]
826b: ff36200b         push   word ptr [0xb20]
826f: 9a07488682       fcall  sub_4807
8274: 83c406           add    sp, 6
8277: ff36320b         push   word ptr [0xb32]
827b: ff36300b         push   word ptr [0xb30]
827f: ff362e0b         push   word ptr [0xb2e]
8283: 9a8c489e82       fcall  sub_488c
8288: 83c406           add    sp, 6
828b: c706c00b7f00     mov    word ptr [0xbc0], 0x7f
8291: c706ce230000     mov    word ptr [0x23ce], 0
8297: ff36d023         push   word ptr [0x23d0]
829b: 9abf2aaa82       fcall  sub_2abf
82a0: 83c402           add    sp, 2
82a3: ff36902d         push   word ptr [0x2d90]
82a7: 9abf2a1483       fcall  sub_2abf
82ac: 83c402           add    sp, 2
82af: e9210d           jmp    0x8fd3
82b2: a15a0b           mov    ax, word ptr [0xb5a]
82b5: ff065a0b         inc    word ptr [0xb5a]
82b9: 3d0100           cmp    ax, 1
82bc: 0f8d0300         jge    0x82c3
82c0: e9100d           jmp    0x8fd3
82c3: c7065a0b0000     mov    word ptr [0xb5a], 0
82c9: a1ca05           mov    ax, word ptr [0x5ca]
82cc: c1e004           shl    ax, 4
82cf: 2906200b         sub    word ptr [0xb20], ax
82d3: 833e240b04       cmp    word ptr [0xb24], 4
82d8: 0f850600         jne    0x82e2
82dc: b80500           mov    ax, 5
82df: e90300           jmp    0x82e5
82e2: b80400           mov    ax, 4
82e5: a3240b           mov    word ptr [0xb24], ax
82e8: a1cc05           mov    ax, word ptr [0x5cc]
82eb: c1e004           shl    ax, 4
82ee: 29062e0b         sub    word ptr [0xb2e], ax
82f2: 813e320b9a00     cmp    word ptr [0xb32], 0x9a
82f8: 0f850600         jne    0x8302
82fc: b89b00           mov    ax, 0x9b
82ff: e90300           jmp    0x8305
8302: b89a00           mov    ax, 0x9a
8305: a3320b           mov    word ptr [0xb32], ax
8308: 833e2e0bd8       cmp    word ptr [0xb2e], -0x28
830d: 0f8d0e00         jge    0x831f
8311: 9a962a2e83       fcall  sub_2a96
8316: c706c00b0100     mov    word ptr [0xbc0], 1
831c: e92800           jmp    0x8347
831f: ff36240b         push   word ptr [0xb24]
8323: ff36220b         push   word ptr [0xb22]
8327: ff36200b         push   word ptr [0xb20]
832b: 9a07484283       fcall  sub_4807
8330: 83c406           add    sp, 6
8333: ff36320b         push   word ptr [0xb32]
8337: ff36300b         push   word ptr [0xb30]
833b: ff362e0b         push   word ptr [0xb2e]
833f: 9a8c488483       fcall  sub_488c
8344: 83c406           add    sp, 6
8347: e9890c           jmp    0x8fd3
834a: a1702d           mov    ax, word ptr [0x2d70]
834d: a3200b           mov    word ptr [0xb20], ax
8350: a1722d           mov    ax, word ptr [0x2d72]
8353: 8bc8             mov    cx, ax
8355: d1e0             shl    ax, 1
8357: 03c1             add    ax, cx
8359: d1e0             shl    ax, 1
835b: 03c1             add    ax, cx
835d: 99               cdq    
835e: 83e207           and    dx, 7
8361: 03c2             add    ax, dx
8363: c1f803           sar    ax, 3
8366: a3220b           mov    word ptr [0xb22], ax
8369: c706240b0400     mov    word ptr [0xb24], 4
836f: c706ca050100     mov    word ptr [0x5ca], 1
8375: ff36240b         push   word ptr [0xb24]
8379: ff36220b         push   word ptr [0xb22]
837d: ff36200b         push   word ptr [0xb20]
8381: 9a0748d783       fcall  sub_4807
8386: 83c406           add    sp, 6
8389: c706c00b8100     mov    word ptr [0xbc0], 0x81
838f: e9410c           jmp    0x8fd3
8392: a15a0b           mov    ax, word ptr [0xb5a]
8395: ff065a0b         inc    word ptr [0xb5a]
8399: 3d0100           cmp    ax, 1
839c: 0f8d0300         jge    0x83a3
83a0: e9300c           jmp    0x8fd3
83a3: c7065a0b0000     mov    word ptr [0xb5a], 0
83a9: a1ca05           mov    ax, word ptr [0x5ca]
83ac: c1e004           shl    ax, 4
83af: 2906200b         sub    word ptr [0xb20], ax
83b3: 833e240b04       cmp    word ptr [0xb24], 4
83b8: 0f850600         jne    0x83c2
83bc: b80500           mov    ax, 5
83bf: e90300           jmp    0x83c5
83c2: b80400           mov    ax, 4
83c5: a3240b           mov    word ptr [0xb24], ax
83c8: ff36240b         push   word ptr [0xb24]
83cc: ff36220b         push   word ptr [0xb22]
83d0: ff36200b         push   word ptr [0xb20]
83d4: 9a0748fb83       fcall  sub_4807
83d9: 83c406           add    sp, 6
83dc: a1702d           mov    ax, word ptr [0x2d70]
83df: 99               cdq    
83e0: 2bc2             sub    ax, dx
83e2: d1f8             sar    ax, 1
83e4: 2d1400           sub    ax, 0x14
83e7: 3b06200b         cmp    ax, word ptr [0xb20]
83eb: 0f8c0600         jl     0x83f5
83ef: c706c00b8200     mov    word ptr [0xbc0], 0x82
83f5: e9db0b           jmp    0x8fd3
83f8: 9a212a3784       fcall  sub_2a21
83fd: c706cc05ffff     mov    word ptr [0x5cc], 0xffff
8403: c7062e0bd8ff     mov    word ptr [0xb2e], 0xffd8
8409: a1722d           mov    ax, word ptr [0x2d72]
840c: 99               cdq    
840d: 83e207           and    dx, 7
8410: 03c2             add    ax, dx
8412: c1f803           sar    ax, 3
8415: a3300b           mov    word ptr [0xb30], ax
8418: c706320b9e00     mov    word ptr [0xb32], 0x9e
841e: c706460b0000     mov    word ptr [0xb46], 0
8424: c706c00b8300     mov    word ptr [0xbc0], 0x83
842a: c706ce230000     mov    word ptr [0x23ce], 0
8430: ff36d023         push   word ptr [0x23d0]
8434: 9abf2a4384       fcall  sub_2abf
8439: 83c402           add    sp, 2
843c: ff36902d         push   word ptr [0x2d90]
8440: 9abf2a187d       fcall  sub_2abf
8445: 83c402           add    sp, 2
8448: e9880b           jmp    0x8fd3
844b: 833e460b00       cmp    word ptr [0xb46], 0
8450: 0f843700         je     0x848b
8454: 8b1e460b         mov    bx, word ptr [0xb46]
8458: d1e3             shl    bx, 1
845a: 8b87f405         mov    ax, word ptr [bx + 0x5f4]
845e: a3240b           mov    word ptr [0xb24], ax
8461: ff36240b         push   word ptr [0xb24]
8465: ff36220b         push   word ptr [0xb22]
8469: ff36200b         push   word ptr [0xb20]
846d: 9a0748a084       fcall  sub_4807
8472: 83c406           add    sp, 6
8475: ff06460b         inc    word ptr [0xb46]
8479: 833e460b07       cmp    word ptr [0xb46], 7
847e: 0f8e0600         jle    0x8488
8482: c706460b0000     mov    word ptr [0xb46], 0
8488: e93200           jmp    0x84bd
848b: c706240b4900     mov    word ptr [0xb24], 0x49
8491: ff36240b         push   word ptr [0xb24]
8495: ff36220b         push   word ptr [0xb22]
8499: ff36200b         push   word ptr [0xb20]
849d: 9a0748a884       fcall  sub_4807
84a2: 83c406           add    sp, 6
84a5: 9ab6120a85       fcall  sub_12b6
84aa: b91400           mov    cx, 0x14
84ad: 99               cdq    
84ae: f7f9             idiv   cx
84b0: 83fa00           cmp    dx, 0
84b3: 0f850600         jne    0x84bd
84b7: c706460b0100     mov    word ptr [0xb46], 1
84bd: a1cc05           mov    ax, word ptr [0x5cc]
84c0: c1e004           shl    ax, 4
84c3: 29062e0b         sub    word ptr [0xb2e], ax
84c7: 813e320ba100     cmp    word ptr [0xb32], 0xa1
84cd: 0f850900         jne    0x84da
84d1: c706320b9e00     mov    word ptr [0xb32], 0x9e
84d7: e90400           jmp    0x84de
84da: ff06320b         inc    word ptr [0xb32]
84de: a1200b           mov    ax, word ptr [0xb20]
84e1: 39062e0b         cmp    word ptr [0xb2e], ax
84e5: 0f8e1200         jle    0x84fb
84e9: a1200b           mov    ax, word ptr [0xb20]
84ec: a32e0b           mov    word ptr [0xb2e], ax
84ef: c706320ba200     mov    word ptr [0xb32], 0xa2
84f5: c706c00b8400     mov    word ptr [0xbc0], 0x84
84fb: ff36320b         push   word ptr [0xb32]
84ff: ff36300b         push   word ptr [0xb30]
8503: ff362e0b         push   word ptr [0xb2e]
8507: 9a8c482785       fcall  sub_488c
850c: 83c406           add    sp, 6
850f: e9c10a           jmp    0x8fd3
8512: c706240b4900     mov    word ptr [0xb24], 0x49
8518: ff36240b         push   word ptr [0xb24]
851c: ff36220b         push   word ptr [0xb22]
8520: ff36200b         push   word ptr [0xb20]
8524: 9a07486a85       fcall  sub_4807
8529: 83c406           add    sp, 6
852c: 83067c2d28       add    word ptr [0x2d7c], 0x28
8531: a1220b           mov    ax, word ptr [0xb22]
8534: 2b06300b         sub    ax, word ptr [0xb30]
8538: 2d2800           sub    ax, 0x28
853b: 3b067c2d         cmp    ax, word ptr [0x2d7c]
853f: 0f8f1800         jg     0x855b
8543: a1220b           mov    ax, word ptr [0xb22]
8546: 2b06300b         sub    ax, word ptr [0xb30]
854a: 2d2800           sub    ax, 0x28
854d: a37c2d           mov    word ptr [0x2d7c], ax
8550: 832e7c2d14       sub    word ptr [0x2d7c], 0x14
8555: c706c00b8500     mov    word ptr [0xbc0], 0x85
855b: ff36320b         push   word ptr [0xb32]
855f: ff36300b         push   word ptr [0xb30]
8563: ff362e0b         push   word ptr [0xb2e]
8567: 9a8c48e785       fcall  sub_488c
856c: 83c406           add    sp, 6
856f: a15a0b           mov    ax, word ptr [0xb5a]
8572: ff065a0b         inc    word ptr [0xb5a]
8576: 3d0100           cmp    ax, 1
8579: 0f8d0300         jge    0x8580
857d: e9530a           jmp    0x8fd3
8580: c7065a0b0000     mov    word ptr [0xb5a], 0
8586: 813e320ba500     cmp    word ptr [0xb32], 0xa5
858c: 0f850900         jne    0x8599
8590: c706320ba200     mov    word ptr [0xb32], 0xa2
8596: e90400           jmp    0x859d
8599: ff06320b         inc    word ptr [0xb32]
859d: e9330a           jmp    0x8fd3
85a0: 832e7c2d14       sub    word ptr [0x2d7c], 0x14
85a5: 833e7c2d00       cmp    word ptr [0x2d7c], 0
85aa: 0f8f5b00         jg     0x8609
85ae: c7067c2d0000     mov    word ptr [0x2d7c], 0
85b4: a1300b           mov    ax, word ptr [0xb30]
85b7: 052800           add    ax, 0x28
85ba: a3220b           mov    word ptr [0xb22], ax
85bd: c706c00b8600     mov    word ptr [0xbc0], 0x86
85c3: 833e240b04       cmp    word ptr [0xb24], 4
85c8: 0f850600         jne    0x85d2
85cc: b80500           mov    ax, 5
85cf: e90300           jmp    0x85d5
85d2: b80400           mov    ax, 4
85d5: a3240b           mov    word ptr [0xb24], ax
85d8: ff36240b         push   word ptr [0xb24]
85dc: ff36220b         push   word ptr [0xb22]
85e0: ff36200b         push   word ptr [0xb20]
85e4: 9a07480186       fcall  sub_4807
85e9: 83c406           add    sp, 6
85ec: c706320b9e00     mov    word ptr [0xb32], 0x9e
85f2: ff36320b         push   word ptr [0xb32]
85f6: ff36300b         push   word ptr [0xb30]
85fa: ff362e0b         push   word ptr [0xb2e]
85fe: 9a8c481886       fcall  sub_488c
8603: 83c406           add    sp, 6
8606: e9ca09           jmp    0x8fd3
8609: ff36320b         push   word ptr [0xb32]
860d: ff36300b         push   word ptr [0xb30]
8611: ff362e0b         push   word ptr [0xb2e]
8615: 9a8c484686       fcall  sub_488c
861a: 83c406           add    sp, 6
861d: 833e240b04       cmp    word ptr [0xb24], 4
8622: 0f850600         jne    0x862c
8626: b80500           mov    ax, 5
8629: e90300           jmp    0x862f
862c: b80400           mov    ax, 4
862f: a3240b           mov    word ptr [0xb24], ax
8632: 832e220b14       sub    word ptr [0xb22], 0x14
8637: ff36240b         push   word ptr [0xb24]
863b: ff36220b         push   word ptr [0xb22]
863f: ff36200b         push   word ptr [0xb20]
8643: 9a07489186       fcall  sub_4807
8648: 83c406           add    sp, 6
864b: a15a0b           mov    ax, word ptr [0xb5a]
864e: ff065a0b         inc    word ptr [0xb5a]
8652: 3d0100           cmp    ax, 1
8655: 0f8d0300         jge    0x865c
8659: e97709           jmp    0x8fd3
865c: c7065a0b0000     mov    word ptr [0xb5a], 0
8662: 813e320ba500     cmp    word ptr [0xb32], 0xa5
8668: 0f850900         jne    0x8675
866c: c706320ba200     mov    word ptr [0xb32], 0xa2
8672: e90400           jmp    0x8679
8675: ff06320b         inc    word ptr [0xb32]
8679: e95709           jmp    0x8fd3
867c: c706200bb0ff     mov    word ptr [0xb20], 0xffb0
8682: ff36240b         push   word ptr [0xb24]
8686: ff36220b         push   word ptr [0xb22]
868a: ff36200b         push   word ptr [0xb20]
868e: 9a0748c586       fcall  sub_4807
8693: 83c406           add    sp, 6
8696: a1cc05           mov    ax, word ptr [0x5cc]
8699: c1e004           shl    ax, 4
869c: 29062e0b         sub    word ptr [0xb2e], ax
86a0: 813e320ba100     cmp    word ptr [0xb32], 0xa1
86a6: 0f850900         jne    0x86b3
86aa: c706320b9e00     mov    word ptr [0xb32], 0x9e
86b0: e90400           jmp    0x86b7
86b3: ff06320b         inc    word ptr [0xb32]
86b7: a1702d           mov    ax, word ptr [0x2d70]
86ba: 39062e0b         cmp    word ptr [0xb2e], ax
86be: 0f8e1300         jle    0x86d5
86c2: 9a962aca86       fcall  sub_2a96
86c7: 9a8e42e486       fcall  sub_428e
86cc: c706c00b0100     mov    word ptr [0xbc0], 1
86d2: e9fe08           jmp    0x8fd3
86d5: ff36320b         push   word ptr [0xb32]
86d9: ff36300b         push   word ptr [0xb30]
86dd: ff362e0b         push   word ptr [0xb2e]
86e1: 9a8c489287       fcall  sub_488c
86e6: 83c406           add    sp, 6
86e9: e9e708           jmp    0x8fd3
86ec: a1722d           mov    ax, word ptr [0x2d72]
86ef: 8bc8             mov    cx, ax
86f1: d1e0             shl    ax, 1
86f3: 03c1             add    ax, cx
86f5: d1e0             shl    ax, 1
86f7: 03c1             add    ax, cx
86f9: 99               cdq    
86fa: 83e207           and    dx, 7
86fd: 03c2             add    ax, dx
86ff: c1f803           sar    ax, 3
8702: a3300b           mov    word ptr [0xb30], ax
8705: c706ca05ffff     mov    word ptr [0x5ca], 0xffff
870b: c706200bd8ff     mov    word ptr [0xb20], 0xffd8
8711: a1722d           mov    ax, word ptr [0x2d72]
8714: 99               cdq    
8715: 83e207           and    dx, 7
8718: 03c2             add    ax, dx
871a: c1f803           sar    ax, 3
871d: a3220b           mov    word ptr [0xb22], ax
8720: c706240b9e00     mov    word ptr [0xb24], 0x9e
8726: c706460b0000     mov    word ptr [0xb46], 0
872c: c706c00b8800     mov    word ptr [0xbc0], 0x88
8732: e99e08           jmp    0x8fd3
8735: a1ca05           mov    ax, word ptr [0x5ca]
8738: c1e004           shl    ax, 4
873b: 2906200b         sub    word ptr [0xb20], ax
873f: 813e240ba100     cmp    word ptr [0xb24], 0xa1
8745: 0f850900         jne    0x8752
8749: c706240b9e00     mov    word ptr [0xb24], 0x9e
874f: e90400           jmp    0x8756
8752: ff06240b         inc    word ptr [0xb24]
8756: a1702d           mov    ax, word ptr [0x2d70]
8759: 99               cdq    
875a: 2bc2             sub    ax, dx
875c: d1f8             sar    ax, 1
875e: 2d1400           sub    ax, 0x14
8761: 3b06200b         cmp    ax, word ptr [0xb20]
8765: 0f8d1a00         jge    0x8783
8769: a1702d           mov    ax, word ptr [0x2d70]
876c: 99               cdq    
876d: 2bc2             sub    ax, dx
876f: d1f8             sar    ax, 1
8771: 2d1400           sub    ax, 0x14
8774: a3200b           mov    word ptr [0xb20], ax
8777: c706240ba200     mov    word ptr [0xb24], 0xa2
877d: c706c00b8900     mov    word ptr [0xbc0], 0x89
8783: ff36240b         push   word ptr [0xb24]
8787: ff36220b         push   word ptr [0xb22]
878b: ff36200b         push   word ptr [0xb20]
878f: 9a0748d387       fcall  sub_4807
8794: 83c406           add    sp, 6
8797: e93908           jmp    0x8fd3
879a: 8306922d28       add    word ptr [0x2d92], 0x28
879f: a1300b           mov    ax, word ptr [0xb30]
87a2: 2b06220b         sub    ax, word ptr [0xb22]
87a6: 2d2800           sub    ax, 0x28
87a9: 3b06922d         cmp    ax, word ptr [0x2d92]
87ad: 0f8f1300         jg     0x87c4
87b1: a1300b           mov    ax, word ptr [0xb30]
87b4: 2b06220b         sub    ax, word ptr [0xb22]
87b8: 2d2800           sub    ax, 0x28
87bb: a3922d           mov    word ptr [0x2d92], ax
87be: c706c00b8a00     mov    word ptr [0xbc0], 0x8a
87c4: ff36240b         push   word ptr [0xb24]
87c8: ff36220b         push   word ptr [0xb22]
87cc: ff36200b         push   word ptr [0xb20]
87d0: 9a0748f680       fcall  sub_4807
87d5: 83c406           add    sp, 6
87d8: a15a0b           mov    ax, word ptr [0xb5a]
87db: ff065a0b         inc    word ptr [0xb5a]
87df: 3d0100           cmp    ax, 1
87e2: 0f8d0300         jge    0x87e9
87e6: e9ea07           jmp    0x8fd3
87e9: c7065a0b0000     mov    word ptr [0xb5a], 0
87ef: 813e240ba500     cmp    word ptr [0xb24], 0xa5
87f5: 0f850900         jne    0x8802
87f9: c706240ba200     mov    word ptr [0xb24], 0xa2
87ff: e90400           jmp    0x8806
8802: ff06240b         inc    word ptr [0xb24]
8806: e9ca07           jmp    0x8fd3
8809: a15a0b           mov    ax, word ptr [0xb5a]
880c: ff065a0b         inc    word ptr [0xb5a]
8810: 3d0400           cmp    ax, 4
8813: 0f8d0300         jge    0x881a
8817: e9b907           jmp    0x8fd3
881a: c7065a0b0000     mov    word ptr [0xb5a], 0
8820: 9a212a4088       fcall  sub_2a21
8825: a1200b           mov    ax, word ptr [0xb20]
8828: a32e0b           mov    word ptr [0xb2e], ax
882b: c706320ba700     mov    word ptr [0xb32], 0xa7
8831: ff36320b         push   word ptr [0xb32]
8835: ff36300b         push   word ptr [0xb30]
8839: ff362e0b         push   word ptr [0xb2e]
883d: 9a8c485488       fcall  sub_488c
8842: 83c406           add    sp, 6
8845: ff36240b         push   word ptr [0xb24]
8849: ff36220b         push   word ptr [0xb22]
884d: ff36200b         push   word ptr [0xb20]
8851: 9a07486c88       fcall  sub_4807
8856: 83c406           add    sp, 6
8859: c706c00b8b00     mov    word ptr [0xbc0], 0x8b
885f: c706ce230000     mov    word ptr [0x23ce], 0
8865: ff36d023         push   word ptr [0x23d0]
8869: 9abf2a7888       fcall  sub_2abf
886e: 83c402           add    sp, 2
8871: ff36902d         push   word ptr [0x2d90]
8875: 9abf2afe88       fcall  sub_2abf
887a: 83c402           add    sp, 2
887d: e95307           jmp    0x8fd3
8880: 833e922d00       cmp    word ptr [0x2d92], 0
8885: 0f843400         je     0x88bd
8889: 832e922d28       sub    word ptr [0x2d92], 0x28
888e: 833e922d00       cmp    word ptr [0x2d92], 0
8893: 0f8f0c00         jg     0x88a3
8897: c706240b9e00     mov    word ptr [0xb24], 0x9e
889d: c706922d0000     mov    word ptr [0x2d92], 0
88a3: 813e240ba500     cmp    word ptr [0xb24], 0xa5
88a9: 0f850900         jne    0x88b6
88ad: c706240ba200     mov    word ptr [0xb24], 0xa2
88b3: e90400           jmp    0x88ba
88b6: ff06240b         inc    word ptr [0xb24]
88ba: e92100           jmp    0x88de
88bd: a1ca05           mov    ax, word ptr [0x5ca]
88c0: c1e004           shl    ax, 4
88c3: 2906200b         sub    word ptr [0xb20], ax
88c7: 813e240ba100     cmp    word ptr [0xb24], 0xa1
88cd: 0f850900         jne    0x88da
88d1: c706240b9e00     mov    word ptr [0xb24], 0x9e
88d7: e90400           jmp    0x88de
88da: ff06240b         inc    word ptr [0xb24]
88de: a1702d           mov    ax, word ptr [0x2d70]
88e1: 3906200b         cmp    word ptr [0xb20], ax
88e5: 0f8e0600         jle    0x88ef
88e9: c706c00b8c00     mov    word ptr [0xbc0], 0x8c
88ef: ff36240b         push   word ptr [0xb24]
88f3: ff36220b         push   word ptr [0xb22]
88f7: ff36200b         push   word ptr [0xb20]
88fb: 9a07483f89       fcall  sub_4807
8900: 83c406           add    sp, 6
8903: a15a0b           mov    ax, word ptr [0xb5a]
8906: ff065a0b         inc    word ptr [0xb5a]
890a: 3d0100           cmp    ax, 1
890d: 0f8d0300         jge    0x8914
8911: e9bf06           jmp    0x8fd3
8914: c7065a0b0000     mov    word ptr [0xb5a], 0
891a: 813e320ba700     cmp    word ptr [0xb32], 0xa7
8920: 0f850600         jne    0x892a
8924: b8a800           mov    ax, 0xa8
8927: e90300           jmp    0x892d
892a: b8a700           mov    ax, 0xa7
892d: a3320b           mov    word ptr [0xb32], ax
8930: ff36320b         push   word ptr [0xb32]
8934: ff36300b         push   word ptr [0xb30]
8938: ff362e0b         push   word ptr [0xb2e]
893c: 9a8c485c89       fcall  sub_488c
8941: 83c406           add    sp, 6
8944: e98c06           jmp    0x8fd3
8947: c706320ba600     mov    word ptr [0xb32], 0xa6
894d: ff36320b         push   word ptr [0xb32]
8951: ff36300b         push   word ptr [0xb30]
8955: ff362e0b         push   word ptr [0xb2e]
8959: 9a8c488889       fcall  sub_488c
895e: 83c406           add    sp, 6
8961: a15a0b           mov    ax, word ptr [0xb5a]
8964: ff065a0b         inc    word ptr [0xb5a]
8968: 3d0100           cmp    ax, 1
896b: 0f8d0300         jge    0x8972
896f: e96106           jmp    0x8fd3
8972: c7065a0b0000     mov    word ptr [0xb5a], 0
8978: ff06662d         inc    word ptr [0x2d66]
897c: 833e662d08       cmp    word ptr [0x2d66], 8
8981: 0f8e1000         jle    0x8995
8985: 9a962a8d89       fcall  sub_2a96
898a: 9a8e42bc89       fcall  sub_428e
898f: c706c00b0100     mov    word ptr [0xbc0], 1
8995: e93b06           jmp    0x8fd3
8998: c706200bb0ff     mov    word ptr [0xb20], 0xffb0
899e: a1722d           mov    ax, word ptr [0x2d72]
89a1: 99               cdq    
89a2: 83e207           and    dx, 7
89a5: 03c2             add    ax, dx
89a7: c1f803           sar    ax, 3
89aa: a3220b           mov    word ptr [0xb22], ax
89ad: ff36240b         push   word ptr [0xb24]
89b1: ff36220b         push   word ptr [0xb22]
89b5: ff36200b         push   word ptr [0xb20]
89b9: 9a0748c489       fcall  sub_4807
89be: 83c406           add    sp, 6
89c1: 9a212a0a8a       fcall  sub_2a21
89c6: c706cc05ffff     mov    word ptr [0x5cc], 0xffff
89cc: c7062e0bd8ff     mov    word ptr [0xb2e], 0xffd8
89d2: a1722d           mov    ax, word ptr [0x2d72]
89d5: 8bc8             mov    cx, ax
89d7: d1e0             shl    ax, 1
89d9: 03c1             add    ax, cx
89db: d1e0             shl    ax, 1
89dd: 03c1             add    ax, cx
89df: 99               cdq    
89e0: 83e207           and    dx, 7
89e3: 03c2             add    ax, dx
89e5: c1f803           sar    ax, 3
89e8: a3300b           mov    word ptr [0xb30], ax
89eb: c706320b9e00     mov    word ptr [0xb32], 0x9e
89f1: c706460b0000     mov    word ptr [0xb46], 0
89f7: c706c00b8f00     mov    word ptr [0xbc0], 0x8f    ; "Screen Mate"
89fd: c706ce230000     mov    word ptr [0x23ce], 0
8a03: ff36d023         push   word ptr [0x23d0]
8a07: 9abf2a168a       fcall  sub_2abf
8a0c: 83c402           add    sp, 2
8a0f: ff36902d         push   word ptr [0x2d90]
8a13: 9abf2a8f8a       fcall  sub_2abf
8a18: 83c402           add    sp, 2
8a1b: e9b505           jmp    0x8fd3
8a1e: a1cc05           mov    ax, word ptr [0x5cc]
8a21: c1e004           shl    ax, 4
8a24: 29062e0b         sub    word ptr [0xb2e], ax
8a28: 813e320ba100     cmp    word ptr [0xb32], 0xa1
8a2e: 0f850900         jne    0x8a3b
8a32: c706320b9e00     mov    word ptr [0xb32], 0x9e
8a38: e90400           jmp    0x8a3f
8a3b: ff06320b         inc    word ptr [0xb32]
8a3f: a1722d           mov    ax, word ptr [0x2d72]
8a42: 99               cdq    
8a43: 83e207           and    dx, 7
8a46: 03c2             add    ax, dx
8a48: c1f803           sar    ax, 3
8a4b: 3b062e0b         cmp    ax, word ptr [0xb2e]
8a4f: 0f8d2d00         jge    0x8a80
8a53: a1722d           mov    ax, word ptr [0x2d72]
8a56: 99               cdq    
8a57: 83e207           and    dx, 7
8a5a: 03c2             add    ax, dx
8a5c: c1f803           sar    ax, 3
8a5f: a32e0b           mov    word ptr [0xb2e], ax
8a62: a1702d           mov    ax, word ptr [0x2d70]
8a65: a3200b           mov    word ptr [0xb20], ax
8a68: a1300b           mov    ax, word ptr [0xb30]
8a6b: a3220b           mov    word ptr [0xb22], ax
8a6e: c706240b0400     mov    word ptr [0xb24], 4
8a74: c706ca050100     mov    word ptr [0x5ca], 1
8a7a: c706c00b9000     mov    word ptr [0xbc0], 0x90
8a80: ff36320b         push   word ptr [0xb32]
8a84: ff36300b         push   word ptr [0xb30]
8a88: ff362e0b         push   word ptr [0xb2e]
8a8c: 9a8c48d48a       fcall  sub_488c
8a91: 83c406           add    sp, 6
8a94: e93c05           jmp    0x8fd3
8a97: a15a0b           mov    ax, word ptr [0xb5a]
8a9a: ff065a0b         inc    word ptr [0xb5a]
8a9e: 3d0100           cmp    ax, 1
8aa1: 0f8d0300         jge    0x8aa8
8aa5: e92b05           jmp    0x8fd3
8aa8: c7065a0b0000     mov    word ptr [0xb5a], 0
8aae: 813e320ba100     cmp    word ptr [0xb32], 0xa1
8ab4: 0f850900         jne    0x8ac1
8ab8: c706320b9e00     mov    word ptr [0xb32], 0x9e
8abe: e90400           jmp    0x8ac5
8ac1: ff06320b         inc    word ptr [0xb32]
8ac5: ff36320b         push   word ptr [0xb32]
8ac9: ff36300b         push   word ptr [0xb30]
8acd: ff362e0b         push   word ptr [0xb2e]
8ad1: 9a8c48078b       fcall  sub_488c
8ad6: 83c406           add    sp, 6
8ad9: a1ca05           mov    ax, word ptr [0x5ca]
8adc: c1e004           shl    ax, 4
8adf: 2906200b         sub    word ptr [0xb20], ax
8ae3: 833e240b04       cmp    word ptr [0xb24], 4
8ae8: 0f850600         jne    0x8af2
8aec: b80500           mov    ax, 5
8aef: e90300           jmp    0x8af5
8af2: b80400           mov    ax, 4
8af5: a3240b           mov    word ptr [0xb24], ax
8af8: ff36240b         push   word ptr [0xb24]
8afc: ff36220b         push   word ptr [0xb22]
8b00: ff36200b         push   word ptr [0xb20]
8b04: 9a07482f8b       fcall  sub_4807
8b09: 83c406           add    sp, 6
8b0c: a12e0b           mov    ax, word ptr [0xb2e]
8b0f: 052800           add    ax, 0x28
8b12: 3b06200b         cmp    ax, word ptr [0xb20]
8b16: 0f8c2000         jl     0x8b3a
8b1a: c706200bb0ff     mov    word ptr [0xb20], 0xffb0
8b20: ff36240b         push   word ptr [0xb24]
8b24: ff36220b         push   word ptr [0xb22]
8b28: ff36200b         push   word ptr [0xb20]
8b2c: 9a0748658b       fcall  sub_4807
8b31: 83c406           add    sp, 6
8b34: c706c00b9100     mov    word ptr [0xbc0], 0x91
8b3a: e99604           jmp    0x8fd3
8b3d: 832e300b28       sub    word ptr [0xb30], 0x28
8b42: 813e320ba100     cmp    word ptr [0xb32], 0xa1
8b48: 0f850900         jne    0x8b55
8b4c: c706320b9e00     mov    word ptr [0xb32], 0x9e
8b52: e90400           jmp    0x8b59
8b55: ff06320b         inc    word ptr [0xb32]
8b59: 833e300bd8       cmp    word ptr [0xb30], -0x28
8b5e: 0f8d1300         jge    0x8b75
8b62: 9a962a6a8b       fcall  sub_2a96
8b67: 9a8e42848b       fcall  sub_428e
8b6c: c706c00b0100     mov    word ptr [0xbc0], 1
8b72: e95e04           jmp    0x8fd3
8b75: ff36320b         push   word ptr [0xb32]
8b79: ff36300b         push   word ptr [0xb30]
8b7d: ff362e0b         push   word ptr [0xb2e]
8b81: 9a8c488f8b       fcall  sub_488c
8b86: 83c406           add    sp, 6
8b89: e94704           jmp    0x8fd3
8b8c: 9a212a7084       fcall  sub_2a21
8b91: c706762d0100     mov    word ptr [0x2d76], 1
8b97: c706cc050100     mov    word ptr [0x5cc], 1
8b9d: c706320b9200     mov    word ptr [0xb32], 0x92
8ba3: c706460b0000     mov    word ptr [0xb46], 0
8ba9: a1702d           mov    ax, word ptr [0x2d70]
8bac: a3200b           mov    word ptr [0xb20], ax
8baf: c706220bd8ff     mov    word ptr [0xb22], 0xffd8
8bb5: c706ca050100     mov    word ptr [0x5ca], 1
8bbb: a1702d           mov    ax, word ptr [0x2d70]
8bbe: b9a0ff           mov    cx, 0xffa0
8bc1: 99               cdq    
8bc2: f7f9             idiv   cx
8bc4: a3280b           mov    word ptr [0xb28], ax
8bc7: a1722d           mov    ax, word ptr [0x2d72]
8bca: b96000           mov    cx, 0x60
8bcd: 99               cdq    
8bce: f7f9             idiv   cx
8bd0: a3260b           mov    word ptr [0xb26], ax
8bd3: 6b06280b5c       imul   ax, word ptr [0xb28], 0x5c
8bd8: 0306702d         add    ax, word ptr [0x2d70]
8bdc: a32e0b           mov    word ptr [0xb2e], ax
8bdf: 6b06260b5c       imul   ax, word ptr [0xb26], 0x5c
8be4: 2d1400           sub    ax, 0x14
8be7: a3300b           mov    word ptr [0xb30], ax
8bea: c706c00b9400     mov    word ptr [0xbc0], 0x94
8bf0: c706ce230100     mov    word ptr [0x23ce], 1
8bf6: ff36902d         push   word ptr [0x2d90]
8bfa: 9abf2a098c       fcall  sub_2abf
8bff: 83c402           add    sp, 2
8c02: ff36d023         push   word ptr [0x23d0]
8c06: 9abf2a348c       fcall  sub_2abf
8c0b: 83c402           add    sp, 2
8c0e: a15a0b           mov    ax, word ptr [0xb5a]
8c11: ff065a0b         inc    word ptr [0xb5a]
8c15: 3d0000           cmp    ax, 0
8c18: 0f8d0300         jge    0x8c1f
8c1c: e9b403           jmp    0x8fd3
8c1f: c7065a0b0000     mov    word ptr [0xb5a], 0
8c25: ff36320b         push   word ptr [0xb32]
8c29: ff36300b         push   word ptr [0xb30]
8c2d: ff362e0b         push   word ptr [0xb2e]
8c31: 9a8c48d88c       fcall  sub_488c
8c36: 83c406           add    sp, 6
8c39: a1280b           mov    ax, word ptr [0xb28]
8c3c: 0106200b         add    word ptr [0xb20], ax
8c40: a1260b           mov    ax, word ptr [0xb26]
8c43: 0106220b         add    word ptr [0xb22], ax
8c47: a1460b           mov    ax, word ptr [0xb46]
8c4a: b90300           mov    cx, 3
8c4d: 99               cdq    
8c4e: f7f9             idiv   cx
8c50: 8bd8             mov    bx, ax
8c52: d1e3             shl    bx, 1
8c54: 8b87fe06         mov    ax, word ptr [bx + 0x6fe]
8c58: a3240b           mov    word ptr [0xb24], ax
8c5b: ff06460b         inc    word ptr [0xb46]
8c5f: 833e240b00       cmp    word ptr [0xb24], 0
8c64: 0f850400         jne    0x8c6c
8c68: ff0e460b         dec    word ptr [0xb46]
8c6c: 833e240b00       cmp    word ptr [0xb24], 0
8c71: 0f841400         je     0x8c89
8c75: 813e240b9000     cmp    word ptr [0xb24], 0x90
8c7b: 0f840a00         je     0x8c89
8c7f: 813e240b9100     cmp    word ptr [0xb24], 0x91
8c85: 0f851600         jne    0x8c9f
8c89: 813e240b9000     cmp    word ptr [0xb24], 0x90
8c8f: 0f850600         jne    0x8c99
8c93: b89100           mov    ax, 0x91
8c96: e90300           jmp    0x8c9c
8c99: b89000           mov    ax, 0x90
8c9c: a3240b           mov    word ptr [0xb24], ax
8c9f: 813e240b8900     cmp    word ptr [0xb24], 0x89
8ca5: 0f840a00         je     0x8cb3
8ca9: 813e240b8a00     cmp    word ptr [0xb24], 0x8a
8caf: 0f851600         jne    0x8cc9
8cb3: 813e240b8900     cmp    word ptr [0xb24], 0x89
8cb9: 0f850600         jne    0x8cc3
8cbd: b88a00           mov    ax, 0x8a
8cc0: e90300           jmp    0x8cc6
8cc3: b88900           mov    ax, 0x89
8cc6: a3240b           mov    word ptr [0xb24], ax
8cc9: ff36240b         push   word ptr [0xb24]
8ccd: ff36220b         push   word ptr [0xb22]
8cd1: ff36200b         push   word ptr [0xb20]
8cd5: 9a07481a8d       fcall  sub_4807
8cda: 83c406           add    sp, 6
8cdd: a12e0b           mov    ax, word ptr [0xb2e]
8ce0: 050a00           add    ax, 0xa
8ce3: 3b06200b         cmp    ax, word ptr [0xb20]
8ce7: 0f8f0e00         jg     0x8cf9
8ceb: a1300b           mov    ax, word ptr [0xb30]
8cee: 051400           add    ax, 0x14
8cf1: 3b06220b         cmp    ax, word ptr [0xb22]
8cf5: 0f8d2900         jge    0x8d22
8cf9: c706460b0000     mov    word ptr [0xb46], 0
8cff: c706c00b9500     mov    word ptr [0xbc0], 0x95
8d05: c706240bad00     mov    word ptr [0xb24], 0xad
8d0b: ff36240b         push   word ptr [0xb24]
8d0f: ff36220b         push   word ptr [0xb22]
8d13: ff36200b         push   word ptr [0xb20]
8d17: 9a0748518d       fcall  sub_4807
8d1c: 83c406           add    sp, 6
8d1f: e9b102           jmp    0x8fd3
8d22: e9ae02           jmp    0x8fd3
8d25: a15a0b           mov    ax, word ptr [0xb5a]
8d28: ff065a0b         inc    word ptr [0xb5a]
8d2c: 3d0100           cmp    ax, 1
8d2f: 0f8d0300         jge    0x8d36
8d33: e99d02           jmp    0x8fd3
8d36: c7065a0b0000     mov    word ptr [0xb5a], 0
8d3c: c706200bb0ff     mov    word ptr [0xb20], 0xffb0
8d42: ff36240b         push   word ptr [0xb24]
8d46: ff36220b         push   word ptr [0xb22]
8d4a: ff36200b         push   word ptr [0xb20]
8d4e: 9a07488b8d       fcall  sub_4807
8d53: 83c406           add    sp, 6
8d56: 8b1e460b         mov    bx, word ptr [0xb46]
8d5a: d1e3             shl    bx, 1
8d5c: 8b87b407         mov    ax, word ptr [bx + 0x7b4]
8d60: a3320b           mov    word ptr [0xb32], ax
8d63: ff06460b         inc    word ptr [0xb46]
8d67: 833e320b00       cmp    word ptr [0xb32], 0
8d6c: 0f852900         jne    0x8d99
8d70: a12e0b           mov    ax, word ptr [0xb2e]
8d73: a3200b           mov    word ptr [0xb20], ax
8d76: a1300b           mov    ax, word ptr [0xb30]
8d79: a3220b           mov    word ptr [0xb22], ax
8d7c: c706460b0000     mov    word ptr [0xb46], 0
8d82: 6a00             push   0
8d84: 6a00             push   0
8d86: 6a6c             push   0x6c
8d88: 9ac842a88d       fcall  sub_42c8
8d8d: 83c406           add    sp, 6
8d90: c706c00b9600     mov    word ptr [0xbc0], 0x96
8d96: e93a02           jmp    0x8fd3
8d99: ff36320b         push   word ptr [0xb32]
8d9d: ff36300b         push   word ptr [0xb30]
8da1: ff362e0b         push   word ptr [0xb2e]
8da5: 9a8c48038e       fcall  sub_488c
8daa: 83c406           add    sp, 6
8dad: e92302           jmp    0x8fd3
8db0: c706240ba900     mov    word ptr [0xb24], 0xa9
8db6: 8b1e460b         mov    bx, word ptr [0xb46]
8dba: d1e3             shl    bx, 1
8dbc: 8b87be07         mov    ax, word ptr [bx + 0x7be]
8dc0: a3240b           mov    word ptr [0xb24], ax
8dc3: ff06460b         inc    word ptr [0xb46]
8dc7: 833e240b00       cmp    word ptr [0xb24], 0
8dcc: 0f850f00         jne    0x8ddf
8dd0: c706240b0300     mov    word ptr [0xb24], 3
8dd6: c706c00b9700     mov    word ptr [0xbc0], 0x97
8ddc: e9f401           jmp    0x8fd3
8ddf: 833e240b51       cmp    word ptr [0xb24], 0x51
8de4: 0f8c2300         jl     0x8e0b
8de8: 833e240b53       cmp    word ptr [0xb24], 0x53
8ded: 0f8f1a00         jg     0x8e0b
8df1: ff36240b         push   word ptr [0xb24]
8df5: a1220b           mov    ax, word ptr [0xb22]
8df8: 2d1400           sub    ax, 0x14
8dfb: 50               push   ax
8dfc: ff36200b         push   word ptr [0xb20]
8e00: 9a07481a8e       fcall  sub_4807
8e05: 83c406           add    sp, 6
8e08: e91400           jmp    0x8e1f
8e0b: ff36240b         push   word ptr [0xb24]
8e0f: ff36220b         push   word ptr [0xb22]
8e13: ff36200b         push   word ptr [0xb20]
8e17: 9a07486c8e       fcall  sub_4807
8e1c: 83c406           add    sp, 6
8e1f: e9b101           jmp    0x8fd3
8e22: a15a0b           mov    ax, word ptr [0xb5a]
8e25: ff065a0b         inc    word ptr [0xb5a]
8e29: 3d0100           cmp    ax, 1
8e2c: 0f8d0300         jge    0x8e33
8e30: e9a001           jmp    0x8fd3
8e33: c7065a0b0000     mov    word ptr [0xb5a], 0
8e39: a1ca05           mov    ax, word ptr [0x5ca]
8e3c: 8bc8             mov    cx, ax
8e3e: d1e0             shl    ax, 1
8e40: 03c1             add    ax, cx
8e42: d1e0             shl    ax, 1
8e44: 2906200b         sub    word ptr [0xb20], ax
8e48: 833e240b02       cmp    word ptr [0xb24], 2
8e4d: 0f850600         jne    0x8e57
8e51: b80300           mov    ax, 3
8e54: e90300           jmp    0x8e5a
8e57: b80200           mov    ax, 2
8e5a: a3240b           mov    word ptr [0xb24], ax
8e5d: ff36240b         push   word ptr [0xb24]
8e61: ff36220b         push   word ptr [0xb22]
8e65: ff36200b         push   word ptr [0xb20]
8e69: 9a07487d8e       fcall  sub_4807
8e6e: 83c406           add    sp, 6
8e71: 833e200bd8       cmp    word ptr [0xb20], -0x28
8e76: 0f8d0e00         jge    0x8e88
8e7a: 9a962a2388       fcall  sub_2a96
8e7f: c706c00b0100     mov    word ptr [0xbc0], 1
8e85: e94b01           jmp    0x8fd3
8e88: e94801           jmp    0x8fd3
8e8b: e94501           jmp    0x8fd3
8e8e: 3d9a00           cmp    ax, 0x9a
8e91: 0f873e01         ja     0x8fd3
8e95: d1e0             shl    ax, 1
8e97: 93               xchg   bx, ax
8e98: 2effa79d8e       jmp    word ptr cs:[bx - 0x7163]
8e9d: 394d5f           cmp    word ptr [di + 0x5f], cx
8ea0: 4d               dec    bp
8ea1: 8a4ef8           mov    cl, byte ptr [bp - 8]
8ea4: 4f               dec    di
8ea5: 7350             jae    0x8ef7
8ea7: b8501f           mov    ax, 0x1f50
8eaa: 51               push   cx
8eab: 385191           cmp    byte ptr [bx + di - 0x6f], dl
8eae: 51               push   cx
8eaf: f4               hlt    
8eb0: 52               push   dx
8eb1: 1153c7           adc    word ptr [bp + di - 0x39], dx
8eb4: 53               push   bx
8eb5: 2c54             sub    al, 0x54
8eb7: af               scasw  ax, word ptr es:[di]
8eb8: 55               push   bp
8eb9: 0456             add    al, 0x56
8ebb: 94               xchg   sp, ax
8ebc: 56               push   si
8ebd: e95661           jmp    0xf016
8ec0: 57               push   di
8ec1: 8457e6           test   byte ptr [bx - 0x1a], dl
8ec4: 57               push   di
8ec5: 2f               das    
8ec6: 58               pop    ax
8ec7: ad               lodsw  ax, word ptr [si]
8ec8: 58               pop    ax
8ec9: d7               xlatb  
8eca: 58               pop    ax
8ecb: 3d5961           cmp    ax, 0x6159
8ece: 59               pop    cx
8ecf: bb5954           mov    bx, 0x5459
8ed2: 5a               pop    dx
8ed3: 98               cwde   
8ed4: 5a               pop    dx
8ed5: b95a0c           mov    cx, 0xc5a
8ed8: 5b               pop    bx
8ed9: 5f               pop    di
8eda: 5b               pop    bx
8edb: be5baf           mov    si, 0xaf5b
8ede: 5c               pop    sp
8edf: f75c21           neg    word ptr [si + 0x21]
8ee2: 5d               pop    bp
8ee3: e35d             jcxz   0x8f42
8ee5: d38f235e         ror    word ptr [bx + 0x5e23], cl
8ee9: 93               xchg   bx, ax
8eea: 5e               pop    si
8eeb: e75e             out    0x5e, ax
8eed: 95               xchg   bp, ax
8eee: 5f               pop    di
8eef: e95f53           jmp    0xe251
8ef2: 60               pushaw 
8ef3: 9d               popf   
8ef4: 60               pushaw 
8ef5: b760             mov    bh, 0x60
8ef7: 12612c           adc    ah, byte ptr [bx + di + 0x2c]
8efa: 61               popaw  
8efb: 876193           xchg   word ptr [bx + di - 0x6d], sp
8efe: 61               popaw  
8eff: 056211           add    ax, 0x1162
8f02: 626c62           bound  bp, dword ptr [si + 0x62]
8f05: 7862             js     0x8f69
8f07: df624d           fbld   tbyte ptr [bp + si + 0x4d]
8f0a: 63d3             arpl   bx, dx
8f0c: 8f               .byte  0x8f
8f0d: a5               movsw  word ptr es:[di], word ptr [si]
8f0e: 64b164           mov    cl, 0x64
8f11: 316571           xor    word ptr [di + 0x71], sp
8f14: 65ed             in     ax, dx
8f16: 6551             push   cx
8f18: 66d268e1         shr    byte ptr [bx + si - 0x1f], cl
8f1c: 68d38f           push   0x8fd3
8f1f: bb66e4           mov    bx, 0xe466
8f22: 667767           ja     0x8f8c
8f25: 47               inc    di
8f26: 68f56a           push   0x6af5
8f29: 07               pop    es
8f2a: 6b236c           imul   sp, word ptr [bp + di], 0x6c
8f2d: 676c             insb   byte ptr es:[edi], dx
8f2f: ab               stosw  word ptr es:[di], ax
8f30: 6c               insb   byte ptr es:[di], dx
8f31: b76c             mov    bh, 0x6c
8f33: 3c69             cmp    al, 0x69
8f35: 8e69c8           mov    gs, word ptr [bx + di - 0x38]
8f38: 692b6a61         imul   bp, word ptr [bp + di], 0x616a
8f3c: 6a87             push   -0x79
8f3e: 6a12             push   0x12
8f40: 6d               insw   word ptr es:[di], dx
8f41: 356dd3           xor    ax, 0xd36d
8f44: 8f               .byte  0x8f
8f45: 676d             insw   word ptr es:[edi], dx
8f47: 706d             jo     0x8fb6
8f49: ba6eb2           mov    dx, 0xb26e
8f4c: 6f               outsw  dx, word ptr [si]
8f4d: ef               out    dx, ax
8f4e: 6f               outsw  dx, word ptr [si]
8f4f: ec               in     al, dx
8f50: 704d             jo     0x8f9f
8f52: 719a             jno    0x8eee
8f54: 71e2             jno    0x8f38
8f56: 717b             jno    0x8fd3
8f58: 731a             jae    0x8f74
8f5a: 7440             je     0x8f9c
8f5c: 7469             je     0x8fc7
8f5e: 748a             je     0x8eea
8f60: 74ab             je     0x8f0d
8f62: 74cc             je     0x8f30
8f64: 74d6             je     0x8f3c
8f66: 778d             ja     0x8ef5
8f68: 78f6             js     0x8f60
8f6a: 782b             js     0x8f97
8f6c: 798c             jns    0x8efa
8f6e: 799b             jns    0x8f0b
8f70: 79aa             jns    0x8f1c
8f72: 7967             jns    0x8fdb
8f74: 7ae0             jp     0x8f56
8f76: 7a1a             jp     0x8f92
8f78: 7b5e             jnp    0x8fd8
8f7a: 7b97             jnp    0x8f13
8f7c: 7be6             jnp    0x8f64
8f7e: 7b99             jnp    0x8f19
8f80: 7cc2             jl     0x8f44
8f82: 7c13             jl     0x8f97
8f84: 7d57             jge    0x8fdd
8f86: 7d9f             jge    0x8f27
8f88: 7d05             jge    0x8f8f
8f8a: 7e58             jle    0x8fe4
8f8c: 7e53             jle    0x8fe1
8f8e: 7fb1             jg     0x8f41
8f90: 7f5b             jg     0x8fed
8f92: 80498193         or     byte ptr [bx + di - 0x7f], 0x93
8f96: 81cb8105         or     bx, 0x581
8f9a: 82b2824a83       xor    byte ptr [bp + si + 0x4a82], 0x83
8f9f: 92               xchg   dx, ax
8fa0: 83f883           cmp    ax, -0x7d
8fa3: 4b               dec    bx
8fa4: 8412             test   byte ptr [bp + si], dl
8fa6: 85a0857c         test   word ptr [bx + si + 0x7c85], sp
8faa: 86ec             xchg   ah, ch
8fac: 8635             xchg   byte ptr [di], dh
8fae: 879a8709         xchg   word ptr [bp + si + 0x987], bx
8fb2: 88808847         mov    byte ptr [bx + si + 0x4788], al
8fb6: 89d3             mov    bx, dx
8fb8: 8f               .byte  0x8f
8fb9: 98               cwde   
8fba: 891e8a97         mov    word ptr [0x978a], bx
8fbe: 8a3d             mov    bh, byte ptr [di]
8fc0: 8bd3             mov    dx, bx
8fc2: 8f               .byte  0x8f
8fc3: 8c8b0e8c         mov    word ptr [bp + di - 0x73f2], cs
8fc7: 258db0           and    ax, 0xb08d
8fca: 8d22             lea    sp, [bp + si]
8fcc: 8ed3             mov    ss, bx
8fce: 8f               .byte  0x8f
8fcf: 6d               insw   word ptr es:[di], dx
8fd0: 50               push   ax
8fd1: 7050             jo     0x9023
8fd3: 5e               pop    si
8fd4: 5f               pop    di
8fd5: c9               leave  
8fd6: cb               retf   

sub_8fd7:
8fd7: 55               push   bp
8fd8: 8bec             mov    bp, sp
8fda: b80000           mov    ax, 0
8fdd: 9a12075390       fcall  sub_0712
8fe2: 57               push   di
8fe3: 56               push   si
8fe4: 8b4606           mov    ax, word ptr [bp + 6]
8fe7: e93f00           jmp    0x9029
8fea: c706c00b0100     mov    word ptr [0xbc0], 1
8ff0: 833e1c0b00       cmp    word ptr [0xb1c], 0
8ff5: 0f840600         je     0x8fff
8ff9: c706c00b6100     mov    word ptr [0xbc0], 0x61
8fff: e94400           jmp    0x9046
9002: c706c00b5100     mov    word ptr [0xbc0], 0x51
9008: e93b00           jmp    0x9046
900b: c706c00b6100     mov    word ptr [0xbc0], 0x61
9011: e93200           jmp    0x9046
9014: c706742d7100     mov    word ptr [0x2d74], 0x71
901a: e92900           jmp    0x9046
901d: c706c00b3800     mov    word ptr [0xbc0], 0x38
9023: e92000           jmp    0x9046
9026: e91d00           jmp    0x9046
9029: 0bc0             or     ax, ax
902b: 0f84bbff         je     0x8fea
902f: 48               dec    ax
9030: 0f84ceff         je     0x9002
9034: 48               dec    ax
9035: 0f84d2ff         je     0x900b
9039: 48               dec    ax
903a: 0f84d6ff         je     0x9014
903e: 48               dec    ax
903f: 0f84daff         je     0x901d
9043: e90000           jmp    0x9046
9046: 5e               pop    si
9047: 5f               pop    di
9048: c9               leave  
9049: cb               retf   

sub_904a:
904a: 55               push   bp
904b: 8bec             mov    bp, sp
904d: b80000           mov    ax, 0
9050: 9a12076090       fcall  sub_0712
9055: 57               push   di
9056: 56               push   si
9057: c706922d0000     mov    word ptr [0x2d92], 0
905d: 9a8e426590       fcall  sub_428e
9062: 9a962afd8b       fcall  sub_2a96
9067: 8b4606           mov    ax, word ptr [bp + 6]
906a: e91101           jmp    0x917e
906d: c706c00b0100     mov    word ptr [0xbc0], 1
9073: e95301           jmp    0x91c9
9076: c706c00b0700     mov    word ptr [0xbc0], 7
907c: e94a01           jmp    0x91c9
907f: c706c00b0b00     mov    word ptr [0xbc0], 0xb
9085: e94101           jmp    0x91c9
9088: c706c00b0d00     mov    word ptr [0xbc0], 0xd
908e: e93801           jmp    0x91c9
9091: c706c00b0f00     mov    word ptr [0xbc0], 0xf
9097: e92f01           jmp    0x91c9
909a: c706c00b1100     mov    word ptr [0xbc0], 0x11
90a0: e92601           jmp    0x91c9
90a3: c706c00b1400     mov    word ptr [0xbc0], 0x14
90a9: e91d01           jmp    0x91c9
90ac: c706c00b1800     mov    word ptr [0xbc0], 0x18
90b2: e91401           jmp    0x91c9
90b5: c706c00b1e00     mov    word ptr [0xbc0], 0x1e
90bb: e90b01           jmp    0x91c9
90be: c706c00b2300     mov    word ptr [0xbc0], 0x23
90c4: e90201           jmp    0x91c9
90c7: c706c00b2b00     mov    word ptr [0xbc0], 0x2b
90cd: e9f900           jmp    0x91c9
90d0: c706c00b2d00     mov    word ptr [0xbc0], 0x2d
90d6: e9f000           jmp    0x91c9
90d9: c706c00b3100     mov    word ptr [0xbc0], 0x31
90df: e9e700           jmp    0x91c9
90e2: c706c00b3300     mov    word ptr [0xbc0], 0x33
90e8: e9de00           jmp    0x91c9
90eb: c706c00b3500     mov    word ptr [0xbc0], 0x35
90f1: e9d500           jmp    0x91c9
90f4: c706c00b3a00     mov    word ptr [0xbc0], 0x3a
90fa: e9cc00           jmp    0x91c9
90fd: c706c00b2f00     mov    word ptr [0xbc0], 0x2f
9103: e9c300           jmp    0x91c9
9106: c706c00b9300     mov    word ptr [0xbc0], 0x93
910c: e9ba00           jmp    0x91c9
910f: c706c00b7400     mov    word ptr [0xbc0], 0x74
9115: e9b100           jmp    0x91c9
9118: c706c00b7900     mov    word ptr [0xbc0], 0x79
911e: e9a800           jmp    0x91c9
9121: c706c00b7e00     mov    word ptr [0xbc0], 0x7e
9127: e99f00           jmp    0x91c9
912a: c706c00b8000     mov    word ptr [0xbc0], 0x80
9130: e99600           jmp    0x91c9
9133: c706c00b8700     mov    word ptr [0xbc0], 0x87
9139: e98d00           jmp    0x91c9
913c: c706c00b8e00     mov    word ptr [0xbc0], 0x8e
9142: e98400           jmp    0x91c9
9145: c706c00b4100     mov    word ptr [0xbc0], 0x41
914b: e97b00           jmp    0x91c9
914e: c706c00b3e00     mov    word ptr [0xbc0], 0x3e
9154: e97200           jmp    0x91c9
9157: c706c00b4b00     mov    word ptr [0xbc0], 0x4b    ; "Screen Mate"
915d: e96900           jmp    0x91c9
9160: c706c00b6000     mov    word ptr [0xbc0], 0x60
9166: e96000           jmp    0x91c9
9169: c706c00b0900     mov    word ptr [0xbc0], 9
916f: e95700           jmp    0x91c9
9172: c706c00b4500     mov    word ptr [0xbc0], 0x45
9178: e94e00           jmp    0x91c9
917b: e94b00           jmp    0x91c9
917e: 3d1d00           cmp    ax, 0x1d
9181: 0f874400         ja     0x91c9
9185: d1e0             shl    ax, 1
9187: 93               xchg   bx, ax
9188: 2effa78d91       jmp    word ptr cs:[bx - 0x6e73]
918d: 6d               insw   word ptr es:[di], dx
918e: 90               nop    
918f: 7690             jbe    0x9121
9191: 7f90             jg     0x9123
9193: 88909190         mov    byte ptr [bx + si - 0x6f6f], dl
9197: 9a90a390ac       lcall  0xac90, 0xa390
919c: 90               nop    
919d: b590             mov    ch, 0x90
919f: be90c7           mov    si, 0xc790
91a2: 90               nop    
91a3: d090d990         rcl    byte ptr [bx + si - 0x6f27]
91a7: e290             loop   0x9139
91a9: eb90             jmp    0x913b
91ab: f4               hlt    
91ac: 90               nop    
91ad: fd               std    
91ae: 90               nop    
91af: 06               push   es
91b0: 91               xchg   cx, ax
91b1: 0f9118           setno  byte ptr [bx + si]
91b4: 91               xchg   cx, ax
91b5: 21912a91         and    word ptr [bx + di - 0x6ed6], dx
91b9: 33913c91         xor    dx, word ptr [bx + di - 0x6ec4]
91bd: 45               inc    bp
91be: 91               xchg   cx, ax
91bf: 4e               dec    si
91c0: 91               xchg   cx, ax
91c1: 57               push   di
91c2: 91               xchg   cx, ax
91c3: 60               pushaw 
91c4: 91               xchg   cx, ax
91c5: 699172915e5f     imul   dx, word ptr [bx + di - 0x6e8e], 0x5f5e
91cb: c9               leave  
91cc: cb               retf   

sub_91cd:
91cd: 55               push   bp
91ce: 8bec             mov    bp, sp
91d0: b80000           mov    ax, 0
91d3: 9a1207f791       fcall  sub_0712
91d8: 57               push   di
91d9: 56               push   si
91da: 8b4606           mov    ax, word ptr [bp + 6]
91dd: 0106200b         add    word ptr [0xb20], ax
91e1: 8b4608           mov    ax, word ptr [bp + 8]
91e4: 0106220b         add    word ptr [0xb22], ax
91e8: ff36240b         push   word ptr [0xb24]
91ec: ff36220b         push   word ptr [0xb22]
91f0: ff36200b         push   word ptr [0xb20]
91f4: 9a0748e08f       fcall  sub_4807
91f9: 83c406           add    sp, 6
91fc: 5e               pop    si
91fd: 5f               pop    di
91fe: c9               leave  
91ff: cb               retf   

sub_9200:
9200: 55               push   bp
9201: 8bec             mov    bp, sp
9203: b80200           mov    ax, 2
9206: 9a12071893       fcall  sub_0712
920b: 57               push   di
920c: 56               push   si
920d: ff7606           push   word ptr [bp + 6]
9210: 9a9a940000       lcall  0, 0x949a    ; <GetDC>
9215: 8946fe           mov    word ptr [bp - 2], ax
9218: ff76fe           push   word ptr [bp - 2]
921b: 6a64             push   0x64
921d: 6a64             push   0x64
921f: 9a3b920000       lcall  0, 0x923b    ; <CreateCompatibleBitmap>
9224: a3700b           mov    word ptr [0xb70], ax
9227: 833e700b00       cmp    word ptr [0xb70], 0
922c: 0f850300         jne    0x9233
9230: e9c700           jmp    0x92fa
9233: ff76fe           push   word ptr [bp - 2]
9236: 6a64             push   0x64
9238: 6a64             push   0x64
923a: 9a56920000       lcall  0, 0x9256    ; <CreateCompatibleBitmap>
923f: a3720b           mov    word ptr [0xb72], ax
9242: 833e720b00       cmp    word ptr [0xb72], 0
9247: 0f850300         jne    0x924e
924b: e9ac00           jmp    0x92fa
924e: ff76fe           push   word ptr [bp - 2]
9251: 6a64             push   0x64
9253: 6a64             push   0x64
9255: 9a71920000       lcall  0, 0x9271    ; <CreateCompatibleBitmap>
925a: a3740b           mov    word ptr [0xb74], ax
925d: 833e740b00       cmp    word ptr [0xb74], 0
9262: 0f850300         jne    0x9269
9266: e99100           jmp    0x92fa
9269: ff76fe           push   word ptr [bp - 2]
926c: 6a28             push   0x28
926e: 6a28             push   0x28
9270: 9a8c920000       lcall  0, 0x928c    ; <CreateCompatibleBitmap>
9275: a37a0b           mov    word ptr [0xb7a], ax
9278: 833e7a0b00       cmp    word ptr [0xb7a], 0
927d: 0f850300         jne    0x9284
9281: e97600           jmp    0x92fa
9284: ff76fe           push   word ptr [bp - 2]
9287: 6a28             push   0x28
9289: 6a28             push   0x28
928b: 9af0370000       lcall  0, 0x37f0    ; <CreateCompatibleBitmap>
9290: a37c0b           mov    word ptr [0xb7c], ax
9293: 833e7c0b00       cmp    word ptr [0xb7c], 0
9298: 0f850300         jne    0x929f
929c: e95b00           jmp    0x92fa
929f: c7066c2d0000     mov    word ptr [0x2d6c], 0
92a5: c7066e2d0000     mov    word ptr [0x2d6e], 0
92ab: 6a00             push   0
92ad: 9ab8920000       lcall  0, 0x92b8    ; <GetSystemMetrics>
92b2: a3702d           mov    word ptr [0x2d70], ax
92b5: 6a01             push   1
92b7: 9ae2300000       lcall  0, 0x30e2    ; <GetSystemMetrics>
92bc: a3722d           mov    word ptr [0x2d72], ax
92bf: ff7606           push   word ptr [bp + 6]
92c2: ff76fe           push   word ptr [bp - 2]
92c5: 9a01930000       lcall  0, 0x9301    ; <ReleaseDC>
92ca: c706662d0000     mov    word ptr [0x2d66], 0
92d0: c7067c2d0000     mov    word ptr [0x2d7c], 0
92d6: c706762d0000     mov    word ptr [0x2d76], 0
92dc: c706b00b0000     mov    word ptr [0xbb0], 0
92e2: c706b20b0000     mov    word ptr [0xbb2], 0
92e8: c706b40b0000     mov    word ptr [0xbb4], 0
92ee: c706b60b0000     mov    word ptr [0xbb6], 0
92f4: b80100           mov    ax, 1
92f7: e91100           jmp    0x930b
92fa: ff7606           push   word ptr [bp + 6]
92fd: ff76fe           push   word ptr [bp - 2]
9300: 9a84390000       lcall  0, 0x3984    ; <ReleaseDC>
9305: b80000           mov    ax, 0
9308: e90000           jmp    0x930b
930b: 5e               pop    si
930c: 5f               pop    di
930d: c9               leave  
930e: cb               retf   

sub_930f:
930f: 55               push   bp
9310: 8bec             mov    bp, sp
9312: b80000           mov    ax, 0
9315: 9a12075993       fcall  sub_0712
931a: 57               push   di
931b: 56               push   si
931c: ff367c0b         push   word ptr [0xb7c]
9320: 9a2a930000       lcall  0, 0x932a    ; <DeleteObject>
9325: ff367a0b         push   word ptr [0xb7a]
9329: 9a33930000       lcall  0, 0x9333    ; <DeleteObject>
932e: ff36700b         push   word ptr [0xb70]
9332: 9a3c930000       lcall  0, 0x933c    ; <DeleteObject>
9337: ff36720b         push   word ptr [0xb72]
933b: 9a45930000       lcall  0, 0x9345    ; <DeleteObject>
9340: ff36740b         push   word ptr [0xb74]
9344: 9a23390000       lcall  0, 0x3923    ; <DeleteObject>
9349: e90000           jmp    0x934c
934c: 5e               pop    si
934d: 5f               pop    di
934e: c9               leave  
934f: cb               retf   

sub_9350:
9350: 55               push   bp
9351: 8bec             mov    bp, sp
9353: b80000           mov    ax, 0
9356: 9a1207e893       fcall  sub_0712
935b: 57               push   di
935c: 56               push   si
935d: 8b4606           mov    ax, word ptr [bp + 6]
9360: a3980b           mov    word ptr [0xb98], ax
9363: 8b4608           mov    ax, word ptr [bp + 8]
9366: a39a0b           mov    word ptr [0xb9a], ax
9369: 8b5e0a           mov    bx, word ptr [bp + 0xa]
936c: 8bc3             mov    ax, bx
936e: d1e3             shl    bx, 1
9370: 03d8             add    bx, ax
9372: c1e302           shl    bx, 2
9375: 8b87c20b         mov    ax, word ptr [bx + 0xbc2]
9379: a3760b           mov    word ptr [0xb76], ax
937c: 8b5e0a           mov    bx, word ptr [bp + 0xa]
937f: 8bc3             mov    ax, bx
9381: d1e3             shl    bx, 1
9383: 03d8             add    bx, ax
9385: c1e302           shl    bx, 2
9388: 8b87c40b         mov    ax, word ptr [bx + 0xbc4]
938c: a3780b           mov    word ptr [0xb78], ax
938f: 8b5e0a           mov    bx, word ptr [bp + 0xa]
9392: 8bc3             mov    ax, bx
9394: d1e3             shl    bx, 1
9396: 03d8             add    bx, ax
9398: c1e302           shl    bx, 2
939b: 8b87c60b         mov    ax, word ptr [bx + 0xbc6]
939f: a37e0b           mov    word ptr [0xb7e], ax
93a2: 8b5e0a           mov    bx, word ptr [bp + 0xa]
93a5: 8bc3             mov    ax, bx
93a7: d1e3             shl    bx, 1
93a9: 03d8             add    bx, ax
93ab: c1e302           shl    bx, 2
93ae: 8b87c80b         mov    ax, word ptr [bx + 0xbc8]
93b2: a3800b           mov    word ptr [0xb80], ax
93b5: 8b5e0a           mov    bx, word ptr [bp + 0xa]
93b8: 8bc3             mov    ax, bx
93ba: d1e3             shl    bx, 1
93bc: 03d8             add    bx, ax
93be: c1e302           shl    bx, 2
93c1: 8b87ca0b         mov    ax, word ptr [bx + 0xbca]
93c5: a39c0b           mov    word ptr [0xb9c], ax
93c8: 8b5e0a           mov    bx, word ptr [bp + 0xa]
93cb: 8bc3             mov    ax, bx
93cd: d1e3             shl    bx, 1
93cf: 03d8             add    bx, ax
93d1: c1e302           shl    bx, 2
93d4: 8b87cc0b         mov    ax, word ptr [bx + 0xbcc]
93d8: a39e0b           mov    word ptr [0xb9e], ax
93db: 5e               pop    si
93dc: 5f               pop    di
93dd: c9               leave  
93de: cb               retf   

sub_93df:
93df: 55               push   bp
93e0: 8bec             mov    bp, sp
93e2: b80000           mov    ax, 0
93e5: 9a12074194       fcall  sub_0712
93ea: 57               push   di
93eb: 56               push   si
93ec: 833e762d00       cmp    word ptr [0x2d76], 0
93f1: 0f840300         je     0x93f8
93f5: e93c00           jmp    0x9434
93f8: c706b00b0000     mov    word ptr [0xbb0], 0
93fe: c706b20b0000     mov    word ptr [0xbb2], 0
9404: c706b40b0000     mov    word ptr [0xbb4], 0
940a: c706b60b0000     mov    word ptr [0xbb6], 0
9410: ff7606           push   word ptr [bp + 6]
9413: 6a00             push   0
9415: 6a00             push   0
9417: 6a00             push   0
9419: 6a00             push   0
941b: 6a01             push   1
941d: 9abc390000       lcall  0, 0x39bc    ; <MoveWindow>
9422: c706920b0100     mov    word ptr [0xb92], 1
9428: c706da230100     mov    word ptr [0x23da], 1
942e: c706960b0000     mov    word ptr [0xb96], 0
9434: 5e               pop    si
9435: 5f               pop    di
9436: c9               leave  
9437: cb               retf   

sub_9438:
9438: 55               push   bp
9439: 8bec             mov    bp, sp
943b: b81e00           mov    ax, 0x1e
943e: 9a1207d691       fcall  sub_0712
9443: 57               push   di
9444: 56               push   si
9445: 833e900b00       cmp    word ptr [0xb90], 0
944a: 0f840300         je     0x9451
944e: e9f405           jmp    0x9a45
9451: a1980b           mov    ax, word ptr [0xb98]
9454: 3906b00b         cmp    word ptr [0xbb0], ax
9458: 0f853600         jne    0x9492
945c: a19a0b           mov    ax, word ptr [0xb9a]
945f: 3906b20b         cmp    word ptr [0xbb2], ax
9463: 0f852b00         jne    0x9492
9467: a1760b           mov    ax, word ptr [0xb76]
946a: 3906960b         cmp    word ptr [0xb96], ax
946e: 0f852000         jne    0x9492
9472: a17e0b           mov    ax, word ptr [0xb7e]
9475: 3906860b         cmp    word ptr [0xb86], ax
9479: 0f851500         jne    0x9492
947d: 833e662d00       cmp    word ptr [0x2d66], 0
9482: 0f850c00         jne    0x9492
9486: 833e7c2d00       cmp    word ptr [0x2d7c], 0
948b: 0f850300         jne    0x9492
948f: e9b305           jmp    0x9a45
9492: 83368e0b01       xor    word ptr [0xb8e], 1
9497: 6a00             push   0
9499: 9a3a370000       lcall  0, 0x373a    ; <GetDC>
949e: 8946fe           mov    word ptr [bp - 2], ax
94a1: ff76fe           push   word ptr [bp - 2]
94a4: ff366a2d         push   word ptr [0x2d6a]
94a8: 6a00             push   0
94aa: 9acf940000       lcall  0, 0x94cf    ; <SelectPalette>
94af: ff76fe           push   word ptr [bp - 2]
94b2: 9abe940000       lcall  0, 0x94be    ; <CreateCompatibleDC>
94b7: 8946fc           mov    word ptr [bp - 4], ax
94ba: ff76fe           push   word ptr [bp - 2]
94bd: 9a32380000       lcall  0, 0x3832    ; <CreateCompatibleDC>
94c2: 8946fa           mov    word ptr [bp - 6], ax
94c5: ff76fa           push   word ptr [bp - 6]
94c8: ff366a2d         push   word ptr [0x2d6a]
94cc: 6a00             push   0
94ce: 9add940000       lcall  0, 0x94dd    ; <SelectPalette>
94d3: ff76fc           push   word ptr [bp - 4]
94d6: ff366a2d         push   word ptr [0x2d6a]
94da: 6a00             push   0
94dc: 9a4b370000       lcall  0, 0x374b    ; <SelectPalette>
94e1: a1b00b           mov    ax, word ptr [0xbb0]
94e4: 3b06980b         cmp    ax, word ptr [0xb98]
94e8: 0f8d0300         jge    0x94ef
94ec: a1980b           mov    ax, word ptr [0xb98]
94ef: 8946ea           mov    word ptr [bp - 0x16], ax
94f2: a1b20b           mov    ax, word ptr [0xbb2]
94f5: 3b069a0b         cmp    ax, word ptr [0xb9a]
94f9: 0f8d0300         jge    0x9500
94fd: a19a0b           mov    ax, word ptr [0xb9a]
9500: 8946ec           mov    word ptr [bp - 0x14], ax
9503: a1b40b           mov    ax, word ptr [0xbb4]
9506: 0306b00b         add    ax, word ptr [0xbb0]
950a: 8b0e9c0b         mov    cx, word ptr [0xb9c]
950e: 030e980b         add    cx, word ptr [0xb98]
9512: 3bc1             cmp    ax, cx
9514: 0f8e0200         jle    0x951a
9518: 8bc1             mov    ax, cx
951a: 2b46ea           sub    ax, word ptr [bp - 0x16]
951d: 8946ee           mov    word ptr [bp - 0x12], ax
9520: a1b20b           mov    ax, word ptr [0xbb2]
9523: 0306b60b         add    ax, word ptr [0xbb6]
9527: 8b0e9a0b         mov    cx, word ptr [0xb9a]
952b: 030e9e0b         add    cx, word ptr [0xb9e]
952f: 3bc1             cmp    ax, cx
9531: 0f8e0200         jle    0x9537
9535: 8bc1             mov    ax, cx
9537: 2b46ec           sub    ax, word ptr [bp - 0x14]
953a: 8946f0           mov    word ptr [bp - 0x10], ax
953d: 837eee00         cmp    word ptr [bp - 0x12], 0
9541: 0f8e0800         jle    0x954d
9545: 837ef000         cmp    word ptr [bp - 0x10], 0
9549: 0f8f6600         jg     0x95b3
954d: c706b80b0100     mov    word ptr [0xbb8], 1
9553: 833e920b00       cmp    word ptr [0xb92], 0
9558: 0f840600         je     0x9562
955c: c706920b0000     mov    word ptr [0xb92], 0
9562: a1980b           mov    ax, word ptr [0xb98]
9565: a3a00b           mov    word ptr [0xba0], ax
9568: a19a0b           mov    ax, word ptr [0xb9a]
956b: a3a20b           mov    word ptr [0xba2], ax
956e: a19c0b           mov    ax, word ptr [0xb9c]
9571: a3a40b           mov    word ptr [0xba4], ax
9574: a19e0b           mov    ax, word ptr [0xb9e]
9577: a3a60b           mov    word ptr [0xba6], ax
957a: ff76fc           push   word ptr [bp - 4]
957d: 8b1e8e0b         mov    bx, word ptr [0xb8e]
9581: d1e3             shl    bx, 1
9583: ffb7700b         push   word ptr [bx + 0xb70]
9587: 9a41380000       lcall  0, 0x3841    ; <SelectObject>
958c: ff76fc           push   word ptr [bp - 4]
958f: 6a00             push   0
9591: 6a00             push   0
9593: ff36a40b         push   word ptr [0xba4]
9597: ff36a60b         push   word ptr [0xba6]
959b: ff76fe           push   word ptr [bp - 2]
959e: ff36a00b         push   word ptr [0xba0]
95a2: ff36a20b         push   word ptr [0xba2]
95a6: 68cc00           push   0xcc
95a9: 6a20             push   0x20
95ab: 9a5f380000       lcall  0, 0x385f    ; <BitBlt>
95b0: e99001           jmp    0x9743
95b3: c706b80b0000     mov    word ptr [0xbb8], 0
95b9: a1b00b           mov    ax, word ptr [0xbb0]
95bc: 3b06980b         cmp    ax, word ptr [0xb98]
95c0: 0f8e0300         jle    0x95c7
95c4: a1980b           mov    ax, word ptr [0xb98]
95c7: a3a00b           mov    word ptr [0xba0], ax
95ca: a1b20b           mov    ax, word ptr [0xbb2]
95cd: 3b069a0b         cmp    ax, word ptr [0xb9a]
95d1: 0f8e0300         jle    0x95d8
95d5: a19a0b           mov    ax, word ptr [0xb9a]
95d8: a3a20b           mov    word ptr [0xba2], ax
95db: a1b40b           mov    ax, word ptr [0xbb4]
95de: 0306b00b         add    ax, word ptr [0xbb0]
95e2: 8b0e9c0b         mov    cx, word ptr [0xb9c]
95e6: 030e980b         add    cx, word ptr [0xb98]
95ea: 3bc1             cmp    ax, cx
95ec: 0f8d0200         jge    0x95f2
95f0: 8bc1             mov    ax, cx
95f2: 2b06a00b         sub    ax, word ptr [0xba0]
95f6: a3a40b           mov    word ptr [0xba4], ax
95f9: a1b20b           mov    ax, word ptr [0xbb2]
95fc: 0306b60b         add    ax, word ptr [0xbb6]
9600: 8b0e9a0b         mov    cx, word ptr [0xb9a]
9604: 030e9e0b         add    cx, word ptr [0xb9e]
9608: 3bc1             cmp    ax, cx
960a: 0f8d0200         jge    0x9610
960e: 8bc1             mov    ax, cx
9610: 2b06a20b         sub    ax, word ptr [0xba2]
9614: a3a60b           mov    word ptr [0xba6], ax
9617: ff76fc           push   word ptr [bp - 4]
961a: 8b1e8e0b         mov    bx, word ptr [0xb8e]
961e: d1e3             shl    bx, 1
9620: ffb7700b         push   word ptr [bx + 0xb70]
9624: 9a1d970000       lcall  0, 0x971d    ; <SelectObject>
9629: ff76fc           push   word ptr [bp - 4]
962c: 6a00             push   0
962e: 6a00             push   0
9630: ff36a40b         push   word ptr [0xba4]
9634: ff36a60b         push   word ptr [0xba6]
9638: ff76fe           push   word ptr [bp - 2]
963b: ff36a00b         push   word ptr [0xba0]
963f: ff36a20b         push   word ptr [0xba2]
9643: 68cc00           push   0xcc
9646: 6a20             push   0x20
9648: 9a3f970000       lcall  0, 0x973f    ; <BitBlt>
964d: a1a80b           mov    ax, word ptr [0xba8]
9650: 3b06a00b         cmp    ax, word ptr [0xba0]
9654: 0f8d0300         jge    0x965b
9658: a1a00b           mov    ax, word ptr [0xba0]
965b: 8946e2           mov    word ptr [bp - 0x1e], ax
965e: a1aa0b           mov    ax, word ptr [0xbaa]
9661: 3b06a20b         cmp    ax, word ptr [0xba2]
9665: 0f8d0300         jge    0x966c
9669: a1a20b           mov    ax, word ptr [0xba2]
966c: 8946e4           mov    word ptr [bp - 0x1c], ax
966f: a1ac0b           mov    ax, word ptr [0xbac]
9672: 0306a80b         add    ax, word ptr [0xba8]
9676: 8b0ea40b         mov    cx, word ptr [0xba4]
967a: 030ea00b         add    cx, word ptr [0xba0]
967e: 3bc1             cmp    ax, cx
9680: 0f8e0200         jle    0x9686
9684: 8bc1             mov    ax, cx
9686: 2b46e2           sub    ax, word ptr [bp - 0x1e]
9689: 8946e6           mov    word ptr [bp - 0x1a], ax
968c: a1aa0b           mov    ax, word ptr [0xbaa]
968f: 0306ae0b         add    ax, word ptr [0xbae]
9693: 8b0ea20b         mov    cx, word ptr [0xba2]
9697: 030ea60b         add    cx, word ptr [0xba6]
969b: 3bc1             cmp    ax, cx
969d: 0f8e0200         jle    0x96a3
96a1: 8bc1             mov    ax, cx
96a3: 2b46e4           sub    ax, word ptr [bp - 0x1c]
96a6: 8946e8           mov    word ptr [bp - 0x18], ax
96a9: 8b46e2           mov    ax, word ptr [bp - 0x1e]
96ac: 2b06a00b         sub    ax, word ptr [0xba0]
96b0: 3d0000           cmp    ax, 0
96b3: 0f8d0300         jge    0x96ba
96b7: b80000           mov    ax, 0
96ba: 8946ea           mov    word ptr [bp - 0x16], ax
96bd: 8b46e4           mov    ax, word ptr [bp - 0x1c]
96c0: 2b06a20b         sub    ax, word ptr [0xba2]
96c4: 3d0000           cmp    ax, 0
96c7: 0f8d0300         jge    0x96ce
96cb: b80000           mov    ax, 0
96ce: 8946ec           mov    word ptr [bp - 0x14], ax
96d1: 8b46e2           mov    ax, word ptr [bp - 0x1e]
96d4: 2b06a80b         sub    ax, word ptr [0xba8]
96d8: 3d0000           cmp    ax, 0
96db: 0f8d0300         jge    0x96e2
96df: b80000           mov    ax, 0
96e2: 8946f2           mov    word ptr [bp - 0xe], ax
96e5: 8b46e4           mov    ax, word ptr [bp - 0x1c]
96e8: 2b06aa0b         sub    ax, word ptr [0xbaa]
96ec: 3d0000           cmp    ax, 0
96ef: 0f8d0300         jge    0x96f6
96f3: b80000           mov    ax, 0
96f6: 8946f4           mov    word ptr [bp - 0xc], ax
96f9: 837ee600         cmp    word ptr [bp - 0x1a], 0
96fd: 0f8e4200         jle    0x9743
9701: 837ee800         cmp    word ptr [bp - 0x18], 0
9705: 0f8e3a00         jle    0x9743
9709: ff76fa           push   word ptr [bp - 6]
970c: 8a1e8e0b         mov    bl, byte ptr [0xb8e]
9710: 80ebff           sub    bl, 0xff
9713: 83e301           and    bx, 1
9716: d1e3             shl    bx, 1
9718: ffb7700b         push   word ptr [bx + 0xb70]
971c: 9a54970000       lcall  0, 0x9754    ; <SelectObject>
9721: ff76fc           push   word ptr [bp - 4]
9724: ff76ea           push   word ptr [bp - 0x16]
9727: ff76ec           push   word ptr [bp - 0x14]
972a: ff76e6           push   word ptr [bp - 0x1a]
972d: ff76e8           push   word ptr [bp - 0x18]
9730: ff76fa           push   word ptr [bp - 6]
9733: ff76f2           push   word ptr [bp - 0xe]
9736: ff76f4           push   word ptr [bp - 0xc]
9739: 68cc00           push   0xcc
973c: 6a20             push   0x20
973e: 9a74970000       lcall  0, 0x9774    ; <BitBlt>
9743: 833e760b00       cmp    word ptr [0xb76], 0
9748: 0f849d02         je     0x99e9
974c: ff76fa           push   word ptr [bp - 6]
974f: ff36740b         push   word ptr [0xb74]
9753: 9ac3970000       lcall  0, 0x97c3    ; <SelectObject>
9758: ff76fa           push   word ptr [bp - 6]
975b: 6a00             push   0
975d: 6a00             push   0
975f: ff36a40b         push   word ptr [0xba4]
9763: ff36a60b         push   word ptr [0xba6]
9767: ff76fc           push   word ptr [bp - 4]
976a: 6a00             push   0
976c: 6a00             push   0
976e: 68cc00           push   0xcc
9771: 6a20             push   0x20
9773: 9aef970000       lcall  0, 0x97ef    ; <BitBlt>
9778: a1980b           mov    ax, word ptr [0xb98]
977b: 2b06a00b         sub    ax, word ptr [0xba0]
977f: 3d0000           cmp    ax, 0
9782: 0f8d0300         jge    0x9789
9786: b80000           mov    ax, 0
9789: 8946ea           mov    word ptr [bp - 0x16], ax
978c: a19a0b           mov    ax, word ptr [0xb9a]
978f: 2b06a20b         sub    ax, word ptr [0xba2]
9793: 3d0000           cmp    ax, 0
9796: 0f8d0300         jge    0x979d
979a: b80000           mov    ax, 0
979d: 8946ec           mov    word ptr [bp - 0x14], ax
97a0: 833e780b00       cmp    word ptr [0xb78], 0
97a5: 0f84de01         je     0x9987
97a9: 833e662d00       cmp    word ptr [0x2d66], 0
97ae: 0f846c01         je     0x991e
97b2: 833e662d01       cmp    word ptr [0x2d66], 1
97b7: 0f857000         jne    0x982b
97bb: ff76fc           push   word ptr [bp - 4]
97be: ff36780b         push   word ptr [0xb78]
97c2: 9acf970000       lcall  0, 0x97cf    ; <SelectObject>
97c7: ff76fa           push   word ptr [bp - 6]
97ca: ff367c0b         push   word ptr [0xb7c]
97ce: 9afb970000       lcall  0, 0x97fb    ; <SelectObject>
97d3: ff76fa           push   word ptr [bp - 6]
97d6: 6a00             push   0
97d8: 6a00             push   0
97da: 6a28             push   0x28
97dc: 6a28             push   0x28
97de: ff76fc           push   word ptr [bp - 4]
97e1: ff367e0b         push   word ptr [0xb7e]
97e5: ff36800b         push   word ptr [0xb80]
97e9: 68cc00           push   0xcc
97ec: 6a20             push   0x20
97ee: 9a27980000       lcall  0, 0x9827    ; <BitBlt>
97f3: ff76fc           push   word ptr [bp - 4]
97f6: ff36760b         push   word ptr [0xb76]
97fa: 9a07980000       lcall  0, 0x9807    ; <SelectObject>
97ff: ff76fa           push   word ptr [bp - 6]
9802: ff367a0b         push   word ptr [0xb7a]
9806: 9a33980000       lcall  0, 0x9833    ; <SelectObject>
980b: ff76fa           push   word ptr [bp - 6]
980e: 6a00             push   0
9810: 6a00             push   0
9812: 6a28             push   0x28
9814: 6a28             push   0x28
9816: ff76fc           push   word ptr [bp - 4]
9819: ff367e0b         push   word ptr [0xb7e]
981d: ff36800b         push   word ptr [0xb80]
9821: 68cc00           push   0xcc
9824: 6a20             push   0x20
9826: 9a6a980000       lcall  0, 0x986a    ; <BitBlt>
982b: ff76fc           push   word ptr [bp - 4]
982e: ff367c0b         push   word ptr [0xb7c]
9832: 9a3f980000       lcall  0, 0x983f    ; <SelectObject>
9837: ff76fa           push   word ptr [bp - 6]
983a: ff36d213         push   word ptr [0x13d2]
983e: 9a76980000       lcall  0, 0x9876    ; <SelectObject>
9843: ff76fc           push   word ptr [bp - 4]
9846: a1662d           mov    ax, word ptr [0x2d66]
9849: 48               dec    ax
984a: 50               push   ax
984b: a1662d           mov    ax, word ptr [0x2d66]
984e: 48               dec    ax
984f: 50               push   ax
9850: b82900           mov    ax, 0x29
9853: 2b06662d         sub    ax, word ptr [0x2d66]
9857: 50               push   ax
9858: 6a28             push   0x28
985a: ff76fa           push   word ptr [bp - 6]
985d: ff36d613         push   word ptr [0x13d6]
9861: 6a00             push   0
9863: 68ee00           push   0xee
9866: 688600           push   0x86
9869: 9aad980000       lcall  0, 0x98ad    ; <BitBlt>
986e: ff76fc           push   word ptr [bp - 4]
9871: ff367a0b         push   word ptr [0xb7a]
9875: 9a82980000       lcall  0, 0x9882    ; <SelectObject>
987a: ff76fa           push   word ptr [bp - 6]
987d: ff36d413         push   word ptr [0x13d4]
9881: 9ab9980000       lcall  0, 0x98b9    ; <SelectObject>
9886: ff76fc           push   word ptr [bp - 4]
9889: a1662d           mov    ax, word ptr [0x2d66]
988c: 48               dec    ax
988d: 50               push   ax
988e: a1662d           mov    ax, word ptr [0x2d66]
9891: 48               dec    ax
9892: 50               push   ax
9893: b82900           mov    ax, 0x29
9896: 2b06662d         sub    ax, word ptr [0x2d66]
989a: 50               push   ax
989b: 6a28             push   0x28
989d: ff76fa           push   word ptr [bp - 6]
98a0: ff36d613         push   word ptr [0x13d6]
98a4: 6a00             push   0
98a6: 688800           push   0x88
98a9: 68c600           push   0xc6
98ac: 9ae8980000       lcall  0, 0x98e8    ; <BitBlt>
98b1: ff76fa           push   word ptr [bp - 6]
98b4: ff36740b         push   word ptr [0xb74]
98b8: 9ac5980000       lcall  0, 0x98c5    ; <SelectObject>
98bd: ff76fc           push   word ptr [bp - 4]
98c0: ff367c0b         push   word ptr [0xb7c]
98c4: 9af4980000       lcall  0, 0x98f4    ; <SelectObject>
98c9: ff76fa           push   word ptr [bp - 6]
98cc: ff76ea           push   word ptr [bp - 0x16]
98cf: ff76ec           push   word ptr [bp - 0x14]
98d2: ff369c0b         push   word ptr [0xb9c]
98d6: ff369e0b         push   word ptr [0xb9e]
98da: ff76fc           push   word ptr [bp - 4]
98dd: 6a00             push   0
98df: 6a00             push   0
98e1: 688800           push   0x88
98e4: 68c600           push   0xc6
98e7: 9a17990000       lcall  0, 0x9917    ; <BitBlt>
98ec: ff76fc           push   word ptr [bp - 4]
98ef: ff367a0b         push   word ptr [0xb7a]
98f3: 9a26990000       lcall  0, 0x9926    ; <SelectObject>
98f8: ff76fa           push   word ptr [bp - 6]
98fb: ff76ea           push   word ptr [bp - 0x16]
98fe: ff76ec           push   word ptr [bp - 0x14]
9901: ff369c0b         push   word ptr [0xb9c]
9905: ff369e0b         push   word ptr [0xb9e]
9909: ff76fc           push   word ptr [bp - 4]
990c: 6a00             push   0
990e: 6a00             push   0
9910: 68ee00           push   0xee
9913: 688600           push   0x86
9916: 9a4d990000       lcall  0, 0x994d    ; <BitBlt>
991b: e96600           jmp    0x9984
991e: ff76fc           push   word ptr [bp - 4]
9921: ff36780b         push   word ptr [0xb78]
9925: 9a59990000       lcall  0, 0x9959    ; <SelectObject>
992a: ff76fa           push   word ptr [bp - 6]
992d: ff76ea           push   word ptr [bp - 0x16]
9930: ff76ec           push   word ptr [bp - 0x14]
9933: ff369c0b         push   word ptr [0xb9c]
9937: ff369e0b         push   word ptr [0xb9e]
993b: ff76fc           push   word ptr [bp - 4]
993e: ff367e0b         push   word ptr [0xb7e]
9942: ff36800b         push   word ptr [0xb80]
9946: 688800           push   0x88
9949: 68c600           push   0xc6
994c: 9aac950000       lcall  0, 0x95ac    ; <BitBlt>
9951: ff76fc           push   word ptr [bp - 4]
9954: ff36760b         push   word ptr [0xb76]
9958: 9a88950000       lcall  0, 0x9588    ; <SelectObject>
995d: ff76fa           push   word ptr [bp - 6]
9960: ff76ea           push   word ptr [bp - 0x16]
9963: ff76ec           push   word ptr [bp - 0x14]
9966: ff369c0b         push   word ptr [0xb9c]
996a: ff369e0b         push   word ptr [0xb9e]
996e: ff76fc           push   word ptr [bp - 4]
9971: ff367e0b         push   word ptr [0xb7e]
9975: ff36800b         push   word ptr [0xb80]
9979: 68ee00           push   0xee
997c: 688600           push   0x86
997f: 9ab5990000       lcall  0, 0x99b5    ; <BitBlt>
9984: e93200           jmp    0x99b9
9987: ff76fc           push   word ptr [bp - 4]
998a: ff36760b         push   word ptr [0xb76]
998e: 9aad9a0000       lcall  0, 0x9aad    ; <SelectObject>
9993: ff76fa           push   word ptr [bp - 6]
9996: ff76ea           push   word ptr [bp - 0x16]
9999: ff76ec           push   word ptr [bp - 0x14]
999c: ff369c0b         push   word ptr [0xb9c]
99a0: ff369e0b         push   word ptr [0xb9e]
99a4: ff76fc           push   word ptr [bp - 4]
99a7: ff367e0b         push   word ptr [0xb7e]
99ab: ff36800b         push   word ptr [0xb80]
99af: 68cc00           push   0xcc
99b2: 6a20             push   0x20
99b4: 9acd9a0000       lcall  0, 0x9acd    ; <BitBlt>
99b9: c706900b0100     mov    word ptr [0xb90], 1
99bf: c7067e2d0100     mov    word ptr [0x2d7e], 1
99c5: ff7606           push   word ptr [bp + 6]
99c8: ff36a00b         push   word ptr [0xba0]
99cc: ff36a20b         push   word ptr [0xba2]
99d0: ff36a40b         push   word ptr [0xba4]
99d4: a1a60b           mov    ax, word ptr [0xba6]
99d7: 03067c2d         add    ax, word ptr [0x2d7c]
99db: 50               push   ax
99dc: 6a01             push   1
99de: 9a1e940000       lcall  0, 0x941e    ; <MoveWindow>
99e3: c7067e2d0000     mov    word ptr [0x2d7e], 0
99e9: ff76fc           push   word ptr [bp - 4]
99ec: 9af5990000       lcall  0, 0x99f5    ; <DeleteDC>
99f1: ff76fa           push   word ptr [bp - 6]
99f4: 9a3b9c0000       lcall  0, 0x9c3b    ; <DeleteDC>
99f9: a1a00b           mov    ax, word ptr [0xba0]
99fc: a3a80b           mov    word ptr [0xba8], ax
99ff: a1a20b           mov    ax, word ptr [0xba2]
9a02: a3aa0b           mov    word ptr [0xbaa], ax
9a05: a1a40b           mov    ax, word ptr [0xba4]
9a08: a3ac0b           mov    word ptr [0xbac], ax
9a0b: a1a60b           mov    ax, word ptr [0xba6]
9a0e: a3ae0b           mov    word ptr [0xbae], ax
9a11: a1980b           mov    ax, word ptr [0xb98]
9a14: a3b00b           mov    word ptr [0xbb0], ax
9a17: a19a0b           mov    ax, word ptr [0xb9a]
9a1a: a3b20b           mov    word ptr [0xbb2], ax
9a1d: a19c0b           mov    ax, word ptr [0xb9c]
9a20: a3b40b           mov    word ptr [0xbb4], ax
9a23: a19e0b           mov    ax, word ptr [0xb9e]
9a26: a3b60b           mov    word ptr [0xbb6], ax
9a29: a1760b           mov    ax, word ptr [0xb76]
9a2c: a3960b           mov    word ptr [0xb96], ax
9a2f: a17e0b           mov    ax, word ptr [0xb7e]
9a32: a3860b           mov    word ptr [0xb86], ax
9a35: a1800b           mov    ax, word ptr [0xb80]
9a38: a3880b           mov    word ptr [0xb88], ax
9a3b: 6a00             push   0
9a3d: ff76fe           push   word ptr [bp - 2]
9a40: 9ab99c0000       lcall  0, 0x9cb9    ; <ReleaseDC>
9a45: 5e               pop    si
9a46: 5f               pop    di
9a47: c9               leave  
9a48: cb               retf   

sub_9a49:
9a49: 55               push   bp
9a4a: 8bec             mov    bp, sp
9a4c: b80e00           mov    ax, 0xe
9a4f: 9a12070992       fcall  sub_0712
9a54: 57               push   di
9a55: 56               push   si
9a56: 833e900b00       cmp    word ptr [0xb90], 0
9a5b: 0f850600         jne    0x9a65
9a5f: b80100           mov    ax, 1
9a62: e97702           jmp    0x9cdc
9a65: c706900b0000     mov    word ptr [0xb90], 0
9a6b: ff7606           push   word ptr [bp + 6]
9a6e: 9a11920000       lcall  0, 0x9211    ; <GetDC>
9a73: 8946fe           mov    word ptr [bp - 2], ax
9a76: ff76fe           push   word ptr [bp - 2]
9a79: ff366a2d         push   word ptr [0x2d6a]
9a7d: 6a00             push   0
9a7f: 9aa19a0000       lcall  0, 0x9aa1    ; <SelectPalette>
9a84: ff76fe           push   word ptr [bp - 2]
9a87: 9a53370000       lcall  0, 0x3753    ; <RealizePalette>
9a8c: ff76fe           push   word ptr [bp - 2]
9a8f: 9a679b0000       lcall  0, 0x9b67    ; <CreateCompatibleDC>
9a94: 8946fc           mov    word ptr [bp - 4], ax
9a97: ff76fc           push   word ptr [bp - 4]
9a9a: ff366a2d         push   word ptr [0x2d6a]
9a9e: 6a00             push   0
9aa0: 9aab940000       lcall  0, 0x94ab    ; <SelectPalette>
9aa5: ff76fc           push   word ptr [bp - 4]
9aa8: ff36740b         push   word ptr [0xb74]
9aac: 9a769b0000       lcall  0, 0x9b76    ; <SelectObject>
9ab1: ff76fe           push   word ptr [bp - 2]
9ab4: 6a00             push   0
9ab6: 6a00             push   0
9ab8: ff36a40b         push   word ptr [0xba4]
9abc: ff36a60b         push   word ptr [0xba6]
9ac0: ff76fc           push   word ptr [bp - 4]
9ac3: 6a00             push   0
9ac5: 6a00             push   0
9ac7: 68cc00           push   0xcc
9aca: 6a20             push   0x20
9acc: 9a949b0000       lcall  0, 0x9b94    ; <BitBlt>
9ad1: 833e7c2d00       cmp    word ptr [0x2d7c], 0
9ad6: 0f847001         je     0x9c4a
9ada: 833ed82300       cmp    word ptr [0x23d8], 0
9adf: 0f852600         jne    0x9b09
9ae3: ff76fe           push   word ptr [bp - 2]
9ae6: 6a28             push   0x28
9ae8: a1722d           mov    ax, word ptr [0x2d72]
9aeb: c1e002           shl    ax, 2
9aee: b90500           mov    cx, 5
9af1: 99               cdq    
9af2: f7f9             idiv   cx
9af4: 50               push   ax
9af5: 9a259b0000       lcall  0, 0x9b25    ; <CreateCompatibleBitmap>
9afa: a3d823           mov    word ptr [0x23d8], ax
9afd: 833ed82300       cmp    word ptr [0x23d8], 0
9b02: 0f850300         jne    0x9b09
9b06: e9ba01           jmp    0x9cc3
9b09: 833ed22300       cmp    word ptr [0x23d2], 0
9b0e: 0f852600         jne    0x9b38
9b12: ff76fe           push   word ptr [bp - 2]
9b15: 6a28             push   0x28
9b17: a1722d           mov    ax, word ptr [0x2d72]
9b1a: c1e002           shl    ax, 2
9b1d: b90500           mov    cx, 5
9b20: 99               cdq    
9b21: f7f9             idiv   cx
9b23: 50               push   ax
9b24: 9a20920000       lcall  0, 0x9220    ; <CreateCompatibleBitmap>
9b29: a3d223           mov    word ptr [0x23d2], ax
9b2c: 833ed22300       cmp    word ptr [0x23d2], 0
9b31: 0f850300         jne    0x9b38
9b35: e98b01           jmp    0x9cc3
9b38: 833e642d00       cmp    word ptr [0x2d64], 0
9b3d: 0f850c00         jne    0x9b4d
9b41: 6a00             push   0
9b43: 6aff             push   -1
9b45: 9a5c9b0000       lcall  0, 0x9b5c    ; <CreateSolidBrush>
9b4a: a3642d           mov    word ptr [0x2d64], ax
9b4d: 833ed42300       cmp    word ptr [0x23d4], 0
9b52: 0f850d00         jne    0x9b63
9b56: 6a00             push   0
9b58: 688080           push   0x8080
9b5b: 9a11380000       lcall  0, 0x3811    ; <CreateSolidBrush>
9b60: a3d423           mov    word ptr [0x23d4], ax
9b63: ff76fe           push   word ptr [bp - 2]
9b66: 9ab3940000       lcall  0, 0x94b3    ; <CreateCompatibleDC>
9b6b: 8946f2           mov    word ptr [bp - 0xe], ax
9b6e: ff76f2           push   word ptr [bp - 0xe]
9b71: ff36d223         push   word ptr [0x23d2]
9b75: 9ab59b0000       lcall  0, 0x9bb5    ; <SelectObject>
9b7a: ff76f2           push   word ptr [bp - 0xe]
9b7d: 6a00             push   0
9b7f: 6a00             push   0
9b81: 6a28             push   0x28
9b83: ff367c2d         push   word ptr [0x2d7c]
9b87: ff76fe           push   word ptr [bp - 2]
9b8a: 6a00             push   0
9b8c: 6a28             push   0x28
9b8e: 68cc00           push   0xcc
9b91: 6a20             push   0x20
9b93: 9ae59b0000       lcall  0, 0x9be5    ; <BitBlt>
9b98: c746f40000       mov    word ptr [bp - 0xc], 0
9b9d: c746f60000       mov    word ptr [bp - 0xa], 0
9ba2: c746f82800       mov    word ptr [bp - 8], 0x28
9ba7: a17c2d           mov    ax, word ptr [0x2d7c]
9baa: 8946fa           mov    word ptr [bp - 6], ax
9bad: ff76fc           push   word ptr [bp - 4]
9bb0: ff36d823         push   word ptr [0x23d8]
9bb4: 9a25960000       lcall  0, 0x9625    ; <SelectObject>
9bb9: ff76fc           push   word ptr [bp - 4]
9bbc: 8d46f4           lea    ax, [bp - 0xc]
9bbf: 16               push   ss
9bc0: 50               push   ax
9bc1: ff36642d         push   word ptr [0x2d64]
9bc5: 9af69b0000       lcall  0, 0x9bf6    ; <FillRect>
9bca: ff76f2           push   word ptr [bp - 0xe]
9bcd: 6a00             push   0
9bcf: 6a00             push   0
9bd1: 6a28             push   0x28
9bd3: ff367c2d         push   word ptr [0x2d7c]
9bd7: ff76fc           push   word ptr [bp - 4]
9bda: 6a00             push   0
9bdc: 6a00             push   0
9bde: 688800           push   0x88
9be1: 68c600           push   0xc6
9be4: 9a159c0000       lcall  0, 0x9c15    ; <BitBlt>
9be9: ff76fc           push   word ptr [bp - 4]
9bec: 8d46f4           lea    ax, [bp - 0xc]
9bef: 16               push   ss
9bf0: 50               push   ax
9bf1: ff36d423         push   word ptr [0x23d4]
9bf5: 9a91380000       lcall  0, 0x3891    ; <FillRect>
9bfa: ff76f2           push   word ptr [bp - 0xe]
9bfd: 6a00             push   0
9bff: 6a00             push   0
9c01: 6a28             push   0x28
9c03: ff367c2d         push   word ptr [0x2d7c]
9c07: ff76fc           push   word ptr [bp - 4]
9c0a: 6a00             push   0
9c0c: 6a00             push   0
9c0e: 68ee00           push   0xee
9c11: 688600           push   0x86
9c14: 9a339c0000       lcall  0, 0x9c33    ; <BitBlt>
9c19: ff76fe           push   word ptr [bp - 2]
9c1c: 6a00             push   0
9c1e: 6a28             push   0x28
9c20: 6a28             push   0x28
9c22: ff367c2d         push   word ptr [0x2d7c]
9c26: ff76f2           push   word ptr [bp - 0xe]
9c29: 6a00             push   0
9c2b: 6a00             push   0
9c2d: 68cc00           push   0xcc
9c30: 6a20             push   0x20
9c32: 9a49960000       lcall  0, 0x9649    ; <BitBlt>
9c37: ff76f2           push   word ptr [bp - 0xe]
9c3a: 9a439c0000       lcall  0, 0x9c43    ; <DeleteDC>
9c3f: ff76fc           push   word ptr [bp - 4]
9c42: 9aae9c0000       lcall  0, 0x9cae    ; <DeleteDC>
9c47: e96800           jmp    0x9cb2
9c4a: 833ed42300       cmp    word ptr [0x23d4], 0
9c4f: 0f840f00         je     0x9c62
9c53: ff36d423         push   word ptr [0x23d4]
9c57: 9a709c0000       lcall  0, 0x9c70    ; <DeleteObject>
9c5c: c706d4230000     mov    word ptr [0x23d4], 0
9c62: 833e642d00       cmp    word ptr [0x2d64], 0
9c67: 0f840f00         je     0x9c7a
9c6b: ff36642d         push   word ptr [0x2d64]
9c6f: 9a889c0000       lcall  0, 0x9c88    ; <DeleteObject>
9c74: c706642d0000     mov    word ptr [0x2d64], 0
9c7a: 833ed22300       cmp    word ptr [0x23d2], 0
9c7f: 0f840f00         je     0x9c92
9c83: ff36d223         push   word ptr [0x23d2]
9c87: 9aa09c0000       lcall  0, 0x9ca0    ; <DeleteObject>
9c8c: c706d2230000     mov    word ptr [0x23d2], 0
9c92: 833ed82300       cmp    word ptr [0x23d8], 0
9c97: 0f840f00         je     0x9caa
9c9b: ff36d823         push   word ptr [0x23d8]
9c9f: 9a21930000       lcall  0, 0x9321    ; <DeleteObject>
9ca4: c706d8230000     mov    word ptr [0x23d8], 0
9caa: ff76fc           push   word ptr [bp - 4]
9cad: 9a06390000       lcall  0, 0x3906    ; <DeleteDC>
9cb2: ff7606           push   word ptr [bp + 6]
9cb5: ff76fe           push   word ptr [bp - 2]
9cb8: 9aca9c0000       lcall  0, 0x9cca    ; <ReleaseDC>
9cbd: b80100           mov    ax, 1
9cc0: e91900           jmp    0x9cdc
9cc3: ff7606           push   word ptr [bp + 6]
9cc6: ff76fe           push   word ptr [bp - 2]
9cc9: 9ac6920000       lcall  0, 0x92c6    ; <ReleaseDC>
9cce: ff7606           push   word ptr [bp + 6]
9cd1: 9ae2280000       lcall  0, 0x28e2    ; <DestroyWindow>
9cd6: b80000           mov    ax, 0
9cd9: e90000           jmp    0x9cdc
9cdc: 5e               pop    si
9cdd: 5f               pop    di
9cde: c9               leave  
9cdf: cb               retf   
