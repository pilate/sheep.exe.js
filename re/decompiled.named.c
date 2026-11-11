// ==== FUN_1000_0010 @ 1000:0010 ====

void __stdcall16far FUN_1000_0010(undefined4 *param_1,undefined4 *param_2)

{
  undefined4 uVar1;
  char cVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  uint uVar7;
  ulong uVar8;
  ulong uVar9;
  undefined4 *puVar10;
  undefined2 uVar12;
  char *pcVar11;
  undefined4 *puVar13;
  undefined2 uVar16;
  undefined4 *puVar14;
  undefined4 *puVar15;
  undefined2 uVar17;
  undefined2 uVar18;
  
  uVar18 = (undefined2)((ulong)param_1 >> 0x10);
  puVar10 = (undefined4 *)param_1;
  uVar12 = 0;
  uVar17 = (undefined2)((ulong)param_2 >> 0x10);
  puVar13 = (undefined4 *)param_2;
  uVar16 = 0;
  iVar3 = FUN_1000_0414();
  *puVar13 = *puVar10;
  iVar4 = (int)puVar10[1];
  puVar13[1] = puVar10[1];
  uVar8 = puVar10[2];
  puVar13[2] = uVar8;
  puVar13[3] = 0x10001;
  puVar13[4] = puVar10[4];
  uVar5 = iVar4 + 0x1fU >> 5;
  puVar13[5] = CONCAT22((int)((ulong)puVar10[5] >> 0x10),uVar5 * 4 * (int)uVar8);
  puVar13[6] = puVar10[6];
  puVar13[7] = puVar10[7];
  puVar13[8] = 2;
  puVar13[9] = 2;
  pcVar11 = (char *)CONCAT22(uVar12,puVar10 + iVar3 + 10);
  puVar13[10] = 0xffffff;
  puVar14 = (undefined4 *)CONCAT22(uVar16,puVar13 + 0xc);
  puVar13[0xb] = 0;
  cVar2 = *pcVar11;
  do {
    puVar15 = puVar14;
    iVar3 = iVar4;
    uVar7 = uVar5;
    do {
      uVar9 = 0;
      iVar6 = 8;
      do {
        if (iVar3 < 1) {
          uVar9 = uVar9 << 4;
        }
        else {
          uVar1 = *(undefined4 *)pcVar11;
          iVar3 = iVar3 + -4;
          uVar9 = (((uVar9 << 1 | (ulong)((char)uVar1 != cVar2)) << 1 |
                   (ulong)((char)((ulong)uVar1 >> 8) != cVar2)) << 1 |
                  (ulong)((char)((ulong)uVar1 >> 0x10) != cVar2)) << 1 |
                  (ulong)((char)((ulong)uVar1 >> 0x18) != cVar2);
          pcVar11 = pcVar11 + 4;
        }
        iVar6 = iVar6 + -1;
      } while (iVar6 != 0);
      puVar14 = puVar15 + 1;
      *puVar15 = CONCAT31(CONCAT21(CONCAT11((char)uVar9,(char)(uVar9 >> 8)),(char)(uVar9 >> 0x10)),
                          (char)(uVar9 >> 0x18));
      uVar7 = uVar7 - 1;
      puVar15 = puVar14;
    } while (uVar7 != 0);
    uVar7 = (int)uVar8 - 1;
    uVar8 = (ulong)uVar7;
  } while (uVar7 != 0);
  return;
}


// ==== FUN_1000_0114 @ 1000:0114 ====

/* WARNING: Stack frame is not setup normally: Input value of stackpointer is not used */

undefined2 __stdcall16far FUN_1000_0114(void)

{
  undefined4 uVar1;
  ulong uVar2;
  ulong uVar3;
  ulong uVar4;
  undefined2 uVar5;
  uint uVar6;
  int iVar7;
  int iVar8;
  ulong uVar9;
  int iVar10;
  int *piVar11;
  undefined4 in_ESP;
  undefined2 uVar12;
  undefined2 unaff_BP;
  undefined4 *puVar13;
  undefined4 in_ESI;
  undefined2 uVar15;
  undefined4 *puVar14;
  undefined4 *puVar16;
  undefined4 in_EDI;
  undefined2 uVar19;
  undefined4 *puVar17;
  undefined4 *puVar18;
  undefined2 uVar20;
  undefined2 unaff_SS;
  undefined2 uVar21;
  byte in_CF;
  byte in_PF;
  byte in_AF;
  byte in_ZF;
  bool bVar22;
  byte in_SF;
  byte in_TF;
  byte in_IF;
  byte in_OF;
  byte in_NT;
  
  iVar10 = (int)in_ESP;
  uVar12 = (undefined2)((ulong)in_ESP >> 0x10);
  *(undefined2 *)(iVar10 + -2) = unaff_BP;
  *(uint *)(iVar10 + -0xc) =
       (uint)(in_NT & 1) * 0x4000 | (uint)(in_OF & 1) * 0x800 | (uint)(in_IF & 1) * 0x200 |
       (uint)(in_TF & 1) * 0x100 | (uint)(in_SF & 1) * 0x80 | (uint)(in_ZF & 1) * 0x40 |
       (uint)(in_AF & 1) * 0x10 | (uint)(in_PF & 1) * 4 | (uint)(in_CF & 1);
  *(undefined2 *)(iVar10 + -0xe) = 0x1008;
  *(undefined4 *)(iVar10 + -0x12) = in_EDI;
  *(undefined4 *)(iVar10 + -0x16) = in_ESI;
  *(undefined2 *)(iVar10 + -6) = 0;
  uVar21 = (undefined2)((ulong)*(undefined4 *)(iVar10 + 6) >> 0x10);
  puVar13 = (undefined4 *)(undefined4 *)*(undefined4 *)(iVar10 + 6);
  uVar15 = 0;
  uVar20 = (undefined2)((ulong)*(undefined4 *)(iVar10 + 10) >> 0x10);
  puVar16 = (undefined4 *)(undefined4 *)*(undefined4 *)(iVar10 + 10);
  uVar19 = 0;
  piVar11 = (int *)(iVar10 + -0x18);
  *(undefined2 *)(iVar10 + -0x18) = 0x13c;
  uVar5 = FUN_1000_0414();
  *piVar11 = uVar5;
  *puVar16 = *puVar13;
  uVar1 = puVar13[1];
  *(undefined2 *)(iVar10 + -10) = (int)uVar1;
  puVar16[1] = uVar1;
  uVar9 = puVar13[2];
  puVar16[2] = uVar9;
  puVar16[3] = 0x10001;
  puVar16[4] = puVar13[4];
  uVar1 = puVar13[5];
  uVar6 = *(int *)(iVar10 + -10) + 0x1fU >> 5;
  *(uint *)(iVar10 + -8) = uVar6;
  puVar16[5] = CONCAT22((int)((ulong)uVar1 >> 0x10),uVar6 * 4 * (int)uVar9);
  puVar16[6] = puVar13[6];
  puVar16[7] = puVar13[7];
  puVar16[8] = 2;
  puVar16[9] = 2;
  *(undefined4 **)(piVar11 + -2) = (undefined4 *)CONCAT22(uVar15,puVar13 + 10);
  puVar16[10] = (puVar13 + 10)[*(int *)(iVar10 + 4)];
  puVar17 = (undefined4 *)CONCAT22(uVar19,puVar16 + 0xc);
  puVar16[0xb] = 0;
  puVar14 = (undefined4 *)
            CONCAT22((int)((ulong)*(undefined4 *)CONCAT22(uVar12,piVar11 + -2) >> 0x10),
                     (undefined4 *)
                     ((int)*(undefined4 *)CONCAT22(uVar12,piVar11 + -2) + *piVar11 * 4));
  *(undefined *)(iVar10 + -4) = (char)*(undefined2 *)(iVar10 + 4);
  do {
    *piVar11 = (int)uVar9;
    iVar8 = *(int *)(iVar10 + -10);
    iVar7 = *(int *)(iVar10 + -8);
    puVar18 = puVar17;
    do {
      piVar11[-1] = iVar7;
      uVar9 = 0;
      iVar7 = 8;
      do {
        if (iVar8 < 1) {
          uVar9 = uVar9 << 4;
        }
        else {
          uVar1 = *puVar14;
          iVar8 = iVar8 + -4;
          uVar2 = (ulong)((char)uVar1 != *(char *)(iVar10 + -4));
          uVar3 = (ulong)((char)((ulong)uVar1 >> 8) != *(char *)(iVar10 + -4));
          uVar4 = (ulong)((char)((ulong)uVar1 >> 0x10) != *(char *)(iVar10 + -4));
          bVar22 = (char)((ulong)uVar1 >> 0x18) != *(char *)(iVar10 + -4);
          uVar9 = (((uVar9 << 1 | uVar2) << 1 | uVar3) << 1 | uVar4) << 1 | (ulong)bVar22;
          *(int *)(iVar10 + -6) =
               *(int *)(iVar10 + -6) +
               (uint)((byte)((byte)(((uVar2 << 1 | uVar3) << 1 | uVar4) << 1) | bVar22) < 0xf);
          puVar14 = puVar14 + 1;
        }
        iVar7 = iVar7 + -1;
      } while (iVar7 != 0);
      puVar17 = puVar18 + 1;
      *puVar18 = CONCAT31(CONCAT21(CONCAT11((char)uVar9,(char)(uVar9 >> 8)),(char)(uVar9 >> 0x10)),
                          (char)(uVar9 >> 0x18));
      iVar7 = piVar11[-1] + -1;
      puVar18 = puVar17;
    } while (iVar7 != 0);
    uVar9 = (ulong)(*piVar11 - 1U);
  } while (*piVar11 - 1U != 0);
  return *(undefined2 *)(iVar10 + -6);
}


// ==== FUN_1000_0230 @ 1000:0230 ====

/* WARNING: Stack frame is not setup normally: Input value of stackpointer is not used */

void __stdcall16far FUN_1000_0230(void)

{
  undefined4 *puVar1;
  byte bVar2;
  byte bVar3;
  int iVar4;
  char cVar7;
  byte bVar8;
  undefined2 extraout_var;
  ulong uVar5;
  ulong uVar6;
  undefined2 uVar10;
  undefined3 uVar9;
  uint uVar11;
  undefined3 uVar14;
  long lVar12;
  ulong uVar13;
  byte *pbVar15;
  ulong uVar16;
  int iVar17;
  undefined *puVar18;
  int *piVar19;
  long *plVar20;
  undefined4 in_ESP;
  undefined2 uVar22;
  long *plVar21;
  undefined2 unaff_BP;
  undefined4 *puVar23;
  uint *puVar24;
  uint *puVar25;
  undefined4 in_ESI;
  uint *puVar26;
  uint *puVar27;
  undefined4 *puVar28;
  undefined *puVar29;
  undefined4 in_EDI;
  undefined2 uVar36;
  undefined *puVar30;
  byte *pbVar31;
  byte *pbVar32;
  byte *pbVar33;
  uint *puVar34;
  uint *puVar35;
  undefined2 uVar37;
  undefined2 unaff_SS;
  undefined2 uVar38;
  byte in_CF;
  byte in_PF;
  byte in_AF;
  byte in_ZF;
  byte in_SF;
  byte in_TF;
  byte in_IF;
  byte in_OF;
  byte in_NT;
  
  iVar17 = (int)in_ESP;
  uVar22 = (undefined2)((ulong)in_ESP >> 0x10);
  *(undefined2 *)(iVar17 + -2) = unaff_BP;
  *(uint *)(iVar17 + -6) =
       (uint)(in_NT & 1) * 0x4000 | (uint)(in_OF & 1) * 0x800 | (uint)(in_IF & 1) * 0x200 |
       (uint)(in_TF & 1) * 0x100 | (uint)(in_SF & 1) * 0x80 | (uint)(in_ZF & 1) * 0x40 |
       (uint)(in_AF & 1) * 0x10 | (uint)(in_PF & 1) * 4 | (uint)(in_CF & 1);
  *(undefined2 *)(iVar17 + -8) = 0x1008;
  *(undefined4 *)(iVar17 + -0xc) = in_EDI;
  *(undefined4 *)(iVar17 + -0x10) = in_ESI;
  puVar1 = (undefined4 *)*(undefined4 *)(iVar17 + 4);
  uVar38 = (undefined2)((ulong)puVar1 >> 0x10);
  puVar23 = (undefined4 *)puVar1;
  puVar26 = (uint *)((ulong)puVar1 & 0xffff);
  uVar37 = (undefined2)((ulong)*(undefined4 *)(iVar17 + 8) >> 0x10);
  puVar28 = (undefined4 *)(undefined4 *)*(undefined4 *)(iVar17 + 8);
  iVar4 = *(int *)(puVar23 + 1);
  *(int *)(iVar17 + -4) = iVar4;
  uVar16 = (ulong)(iVar4 + 3U & 0xfffc);
  uVar6 = puVar23[2];
  *(undefined2 *)(iVar17 + -0x12) = *(undefined2 *)(puVar23 + 4);
  *(undefined2 *)(iVar17 + -0x14) = *(undefined2 *)((int)puVar23 + 0xe);
  uVar10 = (undefined2)((ulong)*puVar1 >> 0x10);
  for (uVar11 = (uint)*puVar1 >> 2; uVar11 != 0; uVar11 = uVar11 - 1) {
    puVar1 = puVar28;
    puVar28 = puVar28 + 1;
    puVar24 = (uint *)puVar26;
    puVar26 = (uint *)ZEXT24(puVar24 + 2);
    *puVar1 = *(undefined4 *)puVar24;
  }
  *(undefined2 *)(iVar17 + -0x16) = puVar28;
  *(undefined2 *)&DAT_1008_0010 = 0;
  puVar34 = (uint *)(ulong)*(uint *)(iVar17 + -0x16);
  puVar18 = (undefined *)(iVar17 + -0x16);
  *(undefined2 *)(iVar17 + -0x16) = 0x277;
  iVar4 = FUN_1000_0414();
  while( true ) {
    puVar24 = (uint *)puVar34;
    uVar36 = (undefined2)((ulong)puVar34 >> 0x10);
    if (iVar4 == 0) break;
    iVar4 = iVar4 + -1;
    puVar34 = (uint *)CONCAT22(uVar36,puVar24 + 2);
    puVar25 = (uint *)puVar26;
    puVar26 = (uint *)CONCAT22((int)((ulong)puVar26 >> 0x10),puVar25 + 2);
    *(undefined4 *)puVar24 = *(undefined4 *)puVar25;
  }
  uVar13 = CONCAT22(uVar10,*(int *)(puVar18 + 2));
  iVar4 = *(int *)(puVar18 + 4);
  piVar19 = (int *)(puVar18 + 6);
  uVar5 = CONCAT22(extraout_var,iVar4);
  if (iVar4 == 0) {
    if (*(int *)(puVar18 + 2) == 4) {
      *(uint **)(puVar18 + 4) = puVar24;
      *(undefined2 *)&DAT_1008_000e = 8;
      if (*(long *)s_ScreenMatePooSub_1008_0020 == 0) {
        ((char *)s_ScreenMatePooSub_1008_0020)[0] = '\x10';
        ((char *)s_ScreenMatePooSub_1008_0020)[1] = '\0';
      }
      puVar30 = (undefined *)CONCAT22(uVar36,*(undefined **)(puVar18 + 4));
      uVar13 = (ulong)((*(int *)(iVar17 + -4) + 1U >> 1) + 3 & 0xfffc);
      uVar5 = uVar13;
      do {
        *(undefined2 *)((int)piVar19 + -2) = (int)uVar6;
        *(undefined4 *)((int)piVar19 + -6) = puVar26;
        plVar21 = (long *)CONCAT22(uVar22,(long *)((int)piVar19 + -10));
        *(undefined4 *)((int)piVar19 + -10) = puVar30;
        uVar6 = uVar16 & 0xffff;
        do {
          if ((uVar6 & 1) == 0) {
            puVar24 = (uint *)puVar26;
            puVar26 = (uint *)ZEXT24((byte *)((int)puVar24 + 1));
            bVar2 = *(byte *)puVar24;
            uVar5 = (ulong)CONCAT11(bVar2,bVar2 >> 4);
          }
          else {
            uVar5 = CONCAT31((int3)(uVar5 >> 8),(char)(uVar5 >> 8)) & 0xffffff0f;
          }
          puVar29 = (undefined *)puVar30;
          puVar30 = (undefined *)ZEXT24(puVar29 + 1);
          *puVar29 = (char)uVar5;
          uVar11 = (int)uVar6 - 1;
          uVar6 = (ulong)uVar11;
        } while (uVar11 != 0);
        puVar30 = (undefined *)(*plVar21 + uVar16);
        puVar26 = (uint *)(plVar21[1] + uVar13);
        plVar20 = (long *)(plVar21 + 2);
        uVar22 = (undefined2)((ulong)(plVar21 + 2) >> 0x10);
        piVar19 = (int *)((int)plVar20 + 2);
        uVar11 = *(int *)plVar20 - 1;
        uVar6 = (ulong)uVar11;
      } while (uVar11 != 0);
    }
    else {
      for (uVar6 = uVar16 * uVar6 >> 2; (int)uVar6 != 0; uVar6 = (ulong)((int)uVar6 - 1)) {
        puVar25 = (uint *)puVar34;
        puVar34 = (uint *)ZEXT24(puVar25 + 2);
        puVar24 = (uint *)puVar26;
        puVar26 = (uint *)ZEXT24(puVar24 + 2);
        *(undefined4 *)puVar25 = *(undefined4 *)puVar24;
      }
    }
  }
  else {
    puVar35 = puVar34;
    if (iVar4 == 1) {
      while( true ) {
        while( true ) {
          while( true ) {
            puVar27 = puVar26 + 1;
            uVar11 = *puVar26;
            uVar10 = (undefined2)(uVar5 >> 0x10);
            cVar7 = (char)uVar11;
            uVar9 = (undefined3)(CONCAT22(uVar10,uVar11) >> 8);
            uVar5 = CONCAT31(uVar9,cVar7);
            bVar2 = (byte)(uVar11 >> 8);
            uVar14 = (undefined3)(uVar13 >> 8);
            uVar22 = (undefined2)(uVar13 >> 0x10);
            if (cVar7 == '\0') break;
            uVar5 = CONCAT31(uVar9,bVar2);
            for (lVar12 = CONCAT22(uVar22,(uint)CONCAT31(uVar14,cVar7) >> 1); lVar12 != 0;
                lVar12 = lVar12 + -1) {
              *puVar35 = (uint)uVar5;
              puVar35 = puVar35 + 1;
            }
            for (uVar13 = (ulong)((uVar11 & 1) != 0); puVar26 = puVar27, uVar13 != 0;
                uVar13 = uVar13 - 1) {
              *(byte *)puVar35 = bVar2;
              puVar35 = (uint *)((long)puVar35 + 1);
            }
          }
          if (bVar2 != 0) break;
          puVar34 = (uint *)((long)puVar34 + uVar16);
          puVar26 = puVar27;
          puVar35 = puVar34;
        }
        if (bVar2 == 1) break;
        uVar5 = CONCAT31(uVar9,2);
        if (bVar2 == 2) {
          puVar26 = puVar26 + 2;
          uVar5 = CONCAT22(uVar10,*puVar27);
          cVar7 = (char)(*puVar27 >> 8);
          while (cVar7 != '\0') {
            puVar35 = (uint *)((long)puVar35 + uVar16);
            puVar34 = (uint *)((long)puVar34 + uVar16);
            cVar7 = (char)(uVar5 >> 8) + -1;
            uVar5 = CONCAT22((int)(uVar5 >> 0x10),CONCAT11(cVar7,(char)uVar5));
          }
          puVar35 = (uint *)((long)puVar35 + uVar5);
        }
        else {
          for (lVar12 = CONCAT22(uVar22,(uint)CONCAT31(uVar14,bVar2) >> 1); lVar12 != 0;
              lVar12 = lVar12 + -1) {
            *puVar35 = *puVar27;
            puVar27 = puVar27 + 1;
            puVar35 = puVar35 + 1;
          }
          for (uVar6 = (ulong)((uVar11 & 0x100) != 0); uVar6 != 0; uVar6 = uVar6 - 1) {
            *(byte *)puVar35 = *(byte *)puVar27;
            puVar27 = (uint *)((long)puVar27 + 1);
            puVar35 = (uint *)((long)puVar35 + 1);
          }
          puVar26 = (uint *)((ulong)((long)puVar27 + 1) & 0xfffffffe);
          uVar13 = 0;
        }
      }
    }
    else {
      *(uint **)(puVar18 + 4) = puVar24;
      *(undefined2 *)&DAT_1008_000e = 8;
      if (*(long *)s_ScreenMatePooSub_1008_0020 == 0) {
        ((char *)s_ScreenMatePooSub_1008_0020)[0] = '\x10';
        ((char *)s_ScreenMatePooSub_1008_0020)[1] = '\0';
      }
      pbVar31 = (byte *)CONCAT22(uVar36,*(byte **)(puVar18 + 4));
      pbVar32 = pbVar31;
      while( true ) {
        while( true ) {
          while( true ) {
            puVar34 = puVar26 + 1;
            uVar11 = *puVar26;
            uVar10 = (undefined2)(uVar5 >> 0x10);
            cVar7 = (char)uVar11;
            uVar9 = (undefined3)(CONCAT22(uVar10,uVar11) >> 8);
            uVar5 = CONCAT31(uVar9,cVar7);
            bVar2 = (byte)(uVar11 >> 8);
            uVar14 = (undefined3)(uVar13 >> 8);
            if (cVar7 == '\0') break;
            uVar5 = CONCAT22(uVar10,CONCAT11(bVar2,bVar2 >> 4)) & 0xffff0fff;
            for (lVar12 = CONCAT22((int)(uVar13 >> 0x10),(uint)CONCAT31(uVar14,cVar7) >> 1);
                lVar12 != 0; lVar12 = lVar12 + -1) {
              *(int *)pbVar32 = (int)uVar5;
              pbVar32 = pbVar32 + 2;
            }
            for (uVar13 = (ulong)((uVar11 & 1) != 0); puVar26 = puVar34, uVar13 != 0;
                uVar13 = uVar13 - 1) {
              *pbVar32 = (byte)uVar5;
              pbVar32 = pbVar32 + 1;
            }
          }
          if (bVar2 != 0) break;
          pbVar31 = pbVar31 + uVar16;
          puVar26 = puVar34;
          pbVar32 = pbVar31;
        }
        if (bVar2 == 1) break;
        uVar5 = CONCAT31(uVar9,2);
        if (bVar2 == 2) {
          puVar26 = puVar26 + 2;
          uVar5 = CONCAT22(uVar10,*puVar34);
          cVar7 = (char)(*puVar34 >> 8);
          while (cVar7 != '\0') {
            pbVar32 = pbVar32 + uVar16;
            pbVar31 = pbVar31 + uVar16;
            cVar7 = (char)(uVar5 >> 8) + -1;
            uVar5 = CONCAT22((int)(uVar5 >> 0x10),CONCAT11(cVar7,(char)uVar5));
          }
          pbVar32 = pbVar32 + uVar5;
        }
        else {
          *(byte **)(puVar18 + 4) = (byte *)pbVar31;
          uVar13 = CONCAT31(uVar14,bVar2);
          do {
            pbVar15 = pbVar31;
            puVar26 = puVar34 + 1;
            bVar2 = (byte)*puVar34;
            uVar9 = (undefined3)(CONCAT22((int)(uVar5 >> 0x10),*puVar34) >> 8);
            uVar5 = CONCAT31(uVar9,bVar2 >> 4);
            *pbVar32 = bVar2 >> 4;
            iVar4 = (int)uVar13;
            uVar10 = (undefined2)(uVar13 >> 0x10);
            uVar13 = CONCAT22(uVar10,iVar4 + -1);
            pbVar33 = pbVar32 + 1;
            if (iVar4 + -1 == 0) break;
            uVar5 = CONCAT31(uVar9,bVar2) & 0xffffff0f;
            pbVar32[1] = (byte)uVar5;
            uVar13 = CONCAT22(uVar10,iVar4 + -2);
            pbVar33 = pbVar32 + 2;
            if (iVar4 + -2 == 0) break;
            bVar8 = (byte)(uVar5 >> 8);
            uVar9 = (undefined3)(uVar5 >> 8);
            bVar3 = bVar8 >> 4;
            uVar5 = CONCAT31(uVar9,bVar3);
            pbVar33 = pbVar32 + 3;
            pbVar32[2] = bVar3;
            uVar13 = CONCAT22(uVar10,iVar4 + -3);
            if (iVar4 + -3 == 0) break;
            uVar5 = CONCAT31(uVar9,bVar8) & 0xffffff0f;
            pbVar32 = pbVar32 + 4;
            *pbVar33 = (byte)uVar5;
            uVar13 = CONCAT22(uVar10,iVar4 + -4);
            pbVar31 = (byte *)CONCAT31((int3)((ulong)pbVar15 >> 8),bVar2);
            puVar34 = puVar26;
            pbVar33 = pbVar32;
          } while (iVar4 + -4 != 0);
          pbVar31 = (byte *)CONCAT22((int)((ulong)pbVar15 >> 0x10),*(byte **)(puVar18 + 4));
          pbVar32 = pbVar33;
        }
      }
    }
  }
  return;
}


// ==== FUN_1000_0414 @ 1000:0414 ====

int __cdecl16near FUN_1000_0414(void)

{
  int iVar1;
  
  iVar1 = s_ScreenMatePooSub_1008_0020._0_2_;
  if (s_ScreenMatePooSub_1008_0020._0_2_ == 0) {
    iVar1 = 1 << ((byte)DAT_1008_000e & 0x1f);
  }
  return iVar1;
}


// ==== entry @ 1000:0438 ====

/* WARNING: Removing unreachable block (ram,0x1000047b) */

void entry(void)

{
  code *pcVar1;
  undefined2 uVar2;
  int iVar3;
  uint in_CX;
  undefined2 in_BX;
  undefined2 unaff_SI;
  undefined2 unaff_DI;
  undefined2 unaff_ES;
  undefined2 unaff_CS;
  bool bVar4;
  undefined4 uVar5;
  undefined2 uVar6;
  
  do {
    uVar5 = INITTASK(unaff_CS,0);
    if (((int)uVar5 != 0) &&
       (bVar4 = in_CX < 0xff00, in_CX = in_CX + 0x100, DAT_1008_089c = unaff_ES, bVar4)) {
      uVar6 = 0x46b;
      DAT_1008_0866 = in_CX;
      DAT_1008_0868 = unaff_SI;
      DAT_1008_086a = unaff_DI;
      DAT_1008_086c = in_BX;
      DAT_1008_086e = unaff_ES;
      DAT_1008_0870 = (int)((ulong)uVar5 >> 0x10);
      uVar2 = GETVERSION(0x10c8);
      DAT_1008_089e = CONCAT11((char)uVar2,(char)((uint)uVar2 >> 8));
      pcVar1 = (code *)swi(0x21);
      DAT_1008_08a2 = (*pcVar1)();
      DAT_1008_08a0 = CONCAT11((char)DAT_1008_08a2,(char)((uint)DAT_1008_08a2 >> 8));
      DAT_1008_08a5 = 0;
      uVar2 = 0;
      WAITEVENT(0x1000,0,uVar6);
      iVar3 = INITAPP(0x10c8,DAT_1008_086a);
      if (iVar3 != 0) {
        FUN_1000_050e();
        FUN_1000_0746(0x1000);
        FUN_1000_08c8();
        FUN_1000_1456();
        uVar6 = FUN_1000_04e2(DAT_1008_08d6,DAT_1008_08d8,DAT_1008_08da);
        FUN_1000_05ed(0x1000,uVar6);
        FUN_1000_095d(uVar2);
        return;
      }
    }
    unaff_CS = 0x1000;
    FUN_1000_05fb(0x10c8,0xff);
  } while( true );
}


// ==== FUN_1000_04e2 @ 1000:04e2 ====

void __cdecl16far FUN_1000_04e2(void)

{
  FUN_1000_1c50(DAT_1008_0870,DAT_1008_086c,DAT_1008_086e,DAT_1008_0868,DAT_1008_086a);
  return;
}


// ==== FUN_1000_050e @ 1000:050e ====

/* WARNING: Removing unreachable block (ram,0x10000524) */
/* WARNING: Removing unreachable block (ram,0x10000546) */

void __cdecl16far FUN_1000_050e(void)

{
  byte *pbVar1;
  byte *pbVar2;
  byte *pbVar3;
  int iVar4;
  code *pcVar5;
  int iVar6;
  undefined2 in_BX;
  int unaff_BP;
  byte *pbVar7;
  byte *pbVar8;
  undefined2 unaff_ES;
  undefined2 uVar9;
  undefined2 unaff_SS;
  bool bVar10;
  
  pcVar5 = (code *)swi(0x21);
  (*pcVar5)(unaff_BP + 1);
  uVar9 = 0x1000;
  pcVar5 = (code *)swi(0x21);
  DAT_1008_0888._0_2_ = in_BX;
  DAT_1008_0888._2_2_ = unaff_ES;
  (*pcVar5)();
  if (*(int *)&DAT_1008_095c != 0) {
    bVar10 = false;
    (*(code *)*(undefined2 *)&DAT_1008_095a)(0x1000,uVar9);
    if (bVar10) {
      FUN_1000_06ec();
      return;
    }
    (*(code *)*(undefined2 *)&DAT_1008_095a)(0x1000);
  }
  iVar4 = *(int *)((char *)s_ScreenMatePooSub_1008_0020 + 0xc);
  if (iVar4 != 0) {
    pbVar8 = (byte *)0x0;
    do {
      bVar10 = *pbVar8 == 0;
      if (bVar10) break;
      iVar6 = 0xd;
      pbVar7 = (byte *)s__C_FILE_INFO__1008_087a;
      do {
        if (iVar6 == 0) break;
        iVar6 = iVar6 + -1;
        pbVar3 = pbVar8;
        pbVar8 = pbVar8 + 1;
        pbVar1 = pbVar7;
        pbVar7 = pbVar7 + 1;
        bVar10 = *pbVar1 == *pbVar3;
      } while (bVar10);
      if (bVar10) {
        pbVar7 = (byte *)0x8ae;
        goto LAB_1000_05b5;
      }
      iVar6 = 0x7fff;
      bVar10 = true;
      do {
        if (iVar6 == 0) break;
        iVar6 = iVar6 + -1;
        pbVar1 = pbVar8;
        pbVar8 = pbVar8 + 1;
        bVar10 = *pbVar1 == 0;
      } while (!bVar10);
    } while (bVar10);
  }
LAB_1000_05c9:
  FUN_1000_06b4();
  FUN_1000_06b4();
  FUN_1000_06b4();
  return;
LAB_1000_05b5:
  pbVar1 = pbVar8;
  pbVar2 = pbVar8 + 1;
  if (*pbVar1 < 0x41) goto LAB_1000_05c9;
  pbVar8 = pbVar8 + 2;
  if (*pbVar2 < 0x41) goto LAB_1000_05c9;
  pbVar3 = pbVar7;
  pbVar7 = pbVar7 + 1;
  *pbVar3 = *pbVar2 + 0xbf | (*pbVar1 + 0xbf) * '\x10';
  goto LAB_1000_05b5;
}


// ==== FUN_1000_05ed @ 1000:05ed ====

void FUN_1000_05ed(void)

{
  FUN_1000_062a();
  return;
}


// ==== FUN_1000_05fb @ 1000:05fb ====

void FUN_1000_05fb(void)

{
  FUN_1000_062a();
  return;
}


// ==== FUN_1000_062a @ 1000:062a ====

/* WARNING: Removing unreachable block (ram,0x10000677) */

void __cdecl16far FUN_1000_062a(void)

{
  code *pcVar1;
  undefined2 in_CX;
  int unaff_BP;
  undefined2 unaff_SS;
  char cVar2;
  
  DAT_1008_08e3 = (undefined)((uint)in_CX >> 8);
  if ((char)in_CX == '\0') {
    FUN_1000_06b4();
    FUN_1000_06b4();
    FUN_1000_1456(*(undefined2 *)(unaff_BP + 6));
  }
  cVar2 = (char)((uint)in_CX >> 8);
  FUN_1000_06b4();
  FUN_1000_06b4();
  FUN_1000_068b();
  if (cVar2 == '\0') {
    pcVar1 = (code *)swi(0x21);
    (*pcVar1)();
  }
  return;
}


// ==== FUN_1000_068b @ 1000:068b ====

/* WARNING: Removing unreachable block (ram,0x100006a9) */

void __cdecl16near FUN_1000_068b(void)

{
  code *pcVar1;
  
  if (DAT_1008_095c != 0) {
    (*DAT_1008_095a)();
  }
  pcVar1 = (code *)swi(0x21);
  (*pcVar1)();
  return;
}


// ==== FUN_1000_06b4 @ 1000:06b4 ====

void __cdecl16near FUN_1000_06b4(void)

{
  int *piVar1;
  int *unaff_SI;
  int *unaff_DI;
  int *piVar2;
  
  while (unaff_SI < unaff_DI) {
    piVar2 = unaff_DI + -2;
    piVar1 = unaff_DI + -1;
    unaff_DI = piVar2;
    if (*piVar2 != 0 || *piVar1 != 0) {
      (*(code *)*piVar2)();
    }
  }
  return;
}


// ==== FUN_1000_06c8 @ 1000:06c8 ====

void __cdecl16far FUN_1000_06c8(void)

{
  FUN_1000_09d7(0xfc);
  FUN_1000_09d7(0xff);
  return;
}


// ==== FUN_1000_06ec @ 1000:06ec ====

void FUN_1000_06ec(void)

{
  FUN_1000_095d();
  return;
}


// ==== FUN_1000_0746 @ 1000:0746 ====

/* WARNING (jumptable): Unable to track spacebase fully for stack */
/* WARNING: Unable to track spacebase fully for stack */

void FUN_1000_0746(undefined2 param_1)

{
  char *pcVar1;
  char cVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  int iVar6;
  undefined2 *puVar7;
  char *pcVar8;
  char *pcVar9;
  int iVar10;
  char *pcVar11;
  undefined2 uVar12;
  undefined2 unaff_CS;
  undefined2 unaff_SS;
  undefined2 uVar13;
  undefined4 uVar14;
  undefined2 in_stack_00000000;
  
  DAT_1008_08ee = param_1;
  param_1 = 0x757;
  DAT_1008_08ec = in_stack_00000000;
  uVar14 = FUN_1000_0a14();
  iVar6 = DAT_1008_086a;
  DAT_1008_08de = (undefined2)((ulong)uVar14 >> 0x10);
  DAT_1008_08dc = (int)uVar14;
  param_1 = DAT_1008_08de;
  iVar3 = GETMODULEFILENAME(unaff_CS,0x104,uVar14);
  *(undefined *)(iVar6 + iVar3) = 0;
  iVar6 = 1;
  iVar3 = 1;
  pcVar8 = (char *)0x81;
LAB_1000_0784:
  do {
    do {
      pcVar1 = pcVar8;
      pcVar8 = pcVar8 + 1;
      cVar2 = *pcVar1;
    } while (cVar2 == ' ');
  } while (cVar2 == '\t');
  if ((cVar2 != '\r') && (cVar2 != '\0')) {
    iVar3 = iVar3 + 1;
    do {
      pcVar8 = pcVar8 + -1;
LAB_1000_0797:
      pcVar1 = pcVar8;
      pcVar8 = pcVar8 + 1;
      cVar2 = *pcVar1;
      if ((cVar2 == ' ') || (cVar2 == '\t')) goto LAB_1000_0784;
      if ((cVar2 == '\r') || (cVar2 == '\0')) break;
      if (cVar2 == '\"') {
LAB_1000_07d0:
        do {
          while( true ) {
            while( true ) {
              pcVar1 = pcVar8;
              pcVar8 = pcVar8 + 1;
              cVar2 = *pcVar1;
              if ((cVar2 == '\r') || (cVar2 == '\0')) goto LAB_1000_0800;
              if (cVar2 == '\"') goto LAB_1000_0797;
              if (cVar2 == '\\') break;
              iVar6 = iVar6 + 1;
            }
            uVar4 = 0;
            do {
              pcVar11 = pcVar8;
              uVar4 = uVar4 + 1;
              pcVar8 = pcVar11 + 1;
            } while (*pcVar11 == '\\');
            if (*pcVar11 == '\"') break;
            iVar6 = iVar6 + uVar4;
            pcVar8 = pcVar11;
          }
          iVar6 = iVar6 + (uVar4 >> 1) + (uint)((uVar4 & 1) != 0);
        } while ((uVar4 & 1) != 0);
        goto LAB_1000_0797;
      }
      if (cVar2 != '\\') {
        iVar6 = iVar6 + 1;
        goto LAB_1000_0797;
      }
      uVar4 = 0;
      do {
        uVar4 = uVar4 + 1;
        pcVar1 = pcVar8;
        pcVar8 = pcVar8 + 1;
      } while (*pcVar1 == '\\');
      if (*pcVar1 == '\"') {
        iVar6 = iVar6 + (uVar4 >> 1) + (uint)((uVar4 & 1) != 0);
        if ((uVar4 & 1) == 0) goto LAB_1000_07d0;
        goto LAB_1000_0797;
      }
      iVar6 = iVar6 + uVar4;
    } while( true );
  }
LAB_1000_0800:
  *(int *)&DAT_1008_08d6 = iVar3;
  iVar10 = (iVar3 + 1) * 2;
  iVar6 = -(iVar6 + iVar3 + iVar10 + 1U & 0xfffe);
  *(int *)0x8d8 = (int)&param_1 + iVar6;
  pcVar11 = (char *)((int)&param_1 + iVar10 + iVar6);
  *(undefined2 *)(&stack0x0000 + iVar6) = unaff_SS;
  uVar12 = *(undefined2 *)(&stack0x0000 + iVar6);
  *(undefined2 *)((int)&param_1 + iVar6) = (int)*(undefined4 *)&DAT_1008_08dc;
  puVar7 = (undefined2 *)(&stack0x0004 + iVar6);
  uVar13 = *(undefined2 *)&DAT_1008_089c;
  pcVar8 = (char *)0x81;
LAB_1000_0834:
  do {
    do {
      pcVar1 = pcVar8;
      pcVar8 = pcVar8 + 1;
      cVar2 = *pcVar1;
    } while (cVar2 == ' ');
  } while (cVar2 == '\t');
  if ((cVar2 == '\r') || (cVar2 == '\0')) {
LAB_1000_08bd:
    *(undefined2 *)(&stack0x0000 + iVar6) = unaff_SS;
    uVar13 = *(undefined2 *)(&stack0x0000 + iVar6);
    *puVar7 = 0;
                    /* WARNING: Could not recover jumptable at 0x100008c3. Too many branches */
                    /* WARNING: Treating indirect jump as call */
    (*(code *)(ulong)*(uint *)&DAT_1008_08ec)();
    return;
  }
  *puVar7 = pcVar11;
  puVar7 = puVar7 + 1;
  do {
    pcVar8 = pcVar8 + -1;
LAB_1000_084b:
    pcVar1 = pcVar8;
    pcVar8 = pcVar8 + 1;
    cVar2 = *pcVar1;
    if ((cVar2 == ' ') || (cVar2 == '\t')) {
      pcVar1 = pcVar11;
      pcVar11 = pcVar11 + 1;
      *pcVar1 = '\0';
      goto LAB_1000_0834;
    }
    if ((cVar2 == '\r') || (cVar2 == '\0')) {
LAB_1000_08ba:
      *pcVar11 = '\0';
      goto LAB_1000_08bd;
    }
    pcVar9 = pcVar8;
    if (cVar2 == '\"') {
LAB_1000_0887:
      while( true ) {
        pcVar8 = pcVar9 + 1;
        cVar2 = *pcVar9;
        if ((cVar2 == '\r') || (cVar2 == '\0')) goto LAB_1000_08ba;
        if (cVar2 == '\"') break;
        if (cVar2 == '\\') {
          uVar4 = 0;
          do {
            pcVar9 = pcVar8;
            uVar4 = uVar4 + 1;
            pcVar8 = pcVar9 + 1;
          } while (*pcVar9 == '\\');
          if (*pcVar9 == '\"') {
            for (uVar5 = uVar4 >> 1; uVar5 != 0; uVar5 = uVar5 - 1) {
              pcVar1 = pcVar11;
              pcVar11 = pcVar11 + 1;
              *pcVar1 = '\\';
            }
            if ((uVar4 & 1) == 0) break;
            pcVar1 = pcVar11;
            pcVar11 = pcVar11 + 1;
            *pcVar1 = '\"';
            pcVar9 = pcVar8;
          }
          else {
            for (; uVar4 != 0; uVar4 = uVar4 - 1) {
              pcVar1 = pcVar11;
              pcVar11 = pcVar11 + 1;
              *pcVar1 = '\\';
            }
          }
        }
        else {
          pcVar1 = pcVar11;
          pcVar11 = pcVar11 + 1;
          *pcVar1 = cVar2;
          pcVar9 = pcVar8;
        }
      }
      goto LAB_1000_084b;
    }
    if (cVar2 != '\\') {
      pcVar1 = pcVar11;
      pcVar11 = pcVar11 + 1;
      *pcVar1 = cVar2;
      goto LAB_1000_084b;
    }
    uVar4 = 0;
    do {
      uVar4 = uVar4 + 1;
      pcVar1 = pcVar8;
      pcVar8 = pcVar8 + 1;
    } while (*pcVar1 == '\\');
    if (*pcVar1 == '\"') {
      for (uVar5 = uVar4 >> 1; uVar5 != 0; uVar5 = uVar5 - 1) {
        pcVar1 = pcVar11;
        pcVar11 = pcVar11 + 1;
        *pcVar1 = '\\';
      }
      pcVar9 = pcVar8;
      if ((uVar4 & 1) == 0) goto LAB_1000_0887;
      pcVar1 = pcVar11;
      pcVar11 = pcVar11 + 1;
      *pcVar1 = '\"';
      goto LAB_1000_084b;
    }
    for (; uVar4 != 0; uVar4 = uVar4 - 1) {
      pcVar1 = pcVar11;
      pcVar11 = pcVar11 + 1;
      *pcVar1 = '\\';
    }
  } while( true );
}


// ==== FUN_1000_08c8 @ 1000:08c8 ====

void __cdecl16far FUN_1000_08c8(void)

{
  int *piVar1;
  char *pcVar2;
  int *piVar3;
  char cVar4;
  undefined2 *puVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int *piVar9;
  int *piVar10;
  char *pcVar11;
  int *piVar12;
  undefined2 unaff_SS;
  bool bVar13;
  undefined4 uVar14;
  
  uVar14 = GETDOSENVIRONMENT();
  iVar7 = (int)((ulong)uVar14 >> 0x10);
  if ((int)uVar14 != 0) {
    iVar7 = 0;
  }
  iVar8 = 0;
  pcVar11 = (char *)0x0;
  iVar6 = -1;
  if (iVar7 != 0) {
    cVar4 = *(char *)0x0;
    while (cVar4 != '\0') {
      do {
        if (iVar6 == 0) break;
        iVar6 = iVar6 + -1;
        pcVar2 = pcVar11;
        pcVar11 = pcVar11 + 1;
      } while (*pcVar2 != '\0');
      iVar8 = iVar8 + 1;
      pcVar2 = pcVar11;
      pcVar11 = pcVar11 + 1;
      cVar4 = *pcVar2;
    }
  }
  pcVar11 = (char *)FUN_1000_0a14();
  puVar5 = (undefined2 *)FUN_1000_0a14();
  piVar9 = (int *)0x0;
  DAT_1008_08da = puVar5;
  do {
    if (iVar8 == 0) {
      *puVar5 = 0;
      return;
    }
    bVar13 = *piVar9 == *(int *)s__C_FILE_INFO__1008_087a;
    if (bVar13) {
      piVar12 = (int *)s__C_FILE_INFO__1008_087a;
      iVar6 = 6;
      piVar10 = piVar9;
      do {
        if (iVar6 == 0) break;
        iVar6 = iVar6 + -1;
        piVar3 = piVar12;
        piVar12 = piVar12 + 1;
        piVar1 = piVar10;
        piVar10 = piVar10 + 1;
        bVar13 = *piVar1 == *piVar3;
      } while (bVar13);
      if (!bVar13) goto LAB_1000_093e;
    }
    else {
LAB_1000_093e:
      *puVar5 = pcVar11;
      puVar5 = puVar5 + 1;
    }
    do {
      piVar1 = piVar9;
      piVar9 = (int *)((int)piVar9 + 1);
      cVar4 = *(char *)piVar1;
      pcVar2 = pcVar11;
      pcVar11 = pcVar11 + 1;
      *pcVar2 = cVar4;
    } while (cVar4 != '\0');
    iVar8 = iVar8 + -1;
  } while( true );
}


// ==== FUN_1000_095d @ 1000:095d ====

int * __stdcall16far FUN_1000_095d(void)

{
  int *piVar1;
  char *pcVar2;
  int in_AX;
  char *pcVar3;
  int iVar4;
  int *piVar5;
  char in_CL;
  int unaff_SI;
  int *piVar6;
  char *pcVar7;
  undefined2 unaff_CS;
  undefined2 uVar8;
  
  iVar4 = in_AX;
  FUN_1000_06c8();
  FUN_1000_09d7(iVar4);
                    /* WARNING: Call to offcut address within same function */
  pcVar3 = (char *)func_0x100009a0();
  if (pcVar3 != (char *)0x0) {
    iVar4 = 9;
    if (*pcVar3 == 'M') {
      iVar4 = 0xf;
    }
    pcVar3 = pcVar3 + iVar4;
    iVar4 = 0x22;
    pcVar7 = pcVar3;
    do {
      if (iVar4 == 0) break;
      iVar4 = iVar4 + -1;
      pcVar2 = pcVar7;
      pcVar7 = pcVar7 + 1;
    } while (*pcVar2 != '\r');
    in_CL = (char)iVar4;
    pcVar7[-1] = '\0';
  }
  uVar8 = 0;
  FATALAPPEXIT(unaff_CS,pcVar3,0x1008);
  uVar8 = FATALEXIT(0x10c8,0xff,uVar8);
  *(char *)(unaff_SI + -0x6f28) = *(char *)(unaff_SI + -0x6f28) + in_CL;
  piVar6 = (int *)0x96e;
  do {
    piVar1 = piVar6;
    piVar6 = piVar6 + 1;
    piVar5 = piVar6;
    if ((*piVar1 == in_AX) || (piVar5 = (int *)(*piVar1 + 1), piVar5 == (int *)0x0)) {
      return piVar5;
    }
    iVar4 = -1;
    do {
      if (iVar4 == 0) break;
      iVar4 = iVar4 + -1;
      piVar1 = piVar6;
      piVar6 = (int *)((int)piVar6 + 1);
    } while (*(char *)piVar1 != '\0');
  } while( true );
}


// ==== FUN_1000_09d7 @ 1000:09d7 ====

void __stdcall16far FUN_1000_09d7(undefined2 param_1)

{
  char *pcVar1;
  char *pcVar2;
  int iVar3;
  undefined2 unaff_ES;
  
  if (DAT_1008_0952 != 0) {
    pcVar2 = (char *)func_0x100009a0();
    if (pcVar2 != (char *)0x0) {
      iVar3 = -1;
      do {
        if (iVar3 == 0) break;
        iVar3 = iVar3 + -1;
        pcVar1 = pcVar2;
        pcVar2 = pcVar2 + 1;
      } while (*pcVar1 != '\0');
      FUN_1000_145b(param_1);
    }
  }
  return;
}


// ==== FUN_1000_0a14 @ 1000:0a14 ====

void __cdecl16near FUN_1000_0a14(void)

{
  undefined2 uVar1;
  int iVar2;
  undefined2 unaff_BP;
  
  uVar1 = DAT_1008_08f0;
  LOCK();
  DAT_1008_08f0 = 0x1000;
  UNLOCK();
  iVar2 = FUN_1000_1462();
  DAT_1008_08f0 = uVar1;
  if (iVar2 != 0) {
    return;
  }
  FUN_1000_095d(unaff_BP);
  return;
}


// ==== FUN_1000_0b54 @ 1000:0b54 ====

int __cdecl16far FUN_1000_0b54(char *param_1)

{
  char *pcVar1;
  uint uVar2;
  
  uVar2 = 0xffff;
  do {
    if (uVar2 == 0) break;
    uVar2 = uVar2 - 1;
    pcVar1 = param_1;
    param_1 = param_1 + 1;
  } while (*pcVar1 != '\0');
  return ~uVar2 - 1;
}


// ==== FUN_1000_0b70 @ 1000:0b70 ====

char * __cdecl16far FUN_1000_0b70(char *param_1,char *param_2,int param_3)

{
  char *pcVar1;
  char *pcVar2;
  char *pcVar3;
  
  pcVar3 = param_1;
  if (param_3 != 0) {
    do {
      pcVar1 = param_2;
      param_2 = param_2 + 1;
      if (*pcVar1 == '\0') break;
      pcVar2 = pcVar3;
      pcVar3 = pcVar3 + 1;
      *pcVar2 = *pcVar1;
      param_3 = param_3 + -1;
    } while (param_3 != 0);
    for (; param_3 != 0; param_3 = param_3 + -1) {
      pcVar1 = pcVar3;
      pcVar3 = pcVar3 + 1;
      *pcVar1 = '\0';
    }
  }
  return param_1;
}


// ==== FUN_1000_0b98 @ 1000:0b98 ====

uint __cdecl16far FUN_1000_0b98(char *param_1,char *param_2,uint param_3)

{
  char *pcVar1;
  char *pcVar2;
  uint uVar3;
  int iVar4;
  char *pcVar5;
  
  uVar3 = param_3;
  pcVar5 = param_1;
  if (param_3 != 0) {
    do {
      if (uVar3 == 0) break;
      uVar3 = uVar3 - 1;
      pcVar1 = pcVar5;
      pcVar5 = pcVar5 + 1;
    } while (*pcVar1 != '\0');
    iVar4 = param_3 - uVar3;
    do {
      if (iVar4 == 0) break;
      iVar4 = iVar4 + -1;
      pcVar2 = param_1;
      param_1 = param_1 + 1;
      pcVar1 = param_2;
      param_2 = param_2 + 1;
    } while (*pcVar1 == *pcVar2);
    param_3 = 0;
    if ((byte)param_2[-1] <= (byte)param_1[-1]) {
      if (param_2[-1] == param_1[-1]) {
        return 0;
      }
      param_3 = 0xfffe;
    }
    param_3 = ~param_3;
  }
  return param_3;
}


// ==== thunk_FUN_1000_0bd6 @ 1000:0bd2 ====

int __cdecl16far thunk_FUN_1000_0bd6(byte *param_1)

{
  byte *pbVar1;
  byte bVar2;
  byte bVar3;
  int iVar4;
  
  iVar4 = 0;
  do {
    do {
      pbVar1 = param_1;
      param_1 = param_1 + 1;
      bVar2 = *pbVar1;
    } while (bVar2 == 0x20);
  } while (bVar2 == 9);
  if ((bVar2 != 0x2d) && (bVar3 = bVar2, bVar2 != 0x2b)) goto LAB_1000_0bf6;
  while( true ) {
    pbVar1 = param_1;
    param_1 = param_1 + 1;
    bVar3 = *pbVar1;
LAB_1000_0bf6:
    if ((0x39 < bVar3) || (bVar3 < 0x30)) break;
    iVar4 = iVar4 * 10 + (uint)(byte)(bVar3 - 0x30);
  }
  if (bVar2 == 0x2d) {
    iVar4 = -iVar4;
  }
  return iVar4;
}


// ==== FUN_1000_0bd6 @ 1000:0bd6 ====

int __cdecl16far FUN_1000_0bd6(byte *param_1)

{
  byte *pbVar1;
  byte bVar2;
  byte bVar3;
  int iVar4;
  
  iVar4 = 0;
  do {
    do {
      pbVar1 = param_1;
      param_1 = param_1 + 1;
      bVar2 = *pbVar1;
    } while (bVar2 == 0x20);
  } while (bVar2 == 9);
  if ((bVar2 != 0x2d) && (bVar3 = bVar2, bVar2 != 0x2b)) goto LAB_1000_0bf6;
  while( true ) {
    pbVar1 = param_1;
    param_1 = param_1 + 1;
    bVar3 = *pbVar1;
LAB_1000_0bf6:
    if ((0x39 < bVar3) || (bVar3 < 0x30)) break;
    iVar4 = iVar4 * 10 + (uint)(byte)(bVar3 - 0x30);
  }
  if (bVar2 == 0x2d) {
    iVar4 = -iVar4;
  }
  return iVar4;
}


// ==== FUN_1000_0c2a @ 1000:0c2a ====

int __cdecl16far FUN_1000_0c2a(int param_1)

{
  uint uVar1;
  uint uVar2;
  int iVar3;
  int *piVar4;
  
  piVar4 = DAT_1008_08da;
  if ((DAT_1008_08da != (int *)0x0) && (param_1 != 0)) {
    uVar1 = FUN_1000_0b54(param_1);
    for (; *piVar4 != 0; piVar4 = piVar4 + 1) {
      uVar2 = FUN_1000_0b54(*piVar4);
      if (((uVar1 < uVar2) && (*(char *)(*piVar4 + uVar1) == '=')) &&
         (iVar3 = FUN_1000_0b98(*piVar4,param_1,uVar1), iVar3 == 0)) {
        return *piVar4 + uVar1 + 1;
      }
    }
  }
  return 0;
}


// ==== FUN_1000_0c90 @ 1000:0c90 ====

/* WARNING: Removing unreachable block (ram,0x10000cf9) */

undefined2 __cdecl16far FUN_1000_0c90(undefined2 *param_1)

{
  uint uVar1;
  uint uVar2;
  bool bVar3;
  undefined2 uVar4;
  int iVar5;
  uint uVar6;
  int iVar7;
  long lVar8;
  long lVar9;
  undefined2 uVar10;
  undefined2 uVar11;
  int local_c;
  
  bVar3 = false;
  uVar4 = *param_1;
  iVar7 = param_1[1];
  if (iVar7 < 0) {
    uVar4 = 0;
  }
  else {
    uVar11 = 0xf879;
    uVar10 = 0xe080;
    iVar5 = FUN_1000_12ea(uVar4,iVar7,0x1f80,0x786);
    lVar8 = FUN_1000_1384(iVar5,iVar5 >> 0xf,uVar10,uVar11);
    lVar8 = lVar8 + CONCAT22(iVar7,uVar4);
    uVar1 = (uint)lVar8;
    iVar5 = iVar5 * 4;
    DAT_1008_0930 = iVar5 + 0x46;
    if (0x1e1337f < lVar8) {
      DAT_1008_0930 = iVar5 + 0x47;
      uVar2 = uVar1 + 0xcc80;
      iVar7 = ((int)((ulong)lVar8 >> 0x10) + -0x1e1) - (uint)(uVar1 < 0x3380);
      lVar8 = CONCAT22(iVar7,uVar2);
      if ((0x1e0 < iVar7) && ((0x1e1 < iVar7 || (lVar8 = CONCAT22(iVar7,uVar2), 0x337f < uVar2)))) {
        DAT_1008_0930 = iVar5 + 0x48;
        uVar6 = uVar1 + 0x9900;
        iVar7 = (iVar7 + -0x1e1) - (uint)(uVar2 < 0x3380);
        lVar8 = CONCAT22(iVar7,uVar6);
        if ((iVar7 < 0x1e2) || ((iVar7 < 0x1e3 && (uVar6 < 0x8500)))) {
          bVar3 = true;
        }
        else {
          DAT_1008_0930 = iVar5 + 0x49;
          lVar8 = CONCAT22((iVar7 + -0x1e2) - (uint)(uVar6 < 0x8500),uVar1 + 0x1400);
        }
      }
    }
    DAT_1008_0934 = FUN_1000_12ea(lVar8,0x5180,1);
    lVar9 = FUN_1000_1384(DAT_1008_0934,DAT_1008_0934 >> 0xf,0xae80,0xfffe);
    if (bVar3) {
      local_c = 0x8f2;
    }
    else {
      local_c = 0x90c;
    }
    iVar7 = 1;
    while (*(int *)(iVar7 * 2 + local_c) < DAT_1008_0934) {
      iVar7 = iVar7 + 1;
    }
    DAT_1008_092e = iVar7 + -1;
    DAT_1008_092c = DAT_1008_0934 - *(int *)(DAT_1008_092e * 2 + local_c);
    iVar7 = FUN_1000_12ea(*param_1,param_1[1],0x5180,1);
    DAT_1008_0932 = (iVar7 + 4) % 7;
    DAT_1008_092a = FUN_1000_12ea(lVar9 + lVar8,0xe10,0);
    lVar8 = (long)DAT_1008_092a * -0xe10 + lVar9 + lVar8;
    DAT_1008_0928 = FUN_1000_12ea(lVar8,0x3c,0);
    DAT_1008_0926 = DAT_1008_0928 * -0x3c + (int)lVar8;
    DAT_1008_0936 = 0;
    uVar4 = 0x926;
  }
  return uVar4;
}


// ==== FUN_1000_0e26 @ 1000:0e26 ====

int __cdecl16far FUN_1000_0e26(uint *param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  int unaff_BP;
  int unaff_SI;
  bool bVar4;
  uint local_8;
  int local_6;
  undefined2 local_4;
  int iStack_2;
  
  iStack_2 = unaff_BP + 1;
  local_4 = 0x1008;
  if (-1 < (int)param_1[1]) {
    FUN_1000_0fb6();
    uVar1 = *param_1 - DAT_1008_093c;
    iVar3 = (param_1[1] - DAT_1008_093e) - (uint)(*param_1 < DAT_1008_093c);
    if (iVar3 < 0) {
      local_8 = uVar1 + 0x5180;
      local_6 = iVar3 + 1 + (uint)(0xae7f < uVar1);
      if (-1 < local_6) {
        iVar3 = FUN_1000_0c90(&local_8);
        *(undefined2 *)(iVar3 + 10) = 0x45;
        *(undefined2 *)(iVar3 + 8) = 0xb;
        *(undefined2 *)(iVar3 + 6) = 0x1f;
        *(undefined2 *)(iVar3 + 0xc) = 3;
        *(undefined2 *)(iVar3 + 0xe) = 0x16c;
        return iVar3;
      }
      local_8 = uVar1 + 0xae80;
      local_6 = (iVar3 + -1) - (uint)(uVar1 < 0x5180);
      if (local_6 < 0) {
        return unaff_SI;
      }
      iVar3 = FUN_1000_0c90(&local_8);
      *(int *)(iVar3 + 6) = *(int *)(iVar3 + 6) + 1;
      *(int *)(iVar3 + 0xc) = *(int *)(iVar3 + 0xc) + 1;
      *(int *)(iVar3 + 0xe) = *(int *)(iVar3 + 0xe) + 1;
      return iVar3;
    }
    local_8 = uVar1;
    local_6 = iVar3;
    iVar3 = FUN_1000_0c90(&local_8);
    if (DAT_1008_0940 == 0) {
      return iVar3;
    }
    iVar2 = FUN_1000_10d6(iVar3);
    if (iVar2 == 0) {
      return iVar3;
    }
    bVar4 = 0xf1ef < local_8;
    local_8 = local_8 + 0xe10;
    local_6 = local_6 + (uint)bVar4;
    if (-1 < local_6) {
      iVar3 = FUN_1000_0c90(&local_8);
      *(undefined2 *)(iVar3 + 0x10) = 1;
      return iVar3;
    }
  }
  return 0;
}


// ==== FUN_1000_0f24 @ 1000:0f24 ====

/* WARNING: Removing unreachable block (ram,0x10000f52) */
/* WARNING: Removing unreachable block (ram,0x10000f3a) */
/* WARNING: Removing unreachable block (ram,0x10000f72) */

void __cdecl16far FUN_1000_0f24(undefined2 *param_1)

{
  code *pcVar1;
  undefined2 uVar2;
  uint in_CX;
  uint uVar3;
  uint extraout_DX;
  undefined extraout_DH;
  uint extraout_DX_00;
  uint uVar4;
  uint uVar5;
  int unaff_BP;
  char in_stack_0000ffec;
  
  pcVar1 = (code *)swi(0x21);
  (*pcVar1)(0x1008,unaff_BP + 1);
  pcVar1 = (code *)swi(0x21);
  uVar3 = in_CX;
  uVar5 = extraout_DX;
  (*pcVar1)();
  pcVar1 = (code *)swi(0x21);
  (*pcVar1)(uVar3 >> 8,uVar3 & 0xff,extraout_DH);
  uVar4 = extraout_DX_00;
  if ((uVar5 != extraout_DX_00) && (uVar4 = extraout_DX_00, in_stack_0000ffec == '\x17')) {
    uVar3 = in_CX;
    uVar4 = uVar5;
  }
  uVar2 = FUN_1000_11a2(uVar3 - 0x7bc,uVar4 >> 8,uVar4 & 0xff);
  if (param_1 != (undefined2 *)0x0) {
    param_1[1] = uVar4;
    *param_1 = uVar2;
  }
  return;
}


// ==== FUN_1000_0fb6 @ 1000:0fb6 ====

void __cdecl16far FUN_1000_0fb6(void)

{
  int unaff_BP;
  
  if (DAT_1008_0bba == 0) {
    FUN_1000_0fd2(0x1008,unaff_BP + 1);
    DAT_1008_0bba = DAT_1008_0bba + 1;
  }
  return;
}


// ==== FUN_1000_0fd2 @ 1000:0fd2 ====

void __cdecl16far FUN_1000_0fd2(void)

{
  char cVar1;
  long lVar2;
  char *pcVar3;
  undefined2 uVar4;
  uint uVar5;
  undefined2 uVar6;
  int iVar7;
  char *pcVar8;
  long lVar9;
  long lVar10;
  undefined2 uVar11;
  undefined2 uVar12;
  
  pcVar3 = (char *)FUN_1000_0c2a(0x938);
  if ((pcVar3 != (char *)0x0) && (*pcVar3 != '\0')) {
    FUN_1000_0b70(DAT_1008_094a,pcVar3,3);
    pcVar8 = pcVar3 + 3;
    cVar1 = *pcVar8;
    if (cVar1 == '-') {
      pcVar8 = pcVar3 + 4;
    }
    uVar6 = 0;
    uVar12 = 0;
    uVar11 = 0xe10;
    uVar4 = thunk_FUN_1000_0bd6(pcVar8,0xe10,0);
    lVar9 = FUN_1000_1384(uVar4,uVar6,uVar11,uVar12);
    DAT_1008_093e = (int)((ulong)lVar9 >> 0x10);
    DAT_1008_093c = (uint)lVar9;
    for (; (*pcVar8 == '+' || (('/' < *pcVar8 && (*pcVar8 < ':')))); pcVar8 = pcVar8 + 1) {
    }
    if (*pcVar8 == ':') {
      uVar6 = 0;
      uVar12 = 0;
      uVar11 = 0x3c;
      pcVar8 = pcVar8 + 1;
      uVar4 = thunk_FUN_1000_0bd6(pcVar8,0x3c,0);
      lVar10 = FUN_1000_1384(uVar4,uVar6,uVar11,uVar12);
      lVar9 = CONCAT22(DAT_1008_093e,DAT_1008_093c);
      iVar7 = (int)((ulong)lVar10 >> 0x10);
      lVar2 = lVar10 + lVar9;
      DAT_1008_093c = (uint)lVar2;
      DAT_1008_093e = (int)((ulong)lVar2 >> 0x10);
      for (; ('/' < *pcVar8 && (*pcVar8 < ':')); pcVar8 = pcVar8 + 1) {
      }
      lVar9 = lVar10 + lVar9;
      if (*pcVar8 == ':') {
        pcVar8 = pcVar8 + 1;
        uVar5 = thunk_FUN_1000_0bd6(pcVar8);
        iVar7 = DAT_1008_093e + iVar7 + (uint)CARRY2(DAT_1008_093c,uVar5);
        for (; (lVar9 = CONCAT22(iVar7,DAT_1008_093c + uVar5), '/' < *pcVar8 &&
               (lVar9 = CONCAT22(iVar7,DAT_1008_093c + uVar5), *pcVar8 < ':')); pcVar8 = pcVar8 + 1)
        {
        }
      }
    }
    DAT_1008_093e = (int)((ulong)lVar9 >> 0x10);
    DAT_1008_093c = (uint)lVar9;
    if (cVar1 == '-') {
      lVar9 = CONCAT22(-(DAT_1008_093e + (uint)(DAT_1008_093c != 0)),-DAT_1008_093c);
    }
    DAT_1008_093e = (int)((ulong)lVar9 >> 0x10);
    DAT_1008_093c = (uint)lVar9;
    DAT_1008_0940 = (int)*pcVar8;
    if (DAT_1008_0940 == 0) {
      *DAT_1008_094c = 0;
    }
    else {
      FUN_1000_0b70(DAT_1008_094c,pcVar8,3);
    }
  }
  return;
}


// ==== FUN_1000_10d6 @ 1000:10d6 ====

undefined2 __cdecl16far FUN_1000_10d6(int param_1)

{
  uint uVar1;
  int iVar2;
  int iVar3;
  undefined2 uVar4;
  int local_6;
  
  if (((*(int *)(param_1 + 10) < 0x43) || (*(int *)(param_1 + 8) < 3)) ||
     (9 < *(int *)(param_1 + 8))) goto LAB_1000_1196;
  if ((*(int *)(param_1 + 8) < 4) || (8 < *(int *)(param_1 + 8))) {
    uVar1 = *(uint *)(param_1 + 10);
    if (((int)uVar1 < 0x57) || (*(int *)(param_1 + 8) != 3)) {
      local_6 = *(int *)(*(int *)(param_1 + 8) * 2 + 0x90e);
    }
    else {
      local_6 = *(int *)(*(int *)(param_1 + 8) * 2 + 0x90c) + 7;
    }
    if ((uVar1 & 3) == 0) {
      local_6 = local_6 + 1;
    }
    uVar1 = (uVar1 - 0x46) * 0x16d + ((int)(uVar1 - 1) >> 2) + local_6;
    iVar2 = FUN_1000_13b6(uVar1 - 0xd,((int)uVar1 >> 0xf) - (uint)(uVar1 < 0xd),7,0);
    iVar3 = -(iVar2 - local_6);
    if (*(int *)(param_1 + 8) == 3) {
      if ((iVar3 < *(int *)(param_1 + 0xe)) ||
         ((-*(int *)(param_1 + 0xe) == iVar2 - local_6 && (1 < *(int *)(param_1 + 4)))))
      goto LAB_1000_1180;
    }
    else if ((*(int *)(param_1 + 0xe) < iVar3) ||
            ((iVar3 == *(int *)(param_1 + 0xe) && (*(int *)(param_1 + 4) < 1)))) goto LAB_1000_1180;
LAB_1000_1196:
    uVar4 = 0;
  }
  else {
LAB_1000_1180:
    uVar4 = 1;
  }
  return uVar4;
}


// ==== FUN_1000_11a2 @ 1000:11a2 ====

int __cdecl16far
FUN_1000_11a2(uint param_1,int param_2,uint param_3,uint param_4,uint param_5,int param_6)

{
  uint uVar1;
  int iVar2;
  int unaff_BP;
  int iVar3;
  undefined4 uVar4;
  undefined2 uVar5;
  undefined2 uVar6;
  undefined2 uVar7;
  undefined2 uVar8;
  int local_1a;
  undefined local_16 [4];
  uint local_12;
  int local_e;
  int local_c;
  int local_8;
  undefined2 local_4;
  int iStack_2;
  
  iStack_2 = unaff_BP + 1;
  local_4 = 0x1008;
  iVar3 = *(int *)(param_2 * 2 + 0x90a);
  if (((param_1 & 3) == 0) && (2 < param_2)) {
    iVar3 = iVar3 + 1;
  }
  FUN_1000_0fb6();
  uVar8 = 0;
  uVar7 = 0x3c;
  uVar6 = 0;
  uVar5 = 0x3c;
  uVar1 = (int)(param_1 + 3) >> 2;
  uVar4 = FUN_1000_1384((long)(int)param_1 * 0x16d +
                        CONCAT22(((int)(param_1 + 3) >> 0xf) + ((int)param_3 >> 0xf) +
                                 (uint)CARRY2(uVar1,param_3),uVar1 + param_3) + (long)iVar3 + 0xe44,
                        0x18,0);
  uVar4 = FUN_1000_1384((uint)uVar4 + param_4,
                        (int)((ulong)uVar4 >> 0x10) + ((int)param_4 >> 0xf) +
                        (uint)CARRY2((uint)uVar4,param_4),uVar5,uVar6);
  iVar2 = FUN_1000_1384((uint)uVar4 + param_5,
                        (int)((ulong)uVar4 >> 0x10) + ((int)param_5 >> 0xf) +
                        (uint)CARRY2((uint)uVar4,param_5),uVar7,uVar8);
  local_1a = iVar2 + param_6 + DAT_1008_093c;
  local_8 = param_3 + iVar3;
  local_c = param_1 + 0x50;
  local_e = param_2 + -1;
  local_12 = param_4;
  if (DAT_1008_0940 != 0) {
    iVar3 = FUN_1000_10d6(local_16);
    if (iVar3 != 0) {
      local_1a = local_1a + -0xe10;
    }
  }
  return local_1a;
}


// ==== srand @ 1000:129e ====

void __cdecl16far srand(undefined2 param_1)

{
  DAT_1008_094e = param_1;
  DAT_1008_0950 = 0;
  return;
}


// ==== rand @ 1000:12b6 ====

uint __cdecl16far rand(void)

{
  long lVar1;
  
  lVar1 = FUN_1000_1384(DAT_1008_094e,DAT_1008_0950,0x43fd,3);
  DAT_1008_0950 = (uint)((ulong)(lVar1 + 0x269ec3) >> 0x10);
  DAT_1008_094e = (int)(lVar1 + 0x269ec3);
  return DAT_1008_0950 & 0x7fff;
}


// ==== FUN_1000_12ea @ 1000:12ea ====

undefined4 __stdcall16far FUN_1000_12ea(uint param_1,uint param_2,uint param_3,uint param_4)

{
  ulong uVar1;
  long lVar2;
  uint uVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint uVar8;
  bool bVar10;
  char cVar11;
  uint uVar9;
  
  cVar11 = (int)param_2 < 0;
  if ((bool)cVar11) {
    bVar10 = param_1 != 0;
    param_1 = -param_1;
    param_2 = -(uint)bVar10 - param_2;
  }
  if ((int)param_4 < 0) {
    cVar11 = cVar11 + '\x01';
    bVar10 = param_3 != 0;
    param_3 = -param_3;
    param_4 = -(uint)bVar10 - param_4;
  }
  uVar3 = param_1;
  uVar5 = param_3;
  uVar6 = param_2;
  uVar9 = param_4;
  if (param_4 == 0) {
    uVar3 = param_2 / param_3;
    iVar4 = (int)(((ulong)param_2 % (ulong)param_3 << 0x10 | (ulong)param_1) / (ulong)param_3);
  }
  else {
    do {
      uVar8 = uVar9 >> 1;
      uVar5 = uVar5 >> 1 | (uint)((uVar9 & 1) != 0) << 0xf;
      uVar7 = uVar6 >> 1;
      uVar3 = uVar3 >> 1 | (uint)((uVar6 & 1) != 0) << 0xf;
      uVar6 = uVar7;
      uVar9 = uVar8;
    } while (uVar8 != 0);
    uVar1 = CONCAT22(uVar7,uVar3) / (ulong)uVar5;
    iVar4 = (int)uVar1;
    lVar2 = (ulong)param_3 * (uVar1 & 0xffff);
    uVar3 = (uint)((ulong)lVar2 >> 0x10);
    uVar5 = uVar3 + iVar4 * param_4;
    if (((CARRY2(uVar3,iVar4 * param_4)) || (param_2 < uVar5)) ||
       ((param_2 <= uVar5 && (param_1 < (uint)lVar2)))) {
      iVar4 = iVar4 + -1;
    }
    uVar3 = 0;
  }
  if (cVar11 == '\x01') {
    bVar10 = iVar4 != 0;
    iVar4 = -iVar4;
    uVar3 = -(uint)bVar10 - uVar3;
  }
  return CONCAT22(uVar3,iVar4);
}


// ==== FUN_1000_1384 @ 1000:1384 ====

long __stdcall16far FUN_1000_1384(uint param_1,int param_2,uint param_3,int param_4)

{
  if (param_4 == 0 && param_2 == 0) {
    return (ulong)param_1 * (ulong)param_3;
  }
  return CONCAT22((int)((ulong)param_1 * (ulong)param_3 >> 0x10) +
                  param_2 * param_3 + param_1 * param_4,(int)((ulong)param_1 * (ulong)param_3));
}


// ==== FUN_1000_13b6 @ 1000:13b6 ====

undefined4 __stdcall16far FUN_1000_13b6(uint param_1,uint param_2,uint param_3,uint param_4)

{
  ulong uVar1;
  long lVar2;
  uint uVar3;
  uint uVar4;
  int iVar5;
  int iVar6;
  uint uVar7;
  uint uVar8;
  uint uVar9;
  uint uVar10;
  uint uVar11;
  bool bVar12;
  bool bVar13;
  
  bVar13 = (int)param_2 < 0;
  if (bVar13) {
    bVar12 = param_1 != 0;
    param_1 = -param_1;
    param_2 = -(uint)bVar12 - param_2;
  }
  uVar11 = (uint)bVar13;
  if ((int)param_4 < 0) {
    bVar13 = param_3 != 0;
    param_3 = -param_3;
    param_4 = -(uint)bVar13 - param_4;
  }
  uVar3 = param_1;
  uVar4 = param_3;
  uVar8 = param_2;
  uVar9 = param_4;
  if (param_4 == 0) {
    iVar5 = (int)(((ulong)param_2 % (ulong)param_3 << 0x10 | (ulong)param_1) % (ulong)param_3);
    iVar6 = 0;
    if ((int)(uVar11 - 1) < 0) goto LAB_1000_1450;
  }
  else {
    do {
      uVar10 = uVar9 >> 1;
      uVar4 = uVar4 >> 1 | (uint)((uVar9 & 1) != 0) << 0xf;
      uVar7 = uVar8 >> 1;
      uVar3 = uVar3 >> 1 | (uint)((uVar8 & 1) != 0) << 0xf;
      uVar8 = uVar7;
      uVar9 = uVar10;
    } while (uVar10 != 0);
    uVar1 = CONCAT22(uVar7,uVar3) / (ulong)uVar4;
    uVar3 = (int)uVar1 * param_4;
    lVar2 = (uVar1 & 0xffff) * (ulong)param_3;
    uVar8 = (uint)((ulong)lVar2 >> 0x10);
    uVar4 = (uint)lVar2;
    uVar9 = uVar8 + uVar3;
    if (((CARRY2(uVar8,uVar3)) || (param_2 < uVar9)) || ((param_2 <= uVar9 && (param_1 < uVar4)))) {
      bVar13 = uVar4 < param_3;
      uVar4 = uVar4 - param_3;
      uVar9 = (uVar9 - param_4) - (uint)bVar13;
    }
    iVar5 = uVar4 - param_1;
    iVar6 = (uVar9 - param_2) - (uint)(uVar4 < param_1);
    if (-1 < (int)(uVar11 - 1)) goto LAB_1000_1450;
  }
  bVar13 = iVar5 != 0;
  iVar5 = -iVar5;
  iVar6 = -(uint)bVar13 - iVar6;
LAB_1000_1450:
  return CONCAT22(iVar6,iVar5);
}


// ==== FUN_1000_1456 @ 1000:1456 ====

void __cdecl16near FUN_1000_1456(void)

{
  return;
}


// ==== FUN_1000_145b @ 1000:145b ====

void FUN_1000_145b(void)

{
  FUN_1000_095d();
  return;
}


// ==== FUN_1000_1462 @ 1000:1462 ====

int __cdecl16far FUN_1000_1462(int param_1)

{
  int iVar1;
  int iVar2;
  int unaff_BP;
  int iVar3;
  undefined2 unaff_CS;
  undefined2 uVar4;
  undefined2 uVar5;
  undefined2 uVar6;
  
  iVar3 = unaff_BP + 1;
  uVar6 = 0x1008;
  if (param_1 == 0) {
    param_1 = 1;
  }
  while( true ) {
    uVar5 = 0xffff;
    LOCKSEGMENT(unaff_CS,0xffff);
    uVar4 = 0x20;
    iVar1 = LOCALALLOC(0x10c8,param_1);
    unaff_CS = 0x10c8;
    UNLOCKSEGMENT(0x10c8,0xffff,uVar4,uVar5,iVar1,uVar6,iVar3);
    if (iVar1 != 0) {
      return iVar1;
    }
    if (DAT_1008_0956 == 0 && DAT_1008_0954 == (code *)0x0) break;
    iVar2 = (*DAT_1008_0954)(0x10c8,param_1);
    if (iVar2 == 0) {
      return iVar1;
    }
  }
  return 0;
}


// ==== FUN_1000_155a @ 1000:155a ====

int __cdecl16far FUN_1000_155a(int *param_1,undefined2 param_2)

{
  int iVar1;
  undefined4 local_6;
  
  local_6 = (int *)CONCAT22(param_2,param_1);
  iVar1 = FUN_1000_15b4(param_1,param_2);
  if ((*local_6 == 0xc) && (param_1[1] == 0)) {
    iVar1 = iVar1 * 3;
  }
  else {
    iVar1 = iVar1 << 2;
  }
  return iVar1;
}


// ==== FUN_1000_15b4 @ 1000:15b4 ====

int __cdecl16far FUN_1000_15b4(int *param_1,undefined2 param_2)

{
  int iVar1;
  undefined4 local_8;
  int local_4;
  
  local_8 = (int *)CONCAT22(param_2,param_1);
  if ((*local_8 == 0xc) && (param_1[1] == 0)) {
    local_4 = param_1[5];
  }
  else {
    if (param_1[0x11] != 0 || param_1[0x10] != 0) {
      return param_1[0x10];
    }
    local_4 = param_1[7];
  }
  if (local_4 == 1) {
    iVar1 = 2;
  }
  else if (local_4 == 4) {
    iVar1 = 0x10;
  }
  else if (local_4 == 8) {
    iVar1 = 0x100;
  }
  else {
    iVar1 = 0;
  }
  return iVar1;
}


// ==== FUN_1000_1658 @ 1000:1658 ====

undefined2 __cdecl16far FUN_1000_1658(int param_1,int *param_2)

{
  uint uVar1;
  int iVar2;
  undefined2 *puVar3;
  undefined *puVar4;
  undefined2 uVar5;
  undefined2 unaff_CS;
  undefined2 uVar6;
  undefined2 uVar7;
  int local_e;
  int local_c;
  undefined4 local_6;
  
  uVar1 = GETDEVICECAPS(unaff_CS,0x26);
  if ((uVar1 & 0x100) == 0) {
    local_c = 0x100;
  }
  else if (param_2._2_2_ == 0 && (int *)param_2 == (int *)0x0) {
    local_c = GETDEVICECAPS(0x10c8,0x68);
  }
  else if (((int *)param_2)[0x10] == 0) {
    local_c = 1 << (*(byte *)((int *)param_2 + 7) & 0x1f);
  }
  else {
    local_c = ((int *)param_2)[0x10];
  }
  uVar7 = 0x40;
  iVar2 = (local_c + 2) * 4;
  puVar3 = (undefined2 *)LOCALALLOC(0x10c8,iVar2);
  *puVar3 = 0x300;
  puVar3[1] = local_c;
  if (param_2._2_2_ == 0 && (int *)param_2 == (int *)0x0) {
    GETSYSTEMPALETTEENTRIES(0x10c8,puVar3 + 2,0x1008,local_c,0);
    iVar2 = param_1;
  }
  else {
    local_6 = (undefined *)CONCAT22(param_2._2_2_,(undefined *)(*param_2 + (int)(int *)param_2));
    for (local_e = 0; local_e < local_c; local_e = local_e + 1) {
      uVar5 = (undefined2)((ulong)local_6 >> 0x10);
      puVar4 = (undefined *)local_6;
      *(undefined *)(puVar3 + local_e * 2 + 2) = puVar4[2];
      *(undefined *)((int)puVar3 + local_e * 4 + 5) = puVar4[1];
      *(undefined *)(puVar3 + local_e * 2 + 3) = *local_6;
      *(undefined *)((int)puVar3 + local_e * 4 + 7) = 0;
      local_6 = (undefined *)CONCAT22(uVar5,puVar4 + 4);
    }
  }
  uVar6 = 0x1008;
  uVar5 = CREATEPALETTE(0x10c8,puVar3);
  LOCALFREE(0x10c8,puVar3,uVar6,iVar2,uVar7);
  return uVar5;
}


// ==== FUN_1000_1791 @ 1000:1791 ====

undefined2 __cdecl16far FUN_1000_1791(undefined2 param_1_00,undefined2 param_1,undefined param_3)

{
  undefined2 *puVar1;
  undefined2 uVar2;
  undefined2 unaff_CS;
  undefined2 uVar3;
  undefined2 uVar4;
  
  uVar4 = 0x40;
  puVar1 = (undefined2 *)LOCALALLOC(unaff_CS,0xc);
  *puVar1 = 0x300;
  puVar1[1] = 1;
  *(undefined *)(puVar1 + 2) = (undefined)param_1;
  *(undefined *)((int)puVar1 + 5) = param_1._1_1_;
  *(undefined *)(puVar1 + 3) = param_3;
  *(undefined *)((int)puVar1 + 7) = 0;
  uVar3 = 0x1008;
  uVar2 = CREATEPALETTE(0x10c8,puVar1);
  LOCALFREE(0x10c8,puVar1,uVar3,uVar4);
  return uVar2;
}


// ==== FUN_1000_17fd @ 1000:17fd ====

void __cdecl16far
FUN_1000_17fd(undefined2 param_1,undefined2 param_2,undefined2 param_3,int param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined2 unaff_CS;
  undefined2 uVar6;
  undefined2 local_14;
  undefined2 local_a;
  undefined2 local_8;
  
  uVar3 = GETDEVICECAPS(unaff_CS,0x26);
  if ((uVar3 & 0x100) != 0) {
    local_8 = GETDEVICECAPS(0x10c8,0x68);
    if (local_8 == 0) {
      local_8 = 0x100;
    }
    iVar4 = LOCALALLOC(0x10c8,param_4 << 2);
    iVar5 = LOCALALLOC(0x10c8,local_8 << 2);
    GETPALETTEENTRIES(0x10c8,iVar4,0x1008,param_4,0);
    uVar6 = param_2;
    GETPALETTEENTRIES(0x10c8,iVar5,0x1008,local_8,0);
    for (local_a = 0; local_a < param_4; local_a = local_a + 1) {
      iVar1 = *(int *)(local_a * 4 + iVar4);
      iVar2 = *(int *)(local_a * 4 + iVar4 + 2);
      local_14 = GETNEARESTPALETTEINDEX(0x10c8,iVar1,iVar2);
      if ((*(int *)(local_14 * 4 + iVar5) != iVar1) || (*(int *)(local_14 * 4 + iVar5 + 2) != iVar2)
         ) {
        if ((local_14 < 10) || (DAT_1008_0010 < local_14)) {
          if (DAT_1008_0010 < 10) break;
          local_14 = DAT_1008_0010;
          DAT_1008_0010 = DAT_1008_0010 + -1;
        }
        *(int *)(local_14 * 4 + iVar5) = iVar1;
        *(int *)(local_14 * 4 + iVar5 + 2) = iVar2;
      }
    }
    SETPALETTEENTRIES(0x10c8,iVar5,0x1008,local_8,0);
    LOCALFREE(0x10c8,iVar5,param_2,uVar6);
    LOCALFREE(0x10c8,iVar4);
  }
  return;
}


// ==== FUN_1000_1945 @ 1000:1945 ====

byte __cdecl16far FUN_1000_1945(undefined4 param_1)

{
  int iVar1;
  byte *pbVar2;
  byte *pbVar3;
  undefined2 in_DX;
  byte local_8;
  undefined4 local_6;
  
  pbVar3 = (byte *)FUN_1000_19ec((int)param_1,param_1._2_2_);
  local_6 = (byte *)CONCAT22(in_DX,pbVar3);
  pbVar2 = local_6;
  local_6 = (byte *)CONCAT22(in_DX,pbVar3 + 1);
  local_8 = *pbVar2;
  iVar1 = *(int *)((int)param_1 + 0x10);
  if (*(int *)((int)param_1 + 0x12) == 0) {
    if (iVar1 == 0) {
      if (*(int *)((int)param_1 + 0xe) == 4) {
        local_8 = local_8 >> 4;
      }
    }
    else if (iVar1 == 1) {
      if (local_8 == 0) {
        local_6 = (byte *)CONCAT22(in_DX,pbVar3 + 2);
      }
      local_8 = *local_6;
    }
    else if (iVar1 == 2) {
      if (local_8 == 0) {
        local_6 = (byte *)CONCAT22(in_DX,pbVar3 + 2);
      }
      local_8 = *local_6 >> 4;
    }
  }
  return local_8;
}


// ==== FUN_1000_19ec @ 1000:19ec ====

int __cdecl16far FUN_1000_19ec(int *param_1)

{
  return ((int *)param_1)[0x10] * 4 + *param_1 + (int)(int *)param_1;
}


// ==== FUN_1000_1a16 @ 1000:1a16 ====

void __cdecl16far FUN_1000_1a16(byte *param_1,undefined2 param_2,byte *param_3,byte param_4)

{
  byte *pbVar1;
  byte *pbVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  undefined2 uVar6;
  int local_16;
  uint local_14;
  byte *local_e;
  undefined4 local_a;
  undefined4 local_6;
  
  local_6 = (byte *)CONCAT22(param_2,param_1);
  local_a = param_3;
  uVar6 = param_3._2_2_;
  local_e = (byte *)FUN_1000_19ec((byte *)param_3,param_3._2_2_);
  while (pbVar2 = local_6, pbVar1 = local_a, (byte *)local_a < local_e) {
    local_a = (byte *)CONCAT22(local_a._2_2_,(byte *)local_a + 1);
    local_6 = (byte *)CONCAT22(local_6._2_2_,(byte *)local_6 + 1);
    *pbVar2 = *pbVar1;
  }
  if (*(int *)((byte *)param_3 + 0xe) == 4) {
    uVar3 = -(*(int *)((byte *)param_3 + 4) % 8) & 7;
  }
  else {
    uVar3 = -(*(int *)((byte *)param_3 + 4) % 4) & 3;
  }
  if (*(int *)((byte *)param_3 + 0xe) == 4) {
    iVar4 = (int)(*(int *)((byte *)param_3 + 4) + uVar3) >> 1;
  }
  else {
    iVar4 = *(int *)((byte *)param_3 + 4) + uVar3;
  }
  if ((param_4 & 2) != 0) {
    local_e = local_e + (*(int *)((byte *)param_3 + 8) + -1) * iVar4;
  }
  if ((param_4 & 1) != 0) {
    if (*(int *)((byte *)param_3 + 0xe) == 4) {
      uVar3 = *(uint *)((byte *)param_3 + 4) >> 1 |
              (uint)((*(uint *)((byte *)param_3 + 6) & 1) != 0) << 0xf;
    }
    else {
      uVar3 = *(uint *)((byte *)param_3 + 4);
    }
    local_e = local_e + (uVar3 - 1);
  }
  local_14 = 0;
  while( true ) {
    if ((*(int *)((byte *)param_3 + 10) < (int)local_14 >> 0xf) ||
       ((*(int *)((byte *)param_3 + 10) <= (int)local_14 >> 0xf &&
        (*(uint *)((byte *)param_3 + 8) <= local_14)))) break;
    local_a = (byte *)CONCAT22(uVar6,local_e);
    if (*(int *)((byte *)param_3 + 0xe) == 4) {
      if ((param_4 & 1) == 0) {
        for (local_16 = 0; pbVar2 = local_6, pbVar1 = local_a, local_16 < iVar4;
            local_16 = local_16 + 1) {
          local_a = (byte *)CONCAT22(local_a._2_2_,(byte *)local_a + 1);
          local_6 = (byte *)CONCAT22(local_6._2_2_,(byte *)local_6 + 1);
          *pbVar2 = *pbVar1;
        }
      }
      else {
        for (local_16 = 0; local_16 < iVar4; local_16 = local_16 + 1) {
          *local_6 = (char)*local_a >> 4 & 0xfU | *local_a << 4;
          local_a = (byte *)CONCAT22(local_a._2_2_,(byte *)local_a + -1);
          local_6 = (byte *)CONCAT22(local_6._2_2_,(byte *)local_6 + 1);
        }
      }
    }
    else if ((param_4 & 1) == 0) {
      for (local_16 = 0; pbVar2 = local_6, pbVar1 = local_a, local_16 < iVar4;
          local_16 = local_16 + 1) {
        local_a = (byte *)CONCAT22(local_a._2_2_,(byte *)local_a + 1);
        local_6 = (byte *)CONCAT22(local_6._2_2_,(byte *)local_6 + 1);
        *pbVar2 = *pbVar1;
      }
    }
    else {
      for (local_16 = 0; pbVar2 = local_6, pbVar1 = local_a, local_16 < iVar4;
          local_16 = local_16 + 1) {
        local_a = (byte *)CONCAT22(local_a._2_2_,(byte *)local_a + -1);
        local_6 = (byte *)CONCAT22(local_6._2_2_,(byte *)local_6 + 1);
        *pbVar2 = *pbVar1;
      }
    }
    iVar5 = iVar4;
    if ((param_4 & 2) != 0) {
      iVar5 = -iVar4;
    }
    local_e = local_e + iVar5;
    local_14 = local_14 + 1;
  }
  return;
}


// ==== FUN_1000_1c50 @ 1000:1c50 ====

undefined2 __stdcall16far
FUN_1000_1c50(undefined2 param_1,undefined2 param_2_00,undefined2 param_3_00,int param_2,
             undefined2 param_3)

{
  int iVar1;
  undefined2 unaff_CS;
  int unaff_SS;
  int iVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  undefined2 local_30;
  undefined2 local_2e;
  undefined2 local_2c;
  undefined2 local_2a;
  undefined2 local_28;
  undefined2 local_26;
  undefined2 local_24;
  undefined2 local_22;
  undefined2 local_20;
  undefined2 local_1e;
  undefined2 local_1c;
  undefined2 local_1a;
  undefined2 local_18;
  undefined local_16 [4];
  undefined2 local_12;
  int local_4;
  
  if (param_2 == 0) {
    local_30 = 8;
    local_2e = 0x1df3;
    local_2c = 0x1000;
    local_2a = 0;
    local_28 = 8;
    local_26 = param_3;
    local_24 = LOADICON(unaff_CS,100,0);
    local_22 = LOADCURSOR(0x10c8,0x6a,0);
    local_20 = 0;
    local_1c = 0;
    local_1e = 0;
    local_1a = 0x12;
    local_18 = 0x1008;
    unaff_CS = 0x10c8;
    iVar1 = REGISTERCLASS(0x10c8,&local_30);
    if (iVar1 == 0) {
      return 0;
    }
  }
  if (param_2 == 0) {
    local_30 = 8;
    local_2e = 0x2699;
    local_2c = 0x1000;
    local_2a = 0;
    local_28 = 0;
    local_26 = param_3;
    local_24 = 0;
    local_22 = LOADCURSOR(unaff_CS,0x7f00,0);
    local_20 = 0;
    local_1c = 0;
    local_1e = 0;
    local_1a = 0x20;
    local_18 = 0x1008;
    unaff_CS = 0x10c8;
    iVar1 = REGISTERCLASS(0x10c8,&local_30);
    if (iVar1 == 0) {
      return 0;
    }
  }
  DAT_1008_2d78 = param_3;
  uVar4 = 0x1008;
  iVar1 = FINDWINDOW(unaff_CS,0x31,0x1008,0x3d);
  if (iVar1 != 0) {
    g_otherInstance = 1;
  }
  uVar3 = 0;
  iVar1 = CREATEWINDOWEX(0x10c8,0,0,param_3,0,0,0,0,0,0,0,0x8000,0x4b,0x1008,0x57,0x1008,0);
  if (iVar1 == 0) {
    local_12 = 0;
  }
  else {
    local_4 = iVar1;
    SHOWWINDOW(0x10c8,param_1);
    iVar2 = local_4;
    UPDATEWINDOW(0x10c8,local_4,iVar1,uVar3,uVar4);
    while (iVar1 = GETMESSAGE(0x10c8,0,0,0,local_16,unaff_SS,iVar2), iVar1 != 0) {
      iVar2 = unaff_SS;
      TRANSLATEMESSAGE(0x10c8,local_16);
      DISPATCHMESSAGE(0x10c8,local_16);
    }
  }
  return local_12;
}


// ==== FUN_1000_1ddc @ 1000:1ddc ====

void __cdecl16far FUN_1000_1ddc(void)

{
  DAT_1008_0ab8 = 1;
  return;
}


// ==== FUN_1000_1df3 @ 1000:1df3 ====

undefined2 __stdcall16far
FUN_1000_1df3(int param_1,int param_2,int param_3,uint param_4,undefined2 param_5)

{
  bool bVar1;
  int iVar2;
  uint uVar3;
  undefined2 uVar4;
  undefined2 unaff_SI;
  undefined2 unaff_CS;
  undefined2 unaff_SS;
  undefined2 uVar5;
  undefined2 uVar6;
  undefined2 uVar7;
  undefined4 local_128;
  int local_124 [130];
  int local_20;
  int local_1e;
  int local_1c;
  int local_1a;
  int local_14;
  int local_12;
  int local_10;
  undefined2 local_e;
  undefined2 local_c;
  undefined2 local_a;
  undefined4 local_8;
  undefined2 local_4;
  
  iVar2 = g_cfgGForce;
  if (param_4 == 0x201) {
LAB_1000_2307:
    if ((g_hwndSub == 0) && (DAT_1008_0abe == 0)) {
      uVar7 = param_5;
      SETCAPTURE();
      uVar4 = param_5;
      GETWINDOWRECT(0x10c8,&local_1c,unaff_SS);
      DAT_1008_0aba = param_1 + local_1c;
      DAT_1008_0abc = param_2 + local_1a;
      DAT_1008_0abe = 1;
      FUN_1000_8fd7(1,uVar4,uVar7);
      FUN_1000_3284(param_5);
      FUN_1000_3717(param_5);
      unaff_CS = 0x1000;
    }
    goto LAB_1000_267c;
  }
  if (param_4 < 0x202) {
    if (param_4 == 0x46) {
      *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) | 0x100;
      DAT_1008_0acc = 1;
      return 0;
    }
    if (param_4 < 0x47) {
      if (param_4 == 1) {
        iVar2 = FUN_1000_3c20(param_5);
        if (iVar2 == 0) {
          MESSAGEBOX(0x1000,0x10,0x65,0x1008,0x71,0x1008);
          return 0xffff;
        }
        Ordinal_9(0x1000,1,param_5);
        g_hwndMain = param_5;
        uVar4 = 0x1000;
        FUN_1000_2f36();
        if (g_cfgTopmost != 0) {
          uVar4 = 0x10c8;
          SETWINDOWPOS(0x1000,3,0,0,0,0,0xffff);
        }
        local_4 = GETDC(uVar4,param_5);
        uVar7 = DAT_1008_2d78;
        local_c = FINDRESOURCE(0x10c8,2,0,0x65,0);
        uVar4 = DAT_1008_2d78;
        local_a = LOADRESOURCE(0x10c8,local_c);
        local_8 = (int *)LOCKRESOURCE(0x10c8,local_a,uVar4,uVar7);
        iVar2 = FUN_1000_155a(local_8);
        local_10 = iVar2 + *local_8 + (int)(int *)local_8;
        local_e = local_8._2_2_;
        DAT_1008_2d6a = FUN_1000_1658(local_4,(int *)local_8,local_8._2_2_);
        FREERESOURCE(0x1000,local_a);
        uVar4 = local_4;
        SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
        REALIZEPALETTE(0x10c8,local_4,uVar4);
        iVar2 = FUN_1000_42f3(local_4);
        if (iVar2 == 0) {
          MESSAGEBOX(0x1000,0x10,0x8f,0x1008,0x9b,0x1008);
          RELEASEDC(0x10c8,local_4);
          return 0xffff;
        }
        uVar4 = param_5;
        RELEASEDC(0x1000,local_4);
        iVar2 = FUN_1000_306a(param_5,uVar4);
        if (iVar2 == 0) {
          MESSAGEBOX(0x1000,0x10,0xb2,0x1008,0xbe,0x1008);
          return 0xffff;
        }
        SETTIMER(0x1000,0,0,0x6c,1);
        unaff_CS = 0x10c8;
      }
      else if (param_4 == 2) {
        FUN_1000_3d12(param_5);
        if (g_hwndSub != 0) {
          destroySub();
        }
        uVar4 = param_5;
        KILLTIMER(0x1000,1);
        stopSound(uVar4);
        FUN_1000_3119(0);
        FUN_1000_44ed();
        DELETEOBJECT(0x1000,DAT_1008_2d6a);
        uVar4 = 0x25e1;
        Ordinal_9(0x10c8,0,param_5);
        POSTQUITMESSAGE(0x10c8,0,uVar4);
        unaff_CS = 0x10c8;
      }
      else {
        if (param_4 == 0xf) {
          if (DAT_1008_0acc != 0) {
            DAT_1008_0acc = 0;
            VALIDATERECT(unaff_CS,0,0,param_5,unaff_SI);
            return 0;
          }
          FUN_1000_3237(param_5);
          VALIDATERECT(0x1000,0,0,param_5,unaff_SI);
          return 0;
        }
        if (param_4 == 0x14) {
          return 0;
        }
      }
    }
    else {
      if (param_4 == 0x47) {
        return 0;
      }
      if (param_4 == 0x111) {
        if (param_3 == 2) {
          DESTROYWINDOW();
          return 0;
        }
        if (param_3 == 0x65) {
          SENDMESSAGE(unaff_CS,0,0,0,0x402);
          unaff_CS = 0x10c8;
        }
      }
      else {
        if (param_4 == 0x113) {
          if (DAT_1008_23da != 0) {
            DAT_1008_23da = DAT_1008_23da + -1;
            return 0;
          }
          if (g_cfgNoSleep == 0) {
            GETCURSORPOS();
            if ((DAT_1008_0ad0 != local_20) || (DAT_1008_0ad2 != local_1e)) {
              DAT_1008_0ad0 = local_20;
              DAT_1008_0ad2 = local_1e;
              DAT_1008_0ab8 = 1;
            }
            if (DAT_1008_2d96 == 0) {
              if (DAT_1008_0ab8 == 0) {
                iVar2 = DAT_1008_23c4 + 1;
                bVar1 = 300 < DAT_1008_23c4;
                DAT_1008_23c4 = iVar2;
                if (bVar1) {
                  FUN_1000_8fd7(3);
                }
              }
              else {
                DAT_1008_0ab8 = 0;
                DAT_1008_23c4 = 0;
              }
            }
            else if (DAT_1008_0ab8 != 0) {
              DAT_1008_2d96 = 0;
              DAT_1008_23c4 = 0;
              FUN_1000_8fd7(0);
            }
          }
          DAT_1008_0acc = 0;
          g_hwndMain = param_5;
          FUN_1000_4cf8();
          FUN_1000_3284(param_5);
          FUN_1000_3717(param_5);
          DAT_1008_0ac2 = 1;
          return 0;
        }
        if ((param_4 == 0x200) && (DAT_1008_0abe != 0)) {
          uVar4 = param_5;
          GETWINDOWRECT(unaff_CS,&local_1c,unaff_SS);
          local_12 = param_1 + local_1c;
          local_14 = param_2 + local_1a;
          if ((DAT_1008_0aba != local_12) || (unaff_CS = 0x10c8, DAT_1008_0abc != local_14)) {
            FUN_1000_91cd(local_12 - DAT_1008_0aba,local_14 - DAT_1008_0abc,uVar4);
            DAT_1008_0aba = local_12;
            DAT_1008_0abc = local_14;
            FUN_1000_3284(param_5);
            FUN_1000_3717(param_5);
            unaff_CS = 0x1000;
          }
        }
      }
    }
    goto LAB_1000_267c;
  }
  if (param_4 == 0x206) {
    DAT_1008_0ac0 = 1;
    goto LAB_1000_267c;
  }
  if (param_4 < 0x207) {
    if (param_4 != 0x202) {
      if (param_4 == 0x203) goto LAB_1000_248e;
      if (param_4 == 0x204) goto LAB_1000_2307;
      if (param_4 != 0x205) goto LAB_1000_267c;
      if (DAT_1008_0ac0 != 0) {
        DESTROYWINDOW();
        unaff_CS = 0x10c8;
        goto LAB_1000_267c;
      }
    }
    if (DAT_1008_0abe != 0) {
      uVar4 = param_5;
      GETWINDOWRECT(unaff_CS,&local_1c,unaff_SS);
      local_12 = param_1 + local_1c;
      local_14 = param_2 + local_1a;
      FUN_1000_91cd(local_12 - DAT_1008_0aba,local_14 - DAT_1008_0abc,uVar4);
      FUN_1000_8fd7(0);
      if (param_4 == 0x205) {
        FUN_1000_8fd7(2);
      }
      FUN_1000_3284(param_5);
      FUN_1000_3717(param_5);
      RELEASECAPTURE(0x1000);
      DAT_1008_0abe = 0;
      unaff_CS = 0x10c8;
    }
  }
  else {
    if (param_4 == 0x233) {
      if (g_hwndSub == 0) {
        unaff_CS = 0x10c8;
        iVar2 = Ordinal_11();
        if (iVar2 != 0) {
          FUN_1000_42aa(local_124);
          unaff_CS = 0x1000;
          FUN_1000_8fd7(4);
        }
      }
      Ordinal_12(unaff_CS,param_3);
      unaff_CS = 0x10c8;
      goto LAB_1000_267c;
    }
    if (param_4 == 0x400) {
      if (param_3 == 1) {
        FUN_1000_3d5f(param_1);
      }
      if (param_3 == 2) {
        FUN_1000_3da7(param_1);
      }
      return 0;
    }
    if (param_4 == 0x401) {
      if ((param_2 == 0) && ((param_1 == 0x202 || (param_1 == 0x205)))) {
        if (DAT_1008_23ce == 0) {
          bringToTop(param_5);
          if (g_hwndSub != 0) {
            bringToTop(g_hwndSub);
          }
        }
        else {
          if (g_hwndSub != 0) {
            bringToTop(g_hwndSub);
          }
          bringToTop(param_5);
        }
        bringToTop(param_5);
        local_124[0] = CREATEPOPUPMENU(0x1000);
        APPENDMENU(0x10c8,0xd5,0x1008,0x65,0);
        APPENDMENU(0x10c8,0xea,0x1008,2,0);
        GETCURSORPOS(0x10c8,&local_128);
        iVar2 = local_124[0];
        TRACKPOPUPMENU(0x10c8,0,0,param_5,0,local_128._2_2_,(undefined2)local_128,0);
        DESTROYMENU(0x10c8,local_124[0],iVar2);
        return 0;
      }
      return 0;
    }
    if (param_4 != 0x402) goto LAB_1000_267c;
LAB_1000_248e:
    local_124[0] = g_cfgTopmost;
    g_hwndMain = param_5;
    uVar3 = GETKEYSTATE();
    if (((uVar3 & 0x8000) == 0) || (uVar3 = GETKEYSTATE(0x10c8,0x11), (uVar3 & 0x8000) == 0)) {
      uVar7 = 0x1000;
      local_128 = MAKEPROCINSTANCE(0x10c8,DAT_1008_2d78,0x27ff);
      uVar4 = DAT_1008_2d78;
      DIALOGBOX(0x10c8,local_128,param_5,0x6b,0);
    }
    else {
      uVar7 = 0x1000;
      local_128 = MAKEPROCINSTANCE(0x10c8,DAT_1008_2d78,0x292a);
      uVar4 = DAT_1008_2d78;
      DIALOGBOX(0x10c8,local_128,param_5,0x6c,0);
    }
    uVar6 = local_128._2_2_;
    FREEPROCINSTANCE(0x10c8,(undefined2)local_128);
    unaff_CS = 0x1000;
    uVar5 = param_5;
    FUN_1000_3237(param_5,uVar6,uVar4,uVar7);
    if (local_124[0] != g_cfgTopmost) {
      if (g_cfgTopmost == 0) {
        unaff_CS = 0x10c8;
        SETWINDOWPOS(0x1000,3,0,0,0,0,0xfffe);
        uVar5 = param_5;
      }
      else {
        unaff_CS = 0x10c8;
        SETWINDOWPOS(0x1000,3,0,0,0,0,0xffff);
        uVar5 = param_5;
      }
    }
    if ((iVar2 != g_cfgGForce) && (g_cfgGForce != 0)) {
      FUN_1000_8fd7(2,uVar5);
      unaff_CS = 0x1000;
    }
  }
LAB_1000_267c:
  uVar4 = DEFWINDOWPROC(unaff_CS,param_1,param_2,param_3,param_4);
  return uVar4;
}


// ==== FUN_1000_2699 @ 1000:2699 ====

undefined2 __stdcall16far
FUN_1000_2699(int param_1,undefined2 param_2,undefined2 param_3,uint param_4,undefined2 param_5)

{
  int iVar1;
  undefined2 uVar2;
  undefined2 unaff_SI;
  undefined2 unaff_CS;
  
  if (param_4 == 0x14) {
    return 0;
  }
  if (param_4 < 0x15) {
    if (param_4 == 1) {
      iVar1 = FUN_1000_9200(param_5);
      if (iVar1 == 0) {
        DESTROYWINDOW(0x1000,param_5);
        return 1;
      }
      unaff_CS = 0x10c8;
      SETTIMER(0x1000,0,0,0x6c,1);
    }
    else if (param_4 == 2) {
      FUN_1000_930f(0);
      unaff_CS = 0x10c8;
      KILLTIMER(0x1000,1);
    }
    else if (param_4 == 0xf) {
      if (DAT_1008_0ad4 != 0) {
        DAT_1008_0ad4 = 0;
        VALIDATERECT(unaff_CS,0,0,param_5,unaff_SI);
        return 0;
      }
      FUN_1000_93df(param_5);
      VALIDATERECT(0x1000,0,0,param_5,unaff_SI);
      return 0;
    }
  }
  else {
    if (param_4 == 0x46) {
      *(uint *)(param_1 + 0xc) = *(uint *)(param_1 + 0xc) | 0x100;
      DAT_1008_0ad4 = 1;
      return 0;
    }
    if (param_4 == 0x47) {
      return 0;
    }
    if (param_4 == 0x113) {
      DAT_1008_0ad4 = 0;
      FUN_1000_9438(param_5);
      iVar1 = FUN_1000_9a49(param_5);
      if (iVar1 == 0) {
        g_otherInstance = 1;
        FUN_1000_4ce1();
      }
      return 0;
    }
  }
  uVar2 = DEFWINDOWPROC(unaff_CS,param_1,param_2,param_3,param_4);
  return uVar2;
}


// ==== FUN_1000_27ff @ 1000:27ff ====

undefined2 __stdcall16far
FUN_1000_27ff(undefined2 param_1_00,undefined2 param_2_00,int param_1,int param_2,undefined2 param_3
             )

{
  undefined2 uVar1;
  undefined2 unaff_CS;
  undefined2 uVar2;
  undefined2 uVar3;
  
  if (param_2 == 0x110) {
    SENDDLGITEMMESSAGE(unaff_CS,0,0,g_cfgAlarm,0x401,0x3e9);
    SENDDLGITEMMESSAGE(0x10c8,0,0,g_cfgSound,0x401,0x3ea);
    SENDDLGITEMMESSAGE(0x10c8,0,0,g_cfgNoSleep,0x401,0x3eb);
    SENDDLGITEMMESSAGE(0x10c8,0,0,g_cfgGForce,0x401,0x3ec);
    uVar1 = 1;
  }
  else {
    if (param_2 == 0x111) {
      if (param_1 == 4) {
        WINHELP(unaff_CS,0,0,3,0xfc,0x1008);
        return 1;
      }
      if (param_1 == 1) {
        uVar3 = param_3;
        g_cfgAlarm = ISDLGBUTTONCHECKED(unaff_CS,0x3e9);
        uVar2 = param_3;
        g_cfgSound = ISDLGBUTTONCHECKED(0x10c8,0x3ea);
        uVar1 = param_3;
        g_cfgNoSleep = ISDLGBUTTONCHECKED(0x10c8,0x3eb);
        g_cfgGForce = ISDLGBUTTONCHECKED(0x10c8,0x3ec);
        unaff_CS = 0x1000;
        FUN_1000_2ff8(param_3,uVar1,uVar2,uVar3);
      }
      uVar1 = unaff_CS;
      if (param_1 == 3) {
        uVar1 = 0x10c8;
        DESTROYWINDOW(unaff_CS,g_hwndMain);
      }
      if (((param_1 == 1) || (param_1 == 2)) || (param_1 == 3)) {
        ENDDIALOG(uVar1,param_1);
      }
    }
    uVar1 = 0;
  }
  return uVar1;
}


// ==== FUN_1000_292a @ 1000:292a ====

undefined2 __stdcall16far
FUN_1000_292a(undefined2 param_1_00,undefined2 param_2_00,uint param_1,int param_2,
             undefined2 param_3)

{
  int iVar1;
  undefined2 uVar2;
  undefined2 unaff_CS;
  
  if (param_2 == 0x110) {
    CHECKRADIOBUTTON(unaff_CS,0x3ea,0x3fb,0x3ea);
    uVar2 = 1;
  }
  else {
    if (param_2 == 0x111) {
      if ((param_1 == 1) || (uVar2 = unaff_CS, param_1 == 2)) {
        uVar2 = 0x10c8;
        ENDDIALOG(unaff_CS,param_1);
      }
      if (((0x3e9 < param_1) && (param_1 < 0x408)) &&
         (iVar1 = ISDLGBUTTONCHECKED(uVar2,param_1), iVar1 != 0)) {
        FUN_1000_904a(param_1 - 0x3ea,param_3);
      }
      if (param_1 == 0x408) {
        FUN_1000_91cd(0,0xffec);
      }
      else if (param_1 == 0x409) {
        FUN_1000_91cd(0,0x14);
      }
      else if (param_1 == 0x40a) {
        FUN_1000_91cd(0xffec,0);
      }
      else if (param_1 == 0x40b) {
        FUN_1000_91cd(0x14,0);
      }
    }
    uVar2 = 0;
  }
  return uVar2;
}


// ==== createSub @ 1000:2a21 ====

void __cdecl16far createSub(void)

{
  undefined2 unaff_CS;
  int iVar1;
  undefined2 uVar2;
  
  if (g_hwndSub == 0) {
    uVar2 = 0;
    g_hwndSub =
         CREATEWINDOWEX(unaff_CS,0,0,DAT_1008_2d78,0,0,0,0,0,0,0,0x8000,0x109,0x1008,0x118,0x1008,0)
    ;
    if (g_hwndSub == 0) {
      g_otherInstance = 1;
      FUN_1000_4ce1(uVar2);
    }
    else {
      iVar1 = g_hwndSub;
      SHOWWINDOW(0x10c8,8);
      UPDATEWINDOW(0x10c8,g_hwndSub,iVar1);
    }
  }
  return;
}


// ==== destroySub @ 1000:2a96 ====

void __cdecl16far destroySub(void)

{
  if (g_hwndSub != 0) {
    DESTROYWINDOW();
    g_hwndSub = 0;
  }
  return;
}


// ==== bringToTop @ 1000:2abf ====

void __cdecl16far bringToTop(void)

{
  undefined2 unaff_CS;
  
  if (g_cfgTopmost == 0) {
    SETWINDOWPOS(unaff_CS,0x13,0,0,0,0,0xffff);
    SETWINDOWPOS(0x10c8,0x13,0,0,0,0,0xfffe);
  }
  return;
}


// ==== setZOrder @ 1000:2b01 ====

void __cdecl16far setZOrder(undefined2 param_1,undefined2 param_2)

{
  undefined2 unaff_CS;
  
  if (g_cfgTopmost == 0) {
    SETWINDOWPOS(unaff_CS,0x13,0,0,0,0,param_2);
  }
  return;
}


// ==== FUN_1000_2b30 @ 1000:2b30 ====

/* WARNING: Removing unreachable block (ram,0x10002eda) */

undefined2 __cdecl16far FUN_1000_2b30(undefined2 param_1,int *param_2,int param_3,int param_4)

{
  undefined2 uVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  undefined2 *puVar6;
  undefined2 unaff_CS;
  int *piVar7;
  int *piVar8;
  undefined4 uVar9;
  undefined2 uVar10;
  undefined2 uVar11;
  int local_1a;
  int local_18;
  undefined4 local_a;
  
  local_1a = 0;
  uVar11 = DAT_1008_2d78;
  uVar10 = DAT_1008_2d78;
  uVar1 = FINDRESOURCE(unaff_CS,2,0,param_3,param_3 >> 0xf);
  local_18 = LOADRESOURCE(0x10c8,uVar1);
  piVar7 = (int *)LOCKRESOURCE(0x10c8,local_18,uVar11,uVar10);
  uVar11 = (undefined2)((ulong)piVar7 >> 0x10);
  piVar2 = (int *)piVar7;
  if (local_18 == 0) {
    return 0;
  }
  param_2[2] = 0;
  param_2[3] = 0;
  param_2[4] = piVar2[2];
  param_2[5] = piVar2[4];
  if (param_4 < 0) {
    uVar11 = 2;
    local_1a = GLOBALALLOC(0x10c8,0xffff,0);
    if (local_1a != 0) {
      piVar8 = (int *)GLOBALLOCK(0x10c8,local_1a,uVar11);
      uVar11 = (undefined2)((ulong)piVar8 >> 0x10);
      piVar2 = (int *)piVar8;
      if (param_4 < -1) {
        uVar10 = 2;
        iVar3 = GLOBALALLOC(0x10c8,0xffff,0);
        if (iVar3 == 0) goto LAB_1000_2eb2;
        uVar9 = GLOBALLOCK(0x10c8,iVar3,uVar10);
        FUN_1000_0230(piVar7,uVar9);
        if (param_4 == -2) {
          FUN_1000_1a16(piVar8,uVar9,2);
        }
        else {
          FUN_1000_1a16(piVar8,uVar9,1);
        }
        GLOBALFREE(0x1000,iVar3);
      }
      else {
        FUN_1000_0230(piVar7,piVar8);
      }
      iVar4 = FUN_1000_155a(piVar8);
      iVar3 = *piVar8;
      iVar5 = FUN_1000_1945(piVar8);
      puVar6 = (undefined2 *)(iVar5 * 4 + *piVar8 + (int)piVar2);
      local_a = (undefined2 *)CONCAT22(uVar11,puVar6);
      puVar6[1] = 0;
      *local_a = 0;
      uVar10 = param_1;
      iVar3 = CREATEDIBITMAP(0x1000,0,piVar8,iVar4 + iVar3 + (int)piVar2,uVar11,4,0,piVar8);
      *param_2 = iVar3;
      if (*param_2 != 0) {
        FUN_1000_0010(piVar8,piVar8);
        iVar3 = FUN_1000_155a(piVar8,uVar10);
        iVar3 = CREATEDIBITMAP(0x1000,0,piVar8,iVar3 + *piVar8 + (int)piVar2,uVar11,4,0,piVar8);
        param_2[1] = iVar3;
        if (param_2[1] != 0) {
          FREERESOURCE(0x10c8,local_18,param_1);
          GLOBALFREE(0x10c8,local_1a);
          return 1;
        }
      }
    }
  }
  else {
    iVar3 = FUN_1000_155a(piVar7);
    uVar10 = param_1;
    iVar3 = CREATEDIBITMAP(0x1000,0,piVar7,iVar3 + *piVar7 + (int)piVar2,uVar11,4,0,piVar7);
    *param_2 = iVar3;
    if (*param_2 != 0) {
      FREERESOURCE(0x10c8,local_18,uVar10);
      if (param_4 == 0) {
        param_2[1] = 0;
        return 1;
      }
      uVar11 = DAT_1008_2d78;
      uVar10 = DAT_1008_2d78;
      uVar1 = FINDRESOURCE(0x10c8,2,0,param_4,param_4 >> 0xf);
      local_18 = LOADRESOURCE(0x10c8,uVar1);
      piVar7 = (int *)LOCKRESOURCE(0x10c8,local_18,uVar11,uVar10);
      uVar11 = (undefined2)((ulong)piVar7 >> 0x10);
      piVar2 = (int *)piVar7;
      if (local_18 != 0) {
        param_2[2] = 0;
        param_2[3] = 0;
        param_2[4] = piVar2[2];
        param_2[5] = piVar2[4];
        iVar3 = FUN_1000_155a(piVar7);
        iVar3 = CREATEDIBITMAP(0x1000,0,piVar7,iVar3 + *piVar7 + (int)piVar2,uVar11,4,0,piVar7);
        param_2[1] = iVar3;
        if (param_2[1] != 0) {
          FREERESOURCE(0x10c8,local_18,param_1);
          return 1;
        }
      }
    }
  }
LAB_1000_2eb2:
  if (local_18 != 0) {
    FREERESOURCE(0x10c8,local_18);
  }
  if (local_1a != 0) {
    GLOBALFREE(0x10c8,local_1a);
  }
  return 0;
}


// ==== FUN_1000_2eec @ 1000:2eec ====

void __cdecl16far FUN_1000_2eec(int *param_1)

{
  undefined2 unaff_CS;
  
  if (*param_1 != 0) {
    unaff_CS = 0x10c8;
    DELETEOBJECT();
  }
  if (param_1[1] != 0) {
    DELETEOBJECT(unaff_CS,param_1[1]);
  }
  *param_1 = 0;
  param_1[1] = 0;
  return;
}


// ==== FUN_1000_2f36 @ 1000:2f36 ====

void __cdecl16far FUN_1000_2f36(void)

{
  undefined2 unaff_CS;
  
  DAT_1008_2d98 = 1;
  g_cfgTopmost = 0;
  g_cfgAlarm = 0;
  g_cfgSound = 0;
  g_cfgSound = GETPRIVATEPROFILEINT(unaff_CS,0x129,0x1008,0,0x134,0x1008,0x13a);
  g_cfgAlarm = GETPRIVATEPROFILEINT(0x10c8,0x140,0x1008,0,0x14b,0x1008,0x151);
  g_cfgNoSleep = GETPRIVATEPROFILEINT(0x10c8,0x157,0x1008,0,0x162,0x1008,0x16a);
  g_cfgGForce = GETPRIVATEPROFILEINT(0x10c8,0x170,0x1008,1,0x17b,0x1008,0x182);
  return;
}


// ==== FUN_1000_2fb7 @ 1000:2fb7 ====

void __cdecl16far
FUN_1000_2fb7(undefined2 param_1,undefined2 param_2,undefined2 param_3,undefined2 param_4,
             undefined2 param_5,undefined2 param_6,undefined2 param_7)

{
  undefined2 unaff_SS;
  undefined local_2a [40];
  
  _WSPRINTF();
  WRITEPRIVATEPROFILESTRING(0x10c8,param_6,param_7,local_2a,unaff_SS,param_3,param_4,param_1);
  return;
}


// ==== FUN_1000_2ff8 @ 1000:2ff8 ====

void __cdecl16far FUN_1000_2ff8(void)

{
  FUN_1000_2fb7(0x19c,0x1008,0x196,0x1008,g_cfgSound,0x18b,0x1008);
  FUN_1000_2fb7(0x1b3,0x1008,0x1ad,0x1008,g_cfgAlarm,0x1a2,0x1008);
  FUN_1000_2fb7(0x1cc,0x1008,0x1c4,0x1008,g_cfgNoSleep,0x1b9,0x1008);
  FUN_1000_2fb7(0x1e4,0x1008,0x1dd,0x1008,g_cfgGForce,0x1d2,0x1008);
  return;
}


// ==== FUN_1000_306a @ 1000:306a ====

undefined2 __cdecl16far FUN_1000_306a(undefined2 param_1)

{
  undefined2 uVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  
  uVar1 = GETDC();
  uVar2 = uVar1;
  DAT_1008_0ad6 = CREATECOMPATIBLEBITMAP(0x10c8,100,100);
  if (((DAT_1008_0ad6 == 0) ||
      (uVar4 = uVar1, DAT_1008_0ad8 = CREATECOMPATIBLEBITMAP(0x10c8,100,100), DAT_1008_0ad8 == 0))
     || (uVar3 = uVar1, DAT_1008_0ada = CREATECOMPATIBLEBITMAP(0x10c8,100,100), DAT_1008_0ada == 0))
  {
    RELEASEDC(0x10c8,uVar1);
    uVar2 = 0;
  }
  else {
    g_scrX0 = 0;
    g_scrY0 = 0;
    g_scrW = GETSYSTEMMETRICS(0x10c8,0,uVar3,uVar4,uVar2,param_1);
    g_scrH = GETSYSTEMMETRICS(0x10c8,1);
    RELEASEDC(0x10c8,uVar1);
    uVar2 = 1;
  }
  return uVar2;
}


// ==== FUN_1000_3119 @ 1000:3119 ====

void __cdecl16far FUN_1000_3119(void)

{
  undefined2 uVar1;
  
  uVar1 = DAT_1008_0ad6;
  DELETEOBJECT();
  DELETEOBJECT(0x10c8,DAT_1008_0ad8,uVar1);
  DELETEOBJECT(0x10c8,DAT_1008_0ada);
  if (DAT_1008_23d4 != 0) {
    DELETEOBJECT(0x10c8,DAT_1008_23d4);
    DAT_1008_23d4 = 0;
  }
  if (DAT_1008_2d64 != 0) {
    DELETEOBJECT(0x10c8,DAT_1008_2d64);
    DAT_1008_2d64 = 0;
  }
  if (DAT_1008_23d2 != 0) {
    DELETEOBJECT(0x10c8,DAT_1008_23d2);
    DAT_1008_23d2 = 0;
  }
  if (DAT_1008_23d8 != 0) {
    DELETEOBJECT(0x10c8,DAT_1008_23d8);
    DAT_1008_23d8 = 0;
  }
  return;
}


// ==== FUN_1000_31a8 @ 1000:31a8 ====

void __cdecl16far FUN_1000_31a8(undefined2 param_1,undefined2 param_2,int param_3)

{
  DAT_1008_0afa = param_1;
  DAT_1008_0afc = param_2;
  DAT_1008_0adc = *(undefined2 *)(param_3 * 0xc + 0xbc2);
  DAT_1008_0ade = *(undefined2 *)(param_3 * 0xc + 0xbc4);
  DAT_1008_0ae0 = *(undefined2 *)(param_3 * 0xc + 0xbc6);
  DAT_1008_0ae2 = *(undefined2 *)(param_3 * 0xc + 0xbc8);
  DAT_1008_0afe = *(undefined2 *)(param_3 * 0xc + 0xbca);
  DAT_1008_0b00 = *(undefined2 *)(param_3 * 0xc + 0xbcc);
  return;
}


// ==== FUN_1000_3237 @ 1000:3237 ====

void __cdecl16far FUN_1000_3237(void)

{
  undefined2 unaff_CS;
  
  DAT_1008_0b12 = 0;
  DAT_1008_0b14 = 0;
  DAT_1008_0b16 = 0;
  DAT_1008_0b18 = 0;
  MOVEWINDOW(unaff_CS,1,0,0,0,0);
  DAT_1008_0af4 = 1;
  DAT_1008_23da = 1;
  DAT_1008_0af8 = 0;
  return;
}


// ==== FUN_1000_3284 @ 1000:3284 ====

void __cdecl16far FUN_1000_3284(undefined2 param_1)

{
  undefined2 uVar1;
  undefined2 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined2 uVar11;
  undefined2 uVar12;
  undefined2 uVar13;
  undefined2 uVar14;
  undefined2 uVar15;
  
  if ((DAT_1008_0af2 == 0) &&
     ((((DAT_1008_0b12 != DAT_1008_0afa || (DAT_1008_0b14 != DAT_1008_0afc)) ||
       (DAT_1008_0af8 != DAT_1008_0adc)) ||
      ((DAT_1008_0ae8 != DAT_1008_0ae0 || (g_beamMain != 0)))))) {
    DAT_1008_0af0 = DAT_1008_0af0 ^ 1;
    uVar15 = 0;
    uVar1 = GETDC();
    uVar2 = uVar1;
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    uVar2 = CREATECOMPATIBLEDC(0x10c8,uVar1,uVar2,uVar15);
    uVar15 = CREATECOMPATIBLEDC(0x10c8,uVar1);
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    iVar9 = DAT_1008_0b12;
    if (DAT_1008_0b12 < DAT_1008_0afa) {
      iVar9 = DAT_1008_0afa;
    }
    iVar10 = DAT_1008_0b14;
    if (DAT_1008_0b14 < DAT_1008_0afc) {
      iVar10 = DAT_1008_0afc;
    }
    iVar3 = DAT_1008_0b16 + DAT_1008_0b12;
    if (DAT_1008_0afe + DAT_1008_0afa < DAT_1008_0b16 + DAT_1008_0b12) {
      iVar3 = DAT_1008_0afe + DAT_1008_0afa;
    }
    iVar4 = DAT_1008_0b14 + DAT_1008_0b18;
    if (DAT_1008_0afc + DAT_1008_0b00 < DAT_1008_0b14 + DAT_1008_0b18) {
      iVar4 = DAT_1008_0afc + DAT_1008_0b00;
    }
    uVar13 = uVar2;
    uVar14 = uVar2;
    if ((iVar3 - iVar9 < 1) || (iVar4 - iVar10 < 1)) {
      DAT_1008_0b1a = 1;
      if (DAT_1008_0af4 != 0) {
        DAT_1008_0af4 = 0;
      }
      DAT_1008_0b02 = DAT_1008_0afa;
      DAT_1008_0b04 = DAT_1008_0afc;
      DAT_1008_0b06 = DAT_1008_0afe;
      DAT_1008_0b08 = DAT_1008_0b00;
      SELECTOBJECT(0x10c8,*(undefined2 *)(DAT_1008_0af0 * 2 + 0xad6));
      uVar12 = 0;
      uVar11 = 0;
      BITBLT(0x10c8,0x20,0xcc,DAT_1008_0b04,DAT_1008_0b02,uVar1,DAT_1008_0b08,DAT_1008_0b06,0,0);
    }
    else {
      DAT_1008_0b1a = 0;
      DAT_1008_0b02 = DAT_1008_0b12;
      if (DAT_1008_0afa < DAT_1008_0b12) {
        DAT_1008_0b02 = DAT_1008_0afa;
      }
      DAT_1008_0b04 = DAT_1008_0b14;
      if (DAT_1008_0afc < DAT_1008_0b14) {
        DAT_1008_0b04 = DAT_1008_0afc;
      }
      iVar9 = DAT_1008_0b16 + DAT_1008_0b12;
      if (DAT_1008_0b16 + DAT_1008_0b12 < DAT_1008_0afe + DAT_1008_0afa) {
        iVar9 = DAT_1008_0afe + DAT_1008_0afa;
      }
      DAT_1008_0b06 = iVar9 - DAT_1008_0b02;
      iVar9 = DAT_1008_0b14 + DAT_1008_0b18;
      if (DAT_1008_0b14 + DAT_1008_0b18 < DAT_1008_0afc + DAT_1008_0b00) {
        iVar9 = DAT_1008_0afc + DAT_1008_0b00;
      }
      DAT_1008_0b08 = iVar9 - DAT_1008_0b04;
      SELECTOBJECT(0x10c8,*(undefined2 *)(DAT_1008_0af0 * 2 + 0xad6));
      uVar12 = 0;
      uVar11 = 0;
      BITBLT(0x10c8,0x20,0xcc,DAT_1008_0b04,DAT_1008_0b02,uVar1,DAT_1008_0b08,DAT_1008_0b06,0,0);
      iVar9 = DAT_1008_0b0a;
      if (DAT_1008_0b0a < DAT_1008_0b02) {
        iVar9 = DAT_1008_0b02;
      }
      iVar10 = DAT_1008_0b0c;
      if (DAT_1008_0b0c < DAT_1008_0b04) {
        iVar10 = DAT_1008_0b04;
      }
      iVar3 = DAT_1008_0b0e + DAT_1008_0b0a;
      if (DAT_1008_0b06 + DAT_1008_0b02 < DAT_1008_0b0e + DAT_1008_0b0a) {
        iVar3 = DAT_1008_0b06 + DAT_1008_0b02;
      }
      iVar4 = DAT_1008_0b0c + DAT_1008_0b10;
      if (DAT_1008_0b04 + DAT_1008_0b08 < DAT_1008_0b0c + DAT_1008_0b10) {
        iVar4 = DAT_1008_0b04 + DAT_1008_0b08;
      }
      iVar5 = iVar9 - DAT_1008_0b02;
      if (iVar5 < 0) {
        iVar5 = 0;
      }
      iVar6 = iVar10 - DAT_1008_0b04;
      if (iVar6 < 0) {
        iVar6 = 0;
      }
      iVar7 = iVar9 - DAT_1008_0b0a;
      if (iVar7 < 0) {
        iVar7 = 0;
      }
      iVar8 = iVar10 - DAT_1008_0b0c;
      if (iVar8 < 0) {
        iVar8 = 0;
      }
      if ((0 < iVar3 - iVar9) && (0 < iVar4 - iVar10)) {
        uVar12 = uVar15;
        SELECTOBJECT(0x10c8,*(undefined2 *)(((byte)((char)DAT_1008_0af0 + 1) & 1) * 2 + 0xad6));
        uVar11 = uVar2;
        BITBLT(0x10c8,0x20,0xcc,iVar8,iVar7,uVar15,iVar4 - iVar10,iVar3 - iVar9,iVar6,iVar5);
      }
    }
    if (DAT_1008_0adc != 0) {
      SELECTOBJECT(0x10c8,DAT_1008_0ada);
      BITBLT(0x10c8,0x20,0xcc,0,0,uVar2,DAT_1008_0b08,DAT_1008_0b06,0,0);
      iVar9 = DAT_1008_0afa - DAT_1008_0b02;
      if (iVar9 < 0) {
        iVar9 = 0;
      }
      iVar10 = DAT_1008_0afc - DAT_1008_0b04;
      if (iVar10 < 0) {
        iVar10 = 0;
      }
      if (DAT_1008_0ade == 0) {
        SELECTOBJECT(0x10c8,DAT_1008_0adc);
        BITBLT(0x10c8,0x20,0xcc,DAT_1008_0ae2,DAT_1008_0ae0,uVar2,DAT_1008_0b00,DAT_1008_0afe,iVar10
               ,iVar9);
      }
      else {
        SELECTOBJECT(0x10c8,DAT_1008_0ade);
        BITBLT(0x10c8,0xc6,0x88,DAT_1008_0ae2,DAT_1008_0ae0,uVar2,DAT_1008_0b00,DAT_1008_0afe,iVar10
               ,iVar9);
        SELECTOBJECT(0x10c8,DAT_1008_0adc);
        BITBLT(0x10c8,0x86,0xee,DAT_1008_0ae2,DAT_1008_0ae0,uVar2,DAT_1008_0b00,DAT_1008_0afe,iVar10
               ,iVar9);
      }
      DAT_1008_0af2 = 1;
      DAT_1008_2d7e = 1;
      MOVEWINDOW(0x10c8,1,DAT_1008_0b08 + g_beamMain,DAT_1008_0b06,DAT_1008_0b04,DAT_1008_0b02);
      DAT_1008_2d7e = 0;
      uVar11 = param_1;
    }
    DELETEDC(0x10c8,uVar2,uVar11,uVar12,uVar13,uVar14);
    DELETEDC(0x10c8,uVar15);
    DAT_1008_0b0a = DAT_1008_0b02;
    DAT_1008_0b0c = DAT_1008_0b04;
    DAT_1008_0b0e = DAT_1008_0b06;
    DAT_1008_0b10 = DAT_1008_0b08;
    DAT_1008_0b12 = DAT_1008_0afa;
    DAT_1008_0b14 = DAT_1008_0afc;
    DAT_1008_0b16 = DAT_1008_0afe;
    DAT_1008_0b18 = DAT_1008_0b00;
    DAT_1008_0af8 = DAT_1008_0adc;
    DAT_1008_0ae8 = DAT_1008_0ae0;
    DAT_1008_0aea = DAT_1008_0ae2;
    RELEASEDC(0x10c8,uVar1);
  }
  return;
}


// ==== FUN_1000_3717 @ 1000:3717 ====

void __cdecl16far FUN_1000_3717(undefined2 param_1)

{
  undefined2 uVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 unaff_SS;
  undefined2 uVar4;
  undefined2 uVar5;
  undefined2 local_e;
  undefined2 local_c;
  undefined2 local_a;
  int local_8;
  undefined2 local_6;
  undefined2 local_4;
  
  if (DAT_1008_0af2 != 0) {
    DAT_1008_0af2 = 0;
    uVar1 = GETDC();
    local_4 = uVar1;
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    REALIZEPALETTE(0x10c8,local_4,uVar1,param_1);
    uVar2 = CREATECOMPATIBLEDC(0x10c8,local_4);
    local_6 = uVar2;
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    uVar4 = local_6;
    SELECTOBJECT(0x10c8,DAT_1008_0ada);
    uVar1 = local_4;
    BITBLT(0x10c8,0x20,0xcc,0,0,local_6,DAT_1008_0b08,DAT_1008_0b06,0,0);
    if (g_beamMain == 0) {
      if (DAT_1008_23d4 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_23d4,uVar1,uVar4,uVar2);
        DAT_1008_23d4 = 0;
      }
      if (DAT_1008_2d64 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_2d64);
        DAT_1008_2d64 = 0;
      }
      if (DAT_1008_23d2 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_23d2);
        DAT_1008_23d2 = 0;
      }
      if (DAT_1008_23d8 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_23d8);
        DAT_1008_23d8 = 0;
      }
      DELETEDC(0x10c8,local_6);
    }
    else {
      if (((DAT_1008_23d8 == 0) &&
          (DAT_1008_23d8 = CREATECOMPATIBLEBITMAP(0x10c8,(g_scrH << 2) / 5,0x28),
          DAT_1008_23d8 == 0)) ||
         ((DAT_1008_23d2 == 0 &&
          (DAT_1008_23d2 = CREATECOMPATIBLEBITMAP(0x10c8,(g_scrH << 2) / 5,0x28),
          DAT_1008_23d2 == 0)))) {
        RELEASEDC(0x10c8,local_4);
        return;
      }
      if (DAT_1008_2d64 == 0) {
        DAT_1008_2d64 = CREATESOLIDBRUSH(0x10c8,0xffff);
      }
      if (DAT_1008_23d4 == 0) {
        DAT_1008_23d4 = CREATESOLIDBRUSH(0x10c8,0x8080);
      }
      uVar3 = CREATECOMPATIBLEDC(0x10c8,local_4);
      SELECTOBJECT(0x10c8,DAT_1008_23d2);
      BITBLT(0x10c8,0x20,0xcc,0x28,0,local_4,g_beamMain,0x28,0,0);
      local_e = 0;
      local_c = 0;
      local_a = 0x28;
      local_8 = g_beamMain;
      SELECTOBJECT(0x10c8,DAT_1008_23d8);
      FILLRECT(0x10c8,DAT_1008_2d64,&local_e,unaff_SS);
      uVar5 = uVar3;
      BITBLT(0x10c8,0xc6,0x88,0,0,local_6,g_beamMain,0x28,0,0);
      uVar2 = local_6;
      FILLRECT(0x10c8,DAT_1008_23d4,&local_e,unaff_SS);
      uVar4 = uVar3;
      BITBLT(0x10c8,0x86,0xee,0,0,local_6,g_beamMain,0x28,0,0);
      uVar1 = local_4;
      BITBLT(0x10c8,0x20,0xcc,0,0,uVar3,g_beamMain,0x28,0x28,0);
      DELETEDC(0x10c8,uVar3,uVar1,uVar4,uVar2,uVar5);
      DELETEDC(0x10c8,local_6);
    }
    RELEASEDC(0x10c8,local_4);
  }
  return;
}


// ==== FUN_1000_399d @ 1000:399d ====

void __cdecl16far
FUN_1000_399d(undefined2 param_1,undefined2 param_2,undefined2 param_3,undefined2 param_4,
             undefined2 param_5)

{
  undefined2 unaff_CS;
  
  MOVEWINDOW(unaff_CS,0,param_5,param_4,param_3,param_2);
  MOVEWINDOW(0x10c8,1,0,0,0,0);
  return;
}


// ==== isPeerWindow @ 1000:39d6 ====

undefined2 __cdecl16far isPeerWindow(int param_1)

{
  int local_4;
  
  if (DAT_1008_2d60 != 0) {
    for (local_4 = 0; local_4 < 8; local_4 = local_4 + 1) {
      if ((*(int *)(local_4 * 2 + 0x2d80) == param_1) && (*(int *)(local_4 * 2 + 0x2d80) != 0)) {
        return 1;
      }
    }
  }
  return 0;
}


// ==== peerHit @ 1000:3a36 ====

int __cdecl16far peerHit(int param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  int iVar4;
  undefined2 unaff_CS;
  int local_4;
  
  local_4 = 0;
  do {
    if (7 < local_4) {
      return 0;
    }
    if (*(int *)(local_4 * 2 + 0x2d80) != 0) {
      iVar1 = GETWINDOWWORD(unaff_CS,0);
      unaff_CS = 0x10c8;
      iVar2 = GETWINDOWWORD(0x10c8,2);
      iVar3 = iVar1 + 0x28;
      iVar4 = iVar2 + 0x28;
      if (iVar3 != 0) {
        if ((((iVar2 <= param_3) && (param_3 < iVar4)) || ((iVar2 < param_4 && (param_4 < iVar4))))
           && (((param_1 < iVar3 && (iVar3 <= param_2)) && (param_1 < param_2)))) {
          return iVar3;
        }
        if ((((iVar2 <= param_3) && (param_3 < iVar4)) || ((iVar2 < param_4 && (param_4 < iVar4))))
           && (((param_2 <= iVar1 && (iVar1 < param_1)) && (param_2 < param_1)))) {
          return iVar1;
        }
      }
    }
    local_4 = local_4 + 1;
  } while( true );
}


// ==== findPeers @ 1000:3b4c ====

void __cdecl16far findPeers(int param_1)

{
  int iVar1;
  uint extraout_DX;
  undefined local_4a [64];
  int local_a;
  int local_8;
  undefined2 local_6;
  int local_4;
  
  for (local_8 = 0; local_8 < 8; local_8 = local_8 + 1) {
    *(undefined2 *)(local_8 * 2 + 0x2d80) = 0;
  }
  local_4 = GETDESKTOPWINDOW();
  local_6 = 5;
  local_8 = 0;
  local_a = 0;
  while ((local_4 = GETWINDOW(0x10c8,local_6), local_4 != 0 && (local_8 < 0x40))) {
    local_6 = 2;
    if ((local_4 != param_1) && (GETWINDOWLONG(0x10c8,0xfff0), (extraout_DX & 0x1000) != 0)) {
      GETWINDOWTEXT(0x10c8,0x10,local_4a);
      iVar1 = LSTRCMP(0x10c8,0x1ea,0x1008,local_4a);
      if (iVar1 == 0) {
        *(int *)(local_a * 2 + 0x2d80) = local_4;
        local_a = local_a + 1;
        if (8 < local_a) {
          return;
        }
      }
      local_8 = local_8 + 1;
    }
  }
  DAT_1008_2d60 = local_a;
  return;
}


// ==== FUN_1000_3c20 @ 1000:3c20 ====

undefined2 __cdecl16far FUN_1000_3c20(int param_1)

{
  int iVar1;
  uint extraout_DX;
  undefined local_4a [64];
  int local_a;
  int local_8;
  undefined2 local_6;
  int local_4;
  
  local_4 = GETDESKTOPWINDOW();
  local_6 = 5;
  local_8 = 0;
  local_a = 0;
  while ((local_4 = GETWINDOW(0x10c8,local_6), local_4 != 0 && (local_8 < 0x40))) {
    local_6 = 2;
    if ((local_4 != param_1) && (GETWINDOWLONG(0x10c8,0xfff0), (extraout_DX & 0x1000) != 0)) {
      GETWINDOWTEXT(0x10c8,0x10,local_4a);
      iVar1 = LSTRCMP(0x10c8,0x1f6,0x1008,local_4a);
      if (iVar1 == 0) {
        *(int *)(local_a * 2 + 0x2d80) = local_4;
        local_a = local_a + 1;
        if (8 < local_a) {
          return 0;
        }
      }
      local_8 = local_8 + 1;
    }
  }
  DAT_1008_2d60 = local_a;
  DAT_1008_2d68 = local_a;
  for (local_8 = 0; local_8 < DAT_1008_2d60; local_8 = local_8 + 1) {
    SENDMESSAGE(0x10c8,param_1,0,1,0x400);
  }
  return 1;
}


// ==== FUN_1000_3d12 @ 1000:3d12 ====

void __cdecl16far FUN_1000_3d12(undefined2 param_1)

{
  undefined2 unaff_CS;
  undefined2 uVar1;
  undefined2 local_4;
  
  for (local_4 = 0; local_4 < 8; local_4 = local_4 + 1) {
    uVar1 = unaff_CS;
    if (*(int *)(local_4 * 2 + 0x2d80) != 0) {
      uVar1 = 0x10c8;
      SENDMESSAGE(unaff_CS,param_1,0,2,0x400);
    }
    unaff_CS = uVar1;
  }
  return;
}


// ==== FUN_1000_3d5f @ 1000:3d5f ====

void __cdecl16far FUN_1000_3d5f(undefined2 param_1)

{
  int local_4;
  
  local_4 = 0;
  while( true ) {
    if (7 < local_4) {
      return;
    }
    if (*(int *)(local_4 * 2 + 0x2d80) == 0) break;
    local_4 = local_4 + 1;
  }
  DAT_1008_2d60 = DAT_1008_2d60 + 1;
  *(undefined2 *)(local_4 * 2 + 0x2d80) = param_1;
  return;
}


// ==== FUN_1000_3da7 @ 1000:3da7 ====

void __cdecl16far FUN_1000_3da7(int param_1)

{
  int local_4;
  
  local_4 = 0;
  while( true ) {
    if (7 < local_4) {
      return;
    }
    if (*(int *)(local_4 * 2 + 0x2d80) == param_1) break;
    local_4 = local_4 + 1;
  }
  DAT_1008_2d60 = DAT_1008_2d60 + -1;
  *(undefined2 *)(local_4 * 2 + 0x2d80) = 0;
  return;
}


// ==== snapshotWindows @ 1000:3df0 ====

void __cdecl16far snapshotWindows(void)

{
  int iVar1;
  uint extraout_DX;
  int local_8;
  undefined2 local_6;
  
  GETDESKTOPWINDOW();
  local_6 = 5;
  local_8 = 0;
  while ((iVar1 = GETWINDOW(0x10c8,local_6), iVar1 != 0 && (local_8 < 0x20))) {
    local_6 = 2;
    if ((iVar1 != g_hwndMain) && (GETWINDOWLONG(0x10c8,0xfff0), (extraout_DX & 0x1000) != 0)) {
      GETWINDOWRECT(0x10c8,local_8 * 0x4c + 0x23de,0x1008);
      *(int *)(local_8 * 0x4c + 0x23dc) = iVar1;
      local_8 = local_8 + 1;
    }
  }
  DAT_1008_2d94 = local_8;
  return;
}


// ==== findWallHit @ 1000:3e7c ====

undefined2 __cdecl16far
findWallHit(undefined2 *param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  undefined2 unaff_CS;
  undefined2 uVar2;
  undefined2 unaff_SS;
  int local_e [2];
  int local_a;
  int local_6;
  int local_4;
  
  local_4 = 0;
  do {
    if (DAT_1008_2d94 <= local_4) {
      return 0;
    }
    uVar2 = unaff_CS;
    if (param_4 < param_5) {
      if (((param_4 <= *(int *)(local_4 * 0x4c + 0x23e2)) &&
          (*(int *)(local_4 * 0x4c + 0x23e2) < param_5)) &&
         ((*(int *)(local_4 * 0x4c + 0x23e0) < param_2 &&
          (param_3 < *(int *)(local_4 * 0x4c + 0x23e4))))) {
        local_6 = 0;
        while ((local_6 < local_4 &&
               ((((param_2 < *(int *)(local_6 * 0x4c + 0x23e0) ||
                  (*(int *)(local_6 * 0x4c + 0x23e4) < param_3)) ||
                 (param_4 < *(int *)(local_6 * 0x4c + 0x23de))) ||
                (*(int *)(local_6 * 0x4c + 0x23e2) < param_5))))) {
          local_6 = local_6 + 1;
        }
        if (local_6 == local_4) {
          uVar2 = 0x10c8;
          iVar1 = ISWINDOW(unaff_CS,*(undefined2 *)(local_4 * 0x4c + 0x23dc));
          if (iVar1 != 0) {
            uVar2 = 0x10c8;
            GETWINDOWRECT(0x10c8,local_e,unaff_SS);
            if (*(int *)(local_4 * 0x4c + 0x23e2) == local_a) {
              *param_1 = *(undefined2 *)(local_4 * 0x4c + 0x23dc);
              return *(undefined2 *)(local_4 * 0x4c + 0x23e2);
            }
          }
        }
      }
    }
    else if ((((*(int *)(local_4 * 0x4c + 0x23de) <= param_4) &&
              (param_5 < *(int *)(local_4 * 0x4c + 0x23de))) &&
             (*(int *)(local_4 * 0x4c + 0x23e0) < param_2)) &&
            (param_3 < *(int *)(local_4 * 0x4c + 0x23e4))) {
      local_6 = 0;
      while ((local_6 < local_4 &&
             (((param_2 < *(int *)(local_6 * 0x4c + 0x23e0) ||
               (*(int *)(local_6 * 0x4c + 0x23e4) < param_3)) ||
              ((param_4 < *(int *)(local_6 * 0x4c + 0x23de) ||
               (*(int *)(local_6 * 0x4c + 0x23e2) < param_5))))))) {
        local_6 = local_6 + 1;
      }
      if (local_6 == local_4) {
        iVar1 = ISWINDOW(unaff_CS,*(undefined2 *)(local_4 * 0x4c + 0x23dc));
        uVar2 = 0x10c8;
        if (iVar1 != 0) {
          GETWINDOWRECT(0x10c8,local_e,unaff_SS);
          uVar2 = 0x10c8;
          if (*(int *)(local_4 * 0x4c + 0x23de) == local_e[0]) {
            *param_1 = *(undefined2 *)(local_4 * 0x4c + 0x23dc);
            return *(undefined2 *)(local_4 * 0x4c + 0x23de);
          }
        }
      }
    }
    local_4 = local_4 + 1;
    unaff_CS = uVar2;
  } while( true );
}


// ==== findLanding @ 1000:408c ====

int __cdecl16far findLanding(undefined2 *param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  int local_6;
  int local_4;
  
  local_4 = 0;
  do {
    if (DAT_1008_2d94 <= local_4) {
      if ((param_2 < g_scrH) || (g_scrH < param_3)) {
        iVar1 = 0;
      }
      else {
        *param_1 = 0;
        iVar1 = g_scrH;
      }
      return iVar1;
    }
    if ((((*(int *)(local_4 * 0x4c + 0x23e0) <= param_2) &&
         (param_3 < *(int *)(local_4 * 0x4c + 0x23e0))) &&
        (*(int *)(local_4 * 0x4c + 0x23de) < param_5)) &&
       ((param_4 < *(int *)(local_4 * 0x4c + 0x23e2) && (10 < *(int *)(local_4 * 0x4c + 0x23e0)))))
    {
      local_6 = 0;
      while ((local_6 < local_4 &&
             (((param_4 < *(int *)(local_6 * 0x4c + 0x23de) ||
               (*(int *)(local_6 * 0x4c + 0x23e2) < param_5)) ||
              ((param_3 < *(int *)(local_6 * 0x4c + 0x23e0) ||
               (*(int *)(local_6 * 0x4c + 0x23e4) < param_2))))))) {
        local_6 = local_6 + 1;
      }
      if (local_6 == local_4) {
        *param_1 = *(undefined2 *)(local_4 * 0x4c + 0x23dc);
        return *(int *)(local_4 * 0x4c + 0x23e0);
      }
    }
    local_4 = local_4 + 1;
  } while( true );
}


// ==== checkLandOn @ 1000:419e ====

int __cdecl16far checkLandOn(undefined2 param_1,int param_2,int param_3,int param_4,int param_5)

{
  int iVar1;
  undefined2 unaff_SS;
  int local_a;
  int local_8;
  int local_6;
  
  iVar1 = ISWINDOW();
  if ((((iVar1 == 0) || (GETWINDOWRECT(0x10c8,&local_a,unaff_SS), param_2 < local_8)) ||
      (local_8 <= param_3)) || ((param_5 <= local_a || (local_6 <= param_4)))) {
    if (g_scrH < param_2) {
      local_8 = -1;
    }
    else {
      local_8 = 0;
    }
  }
  return local_8;
}


// ==== FUN_1000_4210 @ 1000:4210 ====

void __cdecl16far FUN_1000_4210(int param_1,uint param_2)

{
  undefined2 uVar1;
  undefined2 unaff_CS;
  undefined2 uVar2;
  undefined2 uVar3;
  
  if (DAT_1008_0b4e != 0) {
    uVar3 = 0;
    SNDPLAYSOUND(unaff_CS,0,0);
    GLOBALUNLOCK(0x10c8,DAT_1008_0b4e,uVar3);
    unaff_CS = 0x10c8;
    FREERESOURCE(0x10c8,DAT_1008_0b4e);
    DAT_1008_0b4e = 0;
  }
  uVar3 = DAT_1008_2d78;
  uVar2 = DAT_1008_2d78;
  uVar1 = FINDRESOURCE(unaff_CS,0x5ce,0x1008,param_1,param_1 >> 0xf);
  DAT_1008_0b4e = LOADRESOURCE(0x10c8,uVar1);
  uVar3 = LOCKRESOURCE(0x10c8,DAT_1008_0b4e,uVar3,uVar2);
  SNDPLAYSOUND(0x10c8,param_2 | 5,uVar3);
  return;
}


// ==== stopSound @ 1000:428e ====

void __cdecl16far stopSound(void)

{
  undefined2 unaff_CS;
  
  SNDPLAYSOUND(unaff_CS,0,0);
  return;
}


// ==== FUN_1000_42aa @ 1000:42aa ====

void __cdecl16far FUN_1000_42aa(undefined2 param_1)

{
  undefined2 unaff_CS;
  
  SNDPLAYSOUND(unaff_CS,1,param_1);
  return;
}


// ==== playSound @ 1000:42c8 ====

void __cdecl16far playSound(undefined2 param_1,undefined2 param_2,undefined2 param_3)

{
  if (g_cfgSound != 0) {
    FUN_1000_4210(param_1,param_2,param_3);
  }
  return;
}


// ==== FUN_1000_42f3 @ 1000:42f3 ====

undefined2 __cdecl16far FUN_1000_42f3(undefined2 param_1)

{
  int iVar1;
  int local_6;
  int local_4;
  
  local_4 = 0;
  while( true ) {
    if ((0xf < local_4) || (*(int *)(local_4 * 0x10 + 0x202) == 0)) {
      return 1;
    }
    iVar1 = FUN_1000_2b30(param_1,local_4 * 0x10 + 0x206,*(undefined2 *)(local_4 * 0x10 + 0x202),
                          0xffff);
    if (iVar1 == 0) {
      return 0;
    }
    iVar1 = FUN_1000_2b30(param_1,local_4 * 0x10 + 0x306,*(undefined2 *)(local_4 * 0x10 + 0x202),
                          0xfffd);
    if (iVar1 == 0) break;
    for (local_6 = 0; local_6 < 0x10; local_6 = local_6 + 1) {
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0xbc2) =
           *(undefined2 *)(local_4 * 0x10 + 0x206);
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0xbc4) =
           *(undefined2 *)(local_4 * 0x10 + 0x208);
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0xbca) = 0x28;
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0xbcc) = 0x28;
      *(int *)((local_4 * 0x10 + local_6) * 0xc + 0xbc6) = local_6 * 0x28;
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0xbc8) = 0;
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0x17c2) =
           *(undefined2 *)(local_4 * 0x10 + 0x306);
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0x17c4) =
           *(undefined2 *)(local_4 * 0x10 + 0x308);
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0x17ca) = 0x28;
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0x17cc) = 0x28;
      *(int *)((local_4 * 0x10 + local_6) * 0xc + 0x17c6) = (0xf - local_6) * 0x28;
      *(undefined2 *)((local_4 * 0x10 + local_6) * 0xc + 0x17c8) = 0;
    }
    local_4 = local_4 + 1;
  }
  return 0;
}


// ==== FUN_1000_44ed @ 1000:44ed ====

void __cdecl16far FUN_1000_44ed(void)

{
  int local_4;
  
  local_4 = 0;
  while ((local_4 < 0x10 && (*(int *)(local_4 * 0x10 + 0x202) != 0))) {
    FUN_1000_2eec(local_4 * 0x10 + 0x206);
    if (*(int *)(local_4 * 0x10 + 0x204) == 1) {
      FUN_1000_2eec(local_4 * 0x10 + 0x306);
    }
    local_4 = local_4 + 1;
  }
  return;
}


// ==== edgeCheckA @ 1000:4559 ====

void __cdecl16far edgeCheckA(void)

{
  int iVar1;
  
  if ((0 < g_dir) && (g_x < 0)) {
    g_state = 0x18;
  }
  if ((g_dir < 0) && (g_scrW - *(int *)(g_frame * 0xc + 0xbca) < g_x)
     ) {
    g_state = 0x18;
  }
  if ((0 < g_dir) && (g_x < g_scrW - *(int *)(g_frame * 0xc + 0xbca))
     ) {
    iVar1 = rand();
    if (iVar1 % 0x14 == 0) {
      g_state = 0x18;
    }
  }
  if ((g_dir < 0) && (0 < g_x)) {
    iVar1 = rand();
    if (iVar1 % 0x14 == 0) {
      g_state = 0x18;
    }
  }
  return;
}


// ==== edgeCheckB @ 1000:4614 ====

void __cdecl16far edgeCheckB(int param_1)

{
  int iVar1;
  
  if (g_gforce == 0) {
    if ((0 < g_dir) && (g_x < 0)) {
      g_state = 0x1e;
    }
    if ((g_dir < 0) &&
       (g_scrW - *(int *)(g_frame * 0xc + 0xbca) < g_x)) {
      g_state = 0x1e;
    }
  }
  if (param_1 != 0) {
    if ((0 < g_dir) && (g_x < g_scrW + -0x50)) {
      iVar1 = rand();
      if (iVar1 % 0x14 == 0) {
        g_state = 0x18;
      }
    }
    if ((g_dir < 0) && (0x28 < g_x)) {
      iVar1 = rand();
      if (iVar1 % 0x14 == 0) {
        g_state = 0x18;
      }
    }
  }
  return;
}


// ==== countDown @ 1000:46d2 ====

void __cdecl16far countDown(void)

{
  int iVar1;
  
  iVar1 = g_count;
  g_count = g_count + -1;
  if (iVar1 < 1) {
    g_state = 0x2a;
  }
  return;
}


// ==== alarmTick @ 1000:46f7 ====

/* WARNING: Removing unreachable block (ram,0x10004730) */

int __cdecl16far alarmTick(void)

{
  bool bVar1;
  ulong uVar2;
  int iVar3;
  int iVar4;
  ulong uVar5;
  int local_e;
  undefined local_8 [4];
  int local_4;
  
  if (DAT_1008_0b52 == 0) {
    bVar1 = 9 < DAT_1008_0b58;
    iVar4 = DAT_1008_0b58;
    DAT_1008_0b58 = DAT_1008_0b58 + 1;
    uVar2 = CONCAT22(DAT_1008_0b56,DAT_1008_0b54);
    if (bVar1) {
      DAT_1008_0b58 = 0;
      FUN_1000_0f24(local_8);
      local_4 = FUN_1000_0e26(local_8);
      local_e = *(int *)(local_4 + 4) % 0xc;
      if (local_e == 0) {
        local_e = 0xc;
      }
      iVar4 = *(int *)(local_4 + 4) / 0xc;
      uVar2 = CONCAT22(DAT_1008_0b56,DAT_1008_0b54);
      if ((*(int *)(local_4 + 2) == 0) &&
         (iVar4 = DAT_1008_0b50, uVar2 = CONCAT22(DAT_1008_0b56,DAT_1008_0b54),
         local_e != DAT_1008_0b50)) {
        destroySub();
        DAT_1008_0b50 = local_e;
        DAT_1008_0b52 = local_e + 1;
        g_state = 0x51;
        iVar4 = DAT_1008_0b52;
        uVar2 = 0;
      }
    }
  }
  else {
    uVar5 = GETTICKCOUNT();
    iVar3 = (int)uVar5;
    iVar4 = DAT_1008_0b54 + 1000;
    uVar2 = CONCAT22(DAT_1008_0b56,DAT_1008_0b54);
    if (CONCAT22(DAT_1008_0b56 + (uint)(0xfc17 < DAT_1008_0b54),DAT_1008_0b54 + 1000) < uVar5) {
      DAT_1008_0b52 = DAT_1008_0b52 + -1;
      if (DAT_1008_0b52 == 0) {
        iVar4 = iVar3;
        uVar2 = uVar5;
        if (DAT_1008_2d96 == 0) {
          g_state = 1;
        }
        else {
          g_state = 0x71;
        }
      }
      else {
        DAT_1008_0b54 = iVar3;
        DAT_1008_0b56 = (int)(uVar5 >> 0x10);
        iVar4 = FUN_1000_4210(0x6c,0,0);
        uVar2 = CONCAT22(DAT_1008_0b56,DAT_1008_0b54);
      }
    }
  }
  DAT_1008_0b56 = (int)(uVar2 >> 0x10);
  DAT_1008_0b54 = (uint)uVar2;
  return iVar4;
}


// ==== setMain @ 1000:4807 ====

void __cdecl16far setMain(undefined2 param_1,undefined2 param_2,int param_3)

{
  undefined2 unaff_CS;
  undefined2 uVar1;
  undefined2 uVar2;
  
  uVar2 = g_hwndMain;
  SETWINDOWWORD(unaff_CS,g_x,0);
  uVar1 = g_hwndMain;
  SETWINDOWWORD(0x10c8,g_y,2);
  if ((param_3 < 9) || (0xe < param_3)) {
    if (g_dir < 1) {
      FUN_1000_31a8(param_1,param_2,param_3 + 0x100,uVar1,uVar2);
    }
    else {
      FUN_1000_31a8(param_1,param_2,param_3,uVar1,uVar2);
    }
  }
  else {
    FUN_1000_31a8(param_1,param_2,param_3,uVar1,uVar2);
  }
  return;
}


// ==== setSub @ 1000:488c ====

void __cdecl16far setSub(undefined2 param_1,undefined2 param_2,int param_3)

{
  if ((param_3 < 9) || (0xe < param_3)) {
    if (g_dir2 < 1) {
      FUN_1000_9350(param_1,param_2,param_3 + 0x100);
    }
    else {
      FUN_1000_9350(param_1,param_2,param_3);
    }
  }
  else {
    FUN_1000_9350(param_1,param_2,param_3);
  }
  return;
}


// ==== isFloorValid @ 1000:48f3 ====

undefined2 __cdecl16far isFloorValid(int param_1)

{
  undefined2 uVar1;
  
  if (param_1 == 0) {
    uVar1 = 1;
  }
  else {
    uVar1 = ISWINDOW();
  }
  return uVar1;
}


// ==== getFloorRect @ 1000:491d ====

void __cdecl16far getFloorRect(int param_1,undefined2 *param_2)

{
  undefined2 unaff_CS;
  
  if (param_1 == 0) {
    *param_2 = 0;
    ((undefined2 *)param_2)[2] = g_scrW;
    ((undefined2 *)param_2)[1] = g_scrH;
    ((undefined2 *)param_2)[3] = g_scrH << 1;
  }
  else {
    GETWINDOWRECT(unaff_CS,(undefined2 *)param_2,param_2._2_2_);
  }
  return;
}


// ==== checkFloor @ 1000:496f ====

void __cdecl16far checkFloor(int param_1)

{
  int iVar1;
  int local_a;
  int local_8;
  int local_6;
  undefined2 local_4;
  
  if (g_gforce == 0) {
    return;
  }
  if (g_hwndFloor != 0) {
    iVar1 = isFloorValid(g_hwndFloor);
    if (iVar1 == 0) {
      if (param_1 == 2) {
        g_state = 0x5e;
        return;
      }
      g_state = 0x66;
      return;
    }
    getFloorRect(g_hwndFloor,&local_a);
    if (((g_floorT < local_8) || (g_x + 0x28 < local_a)) || (local_6 < g_x)
       ) {
      if (param_1 == 2) {
        g_state = 0x5e;
        return;
      }
      g_state = 0x66;
      return;
    }
    if (local_8 < g_floorT) {
      g_y = local_8 - *(int *)(g_frame * 0xc + 0xbcc);
      g_floorT = local_8;
      g_floorB = local_4;
      g_floorL = local_a;
      g_floorR = local_6;
      setMain(g_x,g_y,g_frame);
      return;
    }
    if (param_1 == 1) {
      if ((g_x + 8 < local_a) && (0 < g_dir)) {
        g_x = local_a + -10;
        g_state = 0x69;
        return;
      }
      if ((local_6 <= g_x + 0x20) && (g_dir < 0)) {
        g_x = local_6 + -0x1e;
        g_state = 0x69;
        return;
      }
      iVar1 = rand();
      if ((iVar1 % 0x14 == 1) && (100 < g_scrH - g_y)) {
        g_state = 0x68;
        return;
      }
    }
    if ((param_1 == 2) && ((g_x + 0x20 < local_a || (local_6 < g_x + 8)))) {
      g_state = 0x5e;
      return;
    }
  }
  if ((*(int *)(g_frame * 0xc + 0xbca) + g_x < 0) || (g_scrW < g_x)
     ) {
    g_state = 0;
  }
  return;
}


// ==== checkFloorEdge @ 1000:4b3b ====

void __cdecl16far checkFloorEdge(void)

{
  int iVar1;
  int local_a [2];
  int local_6;
  
  if ((g_gforce != 0) && (g_hwndFloor != 0)) {
    iVar1 = isFloorValid(g_hwndFloor);
    if (iVar1 == 0) {
      g_state = 0x66;
    }
    else {
      getFloorRect(g_hwndFloor,local_a);
      if (((local_6 < g_floorR) && (0 < g_dir)) ||
         ((g_floorL < local_a[0] && (g_dir < 0)))) {
        g_state = 0x66;
      }
      else if (((g_floorR < local_6) && (0 < g_dir)) ||
              ((local_a[0] < g_floorL && (g_dir < 0)))) {
        if (g_dir < 1) {
          g_x = local_a[0] + -0x32;
        }
        else {
          g_x = local_6 + 10;
        }
        setMain(g_x,g_y,g_frame);
        g_state = 0x66;
      }
    }
  }
  return;
}


// ==== peerCollide @ 1000:4c21 ====

void __cdecl16far peerCollide(int param_1,int param_2,int param_3)

{
  int iVar1;
  
  if (param_2 < param_1) {
    param_2 = param_1 + -0x28;
    param_1 = param_1 + 0x28;
  }
  else {
    param_2 = param_1 + 0x50;
  }
  iVar1 = peerHit(param_1,param_2,g_y,g_y + 0x28);
  if (iVar1 != 0) {
    if (param_3 == 1) {
      g_state = 0x18;
    }
    if (param_3 == 2) {
      g_state = 0x1e;
    }
  }
  return;
}


// ==== peerCollide2 @ 1000:4c91 ====

void __cdecl16far peerCollide2(int param_1,int param_2)

{
  if (param_2 < param_1) {
    param_2 = param_1 + -0x28;
    param_1 = param_1 + 0x28;
  }
  else {
    param_2 = param_1 + 0x50;
  }
  peerHit(param_1,param_2,g_y,g_y + 0x28);
  return;
}


// ==== FUN_1000_4ce1 @ 1000:4ce1 ====

void __cdecl16far FUN_1000_4ce1(void)

{
  g_state = 0;
  return;
}


// ==== FUN_1000_4cf8 @ 1000:4cf8 ====

uint __cdecl16far FUN_1000_4cf8(void)

{
  bool bVar1;
  int iVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  uint in_BX;
  undefined2 uVar8;
  uint local_12;
  int local_10;
  uint local_e;
  int local_c;
  uint local_a;
  uint local_8;
  int local_6;
  int local_4;
  
  iVar3 = DAT_1008_0b6a + 1;
  bVar1 = 100 < DAT_1008_0b6a;
  DAT_1008_0b6a = iVar3;
  if (bVar1) {
    findPeers(g_hwndMain);
    DAT_1008_0b6a = 0;
  }
  if (g_cfgAlarm != 0) {
    alarmTick();
  }
  while (uVar4 = g_wait, uVar6 = g_state, g_state < 0x9b) {
    uVar5 = g_state * 2;
    uVar7 = (int)g_scrH >> 0xf;
    uVar6 = in_BX;
    switch(g_state) {
    case 0:
      g_gforce = 0;
      uVar8 = GETTICKCOUNT(0x1000);
      srand(uVar8);
      g_x = 0xffb0;
      g_y = 0xffb0;
      g_state = 1;
    case 1:
      DAT_1008_0b64 = 0;
      if (g_cfgGForce == 0) {
        g_beamMain = 0;
        destroySub();
        if (g_pendingState != 0) {
          uVar4 = g_pendingState;
          g_state = g_pendingState;
          g_pendingState = 0;
          return uVar4;
        }
        iVar3 = rand();
        if ((iVar3 % 0x14 == 5) && (g_gforce == 0)) {
          g_state = 0x55;
          return iVar3 / 0x14;
        }
        iVar3 = rand();
        if ((iVar3 % 0x28 == 5) && ((g_gforce == 0 && (g_otherInstance == 0)))) {
          g_state = 4;
          return iVar3 / 0x28;
        }
        iVar3 = rand();
        g_state = *(undefined2 *)((iVar3 % 0x50) * 2 + 0x47a);
        if (((int)g_x <= (int)g_scrW) &&
           (((-0x29 < (int)g_x && (-0x29 < (int)g_y)) &&
            ((int)g_y <= (int)g_scrH)))) {
          return g_scrH;
        }
        uVar4 = rand();
        if ((uVar4 & 1) == 0) {
          g_dir = 1;
          g_x = g_scrW + g_scrX0;
          iVar3 = rand();
          uVar4 = iVar3 / (int)(g_scrH - 0x40);
          g_y = iVar3 % (int)(g_scrH - 0x40) + g_scrY0;
        }
        else {
          g_dir = 0xffff;
          g_x = -0x28;
          iVar3 = rand();
          uVar4 = iVar3 / (int)(g_scrH - 0x40);
          g_y = iVar3 % (int)(g_scrH - 0x40) + g_scrY0;
        }
        g_state = 0xb;
        return uVar4;
      }
      g_state = 2;
      in_BX = uVar5;
      break;
    case 2:
      g_gforce = 1;
      g_beamMain = 0;
      destroySub();
      if (g_pendingState != 0) {
        uVar4 = g_pendingState;
        g_state = g_pendingState;
        g_pendingState = 0;
        return uVar4;
      }
      iVar3 = rand();
      in_BX = (iVar3 % 0x50) * 2;
      g_state = *(undefined2 *)(in_BX + 0x51a);
      if (((((int)g_x <= (int)g_scrW) && (-0x29 < (int)g_x)) &&
          (-0x29 < (int)g_y)) && ((int)g_y <= (int)g_scrH)) {
        return g_scrH;
      }
      uVar8 = 0x1000;
      iVar3 = rand();
      if ((iVar3 % 10 == 0) && (g_otherInstance == 0)) {
        g_state = 6;
        return iVar3 / 10;
      }
      g_hwndFloor = GETACTIVEWINDOW(uVar8,0x1000);
      if (((g_hwndFloor == g_hwndMain) || (g_hwndFloor == g_hwndSub)) ||
         ((g_hwndFloor == 0 || (iVar3 = isPeerWindow(g_hwndFloor), iVar3 != 0)))) {
        g_state = 3;
      }
      else {
        getFloorRect(g_hwndFloor,0xb3e,0x1008);
        if (g_floorT < 10) {
          g_state = 3;
        }
        else {
          iVar3 = rand();
          in_BX = ((int)(iVar3 % (int)g_floorR - g_floorL) / 3 +
                   (int)(g_floorR - g_floorL) / 2 + g_floorL) - 0x14;
          g_y = 0xffd8;
          DAT_1008_0b60 = 0;
          DAT_1008_0b26 = 0;
          DAT_1008_0b28 = 0;
          g_x = in_BX;
          iVar3 = rand();
          DAT_1008_0b62 = iVar3 % 2;
          g_state = 0x5c;
          iVar3 = rand();
          if (iVar3 % 3 != 0) {
            return iVar3 / 3;
          }
          g_state = 3;
        }
      }
      break;
    case 3:
      g_gforce = 1;
      iVar3 = rand();
      g_x = iVar3 % (int)(g_scrW - 0x28);
      iVar3 = rand();
      g_y = -(iVar3 % 0x14 + 0x28);
      DAT_1008_0b60 = 0;
      DAT_1008_0b26 = 0;
      DAT_1008_0b28 = 0;
      iVar3 = rand();
      DAT_1008_0b62 = iVar3 % 2;
      iVar3 = rand();
      uVar4 = iVar3 / 3;
      if (iVar3 % 3 == 0) {
        uVar4 = bringToTop(g_hwndMain);
      }
      g_state = 0x61;
      return uVar4;
    case 4:
      if ((int)g_x < (int)g_scrW / 2 + -0x14) {
        g_dir = 1;
      }
      else {
        g_dir = 0xffff;
      }
      g_frame = 4;
      uVar4 = setMain(g_x,g_y,4);
      g_state = 5;
      return uVar4;
    case 5:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      if ((-0x29 < (int)g_x) &&
         (uVar4 = g_scrW, (int)g_x <= (int)g_scrW)) {
        return g_scrW;
      }
      g_state = 6;
      return uVar4;
    case 6:
      iVar3 = rand();
      g_state = *(uint *)((iVar3 % 8) * 2 + 0x5ba);
      return g_state;
    case 7:
      DAT_1008_0b1e = 0;
      uVar4 = rand();
      if ((uVar4 & 1) == 0) {
        DAT_1008_0b1e = 1;
      }
      if (DAT_1008_0b1e != 0) {
        snapshotWindows();
      }
      g_frame = 4;
      setMain(g_x,g_y,4);
      iVar3 = rand();
      g_count = iVar3 % 10 + 10;
      g_state = 8;
      return iVar3 / 10;
    case 8:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b1e != 0) {
        if (g_dir < 1) {
          local_4 = findWallHit(&local_8,g_y,g_y + 0x28,
                                  0x28 - (g_dir * 0x10 - g_x),g_x + 0x28
                                 );
        }
        else {
          local_4 = findWallHit(&local_8,g_y,g_y + 0x28,
                                  -(g_dir * 0x10 - g_x),g_x);
        }
        if (local_4 != 0) {
          if (g_dir < 1) {
            g_x = local_4 + -0x28;
          }
          else {
            g_x = local_4;
          }
          uVar4 = setMain(g_x,g_y,g_frame);
          g_state = 0x1e;
          return uVar4;
        }
      }
      if (DAT_1008_0b4c == 0) {
        g_x = g_x + g_dir * -0x10;
      }
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      setMain(g_x,g_y,g_frame);
      iVar3 = rand();
      if ((iVar3 % 0x32 == 0) && (g_gforce != 0)) {
        g_state = 9;
      }
      edgeCheckB(1);
      countDown();
      checkFloor(2);
      uVar4 = peerCollide(-(g_dir * 0x10 - g_x),
                            g_dir * 0x10 + g_x,2);
      return uVar4;
    case 9:
      DAT_1008_0b26 = -0xb;
      DAT_1008_0b28 = g_dir * -8;
      DAT_1008_0b2c = g_y;
      g_state = 10;
    case 10:
      g_x = g_x + DAT_1008_0b28;
      g_y = g_y + DAT_1008_0b26;
      DAT_1008_0b26 = DAT_1008_0b26 + 2;
      if ((DAT_1008_0b26 < -1) || (1 < DAT_1008_0b26)) {
        if (DAT_1008_0b26 < -1) {
          g_frame = 0x1e;
        }
        else {
          g_frame = 0x18;
        }
      }
      else {
        g_frame = 0x17;
      }
      if ((int)DAT_1008_0b2c <= (int)g_y) {
        g_y = DAT_1008_0b2c;
        g_state = 7;
      }
      setMain(g_x,g_y,g_frame);
      edgeCheckB(0);
      uVar4 = peerCollide(DAT_1008_0b28 + g_x,g_x - DAT_1008_0b28,2);
      if (g_state != 0x1e) {
        return uVar4;
      }
      if (DAT_1008_0b2c == g_y) {
        return g_y;
      }
      DAT_1008_0b64 = g_y - DAT_1008_0b2c;
      return g_y - DAT_1008_0b2c;
    case 0xb:
      DAT_1008_0b1e = 0;
      uVar4 = rand();
      if ((g_gforce & (uVar4 & 1) == 0) != 0) {
        DAT_1008_0b1e = 1;
      }
      if (DAT_1008_0b1e != 0) {
        snapshotWindows();
      }
      iVar3 = rand();
      g_count = iVar3 % 10 + 10;
      g_frame = 2;
      uVar4 = setMain(g_x,g_y,2);
      g_state = 0xc;
      return uVar4;
    case 0xc:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b1e != 0) {
        if (g_dir < 1) {
          local_4 = findWallHit(&local_8,g_y,g_y + 0x28,
                                  0x28 - (g_dir * 6 - g_x),g_x + 0x28);
        }
        else {
          local_4 = findWallHit(&local_8,g_y,g_y + 0x28,
                                  -(g_dir * 6 - g_x),g_x);
        }
        if (local_4 != 0) {
          if (g_dir < 1) {
            g_x = local_4 + -0x28;
          }
          else {
            g_x = local_4;
          }
          g_hwndFloor = local_8;
          getFloorRect(local_8,0xb3e,0x1008);
          DAT_1008_0b5e = g_floorT + -0xc;
          g_gforce = 1;
          DAT_1008_0b5c = g_x;
          g_frame = 0x1e;
          uVar4 = setZOrder(g_hwndMain,g_hwndFloor);
          g_state = 0x59;
          return uVar4;
        }
      }
      if (DAT_1008_0b4c == 0) {
        g_x = g_x + g_dir * -6;
      }
      if (g_frame == 2) {
        g_frame = 3;
      }
      else {
        g_frame = 2;
      }
      setMain(g_x,g_y,g_frame);
      edgeCheckA();
      countDown();
      checkFloor(1);
      uVar4 = peerCollide(-(g_dir * 6 - g_x),g_dir * 6 + g_x,1
                           );
      return uVar4;
    case 0xd:
      iVar3 = rand();
      DAT_1008_0b4a = iVar3 % 2;
      iVar3 = rand();
      g_count = iVar3 % 4 + 4;
      if (DAT_1008_0b4a == 0) {
        g_frame = 0x56;
      }
      else {
        g_frame = 0x58;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      g_state = 0xe;
      return uVar4;
    case 0xe:
      if ((int)g_wait < 3) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b4c == 0) {
        g_x = g_x + g_dir * -6;
      }
      if (DAT_1008_0b4a == 0) {
        if (g_frame == 0x56) {
          g_frame = 0x57;
        }
        else {
          g_frame = 0x56;
        }
      }
      else if (g_frame == 0x58) {
        g_frame = 0x59;
      }
      else {
        g_frame = 0x58;
      }
      setMain(g_x,g_y,g_frame);
      edgeCheckA();
      countDown();
      uVar4 = checkFloor(1);
      return uVar4;
    case 0xf:
      iVar3 = rand();
      DAT_1008_0b4a = iVar3 % 2;
      iVar3 = rand();
      g_count = iVar3 % 3 + 3;
      if (DAT_1008_0b4a == 0) {
        g_frame = 0x34;
      }
      else {
        g_frame = 0x36;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      g_state = 0x10;
      return uVar4;
    case 0x10:
      if ((int)g_wait < 3) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b4a == 0) {
        if (g_frame == 0x34) {
          g_frame = 0x35;
        }
        else {
          g_frame = 0x34;
        }
      }
      else if (g_frame == 0x36) {
        g_frame = 0x37;
      }
      else {
        g_frame = 0x36;
      }
      setMain(g_x,g_y,g_frame);
      edgeCheckA();
      countDown();
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x11:
      g_frame = 6;
      uVar4 = setMain(g_x,g_y,6);
      g_state = 0x12;
      return uVar4;
    case 0x12:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = g_frame + 1;
      setMain(g_x,g_y,g_frame);
      if (g_frame == 8) {
        g_frame = 0;
        g_state = 0x13;
        iVar3 = rand();
        g_count = iVar3 % 8 + 8;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x13:
      if ((int)g_wait < 4) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = (uint)(g_frame == 0);
      setMain(g_x,g_y,g_frame);
      countDown();
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x14:
      iVar3 = rand();
      DAT_1008_0b4a = iVar3 % 3;
      if (DAT_1008_0b4a == 0) {
        g_frame = 6;
      }
      else if (DAT_1008_0b4a == 1) {
        g_frame = 0x1f;
      }
      else {
        g_frame = 0x49;
      }
      setMain(g_x,g_y,g_frame);
      g_state = 0x15;
      iVar3 = rand();
      iVar2 = rand();
      g_wait = iVar3 % 0xf + iVar2 % 0xf;
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x15:
      checkFloor(0);
      if (0 < (int)g_wait) {
        uVar4 = g_wait;
        g_wait = g_wait - 1;
        return uVar4;
      }
      uVar4 = g_wait;
      g_count = 0;
      g_wait = g_wait - 1;
      g_state = 0x16;
      return uVar4;
    case 0x16:
      g_frame = *(undefined2 *)((DAT_1008_0b4a * 8 + g_count) * 2 + 0x5d4);
      setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if (7 < (int)g_count) {
        g_state = 0x17;
        iVar3 = rand();
        iVar2 = rand();
        g_wait = iVar3 % 0xf + iVar2 % 0xf;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x17:
      checkFloor(0);
      if (0 < (int)g_wait) {
        uVar4 = g_wait;
        g_wait = g_wait - 1;
        return uVar4;
      }
      uVar4 = g_wait;
      g_wait = g_wait - 1;
      g_state = 1;
      return uVar4;
    case 0x18:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 3;
      setMain(g_x,g_y,3);
      uVar4 = rand();
      DAT_1008_0b4a = (uint)((uVar4 & 1) == 0);
      g_count = 0;
      g_state = 0x19;
      return uVar4;
    case 0x19:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b4a == 0) {
        if (g_dir < 1) {
          g_frame = 0xe - g_count;
        }
        else {
          g_frame = g_count + 0xc;
        }
      }
      else if (g_dir < 1) {
        g_frame = 0xb - g_count;
      }
      else {
        g_frame = g_count + 9;
      }
      setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if (2 < (int)g_count) {
        g_dir = -g_dir;
        g_state = 0x1a;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x1a:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 3;
      setMain(g_x,g_y,3);
      g_state = 1;
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x1b:
      DAT_1008_0b26 = -10;
      DAT_1008_0b28 = g_dir << 3;
      DAT_1008_0b2c = g_y;
      DAT_1008_0b68 = 0;
      g_state = 0x1c;
    case 0x1c:
      g_x = g_x + DAT_1008_0b28;
      g_y = g_y + DAT_1008_0b26;
      DAT_1008_0b26 = DAT_1008_0b26 + 2;
      g_frame = *(int *)(DAT_1008_0b68 * 2 + 0x644);
      DAT_1008_0b68 = DAT_1008_0b68 + 1;
      uVar4 = setMain(g_x,g_y,g_frame);
      if (g_frame != 0x40) {
        return uVar4;
      }
      DAT_1008_0b62 = 3;
      g_state = 99;
      return uVar4;
    case 0x1d:
      g_wait = 0;
      g_count = 0;
      DAT_1008_0b4a = 0;
      uVar4 = rand();
      if ((uVar4 & 7) == 0) {
        DAT_1008_0b4a = 1;
      }
      iVar3 = rand();
      if (iVar3 % 5 == 0) {
        DAT_1008_0b4a = 2;
      }
      g_state = 0x20;
      in_BX = uVar5;
      if (DAT_1008_0b4a != 0) {
        g_state = 0x22;
      }
      break;
    case 0x1e:
      if (g_gforce == 0) {
        g_state = 0x18;
        in_BX = uVar5;
      }
      else {
        g_state = 0x1b;
        in_BX = uVar5;
      }
      break;
    case 0x1f:
      uVar4 = peerCollide(g_dir * 10 + g_x,g_x,2);
      if (g_state == 0x1e) {
        if (g_count == 0) {
          return uVar4;
        }
        uVar4 = *(uint *)(g_count * 2 + 0x656);
        DAT_1008_0b64 = DAT_1008_0b64 - uVar4;
        return uVar4;
      }
      g_frame = *(int *)(g_count * 2 + 0x644);
      uVar4 = setMain(g_x,g_y - *(int *)(g_count * 2 + 0x658),
                            g_frame);
      g_count = g_count + 1;
      if ((DAT_1008_0b4a != 0) && (g_frame == 0x42)) {
        if (DAT_1008_0b64 != 0) {
          g_y = g_y - DAT_1008_0b64;
          g_x = g_x + g_dir * 10;
          DAT_1008_0b64 = 0;
          uVar4 = setMain(g_x,g_y,0x42);
        }
        DAT_1008_0b66 = 3;
        g_state = 0x22;
        return uVar4;
      }
      if (8 < (int)g_count) {
        g_state = 0x20;
        return uVar4;
      }
      g_x = g_x + g_dir * 10;
      return g_dir * 10;
    case 0x20:
      checkFloor(0);
      if ((int)g_wait < 8) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_dir = -g_dir;
      g_frame = 0x5d;
      uVar4 = setMain(g_x,g_y,0x5d);
      g_state = 0x21;
      return uVar4;
    case 0x21:
      checkFloor(0);
      if ((int)g_wait < 0xf) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      uVar4 = g_wait;
      g_wait = 0;
      g_state = 1;
      return uVar4;
    case 0x22:
      g_x = g_x + g_dir * 8;
      if (g_frame == 0x46) {
        g_frame = 0x3f;
      }
      else {
        g_frame = g_frame + 1;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      if ((DAT_1008_0b4a == 2) && (g_frame == 0x46)) {
        g_state = 0x45;
        return uVar4;
      }
      if (((int)g_scrW < (int)g_x) || ((int)g_x < -0x28)) {
        g_state = 1;
      }
      peerCollide(g_dir * 8 + g_x,-(g_dir * 8 - g_x),2);
      if (g_state == 0x1e) {
        if (DAT_1008_0b66 < 1) {
          g_state = 0x22;
          DAT_1008_0b66 = DAT_1008_0b66 + -1;
        }
        else {
          g_dir = -g_dir;
          g_state = 0x22;
          DAT_1008_0b66 = DAT_1008_0b66 + -1;
        }
      }
      uVar4 = checkFloor(2);
      return uVar4;
    case 0x23:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 3;
      uVar4 = setMain(g_x,g_y,3);
      g_count = 0;
      g_state = 0x25;
      return uVar4;
    default:
      goto switchD_1000_8e98_caseD_24;
    case 0x25:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_dir < 1) {
        g_frame = 0xe - g_count;
      }
      else {
        g_frame = g_count + 0xc;
      }
      setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if (1 < (int)g_count) {
        g_frame = 0x67;
        g_state = 0x26;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x26:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      uVar4 = setMain(g_x,g_y,g_frame);
      g_frame = g_frame + 1;
      if (0x68 < (int)g_frame) {
        g_count = 0;
        g_state = 0x27;
        return uVar4;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x27:
      if (g_count == 0) {
        if ((int)g_wait < 10) {
          g_wait = g_wait + 1;
          return uVar4;
        }
      }
      else if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (((int)g_count < 9) || ((0xb < (int)g_count && ((int)g_count < 0xd)))) {
        if (g_frame == 0x69) {
          g_frame = 0x6a;
        }
        else {
          g_frame = 0x69;
        }
      }
      else {
        g_frame = 0x68;
      }
      setMain(g_x,g_y,g_frame);
      if (0xf < (int)g_count) {
        g_state = 0x28;
        g_frame = 0x68;
      }
      g_count = g_count + 1;
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x28:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      uVar4 = setMain(g_x,g_y,g_frame);
      g_frame = g_frame + -1;
      if ((int)g_frame < 0x67) {
        g_count = 0;
        g_state = 0x29;
        return uVar4;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x29:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      uVar4 = g_count;
      if (0 < g_dir) {
        uVar4 = -g_count;
      }
      g_frame = uVar4 + 0xd;
      setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if (1 < (int)g_count) {
        g_state = 0x2a;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x2a:
      checkFloor(0);
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 3;
      uVar4 = setMain(g_x,g_y,3);
      g_count = 0;
      g_state = 1;
      return uVar4;
    case 0x2b:
      playSound(0x6d,0,0);
      g_count = 0;
      g_state = 0x2c;
    case 0x2c:
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(int *)(g_count * 2 + 0x66c);
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_wait = 0;
        g_state = 1;
        return 0;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x2d:
      playSound(0x6c,0,0);
      g_count = 0;
      g_state = 0x2e;
    case 0x2e:
      if ((int)g_wait < 0) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(int *)(g_count * 2 + 0x682);
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_wait = 0;
        g_state = 1;
        return 0;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x2f:
      g_count = 0;
      g_state = 0x30;
    case 0x30:
      if ((int)g_wait < 0) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_count == 2) {
        playSound(0x6e,0,0);
      }
      g_frame = *(int *)(g_count * 2 + 0x692);
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_state = 1;
        return 0;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x31:
      g_count = 0;
      g_state = 0x32;
    case 0x32:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(int *)(g_count * 2 + 0x6ac);
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_wait = 0;
        g_state = 1;
        return 0;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x33:
      g_count = 0;
      g_state = 0x34;
    case 0x34:
      if ((int)g_wait < 0) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_frame == 0x38) {
        g_frame = 0x39;
      }
      else {
        g_frame = 0x38;
      }
      if (0x1e < (int)g_count) {
        g_frame = 3;
        g_state = 1;
      }
      g_count = g_count + 1;
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x35:
      g_count = 0;
      g_state = 0x36;
      createSub();
      g_dir2 = g_dir;
      DAT_1008_0b30 = g_y;
      DAT_1008_0b32 = 0x95;
      if (g_dir < 1) {
        DAT_1008_0b2e = g_x + 0x28;
      }
      else {
        DAT_1008_0b2e = g_x - 0x28;
      }
      setSub(DAT_1008_0b2e,g_y,0x95);
      DAT_1008_23ce = 1;
      uVar4 = setZOrder(g_hwndSub,g_hwndMain);
      return uVar4;
    case 0x36:
      if ((int)g_wait < 2) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(int *)(g_count * 2 + 0x6b8);
      g_count = g_count + 1;
      if (g_frame == 2) {
        g_x = g_x + g_dir * -8;
        uVar4 = setMain(g_x,g_y,2);
        return uVar4;
      }
      if ((0x94 < (int)g_frame) && ((int)g_frame < 0x9a)) {
        DAT_1008_0b32 = g_frame;
        if (g_frame == 0x99) {
          DAT_1008_0b32 = 0xad;
        }
        setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
        g_frame = *(int *)(g_count * 2 + 0x6b8);
        g_count = g_count + 1;
      }
      if (g_frame == 0) {
        uVar4 = destroySub();
        g_state = 1;
        return uVar4;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x38:
      g_count = 0;
      g_state = 0x39;
    case 0x39:
      if ((int)g_wait < 2) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(uint *)(g_count * 2 + 0x6b8);
      iVar3 = g_count + 1;
      if ((0x94 < (int)g_frame) && ((int)g_frame < 0x9a)) {
        g_frame = *(uint *)(iVar3 * 2 + 0x6b8);
        iVar3 = g_count + 2;
      }
      g_count = iVar3;
      if (0xf < (int)g_count) {
        g_wait = 0;
        g_state = 0x2a;
        return g_frame;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x3a:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 3;
      uVar4 = setMain(g_x,g_y,3);
      g_count = 0;
      g_state = 0x3b;
      return uVar4;
    case 0x3b:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_dir < 1) {
        g_frame = 0xb - g_count;
      }
      else {
        g_frame = g_count + 9;
      }
      g_count = g_count + 1;
      if (2 < (int)g_count) {
        g_frame = 0x22;
        g_wait = 0xfff6;
        g_state = 0x3c;
        g_count = 0;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x3c:
      if ((int)g_wait < 0) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(undefined2 *)(g_count * 2 + 0x624);
      setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if (7 < (int)g_count) {
        g_count = 0;
        g_state = 0x3d;
        g_wait = 0xfffb;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x3d:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      uVar4 = g_count;
      if (0 < g_dir) {
        uVar4 = -g_count;
      }
      g_frame = uVar4 + 10;
      setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if (1 < (int)g_count) {
        g_state = 0x2a;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x3e:
      g_count = 0;
      g_state = 0x3f;
      return in_BX;
    case 0x3f:
      if ((int)g_wait < 2) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(int *)(g_count * 2 + 0x82c);
      if (g_frame == 0) {
        g_wait = 0;
        g_state = 1;
        return 0;
      }
      setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x41:
      g_frame = 3;
      uVar4 = setMain(g_x,g_y,3);
      g_count = 0;
      g_state = 0x42;
      return uVar4;
    case 0x42:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_count == 0) {
        if (g_dir < 1) {
          g_frame = 0xb;
        }
        else {
          g_frame = 9;
        }
      }
      else {
        g_frame = 10;
      }
      setMain(g_x,g_y,g_frame);
      if (0 < (int)g_count) {
        g_state = 0x43;
        g_count = g_count + 1;
        iVar3 = rand();
        g_count = 0;
        DAT_1008_0b48 = (iVar3 % 4 + 4) * 8;
        return iVar3 / 4;
      }
      g_count = g_count + 1;
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x43:
      g_count = g_count - 1;
      if ((int)g_count < 0) {
        g_count = 0x4f;
      }
      g_x = g_x + g_dir * -8;
      g_frame = *(int *)(((int)g_count % 8) * 2 + 0x844);
      setMain(g_x,g_y,g_frame);
      if ((0 < g_dir) && ((int)g_x < 0)) {
        g_state = 0x1e;
      }
      if ((g_dir < 0) &&
         ((int)(g_scrW - *(int *)(g_frame * 0xc + 0xbca)) < (int)g_x)) {
        g_state = 0x1e;
      }
      DAT_1008_0b48 = DAT_1008_0b48 - 1;
      if ((int)DAT_1008_0b48 < 1) {
        g_state = 0x44;
        g_count = 0;
      }
      checkFloor(2);
      uVar4 = peerCollide(-(g_dir * 8 - g_x),g_dir * 8 + g_x,2
                           );
      return uVar4;
    case 0x44:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_count == 1) {
        if (g_dir < 1) {
          g_frame = 0xb;
        }
        else {
          g_frame = 9;
        }
      }
      else if (g_count == 0) {
        g_frame = 10;
      }
      else {
        g_frame = 3;
      }
      setMain(g_x,g_y,g_frame);
      if (1 < (int)g_count) {
        uVar4 = g_count;
        g_count = g_count + 1;
        g_state = 1;
        return uVar4;
      }
      g_count = g_count + 1;
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x45:
      g_wait = 0;
      g_count = 0;
      g_state = 0x46;
    case 0x46:
      if (g_dir < 1) {
        g_frame = *(int *)(((int)(g_count + 4) % 8) * 2 + 0x856);
      }
      else {
        g_frame = *(int *)(((int)g_count % 8) * 2 + 0x856);
      }
      if (g_frame == 2) {
        g_frame = 3;
        if (g_dir < 1) {
          setMain(g_x,g_y,3);
        }
        else {
          g_dir = -g_dir;
          setMain(g_x,g_y,3);
          g_dir = -g_dir;
        }
      }
      else if (g_frame == 3) {
        if (g_dir < 0) {
          g_dir = -g_dir;
          setMain(g_x,g_y,3);
          g_dir = -g_dir;
        }
        else {
          setMain(g_x,g_y,3);
        }
      }
      else {
        setMain(g_x,g_y,g_frame);
      }
      iVar3 = g_count + 1;
      bVar1 = 0xf < (int)g_count;
      g_count = iVar3;
      if (bVar1) {
        g_frame = 0x46;
        setMain(g_x,g_y,0x46);
        g_state = 0x47;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x47:
      checkFloor(0);
      if ((int)g_wait < 0xe) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 0x60;
      uVar4 = setMain(g_x,g_y,0x60);
      g_state = 0x48;
      return uVar4;
    case 0x48:
      checkFloor(0);
      if ((int)g_wait < 0x1e) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 3;
      uVar4 = setMain(g_x,g_y,3);
      g_state = 1;
      return uVar4;
    case 0x49:
      g_count = 0;
      g_state = 0x4a;
    case 0x4a:
      if ((int)g_wait < 2) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = *(int *)(g_count * 2 + 0x742);
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_wait = 0;
        g_state = 1;
        return 0;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x4b:
      iVar3 = rand();
      g_count = iVar3 % 8 + 8;
      if (g_dir < 1) {
        g_frame = 0xe;
      }
      else {
        g_frame = 0xc;
      }
      DAT_1008_0b48 = g_count;
      uVar4 = setMain(g_x,g_y,g_frame);
      g_state = 0x4c;
      return uVar4;
    case 0x4c:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 0xd;
      uVar4 = setMain(g_x,g_y,0xd);
      g_state = 0x4d;
      return uVar4;
    case 0x4d:
      if ((int)g_wait < 2) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_frame == 0x83) {
        g_frame = 0x84;
      }
      else {
        g_frame = 0x83;
      }
      g_y = g_y - 8;
      setMain(g_x,g_y,g_frame);
      if (0 < (int)g_count) {
        uVar4 = g_count;
        g_count = g_count - 1;
        return uVar4;
      }
      g_count = DAT_1008_0b48;
      g_state = 0x4e;
      return DAT_1008_0b48;
    case 0x4e:
      g_frame = 0x85;
      g_y = g_y + 8;
      setMain(g_x,g_y,0x85);
      if (0 < (int)g_count) {
        uVar4 = g_count;
        g_count = g_count - 1;
        return uVar4;
      }
      uVar4 = g_count;
      g_count = g_count - 1;
      g_state = 0x4f;
      return uVar4;
    case 0x4f:
      if ((int)g_wait < 10) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_count = 3;
      g_wait = 0;
      g_state = 0x50;
      return uVar4;
    case 0x50:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_dir < 1) {
        g_frame = *(int *)(g_count * 2 + 0x76c);
      }
      else {
        g_frame = *(int *)(g_count * 2 + 0x75c);
      }
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_wait = 0;
        g_state = 1;
        return 0;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x51:
      g_frame = 4;
      uVar4 = setMain(g_x,g_y,4);
      g_state = 0x52;
      return uVar4;
    case 0x52:
      g_wait = 0;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x54:
      g_state = 0;
      return in_BX;
    case 0x55:
      g_hwndFloor = GETACTIVEWINDOW(0x1000);
      uVar4 = g_hwndMain;
      if ((((g_hwndFloor == g_hwndMain) ||
           (uVar4 = g_hwndSub, g_hwndFloor == g_hwndSub)) || (g_hwndFloor == 0)) ||
         (uVar4 = isPeerWindow(g_hwndFloor), uVar4 != 0)) {
        g_state = 1;
        return uVar4;
      }
      uVar4 = getFloorRect(g_hwndFloor,0xb3e,0x1008);
      if (g_floorT < 10) {
        g_state = 1;
        return uVar4;
      }
      if ((((g_dir < 1) || ((int)g_x <= (int)g_floorR)) ||
          (((int)g_y <= g_floorT || (g_floorB <= (int)(g_y + 0x28)))))
         && (((-1 < g_dir || ((int)g_floorL <= (int)(g_x + 0x28))) ||
             (((int)g_y <= g_floorT || (g_floorB <= (int)(g_y + 0x28))
              ))))) {
        iVar3 = rand();
        DAT_1008_0b5c =
             (int)(iVar3 % (int)g_floorR - g_floorL) / 3 +
             (int)(g_floorR - g_floorL) / 2 + g_floorL + -0x14;
        DAT_1008_0b5e = g_floorT + -0x28;
        if ((int)g_x < (int)g_scrW / 2 + -0x14) {
          g_dir = 1;
        }
        else {
          g_dir = 0xffff;
        }
        g_frame = 4;
        uVar4 = setMain(g_x,g_y,4);
        g_state = 0x56;
        return uVar4;
      }
      g_state = 0x57;
      return g_y + 0x28;
    case 0x56:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      setMain(g_x,g_y,g_frame);
      if ((-0x29 < (int)g_x) && ((int)g_x <= (int)g_scrW)) {
        return g_scrW;
      }
      iVar3 = isFloorValid(g_hwndFloor);
      if (iVar3 == 0) {
        g_state = 1;
        return 0;
      }
      iVar3 = rand();
      if (iVar3 % 3 != 0) {
        DAT_1008_0b60 = 0;
        g_state = 0x5c;
        g_gforce = 1;
        g_x = DAT_1008_0b5c;
        g_y = 0xffd8;
        DAT_1008_0b26 = 0;
        DAT_1008_0b28 = 0;
        iVar3 = rand();
        DAT_1008_0b62 = iVar3 % 2;
        if (DAT_1008_0b62 != 0) {
          DAT_1008_0b28 = g_dir * -3;
        }
        uVar4 = setZOrder(g_hwndMain,g_hwndFloor);
        return uVar4;
      }
      g_state = 3;
      in_BX = uVar5;
      break;
    case 0x57:
      setZOrder(g_hwndMain,g_hwndFloor);
      if (g_dir < 1) {
        DAT_1008_0b5c = g_floorL - 0x28;
      }
      else {
        DAT_1008_0b5c = g_floorR;
      }
      DAT_1008_0b5e = g_floorT;
      g_state = 0x58;
    case 0x58:
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      if ((((int)DAT_1008_0b5c < (int)g_x) || (g_dir < 1)) &&
         (((int)g_x < (int)DAT_1008_0b5c || (-1 < g_dir)))) {
        uVar4 = setMain(g_x,g_y,g_frame);
        return uVar4;
      }
      iVar3 = isFloorValid(g_hwndFloor);
      if (iVar3 == 0) {
        g_state = 1;
        return 0;
      }
      getFloorRect(g_hwndFloor,&local_12);
      uVar4 = g_floorL;
      if (((local_12 == g_floorL) && (uVar4 = g_floorR, local_e == g_floorR)) &&
         ((uVar4 = g_y, local_10 < (int)g_y &&
          (uVar4 = g_y + 0x28, (int)uVar4 < local_c)))) {
        g_gforce = 1;
        g_x = DAT_1008_0b5c;
        g_frame = 0x1e;
        DAT_1008_0b5e = local_10 + -0xc;
        g_state = 0x59;
        return DAT_1008_0b5c;
      }
      g_state = 1;
      return uVar4;
    case 0x59:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      setMain(g_x,g_y,g_frame);
      g_y = g_y - 6;
      if (g_frame == 0xf) {
        g_frame = 0x10;
      }
      else {
        g_frame = 0xf;
      }
      if ((int)g_y <= DAT_1008_0b5e) {
        g_state = 0x5a;
        return g_y;
      }
      uVar4 = checkFloorEdge();
      return uVar4;
    case 0x5a:
      if ((int)g_wait < 2) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -8;
      g_y = DAT_1008_0b5e + -0x14;
      g_frame = 0x4c;
      uVar4 = setMain(g_x,g_y,0x4c);
      g_state = 0x5b;
      return uVar4;
    case 0x5b:
      if ((int)g_wait < 2) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x18;
      g_y = g_y - 8;
      g_frame = 3;
      uVar4 = setMain(g_x,g_y,3);
      g_state = 0xb;
      return uVar4;
    case 0x5c:
      DAT_1008_0b26 = DAT_1008_0b26 + 4;
      DAT_1008_0b2c = g_y;
      g_x = g_x + DAT_1008_0b28;
      iVar3 = g_y + DAT_1008_0b26;
      iVar2 = *(int *)(g_frame * 0xc + 0xbcc) + g_y;
      g_y = iVar3;
      local_6 = checkLandOn(g_hwndFloor,*(int *)(g_frame * 0xc + 0xbcc) + iVar3,iVar2,
                              g_x,*(int *)(g_frame * 0xc + 0xbca) + g_x);
      if (local_6 != 0) {
        if (local_6 == -1) {
          uVar4 = setMain(g_x,g_y,g_frame);
          g_state = 0;
          return uVar4;
        }
        g_y = local_6 - *(int *)(g_frame * 0xc + 0xbcc);
        if (((DAT_1008_0b26 < 0x40) && (DAT_1008_0b60 == 0)) || (DAT_1008_0b26 < 8)) {
          uVar4 = g_hwndMain;
          SETWINDOWPOS(0x1000,0x13,0,0,0,0,g_hwndFloor);
          DAT_1008_0b60 = 0;
          g_count = 0;
          g_state = 0x5d;
          if (DAT_1008_0b26 < 0x24) {
            g_frame = 0x31;
            g_wait = 0xfffc;
          }
          else {
            uVar4 = rand(uVar4);
            if ((uVar4 & 3) == 0) {
              g_frame = 0x30;
            }
            else {
              g_frame = 0x2a;
            }
            g_wait = 0xfff4;
          }
          uVar4 = setMain(g_x,g_y,g_frame);
          return uVar4;
        }
        DAT_1008_0b26 = (DAT_1008_0b26 << 1) / -3;
        DAT_1008_0b60 = 1;
      }
      if (DAT_1008_0b62 == 0) {
        g_frame = 0x2a;
      }
      else if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x5d:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b62 != 0) {
        g_frame = 2;
        g_wait = 0;
        g_state = 0xb;
        return uVar4;
      }
      if (g_count == 0) {
        g_frame = 0xd;
      }
      else if (g_count == 1) {
        if (g_dir < 1) {
          g_frame = 0xe;
        }
        else {
          g_frame = 0xc;
        }
      }
      else if (g_count == 2) {
        g_frame = 3;
      }
      setMain(g_x,g_y,g_frame);
      if ((int)g_count < 2) {
        uVar4 = g_count;
        g_count = g_count + 1;
        return uVar4;
      }
      uVar4 = g_count;
      g_count = g_count + 1;
      g_state = 0xb;
      return uVar4;
    case 0x5e:
      g_gforce = 1;
      DAT_1008_0b26 = 0;
      DAT_1008_0b28 = g_dir * -8;
      DAT_1008_0b62 = 1;
      g_state = 99;
      in_BX = uVar5;
      break;
    case 0x5f:
      g_gforce = 1;
      DAT_1008_0b26 = 0;
      DAT_1008_0b28 = g_dir * -3;
      DAT_1008_0b62 = 1;
      g_state = 99;
      in_BX = uVar5;
      break;
    case 0x60:
      g_gforce = 1;
      DAT_1008_0b26 = 0;
      DAT_1008_0b28 = 0;
      DAT_1008_0b62 = 0;
      g_state = 99;
      in_BX = uVar5;
      break;
    case 0x61:
      g_gforce = 1;
      DAT_1008_0b26 = 0;
      DAT_1008_0b28 = 0;
      DAT_1008_0b62 = 1;
      g_state = 99;
      in_BX = uVar5;
      break;
    case 0x62:
      g_gforce = 1;
      DAT_1008_0b26 = 0;
      DAT_1008_0b28 = 0;
      DAT_1008_0b62 = 2;
      g_state = 99;
      in_BX = uVar5;
      break;
    case 99:
      snapshotWindows();
      DAT_1008_0b26 = DAT_1008_0b26 + 4;
      DAT_1008_0b2c = g_y;
      g_x = g_x + DAT_1008_0b28;
      iVar3 = g_y + DAT_1008_0b26;
      if ((int)g_scrH < (int)g_y) {
        g_y = iVar3;
        uVar4 = setMain(g_x,iVar3,g_frame);
        g_state = 0;
        return uVar4;
      }
      iVar2 = *(int *)(g_frame * 0xc + 0xbcc) + g_y;
      g_y = iVar3;
      local_6 = findLanding(0xb3c,*(int *)(g_frame * 0xc + 0xbcc) + iVar3,iVar2,
                              g_x,*(int *)(g_frame * 0xc + 0xbca) + g_x);
      if (local_6 != 0) {
        iVar3 = isFloorValid(g_hwndFloor);
        if (iVar3 == 0) {
          uVar4 = setMain(g_x,g_y,g_frame);
          g_state = 0;
          return uVar4;
        }
        getFloorRect(g_hwndFloor,0xb3e,0x1008);
        g_y = local_6 - *(int *)(g_frame * 0xc + 0xbcc);
        if (DAT_1008_0b62 == 3) {
          g_frame = 0x42;
          uVar4 = setMain(g_x,g_y,0x42);
          g_state = 0x1d;
          return uVar4;
        }
        if (((DAT_1008_0b26 < 0x40) && (DAT_1008_0b60 == 0)) || (DAT_1008_0b26 < 8)) {
          if (g_hwndFloor != 0) {
            SETWINDOWPOS(0x1000,0x13,0,0,0,0,g_hwndFloor);
          }
          DAT_1008_0b60 = 0;
          g_count = 0;
          g_state = 100;
          if (DAT_1008_0b26 < 0x24) {
            g_frame = 0x31;
            g_wait = 0xfffc;
          }
          else {
            uVar4 = rand();
            if ((uVar4 & 3) == 0) {
              g_frame = 0x30;
            }
            else {
              g_frame = 0x2a;
            }
            g_wait = 0xfff6;
          }
          if (DAT_1008_0b62 == 2) {
            if (DAT_1008_0b26 < 0x24) {
              g_frame = 0x29;
            }
            else {
              g_frame = 0x2d;
            }
          }
          uVar4 = setMain(g_x,g_y,g_frame);
          return uVar4;
        }
        uVar4 = rand();
        if (((uVar4 & 7) == 0) && (DAT_1008_0b60 == 0)) {
          DAT_1008_0b60 = 0;
          g_count = 0;
          g_state = 100;
          g_frame = 0x30;
          g_wait = 0xfff4;
          if (DAT_1008_0b62 == 2) {
            g_frame = 0x2d;
          }
          uVar4 = setMain(g_x,g_y,g_frame);
          return uVar4;
        }
        DAT_1008_0b26 = (DAT_1008_0b26 << 1) / -3;
        DAT_1008_0b60 = 1;
      }
      iVar3 = DAT_1008_0b68;
      if (DAT_1008_0b62 == 2) {
        if (g_frame == 0x28) {
          g_frame = 0x29;
        }
        else {
          g_frame = 0x28;
        }
      }
      else if (DAT_1008_0b62 == 1) {
        if (g_frame == 4) {
          g_frame = 5;
        }
        else {
          g_frame = 4;
        }
      }
      else if (DAT_1008_0b62 == 0) {
        g_frame = 0x2a;
      }
      else {
        g_frame = *(int *)(DAT_1008_0b68 * 2 + 0x644);
        iVar3 = DAT_1008_0b68 + 1;
        if (g_frame == 0x42) {
          iVar3 = DAT_1008_0b68;
        }
      }
      DAT_1008_0b68 = iVar3;
      if ((DAT_1008_0b62 == 3) &&
         (uVar4 = peerCollide2(g_x,g_x - DAT_1008_0b28), uVar4 != 0)) {
        g_dir = -g_dir;
        g_state = 0x1e;
        return uVar4;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 100:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b62 == 1) {
        g_frame = 2;
        g_wait = 0;
        g_state = 0xb;
        return uVar4;
      }
      if (DAT_1008_0b62 == 2) {
        g_count = 0;
        g_wait = 0;
        g_state = 0x65;
        return uVar4;
      }
      if (g_count == 0) {
        g_frame = 0xd;
      }
      else if (g_count == 1) {
        if (g_dir < 1) {
          g_frame = 0xe;
        }
        else {
          g_frame = 0xc;
        }
      }
      else if (g_count == 2) {
        g_frame = 3;
      }
      setMain(g_x,g_y,g_frame);
      if ((int)g_count < 2) {
        uVar4 = g_count;
        g_count = g_count + 1;
        return uVar4;
      }
      uVar4 = g_count;
      g_count = g_count + 1;
      g_state = 0xb;
      return uVar4;
    case 0x65:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (g_count == 0) {
        g_frame = 0x1f;
        g_wait = 0xfff8;
      }
      else if (g_count == 2) {
        g_frame = 3;
      }
      setMain(g_x,g_y,g_frame);
      if ((int)g_count < 6) {
        uVar4 = g_count;
        g_count = g_count + 1;
        return uVar4;
      }
      uVar4 = g_count;
      g_count = g_count + 1;
      g_state = 0xb;
      return uVar4;
    case 0x66:
      stopSound();
      g_count = 6;
      g_frame = 3;
      DAT_1008_0b4a = 0;
      iVar3 = rand();
      if (iVar3 % 3 == 0) {
        DAT_1008_0b4a = 1;
      }
      g_state = 0x67;
    case 0x67:
      if (DAT_1008_0b4a == 0) {
        if (g_frame == 4) {
          g_frame = 5;
        }
        else {
          g_frame = 4;
        }
      }
      else if (g_frame == 0x32) {
        g_frame = 0x33;
      }
      else {
        g_frame = 0x32;
      }
      setMain(g_x,g_y,g_frame);
      if (0 < (int)g_count) {
        uVar4 = g_count;
        g_count = g_count - 1;
        return uVar4;
      }
      uVar4 = g_count;
      g_count = g_count - 1;
      g_state = 0x61;
      return uVar4;
    case 0x68:
      DAT_1008_0b62 = 0;
      g_state = 0x6a;
      in_BX = uVar5;
      break;
    case 0x69:
      DAT_1008_0b62 = 1;
      g_state = 0x6a;
      in_BX = uVar5;
      break;
    case 0x6a:
      if (DAT_1008_0b62 == 0) {
        iVar2 = g_y + 0x27;
        iVar3 = iVar2;
        local_12 = WINDOWFROMPOINT(0x1000,g_x);
        local_a = WINDOWFROMPOINT(0x10c8,g_x + 0x27);
        if ((local_12 == g_hwndMain) && (local_a == g_hwndMain)) {
          bringToTop(g_hwndMain);
        }
        else if (local_12 == g_hwndMain) {
          setZOrder(g_hwndMain,local_a,iVar2,iVar3);
        }
        else {
          setZOrder(g_hwndMain,local_12,iVar2,iVar3);
        }
        g_frame = 0x51;
      }
      else {
        g_frame = 0x4e;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      g_count = 0;
      g_state = 0x6b;
      return uVar4;
    case 0x6b:
      g_frame = *(undefined2 *)((g_count + DAT_1008_0b62 * -8) * 2 + 0x614);
      uVar4 = setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if ((int)g_count < 8) {
        return uVar4;
      }
      if (DAT_1008_0b62 != 0) {
        uVar4 = rand();
        if ((uVar4 & 1) == 0) {
          g_state = 0x6f;
          return uVar4;
        }
        g_state = 0x6d;
        return uVar4;
      }
      uVar4 = rand();
      if ((uVar4 & 1) == 0) {
        g_state = 0x6f;
        return uVar4;
      }
      g_state = 0x6c;
      return uVar4;
    case 0x6c:
      if ((int)g_wait < 10) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = 3;
      uVar4 = setMain(g_x,g_y,3);
      g_state = 1;
      return uVar4;
    case 0x6d:
      DAT_1008_0b28 = g_dir * -0xe;
      g_frame = 0x17;
      g_x = g_x + DAT_1008_0b28;
      uVar4 = setMain(g_x,g_y,0x17);
      g_count = 0;
      g_state = 0x5f;
      return uVar4;
    case 0x6e:
      g_x = g_x + DAT_1008_0b28;
      DAT_1008_0b28 = DAT_1008_0b28 + g_dir;
      setMain(g_x,g_y,g_frame);
      if ((int)g_count < 4) {
        uVar4 = g_count;
        g_count = g_count + 1;
        return uVar4;
      }
      uVar4 = g_count;
      g_count = g_count + 1;
      g_state = 0x5f;
      return uVar4;
    case 0x6f:
      if (DAT_1008_0b62 == 0) {
        iVar3 = rand();
        DAT_1008_0b4a = iVar3 % 2;
        if (DAT_1008_0b4a == 0) {
          g_y = g_y + 0x14;
        }
        else {
          g_y = g_y + 0x24;
        }
      }
      else {
        g_x = g_x + g_dir * -0x1a;
        g_y = g_y + 0x23;
        g_dir = -g_dir;
      }
      g_count = 0;
      g_state = 0x70;
    case 0x70:
      if (g_count == 0) {
        if ((int)g_wait < 10) {
          uVar4 = g_wait;
          g_wait = g_wait + 1;
          return uVar4;
        }
      }
      else if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b62 == 0) {
        g_frame = *(undefined2 *)(((int)g_count % 4 + DAT_1008_0b4a * 4) * 2 + 0x634);
      }
      else if (g_frame == 0x28) {
        g_frame = 0x29;
      }
      else {
        g_frame = 0x28;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      g_count = g_count + 1;
      if ((int)g_count < 0xd) {
        return uVar4;
      }
      if (DAT_1008_0b62 != 0) {
        g_state = 0x62;
        return uVar4;
      }
      g_state = 0x60;
      return uVar4;
    case 0x71:
      DAT_1008_2d96 = 1;
      g_frame = 6;
      uVar4 = setMain(g_x,g_y,6);
      g_state = 0x72;
      return uVar4;
    case 0x72:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = g_frame + 1;
      setMain(g_x,g_y,g_frame);
      if (g_frame == 8) {
        g_frame = 0;
        g_state = 0x73;
      }
      uVar4 = checkFloor(0);
      return uVar4;
    case 0x73:
      checkFloor(0);
      if ((int)g_wait < 4) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = (uint)(g_frame == 0);
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x74:
      g_x = g_scrW;
      g_y = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      g_frame = 4;
      g_dir = 1;
      uVar4 = setMain(g_scrW,g_y,4);
      g_state = 0x75;
      return uVar4;
    case 0x75:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = (int)g_scrW / 2 - 0x14;
      if ((int)uVar4 < (int)g_x) {
        return uVar4;
      }
      g_state = 0x76;
      return uVar4;
    case 0x76:
      createSub();
      g_dir2 = 0xffff;
      DAT_1008_0b2e = 0xffd8;
      DAT_1008_0b30 = (int)(g_scrH + ((int)g_scrH >> 0xf & 7U)) >> 3;
      DAT_1008_0b32 = 0x9a;
      g_count = 0;
      g_state = 0x77;
      DAT_1008_23ce = 0;
      bringToTop(g_hwndMain);
      uVar4 = bringToTop(g_hwndSub);
      return uVar4;
    case 0x77:
      if (g_count == 0) {
        g_frame = 0x49;
        setMain(g_x,g_y,0x49);
        iVar3 = rand();
        if (iVar3 % 0x14 == 0) {
          g_count = 1;
        }
      }
      else {
        g_frame = *(undefined2 *)(g_count * 2 + 0x5f4);
        setMain(g_x,g_y,g_frame);
        g_count = g_count + 1;
        if (7 < (int)g_count) {
          g_count = 0;
        }
      }
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      DAT_1008_0b2e = DAT_1008_0b2e + g_dir2 * -0x10;
      if (DAT_1008_0b32 == 0x9a) {
        DAT_1008_0b32 = 0x9b;
      }
      else {
        DAT_1008_0b32 = 0x9a;
      }
      setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      if ((int)g_x < (int)DAT_1008_0b2e) {
        g_dir = -1;
        setMain(g_x,g_y,g_frame);
      }
      if ((int)DAT_1008_0b2e <= (int)g_scrW) {
        return g_scrW;
      }
      uVar4 = destroySub();
      g_state = 0x78;
      return uVar4;
    case 0x78:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      setMain(g_x,g_y,g_frame);
      if ((int)g_x <= (int)g_scrW) {
        return g_scrW;
      }
      g_state = 1;
      return g_scrW;
    case 0x79:
      g_x = g_scrW;
      g_y = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      g_frame = 4;
      g_dir = 1;
      createSub();
      g_dir2 = 0xffff;
      DAT_1008_0b2e = 0xffd8;
      DAT_1008_0b30 = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      DAT_1008_0b32 = 0x9a;
      setMain(g_x,g_y,g_frame);
      setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      g_state = 0x7a;
      DAT_1008_23ce = 0;
      bringToTop(g_hwndMain);
      uVar4 = bringToTop(g_hwndSub);
      return uVar4;
    case 0x7a:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      DAT_1008_0b2e = DAT_1008_0b2e + g_dir2 * -0x10;
      if (DAT_1008_0b32 == 0x9a) {
        DAT_1008_0b32 = 0x9b;
      }
      else {
        DAT_1008_0b32 = 0x9a;
      }
      if ((int)(g_x - DAT_1008_0b2e) < 0x2f) {
        g_x = (int)g_scrW / 2 + 3;
        DAT_1008_0b2e = (int)g_scrW / 2 + -0x2b;
        g_frame = 3;
        DAT_1008_0b32 = 0x9d;
        setMain(g_x,g_y,3);
        uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
        g_count = 0;
        g_state = 0x7b;
        return uVar4;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x7b:
      if ((int)g_wait < 3) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_frame = g_count + 0x7f;
      g_count = g_count + 1;
      uVar4 = setMain(g_x,g_y,g_frame);
      if ((int)g_count < 4) {
        return uVar4;
      }
      g_state = 0x7c;
      return uVar4;
    case 0x7c:
      if ((int)g_wait < 4) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_gridFx = g_gridFx + 1;
      if (g_gridFx < 9) {
        g_wait = 0;
        return uVar4;
      }
      uVar4 = destroySub();
      g_count = 0;
      g_state = 0x7d;
      return uVar4;
    case 0x7d:
      g_frame = *(int *)(g_count * 2 + 0x77c);
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_state = 1;
        return 0;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x7e:
      g_x = g_scrW;
      g_y = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      g_frame = 4;
      g_dir = 1;
      createSub();
      g_dir2 = 1;
      DAT_1008_0b2e = g_scrW + 0x2e;
      DAT_1008_0b30 = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      DAT_1008_0b32 = 0x9a;
      setMain(g_x,g_y,g_frame);
      setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      g_state = 0x7f;
      DAT_1008_23ce = 0;
      bringToTop(g_hwndMain);
      uVar4 = bringToTop(g_hwndSub);
      return uVar4;
    case 0x7f:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      DAT_1008_0b2e = DAT_1008_0b2e + g_dir2 * -0x10;
      if (DAT_1008_0b32 == 0x9a) {
        DAT_1008_0b32 = 0x9b;
      }
      else {
        DAT_1008_0b32 = 0x9a;
      }
      if ((int)DAT_1008_0b2e < -0x28) {
        uVar4 = destroySub();
        g_state = 1;
        return uVar4;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x80:
      g_x = g_scrW;
      g_y = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      g_frame = 4;
      g_dir = 1;
      uVar4 = setMain(g_scrW,g_y,4);
      g_state = 0x81;
      return uVar4;
    case 0x81:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      setMain(g_x,g_y,g_frame);
      uVar4 = (int)g_scrW / 2 - 0x14;
      if ((int)uVar4 < (int)g_x) {
        return uVar4;
      }
      g_state = 0x82;
      return uVar4;
    case 0x82:
      createSub();
      g_dir2 = 0xffff;
      DAT_1008_0b2e = 0xffd8;
      DAT_1008_0b30 = (int)(g_scrH + ((int)g_scrH >> 0xf & 7U)) >> 3;
      DAT_1008_0b32 = 0x9e;
      g_count = 0;
      g_state = 0x83;
      DAT_1008_23ce = 0;
      bringToTop(g_hwndMain);
      uVar4 = bringToTop(g_hwndSub);
      return uVar4;
    case 0x83:
      if (g_count == 0) {
        g_frame = 0x49;
        setMain(g_x,g_y,0x49);
        iVar3 = rand();
        if (iVar3 % 0x14 == 0) {
          g_count = 1;
        }
      }
      else {
        g_frame = *(undefined2 *)(g_count * 2 + 0x5f4);
        setMain(g_x,g_y,g_frame);
        g_count = g_count + 1;
        if (7 < (int)g_count) {
          g_count = 0;
        }
      }
      DAT_1008_0b2e = DAT_1008_0b2e + g_dir2 * -0x10;
      if (DAT_1008_0b32 == 0xa1) {
        DAT_1008_0b32 = 0x9e;
      }
      else {
        DAT_1008_0b32 = DAT_1008_0b32 + 1;
      }
      if ((int)g_x < (int)DAT_1008_0b2e) {
        DAT_1008_0b2e = g_x;
        DAT_1008_0b32 = 0xa2;
        g_state = 0x84;
      }
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x84:
      g_frame = 0x49;
      setMain(g_x,g_y,0x49);
      g_beamSub = g_beamSub + 0x28;
      if ((int)((g_y - DAT_1008_0b30) + -0x28) <= g_beamSub) {
        g_beamSub = (g_y - DAT_1008_0b30) + -0x3c;
        g_state = 0x85;
      }
      setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      if (DAT_1008_0b32 == 0xa5) {
        uVar4 = g_wait;
        DAT_1008_0b32 = 0xa2;
        g_wait = 0;
        return uVar4;
      }
      uVar4 = g_wait;
      DAT_1008_0b32 = DAT_1008_0b32 + 1;
      g_wait = 0;
      return uVar4;
    case 0x85:
      g_beamSub = g_beamSub + -0x14;
      if (g_beamSub < 1) {
        g_beamSub = 0;
        g_y = DAT_1008_0b30 + 0x28;
        g_state = 0x86;
        if (g_frame == 4) {
          g_frame = 5;
        }
        else {
          g_frame = 4;
        }
        setMain(g_x,g_y,g_frame);
        DAT_1008_0b32 = 0x9e;
        uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,0x9e);
        return uVar4;
      }
      setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      g_y = g_y - 0x14;
      setMain(g_x,g_y,g_frame);
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      if (DAT_1008_0b32 == 0xa5) {
        uVar4 = g_wait;
        DAT_1008_0b32 = 0xa2;
        g_wait = 0;
        return uVar4;
      }
      uVar4 = g_wait;
      DAT_1008_0b32 = DAT_1008_0b32 + 1;
      g_wait = 0;
      return uVar4;
    case 0x86:
      g_x = 0xffb0;
      setMain(0xffb0,g_y,g_frame);
      DAT_1008_0b2e = DAT_1008_0b2e + g_dir2 * -0x10;
      if (DAT_1008_0b32 == 0xa1) {
        DAT_1008_0b32 = 0x9e;
      }
      else {
        DAT_1008_0b32 = DAT_1008_0b32 + 1;
      }
      if ((int)g_scrW < (int)DAT_1008_0b2e) {
        destroySub();
        uVar4 = stopSound();
        g_state = 1;
        return uVar4;
      }
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x87:
      g_y = (int)(g_scrH + (uVar7 & 7)) >> 3;
      g_dir = 0xffff;
      g_x = 0xffd8;
      g_frame = 0x9e;
      DAT_1008_0b30 = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      g_count = 0;
      g_state = 0x88;
      return g_y;
    case 0x88:
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 0xa1) {
        g_frame = 0x9e;
      }
      else {
        g_frame = g_frame + 1;
      }
      if ((int)g_scrW / 2 + -0x14 < (int)g_x) {
        g_x = (int)g_scrW / 2 + -0x14;
        g_frame = 0xa2;
        g_state = 0x89;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x89:
      g_beamMain = g_beamMain + 0x28;
      if ((int)((DAT_1008_0b30 - g_y) + -0x28) <= g_beamMain) {
        g_beamMain = (DAT_1008_0b30 - g_y) + -0x28;
        g_state = 0x8a;
      }
      setMain(g_x,g_y,g_frame);
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      if (g_frame == 0xa5) {
        uVar4 = g_wait;
        g_frame = 0xa2;
        g_wait = 0;
        return uVar4;
      }
      uVar4 = g_wait;
      g_frame = g_frame + 1;
      g_wait = 0;
      return uVar4;
    case 0x8a:
      if ((int)g_wait < 4) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      createSub();
      DAT_1008_0b2e = g_x;
      DAT_1008_0b32 = 0xa7;
      setSub(g_x,DAT_1008_0b30,0xa7);
      setMain(g_x,g_y,g_frame);
      g_state = 0x8b;
      DAT_1008_23ce = 0;
      bringToTop(g_hwndMain);
      uVar4 = bringToTop(g_hwndSub);
      return uVar4;
    case 0x8b:
      if (g_beamMain == 0) {
        g_x = g_x + g_dir * -0x10;
        if (g_frame == 0xa1) {
          g_frame = 0x9e;
        }
        else {
          g_frame = g_frame + 1;
        }
      }
      else {
        g_beamMain = g_beamMain + -0x28;
        if (g_beamMain < 1) {
          g_frame = 0x9e;
          g_beamMain = 0;
        }
        if (g_frame == 0xa5) {
          g_frame = 0xa2;
        }
        else {
          g_frame = g_frame + 1;
        }
      }
      if ((int)g_scrW < (int)g_x) {
        g_state = 0x8c;
      }
      setMain(g_x,g_y,g_frame);
      if ((int)g_wait < 1) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b32 == 0xa7) {
        DAT_1008_0b32 = 0xa8;
      }
      else {
        DAT_1008_0b32 = 0xa7;
      }
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x8c:
      DAT_1008_0b32 = 0xa6;
      setSub(DAT_1008_0b2e,DAT_1008_0b30,0xa6);
      uVar4 = g_wait;
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_gridFx = g_gridFx + 1;
      if (g_gridFx < 9) {
        g_wait = 0;
        return uVar4;
      }
      destroySub();
      uVar4 = stopSound();
      g_state = 1;
      return uVar4;
    case 0x8e:
      g_x = 0xffb0;
      g_y = (int)(g_scrH + (uVar7 & 7)) >> 3;
      setMain(0xffb0,g_y,g_frame);
      createSub();
      g_dir2 = 0xffff;
      DAT_1008_0b2e = 0xffd8;
      DAT_1008_0b30 = (int)(g_scrH * 7 + ((int)(g_scrH * 7) >> 0xf & 7U)) >> 3;
      DAT_1008_0b32 = 0x9e;
      g_count = 0;
      g_state = 0x8f;
      DAT_1008_23ce = 0;
      bringToTop(g_hwndMain);
      uVar4 = bringToTop(g_hwndSub);
      return uVar4;
    case 0x8f:
      DAT_1008_0b2e = DAT_1008_0b2e + g_dir2 * -0x10;
      if (DAT_1008_0b32 == 0xa1) {
        DAT_1008_0b32 = 0x9e;
      }
      else {
        DAT_1008_0b32 = DAT_1008_0b32 + 1;
      }
      if ((int)(g_scrH + (uVar7 & 7)) >> 3 < (int)DAT_1008_0b2e) {
        DAT_1008_0b2e = (int)(g_scrH + (uVar7 & 7)) >> 3;
        g_x = g_scrW;
        g_y = DAT_1008_0b30;
        g_frame = 4;
        g_dir = 1;
        g_state = 0x90;
      }
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x90:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      if (DAT_1008_0b32 == 0xa1) {
        DAT_1008_0b32 = 0x9e;
      }
      else {
        DAT_1008_0b32 = DAT_1008_0b32 + 1;
      }
      setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      g_x = g_x + g_dir * -0x10;
      if (g_frame == 4) {
        g_frame = 5;
      }
      else {
        g_frame = 4;
      }
      setMain(g_x,g_y,g_frame);
      if ((int)(DAT_1008_0b2e + 0x28) < (int)g_x) {
        return DAT_1008_0b2e + 0x28;
      }
      g_x = 0xffb0;
      uVar4 = setMain(0xffb0,g_y,g_frame);
      g_state = 0x91;
      return uVar4;
    case 0x91:
      DAT_1008_0b30 = DAT_1008_0b30 - 0x28;
      if (DAT_1008_0b32 == 0xa1) {
        DAT_1008_0b32 = 0x9e;
      }
      else {
        DAT_1008_0b32 = DAT_1008_0b32 + 1;
      }
      if ((int)DAT_1008_0b30 < -0x28) {
        destroySub();
        uVar4 = stopSound();
        g_state = 1;
        return uVar4;
      }
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x93:
      createSub();
      DAT_1008_2d76 = 1;
      g_dir2 = 1;
      DAT_1008_0b32 = 0x92;
      g_count = 0;
      g_x = g_scrW;
      g_y = 0xffd8;
      g_dir = 1;
      DAT_1008_0b28 = (int)g_scrW / -0x60;
      DAT_1008_0b26 = (int)g_scrH / 0x60;
      DAT_1008_0b2e = DAT_1008_0b28 * 0x5c + g_scrW;
      DAT_1008_0b30 = DAT_1008_0b26 * 0x5c - 0x14;
      g_state = 0x94;
      DAT_1008_23ce = 1;
      bringToTop(g_hwndSub);
      bringToTop(g_hwndMain);
    case 0x94:
      if ((int)g_wait < 0) {
        uVar4 = g_wait;
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      g_x = g_x + DAT_1008_0b28;
      g_y = g_y + DAT_1008_0b26;
      g_frame = *(int *)(((int)g_count / 3) * 2 + 0x6fe);
      uVar4 = g_count + 1;
      if (((g_frame == 0) || (g_count = uVar4, g_frame == 0x90)) ||
         (g_frame == 0x91)) {
        if (g_frame == 0x90) {
          g_frame = 0x91;
        }
        else {
          g_frame = 0x90;
        }
      }
      if ((g_frame == 0x89) || (g_frame == 0x8a)) {
        if (g_frame == 0x89) {
          g_frame = 0x8a;
        }
        else {
          g_frame = 0x89;
        }
      }
      setMain(g_x,g_y,g_frame);
      if (((int)(DAT_1008_0b2e + 10) <= (int)g_x) &&
         ((int)g_y <= (int)(DAT_1008_0b30 + 0x14))) {
        return DAT_1008_0b30 + 0x14;
      }
      g_count = 0;
      g_state = 0x95;
      g_frame = 0xad;
      uVar4 = setMain(g_x,g_y,0xad);
      return uVar4;
    case 0x95:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = 0xffb0;
      setMain(0xffb0,g_y,g_frame);
      DAT_1008_0b32 = *(int *)(g_count * 2 + 0x7b4);
      g_count = g_count + 1;
      if (DAT_1008_0b32 == 0) {
        g_x = DAT_1008_0b2e;
        g_y = DAT_1008_0b30;
        g_count = 0;
        uVar4 = playSound(0x6c,0,0);
        g_state = 0x96;
        return uVar4;
      }
      uVar4 = setSub(DAT_1008_0b2e,DAT_1008_0b30,DAT_1008_0b32);
      return uVar4;
    case 0x96:
      g_frame = *(int *)(g_count * 2 + 0x7be);
      g_count = g_count + 1;
      if (g_frame == 0) {
        g_frame = 3;
        g_state = 0x97;
        return 0;
      }
      if ((0x50 < (int)g_frame) && ((int)g_frame < 0x54)) {
        uVar4 = setMain(g_x,g_y - 0x14,g_frame);
        return uVar4;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      return uVar4;
    case 0x97:
      if ((int)g_wait < 1) {
        g_wait = g_wait + 1;
        return uVar4;
      }
      g_wait = 0;
      g_x = g_x + g_dir * -6;
      if (g_frame == 2) {
        g_frame = 3;
      }
      else {
        g_frame = 2;
      }
      uVar4 = setMain(g_x,g_y,g_frame);
      if (-0x29 < (int)g_x) {
        return uVar4;
      }
      uVar4 = destroySub();
      g_state = 1;
      return uVar4;
    case 0x99:
      return in_BX;
    case 0x9a:
      return in_BX;
    }
  }
switchD_1000_8e98_caseD_24:
  return uVar6;
}


// ==== FUN_1000_8fd7 @ 1000:8fd7 ====

void __cdecl16far FUN_1000_8fd7(int param_1)

{
  if (param_1 == 0) {
    g_state = 1;
    if (g_gforce != 0) {
      g_state = 0x61;
    }
  }
  else if (param_1 == 1) {
    g_state = 0x51;
  }
  else if (param_1 == 2) {
    g_state = 0x61;
  }
  else if (param_1 == 3) {
    g_pendingState = 0x71;
  }
  else if (param_1 == 4) {
    g_state = 0x38;
  }
  return;
}


// ==== FUN_1000_904a @ 1000:904a ====

undefined2 __cdecl16far FUN_1000_904a(undefined2 param_1)

{
  undefined2 in_BX;
  
  g_beamMain = 0;
  stopSound();
  destroySub();
  switch(param_1) {
  case 0:
    g_state = 1;
    param_1 = in_BX;
    break;
  case 1:
    g_state = 7;
    param_1 = in_BX;
    break;
  case 2:
    g_state = 0xb;
    param_1 = in_BX;
    break;
  case 3:
    g_state = 0xd;
    param_1 = in_BX;
    break;
  case 4:
    g_state = 0xf;
    param_1 = in_BX;
    break;
  case 5:
    g_state = 0x11;
    param_1 = in_BX;
    break;
  case 6:
    g_state = 0x14;
    param_1 = in_BX;
    break;
  case 7:
    g_state = 0x18;
    param_1 = in_BX;
    break;
  case 8:
    g_state = 0x1e;
    param_1 = in_BX;
    break;
  case 9:
    g_state = 0x23;
    param_1 = in_BX;
    break;
  case 10:
    g_state = 0x2b;
    param_1 = in_BX;
    break;
  case 0xb:
    g_state = 0x2d;
    param_1 = in_BX;
    break;
  case 0xc:
    g_state = 0x31;
    param_1 = in_BX;
    break;
  case 0xd:
    g_state = 0x33;
    param_1 = in_BX;
    break;
  case 0xe:
    g_state = 0x35;
    param_1 = in_BX;
    break;
  case 0xf:
    g_state = 0x3a;
    param_1 = in_BX;
    break;
  case 0x10:
    g_state = 0x2f;
    param_1 = in_BX;
    break;
  case 0x11:
    g_state = 0x93;
    param_1 = in_BX;
    break;
  case 0x12:
    g_state = 0x74;
    param_1 = in_BX;
    break;
  case 0x13:
    g_state = 0x79;
    param_1 = in_BX;
    break;
  case 0x14:
    g_state = 0x7e;
    param_1 = in_BX;
    break;
  case 0x15:
    g_state = 0x80;
    param_1 = in_BX;
    break;
  case 0x16:
    g_state = 0x87;
    param_1 = in_BX;
    break;
  case 0x17:
    g_state = 0x8e;
    param_1 = in_BX;
    break;
  case 0x18:
    g_state = 0x41;
    param_1 = in_BX;
    break;
  case 0x19:
    g_state = 0x3e;
    param_1 = in_BX;
    break;
  case 0x1a:
    g_state = 0x4b;
    param_1 = in_BX;
    break;
  case 0x1b:
    g_state = 0x60;
    param_1 = in_BX;
    break;
  case 0x1c:
    g_state = 9;
    param_1 = in_BX;
    break;
  case 0x1d:
    g_state = 0x45;
    param_1 = in_BX;
  }
  return param_1;
}


// ==== FUN_1000_91cd @ 1000:91cd ====

void __cdecl16far FUN_1000_91cd(int param_1,int param_2)

{
  g_x = g_x + param_1;
  g_y = g_y + param_2;
  setMain(g_x,g_y,g_frame);
  return;
}


// ==== FUN_1000_9200 @ 1000:9200 ====

undefined2 __cdecl16far FUN_1000_9200(void)

{
  undefined2 uVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 uVar4;
  undefined2 uVar5;
  
  uVar1 = GETDC();
  DAT_1008_0b70 = CREATECOMPATIBLEBITMAP(0x10c8,100,100);
  if ((((DAT_1008_0b70 == 0) ||
       (uVar5 = uVar1, DAT_1008_0b72 = CREATECOMPATIBLEBITMAP(0x10c8,100,100), DAT_1008_0b72 == 0))
      || (uVar4 = uVar1, DAT_1008_0b74 = CREATECOMPATIBLEBITMAP(0x10c8,100,100), DAT_1008_0b74 == 0)
      ) || ((uVar3 = uVar1, DAT_1008_0b7a = CREATECOMPATIBLEBITMAP(0x10c8,0x28,0x28),
            DAT_1008_0b7a == 0 ||
            (uVar2 = uVar1, DAT_1008_0b7c = CREATECOMPATIBLEBITMAP(0x10c8,0x28,0x28),
            DAT_1008_0b7c == 0)))) {
    RELEASEDC(0x10c8,uVar1);
    uVar1 = 0;
  }
  else {
    g_scrX0 = 0;
    g_scrY0 = 0;
    g_scrW = GETSYSTEMMETRICS(0x10c8,0,uVar2,uVar3,uVar4,uVar5);
    g_scrH = GETSYSTEMMETRICS(0x10c8,1);
    RELEASEDC(0x10c8,uVar1);
    g_gridFx = 0;
    g_beamSub = 0;
    DAT_1008_2d76 = 0;
    DAT_1008_0bb0 = 0;
    DAT_1008_0bb2 = 0;
    DAT_1008_0bb4 = 0;
    DAT_1008_0bb6 = 0;
    uVar1 = 1;
  }
  return uVar1;
}


// ==== FUN_1000_930f @ 1000:930f ====

void __cdecl16far FUN_1000_930f(void)

{
  undefined2 uVar1;
  
  uVar1 = DAT_1008_0b7c;
  DELETEOBJECT();
  DELETEOBJECT(0x10c8,DAT_1008_0b7a,uVar1);
  DELETEOBJECT(0x10c8,DAT_1008_0b70);
  DELETEOBJECT(0x10c8,DAT_1008_0b72);
  DELETEOBJECT(0x10c8,DAT_1008_0b74);
  return;
}


// ==== FUN_1000_9350 @ 1000:9350 ====

void __cdecl16far FUN_1000_9350(undefined2 param_1,undefined2 param_2,int param_3)

{
  DAT_1008_0b98 = param_1;
  DAT_1008_0b9a = param_2;
  DAT_1008_0b76 = *(undefined2 *)(param_3 * 0xc + 0xbc2);
  DAT_1008_0b78 = *(undefined2 *)(param_3 * 0xc + 0xbc4);
  DAT_1008_0b7e = *(undefined2 *)(param_3 * 0xc + 0xbc6);
  DAT_1008_0b80 = *(undefined2 *)(param_3 * 0xc + 0xbc8);
  DAT_1008_0b9c = *(undefined2 *)(param_3 * 0xc + 0xbca);
  DAT_1008_0b9e = *(undefined2 *)(param_3 * 0xc + 0xbcc);
  return;
}


// ==== FUN_1000_93df @ 1000:93df ====

void __cdecl16far FUN_1000_93df(void)

{
  undefined2 unaff_CS;
  
  if (DAT_1008_2d76 == 0) {
    DAT_1008_0bb0 = 0;
    DAT_1008_0bb2 = 0;
    DAT_1008_0bb4 = 0;
    DAT_1008_0bb6 = 0;
    MOVEWINDOW(unaff_CS,1,0,0,0,0);
    DAT_1008_0b92 = 1;
    DAT_1008_23da = 1;
    DAT_1008_0b96 = 0;
  }
  return;
}


// ==== FUN_1000_9438 @ 1000:9438 ====

void __cdecl16far FUN_1000_9438(undefined2 param_1)

{
  undefined2 uVar1;
  undefined2 uVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  int iVar6;
  int iVar7;
  int iVar8;
  int iVar9;
  int iVar10;
  undefined2 uVar11;
  undefined2 uVar12;
  undefined2 uVar13;
  undefined2 uVar14;
  undefined2 uVar15;
  
  if ((DAT_1008_0b90 == 0) &&
     (((((DAT_1008_0bb0 != DAT_1008_0b98 || (DAT_1008_0bb2 != DAT_1008_0b9a)) ||
        (DAT_1008_0b96 != DAT_1008_0b76)) ||
       ((DAT_1008_0b86 != DAT_1008_0b7e || (g_gridFx != 0)))) || (g_beamSub != 0)))) {
    DAT_1008_0b8e = DAT_1008_0b8e ^ 1;
    uVar15 = 0;
    uVar1 = GETDC();
    uVar2 = uVar1;
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    uVar2 = CREATECOMPATIBLEDC(0x10c8,uVar1,uVar2,uVar15);
    uVar15 = CREATECOMPATIBLEDC(0x10c8,uVar1);
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    iVar9 = DAT_1008_0bb0;
    if (DAT_1008_0bb0 < DAT_1008_0b98) {
      iVar9 = DAT_1008_0b98;
    }
    iVar10 = DAT_1008_0bb2;
    if (DAT_1008_0bb2 < DAT_1008_0b9a) {
      iVar10 = DAT_1008_0b9a;
    }
    iVar3 = DAT_1008_0bb4 + DAT_1008_0bb0;
    if (DAT_1008_0b9c + DAT_1008_0b98 < DAT_1008_0bb4 + DAT_1008_0bb0) {
      iVar3 = DAT_1008_0b9c + DAT_1008_0b98;
    }
    iVar4 = DAT_1008_0bb2 + DAT_1008_0bb6;
    if (DAT_1008_0b9a + DAT_1008_0b9e < DAT_1008_0bb2 + DAT_1008_0bb6) {
      iVar4 = DAT_1008_0b9a + DAT_1008_0b9e;
    }
    uVar13 = uVar2;
    uVar14 = uVar2;
    if ((iVar3 - iVar9 < 1) || (iVar4 - iVar10 < 1)) {
      DAT_1008_0bb8 = 1;
      if (DAT_1008_0b92 != 0) {
        DAT_1008_0b92 = 0;
      }
      DAT_1008_0ba0 = DAT_1008_0b98;
      DAT_1008_0ba2 = DAT_1008_0b9a;
      DAT_1008_0ba4 = DAT_1008_0b9c;
      DAT_1008_0ba6 = DAT_1008_0b9e;
      SELECTOBJECT(0x10c8,*(undefined2 *)(DAT_1008_0b8e * 2 + 0xb70));
      uVar12 = 0;
      uVar11 = 0;
      BITBLT(0x10c8,0x20,0xcc,DAT_1008_0ba2,DAT_1008_0ba0,uVar1,DAT_1008_0ba6,DAT_1008_0ba4,0,0);
    }
    else {
      DAT_1008_0bb8 = 0;
      DAT_1008_0ba0 = DAT_1008_0bb0;
      if (DAT_1008_0b98 < DAT_1008_0bb0) {
        DAT_1008_0ba0 = DAT_1008_0b98;
      }
      DAT_1008_0ba2 = DAT_1008_0bb2;
      if (DAT_1008_0b9a < DAT_1008_0bb2) {
        DAT_1008_0ba2 = DAT_1008_0b9a;
      }
      iVar9 = DAT_1008_0bb4 + DAT_1008_0bb0;
      if (DAT_1008_0bb4 + DAT_1008_0bb0 < DAT_1008_0b9c + DAT_1008_0b98) {
        iVar9 = DAT_1008_0b9c + DAT_1008_0b98;
      }
      DAT_1008_0ba4 = iVar9 - DAT_1008_0ba0;
      iVar9 = DAT_1008_0bb2 + DAT_1008_0bb6;
      if (DAT_1008_0bb2 + DAT_1008_0bb6 < DAT_1008_0b9a + DAT_1008_0b9e) {
        iVar9 = DAT_1008_0b9a + DAT_1008_0b9e;
      }
      DAT_1008_0ba6 = iVar9 - DAT_1008_0ba2;
      SELECTOBJECT(0x10c8,*(undefined2 *)(DAT_1008_0b8e * 2 + 0xb70));
      uVar12 = 0;
      uVar11 = 0;
      BITBLT(0x10c8,0x20,0xcc,DAT_1008_0ba2,DAT_1008_0ba0,uVar1,DAT_1008_0ba6,DAT_1008_0ba4,0,0);
      iVar9 = DAT_1008_0ba8;
      if (DAT_1008_0ba8 < DAT_1008_0ba0) {
        iVar9 = DAT_1008_0ba0;
      }
      iVar10 = DAT_1008_0baa;
      if (DAT_1008_0baa < DAT_1008_0ba2) {
        iVar10 = DAT_1008_0ba2;
      }
      iVar3 = DAT_1008_0bac + DAT_1008_0ba8;
      if (DAT_1008_0ba4 + DAT_1008_0ba0 < DAT_1008_0bac + DAT_1008_0ba8) {
        iVar3 = DAT_1008_0ba4 + DAT_1008_0ba0;
      }
      iVar4 = DAT_1008_0baa + DAT_1008_0bae;
      if (DAT_1008_0ba2 + DAT_1008_0ba6 < DAT_1008_0baa + DAT_1008_0bae) {
        iVar4 = DAT_1008_0ba2 + DAT_1008_0ba6;
      }
      iVar5 = iVar9 - DAT_1008_0ba0;
      if (iVar5 < 0) {
        iVar5 = 0;
      }
      iVar6 = iVar10 - DAT_1008_0ba2;
      if (iVar6 < 0) {
        iVar6 = 0;
      }
      iVar7 = iVar9 - DAT_1008_0ba8;
      if (iVar7 < 0) {
        iVar7 = 0;
      }
      iVar8 = iVar10 - DAT_1008_0baa;
      if (iVar8 < 0) {
        iVar8 = 0;
      }
      if ((0 < iVar3 - iVar9) && (0 < iVar4 - iVar10)) {
        uVar12 = uVar15;
        SELECTOBJECT(0x10c8,*(undefined2 *)(((byte)((char)DAT_1008_0b8e + 1) & 1) * 2 + 0xb70));
        uVar11 = uVar2;
        BITBLT(0x10c8,0x20,0xcc,iVar8,iVar7,uVar15,iVar4 - iVar10,iVar3 - iVar9,iVar6,iVar5);
      }
    }
    if (DAT_1008_0b76 != 0) {
      SELECTOBJECT(0x10c8,DAT_1008_0b74);
      BITBLT(0x10c8,0x20,0xcc,0,0,uVar2,DAT_1008_0ba6,DAT_1008_0ba4,0,0);
      iVar9 = DAT_1008_0b98 - DAT_1008_0ba0;
      if (iVar9 < 0) {
        iVar9 = 0;
      }
      iVar10 = DAT_1008_0b9a - DAT_1008_0ba2;
      if (iVar10 < 0) {
        iVar10 = 0;
      }
      if (DAT_1008_0b78 == 0) {
        SELECTOBJECT(0x10c8,DAT_1008_0b76);
        BITBLT(0x10c8,0x20,0xcc,DAT_1008_0b80,DAT_1008_0b7e,uVar2,DAT_1008_0b9e,DAT_1008_0b9c,iVar10
               ,iVar9);
      }
      else if (g_gridFx == 0) {
        SELECTOBJECT(0x10c8,DAT_1008_0b78);
        BITBLT(0x10c8,0xc6,0x88,DAT_1008_0b80,DAT_1008_0b7e,uVar2,DAT_1008_0b9e,DAT_1008_0b9c,iVar10
               ,iVar9);
        SELECTOBJECT(0x10c8,DAT_1008_0b76);
        BITBLT(0x10c8,0x86,0xee,DAT_1008_0b80,DAT_1008_0b7e,uVar2,DAT_1008_0b9e,DAT_1008_0b9c,iVar10
               ,iVar9);
      }
      else {
        if (g_gridFx == 1) {
          SELECTOBJECT(0x10c8,DAT_1008_0b78);
          SELECTOBJECT(0x10c8,DAT_1008_0b7c);
          BITBLT(0x10c8,0x20,0xcc,DAT_1008_0b80,DAT_1008_0b7e,uVar2,0x28,0x28,0,0);
          SELECTOBJECT(0x10c8,DAT_1008_0b76);
          SELECTOBJECT(0x10c8,DAT_1008_0b7a);
          BITBLT(0x10c8,0x20,0xcc,DAT_1008_0b80,DAT_1008_0b7e,uVar2,0x28,0x28,0,0);
        }
        SELECTOBJECT(0x10c8,DAT_1008_0b7c);
        SELECTOBJECT(0x10c8,DAT_1008_13d2);
        BITBLT(0x10c8,0x86,0xee,0,DAT_1008_13d6,uVar15,0x28,0x29 - g_gridFx,g_gridFx + -1,
               g_gridFx + -1);
        SELECTOBJECT(0x10c8,DAT_1008_0b7a);
        SELECTOBJECT(0x10c8,DAT_1008_13d4);
        BITBLT(0x10c8,0xc6,0x88,0,DAT_1008_13d6,uVar15,0x28,0x29 - g_gridFx,g_gridFx + -1,
               g_gridFx + -1);
        SELECTOBJECT(0x10c8,DAT_1008_0b74);
        SELECTOBJECT(0x10c8,DAT_1008_0b7c);
        uVar14 = uVar15;
        BITBLT(0x10c8,0xc6,0x88,0,0,uVar2,DAT_1008_0b9e,DAT_1008_0b9c,iVar10,iVar9);
        uVar13 = uVar2;
        SELECTOBJECT(0x10c8,DAT_1008_0b7a);
        uVar12 = uVar15;
        BITBLT(0x10c8,0x86,0xee,0,0,uVar2,DAT_1008_0b9e,DAT_1008_0b9c,iVar10,iVar9);
      }
      DAT_1008_0b90 = 1;
      DAT_1008_2d7e = 1;
      MOVEWINDOW(0x10c8,1,DAT_1008_0ba6 + g_beamSub,DAT_1008_0ba4,DAT_1008_0ba2,DAT_1008_0ba0);
      DAT_1008_2d7e = 0;
      uVar11 = param_1;
    }
    DELETEDC(0x10c8,uVar2,uVar11,uVar12,uVar13,uVar14);
    DELETEDC(0x10c8,uVar15);
    DAT_1008_0ba8 = DAT_1008_0ba0;
    DAT_1008_0baa = DAT_1008_0ba2;
    DAT_1008_0bac = DAT_1008_0ba4;
    DAT_1008_0bae = DAT_1008_0ba6;
    DAT_1008_0bb0 = DAT_1008_0b98;
    DAT_1008_0bb2 = DAT_1008_0b9a;
    DAT_1008_0bb4 = DAT_1008_0b9c;
    DAT_1008_0bb6 = DAT_1008_0b9e;
    DAT_1008_0b96 = DAT_1008_0b76;
    DAT_1008_0b86 = DAT_1008_0b7e;
    DAT_1008_0b88 = DAT_1008_0b80;
    RELEASEDC(0x10c8,uVar1);
  }
  return;
}


// ==== FUN_1000_9a49 @ 1000:9a49 ====

undefined2 __cdecl16far FUN_1000_9a49(undefined2 param_1)

{
  undefined2 uVar1;
  undefined2 uVar2;
  undefined2 uVar3;
  undefined2 unaff_SS;
  undefined2 uVar4;
  undefined2 uVar5;
  undefined2 local_e;
  undefined2 local_c;
  undefined2 local_a;
  int local_8;
  undefined2 local_6;
  undefined2 local_4;
  
  if (DAT_1008_0b90 != 0) {
    DAT_1008_0b90 = 0;
    uVar4 = param_1;
    uVar1 = GETDC();
    local_4 = uVar1;
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    REALIZEPALETTE(0x10c8,local_4,uVar1,uVar4);
    uVar2 = CREATECOMPATIBLEDC(0x10c8,local_4);
    local_6 = uVar2;
    SELECTPALETTE(0x10c8,0,DAT_1008_2d6a);
    uVar1 = local_6;
    SELECTOBJECT(0x10c8,DAT_1008_0b74);
    uVar4 = local_4;
    BITBLT(0x10c8,0x20,0xcc,0,0,local_6,DAT_1008_0ba6,DAT_1008_0ba4,0,0);
    if (g_beamSub == 0) {
      if (DAT_1008_23d4 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_23d4,uVar4,uVar1,uVar2);
        DAT_1008_23d4 = 0;
      }
      if (DAT_1008_2d64 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_2d64);
        DAT_1008_2d64 = 0;
      }
      if (DAT_1008_23d2 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_23d2);
        DAT_1008_23d2 = 0;
      }
      if (DAT_1008_23d8 != 0) {
        DELETEOBJECT(0x10c8,DAT_1008_23d8);
        DAT_1008_23d8 = 0;
      }
      DELETEDC(0x10c8,local_6);
    }
    else {
      if (((DAT_1008_23d8 == 0) &&
          (DAT_1008_23d8 = CREATECOMPATIBLEBITMAP(0x10c8,(g_scrH << 2) / 5,0x28),
          DAT_1008_23d8 == 0)) ||
         ((DAT_1008_23d2 == 0 &&
          (DAT_1008_23d2 = CREATECOMPATIBLEBITMAP(0x10c8,(g_scrH << 2) / 5,0x28),
          DAT_1008_23d2 == 0)))) {
        uVar4 = param_1;
        RELEASEDC(0x10c8,local_4);
        DESTROYWINDOW(0x10c8,param_1,uVar4);
        return 0;
      }
      if (DAT_1008_2d64 == 0) {
        DAT_1008_2d64 = CREATESOLIDBRUSH(0x10c8,0xffff);
      }
      if (DAT_1008_23d4 == 0) {
        DAT_1008_23d4 = CREATESOLIDBRUSH(0x10c8,0x8080);
      }
      uVar3 = CREATECOMPATIBLEDC(0x10c8,local_4);
      SELECTOBJECT(0x10c8,DAT_1008_23d2);
      BITBLT(0x10c8,0x20,0xcc,0x28,0,local_4,g_beamSub,0x28,0,0);
      local_e = 0;
      local_c = 0;
      local_a = 0x28;
      local_8 = g_beamSub;
      SELECTOBJECT(0x10c8,DAT_1008_23d8);
      FILLRECT(0x10c8,DAT_1008_2d64,&local_e,unaff_SS);
      uVar5 = uVar3;
      BITBLT(0x10c8,0xc6,0x88,0,0,local_6,g_beamSub,0x28,0,0);
      uVar2 = local_6;
      FILLRECT(0x10c8,DAT_1008_23d4,&local_e,unaff_SS);
      uVar1 = uVar3;
      BITBLT(0x10c8,0x86,0xee,0,0,local_6,g_beamSub,0x28,0,0);
      uVar4 = local_4;
      BITBLT(0x10c8,0x20,0xcc,0,0,uVar3,g_beamSub,0x28,0x28,0);
      DELETEDC(0x10c8,uVar3,uVar4,uVar1,uVar2,uVar5);
      DELETEDC(0x10c8,local_6);
    }
    RELEASEDC(0x10c8,local_4);
  }
  return 1;
}


// ==== FATALEXIT @ 10c8:0000 ====

/* WARNING: Control flow encountered bad instruction data */

void FATALEXIT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETVERSION @ 10c8:0004 ====

/* WARNING: Control flow encountered bad instruction data */

void GETVERSION(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOCALALLOC @ 10c8:0008 ====

/* WARNING: Control flow encountered bad instruction data */

void LOCALALLOC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOCALREALLOC @ 10c8:000c ====

/* WARNING: Control flow encountered bad instruction data */

void LOCALREALLOC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOCALFREE @ 10c8:0010 ====

/* WARNING: Control flow encountered bad instruction data */

void LOCALFREE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOCALSIZE @ 10c8:0014 ====

/* WARNING: Control flow encountered bad instruction data */

void LOCALSIZE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GLOBALALLOC @ 10c8:0018 ====

/* WARNING: Control flow encountered bad instruction data */

void GLOBALALLOC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GLOBALREALLOC @ 10c8:001c ====

/* WARNING: Control flow encountered bad instruction data */

void GLOBALREALLOC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GLOBALFREE @ 10c8:0020 ====

/* WARNING: Control flow encountered bad instruction data */

void GLOBALFREE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GLOBALLOCK @ 10c8:0024 ====

/* WARNING: Control flow encountered bad instruction data */

void GLOBALLOCK(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GLOBALUNLOCK @ 10c8:0028 ====

/* WARNING: Control flow encountered bad instruction data */

void GLOBALUNLOCK(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GLOBALSIZE @ 10c8:002c ====

/* WARNING: Control flow encountered bad instruction data */

void GLOBALSIZE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOCKSEGMENT @ 10c8:0030 ====

/* WARNING: Control flow encountered bad instruction data */

void LOCKSEGMENT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== UNLOCKSEGMENT @ 10c8:0034 ====

/* WARNING: Control flow encountered bad instruction data */

void UNLOCKSEGMENT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== WAITEVENT @ 10c8:0038 ====

/* WARNING: Control flow encountered bad instruction data */

void WAITEVENT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETMODULEFILENAME @ 10c8:003c ====

/* WARNING: Control flow encountered bad instruction data */

void GETMODULEFILENAME(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== MAKEPROCINSTANCE @ 10c8:0040 ====

/* WARNING: Control flow encountered bad instruction data */

void MAKEPROCINSTANCE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== FREEPROCINSTANCE @ 10c8:0044 ====

/* WARNING: Control flow encountered bad instruction data */

void FREEPROCINSTANCE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== FINDRESOURCE @ 10c8:0048 ====

/* WARNING: Control flow encountered bad instruction data */

void FINDRESOURCE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOADRESOURCE @ 10c8:004c ====

/* WARNING: Control flow encountered bad instruction data */

void LOADRESOURCE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOCKRESOURCE @ 10c8:0050 ====

/* WARNING: Control flow encountered bad instruction data */

void LOCKRESOURCE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== FREERESOURCE @ 10c8:0054 ====

/* WARNING: Control flow encountered bad instruction data */

void FREERESOURCE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== INITTASK @ 10c8:0058 ====

/* WARNING: Control flow encountered bad instruction data */

void INITTASK(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DOS3CALL @ 10c8:005c ====

/* WARNING: Control flow encountered bad instruction data */

void DOS3CALL(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETPRIVATEPROFILEINT @ 10c8:0060 ====

/* WARNING: Control flow encountered bad instruction data */

void GETPRIVATEPROFILEINT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== WRITEPRIVATEPROFILESTRING @ 10c8:0064 ====

/* WARNING: Control flow encountered bad instruction data */

void WRITEPRIVATEPROFILESTRING(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETDOSENVIRONMENT @ 10c8:0068 ====

/* WARNING: Control flow encountered bad instruction data */

void GETDOSENVIRONMENT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== FATALAPPEXIT @ 10c8:006c ====

/* WARNING: Control flow encountered bad instruction data */

void FATALAPPEXIT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== __WINFLAGS @ 10c8:0070 ====

/* WARNING: Control flow encountered bad instruction data */

void __WINFLAGS(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== BITBLT @ 10c8:0074 ====

/* WARNING: Control flow encountered bad instruction data */

void BITBLT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SELECTOBJECT @ 10c8:0078 ====

/* WARNING: Control flow encountered bad instruction data */

void SELECTOBJECT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CREATECOMPATIBLEBITMAP @ 10c8:007c ====

/* WARNING: Control flow encountered bad instruction data */

void CREATECOMPATIBLEBITMAP(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CREATECOMPATIBLEDC @ 10c8:0080 ====

/* WARNING: Control flow encountered bad instruction data */

void CREATECOMPATIBLEDC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CREATESOLIDBRUSH @ 10c8:0084 ====

/* WARNING: Control flow encountered bad instruction data */

void CREATESOLIDBRUSH(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DELETEDC @ 10c8:0088 ====

/* WARNING: Control flow encountered bad instruction data */

void DELETEDC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DELETEOBJECT @ 10c8:008c ====

/* WARNING: Control flow encountered bad instruction data */

void DELETEOBJECT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETDEVICECAPS @ 10c8:0090 ====

/* WARNING: Control flow encountered bad instruction data */

void GETDEVICECAPS(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CREATEPALETTE @ 10c8:0094 ====

/* WARNING: Control flow encountered bad instruction data */

void CREATEPALETTE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETPALETTEENTRIES @ 10c8:0098 ====

/* WARNING: Control flow encountered bad instruction data */

void GETPALETTEENTRIES(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SETPALETTEENTRIES @ 10c8:009c ====

/* WARNING: Control flow encountered bad instruction data */

void SETPALETTEENTRIES(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETNEARESTPALETTEINDEX @ 10c8:00a0 ====

/* WARNING: Control flow encountered bad instruction data */

void GETNEARESTPALETTEINDEX(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETSYSTEMPALETTEENTRIES @ 10c8:00a4 ====

/* WARNING: Control flow encountered bad instruction data */

void GETSYSTEMPALETTEENTRIES(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CREATEDIBITMAP @ 10c8:00a8 ====

/* WARNING: Control flow encountered bad instruction data */

void CREATEDIBITMAP(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== MESSAGEBOX @ 10c8:00ac ====

/* WARNING: Control flow encountered bad instruction data */

void MESSAGEBOX(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== INITAPP @ 10c8:00b0 ====

/* WARNING: Control flow encountered bad instruction data */

void INITAPP(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== POSTQUITMESSAGE @ 10c8:00b4 ====

/* WARNING: Control flow encountered bad instruction data */

void POSTQUITMESSAGE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SETTIMER @ 10c8:00b8 ====

/* WARNING: Control flow encountered bad instruction data */

void SETTIMER(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== KILLTIMER @ 10c8:00bc ====

/* WARNING: Control flow encountered bad instruction data */

void KILLTIMER(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETTICKCOUNT @ 10c8:00c0 ====

/* WARNING: Control flow encountered bad instruction data */

void GETTICKCOUNT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETCURSORPOS @ 10c8:00c4 ====

/* WARNING: Control flow encountered bad instruction data */

void GETCURSORPOS(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SETCAPTURE @ 10c8:00c8 ====

/* WARNING: Control flow encountered bad instruction data */

void SETCAPTURE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== RELEASECAPTURE @ 10c8:00cc ====

/* WARNING: Control flow encountered bad instruction data */

void RELEASECAPTURE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== WINDOWFROMPOINT @ 10c8:00d0 ====

/* WARNING: Control flow encountered bad instruction data */

void WINDOWFROMPOINT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETWINDOWRECT @ 10c8:00d4 ====

/* WARNING: Control flow encountered bad instruction data */

void GETWINDOWRECT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETWINDOWTEXT @ 10c8:00d8 ====

/* WARNING: Control flow encountered bad instruction data */

void GETWINDOWTEXT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SHOWWINDOW @ 10c8:00dc ====

/* WARNING: Control flow encountered bad instruction data */

void SHOWWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== ISWINDOW @ 10c8:00e0 ====

/* WARNING: Control flow encountered bad instruction data */

void ISWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== FINDWINDOW @ 10c8:00e4 ====

/* WARNING: Control flow encountered bad instruction data */

void FINDWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DESTROYWINDOW @ 10c8:00e8 ====

/* WARNING: Control flow encountered bad instruction data */

void DESTROYWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== MOVEWINDOW @ 10c8:00ec ====

/* WARNING: Control flow encountered bad instruction data */

void MOVEWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== REGISTERCLASS @ 10c8:00f0 ====

/* WARNING: Control flow encountered bad instruction data */

void REGISTERCLASS(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETACTIVEWINDOW @ 10c8:00f4 ====

/* WARNING: Control flow encountered bad instruction data */

void GETACTIVEWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETDC @ 10c8:00f8 ====

/* WARNING: Control flow encountered bad instruction data */

void GETDC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== RELEASEDC @ 10c8:00fc ====

/* WARNING: Control flow encountered bad instruction data */

void RELEASEDC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== FILLRECT @ 10c8:0100 ====

/* WARNING: Control flow encountered bad instruction data */

void FILLRECT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DIALOGBOX @ 10c8:0104 ====

/* WARNING: Control flow encountered bad instruction data */

void DIALOGBOX(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== ENDDIALOG @ 10c8:0108 ====

/* WARNING: Control flow encountered bad instruction data */

void ENDDIALOG(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CHECKRADIOBUTTON @ 10c8:010c ====

/* WARNING: Control flow encountered bad instruction data */

void CHECKRADIOBUTTON(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== ISDLGBUTTONCHECKED @ 10c8:0110 ====

/* WARNING: Control flow encountered bad instruction data */

void ISDLGBUTTONCHECKED(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SENDDLGITEMMESSAGE @ 10c8:0114 ====

/* WARNING: Control flow encountered bad instruction data */

void SENDDLGITEMMESSAGE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETKEYSTATE @ 10c8:0118 ====

/* WARNING: Control flow encountered bad instruction data */

void GETKEYSTATE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DEFWINDOWPROC @ 10c8:011c ====

/* WARNING: Control flow encountered bad instruction data */

void DEFWINDOWPROC(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETMESSAGE @ 10c8:0120 ====

/* WARNING: Control flow encountered bad instruction data */

void GETMESSAGE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SENDMESSAGE @ 10c8:0124 ====

/* WARNING: Control flow encountered bad instruction data */

void SENDMESSAGE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== TRANSLATEMESSAGE @ 10c8:0128 ====

/* WARNING: Control flow encountered bad instruction data */

void TRANSLATEMESSAGE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DISPATCHMESSAGE @ 10c8:012c ====

/* WARNING: Control flow encountered bad instruction data */

void DISPATCHMESSAGE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== UPDATEWINDOW @ 10c8:0130 ====

/* WARNING: Control flow encountered bad instruction data */

void UPDATEWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== VALIDATERECT @ 10c8:0134 ====

/* WARNING: Control flow encountered bad instruction data */

void VALIDATERECT(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETWINDOWWORD @ 10c8:0138 ====

/* WARNING: Control flow encountered bad instruction data */

void GETWINDOWWORD(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SETWINDOWWORD @ 10c8:013c ====

/* WARNING: Control flow encountered bad instruction data */

void SETWINDOWWORD(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETWINDOWLONG @ 10c8:0140 ====

/* WARNING: Control flow encountered bad instruction data */

void GETWINDOWLONG(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== DESTROYMENU @ 10c8:0144 ====

/* WARNING: Control flow encountered bad instruction data */

void DESTROYMENU(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== WINHELP @ 10c8:0148 ====

/* WARNING: Control flow encountered bad instruction data */

void WINHELP(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOADCURSOR @ 10c8:014c ====

/* WARNING: Control flow encountered bad instruction data */

void LOADCURSOR(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LOADICON @ 10c8:0150 ====

/* WARNING: Control flow encountered bad instruction data */

void LOADICON(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETSYSTEMMETRICS @ 10c8:0154 ====

/* WARNING: Control flow encountered bad instruction data */

void GETSYSTEMMETRICS(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SETWINDOWPOS @ 10c8:0158 ====

/* WARNING: Control flow encountered bad instruction data */

void SETWINDOWPOS(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETWINDOW @ 10c8:015c ====

/* WARNING: Control flow encountered bad instruction data */

void GETWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SELECTPALETTE @ 10c8:0160 ====

/* WARNING: Control flow encountered bad instruction data */

void SELECTPALETTE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== REALIZEPALETTE @ 10c8:0164 ====

/* WARNING: Control flow encountered bad instruction data */

void REALIZEPALETTE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== GETDESKTOPWINDOW @ 10c8:0168 ====

/* WARNING: Control flow encountered bad instruction data */

void GETDESKTOPWINDOW(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== APPENDMENU @ 10c8:016c ====

/* WARNING: Control flow encountered bad instruction data */

void APPENDMENU(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CREATEPOPUPMENU @ 10c8:0170 ====

/* WARNING: Control flow encountered bad instruction data */

void CREATEPOPUPMENU(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== TRACKPOPUPMENU @ 10c8:0174 ====

/* WARNING: Control flow encountered bad instruction data */

void TRACKPOPUPMENU(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== _WSPRINTF @ 10c8:0178 ====

/* WARNING: Control flow encountered bad instruction data */

void _WSPRINTF(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== LSTRCMP @ 10c8:017c ====

/* WARNING: Control flow encountered bad instruction data */

void LSTRCMP(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== CREATEWINDOWEX @ 10c8:0180 ====

/* WARNING: Control flow encountered bad instruction data */

void CREATEWINDOWEX(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== SNDPLAYSOUND @ 10c8:0184 ====

/* WARNING: Control flow encountered bad instruction data */

void SNDPLAYSOUND(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== Ordinal_9 @ 10c8:0188 ====

/* WARNING: Control flow encountered bad instruction data */

void Ordinal_9(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== Ordinal_11 @ 10c8:018c ====

/* WARNING: Control flow encountered bad instruction data */

void Ordinal_11(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


// ==== Ordinal_12 @ 10c8:0190 ====

/* WARNING: Control flow encountered bad instruction data */

void Ordinal_12(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}


