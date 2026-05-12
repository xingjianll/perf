   0: 0531040d00c01200     device_load      0, i32, x, r6, u2_u3, 0, signed
   8: 0521340d00c43200     device_load      0, i32, xy, r4_r5, u2_u3, 3, signed, lsl 1
  10: 0501340d00c8f200     device_load      0, i32, xyzw, r0_r1_r2_r3, u2_u3, 3, signed, lsl 2
  18: 3800                 wait             0
  1a: bead0a242400         convert          u32_to_f, r11.cache, r1, rte
  20: bea50a642400         convert          u32_to_f, r9.cache, r3, rte
  26: 0a295682             rcp              r10, r11
  2a: be9d0a442400         convert          u32_to_f, r7.cache, r2, rte
  30: 8e193fc02c000000     iadd             r6.cache, 63, r6.discard
  38: 0a215282             rcp              r8, r9
  3c: aeb900c02c060000     bfeil            r14.cache, 0, r6.discard, 6
  44: 0a194e82             rcp              r6, r7
  48: beb50ac42500         convert          u32_to_f, r13.cache, r14, rte
  4e: 2e9100802c020000     bfeil            r4, 0, r4.discard, 2
  56: 0a315a82             rcp              r12, r13
  5a: c570803d00803000     uniform_store    2, i16, xy, 0, r14l_r14h, 8
  62: c568a03d00803000     uniform_store    2, i16, xy, 0, r13l_r13h, 10
  6a: c560c03d00803000     uniform_store    2, i16, xy, 0, r12l_r12h, 12
  72: c528e03d00803000     uniform_store    2, i16, xy, 0, r5l_r5h, 14
  7a: c500003d01803000     uniform_store    2, i16, xy, 0, r0l_r0h, 16
  82: c508203d01803000     uniform_store    2, i16, xy, 0, r1l_r1h, 18
  8a: c510403d01803000     uniform_store    2, i16, xy, 0, r2l_r2h, 20
  92: c518603d01803000     uniform_store    2, i16, xy, 0, r3l_r3h, 22
  9a: c520803d01803000     uniform_store    2, i16, xy, 0, r4l_r4h, 24
  a2: c558a03d01803000     uniform_store    2, i16, xy, 0, r11l_r11h, 26
  aa: c550c03d01803000     uniform_store    2, i16, xy, 0, r10l_r10h, 28
  b2: c548e03d01803000     uniform_store    2, i16, xy, 0, r9l_r9h, 30
  ba: c540003d02803000     uniform_store    2, i16, xy, 0, r8l_r8h, 32
  c2: c538203d02803000     uniform_store    2, i16, xy, 0, r7l_r7h, 34
  ca: c530403d02803000     uniform_store    2, i16, xy, 0, r6l_r6h, 36
  d2: 8800                 stop             
  d4: 0800                 trap             
  d6: 0800                 trap             
  d8: 0800                 trap             
  da: 0800                 trap             
  dc: 0800                 trap             
  de: 0800                 trap             
  e0: 0800                 trap             
  e2: 0800                 trap             
  e4: 0800                 trap             
  e6: 0800                 trap             
  e8: 0800                 trap             
  ea: 0800                 trap             
  ec: 0800                 trap             
  ee: 0800                 trap             
  f0: 0800                 trap             
  f2: 0800                 trap             
  f4: 0800                 trap             
  f6: 0800                 trap             
  f8: 0800                 trap             
  fa: 0800                 trap             
  fc: 0800                 trap             
  fe: 0800                 trap             

 140: f20d0000             get_sr           r3.cache, sr0 (threadgroup_position_in_grid.x)
 144: be890a642800         convert          u32_to_f, r2.cache, r3.cache, rte
 14a: be8508402800         convert          f_to_u32, r1.cache, r2.cache, rtz
 150: 8e05c62a2c000000     isub             r1.cache, r3.discard, r1.discard
 158: 8e0d821a00000000     isub             r3.cache, r1.cache, 1
 160: 8285848218c6200c0001 fcmpsel          eq, r1.cache, r2.cache, u36, r3.discard, r1.discard
 16a: 9a8d8c412800         fmul32           r3.cache, u6, r2.cache
 170: be950b242c00         convert          s32_to_f, r5.cache, r1.discard, rte
 176: be8508602800         convert          f_to_u32, r1.cache, r3.cache, rtz
 17c: ba898a6928c40200     fmadd32          r2.cache, u5.neg, r3.cache, r2.discard
 184: 9a998ca12c00         fmul32           r6.cache, u6, r5.discard
 18a: be950a242800         convert          u32_to_f, r5.cache, r1.cache, rte
 190: ba898c412ccc0200     fmadd32          r2.cache, u6, r2.discard, r6.discard
 198: aa8dc6a2ac00         fadd32           r3.cache, r3.discard, r5.discard.neg
 19e: aa89c4721001         fadd32           r2.cache, r2.discard, u35h
 1a4: aa89c4622c00         fadd32           r2.cache, r2.discard, r3.discard
 1aa: be8909402c00         convert          f_to_s32, r2.cache, r2.discard, rtz
 1b0: 8e07c2426c000000     iadd             r1_r2.cache, r1.discard, r2.discard.sx
 1b8: fe1988098000         mov              r6.cache, u4
 1be: f20d0200             get_sr           r3.cache, sr2 (threadgroup_position_in_grid.z)
 1c2: 9e2382c228000000     imadd            r8_r9.cache, r1.cache, r6.cache, 0
 1ca: f2150100             get_sr           r5.cache, sr1 (threadgroup_position_in_grid.y)
 1ce: 9e1b82c22c000000     imadd            r6_r7.cache, r1.cache, r6.discard, 0
 1d6: 0e0db4612c000000     iadd             r3, u26, r3.discard
 1de: 0e1500a02c001000     iadd             r5, 0, r5.discard, lsl 2
 1e6: 9e25848218d20200     imadd            r9.cache, r2.cache, u4, r9.discard
 1ee: f2290000             get_sr           r10.cache, sr0 (threadgroup_position_in_grid.x)
 1f2: 922094022d010130     icmpsel          ult, r8l.cache, r10.cache, r8.discard, 1, 0
 1fa: 9e09c48218ce0200     imadd            r2.cache, r2.discard, u4, r7.discard
 202: 921894c22c010130     icmpsel          ult, r6l.cache, r10.cache, r6.discard, 1, 0
 20a: 9210002029010130     icmpsel          ult, r4l.cache, 0, r9.cache, 1, 0
 212: 9202004028010130     icmpsel          ult, r0h.cache, 0, r2.cache, 1, 0
 21a: 921000202dd0808c     icmpsel          seq, r4l.cache, 0, r9.discard, r8l.discard, r4l.discard
 222: 920200402ccc108c     icmpsel          seq, r0h.cache, 0, r2.discard, r6l.discard, r0h.discard
 22a: 9208c80000001190     icmpsel          seq, r2l.cache, r4l.discard, 0, 0, 1
 232: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 23a: 8e09824a0c000000     isub             r2.cache, r1.cache, r2l.discard
 242: 8e05c21a0c000000     isub             r1.cache, r1.discard, r0h.discard
 24a: 922594821800212c     icmpsel          ult, r9.cache, r10.cache, u4, 0, r1.discard
 252: 9e09c48218000000     imadd            r2.cache, r2.discard, u4, 0
 25a: 8e19012029000000     iadd             r6.cache, 1, r9.cache
 262: f2023000             get_sr           r0h.cache, sr48 (thread_position_in_threadgroup.x)
 266: 2e85001048050000     bfeil            r1, 0, r0h.cache, 5, mask 0x1
 26e: 8e1d944a2c000000     isub             r7.cache, r10.cache, r2.discard
 276: 2e890010c8020000     bfeil            r2, 0, r0h.cache, 2, mask 0x7
 27e: 921dd48218d4e02c     icmpsel          ult, r7.cache, r10.discard, u4, r10.discard, r7.discard
 286: 9e19cc821b000000     imadd            r6.cache, r6.discard, u28, 0
 28e: 0e2d00e02c001000     iadd             r11, 0, r7.discard, lsl 2
 296: 9e69b82125000000     imadd            r26.cache, u28, r9, 0
 29e: 926daac12caac12c     icmpsel          ult, r27.cache, u21, r6.discard, u21, r6.discard
 2a6: 2e99001008060000     bfeil            r6, 0, r0h.cache, 6
 2ae: 7e1dc1308000         and              r7, r0h.discard, 3
 2b4: e2000000             mov_imm          r0l.cache, 0
 2b8: 522874622700         if_icmp          r0l, ult, r26, r27, 1
 2be: 20c07c110000         jmp_exec_none    0x143A
 2c4: bea90a642800         convert          u32_to_f, r10.cache, r3.cache, rte
 2ca: bea108402900         convert          f_to_u32, r8.cache, r10.cache, rtz
 2d0: 8e21860a2d000000     isub             r8.cache, r3.cache, r8.discard
 2d8: 8e31901a00000000     isub             r12.cache, r8.cache, 1
 2e0: 82a1948218d8000d0001 fcmpsel          eq, r8.cache, r10.cache, u36, r12.discard, r8.discard
 2ea: 9ab19c412900         fmul32           r12.cache, u14, r10.cache
 2f0: beb50b042d00         convert          s32_to_f, r13.cache, r8.discard, rte
 2f6: bea108802900         convert          f_to_u32, r8.cache, r12.cache, rtz
 2fc: baa99a8929d40200     fmadd32          r10.cache, u13.neg, r12.cache, r10.discard
 304: 9ab99ca12d00         fmul32           r14.cache, u14, r13.discard
 30a: beb50a042900         convert          u32_to_f, r13.cache, r8.cache, rte
 310: baa99c412ddc0200     fmadd32          r10.cache, u14, r10.discard, r14.discard
 318: aab1d8a2ad00         fadd32           r12.cache, r12.discard, r13.discard.neg
 31e: aaa9d4721001         fadd32           r10.cache, r10.discard, u35h
 324: aaa9d4822d00         fadd32           r10.cache, r10.discard, r12.discard
 32a: bea909402d00         convert          f_to_s32, r10.cache, r10.discard, rtz
 330: 8e33d0426d000000     iadd             r12_r13.cache, r8.discard, r10.discard.sx
 338: fe2192098000         mov              r8.cache, u9
 33e: 9e47980229000000     imadd            r17_r18.cache, r12.cache, r8.cache, 0
 346: 9e3b98022d000000     imadd            r14_r15.cache, r12.cache, r8.discard, 0
 34e: 9e219a2219e40200     imadd            r8.cache, r13.cache, u9, r18.discard
 356: 921e86222e010130     icmpsel          ult, r7h.cache, r3.cache, r17.discard, 1, 0
 35e: 9e29da2219de0200     imadd            r10.cache, r13.discard, u9, r15.discard
 366: 923486c22d010130     icmpsel          ult, r13l.cache, r3.cache, r14.discard, 1, 0
 36e: 9202000029010130     icmpsel          ult, r0h.cache, 0, r8.cache, 1, 0
 376: 9210004029010130     icmpsel          ult, r4l.cache, 0, r10.cache, 1, 0
 37e: 921000402dda808c     icmpsel          seq, r4l.cache, 0, r10.discard, r13l.discard, r4l.discard
 386: 920200002dcf108c     icmpsel          seq, r0h.cache, 0, r8.discard, r7h.discard, r0h.discard
 38e: 9210c80000001190     icmpsel          seq, r4l.cache, r4l.discard, 0, 0, 1
 396: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 39e: 8e21988a0c000000     isub             r8.cache, r12.cache, r4l.discard
 3a6: 8e29d81a0c000000     isub             r10.cache, r12.discard, r0h.discard
 3ae: 924d86221900412d     icmpsel          ult, r19.cache, r3.cache, u9, 0, r10.discard
 3b6: 9e21d02219000000     imadd            r8.cache, r8.discard, u9, 0
 3be: bea90a642a00         convert          u32_to_f, r10.cache, r19.cache, rte
 3c4: 8e21860a2d000000     isub             r8.cache, r3.cache, r8.discard
 3cc: 924946221946002d     icmpsel          ult, r18.cache, r3, u9, r3, r8.discard
 3d4: 9abda0412900         fmul32           r15.cache, u16, r10.cache
 3da: beb108402900         convert          f_to_u32, r12.cache, r10.cache, rtz
 3e0: baa19ee929940200     fmadd32          r8.cache, u15.neg, r15.cache, r10.cache
 3e8: beb908e02900         convert          f_to_u32, r14.cache, r15.cache, rtz
 3ee: 8e31668a2d000000     isub             r12.cache, r19, r12.discard
 3f6: bed50a442a00         convert          u32_to_f, r21.cache, r18.cache, rte
 3fc: 8e35981a00000000     isub             r13.cache, r12.cache, 1
 404: bec10ac42500         convert          u32_to_f, r16.cache, r14, rte
 40a: 82b5d48218da800d0001 fcmpsel          eq, r13.cache, r10.discard, u36, r13.discard, r12.discard
 414: bea908a02a00         convert          f_to_u32, r10.cache, r21.cache, rtz
 41a: 9ab1a4a12a00         fmul32           r12.cache, u18, r21.cache
 420: beb50ba42d00         convert          s32_to_f, r13.cache, r13.discard, rte
 426: aabdde02ae00         fadd32           r15.cache, r15.discard, r16.discard.neg
 42c: 8e29644a2d000000     isub             r10.cache, r18, r10.discard
 434: 9ac1a0a12d00         fmul32           r16.cache, u16, r13.discard
 43a: 8e35941a00000000     isub             r13.cache, r10.cache, 1
 442: baa1a0012de00200     fmadd32          r8.cache, u16, r8.discard, r16.discard
 44a: 82b5aa8218da400d0001 fcmpsel          eq, r13.cache, r21.cache, u36, r13.discard, r10.discard
 454: aaa1d0721001         fadd32           r8.cache, r8.discard, u35h
 45a: bea908802900         convert          f_to_u32, r10.cache, r12.cache, rtz
 460: aaa1d0e22d00         fadd32           r8.cache, r8.discard, r15.discard
 466: bec50ba42d00         convert          s32_to_f, r17.cache, r13.discard, rte
 46c: fe3596098000         mov              r13.cache, u11
 472: bebd09002d00         convert          f_to_s32, r15.cache, r8.discard, rtz
 478: baa1a28929ea0200     fmadd32          r8.cache, u17.neg, r12.cache, r21.discard
 480: bec10a442900         convert          u32_to_f, r16.cache, r10.cache, rte
 486: 9ac5a4212e00         fmul32           r17.cache, u18, r17.discard
 48c: 8e3bdce26d000000     iadd             r14_r15.cache, r14.discard, r15.discard.sx
 494: baa1a4012de20200     fmadd32          r8.cache, u18, r8.discard, r17.discard
 49c: aab1d802ae00         fadd32           r12.cache, r12.discard, r16.discard.neg
 4a2: aaa1d0721001         fadd32           r8.cache, r8.discard, u35h
 4a8: 9e439ca22d000000     imadd            r16_r17.cache, r14.cache, r13.discard, 0
 4b0: aaa1d0822d00         fadd32           r8.cache, r8.discard, r12.discard
 4b6: beb109002d00         convert          f_to_s32, r12.cache, r8.discard, rtz
 4bc: 9e21de6219e20200     imadd            r8.cache, r15.discard, u11, r17.discard
 4c4: 8e33d4826d000000     iadd             r12_r13.cache, r10.discard, r12.discard.sx
 4cc: fe2994098000         mov              r10.cache, u10
 4d2: 9210a6022e010130     icmpsel          ult, r4l.cache, r19.cache, r16.discard, 1, 0
 4da: 9202000029010130     icmpsel          ult, r0h.cache, 0, r8.cache, 1, 0
 4e2: 9e3f98422d000000     imadd            r15_r16.cache, r12.cache, r10.discard, 0
 4ea: 920200002dc8108c     icmpsel          seq, r0h.cache, 0, r8.discard, r4l.discard, r0h.discard
 4f2: 8e21006025002000     iadd             r8.cache, 0, r11, lsl 4
 4fa: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 502: 9e35da4219e00200     imadd            r13.cache, r13.discard, u10, r16.discard
 50a: 9210a4e22d010130     icmpsel          ult, r4l.cache, r18.cache, r15.discard, 1, 0
 512: 8e29dc1a0c000000     isub             r10.cache, r14.discard, r0h.discard
 51a: 920200a029010130     icmpsel          ult, r0h.cache, 0, r13.cache, 1, 0
 522: 920200a02dc8108c     icmpsel          seq, r0h.cache, 0, r13.discard, r4l.discard, r0h.discard
 52a: 9235e6621900412d     icmpsel          ult, r13.cache, r19.discard, u11, 0, r10.discard
 532: 9202c10000001190     icmpsel          seq, r0h.cache, r0h.discard, 0, 0, 1
 53a: 9e21ac012db40200     imadd            r8.cache, u22, r8.discard, r26.cache
 542: 8e29d81a0c000000     isub             r10.cache, r12.discard, r0h.discard
 54a: 9229e4421900412d     icmpsel          ult, r10.cache, r18.discard, u10, 0, r10.discard
 552: aea100002d020000     bfeil            r8.cache, 0, r8.discard, 2
 55a: 9e31da0219d40200     imadd            r12.cache, r13.discard, u8, r10.discard
 562: 9e298e6124740200     imadd            r10.cache, u7, r3, r26
 56a: 9e31d88219d00210     imadd            r44.cache, r12.discard, u12, r8.discard
 572: 8e2100a024002000     iadd             r8.cache, 0, r5, lsl 4
 57a: 9e21ae012dd40200     imadd            r8.cache, u23, r8.discard, r10.discard
 582: 8e1100e008101000     iadd             r36.cache, 0, r7l.cache, lsl 2
 58a: 8e190040a8100000     iadd             r38.cache, 0, r2.cache, lsl 1
 592: 2eb500002d020010     bfeil            r45, 0, r8.discard, 2
 59a: 8e090020a8000000     iadd             r2.cache, 0, r1.cache, lsl 1
 5a2: 8e0500c0a8000000     iadd             r1.cache, 0, r6.cache, lsl 1
 5aa: 8e1d004028102000     iadd             r39.cache, 0, r2.cache, lsl 4
 5b2: 8e15002028102000     iadd             r37.cache, 0, r1.cache, lsl 4
 5ba: 0e024e8004050000     iadd             r0h, r39l, r36l
 5c2: 0e104ca004050000     iadd             r4l, r38l, r37l
 5ca: f2043000             get_sr           r1l.cache, sr48 (thread_position_in_threadgroup.x)
 5ce: 625100000000         mov_imm          r20, 0, 0b0
 5d4: fe3982708010         and              r46.cache, r1l.cache, 7
 5da: aebd002008030010     bfeil            r47.cache, 0, r1l.cache, 3
 5e2: 624500000000         mov_imm          r17, 0, 0b0
 5e8: 626500000000         mov_imm          r25, 0, 0b0
 5ee: 626100000000         mov_imm          r24, 0, 0b0
 5f4: 6285000000000010     mov_imm          r33, 0, 0b0
 5fc: 627d00000000         mov_imm          r31, 0, 0b0
 602: 628d000000000010     mov_imm          r35, 0, 0b0
 60a: 6289000000000010     mov_imm          r34, 0, 0b0
 612: 627500000000         mov_imm          r29, 0, 0b0
 618: 627100000000         mov_imm          r28, 0, 0b0
 61e: 6281000000000010     mov_imm          r32, 0, 0b0
 626: 627900000000         mov_imm          r30, 0, 0b0
 62c: 62a5000000000010     mov_imm          r41, 0, 0b0
 634: 62a1000000000010     mov_imm          r40, 0, 0b0
 63c: 62ad000000000010     mov_imm          r43, 0, 0b0
 644: 62a9000000000010     mov_imm          r42, 0, 0b0
 64c: 625d00000000         mov_imm          r23, 0, 0b0
 652: 625900000000         mov_imm          r22, 0, 0b0
 658: 625500000000         mov_imm          r21, 0, 0b0
 65e: 624900000000         mov_imm          r18, 0, 0b0
 664: 623500000000         mov_imm          r13, 0, 0b0
 66a: 623100000000         mov_imm          r12, 0, 0b0
 670: 622900000000         mov_imm          r10, 0, 0b0
 676: 621d00000000         mov_imm          r7, 0, 0b0
 67c: 624d00000000         mov_imm          r19, 0, 0b0
 682: 624100000000         mov_imm          r16, 0, 0b0
 688: 623d00000000         mov_imm          r15, 0, 0b0
 68e: 623900000000         mov_imm          r14, 0, 0b0
 694: 622100000000         mov_imm          r8, 0, 0b0
 69a: 621900000000         mov_imm          r6, 0, 0b0
 6a0: 620900000000         mov_imm          r2, 0, 0b0
 6a6: 620500000000         mov_imm          r1, 0, 0b0
 6ac: 421000000000         push_exec        r0l, 2
 6b2: 8e3530e029210000     iadd             r77.cache, 48, r47.cache
 6ba: 9e49aca125000012     imadd            r50.cache, u22, r77, 0
 6c2: 8e4920e029210000     iadd             r82.cache, 32, r47.cache
 6ca: 9e45ace125000011     imadd            r49.cache, u22, r47, 0
 6d2: 9e41ac4126000012     imadd            r48.cache, u22, r82, 0
 6da: aecd00202e020011     bfeil            r51.cache, 0, r49.discard, 2
 6e2: 8e4558c205150000     iadd             r49.cache, r44, r46l
 6ea: aec100002e020011     bfeil            r48.cache, 0, r48.discard, 2
 6f2: 8e55a2622e150000     iadd             r53.cache, r49.cache, r51.discard
 6fa: aec900402e020011     bfeil            r50.cache, 0, r50.discard, 2
 702: 8e51a2022e150000     iadd             r52.cache, r49.cache, r48.discard
 70a: aec100a026060011     bfeil            r48.cache, 0, r53, 6
 712: 8e7562422e150000     iadd             r61.cache, r49, r50.discard
 71a: aedd008026060011     bfeil            r55.cache, 0, r52, 6
 722: 8e496002a6151000     iadd             r50.cache, r48, r48, lsl 3
 72a: aee900a027060011     bfeil            r58.cache, 0, r61, 6
 732: 0e590040ae110000     iadd             r54, 0, r50.discard, lsl 1
 73a: 8e4d6ee2a6151000     iadd             r51.cache, r55, r55, lsl 3
 742: 8e497442a7151000     iadd             r50.cache, r58, r58, lsl 3
 74a: 0e4d0060ae110000     iadd             r51, 0, r51.discard, lsl 1
 752: 0e490040ae110000     iadd             r50, 0, r50.discard, lsl 1
 75a: 8538ca0c36ca3000     device_load      0, i16, xy, r71l_r71h, u29_u30, r54, signed, lsl 2
 762: 85246a4c36ca3000     device_load      1, i16, xy, r68h_r69l, u29_u30, r51, signed, lsl 2
 76a: 85104a4c36ca3000     device_load      1, i16, xy, r66l_r66h, u29_u30, r50, signed, lsl 2
 772: 8e7910e025110000     iadd             r62.cache, 16, r47
 77a: 9e49acc127000011     imadd            r50.cache, u22, r62, 0
 782: fe71bc098010         mov              r60.cache, u30
 788: aec900402e020011     bfeil            r50.cache, 0, r50.discard, 2
 790: fe6dba098010         mov              r59.cache, u29
 796: fe4daa728014         and              r51.cache, r53.cache, 7
 79c: 8e49e2422e150000     iadd             r50.cache, r49.discard, r50.discard
 7a4: 9e43e00201000016     imadd            r48_r49.cache, r48.discard, 144, 0
 7ac: 8e2d00a0ae210000     iadd             r75.cache, 0, r53.discard, lsl 1
 7b4: 8e0d0040aa210000     iadd             r67.cache, 0, r50.cache, lsl 1
 7bc: 7e59a4728014         and              r54, r50.cache, 7
 7c2: 8e61b6022e150000     iadd             r56.cache, r59.cache, r48.discard
 7ca: ae8500402e060021     bfeil            r65.cache, 0, r50.discard, 6
 7d2: 8e5578222e150000     iadd             r53.cache, r60, r49.discard
 7da: 92bab0622b0101300015 icmpsel          ult, r46h.cache, r56.cache, r59.cache, 1, 0
 7e4: 9e4342020100001a     imadd            r48_r49.cache, r65, 144, 0
 7ec: fe4956028219         and              r50.cache, r75, 96
 7f2: 8e65dda02e150000     iadd             r57.cache, r46h.discard, r53.discard
 7fa: 8e49e4600e151000     iadd             r50.cache, r50l.discard, r51l.discard, lsl 2
 802: 8e55b6022e150000     iadd             r53.cache, r59.cache, r48.discard
 80a: aec900402e020011     bfeil            r50.cache, 0, r50.discard, 2
 812: 92baaa62270101300015 icmpsel          ult, r46h.cache, r53.cache, r59, 1, 0
 81c: fe4146028219         and              r48.cache, r67, 96
 822: 0e4b70432e151000     iadd             r50_r51, r56_r57, r50.discard, lsl 2
 82a: 8e41e0c00e151000     iadd             r48.cache, r48l.discard, r54l.discard, lsl 2
 832: 8e4578222e150000     iadd             r49.cache, r60, r49.discard
 83a: aec100002e020011     bfeil            r48.cache, 0, r48.discard, 2
 842: 8e59dd202e150000     iadd             r54.cache, r46h.discard, r49.discard
 84a: 0e436a032e151000     iadd             r48_r49, r53_r54, r48.discard, lsl 2
 852: 0541140560ca1200     device_load      0, i32, x, r72, r50_r51, 1, signed, lsl 2
 85a: 0531104560ca1200     device_load      1, i32, x, r70, r48_r49, 1, signed, lsl 2
 862: 8e2900a0ab210000     iadd             r74.cache, 0, r61.cache, lsl 1
 86a: fe4dfa728014         and              r51.cache, r61.discard, 7
 870: fe4954028219         and              r50.cache, r74, 96
 876: 9e43f40201000016     imadd            r48_r49.cache, r58.discard, 144, 0
 87e: 8e69e4600e151000     iadd             r58.cache, r50l.discard, r51l.discard, lsl 2
 886: 9e4bee0201000016     imadd            r50_r51.cache, r55.discard, 144, 0
 88e: fe5da8728014         and              r55.cache, r52.cache, 7
 894: 8e250080ae210000     iadd             r73.cache, 0, r52.discard, lsl 1
 89c: 8e51b8222e150000     iadd             r52.cache, r60.cache, r49.discard
 8a4: 8e71f8622e150000     iadd             r60.cache, r60.discard, r51.discard
 8ac: 8e45b6422e150000     iadd             r49.cache, r59.cache, r50.discard
 8b4: fe4952028219         and              r50.cache, r73, 96
 8ba: 8e4db6022e150000     iadd             r51.cache, r59.cache, r48.discard
 8c2: 8e41e4e00e151000     iadd             r48.cache, r50l.discard, r55l.discard, lsl 2
 8ca: 92baa2622b0101300015 icmpsel          ult, r46h.cache, r49.cache, r59.cache, 1, 0
 8d4: aedd00002e020011     bfeil            r55.cache, 0, r48.discard, 2
 8dc: 8e49dd802f150000     iadd             r50.cache, r46h.discard, r60.discard
 8e4: aec100402f020011     bfeil            r48.cache, 0, r58.discard, 2
 8ec: 92baa6622f0101300015 icmpsel          ult, r46h.cache, r51.cache, r59.discard, 1, 0
 8f6: 0e7362e32e151000     iadd             r60_r61, r49_r50, r55.discard, lsl 2
 8fe: 8e51dd802e150000     iadd             r52.cache, r46h.discard, r52.discard
 906: 0e6b66032e151000     iadd             r58_r59, r51_r52, r48.discard, lsl 2
 90e: 05e9180570c91200     device_load      0, i32, x, r61, r60_r61, 1, signed, lsl 2
 916: 05d9140570c91200     device_load      0, i32, x, r59, r58_r59, 1, signed, lsl 2
 91e: aee90060e5040012     bfeil            r58.cache, 0, r75, 4, mask 0x7
 926: 8e3904402b210000     iadd             r78.cache, 4, r58.cache
 92e: 8e41b44a00140000     isub             r48.cache, r58.cache, 4
 936: 12bdb44200b4002e5024 icmpsel          ult, r79, r58.cache, 4, r58.cache, r48.discard
 940: aefd0020e5040012     bfeil            r63.cache, 0, r73, 4, mask 0x7
 948: 12c1b44200b4c0296024 icmpsel          ult, r80, r58.cache, 4, r58.cache, r78.cache
 952: 12b17442005c40279024 icmpsel          ult, r76, r58, 4, r78, r58
 95c: 8e41be4a00140000     isub             r48.cache, r63.cache, 4
 964: 8e5d04002b110000     iadd             r55.cache, 4, r56.cache
 96c: 12f1be4200be002e5014 icmpsel          ult, r60, r63.cache, 4, r63.cache, r48.discard
 976: 92ba6e022f0101300015 icmpsel          ult, r46h.cache, r55, r56.discard, 1, 0
 980: 8e4104202a110000     iadd             r48.cache, 4, r49.cache
 988: 0e61dd202f150000     iadd             r56, r46h.discard, r57.discard
 990: 92ba60222e0101300015 icmpsel          ult, r46h.cache, r48, r49.discard, 1, 0
 99a: 8e6504e02b110000     iadd             r57.cache, 4, r63.cache
 9a2: 0e45dd402e150000     iadd             r49, r46h.discard, r50.discard
 9aa: 1281be4200be202b5024 icmpsel          ult, r64, r63.cache, 4, r63.cache, r57.cache
 9b4: 12c97e420072e0275014 icmpsel          ult, r50, r63, 4, r57, r63
 9be: 058c0e446ac21000     device_load      1, i8, x, r81h, r55_r56, r80, signed
 9c6: 0598ee4669c21000     device_load      1, i8, x, r83l, r55_r56, r79, unsigned
 9ce: 05a0ce4469c21000     device_load      1, i8, x, r84l, r55_r56, r78, signed
 9d6: 059c8e4469c21000     device_load      1, i8, x, r83h, r55_r56, r76, signed
 9de: 0578004468c21000     device_load      1, i8, x, r79l, r48_r49, r64, signed
 9e6: 057c800667c21000     device_load      0, i8, x, r79h, r48_r49, r60, unsigned
 9ee: 0588200467c21000     device_load      0, i8, x, r81l, r48_r49, r57, signed
 9f6: 0584400466c21000     device_load      0, i8, x, r80h, r48_r49, r50, signed
 9fe: ae810060e4040022     bfeil            r64.cache, 0, r67, 4, mask 0x7
 a06: aef10040e5040012     bfeil            r60.cache, 0, r74, 4, mask 0x7
 a0e: 8e31040028220000     iadd             r76.cache, 4, r64.cache
 a16: 8e41804a00180000     isub             r48.cache, r64.cache, 4
 a1e: 12b980420080002e9028 icmpsel          ult, r78, r64.cache, 4, r64.cache, r48.discard
 a28: 12dd804200808029a018 icmpsel          ult, r55, r64.cache, 4, r64.cache, r76.cache
 a32: 12e5404200580024a018 icmpsel          ult, r57, r64, 4, r76, r64
 a3c: 8e61b84a00140000     isub             r56.cache, r60.cache, 4
 a44: 8e4104a02a110000     iadd             r48.cache, 4, r53.cache
 a4c: 8e4904602a110000     iadd             r50.cache, 4, r51.cache
 a54: 92c460a22e0101300015 icmpsel          ult, r49l.cache, r48, r53.discard, 1, 0
 a5e: 92ba64622e0101300015 icmpsel          ult, r46h.cache, r50, r51.discard, 1, 0
 a68: 0e45e2c02e150000     iadd             r49, r49l.discard, r54.discard
 a70: 0e4ddd802e150000     iadd             r51, r46h.discard, r52.discard
 a78: 12d9b84200b8002f5014 icmpsel          ult, r54, r60.cache, 4, r60.cache, r56.discard
 a82: 8e6104802b110000     iadd             r56.cache, 4, r60.cache
 a8a: 12d1b84200b8002b5014 icmpsel          ult, r52, r60.cache, 4, r60.cache, r56.cache
 a94: 12d57842007080275014 icmpsel          ult, r53, r60, 4, r56, r60
 a9e: 0574c00669c21000     device_load      0, i8, x, r78h, r48_r49, r78, unsigned
 aa6: 3800                 wait             0
 aa8: 0580800469c21000     device_load      0, i8, x, r80l, r48_r49, r76, signed
 ab0: 0564200467c21000     device_load      0, i8, x, r76h, r48_r49, r57, signed
 ab8: 0520040467c21000     device_load      0, i8, x, r68l, r50_r51, r56, signed
 ac0: 0560c40666c21000     device_load      0, i8, x, r76l, r50_r51, r54, unsigned
 ac8: 0570a40466c21000     device_load      0, i8, x, r78l, r50_r51, r53, signed
 ad0: 052c840466c21000     device_load      0, i8, x, r69h, r50_r51, r52, signed
 ad8: 0574e00466c11000     device_load      0, i8, x, r46h, r48_r49, r55, signed
 ae0: aec900602d040012     bfeil            r50.cache, 0, r75.discard, 4
 ae8: aec100402d040012     bfeil            r48.cache, 0, r74.discard, 4
 af0: aec500202d040012     bfeil            r49.cache, 0, r73.discard, 4
 af8: 8e4900402e111000     iadd             r50.cache, 0, r50.discard, lsl 2
 b00: 8e4100002e111000     iadd             r48.cache, 0, r48.discard, lsl 2
 b08: 8e4500202e111000     iadd             r49.cache, 0, r49.discard, lsl 2
 b10: fe49e4428014         and              r50.cache, r50.discard, 4
 b16: fe45e2428014         and              r49.cache, r49.discard, 4
 b1c: aec900002de44212     bfeil            r50.cache, 0, r72.discard, r50.discard
 b24: fe41e0428014         and              r48.cache, r48.discard, 4
 b2a: aec500a02fe24211     bfeil            r49.cache, 0, r61.discard, r49.discard
 b32: fe75e4a29815         and              r61.cache, r50.discard, u37
 b38: aec100602fe04211     bfeil            r48.cache, 0, r59.discard, r48.discard
 b40: fe45e2a29815         and              r49.cache, r49.discard, u37
 b46: 3ee100a40711         convert          u8_to_f, r56, r61l, rte
 b4c: 7e49e0a29815         and              r50, r48.discard, u37
 b52: 3ed100240611         convert          u8_to_f, r52, r49l, rte
 b58: 12c1b442000f01333014 icmpsel          ult, r48, r58.cache, 4, 15, 240
 b62: 12cd7442000021300014 icmpsel          ult, r51, r58, 4, 0, 2
 b6c: 3801                 wait             1
 b6e: fe55e0828e16         and              r53.cache, r48.discard, r84l.discard
 b74: 92d9b442000041300014 icmpsel          ult, r54.cache, r58.cache, 4, 0, 4
 b7e: 92c1f442003001303014 icmpsel          ult, r48.cache, r58.discard, 4, 48, 192
 b88: aed900a02eec4211     bfeil            r54.cache, 0, r53.discard, r54.discard
 b90: fe55a0728e16         and              r53.cache, r48.cache, r83h.discard
 b96: fe41e0628e16         and              r48.cache, r48.discard, r83l.discard
 b9c: aee500a02ea64211     bfeil            r57.cache, 0, r53.discard, r51.cache
 ba4: 92ddbe42000021300014 icmpsel          ult, r55.cache, r63.cache, 4, 0, 2
 bae: 92d5be42003001303014 icmpsel          ult, r53.cache, r63.cache, 4, 48, 192
 bb8: fe5af2c8ce15         or               r54h.cache, r57l.discard, r54l.discard
 bbe: aecd00002ee64211     bfeil            r51.cache, 0, r48.discard, r51.discard
 bc6: fe4ee3f08018         and              r51h.cache, r81h.discard, 15
 bcc: fe41aaf28d16         and              r48.cache, r53.cache, r79h.discard
 bd2: fe4ce768ce15         or               r51l.cache, r51h.discard, r51l.discard
 bd8: aec100002eae4211     bfeil            r48.cache, 0, r48.discard, r55.cache
 be0: fe42def08018         and              r48h.cache, r79l.discard, 15
 be6: becd06640e11         convert          u16_to_f, r51.cache, r51l.discard, rte
 bec: fe58e108ce15         or               r54l.cache, r48h.discard, r48l.discard
 bf2: bec106d40e11         convert          u16_to_f, r48.cache, r54h.discard, rte
 bf8: 1ae9e6e20c16         fmul32           r58, r51.discard, r71l.discard
 bfe: becd06c40e11         convert          u16_to_f, r51.cache, r54l.discard, rte
 c04: 1abdcf082e29         fmul32           r79, r71h.discard.neg, r48.discard
 c0a: 3ec100440611         convert          u8_to_f, r48, r50l, rte
 c10: 1aede6920c16         fmul32           r59, r51.discard, r68h.discard
 c16: 2ee500602c040012     bfeil            r57, 0, r67.discard, 4
 c1e: 92cdbe42000f01333014 icmpsel          ult, r51.cache, r63.cache, 4, 15, 240
 c28: 92d9fe42000041300014 icmpsel          ult, r54.cache, r63.discard, 4, 0, 4
 c32: fe4de6228e16         and              r51.cache, r51.discard, r81l.discard
 c38: 12fd8042000041300018 icmpsel          ult, r63, r64.cache, 4, 0, 4
 c42: 2ecd00602eec4211     bfeil            r51, 0, r51.discard, r54.discard
 c4a: fe55ea128e16         and              r53.cache, r53.discard, r80h.discard
 c50: 12d94042000f01333018 icmpsel          ult, r54, r64, 4, 15, 240
 c5a: 2ed500a02eee4211     bfeil            r53, 0, r53.discard, r55.discard
 c62: 3800                 wait             0
 c64: fe59ec028e16         and              r54.cache, r54.discard, r80l.discard
 c6a: 92ddb842000041300014 icmpsel          ult, r55.cache, r60.cache, 4, 0, 4
 c74: 2efd00c02efe4211     bfeil            r63, 0, r54.discard, r63.discard
 c7c: 92d9b842000f01333014 icmpsel          ult, r54.cache, r60.cache, 4, 15, 240
 c86: 8e6500202f111000     iadd             r57.cache, 0, r57.discard, lsl 2
 c8e: fe59ec828c16         and              r54.cache, r54.discard, r68l.discard
 c94: fe65f2428014         and              r57.cache, r57.discard, 4
 c9a: aedd00c02eee4211     bfeil            r55.cache, 0, r54.discard, r55.discard
 ca2: 928d8042000021300028 icmpsel          ult, r67.cache, r64.cache, 4, 0, 2
 cac: 9e59aee125000011     imadd            r54.cache, u23, r47, 0
 cb4: 9281c042003001303028 icmpsel          ult, r64.cache, r64.discard, 4, 48, 192
 cbe: ae9100c02cf24222     bfeil            r68.cache, 0, r70.discard, r57.discard
 cc6: fe4cea68ce15         or               r51l.cache, r53l.discard, r51l.discard
 ccc: 92d5b842000021300014 icmpsel          ult, r53.cache, r60.cache, 4, 0, 2
 cd6: be9906640e21         convert          u16_to_f, r70.cache, r51l.discard, rte
 cdc: fe6580d28d1a         and              r57.cache, r64.cache, r78h.discard
 ce2: 92cdf842003001303014 icmpsel          ult, r51.cache, r60.discard, 4, 48, 192
 cec: 2ef100202f868211     bfeil            r60, 0, r57.discard, r67.cache
 cf4: fe65a6c28d16         and              r57.cache, r51.cache, r78l.discard
 cfa: 9ac5cac82c2a         fmul32           r81.cache, r69l.discard.neg, r70.discard
 d00: aee500202faa4211     bfeil            r57.cache, 0, r57.discard, r53.cache
 d08: fe01c0928d2a         and              r64.cache, r64.discard, r76h.discard
 d0e: 7e39c8a29829         and              r78, r68.discard, u37
 d14: ae8100002cc68222     bfeil            r64.cache, 0, r64.discard, r67.discard
 d1c: fe4de6828d16         and              r51.cache, r51.discard, r76l.discard
 d22: fe5cf2e8ce15         or               r55l.cache, r57l.discard, r55l.discard
 d28: aecd00602eea4211     bfeil            r51.cache, 0, r51.discard, r53.discard
 d30: fe4ecbf08018         and              r51h.cache, r69h.discard, 15
 d36: bed506e40e11         convert          u16_to_f, r53.cache, r55l.discard, rte
 d3c: fe4ce768ce15         or               r51l.cache, r51h.discard, r51l.discard
 d42: 3ab174022f5e8225     fmadd32          r76, r58, r56.discard, r79
 d4a: becd06640e11         convert          u16_to_f, r51.cache, r51l.discard, rte
 d50: 3ae176822e628215     fmadd32          r56, r59, r52.discard, r81
 d58: 9e51aec127000011     imadd            r52.cache, u23, r62, 0
 d60: 9acde6420c16         fmul32           r51.cache, r51.discard, r66l.discard
 d66: aedd00c02e020011     bfeil            r55.cache, 0, r54.discard, 2
 d6e: 9ac1c5a82e29         fmul32           r80.cache, r66h.discard.neg, r53.discard
 d74: aed900802e020011     bfeil            r54.cache, 0, r52.discard, 2
 d7c: 3ac166022e608215     fmadd32          r48, r51, r48.discard, r80
 d84: 9e55ae4126000012     imadd            r53.cache, u23, r82, 0
 d8c: 8e515ac205150000     iadd             r52.cache, r45, r46l
 d94: 9e65aea125000012     imadd            r57.cache, u23, r77, 0
 d9c: 0e5da8e22e150000     iadd             r55, r52.cache, r55.discard
 da4: aed500a02e020011     bfeil            r53.cache, 0, r53.discard, 2
 dac: 0e59a8c22e150000     iadd             r54, r52.cache, r54.discard
 db4: aee500202f020011     bfeil            r57.cache, 0, r57.discard, 2
 dbc: fe3addf08014         and              r46h.cache, r46h.discard, 15
 dc2: 0e55a8a22e150000     iadd             r53, r52.cache, r53.discard
 dca: fe3add88cf15         or               r46h.cache, r46h.discard, r60l.discard
 dd0: 0e51e8222f150000     iadd             r52, r52.discard, r57.discard
 dd8: 3ee506d40d11         convert          u16_to_f, r57, r46h.discard, rte
 dde: 8e71c222ac1a1000     iadd             r60.cache, r65.discard, r65.discard, lsl 3
 de6: fe3ac0e8cf19         or               r46h.cache, r64l.discard, r63l.discard
 dec: 0e710080af110000     iadd             r60, 0, r60.discard, lsl 1
 df4: 3ecd06d40d21         convert          u16_to_f, r83, r46h.discard, rte
 dfa: 85f48a0c37c93000     device_load      0, i16, xy, r62h_r63l, u29_u30, r60, signed, lsl 2
 e02: 0541ee4e36caf200     device_load      1, i32, xyzw, r72_r73_r74_r75, u31_u32, r55, unsigned, lsl 2
 e0a: 0521ce4e36caf200     device_load      1, i32, xyzw, r68_r69_r70_r71, u31_u32, r54, unsigned, lsl 2
 e12: 0501ae4e36caf200     device_load      1, i32, xyzw, r64_r65_r66_r67, u31_u32, r53, unsigned, lsl 2
 e1a: 05a18e4e36c9f200     device_load      1, i32, xyzw, r52_r53_r54_r55, u31_u32, r52, unsigned, lsl 2
 e22: 3800                 wait             0
 e24: 9ae5f2d20f15         fmul32           r57.cache, r57.discard, r62h.discard
 e2a: bef100c40912         convert          u8_to_f, r60.cache, r78l.cache, rte
 e30: 9afdfe682e16         fmul32           r63.cache, r63l.discard.neg, r83.discard
 e36: aed800200e080021     bfeil            r86l.cache, 0, r49l.discard, 8
 e3e: 3af1b2822fbe4215     fmadd32          r60, r57.cache, r60.discard, r63.cache
 e46: 2ed600300a080021     bfeil            r85h, 0, r49h.cache, 8
 e4e: 8e3a5ee005152000     iadd             r46h.cache, r47l, r47l, lsl 4
 e56: 3ec500340e11         convert          u8_to_f, r49, r49h.discard, rte
 e5c: 8e7addc089150000     iadd             r62h.cache, r46h.discard, r46l.cache, lsl 1
 e64: 8e3afcc00f152000     iadd             r46h.cache, r62l.discard, r62l.discard, lsl 4
 e6c: 0e5400d08f211000     iadd             r85l, 0, r62h.discard, lsl 3
 e74: 8e3addc089150000     iadd             r46h.cache, r46h.discard, r46l.cache, lsl 1
 e7c: bef900d40912         convert          u8_to_f, r62.cache, r78h.cache, rte
 e82: 0e5200d08d211000     iadd             r84h, 0, r46h.discard, lsl 3
 e8a: aeca00c00d080022     bfeil            r82h.cache, 0, r78l.discard, 8
 e92: 8e3ae4400e1a2000     iadd             r46h.cache, r82l.discard, r82l.discard, lsl 4
 e9a: aec800d00d080022     bfeil            r82l.cache, 0, r78h.discard, 8
 ea2: 8e3addc089150000     iadd             r46h.cache, r46h.discard, r46l.cache, lsl 1
 eaa: aef400a00f080011     bfeil            r61l.cache, 0, r61l.discard, 8
 eb2: 0e5000d08d211000     iadd             r84l, 0, r46h.discard, lsl 3
 eba: aeb600b00b080021     bfeil            r77h.cache, 0, r61h.cache, 8
 ec2: 8e3adaa00d1a2000     iadd             r46h.cache, r77l.discard, r77l.discard, lsl 4
 eca: beb900b40f21         convert          u8_to_f, r78.cache, r61h.discard, rte
 ed0: 8e3addc085150000     iadd             r46h.cache, r46h.discard, r46l, lsl 1
 ed8: bef500a40f11         convert          u8_to_f, r61.cache, r61l.discard, rte
 ede: 0e3a00d08d111000     iadd             r46h, 0, r46h.discard, lsl 3
 ee6: becd00b40d22         convert          u8_to_f, r83.cache, r77h.discard, rte
 eec: 3ab5b4a22f9e8225     fmadd32          r77, r58.cache, r61.discard, r79.cache
 ef4: bef500540e12         convert          u8_to_f, r61.cache, r82h.discard, rte
 efa: 3ab9b4c22d9e8226     fmadd32          r78, r58.cache, r78.discard, r79.cache
 f02: bec900440e22         convert          u8_to_f, r82.cache, r82l.discard, rte
 f08: 3abdf4622ede8226     fmadd32          r79, r58.discard, r83.discard, r79.discard
 f10: bee900c40e12         convert          u8_to_f, r58.cache, r86l.discard, rte
 f16: 3af5b2a22fbe4215     fmadd32          r61, r57.cache, r61.discard, r63.cache
 f1e: aece00400e080021     bfeil            r83h.cache, 0, r50l.discard, 8
 f26: 3af9b2c22fbe4215     fmadd32          r62, r57.cache, r62.discard, r63.cache
 f2e: aecc00500a080021     bfeil            r83l.cache, 0, r50h.cache, 8
 f36: 3afdf2422efe4216     fmadd32          r63, r57.discard, r82.discard, r63.discard
 f3e: bec900540e11         convert          u8_to_f, r50.cache, r50h.discard, rte
 f44: 3ae5b6422fa28215     fmadd32          r57, r59.cache, r58.discard, r81.cache
 f4c: bec900b40e22         convert          u8_to_f, r82.cache, r85h.discard, rte
 f52: 3ae9b6222ea28215     fmadd32          r58, r59.cache, r49.discard, r81.cache
 f5a: bec500740e12         convert          u8_to_f, r49.cache, r83h.discard, rte
 f60: 3aedf6422ee28216     fmadd32          r59, r59.discard, r82.discard, r81.discard
 f68: bec500640e22         convert          u8_to_f, r81.cache, r83l.discard, rte
 f6e: 3ac5a6222ea08215     fmadd32          r49, r51.cache, r49.discard, r80.cache
 f76: 3ac9a6422ea08215     fmadd32          r50, r51.cache, r50.discard, r80.cache
 f7e: 3acde6222ee08216     fmadd32          r51, r51.discard, r81.discard, r80.discard
 f86: 29b12a02f6840828     threadgroup_store i32, xyzw, r76_r77_r78_r79, r85l, 544
 f8e: 3801                 wait             1
 f90: 29a12a02f4810028     threadgroup_store i32, xyzw, r72_r73_r74_r75, r85l, 0
 f98: 29912902f4810028     threadgroup_store i32, xyzw, r68_r69_r70_r71, r84h, 0
 fa0: 29812802f4810028     threadgroup_store i32, xyzw, r64_r65_r66_r67, r84l, 0
 fa8: 29f12902f6840818     threadgroup_store i32, xyzw, r60_r61_r62_r63, r84h, 544
 fb0: 29e12802f6840818     threadgroup_store i32, xyzw, r56_r57_r58_r59, r84l, 544
 fb8: 29d11d02f4810014     threadgroup_store i32, xyzw, r52_r53_r54_r55, r46h, 0
 fc0: 29c11d02f6840814     threadgroup_store i32, xyzw, r48_r49_r50_r51, r46h, 544
 fc8: 6800                 threadgroup_barrier 
 fca: e2c1000000000010     mov_imm          r48.cache, 0, 0b0
 fd2: 421000000000         push_exec        r0l, 2
 fd8: 8e46011008100000     iadd             r49h.cache, 1, r0h.cache
 fe0: 8e44811008102000     iadd             r49l.cache, r0h.cache, r0h.cache, lsl 4
 fe8: 8e3a00300a112000     iadd             r46h.cache, 0, r49h.cache, lsl 4
 ff0: 8e44a0200e150000     iadd             r49l.cache, r48l.cache, r49l.discard
 ff8: fe3ae3d8cd15         or               r46h.cache, r49h.discard, r46h.discard
 ffe: 8e4400208e111000     iadd             r49l.cache, 0, r49l.discard, lsl 3
1006: 8e3aa0d00d150000     iadd             r46h.cache, r48l.cache, r46h.discard
100e: 0e58e26010150000     iadd             r54l, r49l.discard, u35l
1016: 8e4400d08d111000     iadd             r49l.cache, 0, r46h.discard, lsl 3
101e: 8e3a021008100000     iadd             r46h.cache, 2, r0h.cache
1026: 0e54e26010150000     iadd             r53l, r49l.discard, u35l
102e: 8e44ddd00d152000     iadd             r49l.cache, r46h.discard, r46h.discard, lsl 4
1036: 8e3a031008100000     iadd             r46h.cache, 3, r0h.cache
103e: 8e44a0200e150000     iadd             r49l.cache, r48l.cache, r49l.discard
1046: 8e3addd00d152000     iadd             r46h.cache, r46h.discard, r46h.discard, lsl 4
104e: 8e4400208e111000     iadd             r49l.cache, 0, r49l.discard, lsl 3
1056: 8e3aa0d00d150000     iadd             r46h.cache, r48l.cache, r46h.discard
105e: 0e56e26010150000     iadd             r53h, r49l.discard, u35l
1066: 8e3a00d08d111000     iadd             r46h.cache, 0, r46h.discard, lsl 3
106e: 8e46101008100000     iadd             r49h.cache, 16, r0h.cache
1076: 0e4add6010150000     iadd             r50h, r46h.discard, u35l
107e: 8e3a00300a112000     iadd             r46h.cache, 0, r49h.cache, lsl 4
1086: 8e44111008100000     iadd             r49l.cache, 17, r0h.cache
108e: fe3ae3d8cd15         or               r46h.cache, r49h.discard, r46h.discard
1094: 8e44e2200e152000     iadd             r49l.cache, r49l.discard, r49l.discard, lsl 4
109c: 8e3aa0d00d150000     iadd             r46h.cache, r48l.cache, r46h.discard
10a4: 8e44a0200e150000     iadd             r49l.cache, r48l.cache, r49l.discard
10ac: 8e3a00d08d111000     iadd             r46h.cache, 0, r46h.discard, lsl 3
10b4: 8e4400208e111000     iadd             r49l.cache, 0, r49l.discard, lsl 3
10bc: 0e3add6010150000     iadd             r46h, r46h.discard, u35l
10c4: 0e48e26010150000     iadd             r50l, r49l.discard, u35l
10cc: 8e46121008100000     iadd             r49h.cache, 18, r0h.cache
10d4: 8e44131004100000     iadd             r49l.cache, 19, r0h
10dc: 8e46e3300e152000     iadd             r49h.cache, r49h.discard, r49h.discard, lsl 4
10e4: 8e44e2200e152000     iadd             r49l.cache, r49l.discard, r49l.discard, lsl 4
10ec: 8e46a0300e150000     iadd             r49h.cache, r48l.cache, r49h.discard
10f4: 8e44a0200e150000     iadd             r49l.cache, r48l.cache, r49l.discard
10fc: 8e4600308e111000     iadd             r49h.cache, 0, r49h.discard, lsl 3
1104: 8e4400208e111000     iadd             r49l.cache, 0, r49l.discard, lsl 3
110c: 0e46e36010150000     iadd             r49h, r49h.discard, u35l
1114: 0e44e26010150000     iadd             r49l, r49l.discard, u35l
111c: 8e4c018008100000     iadd             r51l.cache, 1, r4l.cache
1124: 8e4e888008102000     iadd             r51h.cache, r4l.cache, r4l.cache, lsl 4
112c: 8e4ce6600e152000     iadd             r51l.cache, r51l.discard, r51l.discard, lsl 4
1134: 8e4ea0700e150000     iadd             r51h.cache, r48l.cache, r51h.discard
113c: 8e4ca0600e150000     iadd             r51l.cache, r48l.cache, r51l.discard
1144: 0e5210708e111000     iadd             r52h, 16, r51h.discard, lsl 3
114c: 0e5010608e111000     iadd             r52l, 16, r51l.discard, lsl 3
1154: 8e4e108008100000     iadd             r51h.cache, 16, r4l.cache
115c: 8e4c118004100000     iadd             r51l.cache, 17, r4l
1164: 8e4ee7700e152000     iadd             r51h.cache, r51h.discard, r51h.discard, lsl 4
116c: 8e4ce6600e152000     iadd             r51l.cache, r51l.discard, r51l.discard, lsl 4
1174: 8e4ea0700e150000     iadd             r51h.cache, r48l.cache, r51h.discard
117c: 8e4c60600e150000     iadd             r51l.cache, r48l, r51l.discard
1184: 0e4e10708e111000     iadd             r51h, 16, r51h.discard, lsl 3
118c: 0e4c10608e111000     iadd             r51l, 16, r51l.discard, lsl 3
1194: 698d2cc23781ff27     threadgroup_load i32, xy, r67_r68, r54l, -4
119c: 69fd2bc23781ff17     threadgroup_load i32, xy, r63_r64, r53h, -4
11a4: 69f125c23781ff17     threadgroup_load i32, xy, r60_r61, r50h, -4
11ac: 69e124c23781ff17     threadgroup_load i32, xy, r56_r57, r50l, -4
11b4: 69d923c23781ff17     threadgroup_load i32, xy, r54_r55, r49h, -4
11bc: 69c522c23781ff17     threadgroup_load i32, xy, r49_r50, r49l, -4
11c4: 69a529c23781ff27     threadgroup_load i32, xy, r73_r74, r52h, -4
11cc: 699d28c23781ff27     threadgroup_load i32, xy, r71_r72, r52l, -4
11d4: 699527c23781ff27     threadgroup_load i32, xy, r69_r70, r51h, -4
11dc: 69cd26c23781ff17     threadgroup_load i32, xy, r51_r52, r51l, -4
11e4: 69852ac23781ff27     threadgroup_load i32, xy, r65_r66, r53l, -4
11ec: 69e91dc23781ff17     threadgroup_load i32, xy, r58_r59, r46h, -4
11f4: baa540422992421a     fmadd32          r41.cache, r64, r74.cache, r41.cache
11fc: baa17a4229904216     fmadd32          r40.cache, r61, r74.cache, r40.cache
1204: 3aa57e2229524216     fmadd32          r41, r63, r73.cache, r41
120c: 3aa1782229504216     fmadd32          r40, r60, r73.cache, r40
1214: ba81b64229804216     fmadd32          r32.cache, r59.cache, r74.cache, r32.cache
121c: baf9b24229bc0206     fmadd32          r30.cache, r57.cache, r74.cache, r30.cache
1224: 3a81b42229404216     fmadd32          r32, r58.cache, r73.cache, r32
122c: 3af97022297c0206     fmadd32          r30, r56, r73.cache, r30
1234: baf56e4229ba0206     fmadd32          r29.cache, r55, r74.cache, r29.cache
123c: baf1644229b80206     fmadd32          r28.cache, r50, r74.cache, r28.cache
1244: 3af56c22297a0206     fmadd32          r29, r54, r73.cache, r29
124c: 3af1622229780206     fmadd32          r28, r49, r73.cache, r28
1254: baad88422996421a     fmadd32          r43.cache, r68.cache, r74.cache, r43.cache
125c: baa984422d94421a     fmadd32          r42.cache, r66.cache, r74.discard, r42.cache
1264: 3aad86222956421a     fmadd32          r43, r67.cache, r73.cache, r43
126c: 3aa982222d54421a     fmadd32          r42, r65.cache, r73.discard, r42
1274: 0e4101002e110000     iadd             r48, 1, r48.discard
127c: ba8d48022986421a     fmadd32          r35.cache, r68, r72.cache, r35.cache
1284: ba8944022984421a     fmadd32          r34.cache, r66, r72.cache, r34.cache
128c: 3a8d46e22846421a     fmadd32          r35, r67, r71.cache, r35
1294: 3a8942e22844421a     fmadd32          r34, r65, r71.cache, r34
129c: bae5b60229b20206     fmadd32          r25.cache, r59.cache, r72.cache, r25.cache
12a4: bae1b20229b00206     fmadd32          r24.cache, r57.cache, r72.cache, r24.cache
12ac: 3ae5b4e228720206     fmadd32          r25, r58.cache, r71.cache, r25
12b4: 3ae170e228700206     fmadd32          r24, r56, r71.cache, r24
12bc: bad16e0229a80206     fmadd32          r20.cache, r55, r72.cache, r20.cache
12c4: bac5640229a20206     fmadd32          r17.cache, r50, r72.cache, r17.cache
12cc: 3ad16ce228680206     fmadd32          r20, r54, r71.cache, r20
12d4: 3ac562e228620206     fmadd32          r17, r49, r71.cache, r17
12dc: ba8580022982421a     fmadd32          r33.cache, r64.cache, r72.cache, r33.cache
12e4: bafdba022dbe0206     fmadd32          r31.cache, r61.cache, r72.discard, r31.cache
12ec: 3a85bee228424216     fmadd32          r33, r63.cache, r71.cache, r33
12f4: 3afdb8e22c7e0206     fmadd32          r31, r60.cache, r71.discard, r31
12fc: bad540c228aa020a     fmadd32          r21.cache, r64, r70.cache, r21.cache
1304: bac97ac228a40206     fmadd32          r18.cache, r61, r70.cache, r18.cache
130c: 3ad5bea2286a0206     fmadd32          r21, r63.cache, r69.cache, r21
1314: 3ac9b8a228640206     fmadd32          r18, r60.cache, r69.cache, r18
131c: bab5b6c2289a0206     fmadd32          r13.cache, r59.cache, r70.cache, r13.cache
1324: bab172c228980206     fmadd32          r12.cache, r57, r70.cache, r12.cache
132c: 3ab574a2285a0206     fmadd32          r13, r58, r69.cache, r13
1334: 3ab170a228580206     fmadd32          r12, r56, r69.cache, r12
133c: baa96ec228940206     fmadd32          r10.cache, r55, r70.cache, r10.cache
1344: ba9d64c2288e0206     fmadd32          r7.cache, r50, r70.cache, r7.cache
134c: 3aa96ca228540206     fmadd32          r10, r54, r69.cache, r10
1354: 3a9d62a2284e0206     fmadd32          r7, r49, r69.cache, r7
135c: badd88c228ae020a     fmadd32          r23.cache, r68.cache, r70.cache, r23.cache
1364: bad984c22cac020a     fmadd32          r22.cache, r66.cache, r70.discard, r22.cache
136c: 3add86a2286e020a     fmadd32          r23, r67.cache, r69.cache, r23
1374: 3ad982a22c6c020a     fmadd32          r22, r65.cache, r69.discard, r22
137c: bacdc8822aa60209     fmadd32          r19.cache, r68.discard, r52.cache, r19.cache
1384: bac1c4822aa00209     fmadd32          r16.cache, r66.discard, r52.cache, r16.cache
138c: 3acdc6622a660209     fmadd32          r19, r67.discard, r51.cache, r19
1394: 3ac1c2622a600209     fmadd32          r16, r65.discard, r51.cache, r16
139c: babdc0822a9e0209     fmadd32          r15.cache, r64.discard, r52.cache, r15.cache
13a4: bab9fa822a9c0205     fmadd32          r14.cache, r61.discard, r52.cache, r14.cache
13ac: 3abdfe622a5e0205     fmadd32          r15, r63.discard, r51.cache, r15
13b4: 3ab9f8622a5c0205     fmadd32          r14, r60.discard, r51.cache, r14
13bc: baa1f6822a900205     fmadd32          r8.cache, r59.discard, r52.cache, r8.cache
13c4: ba99f2822a8c0205     fmadd32          r6.cache, r57.discard, r52.cache, r6.cache
13cc: 3aa1f4622a500205     fmadd32          r8, r58.discard, r51.cache, r8
13d4: 3a99f0622a4c0205     fmadd32          r6, r56.discard, r51.cache, r6
13dc: ba89ee822a840205     fmadd32          r2.cache, r55.discard, r52.cache, r2.cache
13e4: ba85e4822e820205     fmadd32          r1.cache, r50.discard, r52.discard, r1.cache
13ec: 3a89ec622a440205     fmadd32          r2, r54.discard, r51.cache, r2
13f4: 3a85e2622e420205     fmadd32          r1, r49.discard, r51.discard, r1
13fc: 529560020104         while_icmp       r0l, nseq, r48, 16, 2
1402: 00c0d6fbffff         jmp_exec_any     0xFD8
1408: 521600000000         pop_exec         r0l, 2
140e: 0e3108802d110000     iadd             r44, 8, r44.discard
1416: 0e6920402f000000     iadd             r26, 32, r26.discard
141e: 0e3508a02d110000     iadd             r45, 8, r45.discard
1426: 6800                 threadgroup_barrier 
1428: 523474622700         while_icmp       r0l, ult, r26, r27, 2
142e: 00c084f2ffff         jmp_exec_any     0x6B2
1434: d21600000000         pop_exec         r0l.cache, 2
143a: 420a00000000         else_fcmp        r0l, eq, 0.0, 0.0, 1
1440: 20c006010000         jmp_exec_none    0x1546
1446: 8e1100e008101000     iadd             r36.cache, 0, r7l.cache, lsl 2
144e: 8e190040a8100000     iadd             r38.cache, 0, r2.cache, lsl 1
1456: 8e1d00c0a8000000     iadd             r7.cache, 0, r6.cache, lsl 1
145e: 8e090020a8000000     iadd             r2.cache, 0, r1.cache, lsl 1
1466: 0e1500e028102000     iadd             r37, 0, r7.cache, lsl 4
146e: 8e1d004028102000     iadd             r39.cache, 0, r2.cache, lsl 4
1476: 625100000000         mov_imm          r20, 0, 0b0
147c: 624500000000         mov_imm          r17, 0, 0b0
1482: 626500000000         mov_imm          r25, 0, 0b0
1488: 626100000000         mov_imm          r24, 0, 0b0
148e: 6285000000000010     mov_imm          r33, 0, 0b0
1496: 627d00000000         mov_imm          r31, 0, 0b0
149c: 628d000000000010     mov_imm          r35, 0, 0b0
14a4: 6289000000000010     mov_imm          r34, 0, 0b0
14ac: 627500000000         mov_imm          r29, 0, 0b0
14b2: 627100000000         mov_imm          r28, 0, 0b0
14b8: 6281000000000010     mov_imm          r32, 0, 0b0
14c0: 627900000000         mov_imm          r30, 0, 0b0
14c6: 62a5000000000010     mov_imm          r41, 0, 0b0
14ce: 62a1000000000010     mov_imm          r40, 0, 0b0
14d6: 62ad000000000010     mov_imm          r43, 0, 0b0
14de: 62a9000000000010     mov_imm          r42, 0, 0b0
14e6: 625d00000000         mov_imm          r23, 0, 0b0
14ec: 625900000000         mov_imm          r22, 0, 0b0
14f2: 625500000000         mov_imm          r21, 0, 0b0
14f8: 624900000000         mov_imm          r18, 0, 0b0
14fe: 623500000000         mov_imm          r13, 0, 0b0
1504: 623100000000         mov_imm          r12, 0, 0b0
150a: 622900000000         mov_imm          r10, 0, 0b0
1510: 621d00000000         mov_imm          r7, 0, 0b0
1516: 624d00000000         mov_imm          r19, 0, 0b0
151c: 624100000000         mov_imm          r16, 0, 0b0
1522: 623d00000000         mov_imm          r15, 0, 0b0
1528: 623900000000         mov_imm          r14, 0, 0b0
152e: 622100000000         mov_imm          r8, 0, 0b0
1534: 621900000000         mov_imm          r6, 0, 0b0
153a: 620900000000         mov_imm          r2, 0, 0b0
1540: 620500000000         mov_imm          r1, 0, 0b0
1546: d20e00000000         pop_exec         r0l.cache, 1
154c: 9e69b6212dc60200     imadd            r26.cache, u27, r9.discard, r3.discard
1554: 8e25ce622d042000     iadd             r9.cache, r39.discard, r11.discard, lsl 4
155c: 8e0dcca22c042000     iadd             r3.cache, r38.discard, r5.discard, lsl 4
1564: 8e19d2822c110000     iadd             r38.cache, r9.discard, r36.discard
156c: 8e1dc6a22c110000     iadd             r39.cache, r3.discard, r37.discard
1574: 9e1574221b8c4210     imadd            r37.cache, r26, u25, r38.cache
157c: 92908e821a0101300004 icmpsel          ult, r4l.cache, r39.cache, u20, 1, 0
1586: 92824c621a4800300004 icmpsel          ult, r0h.cache, r38, u19, r4l, 0
1590: 1e0db0e1244a4201     imadd            r3, u24, r39, r37
1598: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
159e: 4559620e40c11200     device_store     0, i32, x, r43, u33_u34, r3, unsigned, 0
15a6: d20e00000000         pop_exec         r0l.cache, 1
15ac: 8e1101c024110000     iadd             r36.cache, 1, r38
15b4: 928248621a4800300004 icmpsel          ult, r0h.cache, r36, u19, r4l, 0
15be: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
15c4: 0e15016024000000     iadd             r5, 1, r3
15cc: 4551a20e40c11200     device_store     0, i32, x, r42, u33_u34, r5, unsigned, 0
15d4: d20e00000000         pop_exec         r0l.cache, 1
15da: 8e6d02c024010000     iadd             r27.cache, 2, r38
15e2: 920276621a480030     icmpsel          ult, r0h.cache, r27, u19, r4l, 0
15ea: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
15f0: 0e15026024000000     iadd             r5, 2, r3
15f8: 4549a20e40c11200     device_store     0, i32, x, r41, u33_u34, r5, unsigned, 0
1600: d20e00000000         pop_exec         r0l.cache, 1
1606: 8e2d03c024010000     iadd             r11.cache, 3, r38
160e: 920256621a480030     icmpsel          ult, r0h.cache, r11, u19, r4l, 0
1616: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
161c: 0e1503602c000000     iadd             r5, 3, r3.discard
1624: 4541a20e40c11200     device_store     0, i32, x, r40, u33_u34, r5, unsigned, 0
162c: d20e00000000         pop_exec         r0l.cache, 1
1632: 8e2101e024110000     iadd             r40.cache, 1, r39
163a: 928290821a0101300004 icmpsel          ult, r0h.cache, r40.cache, u20, 1, 0
1644: 92944c621a4100300004 icmpsel          ult, r5l.cache, r38, u19, r0h, 0
164e: 1e0db001254a4201     imadd            r3, u24, r40, r37
1656: 5289ca000000         if_icmp          r0l, nseq, r5l.discard, 0, 1
165c: 4519620e40c11200     device_store     0, i32, x, r35, u33_u34, r3, unsigned, 0
1664: d20e00000000         pop_exec         r0l.cache, 1
166a: 929448621a4100300004 icmpsel          ult, r5l.cache, r36, u19, r0h, 0
1674: 5289ca000000         if_icmp          r0l, nseq, r5l.discard, 0, 1
167a: 0e15016024000000     iadd             r5, 1, r3
1682: 4511a20e40c11200     device_store     0, i32, x, r34, u33_u34, r5, unsigned, 0
168a: d20e00000000         pop_exec         r0l.cache, 1
1690: 921476621a410030     icmpsel          ult, r5l.cache, r27, u19, r0h, 0
1698: 5289ca000000         if_icmp          r0l, nseq, r5l.discard, 0, 1
169e: 0e15026024000000     iadd             r5, 2, r3
16a6: 4509a20e40c11200     device_store     0, i32, x, r33, u33_u34, r5, unsigned, 0
16ae: d20e00000000         pop_exec         r0l.cache, 1
16b4: 921456621a410030     icmpsel          ult, r5l.cache, r11, u19, r0h, 0
16bc: 5289ca000000         if_icmp          r0l, nseq, r5l.discard, 0, 1
16c2: 0e1503602c000000     iadd             r5, 3, r3.discard
16ca: 45f9a20e40c01200     device_store     0, i32, x, r31, u33_u34, r5, unsigned, 0
16d2: d20e00000000         pop_exec         r0l.cache, 1
16d8: 8e0d10c024010000     iadd             r3.cache, 16, r38
16e0: 9e15f4221b860200     imadd            r5.cache, r26.discard, u25, r3.cache
16e8: 922446621a480030     icmpsel          ult, r9l.cache, r3, u19, r4l, 0
16f0: 1e05b0e1244a0211     imadd            r33, u24, r39, r5
16f8: 5289d2000000         if_icmp          r0l, nseq, r9l.discard, 0, 1
16fe: 4501220e44c11200     device_store     0, i32, x, r32, u33_u34, r33, unsigned, 0
1706: d20e00000000         pop_exec         r0l.cache, 1
170c: 8e25016024000000     iadd             r9.cache, 1, r3
1714: 926852621a480030     icmpsel          ult, r26l.cache, r9, u19, r4l, 0
171c: 5289f4000000         if_icmp          r0l, nseq, r26l.discard, 0, 1
1722: 0e69012024010000     iadd             r26, 1, r33
172a: 45f1420e43c01200     device_store     0, i32, x, r30, u33_u34, r26, unsigned, 0
1732: d20e00000000         pop_exec         r0l.cache, 1
1738: 8e69026024000000     iadd             r26.cache, 2, r3
1740: 927874621a480030     icmpsel          ult, r30l.cache, r26, u19, r4l, 0
1748: 5289fc000000         if_icmp          r0l, nseq, r30l.discard, 0, 1
174e: 0e79022024010000     iadd             r30, 2, r33
1756: 45e9c20e43c01200     device_store     0, i32, x, r29, u33_u34, r30, unsigned, 0
175e: d20e00000000         pop_exec         r0l.cache, 1
1764: 8e75036024000000     iadd             r29.cache, 3, r3
176c: 92107a621ac80030     icmpsel          ult, r4l.cache, r29, u19, r4l.discard, 0
1774: 5289c8000000         if_icmp          r0l, nseq, r4l.discard, 0, 1
177a: 0e7903202c010000     iadd             r30, 3, r33.discard
1782: 45e1c20e43c01200     device_store     0, i32, x, r28, u33_u34, r30, unsigned, 0
178a: d20e00000000         pop_exec         r0l.cache, 1
1790: 1e79b0012d4a0201     imadd            r30, u24, r40.discard, r5
1798: 921046621a410030     icmpsel          ult, r4l.cache, r3, u19, r0h, 0
17a0: 5289c8000000         if_icmp          r0l, nseq, r4l.discard, 0, 1
17a6: 45c9c20e43c01200     device_store     0, i32, x, r25, u33_u34, r30, unsigned, 0
17ae: d20e00000000         pop_exec         r0l.cache, 1
17b4: 927c52621a410030     icmpsel          ult, r31l.cache, r9, u19, r0h, 0
17bc: 5289fe000000         if_icmp          r0l, nseq, r31l.discard, 0, 1
17c2: 0e6501c027000000     iadd             r25, 1, r30
17ca: 45c1220e43c01200     device_store     0, i32, x, r24, u33_u34, r25, unsigned, 0
17d2: d20e00000000         pop_exec         r0l.cache, 1
17d8: 926474621a410030     icmpsel          ult, r25l.cache, r26, u19, r0h, 0
17e0: 5289f2000000         if_icmp          r0l, nseq, r25l.discard, 0, 1
17e6: 0e6102c027000000     iadd             r24, 2, r30
17ee: 45a1020e43c01200     device_store     0, i32, x, r20, u33_u34, r24, unsigned, 0
17f6: d20e00000000         pop_exec         r0l.cache, 1
17fc: 927c7a621ac10030     icmpsel          ult, r31l.cache, r29, u19, r0h.discard, 0
1804: 5289fe000000         if_icmp          r0l, nseq, r31l.discard, 0, 1
180a: 0e5103c02f000000     iadd             r20, 3, r30.discard
1812: 4589820e42c01200     device_store     0, i32, x, r17, u33_u34, r20, unsigned, 0
181a: d20e00000000         pop_exec         r0l.cache, 1
1820: 8e5110e02c010000     iadd             r20.cache, 16, r39.discard
1828: 9202a8821a010130     icmpsel          ult, r0h.cache, r20.cache, u20, 1, 0
1830: 92c44c621a4100300004 icmpsel          ult, r17l.cache, r38, u19, r0h, 0
183a: 1e61b081264a4200     imadd            r24, u24, r20, r37
1842: 5289e2000000         if_icmp          r0l, nseq, r17l.discard, 0, 1
1848: 45b9020e43c01200     device_store     0, i32, x, r23, u33_u34, r24, unsigned, 0
1850: d20e00000000         pop_exec         r0l.cache, 1
1856: 92c448621a4100300004 icmpsel          ult, r17l.cache, r36, u19, r0h, 0
1860: 5289e2000000         if_icmp          r0l, nseq, r17l.discard, 0, 1
1866: 0e45010027000000     iadd             r17, 1, r24
186e: 45b1220e42c01200     device_store     0, i32, x, r22, u33_u34, r17, unsigned, 0
1876: d20e00000000         pop_exec         r0l.cache, 1
187c: 924476621a410030     icmpsel          ult, r17l.cache, r27, u19, r0h, 0
1884: 5289e2000000         if_icmp          r0l, nseq, r17l.discard, 0, 1
188a: 0e45020027000000     iadd             r17, 2, r24
1892: 45a9220e42c01200     device_store     0, i32, x, r21, u33_u34, r17, unsigned, 0
189a: d20e00000000         pop_exec         r0l.cache, 1
18a0: 924456621a410030     icmpsel          ult, r17l.cache, r11, u19, r0h, 0
18a8: 5289e2000000         if_icmp          r0l, nseq, r17l.discard, 0, 1
18ae: 0e4503002f000000     iadd             r17, 3, r24.discard
18b6: 4591220e42c01200     device_store     0, i32, x, r18, u33_u34, r17, unsigned, 0
18be: d20e00000000         pop_exec         r0l.cache, 1
18c4: 8e49018026000000     iadd             r18.cache, 1, r20
18cc: 9210a4821a010130     icmpsel          ult, r4l.cache, r18.cache, u20, 1, 0
18d4: 92c4cc621a4800300004 icmpsel          ult, r17l.cache, r38.discard, u19, r4l, 0
18de: 1e59b04126ca4200     imadd            r22, u24, r18, r37.discard
18e6: 5289e2000000         if_icmp          r0l, nseq, r17l.discard, 0, 1
18ec: 4599c20e42c01200     device_store     0, i32, x, r19, u33_u34, r22, unsigned, 0
18f4: d20e00000000         pop_exec         r0l.cache, 1
18fa: 92c4c8621a4800300004 icmpsel          ult, r17l.cache, r36.discard, u19, r4l, 0
1904: 5289e2000000         if_icmp          r0l, nseq, r17l.discard, 0, 1
190a: 0e4501c026000000     iadd             r17, 1, r22
1912: 4581220e42c01200     device_store     0, i32, x, r16, u33_u34, r17, unsigned, 0
191a: d20e00000000         pop_exec         r0l.cache, 1
1920: 9242f6621a480030     icmpsel          ult, r16h.cache, r27.discard, u19, r4l, 0
1928: 5289e1000000         if_icmp          r0l, nseq, r16h.discard, 0, 1
192e: 0e4102c026000000     iadd             r16, 2, r22
1936: 4579020e42c01200     device_store     0, i32, x, r15, u33_u34, r16, unsigned, 0
193e: d20e00000000         pop_exec         r0l.cache, 1
1944: 9242d6621a480030     icmpsel          ult, r16h.cache, r11.discard, u19, r4l, 0
194c: 5289e1000000         if_icmp          r0l, nseq, r16h.discard, 0, 1
1952: 0e2d03c02e000000     iadd             r11, 3, r22.discard
195a: 4571620e41c01200     device_store     0, i32, x, r14, u33_u34, r11, unsigned, 0
1962: d20e00000000         pop_exec         r0l.cache, 1
1968: 1e2db0812e4a0200     imadd            r11, u24, r20.discard, r5
1970: 923846621a410030     icmpsel          ult, r14l.cache, r3, u19, r0h, 0
1978: 5289dc000000         if_icmp          r0l, nseq, r14l.discard, 0, 1
197e: 4569620e41c01200     device_store     0, i32, x, r13, u33_u34, r11, unsigned, 0
1986: d20e00000000         pop_exec         r0l.cache, 1
198c: 923852621a410030     icmpsel          ult, r14l.cache, r9, u19, r0h, 0
1994: 5289dc000000         if_icmp          r0l, nseq, r14l.discard, 0, 1
199a: 0e35016025000000     iadd             r13, 1, r11
19a2: 4561a20e41c01200     device_store     0, i32, x, r12, u33_u34, r13, unsigned, 0
19aa: d20e00000000         pop_exec         r0l.cache, 1
19b0: 923474621a410030     icmpsel          ult, r13l.cache, r26, u19, r0h, 0
19b8: 5289da000000         if_icmp          r0l, nseq, r13l.discard, 0, 1
19be: 0e31026025000000     iadd             r12, 2, r11
19c6: 4551820e41c01200     device_store     0, i32, x, r10, u33_u34, r12, unsigned, 0
19ce: d20e00000000         pop_exec         r0l.cache, 1
19d4: 92287a621ac10030     icmpsel          ult, r10l.cache, r29, u19, r0h.discard, 0
19dc: 5289d4000000         if_icmp          r0l, nseq, r10l.discard, 0, 1
19e2: 0e2903602d000000     iadd             r10, 3, r11.discard
19ea: 4539420e41c01200     device_store     0, i32, x, r7, u33_u34, r10, unsigned, 0
19f2: d20e00000000         pop_exec         r0l.cache, 1
19f8: 1e1db0412eca0200     imadd            r7, u24, r18.discard, r5.discard
1a00: 9202c6621a480030     icmpsel          ult, r0h.cache, r3.discard, u19, r4l, 0
1a08: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1a0e: 4541e20e40c01200     device_store     0, i32, x, r8, u33_u34, r7, unsigned, 0
1a16: d20e00000000         pop_exec         r0l.cache, 1
1a1c: 9202d2621a480030     icmpsel          ult, r0h.cache, r9.discard, u19, r4l, 0
1a24: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1a2a: 0e1501e024000000     iadd             r5, 1, r7
1a32: 4531a20e40c01200     device_store     0, i32, x, r6, u33_u34, r5, unsigned, 0
1a3a: d20e00000000         pop_exec         r0l.cache, 1
1a40: 9202f4621a480030     icmpsel          ult, r0h.cache, r26.discard, u19, r4l, 0
1a48: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1a4e: 0e1502e024000000     iadd             r5, 2, r7
1a56: 4511a20e40c01200     device_store     0, i32, x, r2, u33_u34, r5, unsigned, 0
1a5e: d20e00000000         pop_exec         r0l.cache, 1
1a64: 9202fa621ac80030     icmpsel          ult, r0h.cache, r29.discard, u19, r4l.discard, 0
1a6c: 5289c1000000         if_icmp          r0l, nseq, r0h.discard, 0, 1
1a72: 0e0903e02c000000     iadd             r2, 3, r7.discard
1a7a: 4509420e40c01200     device_store     0, i32, x, r1, u33_u34, r2, unsigned, 0
1a82: 520e00000000         pop_exec         r0l, 1
1a88: 8800                 stop             
