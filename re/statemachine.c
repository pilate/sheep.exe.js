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
