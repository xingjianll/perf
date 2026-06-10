START
   0: 72050000               mov      r1, threadgroup_in_grid_x
   4: 72090100               mov      r2, threadgroup_in_grid_y
   8: 720d0200               mov      r3, threadgroup_in_grid_z
   c: 0e0d46c658000000       iadd     r3, r3.sx, u6.sx
  14: 0e0d46e658000000       iadd     r3, r3.sx, u7.sx
  1c: 1e13464219000000       imul     dr4, r3, u10
  24: 1e114a2659000000       imul     r4, r5.sx, u9.sx
  2c: 0e11468e64000000       isub     r4, r3.sx, r4.sx
  34: 0e194a1600000000       iadd     r6, r5.sx, 1
  3c: 12154822194ac024       csel     r5, r4, u9, r5, r6, ult
  44: 0e19486659000000       iadd     r6, r4.sx, u11.sx
  4c: 121148221948c024       csel     r4, r4, u9, r4, r6, ult
  54: 0e194a1600000000       iadd     r6, r5.sx, 1
  5c: 12154822194ac024       csel     r5, r4, u9, r5, r6, ult
  64: 0e19486659000000       iadd     r6, r4.sx, u11.sx
  6c: 121148221948c024       csel     r4, r4, u9, r4, r6, ult
  74: 1e1b4aa219000000       imul     dr6, r5, u13
  7c: 1e194e8659000000       imul     r6, r7.sx, u12.sx
  84: 0e154ace64000000       isub     r5, r5.sx, r6.sx
  8c: 0e194e1600000000       iadd     r6, r7.sx, 1
  94: 12194a82194ec024       csel     r6, r5, u12, r7, r6, ult
  9c: 0e1d4ac659000000       iadd     r7, r5.sx, u14.sx
  a4: 12154a82194ae024       csel     r5, r5, u12, r5, r7, ult
  ac: 0e1d4c1600000000       iadd     r7, r6.sx, 1
  b4: 12154a82194ce024       csel     r5, r5, u12, r6, r7, ult
  bc: 1e1b48e219000000       imul     dr6, r4, u15
  c4: 1e194e0659000000       imul     r6, r7.sx, u8.sx
  cc: 0e1148ce64000000       isub     r4, r4.sx, r6.sx
  d4: 0e194e1600000000       iadd     r6, r7.sx, 1
  dc: 12194802194ec024       csel     r6, r4, u8, r7, r6, ult
  e4: 0e1d48065a000000       iadd     r7, r4.sx, u16.sx
  ec: 121148021948e024       csel     r4, r4, u8, r4, r7, ult
  f4: 0e1d4c1600000000       iadd     r7, r6.sx, 1
  fc: 12114802194ce024       csel     r4, r4, u8, r6, r7, ult
 104: 1e114a465a480600       imadd    r4, r5.sx, u18.sx, r4.sx
 10c: 0e05428658000000       iadd     r1, r1.sx, u4.sx
 114: 1e1b42a21a000000       imul     dr6, r1, u21
 11c: 1e154e865a000000       imul     r5, r7.sx, u20.sx
 124: 0e0542ae64000000       isub     r1, r1.sx, r5.sx
 12c: 0e1542c65a000000       iadd     r5, r1.sx, u22.sx
 134: 121542821a42a024       csel     r5, r1, u20, r1, r5, ult
 13c: 0e194ac65a000000       iadd     r6, r5.sx, u22.sx
 144: 12194a821a4ac024       csel     r6, r5, u20, r5, r6, ult
 14c: 0e214e1600000000       iadd     r8, r7.sx, 1
 154: 120542821a4e0025       csel     r1, r1, u20, r7, r8, ult
 15c: 0e1d421600000000       iadd     r7, r1.sx, 1
 164: 12054a821a42e024       csel     r1, r5, u20, r1, r7, ult
 16c: 72153000               mov      r5, thread_in_threadgroup_x
 170: 2e1900c024060000       shl      r6, r6, 6
 178: 1e1d42265a000000       imul     r7, r1.sx, u17.sx
 180: 1e214c265b4e0600       imadd    r8, r6.sx, u25.sx, r7.sx
 188: 2ea1000025020000       shr      r8, r8, 2
 190: 1e1148665b500600       imadd    r4, r4.sx, u27.sx, r8.sx
 198: 0e0944a658000000       iadd     r2, r2.sx, u5.sx
 1a0: 2e09004024060000       shl      r2, r2, 6
 1a8: 1e2144e65a4e0600       imadd    r8, r2.sx, u23.sx, r7.sx
 1b0: 1e2146465b500600       imadd    r8, r3.sx, u26.sx, r8.sx
 1b8: 7e254a728000           and      r9, r5, 7
 1be: 0e29421600000000       iadd     r10, r1.sx, 1
 1c6: 1e2954265a000000       imul     r10, r10.sx, u17.sx
 1ce: 1229b04125b04125       csel     r10, u24, r10, u24, r10, ult
 1d6: 2ead00a024030000       shr      r11, r5, 3
 1de: 2ea1000025020000       shr      r8, r8, 2
 1e6: 7e314af28100           and      r12, r5, 31
 1ec: 7e3503a0a400           and      r13, 3, r5
 1f2: 2eb1008025020000       shr      r12, r12, 2
 1fa: 2eb900a064050000       bfeil    r14, 0, r5, 5, 1
 202: 2e9500a024060000       shr      r5, r5, 6
 20a: 62000000               ldimm    r0l, 0
 20e: 623d00000000           ldimm    r15, 0
 214: 624100000000           ldimm    r16, 0
 21a: 624500000000           ldimm    r17, 0
 220: 624900000000           ldimm    r18, 0
 226: 624d00000000           ldimm    r19, 0
 22c: 625100000000           ldimm    r20, 0
 232: 625500000000           ldimm    r21, 0
 238: 625900000000           ldimm    r22, 0
 23e: 625d00000000           ldimm    r23, 0
 244: 626100000000           ldimm    r24, 0
 24a: 626500000000           ldimm    r25, 0
 250: 626900000000           ldimm    r26, 0
 256: 626d00000000           ldimm    r27, 0
 25c: 627100000000           ldimm    r28, 0
 262: 627500000000           ldimm    r29, 0
 268: 627900000000           ldimm    r30, 0
 26e: 627d00000000           ldimm    r31, 0
 274: 6281000000000010       ldimm    r32, 0
 27c: 6285000000000010       ldimm    r33, 0
 284: 6289000000000010       ldimm    r34, 0
 28c: 628d000000000010       ldimm    r35, 0
 294: 6291000000000010       ldimm    r36, 0
 29c: 6295000000000010       ldimm    r37, 0
 2a4: 6299000000000010       ldimm    r38, 0
 2ac: 629d000000000010       ldimm    r39, 0
 2b4: 62a1000000000010       ldimm    r40, 0
 2bc: 62a5000000000010       ldimm    r41, 0
 2c4: 62a9000000000010       ldimm    r42, 0
 2cc: 62ad000000000010       ldimm    r43, 0
 2d4: 7e314e0a8010           mov      r44, r7
 2da: 7e35500a8010           mov      r45, r8
 2e0: 7e39480a8010           mov      r46, r4
 2e6: 621100000000           ldimm    r4, 0
 2ec: 621d00000000           ldimm    r7, 0
 2f2: 622100000000           ldimm    r8, 0
 2f8: 522c58422504           while    r44, r10, 1, ult
 2fe: 20c0203a0000           jmp_none 14880
 304: 1e3d56265b000010       imul     r47, r11.sx, u25.sx
 30c: 2ebd00e025020011       shr      r47, r47, 2
 314: 0e3d5ce665150000       iadd     r47, r46.sx, r47.sx
 31c: 0e3d5e2665140000       iadd     r47, r47.sx, r9.sx
 324: 0e41002065101000       iadd     r48, 0, r9.sx, lsl 2
 32c: 2ec1000026010011       shr      r48, r48, 1
 334: 1e45561601604610       imadd    r49, r11.sx, 17, r48.sx
 33c: 7e495ef28314           and      r50, r47, 63
 342: 0e490040e6110000       iadd     r50, 0, r50.sx, lsl 1
 34a: 2ecd004026050011       shr      r51, r50, 5
 352: 7e5164f28114           and      r52, r50, 31
 358: 2ed1008026040011       shr      r52, r52, 4
 360: 0e4d6866e6150000       iadd     r51, r52.sx, r51.sx, lsl 1
 368: 7e5564f28014           and      r53, r50, 15
 36e: 7e4964c29c15           and      r50, r50, u166
 374: 0e4964a6e6150000       iadd     r50, r50.sx, r53.sx, lsl 1
 37c: 7e59b8098010           mov      r54, u28
 382: 7e5dba098010           mov      r55, u29
 388: 2ebd00e025060011       shr      r47, r47, 6
 390: 0e555ee6e5151000       iadd     r53, r47.sx, r47.sx, lsl 3
 398: 2ee500a0261c0011       shr      r57, r53, 28
 3a0: 1e615e0601000016       imul     r56, r47.sx, 144
 3a8: 7e69700a8014           mov      r58, r56
 3ae: 7e6d720a8014           mov      r59, r57
 3b4: 0e6b6c4337150000       iadd     dr58, dr54, dr58
 3bc: 8578040570c13000       load     r47l_r47h, dr58, 0, i16, xy, a
 3c4: 0e55664600140000       iadd     r53, r51.sx, 4
 3cc: 12e566420066a0265014   csel     r57, r51, 4, r51, r53, ult
 3d6: 0e69664e00140000       isub     r58, r51.sx, 4
 3de: 12e96642006640275014   csel     r58, r51, 4, r51, r58, ult
 3e8: 12ed6642006a60265014   csel     r59, r51, 4, r53, r51, ult
 3f2: 0e71040067110000       iadd     r60, 4, r56.sx
 3fa: 0e65782667150000       iadd     r57, r60.sx, r57.sx
 402: 0504284e37c01000       load     r0h, du28, r57, i8, x, b
 40a: 0e65784667150000       iadd     r57, r60.sx, r58.sx
 412: 05c8280e37c11000       load     r57l, du28, r57, i8, x, a
 41a: 12e96642003001303014   csel     r58, r51, 4, 48, 192, ult
 424: 3800                   wait     a
 426: 7e757240a715           and      r61, r57l, r58
 42c: 12e56642000021300014   csel     r57, r51, 4, 0, 2, ult
 436: 7e6572f28114           and      r57, r57, 31
 43c: 2ef500a027724211       shr      r61, r61, r57
 444: 3801                   wait     b
 446: 7e7941f08010           and      r62, r0h, 15
 44c: 7e757caae715           or       r61, r62, r61
 452: 7e027af28307           and      r0h, r61, 255
 458: 0e5578a666150000       iadd     r53, r60.sx, r53.sx
 460: 05a8a80e36c11000       load     r53l, du28, r53, i8, x, a
 468: 12f56642000f01333014   csel     r61, r51, 4, 15, 240, ult
 472: 3800                   wait     a
 474: 7e756aa0a715           and      r61, r53l, r61
 47a: 12cd6642000041300014   csel     r51, r51, 4, 0, 4, ult
 484: 7e4d66f28114           and      r51, r51, 31
 48a: 2ecd00a027664211       shr      r51, r61, r51
 492: 0e55786667150000       iadd     r53, r60.sx, r59.sx
 49a: 05a8a80e36c11000       load     r53l, du28, r53, i8, x, a
 4a2: 3800                   wait     a
 4a4: 7e696a40a715           and      r58, r53l, r58
 4aa: 2ed5004027724211       shr      r53, r58, r57
 4b2: 7e4d66aae615           or       r51, r51, r53
 4b8: 7e4c66f28317           and      r51l, r51, 255
 4be: 3ed500140410           u8_to_f  r53, r0h, rte
 4c4: 1ad55ea02615           fmul     r53, r47l, r53
 4ca: 3ee500640611           u8_to_f  r57, r51l, rte
 4d0: 1acd5f202715           fmul     r51, r47h, r57
 4d6: 0e3d100067110000       iadd     r47, 16, r56.sx
 4de: 2ec9004026020011       shr      r50, r50, 2
 4e6: 0e615e4666151000       iadd     r56, r47.sx, r50.sx, lsl 2
 4ee: 7e65c8098014           mov      r57, u164
 4f4: 0e636c0337150000       iadd     dr56, dr54, dr56
 4fc: 0579000570c11200       load     r47, dr56, 0, i32, x, a
 504: 0e49008066111000       iadd     r50, 0, r52.sx, lsl 2
 50c: 7e4964f28114           and      r50, r50, 31
 512: 3800                   wait     a
 514: 2ebd00e025644211       shr      r47, r47, r50
 51c: 7e3d5ea29c15           and      r47, r47, u165
 522: 7e025ef28307           and      r0h, r47, 255
 528: 2ec900e025080011       shr      r50, r47, 8
 530: 7e4864f28317           and      r50l, r50, 255
 536: 7e4a5f088014           mov      r50h, r47h
 53c: 7e4a65f08317           and      r50h, r50h, 255
 542: 2ebd00e025180011       shr      r47, r47, 24
 54a: 7e3c5ef28317           and      r47l, r47, 255
 550: 3ed100140410           u8_to_f  r52, r0h, rte
 556: 3ae16a8226664a15       ffma     r56, r53, r52, r51.neg
 55e: 3ed100440611           u8_to_f  r52, r50l, rte
 564: 3ae56a8226664a15       ffma     r57, r53, r52, r51.neg
 56c: 0e450020e6111000       iadd     r49, 0, r49.sx, lsl 3
 574: 7e0262088004           mov      r0h, r49l
 57a: 29e1010234000010       lstore   r56_r57, r0h, 0, i32, xy
 582: 3ed100540611           u8_to_f  r52, r50h, rte
 588: 3ae16a8226664a15       ffma     r56, r53, r52, r51.neg
 590: 3ec900e40511           u8_to_f  r50, r47l, rte
 596: 3ae56a4226664a15       ffma     r57, r53, r50, r51.neg
 59e: 0e3d628600140000       iadd     r47, r49.sx, 8
 5a6: 29e11e0234000014       lstore   r56_r57, r47l, 0, i32, xy
 5ae: 0e3d560601100000       iadd     r47, r11.sx, 16
 5b6: 1e495e265b000014       imul     r50, r47.sx, u25.sx
 5be: 2ec9004026020011       shr      r50, r50, 2
 5c6: 0e495c4666150000       iadd     r50, r46.sx, r50.sx
 5ce: 0e49642665140000       iadd     r50, r50.sx, r9.sx
 5d6: 1e4d5e1601604614       imadd    r51, r47.sx, 17, r48.sx
 5de: 7e5164f28314           and      r52, r50, 63
 5e4: 0e510080e6110000       iadd     r52, 0, r52.sx, lsl 1
 5ec: 2ed5008026050011       shr      r53, r52, 5
 5f4: 7e6168f28114           and      r56, r52, 31
 5fa: 2ee1000027040011       shr      r56, r56, 4
 602: 0e5570a6e6150000       iadd     r53, r56.sx, r53.sx, lsl 1
 60a: 7e6568f28014           and      r57, r52, 15
 610: 7e5168c29c15           and      r52, r52, u166
 616: 0e516826e7150000       iadd     r52, r52.sx, r57.sx, lsl 1
 61e: 2ec9004026060011       shr      r50, r50, 6
 626: 0e656446e6151000       iadd     r57, r50.sx, r50.sx, lsl 3
 62e: 2eed0020271c0011       shr      r59, r57, 28
 636: 1e69640601000016       imul     r58, r50.sx, 144
 63e: 7e71740a8014           mov      r60, r58
 644: 7e75760a8014           mov      r61, r59
 64a: 0e736c8337150000       iadd     dr60, dr54, dr60
 652: 8590080570c13000       load     r50l_r50h, dr60, 0, i16, xy, a
 65a: 0e656a4600140000       iadd     r57, r53.sx, 4
 662: 12ed6a42006a20275014   csel     r59, r53, 4, r53, r57, ult
 66c: 0e716a4e00140000       isub     r60, r53.sx, 4
 674: 12f16a42006a80275014   csel     r60, r53, 4, r53, r60, ult
 67e: 12f56a420072a0265014   csel     r61, r53, 4, r57, r53, ult
 688: 0e79044067110000       iadd     r62, 4, r58.sx
 690: 0e6d7c6667150000       iadd     r59, r62.sx, r59.sx
 698: 0504684e37c01000       load     r0h, du28, r59, i8, x, b
 6a0: 0e6d7c8667150000       iadd     r59, r62.sx, r60.sx
 6a8: 05d8680e37c11000       load     r59l, du28, r59, i8, x, a
 6b0: 12f16a42003001303014   csel     r60, r53, 4, 48, 192, ult
 6ba: 3800                   wait     a
 6bc: 7e7d7680a715           and      r63, r59l, r60
 6c2: 12ed6a42000021300014   csel     r59, r53, 4, 0, 2, ult
 6cc: 7e6d76f28114           and      r59, r59, 31
 6d2: 2efd00e027764211       shr      r63, r63, r59
 6da: 3801                   wait     b
 6dc: 7e0141f08020           and      r64, r0h, 15
 6e2: 7e7d40eae719           or       r63, r64, r63
 6e8: 7e027ef28307           and      r0h, r63, 255
 6ee: 0e657c2667150000       iadd     r57, r62.sx, r57.sx
 6f6: 05c8280e37c11000       load     r57l, du28, r57, i8, x, a
 6fe: 12fd6a42000f01333014   csel     r63, r53, 4, 15, 240, ult
 708: 3800                   wait     a
 70a: 7e7d72e0a715           and      r63, r57l, r63
 710: 12d56a42000041300014   csel     r53, r53, 4, 0, 4, ult
 71a: 7e556af28114           and      r53, r53, 31
 720: 2ed500e0276a4211       shr      r53, r63, r53
 728: 0e657ca667150000       iadd     r57, r62.sx, r61.sx
 730: 05c8280e37c11000       load     r57l, du28, r57, i8, x, a
 738: 3800                   wait     a
 73a: 7e717280a715           and      r60, r57l, r60
 740: 2ee5008027764211       shr      r57, r60, r59
 748: 7e556a2ae715           or       r53, r53, r57
 74e: 7e546af28317           and      r53l, r53, 255
 754: 3ee500140410           u8_to_f  r57, r0h, rte
 75a: 1ae564202715           fmul     r57, r50l, r57
 760: 3eed00a40611           u8_to_f  r59, r53l, rte
 766: 1ad565602715           fmul     r53, r50h, r59
 76c: 0e49104067110000       iadd     r50, 16, r58.sx
 774: 2ed1008026020011       shr      r52, r52, 2
 77c: 0e69648666151000       iadd     r58, r50.sx, r52.sx, lsl 2
 784: 7e6dc8098014           mov      r59, u164
 78a: 0e6b6c4337150000       iadd     dr58, dr54, dr58
 792: 0591040570c11200       load     r50, dr58, 0, i32, x, a
 79a: 0e51000067111000       iadd     r52, 0, r56.sx, lsl 2
 7a2: 7e5168f28114           and      r52, r52, 31
 7a8: 3800                   wait     a
 7aa: 2ec9004026684211       shr      r50, r50, r52
 7b2: 7e4964a29c15           and      r50, r50, u165
 7b8: 7e0264f28307           and      r0h, r50, 255
 7be: 2ed1004026080011       shr      r52, r50, 8
 7c6: 7e5068f28317           and      r52l, r52, 255
 7cc: 7e5265088014           mov      r52h, r50h
 7d2: 7e5269f08317           and      r52h, r52h, 255
 7d8: 2ec9004026180011       shr      r50, r50, 24
 7e0: 7e4864f28317           and      r50l, r50, 255
 7e6: 3ee100140410           u8_to_f  r56, r0h, rte
 7ec: 3ae97202276a4a15       ffma     r58, r57, r56, r53.neg
 7f4: 3ee100840611           u8_to_f  r56, r52l, rte
 7fa: 3aed7202276a4a15       ffma     r59, r57, r56, r53.neg
 802: 0e4d0060e6111000       iadd     r51, 0, r51.sx, lsl 3
 80a: 7e0266088004           mov      r0h, r51l
 810: 29e9010234000010       lstore   r58_r59, r0h, 0, i32, xy
 818: 3ee100940611           u8_to_f  r56, r52h, rte
 81e: 3ae97202276a4a15       ffma     r58, r57, r56, r53.neg
 826: 3ed100440611           u8_to_f  r52, r50l, rte
 82c: 3aed7282266a4a15       ffma     r59, r57, r52, r53.neg
 834: 0e49668600140000       iadd     r50, r51.sx, 8
 83c: 29e9240234000014       lstore   r58_r59, r50l, 0, i32, xy
 844: 0e49560602100000       iadd     r50, r11.sx, 32
 84c: 1e5164265b000014       imul     r52, r50.sx, u25.sx
 854: 2ed1008026020011       shr      r52, r52, 2
 85c: 0e515c8666150000       iadd     r52, r46.sx, r52.sx
 864: 0e51682665140000       iadd     r52, r52.sx, r9.sx
 86c: 1e55641601604614       imadd    r53, r50.sx, 17, r48.sx
 874: 7e6168f28314           and      r56, r52, 63
 87a: 0e610000e7110000       iadd     r56, 0, r56.sx, lsl 1
 882: 2ee5000027050011       shr      r57, r56, 5
 88a: 7e6970f28114           and      r58, r56, 31
 890: 2ee9004027040011       shr      r58, r58, 4
 898: 0e657426e7150000       iadd     r57, r58.sx, r57.sx, lsl 1
 8a0: 7e6d70f28014           and      r59, r56, 15
 8a6: 7e6170c29c15           and      r56, r56, u166
 8ac: 0e617066e7150000       iadd     r56, r56.sx, r59.sx, lsl 1
 8b4: 2ed1008026060011       shr      r52, r52, 6
 8bc: 0e6d6886e6151000       iadd     r59, r52.sx, r52.sx, lsl 3
 8c4: 2ef50060271c0011       shr      r61, r59, 28
 8cc: 1e71680601000016       imul     r60, r52.sx, 144
 8d4: 7e79780a8014           mov      r62, r60
 8da: 7e7d7a0a8014           mov      r63, r61
 8e0: 0e7b6cc337150000       iadd     dr62, dr54, dr62
 8e8: 85a00c0570c13000       load     r52l_r52h, dr62, 0, i16, xy, a
 8f0: 0e6d724600140000       iadd     r59, r57.sx, 4
 8f8: 12f57242007260275014   csel     r61, r57, 4, r57, r59, ult
 902: 0e79724e00140000       isub     r62, r57.sx, 4
 90a: 12f972420072c0275014   csel     r62, r57, 4, r57, r62, ult
 914: 12fd7242007620275014   csel     r63, r57, 4, r59, r57, ult
 91e: 0e01048067210000       iadd     r64, 4, r60.sx
 926: 0e7540a667190000       iadd     r61, r64.sx, r61.sx
 92e: 0504a84e37c01000       load     r0h, du28, r61, i8, x, b
 936: 0e7540c667190000       iadd     r61, r64.sx, r62.sx
 93e: 05e8a80e37c11000       load     r61l, du28, r61, i8, x, a
 946: 12f97242003001303014   csel     r62, r57, 4, 48, 192, ult
 950: 3800                   wait     a
 952: 7e057ac0a725           and      r65, r61l, r62
 958: 12f57242000021300014   csel     r61, r57, 4, 0, 2, ult
 962: 7e757af28114           and      r61, r61, 31
 968: 2e850020247a4222       shr      r65, r65, r61
 970: 3801                   wait     b
 972: 7e0941f08020           and      r66, r0h, 15
 978: 7e05442ae42a           or       r65, r66, r65
 97e: 7e0242f2830b           and      r0h, r65, 255
 984: 0e6d406667190000       iadd     r59, r64.sx, r59.sx
 98c: 05d8680e37c11000       load     r59l, du28, r59, i8, x, a
 994: 12857242000f01333024   csel     r65, r57, 4, 15, 240, ult
 99e: 3800                   wait     a
 9a0: 7e057620a426           and      r65, r59l, r65
 9a6: 12e57242000041300014   csel     r57, r57, 4, 0, 4, ult
 9b0: 7e6572f28114           and      r57, r57, 31
 9b6: 2ee5002024724212       shr      r57, r65, r57
 9be: 0e6d40e667190000       iadd     r59, r64.sx, r63.sx
 9c6: 05d8680e37c11000       load     r59l, du28, r59, i8, x, a
 9ce: 3800                   wait     a
 9d0: 7e7976c0a715           and      r62, r59l, r62
 9d6: 2eed00c0277a4211       shr      r59, r62, r61
 9de: 7e65726ae715           or       r57, r57, r59
 9e4: 7e6472f28317           and      r57l, r57, 255
 9ea: 3eed00140410           u8_to_f  r59, r0h, rte
 9f0: 1aed68602715           fmul     r59, r52l, r59
 9f6: 3ef500240711           u8_to_f  r61, r57l, rte
 9fc: 1ae569a02715           fmul     r57, r52h, r61
 a02: 0e51108067110000       iadd     r52, 16, r60.sx
 a0a: 2ee1000027020011       shr      r56, r56, 2
 a12: 0e71680667151000       iadd     r60, r52.sx, r56.sx, lsl 2
 a1a: 7e75c8098014           mov      r61, u164
 a20: 0e736c8337150000       iadd     dr60, dr54, dr60
 a28: 05a1080570c11200       load     r52, dr60, 0, i32, x, a
 a30: 0e61004067111000       iadd     r56, 0, r58.sx, lsl 2
 a38: 7e6170f28114           and      r56, r56, 31
 a3e: 3800                   wait     a
 a40: 2ed1008026704211       shr      r52, r52, r56
 a48: 7e5168a29c15           and      r52, r52, u165
 a4e: 7e0268f28307           and      r0h, r52, 255
 a54: 2ee1008026080011       shr      r56, r52, 8
 a5c: 7e6070f28317           and      r56l, r56, 255
 a62: 7e6269088014           mov      r56h, r52h
 a68: 7e6271f08317           and      r56h, r56h, 255
 a6e: 2ed1008026180011       shr      r52, r52, 24
 a76: 7e5068f28317           and      r52l, r52, 255
 a7c: 3ee900140410           u8_to_f  r58, r0h, rte
 a82: 3af1764227724a15       ffma     r60, r59, r58, r57.neg
 a8a: 3ee900040711           u8_to_f  r58, r56l, rte
 a90: 3af5764227724a15       ffma     r61, r59, r58, r57.neg
 a98: 0e5500a0e6111000       iadd     r53, 0, r53.sx, lsl 3
 aa0: 7e026a088004           mov      r0h, r53l
 aa6: 29f1010234000010       lstore   r60_r61, r0h, 0, i32, xy
 aae: 3ee900140711           u8_to_f  r58, r56h, rte
 ab4: 3af1764227724a15       ffma     r60, r59, r58, r57.neg
 abc: 3ee100840611           u8_to_f  r56, r52l, rte
 ac2: 3af5760227724a15       ffma     r61, r59, r56, r57.neg
 aca: 0e516a8600140000       iadd     r52, r53.sx, 8
 ad2: 29f1280234000014       lstore   r60_r61, r52l, 0, i32, xy
 ada: 0e51560603100000       iadd     r52, r11.sx, 48
 ae2: 1e6168265b000014       imul     r56, r52.sx, u25.sx
 aea: 2ee1000027020011       shr      r56, r56, 2
 af2: 0e615c0667150000       iadd     r56, r46.sx, r56.sx
 afa: 0e61702665140000       iadd     r56, r56.sx, r9.sx
 b02: 1e41681601604614       imadd    r48, r52.sx, 17, r48.sx
 b0a: 7e6570f28314           and      r57, r56, 63
 b10: 0e650020e7110000       iadd     r57, 0, r57.sx, lsl 1
 b18: 2ee9002027050011       shr      r58, r57, 5
 b20: 7e6d72f28114           and      r59, r57, 31
 b26: 2eed006027040011       shr      r59, r59, 4
 b2e: 0e697646e7150000       iadd     r58, r59.sx, r58.sx, lsl 1
 b36: 7e7172f28014           and      r60, r57, 15
 b3c: 7e6572c29c15           and      r57, r57, u166
 b42: 0e657286e7150000       iadd     r57, r57.sx, r60.sx, lsl 1
 b4a: 2ee1000027060011       shr      r56, r56, 6
 b52: 0e717006e7151000       iadd     r60, r56.sx, r56.sx, lsl 3
 b5a: 2ef50080271c0011       shr      r61, r60, 28
 b62: 1e71700601000016       imul     r60, r56.sx, 144
 b6a: 7e79780a8014           mov      r62, r60
 b70: 7e7d7a0a8014           mov      r63, r61
 b76: 0e7b6cc337150000       iadd     dr62, dr54, dr62
 b7e: 85c00c0570c13000       load     r56l_r56h, dr62, 0, i16, xy, a
 b86: 0e75744600140000       iadd     r61, r58.sx, 4
 b8e: 12f974420074a0275014   csel     r62, r58, 4, r58, r61, ult
 b98: 0e7d744e00140000       isub     r63, r58.sx, 4
 ba0: 12fd74420074e0275014   csel     r63, r58, 4, r58, r63, ult
 baa: 12817442007a40275024   csel     r64, r58, 4, r61, r58, ult
 bb4: 0e05048067210000       iadd     r65, 4, r60.sx
 bbc: 0e7942c667190000       iadd     r62, r65.sx, r62.sx
 bc4: 0504c84e37c01000       load     r0h, du28, r62, i8, x, b
 bcc: 0e7942e667190000       iadd     r62, r65.sx, r63.sx
 bd4: 05f0c80e37c11000       load     r62l, du28, r62, i8, x, a
 bdc: 12fd7442003001303014   csel     r63, r58, 4, 48, 192, ult
 be6: 3800                   wait     a
 be8: 7e097ce0a725           and      r66, r62l, r63
 bee: 12f97442000021300014   csel     r62, r58, 4, 0, 2, ult
 bf8: 7e797cf28114           and      r62, r62, 31
 bfe: 2e890040247c4222       shr      r66, r66, r62
 c06: 3801                   wait     b
 c08: 7e0d41f08020           and      r67, r0h, 15
 c0e: 7e09464ae42a           or       r66, r67, r66
 c14: 7e0244f2830b           and      r0h, r66, 255
 c1a: 0e7542a667190000       iadd     r61, r65.sx, r61.sx
 c22: 05e8a80e37c11000       load     r61l, du28, r61, i8, x, a
 c2a: 12897442000f01333024   csel     r66, r58, 4, 15, 240, ult
 c34: 3800                   wait     a
 c36: 7e097a40a426           and      r66, r61l, r66
 c3c: 12e97442000041300014   csel     r58, r58, 4, 0, 4, ult
 c46: 7e6974f28114           and      r58, r58, 31
 c4c: 2ee9004024744212       shr      r58, r66, r58
 c54: 0e754206641a0000       iadd     r61, r65.sx, r64.sx
 c5c: 05e8a80e37c11000       load     r61l, du28, r61, i8, x, a
 c64: 3800                   wait     a
 c66: 7e7d7ae0a715           and      r63, r61l, r63
 c6c: 2ef500e0277c4211       shr      r61, r63, r62
 c74: 7e6974aae715           or       r58, r58, r61
 c7a: 7e6874f28317           and      r58l, r58, 255
 c80: 3ef500140410           u8_to_f  r61, r0h, rte
 c86: 1af570a02715           fmul     r61, r56l, r61
 c8c: 3ef900440711           u8_to_f  r62, r58l, rte
 c92: 1ae971c02715           fmul     r58, r56h, r62
 c98: 0e61108067110000       iadd     r56, 16, r60.sx
 ca0: 2ee5002027020011       shr      r57, r57, 2
 ca8: 0e61702667151000       iadd     r56, r56.sx, r57.sx, lsl 2
 cb0: 7e79700a8014           mov      r62, r56
 cb6: 7e7dc8098014           mov      r63, u164
 cbc: 0e5b6cc337150000       iadd     dr54, dr54, dr62
 cc4: 05b10c0560c11200       load     r54, dr54, 0, i32, x, a
 ccc: 0e5d006067111000       iadd     r55, 0, r59.sx, lsl 2
 cd4: 7e5d6ef28114           and      r55, r55, 31
 cda: 3800                   wait     a
 cdc: 2ed900c0266e4211       shr      r54, r54, r55
 ce4: 7e596ca29c15           and      r54, r54, u165
 cea: 7e026cf28307           and      r0h, r54, 255
 cf0: 2edd00c026080011       shr      r55, r54, 8
 cf8: 7e5c6ef28317           and      r55l, r55, 255
 cfe: 7e5e6d088014           mov      r55h, r54h
 d04: 7e5e6ff08317           and      r55h, r55h, 255
 d0a: 2ed900c026180011       shr      r54, r54, 24
 d12: 7e586cf28317           and      r54l, r54, 255
 d18: 3ee100140410           u8_to_f  r56, r0h, rte
 d1e: 3ae17a0227744a15       ffma     r56, r61, r56, r58.neg
 d26: 3ee500e40611           u8_to_f  r57, r55l, rte
 d2c: 3ae57a2227744a15       ffma     r57, r61, r57, r58.neg
 d34: 0e410000e6111000       iadd     r48, 0, r48.sx, lsl 3
 d3c: 7e0260088004           mov      r0h, r48l
 d42: 29e1010234000010       lstore   r56_r57, r0h, 0, i32, xy
 d4a: 3ee100f40611           u8_to_f  r56, r55h, rte
 d50: 3ae17a0227744a15       ffma     r56, r61, r56, r58.neg
 d58: 3ed900c40611           u8_to_f  r54, r54l, rte
 d5e: 3ae57ac226744a15       ffma     r57, r61, r54, r58.neg
 d66: 0e59608600140000       iadd     r54, r48.sx, 8
 d6e: 29e12c0234000014       lstore   r56_r57, r54l, 0, i32, xy
 d76: 1e5956e65a000010       imul     r54, r11.sx, u23.sx
 d7e: 2ed900c026020011       shr      r54, r54, 2
 d86: 0e595ac666150000       iadd     r54, r45.sx, r54.sx
 d8e: 0e596c2665140000       iadd     r54, r54.sx, r9.sx
 d96: 05c1cc0e36c9f200       load     r56_r57_r58_r59, du30, r54, lsl 2, i32, xyzw, a
 d9e: 0e59c42566150000       iadd     r54, u162.sx, r49.sx
 da6: 3800                   wait     a
 da8: 29e12c0234000014       lstore   r56_r57, r54l, 0, i32, xy
 db0: 0e45c62566150000       iadd     r49, u163.sx, r49.sx
 db8: 29e9220234000014       lstore   r58_r59, r49l, 0, i32, xy
 dc0: 1e3d5ee65a000014       imul     r47, r47.sx, u23.sx
 dc8: 2ebd00e025020011       shr      r47, r47, 2
 dd0: 0e3d5ae665150000       iadd     r47, r45.sx, r47.sx
 dd8: 0e3d5e2665140000       iadd     r47, r47.sx, r9.sx
 de0: 05c1ec0e35c9f200       load     r56_r57_r58_r59, du30, r47, lsl 2, i32, xyzw, a
 de8: 0e3dc46566150000       iadd     r47, u162.sx, r51.sx
 df0: 3800                   wait     a
 df2: 29e11e0234000014       lstore   r56_r57, r47l, 0, i32, xy
 dfa: 0e3dc66566150000       iadd     r47, u163.sx, r51.sx
 e02: 29e91e0234000014       lstore   r58_r59, r47l, 0, i32, xy
 e0a: 1e3d64e65a000014       imul     r47, r50.sx, u23.sx
 e12: 2ebd00e025020011       shr      r47, r47, 2
 e1a: 0e3d5ae665150000       iadd     r47, r45.sx, r47.sx
 e22: 0e3d5e2665140000       iadd     r47, r47.sx, r9.sx
 e2a: 05c1ec0e35c9f200       load     r56_r57_r58_r59, du30, r47, lsl 2, i32, xyzw, a
 e32: 0e3dc4a566150000       iadd     r47, u162.sx, r53.sx
 e3a: 3800                   wait     a
 e3c: 29e11e0234000014       lstore   r56_r57, r47l, 0, i32, xy
 e44: 0e3dc6a566150000       iadd     r47, u163.sx, r53.sx
 e4c: 29e91e0234000014       lstore   r58_r59, r47l, 0, i32, xy
 e54: 1e3d68e65a000014       imul     r47, r52.sx, u23.sx
 e5c: 2ebd00e025020011       shr      r47, r47, 2
 e64: 0e3d5ae665150000       iadd     r47, r45.sx, r47.sx
 e6c: 0e3d5e2665140000       iadd     r47, r47.sx, r9.sx
 e74: 05a1ec0e35c9f200       load     r52_r53_r54_r55, du30, r47, lsl 2, i32, xyzw, a
 e7c: 0e3dc40566150000       iadd     r47, u162.sx, r48.sx
 e84: 3800                   wait     a
 e86: 29d11e0234000014       lstore   r52_r53, r47l, 0, i32, xy
 e8e: 0e3dc60566150000       iadd     r47, u163.sx, r48.sx
 e96: 29d91e0234000014       lstore   r54_r55, r47l, 0, i32, xy
 e9e: 6800                   barrier
 ea0: 2e3d00c025050010       shl      r47, r14, 5
 ea8: 0e3d5ea665141000       iadd     r47, r47.sx, r13.sx, lsl 2
 eb0: 1e3d5e8600000016       imul     r47, r47.sx, 136
 eb8: 7e025e088004           mov      r0h, r47l
 ebe: 69c1010234000010       lload    r48_r49, r0h, 0, i32, xy
 ec6: 0e495e8600160000       iadd     r50, r47.sx, 136
 ece: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
 ed6: 0e515ee65d160000       iadd     r52, r47.sx, u207.sx
 ede: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
 ee6: 0e595ea65d170000       iadd     r54, r47.sx, u237.sx
 eee: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
 ef6: 62e1800800000010       ldimm    r56, 2176
 efe: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
 f06: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
 f0e: 0e695ee65c160000       iadd     r58, r47.sx, u199.sx
 f16: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
 f1e: 0e715e265d150000       iadd     r60, r47.sx, u169.sx
 f26: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
 f2e: 62f9180a00000010       ldimm    r62, 2584
 f36: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
 f3e: 69f93c0234000014       lload    r62_r63, r62l, 0, i32, xy
 f46: 2e0100a024050020       shl      r64, r5, 5
 f4e: 0e014086e5280000       iadd     r64, r64.sx, r12.sx, lsl 1
 f56: 1e0140860000002a       imul     r64, r64.sx, 136
 f5e: 0e05c40564260000       iadd     r65, u162.sx, r64.sx
 f66: 6989020234000028       lload    r66_r67, r65l, 0, i32, xy
 f6e: 3aa9626224544216       ffma     r42, r49, r67, r42
 f76: 3aa9604224544216       ffma     r42, r48, r66, r42
 f7e: 3aad666224564216       ffma     r43, r51, r67, r43
 f86: 3aad644224564216       ffma     r43, r50, r66, r43
 f8e: 3aa16a6224504216       ffma     r40, r53, r67, r40
 f96: 3aa1684224504216       ffma     r40, r52, r66, r40
 f9e: 3aa56e6224524216       ffma     r41, r55, r67, r41
 fa6: 3aa56c4224524216       ffma     r41, r54, r66, r41
 fae: 3a997262244c4216       ffma     r38, r57, r67, r38
 fb6: 3a997042244c4216       ffma     r38, r56, r66, r38
 fbe: 3a9d7662244e4216       ffma     r39, r59, r67, r39
 fc6: 3a9d7442244e4216       ffma     r39, r58, r66, r39
 fce: 3a917a6224484216       ffma     r36, r61, r67, r36
 fd6: 3a91784224484216       ffma     r36, r60, r66, r36
 fde: 3a957e62244a4216       ffma     r37, r63, r67, r37
 fe6: 3a957c42244a4216       ffma     r37, r62, r66, r37
 fee: 0e05de05642e0000       iadd     r65, u239.sx, r64.sx
 ff6: 6989020234000028       lload    r66_r67, r65l, 0, i32, xy
 ffe: 3a89626224444216       ffma     r34, r49, r67, r34
1006: 3a89604224444216       ffma     r34, r48, r66, r34
100e: 3a8d666224464216       ffma     r35, r51, r67, r35
1016: 3a8d644224464216       ffma     r35, r50, r66, r35
101e: 3a816a6224404216       ffma     r32, r53, r67, r32
1026: 3a81684224404216       ffma     r32, r52, r66, r32
102e: 3a856e6224424216       ffma     r33, r55, r67, r33
1036: 3a856c4224424216       ffma     r33, r54, r66, r33
103e: 3af97262247c0206       ffma     r30, r57, r67, r30
1046: 3af97042247c0206       ffma     r30, r56, r66, r30
104e: 3afd7662247e0206       ffma     r31, r59, r67, r31
1056: 3afd7442247e0206       ffma     r31, r58, r66, r31
105e: 3af17a6224780206       ffma     r28, r61, r67, r28
1066: 3af1784224780206       ffma     r28, r60, r66, r28
106e: 3af57e62247a0206       ffma     r29, r63, r67, r29
1076: 3af57c42247a0206       ffma     r29, r62, r66, r29
107e: 0e05d60564260000       iadd     r65, u171.sx, r64.sx
1086: 6989020234000028       lload    r66_r67, r65l, 0, i32, xy
108e: 3ae9626224740206       ffma     r26, r49, r67, r26
1096: 3ae9604224740206       ffma     r26, r48, r66, r26
109e: 3aed666224760206       ffma     r27, r51, r67, r27
10a6: 3aed644224760206       ffma     r27, r50, r66, r27
10ae: 3ae16a6224700206       ffma     r24, r53, r67, r24
10b6: 3ae1684224700206       ffma     r24, r52, r66, r24
10be: 3ae56e6224720206       ffma     r25, r55, r67, r25
10c6: 3ae56c4224720206       ffma     r25, r54, r66, r25
10ce: 3ad97262246c0206       ffma     r22, r57, r67, r22
10d6: 3ad97042246c0206       ffma     r22, r56, r66, r22
10de: 3add7662246e0206       ffma     r23, r59, r67, r23
10e6: 3add7442246e0206       ffma     r23, r58, r66, r23
10ee: 3ad17a6224680206       ffma     r20, r61, r67, r20
10f6: 3ad1784224680206       ffma     r20, r60, r66, r20
10fe: 3ad57e62246a0206       ffma     r21, r63, r67, r21
1106: 3ad57c42246a0206       ffma     r21, r62, r66, r21
110e: 0e05fa05642e0000       iadd     r65, u253.sx, r64.sx
1116: 6989020234000028       lload    r66_r67, r65l, 0, i32, xy
111e: 3ac9626224640206       ffma     r18, r49, r67, r18
1126: 3ac9604224640206       ffma     r18, r48, r66, r18
112e: 3acd666224660206       ffma     r19, r51, r67, r19
1136: 3acd644224660206       ffma     r19, r50, r66, r19
113e: 3ac16a6224600206       ffma     r16, r53, r67, r16
1146: 3ac1684224600206       ffma     r16, r52, r66, r16
114e: 3ac56e6224620206       ffma     r17, r55, r67, r17
1156: 3ac56c4224620206       ffma     r17, r54, r66, r17
115e: 3aa1726224500206       ffma     r8, r57, r67, r8
1166: 3aa1704224500206       ffma     r8, r56, r66, r8
116e: 3abd7662245e0206       ffma     r15, r59, r67, r15
1176: 3abd7442245e0206       ffma     r15, r58, r66, r15
117e: 3a917a6224480206       ffma     r4, r61, r67, r4
1186: 3a91784224480206       ffma     r4, r60, r66, r4
118e: 3a9d7e62244e0206       ffma     r7, r63, r67, r7
1196: 3a9d7c42244e0206       ffma     r7, r62, r66, r7
119e: 0e415e8600140000       iadd     r48, r47.sx, 8
11a6: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
11ae: 0e495e0601160000       iadd     r50, r47.sx, 144
11b6: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
11be: 0e515e265e160000       iadd     r52, r47.sx, u209.sx
11c6: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
11ce: 62d9a00100000010       ldimm    r54, 416
11d6: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
11de: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
11e6: 62e1880800000010       ldimm    r56, 2184
11ee: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
11f6: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
11fe: 0e695ec65c160000       iadd     r58, r47.sx, u198.sx
1206: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
120e: 0e715e465d150000       iadd     r60, r47.sx, u170.sx
1216: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
121e: 0e795e065f170000       iadd     r62, r47.sx, u248.sx
1226: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
122e: 0e79c60564160000       iadd     r62, u163.sx, r64.sx
1236: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
123e: 3aa962a224544216       ffma     r42, r49, r69, r42
1246: 3aa9608224544216       ffma     r42, r48, r68, r42
124e: 3aad66a224564216       ffma     r43, r51, r69, r43
1256: 3aad648224564216       ffma     r43, r50, r68, r43
125e: 3aa16aa224504216       ffma     r40, r53, r69, r40
1266: 3aa1688224504216       ffma     r40, r52, r68, r40
126e: 3aa56ea224524216       ffma     r41, r55, r69, r41
1276: 3aa56c8224524216       ffma     r41, r54, r68, r41
127e: 3a9972a2244c4216       ffma     r38, r57, r69, r38
1286: 3a997082244c4216       ffma     r38, r56, r68, r38
128e: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
1296: 3a9d7482244e4216       ffma     r39, r58, r68, r39
129e: 3a917aa224484216       ffma     r36, r61, r69, r36
12a6: 3a91788224484216       ffma     r36, r60, r68, r36
12ae: 3a9546a2244a421a       ffma     r37, r67, r69, r37
12b6: 3a954482244a421a       ffma     r37, r66, r68, r37
12be: 0e79ea05641e0000       iadd     r62, u245.sx, r64.sx
12c6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
12ce: 3a8962a224444216       ffma     r34, r49, r69, r34
12d6: 3a89608224444216       ffma     r34, r48, r68, r34
12de: 3a8d66a224464216       ffma     r35, r51, r69, r35
12e6: 3a8d648224464216       ffma     r35, r50, r68, r35
12ee: 3a816aa224404216       ffma     r32, r53, r69, r32
12f6: 3a81688224404216       ffma     r32, r52, r68, r32
12fe: 3a856ea224424216       ffma     r33, r55, r69, r33
1306: 3a856c8224424216       ffma     r33, r54, r68, r33
130e: 3af972a2247c0206       ffma     r30, r57, r69, r30
1316: 3af97082247c0206       ffma     r30, r56, r68, r30
131e: 3afd76a2247e0206       ffma     r31, r59, r69, r31
1326: 3afd7482247e0206       ffma     r31, r58, r68, r31
132e: 3af17aa224780206       ffma     r28, r61, r69, r28
1336: 3af1788224780206       ffma     r28, r60, r68, r28
133e: 3af546a2247a020a       ffma     r29, r67, r69, r29
1346: 3af54482247a020a       ffma     r29, r66, r68, r29
134e: 0e79da0564160000       iadd     r62, u173.sx, r64.sx
1356: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
135e: 3ae962a224740206       ffma     r26, r49, r69, r26
1366: 3ae9608224740206       ffma     r26, r48, r68, r26
136e: 3aed66a224760206       ffma     r27, r51, r69, r27
1376: 3aed648224760206       ffma     r27, r50, r68, r27
137e: 3ae16aa224700206       ffma     r24, r53, r69, r24
1386: 3ae1688224700206       ffma     r24, r52, r68, r24
138e: 3ae56ea224720206       ffma     r25, r55, r69, r25
1396: 3ae56c8224720206       ffma     r25, r54, r68, r25
139e: 3ad972a2246c0206       ffma     r22, r57, r69, r22
13a6: 3ad97082246c0206       ffma     r22, r56, r68, r22
13ae: 3add76a2246e0206       ffma     r23, r59, r69, r23
13b6: 3add7482246e0206       ffma     r23, r58, r68, r23
13be: 3ad17aa224680206       ffma     r20, r61, r69, r20
13c6: 3ad1788224680206       ffma     r20, r60, r68, r20
13ce: 3ad546a2246a020a       ffma     r21, r67, r69, r21
13d6: 3ad54482246a020a       ffma     r21, r66, r68, r21
13de: 0e79f605641e0000       iadd     r62, u251.sx, r64.sx
13e6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
13ee: 3ac962a224640206       ffma     r18, r49, r69, r18
13f6: 3ac9608224640206       ffma     r18, r48, r68, r18
13fe: 3acd66a224660206       ffma     r19, r51, r69, r19
1406: 3acd648224660206       ffma     r19, r50, r68, r19
140e: 3ac16aa224600206       ffma     r16, r53, r69, r16
1416: 3ac1688224600206       ffma     r16, r52, r68, r16
141e: 3ac56ea224620206       ffma     r17, r55, r69, r17
1426: 3ac56c8224620206       ffma     r17, r54, r68, r17
142e: 3aa172a224500206       ffma     r8, r57, r69, r8
1436: 3aa1708224500206       ffma     r8, r56, r68, r8
143e: 3abd76a2245e0206       ffma     r15, r59, r69, r15
1446: 3abd7482245e0206       ffma     r15, r58, r68, r15
144e: 3a917aa224480206       ffma     r4, r61, r69, r4
1456: 3a91788224480206       ffma     r4, r60, r68, r4
145e: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
1466: 3a9d4482244e020a       ffma     r7, r66, r68, r7
146e: 0e415e0601140000       iadd     r48, r47.sx, 16
1476: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
147e: 0e495e8601160000       iadd     r50, r47.sx, 152
1486: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
148e: 0e515e265f160000       iadd     r52, r47.sx, u217.sx
1496: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
149e: 62d9a80100000010       ldimm    r54, 424
14a6: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
14ae: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
14b6: 62e1900800000010       ldimm    r56, 2192
14be: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
14c6: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
14ce: 0e695ea65c160000       iadd     r58, r47.sx, u197.sx
14d6: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
14de: 0e715e665e150000       iadd     r60, r47.sx, u179.sx
14e6: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
14ee: 0e795ec65e170000       iadd     r62, r47.sx, u246.sx
14f6: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
14fe: 62f9102200000010       ldimm    r62, 8720
1506: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
150e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1516: 3aa962a224544216       ffma     r42, r49, r69, r42
151e: 3aa9608224544216       ffma     r42, r48, r68, r42
1526: 3aad66a224564216       ffma     r43, r51, r69, r43
152e: 3aad648224564216       ffma     r43, r50, r68, r43
1536: 3aa16aa224504216       ffma     r40, r53, r69, r40
153e: 3aa1688224504216       ffma     r40, r52, r68, r40
1546: 3aa56ea224524216       ffma     r41, r55, r69, r41
154e: 3aa56c8224524216       ffma     r41, r54, r68, r41
1556: 3a9972a2244c4216       ffma     r38, r57, r69, r38
155e: 3a997082244c4216       ffma     r38, r56, r68, r38
1566: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
156e: 3a9d7482244e4216       ffma     r39, r58, r68, r39
1576: 3a917aa224484216       ffma     r36, r61, r69, r36
157e: 3a91788224484216       ffma     r36, r60, r68, r36
1586: 3a9546a2244a421a       ffma     r37, r67, r69, r37
158e: 3a954482244a421a       ffma     r37, r66, r68, r37
1596: 0e79e605641e0000       iadd     r62, u243.sx, r64.sx
159e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
15a6: 3a8962a224444216       ffma     r34, r49, r69, r34
15ae: 3a89608224444216       ffma     r34, r48, r68, r34
15b6: 3a8d66a224464216       ffma     r35, r51, r69, r35
15be: 3a8d648224464216       ffma     r35, r50, r68, r35
15c6: 3a816aa224404216       ffma     r32, r53, r69, r32
15ce: 3a81688224404216       ffma     r32, r52, r68, r32
15d6: 3a856ea224424216       ffma     r33, r55, r69, r33
15de: 3a856c8224424216       ffma     r33, r54, r68, r33
15e6: 3af972a2247c0206       ffma     r30, r57, r69, r30
15ee: 3af97082247c0206       ffma     r30, r56, r68, r30
15f6: 3afd76a2247e0206       ffma     r31, r59, r69, r31
15fe: 3afd7482247e0206       ffma     r31, r58, r68, r31
1606: 3af17aa224780206       ffma     r28, r61, r69, r28
160e: 3af1788224780206       ffma     r28, r60, r68, r28
1616: 3af546a2247a020a       ffma     r29, r67, r69, r29
161e: 3af54482247a020a       ffma     r29, r66, r68, r29
1626: 0e79dc0564160000       iadd     r62, u174.sx, r64.sx
162e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1636: 3ae962a224740206       ffma     r26, r49, r69, r26
163e: 3ae9608224740206       ffma     r26, r48, r68, r26
1646: 3aed66a224760206       ffma     r27, r51, r69, r27
164e: 3aed648224760206       ffma     r27, r50, r68, r27
1656: 3ae16aa224700206       ffma     r24, r53, r69, r24
165e: 3ae1688224700206       ffma     r24, r52, r68, r24
1666: 3ae56ea224720206       ffma     r25, r55, r69, r25
166e: 3ae56c8224720206       ffma     r25, r54, r68, r25
1676: 3ad972a2246c0206       ffma     r22, r57, r69, r22
167e: 3ad97082246c0206       ffma     r22, r56, r68, r22
1686: 3add76a2246e0206       ffma     r23, r59, r69, r23
168e: 3add7482246e0206       ffma     r23, r58, r68, r23
1696: 3ad17aa224680206       ffma     r20, r61, r69, r20
169e: 3ad1788224680206       ffma     r20, r60, r68, r20
16a6: 3ad546a2246a020a       ffma     r21, r67, r69, r21
16ae: 3ad54482246a020a       ffma     r21, r66, r68, r21
16b6: 0e79f205641e0000       iadd     r62, u249.sx, r64.sx
16be: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
16c6: 3ac962a224640206       ffma     r18, r49, r69, r18
16ce: 3ac9608224640206       ffma     r18, r48, r68, r18
16d6: 3acd66a224660206       ffma     r19, r51, r69, r19
16de: 3acd648224660206       ffma     r19, r50, r68, r19
16e6: 3ac16aa224600206       ffma     r16, r53, r69, r16
16ee: 3ac1688224600206       ffma     r16, r52, r68, r16
16f6: 3ac56ea224620206       ffma     r17, r55, r69, r17
16fe: 3ac56c8224620206       ffma     r17, r54, r68, r17
1706: 3aa172a224500206       ffma     r8, r57, r69, r8
170e: 3aa1708224500206       ffma     r8, r56, r68, r8
1716: 3abd76a2245e0206       ffma     r15, r59, r69, r15
171e: 3abd7482245e0206       ffma     r15, r58, r68, r15
1726: 3a917aa224480206       ffma     r4, r61, r69, r4
172e: 3a91788224480206       ffma     r4, r60, r68, r4
1736: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
173e: 3a9d4482244e020a       ffma     r7, r66, r68, r7
1746: 0e415e8601140000       iadd     r48, r47.sx, 24
174e: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
1756: 0e495e0602160000       iadd     r50, r47.sx, 160
175e: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
1766: 0e515e665f160000       iadd     r52, r47.sx, u219.sx
176e: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
1776: 62d9b00100000010       ldimm    r54, 432
177e: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
1786: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
178e: 62e1980800000010       ldimm    r56, 2200
1796: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
179e: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
17a6: 0e695e665d160000       iadd     r58, r47.sx, u203.sx
17ae: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
17b6: 0e715ea65e150000       iadd     r60, r47.sx, u181.sx
17be: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
17c6: 0e795e865f170000       iadd     r62, r47.sx, u252.sx
17ce: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
17d6: 0e79ec05641a0000       iadd     r62, u214.sx, r64.sx
17de: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
17e6: 3aa962a224544216       ffma     r42, r49, r69, r42
17ee: 3aa9608224544216       ffma     r42, r48, r68, r42
17f6: 3aad66a224564216       ffma     r43, r51, r69, r43
17fe: 3aad648224564216       ffma     r43, r50, r68, r43
1806: 3aa16aa224504216       ffma     r40, r53, r69, r40
180e: 3aa1688224504216       ffma     r40, r52, r68, r40
1816: 3aa56ea224524216       ffma     r41, r55, r69, r41
181e: 3aa56c8224524216       ffma     r41, r54, r68, r41
1826: 3a9972a2244c4216       ffma     r38, r57, r69, r38
182e: 3a997082244c4216       ffma     r38, r56, r68, r38
1836: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
183e: 3a9d7482244e4216       ffma     r39, r58, r68, r39
1846: 3a917aa224484216       ffma     r36, r61, r69, r36
184e: 3a91788224484216       ffma     r36, r60, r68, r36
1856: 3a9546a2244a421a       ffma     r37, r67, r69, r37
185e: 3a954482244a421a       ffma     r37, r66, r68, r37
1866: 62f9a02200000010       ldimm    r62, 8864
186e: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
1876: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
187e: 3a8962a224444216       ffma     r34, r49, r69, r34
1886: 3a89608224444216       ffma     r34, r48, r68, r34
188e: 3a8d66a224464216       ffma     r35, r51, r69, r35
1896: 3a8d648224464216       ffma     r35, r50, r68, r35
189e: 3a816aa224404216       ffma     r32, r53, r69, r32
18a6: 3a81688224404216       ffma     r32, r52, r68, r32
18ae: 3a856ea224424216       ffma     r33, r55, r69, r33
18b6: 3a856c8224424216       ffma     r33, r54, r68, r33
18be: 3af972a2247c0206       ffma     r30, r57, r69, r30
18c6: 3af97082247c0206       ffma     r30, r56, r68, r30
18ce: 3afd76a2247e0206       ffma     r31, r59, r69, r31
18d6: 3afd7482247e0206       ffma     r31, r58, r68, r31
18de: 3af17aa224780206       ffma     r28, r61, r69, r28
18e6: 3af1788224780206       ffma     r28, r60, r68, r28
18ee: 3af546a2247a020a       ffma     r29, r67, r69, r29
18f6: 3af54482247a020a       ffma     r29, r66, r68, r29
18fe: 0e79e00564160000       iadd     r62, u176.sx, r64.sx
1906: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
190e: 3ae962a224740206       ffma     r26, r49, r69, r26
1916: 3ae9608224740206       ffma     r26, r48, r68, r26
191e: 3aed66a224760206       ffma     r27, r51, r69, r27
1926: 3aed648224760206       ffma     r27, r50, r68, r27
192e: 3ae16aa224700206       ffma     r24, r53, r69, r24
1936: 3ae1688224700206       ffma     r24, r52, r68, r24
193e: 3ae56ea224720206       ffma     r25, r55, r69, r25
1946: 3ae56c8224720206       ffma     r25, r54, r68, r25
194e: 3ad972a2246c0206       ffma     r22, r57, r69, r22
1956: 3ad97082246c0206       ffma     r22, r56, r68, r22
195e: 3add76a2246e0206       ffma     r23, r59, r69, r23
1966: 3add7482246e0206       ffma     r23, r58, r68, r23
196e: 3ad17aa224680206       ffma     r20, r61, r69, r20
1976: 3ad1788224680206       ffma     r20, r60, r68, r20
197e: 3ad546a2246a020a       ffma     r21, r67, r69, r21
1986: 3ad54482246a020a       ffma     r21, r66, r68, r21
198e: 62f9202b00000010       ldimm    r62, 11040
1996: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
199e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
19a6: 3ac962a224640206       ffma     r18, r49, r69, r18
19ae: 3ac9608224640206       ffma     r18, r48, r68, r18
19b6: 3acd66a224660206       ffma     r19, r51, r69, r19
19be: 3acd648224660206       ffma     r19, r50, r68, r19
19c6: 3ac16aa224600206       ffma     r16, r53, r69, r16
19ce: 3ac1688224600206       ffma     r16, r52, r68, r16
19d6: 3ac56ea224620206       ffma     r17, r55, r69, r17
19de: 3ac56c8224620206       ffma     r17, r54, r68, r17
19e6: 3aa172a224500206       ffma     r8, r57, r69, r8
19ee: 3aa1708224500206       ffma     r8, r56, r68, r8
19f6: 3abd76a2245e0206       ffma     r15, r59, r69, r15
19fe: 3abd7482245e0206       ffma     r15, r58, r68, r15
1a06: 3a917aa224480206       ffma     r4, r61, r69, r4
1a0e: 3a91788224480206       ffma     r4, r60, r68, r4
1a16: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
1a1e: 3a9d4482244e020a       ffma     r7, r66, r68, r7
1a26: 0e415e0602140000       iadd     r48, r47.sx, 32
1a2e: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
1a36: 0e495e8602160000       iadd     r50, r47.sx, 168
1a3e: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
1a46: 0e515ea65e160000       iadd     r52, r47.sx, u213.sx
1a4e: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
1a56: 0e595e865e170000       iadd     r54, r47.sx, u244.sx
1a5e: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
1a66: 62e1a00800000010       ldimm    r56, 2208
1a6e: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
1a76: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
1a7e: 0e695e465d160000       iadd     r58, r47.sx, u202.sx
1a86: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
1a8e: 0e715ee65d150000       iadd     r60, r47.sx, u175.sx
1a96: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
1a9e: 0e795e465f170000       iadd     r62, r47.sx, u250.sx
1aa6: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
1aae: 0e79f005641a0000       iadd     r62, u216.sx, r64.sx
1ab6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1abe: 3aa962a224544216       ffma     r42, r49, r69, r42
1ac6: 3aa9608224544216       ffma     r42, r48, r68, r42
1ace: 3aad66a224564216       ffma     r43, r51, r69, r43
1ad6: 3aad648224564216       ffma     r43, r50, r68, r43
1ade: 3aa16aa224504216       ffma     r40, r53, r69, r40
1ae6: 3aa1688224504216       ffma     r40, r52, r68, r40
1aee: 3aa56ea224524216       ffma     r41, r55, r69, r41
1af6: 3aa56c8224524216       ffma     r41, r54, r68, r41
1afe: 3a9972a2244c4216       ffma     r38, r57, r69, r38
1b06: 3a997082244c4216       ffma     r38, r56, r68, r38
1b0e: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
1b16: 3a9d7482244e4216       ffma     r39, r58, r68, r39
1b1e: 3a917aa224484216       ffma     r36, r61, r69, r36
1b26: 3a91788224484216       ffma     r36, r60, r68, r36
1b2e: 3a9546a2244a421a       ffma     r37, r67, r69, r37
1b36: 3a954482244a421a       ffma     r37, r66, r68, r37
1b3e: 0e79ee05641e0000       iadd     r62, u247.sx, r64.sx
1b46: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1b4e: 3a8962a224444216       ffma     r34, r49, r69, r34
1b56: 3a89608224444216       ffma     r34, r48, r68, r34
1b5e: 3a8d66a224464216       ffma     r35, r51, r69, r35
1b66: 3a8d648224464216       ffma     r35, r50, r68, r35
1b6e: 3a816aa224404216       ffma     r32, r53, r69, r32
1b76: 3a81688224404216       ffma     r32, r52, r68, r32
1b7e: 3a856ea224424216       ffma     r33, r55, r69, r33
1b86: 3a856c8224424216       ffma     r33, r54, r68, r33
1b8e: 3af972a2247c0206       ffma     r30, r57, r69, r30
1b96: 3af97082247c0206       ffma     r30, r56, r68, r30
1b9e: 3afd76a2247e0206       ffma     r31, r59, r69, r31
1ba6: 3afd7482247e0206       ffma     r31, r58, r68, r31
1bae: 3af17aa224780206       ffma     r28, r61, r69, r28
1bb6: 3af1788224780206       ffma     r28, r60, r68, r28
1bbe: 3af546a2247a020a       ffma     r29, r67, r69, r29
1bc6: 3af54482247a020a       ffma     r29, r66, r68, r29
1bce: 0e79e40564160000       iadd     r62, u178.sx, r64.sx
1bd6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1bde: 3ae962a224740206       ffma     r26, r49, r69, r26
1be6: 3ae9608224740206       ffma     r26, r48, r68, r26
1bee: 3aed66a224760206       ffma     r27, r51, r69, r27
1bf6: 3aed648224760206       ffma     r27, r50, r68, r27
1bfe: 3ae16aa224700206       ffma     r24, r53, r69, r24
1c06: 3ae1688224700206       ffma     r24, r52, r68, r24
1c0e: 3ae56ea224720206       ffma     r25, r55, r69, r25
1c16: 3ae56c8224720206       ffma     r25, r54, r68, r25
1c1e: 3ad972a2246c0206       ffma     r22, r57, r69, r22
1c26: 3ad97082246c0206       ffma     r22, r56, r68, r22
1c2e: 3add76a2246e0206       ffma     r23, r59, r69, r23
1c36: 3add7482246e0206       ffma     r23, r58, r68, r23
1c3e: 3ad17aa224680206       ffma     r20, r61, r69, r20
1c46: 3ad1788224680206       ffma     r20, r60, r68, r20
1c4e: 3ad546a2246a020a       ffma     r21, r67, r69, r21
1c56: 3ad54482246a020a       ffma     r21, r66, r68, r21
1c5e: 62f9282b00000010       ldimm    r62, 11048
1c66: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
1c6e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1c76: 3ac962a224640206       ffma     r18, r49, r69, r18
1c7e: 3ac9608224640206       ffma     r18, r48, r68, r18
1c86: 3acd66a224660206       ffma     r19, r51, r69, r19
1c8e: 3acd648224660206       ffma     r19, r50, r68, r19
1c96: 3ac16aa224600206       ffma     r16, r53, r69, r16
1c9e: 3ac1688224600206       ffma     r16, r52, r68, r16
1ca6: 3ac56ea224620206       ffma     r17, r55, r69, r17
1cae: 3ac56c8224620206       ffma     r17, r54, r68, r17
1cb6: 3aa172a224500206       ffma     r8, r57, r69, r8
1cbe: 3aa1708224500206       ffma     r8, r56, r68, r8
1cc6: 3abd76a2245e0206       ffma     r15, r59, r69, r15
1cce: 3abd7482245e0206       ffma     r15, r58, r68, r15
1cd6: 3a917aa224480206       ffma     r4, r61, r69, r4
1cde: 3a91788224480206       ffma     r4, r60, r68, r4
1ce6: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
1cee: 3a9d4482244e020a       ffma     r7, r66, r68, r7
1cf6: 0e415e8602140000       iadd     r48, r47.sx, 40
1cfe: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
1d06: 0e495e0603160000       iadd     r50, r47.sx, 176
1d0e: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
1d16: 0e515ee65e160000       iadd     r52, r47.sx, u215.sx
1d1e: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
1d26: 62d9c00100000010       ldimm    r54, 448
1d2e: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
1d36: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
1d3e: 62e1a80800000010       ldimm    r56, 2216
1d46: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
1d4e: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
1d56: 0e695e265d160000       iadd     r58, r47.sx, u201.sx
1d5e: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
1d66: 0e715e265e150000       iadd     r60, r47.sx, u177.sx
1d6e: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
1d76: 62f9400a00000010       ldimm    r62, 2624
1d7e: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
1d86: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
1d8e: 0e79f405641a0000       iadd     r62, u218.sx, r64.sx
1d96: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1d9e: 3aa962a224544216       ffma     r42, r49, r69, r42
1da6: 3aa9608224544216       ffma     r42, r48, r68, r42
1dae: 3aad66a224564216       ffma     r43, r51, r69, r43
1db6: 3aad648224564216       ffma     r43, r50, r68, r43
1dbe: 3aa16aa224504216       ffma     r40, r53, r69, r40
1dc6: 3aa1688224504216       ffma     r40, r52, r68, r40
1dce: 3aa56ea224524216       ffma     r41, r55, r69, r41
1dd6: 3aa56c8224524216       ffma     r41, r54, r68, r41
1dde: 3a9972a2244c4216       ffma     r38, r57, r69, r38
1de6: 3a997082244c4216       ffma     r38, r56, r68, r38
1dee: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
1df6: 3a9d7482244e4216       ffma     r39, r58, r68, r39
1dfe: 3a917aa224484216       ffma     r36, r61, r69, r36
1e06: 3a91788224484216       ffma     r36, r60, r68, r36
1e0e: 3a9546a2244a421a       ffma     r37, r67, r69, r37
1e16: 3a954482244a421a       ffma     r37, r66, r68, r37
1e1e: 62f9b02200000010       ldimm    r62, 8880
1e26: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
1e2e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1e36: 3a8962a224444216       ffma     r34, r49, r69, r34
1e3e: 3a89608224444216       ffma     r34, r48, r68, r34
1e46: 3a8d66a224464216       ffma     r35, r51, r69, r35
1e4e: 3a8d648224464216       ffma     r35, r50, r68, r35
1e56: 3a816aa224404216       ffma     r32, r53, r69, r32
1e5e: 3a81688224404216       ffma     r32, r52, r68, r32
1e66: 3a856ea224424216       ffma     r33, r55, r69, r33
1e6e: 3a856c8224424216       ffma     r33, r54, r68, r33
1e76: 3af972a2247c0206       ffma     r30, r57, r69, r30
1e7e: 3af97082247c0206       ffma     r30, r56, r68, r30
1e86: 3afd76a2247e0206       ffma     r31, r59, r69, r31
1e8e: 3afd7482247e0206       ffma     r31, r58, r68, r31
1e96: 3af17aa224780206       ffma     r28, r61, r69, r28
1e9e: 3af1788224780206       ffma     r28, r60, r68, r28
1ea6: 3af546a2247a020a       ffma     r29, r67, r69, r29
1eae: 3af54482247a020a       ffma     r29, r66, r68, r29
1eb6: 0e79e80564160000       iadd     r62, u180.sx, r64.sx
1ebe: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1ec6: 3ae962a224740206       ffma     r26, r49, r69, r26
1ece: 3ae9608224740206       ffma     r26, r48, r68, r26
1ed6: 3aed66a224760206       ffma     r27, r51, r69, r27
1ede: 3aed648224760206       ffma     r27, r50, r68, r27
1ee6: 3ae16aa224700206       ffma     r24, r53, r69, r24
1eee: 3ae1688224700206       ffma     r24, r52, r68, r24
1ef6: 3ae56ea224720206       ffma     r25, r55, r69, r25
1efe: 3ae56c8224720206       ffma     r25, r54, r68, r25
1f06: 3ad972a2246c0206       ffma     r22, r57, r69, r22
1f0e: 3ad97082246c0206       ffma     r22, r56, r68, r22
1f16: 3add76a2246e0206       ffma     r23, r59, r69, r23
1f1e: 3add7482246e0206       ffma     r23, r58, r68, r23
1f26: 3ad17aa224680206       ffma     r20, r61, r69, r20
1f2e: 3ad1788224680206       ffma     r20, r60, r68, r20
1f36: 3ad546a2246a020a       ffma     r21, r67, r69, r21
1f3e: 3ad54482246a020a       ffma     r21, r66, r68, r21
1f46: 62f9302b00000010       ldimm    r62, 11056
1f4e: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
1f56: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
1f5e: 3ac962a224640206       ffma     r18, r49, r69, r18
1f66: 3ac9608224640206       ffma     r18, r48, r68, r18
1f6e: 3acd66a224660206       ffma     r19, r51, r69, r19
1f76: 3acd648224660206       ffma     r19, r50, r68, r19
1f7e: 3ac16aa224600206       ffma     r16, r53, r69, r16
1f86: 3ac1688224600206       ffma     r16, r52, r68, r16
1f8e: 3ac56ea224620206       ffma     r17, r55, r69, r17
1f96: 3ac56c8224620206       ffma     r17, r54, r68, r17
1f9e: 3aa172a224500206       ffma     r8, r57, r69, r8
1fa6: 3aa1708224500206       ffma     r8, r56, r68, r8
1fae: 3abd76a2245e0206       ffma     r15, r59, r69, r15
1fb6: 3abd7482245e0206       ffma     r15, r58, r68, r15
1fbe: 3a917aa224480206       ffma     r4, r61, r69, r4
1fc6: 3a91788224480206       ffma     r4, r60, r68, r4
1fce: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
1fd6: 3a9d4482244e020a       ffma     r7, r66, r68, r7
1fde: 0e415e0603140000       iadd     r48, r47.sx, 48
1fe6: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
1fee: 0e495e8603160000       iadd     r50, r47.sx, 184
1ff6: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
1ffe: 0e515e465c170000       iadd     r52, r47.sx, u226.sx
2006: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
200e: 0e595e665e160000       iadd     r54, r47.sx, u211.sx
2016: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
201e: 62e1b00800000010       ldimm    r56, 2224
2026: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
202e: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
2036: 0e695e065d160000       iadd     r58, r47.sx, u200.sx
203e: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
2046: 0e715e465f150000       iadd     r60, r47.sx, u186.sx
204e: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
2056: 62f9480a00000010       ldimm    r62, 2632
205e: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
2066: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
206e: 0e79f805641a0000       iadd     r62, u220.sx, r64.sx
2076: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
207e: 3aa962a224544216       ffma     r42, r49, r69, r42
2086: 3aa9608224544216       ffma     r42, r48, r68, r42
208e: 3aad66a224564216       ffma     r43, r51, r69, r43
2096: 3aad648224564216       ffma     r43, r50, r68, r43
209e: 3aa16aa224504216       ffma     r40, r53, r69, r40
20a6: 3aa1688224504216       ffma     r40, r52, r68, r40
20ae: 3aa56ea224524216       ffma     r41, r55, r69, r41
20b6: 3aa56c8224524216       ffma     r41, r54, r68, r41
20be: 3a9972a2244c4216       ffma     r38, r57, r69, r38
20c6: 3a997082244c4216       ffma     r38, r56, r68, r38
20ce: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
20d6: 3a9d7482244e4216       ffma     r39, r58, r68, r39
20de: 3a917aa224484216       ffma     r36, r61, r69, r36
20e6: 3a91788224484216       ffma     r36, r60, r68, r36
20ee: 3a9546a2244a421a       ffma     r37, r67, r69, r37
20f6: 3a954482244a421a       ffma     r37, r66, r68, r37
20fe: 0e79fa05641a0000       iadd     r62, u221.sx, r64.sx
2106: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
210e: 3a8962a224444216       ffma     r34, r49, r69, r34
2116: 3a89608224444216       ffma     r34, r48, r68, r34
211e: 3a8d66a224464216       ffma     r35, r51, r69, r35
2126: 3a8d648224464216       ffma     r35, r50, r68, r35
212e: 3a816aa224404216       ffma     r32, r53, r69, r32
2136: 3a81688224404216       ffma     r32, r52, r68, r32
213e: 3a856ea224424216       ffma     r33, r55, r69, r33
2146: 3a856c8224424216       ffma     r33, r54, r68, r33
214e: 3af972a2247c0206       ffma     r30, r57, r69, r30
2156: 3af97082247c0206       ffma     r30, r56, r68, r30
215e: 3afd76a2247e0206       ffma     r31, r59, r69, r31
2166: 3afd7482247e0206       ffma     r31, r58, r68, r31
216e: 3af17aa224780206       ffma     r28, r61, r69, r28
2176: 3af1788224780206       ffma     r28, r60, r68, r28
217e: 3af546a2247a020a       ffma     r29, r67, r69, r29
2186: 3af54482247a020a       ffma     r29, r66, r68, r29
218e: 0e79ec0564160000       iadd     r62, u182.sx, r64.sx
2196: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
219e: 3ae962a224740206       ffma     r26, r49, r69, r26
21a6: 3ae9608224740206       ffma     r26, r48, r68, r26
21ae: 3aed66a224760206       ffma     r27, r51, r69, r27
21b6: 3aed648224760206       ffma     r27, r50, r68, r27
21be: 3ae16aa224700206       ffma     r24, r53, r69, r24
21c6: 3ae1688224700206       ffma     r24, r52, r68, r24
21ce: 3ae56ea224720206       ffma     r25, r55, r69, r25
21d6: 3ae56c8224720206       ffma     r25, r54, r68, r25
21de: 3ad972a2246c0206       ffma     r22, r57, r69, r22
21e6: 3ad97082246c0206       ffma     r22, r56, r68, r22
21ee: 3add76a2246e0206       ffma     r23, r59, r69, r23
21f6: 3add7482246e0206       ffma     r23, r58, r68, r23
21fe: 3ad17aa224680206       ffma     r20, r61, r69, r20
2206: 3ad1788224680206       ffma     r20, r60, r68, r20
220e: 3ad546a2246a020a       ffma     r21, r67, r69, r21
2216: 3ad54482246a020a       ffma     r21, r66, r68, r21
221e: 62f9382b00000010       ldimm    r62, 11064
2226: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
222e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2236: 3ac962a224640206       ffma     r18, r49, r69, r18
223e: 3ac9608224640206       ffma     r18, r48, r68, r18
2246: 3acd66a224660206       ffma     r19, r51, r69, r19
224e: 3acd648224660206       ffma     r19, r50, r68, r19
2256: 3ac16aa224600206       ffma     r16, r53, r69, r16
225e: 3ac1688224600206       ffma     r16, r52, r68, r16
2266: 3ac56ea224620206       ffma     r17, r55, r69, r17
226e: 3ac56c8224620206       ffma     r17, r54, r68, r17
2276: 3aa172a224500206       ffma     r8, r57, r69, r8
227e: 3aa1708224500206       ffma     r8, r56, r68, r8
2286: 3abd76a2245e0206       ffma     r15, r59, r69, r15
228e: 3abd7482245e0206       ffma     r15, r58, r68, r15
2296: 3a917aa224480206       ffma     r4, r61, r69, r4
229e: 3a91788224480206       ffma     r4, r60, r68, r4
22a6: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
22ae: 3a9d4482244e020a       ffma     r7, r66, r68, r7
22b6: 0e415e8603140000       iadd     r48, r47.sx, 56
22be: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
22c6: 0e495e0600170000       iadd     r50, r47.sx, 192
22ce: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
22d6: 0e515e865c170000       iadd     r52, r47.sx, u228.sx
22de: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
22e6: 0e595ee65f170000       iadd     r54, r47.sx, u255.sx
22ee: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
22f6: 62e1b80800000010       ldimm    r56, 2232
22fe: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
2306: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
230e: 0e695e065e160000       iadd     r58, r47.sx, u208.sx
2316: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
231e: 0e715e865f150000       iadd     r60, r47.sx, u188.sx
2326: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
232e: 62f9500a00000010       ldimm    r62, 2640
2336: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
233e: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
2346: 62f9382200000010       ldimm    r62, 8760
234e: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
2356: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
235e: 3aa962a224544216       ffma     r42, r49, r69, r42
2366: 3aa9608224544216       ffma     r42, r48, r68, r42
236e: 3aad66a224564216       ffma     r43, r51, r69, r43
2376: 3aad648224564216       ffma     r43, r50, r68, r43
237e: 3aa16aa224504216       ffma     r40, r53, r69, r40
2386: 3aa1688224504216       ffma     r40, r52, r68, r40
238e: 3aa56ea224524216       ffma     r41, r55, r69, r41
2396: 3aa56c8224524216       ffma     r41, r54, r68, r41
239e: 3a9972a2244c4216       ffma     r38, r57, r69, r38
23a6: 3a997082244c4216       ffma     r38, r56, r68, r38
23ae: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
23b6: 3a9d7482244e4216       ffma     r39, r58, r68, r39
23be: 3a917aa224484216       ffma     r36, r61, r69, r36
23c6: 3a91788224484216       ffma     r36, r60, r68, r36
23ce: 3a9546a2244a421a       ffma     r37, r67, r69, r37
23d6: 3a954482244a421a       ffma     r37, r66, r68, r37
23de: 0e79e205641e0000       iadd     r62, u241.sx, r64.sx
23e6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
23ee: 3a8962a224444216       ffma     r34, r49, r69, r34
23f6: 3a89608224444216       ffma     r34, r48, r68, r34
23fe: 3a8d66a224464216       ffma     r35, r51, r69, r35
2406: 3a8d648224464216       ffma     r35, r50, r68, r35
240e: 3a816aa224404216       ffma     r32, r53, r69, r32
2416: 3a81688224404216       ffma     r32, r52, r68, r32
241e: 3a856ea224424216       ffma     r33, r55, r69, r33
2426: 3a856c8224424216       ffma     r33, r54, r68, r33
242e: 3af972a2247c0206       ffma     r30, r57, r69, r30
2436: 3af97082247c0206       ffma     r30, r56, r68, r30
243e: 3afd76a2247e0206       ffma     r31, r59, r69, r31
2446: 3afd7482247e0206       ffma     r31, r58, r68, r31
244e: 3af17aa224780206       ffma     r28, r61, r69, r28
2456: 3af1788224780206       ffma     r28, r60, r68, r28
245e: 3af546a2247a020a       ffma     r29, r67, r69, r29
2466: 3af54482247a020a       ffma     r29, r66, r68, r29
246e: 0e79ee0564160000       iadd     r62, u183.sx, r64.sx
2476: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
247e: 3ae962a224740206       ffma     r26, r49, r69, r26
2486: 3ae9608224740206       ffma     r26, r48, r68, r26
248e: 3aed66a224760206       ffma     r27, r51, r69, r27
2496: 3aed648224760206       ffma     r27, r50, r68, r27
249e: 3ae16aa224700206       ffma     r24, r53, r69, r24
24a6: 3ae1688224700206       ffma     r24, r52, r68, r24
24ae: 3ae56ea224720206       ffma     r25, r55, r69, r25
24b6: 3ae56c8224720206       ffma     r25, r54, r68, r25
24be: 3ad972a2246c0206       ffma     r22, r57, r69, r22
24c6: 3ad97082246c0206       ffma     r22, r56, r68, r22
24ce: 3add76a2246e0206       ffma     r23, r59, r69, r23
24d6: 3add7482246e0206       ffma     r23, r58, r68, r23
24de: 3ad17aa224680206       ffma     r20, r61, r69, r20
24e6: 3ad1788224680206       ffma     r20, r60, r68, r20
24ee: 3ad546a2246a020a       ffma     r21, r67, r69, r21
24f6: 3ad54482246a020a       ffma     r21, r66, r68, r21
24fe: 62f9402b00000010       ldimm    r62, 11072
2506: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
250e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2516: 3ac962a224640206       ffma     r18, r49, r69, r18
251e: 3ac9608224640206       ffma     r18, r48, r68, r18
2526: 3acd66a224660206       ffma     r19, r51, r69, r19
252e: 3acd648224660206       ffma     r19, r50, r68, r19
2536: 3ac16aa224600206       ffma     r16, r53, r69, r16
253e: 3ac1688224600206       ffma     r16, r52, r68, r16
2546: 3ac56ea224620206       ffma     r17, r55, r69, r17
254e: 3ac56c8224620206       ffma     r17, r54, r68, r17
2556: 3aa172a224500206       ffma     r8, r57, r69, r8
255e: 3aa1708224500206       ffma     r8, r56, r68, r8
2566: 3abd76a2245e0206       ffma     r15, r59, r69, r15
256e: 3abd7482245e0206       ffma     r15, r58, r68, r15
2576: 3a917aa224480206       ffma     r4, r61, r69, r4
257e: 3a91788224480206       ffma     r4, r60, r68, r4
2586: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
258e: 3a9d4482244e020a       ffma     r7, r66, r68, r7
2596: 0e415e0600150000       iadd     r48, r47.sx, 64
259e: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
25a6: 0e495e8600170000       iadd     r50, r47.sx, 200
25ae: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
25b6: 0e515ec65f160000       iadd     r52, r47.sx, u222.sx
25be: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
25c6: 62d9d80100000010       ldimm    r54, 472
25ce: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
25d6: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
25de: 62e1c00800000010       ldimm    r56, 2240
25e6: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
25ee: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
25f6: 0e695ec65d160000       iadd     r58, r47.sx, u206.sx
25fe: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
2606: 0e715e065d170000       iadd     r60, r47.sx, u232.sx
260e: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
2616: 62f9580a00000010       ldimm    r62, 2648
261e: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
2626: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
262e: 0e79c205641e0000       iadd     r62, u225.sx, r64.sx
2636: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
263e: 3aa962a224544216       ffma     r42, r49, r69, r42
2646: 3aa9608224544216       ffma     r42, r48, r68, r42
264e: 3aad66a224564216       ffma     r43, r51, r69, r43
2656: 3aad648224564216       ffma     r43, r50, r68, r43
265e: 3aa16aa224504216       ffma     r40, r53, r69, r40
2666: 3aa1688224504216       ffma     r40, r52, r68, r40
266e: 3aa56ea224524216       ffma     r41, r55, r69, r41
2676: 3aa56c8224524216       ffma     r41, r54, r68, r41
267e: 3a9972a2244c4216       ffma     r38, r57, r69, r38
2686: 3a997082244c4216       ffma     r38, r56, r68, r38
268e: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
2696: 3a9d7482244e4216       ffma     r39, r58, r68, r39
269e: 3a917aa224484216       ffma     r36, r61, r69, r36
26a6: 3a91788224484216       ffma     r36, r60, r68, r36
26ae: 3a9546a2244a421a       ffma     r37, r67, r69, r37
26b6: 3a954482244a421a       ffma     r37, r66, r68, r37
26be: 62f9c82200000010       ldimm    r62, 8904
26c6: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
26ce: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
26d6: 3a8962a224444216       ffma     r34, r49, r69, r34
26de: 3a89608224444216       ffma     r34, r48, r68, r34
26e6: 3a8d66a224464216       ffma     r35, r51, r69, r35
26ee: 3a8d648224464216       ffma     r35, r50, r68, r35
26f6: 3a816aa224404216       ffma     r32, r53, r69, r32
26fe: 3a81688224404216       ffma     r32, r52, r68, r32
2706: 3a856ea224424216       ffma     r33, r55, r69, r33
270e: 3a856c8224424216       ffma     r33, r54, r68, r33
2716: 3af972a2247c0206       ffma     r30, r57, r69, r30
271e: 3af97082247c0206       ffma     r30, r56, r68, r30
2726: 3afd76a2247e0206       ffma     r31, r59, r69, r31
272e: 3afd7482247e0206       ffma     r31, r58, r68, r31
2736: 3af17aa224780206       ffma     r28, r61, r69, r28
273e: 3af1788224780206       ffma     r28, r60, r68, r28
2746: 3af546a2247a020a       ffma     r29, r67, r69, r29
274e: 3af54482247a020a       ffma     r29, r66, r68, r29
2756: 0e79f20564160000       iadd     r62, u185.sx, r64.sx
275e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2766: 3ae962a224740206       ffma     r26, r49, r69, r26
276e: 3ae9608224740206       ffma     r26, r48, r68, r26
2776: 3aed66a224760206       ffma     r27, r51, r69, r27
277e: 3aed648224760206       ffma     r27, r50, r68, r27
2786: 3ae16aa224700206       ffma     r24, r53, r69, r24
278e: 3ae1688224700206       ffma     r24, r52, r68, r24
2796: 3ae56ea224720206       ffma     r25, r55, r69, r25
279e: 3ae56c8224720206       ffma     r25, r54, r68, r25
27a6: 3ad972a2246c0206       ffma     r22, r57, r69, r22
27ae: 3ad97082246c0206       ffma     r22, r56, r68, r22
27b6: 3add76a2246e0206       ffma     r23, r59, r69, r23
27be: 3add7482246e0206       ffma     r23, r58, r68, r23
27c6: 3ad17aa224680206       ffma     r20, r61, r69, r20
27ce: 3ad1788224680206       ffma     r20, r60, r68, r20
27d6: 3ad546a2246a020a       ffma     r21, r67, r69, r21
27de: 3ad54482246a020a       ffma     r21, r66, r68, r21
27e6: 62f9482b00000010       ldimm    r62, 11080
27ee: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
27f6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
27fe: 3ac962a224640206       ffma     r18, r49, r69, r18
2806: 3ac9608224640206       ffma     r18, r48, r68, r18
280e: 3acd66a224660206       ffma     r19, r51, r69, r19
2816: 3acd648224660206       ffma     r19, r50, r68, r19
281e: 3ac16aa224600206       ffma     r16, r53, r69, r16
2826: 3ac1688224600206       ffma     r16, r52, r68, r16
282e: 3ac56ea224620206       ffma     r17, r55, r69, r17
2836: 3ac56c8224620206       ffma     r17, r54, r68, r17
283e: 3aa172a224500206       ffma     r8, r57, r69, r8
2846: 3aa1708224500206       ffma     r8, r56, r68, r8
284e: 3abd76a2245e0206       ffma     r15, r59, r69, r15
2856: 3abd7482245e0206       ffma     r15, r58, r68, r15
285e: 3a917aa224480206       ffma     r4, r61, r69, r4
2866: 3a91788224480206       ffma     r4, r60, r68, r4
286e: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
2876: 3a9d4482244e020a       ffma     r7, r66, r68, r7
287e: 0e415e8600150000       iadd     r48, r47.sx, 72
2886: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
288e: 0e495e0601170000       iadd     r50, r47.sx, 208
2896: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
289e: 0e515e065c170000       iadd     r52, r47.sx, u224.sx
28a6: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
28ae: 62d9e00100000010       ldimm    r54, 480
28b6: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
28be: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
28c6: 62e1c80800000010       ldimm    r56, 2248
28ce: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
28d6: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
28de: 0e695ea65d160000       iadd     r58, r47.sx, u205.sx
28e6: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
28ee: 0e715e065f150000       iadd     r60, r47.sx, u184.sx
28f6: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
28fe: 62f9600a00000010       ldimm    r62, 2656
2906: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
290e: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
2916: 0e79c605641e0000       iadd     r62, u227.sx, r64.sx
291e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2926: 3aa962a224544216       ffma     r42, r49, r69, r42
292e: 3aa9608224544216       ffma     r42, r48, r68, r42
2936: 3aad66a224564216       ffma     r43, r51, r69, r43
293e: 3aad648224564216       ffma     r43, r50, r68, r43
2946: 3aa16aa224504216       ffma     r40, r53, r69, r40
294e: 3aa1688224504216       ffma     r40, r52, r68, r40
2956: 3aa56ea224524216       ffma     r41, r55, r69, r41
295e: 3aa56c8224524216       ffma     r41, r54, r68, r41
2966: 3a9972a2244c4216       ffma     r38, r57, r69, r38
296e: 3a997082244c4216       ffma     r38, r56, r68, r38
2976: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
297e: 3a9d7482244e4216       ffma     r39, r58, r68, r39
2986: 3a917aa224484216       ffma     r36, r61, r69, r36
298e: 3a91788224484216       ffma     r36, r60, r68, r36
2996: 3a9546a2244a421a       ffma     r37, r67, r69, r37
299e: 3a954482244a421a       ffma     r37, r66, r68, r37
29a6: 62f9d02200000010       ldimm    r62, 8912
29ae: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
29b6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
29be: 3a8962a224444216       ffma     r34, r49, r69, r34
29c6: 3a89608224444216       ffma     r34, r48, r68, r34
29ce: 3a8d66a224464216       ffma     r35, r51, r69, r35
29d6: 3a8d648224464216       ffma     r35, r50, r68, r35
29de: 3a816aa224404216       ffma     r32, r53, r69, r32
29e6: 3a81688224404216       ffma     r32, r52, r68, r32
29ee: 3a856ea224424216       ffma     r33, r55, r69, r33
29f6: 3a856c8224424216       ffma     r33, r54, r68, r33
29fe: 3af972a2247c0206       ffma     r30, r57, r69, r30
2a06: 3af97082247c0206       ffma     r30, r56, r68, r30
2a0e: 3afd76a2247e0206       ffma     r31, r59, r69, r31
2a16: 3afd7482247e0206       ffma     r31, r58, r68, r31
2a1e: 3af17aa224780206       ffma     r28, r61, r69, r28
2a26: 3af1788224780206       ffma     r28, r60, r68, r28
2a2e: 3af546a2247a020a       ffma     r29, r67, r69, r29
2a36: 3af54482247a020a       ffma     r29, r66, r68, r29
2a3e: 0e79f60564160000       iadd     r62, u187.sx, r64.sx
2a46: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2a4e: 3ae962a224740206       ffma     r26, r49, r69, r26
2a56: 3ae9608224740206       ffma     r26, r48, r68, r26
2a5e: 3aed66a224760206       ffma     r27, r51, r69, r27
2a66: 3aed648224760206       ffma     r27, r50, r68, r27
2a6e: 3ae16aa224700206       ffma     r24, r53, r69, r24
2a76: 3ae1688224700206       ffma     r24, r52, r68, r24
2a7e: 3ae56ea224720206       ffma     r25, r55, r69, r25
2a86: 3ae56c8224720206       ffma     r25, r54, r68, r25
2a8e: 3ad972a2246c0206       ffma     r22, r57, r69, r22
2a96: 3ad97082246c0206       ffma     r22, r56, r68, r22
2a9e: 3add76a2246e0206       ffma     r23, r59, r69, r23
2aa6: 3add7482246e0206       ffma     r23, r58, r68, r23
2aae: 3ad17aa224680206       ffma     r20, r61, r69, r20
2ab6: 3ad1788224680206       ffma     r20, r60, r68, r20
2abe: 3ad546a2246a020a       ffma     r21, r67, r69, r21
2ac6: 3ad54482246a020a       ffma     r21, r66, r68, r21
2ace: 62f9502b00000010       ldimm    r62, 11088
2ad6: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
2ade: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2ae6: 3ac962a224640206       ffma     r18, r49, r69, r18
2aee: 3ac9608224640206       ffma     r18, r48, r68, r18
2af6: 3acd66a224660206       ffma     r19, r51, r69, r19
2afe: 3acd648224660206       ffma     r19, r50, r68, r19
2b06: 3ac16aa224600206       ffma     r16, r53, r69, r16
2b0e: 3ac1688224600206       ffma     r16, r52, r68, r16
2b16: 3ac56ea224620206       ffma     r17, r55, r69, r17
2b1e: 3ac56c8224620206       ffma     r17, r54, r68, r17
2b26: 3aa172a224500206       ffma     r8, r57, r69, r8
2b2e: 3aa1708224500206       ffma     r8, r56, r68, r8
2b36: 3abd76a2245e0206       ffma     r15, r59, r69, r15
2b3e: 3abd7482245e0206       ffma     r15, r58, r68, r15
2b46: 3a917aa224480206       ffma     r4, r61, r69, r4
2b4e: 3a91788224480206       ffma     r4, r60, r68, r4
2b56: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
2b5e: 3a9d4482244e020a       ffma     r7, r66, r68, r7
2b66: 0e415e0601150000       iadd     r48, r47.sx, 80
2b6e: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
2b76: 0e495e8601170000       iadd     r50, r47.sx, 216
2b7e: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
2b86: 0e515e465d170000       iadd     r52, r47.sx, u234.sx
2b8e: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
2b96: 62d9e80100000010       ldimm    r54, 488
2b9e: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
2ba6: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
2bae: 62e1d00800000010       ldimm    r56, 2256
2bb6: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
2bbe: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
2bc6: 0e695e865d160000       iadd     r58, r47.sx, u204.sx
2bce: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
2bd6: 0e715e465c160000       iadd     r60, r47.sx, u194.sx
2bde: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
2be6: 62f9680a00000010       ldimm    r62, 2664
2bee: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
2bf6: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
2bfe: 0e79ca05641e0000       iadd     r62, u229.sx, r64.sx
2c06: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2c0e: 3aa962a224544216       ffma     r42, r49, r69, r42
2c16: 3aa9608224544216       ffma     r42, r48, r68, r42
2c1e: 3aad66a224564216       ffma     r43, r51, r69, r43
2c26: 3aad648224564216       ffma     r43, r50, r68, r43
2c2e: 3aa16aa224504216       ffma     r40, r53, r69, r40
2c36: 3aa1688224504216       ffma     r40, r52, r68, r40
2c3e: 3aa56ea224524216       ffma     r41, r55, r69, r41
2c46: 3aa56c8224524216       ffma     r41, r54, r68, r41
2c4e: 3a9972a2244c4216       ffma     r38, r57, r69, r38
2c56: 3a997082244c4216       ffma     r38, r56, r68, r38
2c5e: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
2c66: 3a9d7482244e4216       ffma     r39, r58, r68, r39
2c6e: 3a917aa224484216       ffma     r36, r61, r69, r36
2c76: 3a91788224484216       ffma     r36, r60, r68, r36
2c7e: 3a9546a2244a421a       ffma     r37, r67, r69, r37
2c86: 3a954482244a421a       ffma     r37, r66, r68, r37
2c8e: 62f9d82200000010       ldimm    r62, 8920
2c96: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
2c9e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2ca6: 3a8962a224444216       ffma     r34, r49, r69, r34
2cae: 3a89608224444216       ffma     r34, r48, r68, r34
2cb6: 3a8d66a224464216       ffma     r35, r51, r69, r35
2cbe: 3a8d648224464216       ffma     r35, r50, r68, r35
2cc6: 3a816aa224404216       ffma     r32, r53, r69, r32
2cce: 3a81688224404216       ffma     r32, r52, r68, r32
2cd6: 3a856ea224424216       ffma     r33, r55, r69, r33
2cde: 3a856c8224424216       ffma     r33, r54, r68, r33
2ce6: 3af972a2247c0206       ffma     r30, r57, r69, r30
2cee: 3af97082247c0206       ffma     r30, r56, r68, r30
2cf6: 3afd76a2247e0206       ffma     r31, r59, r69, r31
2cfe: 3afd7482247e0206       ffma     r31, r58, r68, r31
2d06: 3af17aa224780206       ffma     r28, r61, r69, r28
2d0e: 3af1788224780206       ffma     r28, r60, r68, r28
2d16: 3af546a2247a020a       ffma     r29, r67, r69, r29
2d1e: 3af54482247a020a       ffma     r29, r66, r68, r29
2d26: 0e79fa0564160000       iadd     r62, u189.sx, r64.sx
2d2e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2d36: 3ae962a224740206       ffma     r26, r49, r69, r26
2d3e: 3ae9608224740206       ffma     r26, r48, r68, r26
2d46: 3aed66a224760206       ffma     r27, r51, r69, r27
2d4e: 3aed648224760206       ffma     r27, r50, r68, r27
2d56: 3ae16aa224700206       ffma     r24, r53, r69, r24
2d5e: 3ae1688224700206       ffma     r24, r52, r68, r24
2d66: 3ae56ea224720206       ffma     r25, r55, r69, r25
2d6e: 3ae56c8224720206       ffma     r25, r54, r68, r25
2d76: 3ad972a2246c0206       ffma     r22, r57, r69, r22
2d7e: 3ad97082246c0206       ffma     r22, r56, r68, r22
2d86: 3add76a2246e0206       ffma     r23, r59, r69, r23
2d8e: 3add7482246e0206       ffma     r23, r58, r68, r23
2d96: 3ad17aa224680206       ffma     r20, r61, r69, r20
2d9e: 3ad1788224680206       ffma     r20, r60, r68, r20
2da6: 3ad546a2246a020a       ffma     r21, r67, r69, r21
2dae: 3ad54482246a020a       ffma     r21, r66, r68, r21
2db6: 62f9582b00000010       ldimm    r62, 11096
2dbe: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
2dc6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2dce: 3ac962a224640206       ffma     r18, r49, r69, r18
2dd6: 3ac9608224640206       ffma     r18, r48, r68, r18
2dde: 3acd66a224660206       ffma     r19, r51, r69, r19
2de6: 3acd648224660206       ffma     r19, r50, r68, r19
2dee: 3ac16aa224600206       ffma     r16, r53, r69, r16
2df6: 3ac1688224600206       ffma     r16, r52, r68, r16
2dfe: 3ac56ea224620206       ffma     r17, r55, r69, r17
2e06: 3ac56c8224620206       ffma     r17, r54, r68, r17
2e0e: 3aa172a224500206       ffma     r8, r57, r69, r8
2e16: 3aa1708224500206       ffma     r8, r56, r68, r8
2e1e: 3abd76a2245e0206       ffma     r15, r59, r69, r15
2e26: 3abd7482245e0206       ffma     r15, r58, r68, r15
2e2e: 3a917aa224480206       ffma     r4, r61, r69, r4
2e36: 3a91788224480206       ffma     r4, r60, r68, r4
2e3e: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
2e46: 3a9d4482244e020a       ffma     r7, r66, r68, r7
2e4e: 0e415e8601150000       iadd     r48, r47.sx, 88
2e56: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
2e5e: 0e495e0602170000       iadd     r50, r47.sx, 224
2e66: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
2e6e: 0e515e865d170000       iadd     r52, r47.sx, u236.sx
2e76: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
2e7e: 62d9f00100000010       ldimm    r54, 496
2e86: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
2e8e: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
2e96: 62e1d80800000010       ldimm    r56, 2264
2e9e: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
2ea6: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
2eae: 62e9600900000010       ldimm    r58, 2400
2eb6: 0e695e4667150000       iadd     r58, r47.sx, r58.sx
2ebe: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
2ec6: 0e715e865c160000       iadd     r60, r47.sx, u196.sx
2ece: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
2ed6: 62f9700a00000010       ldimm    r62, 2672
2ede: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
2ee6: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
2eee: 0e79ce05641e0000       iadd     r62, u231.sx, r64.sx
2ef6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2efe: 3aa962a224544216       ffma     r42, r49, r69, r42
2f06: 3aa9608224544216       ffma     r42, r48, r68, r42
2f0e: 3aad66a224564216       ffma     r43, r51, r69, r43
2f16: 3aad648224564216       ffma     r43, r50, r68, r43
2f1e: 3aa16aa224504216       ffma     r40, r53, r69, r40
2f26: 3aa1688224504216       ffma     r40, r52, r68, r40
2f2e: 3aa56ea224524216       ffma     r41, r55, r69, r41
2f36: 3aa56c8224524216       ffma     r41, r54, r68, r41
2f3e: 3a9972a2244c4216       ffma     r38, r57, r69, r38
2f46: 3a997082244c4216       ffma     r38, r56, r68, r38
2f4e: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
2f56: 3a9d7482244e4216       ffma     r39, r58, r68, r39
2f5e: 3a917aa224484216       ffma     r36, r61, r69, r36
2f66: 3a91788224484216       ffma     r36, r60, r68, r36
2f6e: 3a9546a2244a421a       ffma     r37, r67, r69, r37
2f76: 3a954482244a421a       ffma     r37, r66, r68, r37
2f7e: 62f9e02200000010       ldimm    r62, 8928
2f86: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
2f8e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
2f96: 3a8962a224444216       ffma     r34, r49, r69, r34
2f9e: 3a89608224444216       ffma     r34, r48, r68, r34
2fa6: 3a8d66a224464216       ffma     r35, r51, r69, r35
2fae: 3a8d648224464216       ffma     r35, r50, r68, r35
2fb6: 3a816aa224404216       ffma     r32, r53, r69, r32
2fbe: 3a81688224404216       ffma     r32, r52, r68, r32
2fc6: 3a856ea224424216       ffma     r33, r55, r69, r33
2fce: 3a856c8224424216       ffma     r33, r54, r68, r33
2fd6: 3af972a2247c0206       ffma     r30, r57, r69, r30
2fde: 3af97082247c0206       ffma     r30, r56, r68, r30
2fe6: 3afd76a2247e0206       ffma     r31, r59, r69, r31
2fee: 3afd7482247e0206       ffma     r31, r58, r68, r31
2ff6: 3af17aa224780206       ffma     r28, r61, r69, r28
2ffe: 3af1788224780206       ffma     r28, r60, r68, r28
3006: 3af546a2247a020a       ffma     r29, r67, r69, r29
300e: 3af54482247a020a       ffma     r29, r66, r68, r29
3016: 0e79fe0564160000       iadd     r62, u191.sx, r64.sx
301e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
3026: 3ae962a224740206       ffma     r26, r49, r69, r26
302e: 3ae9608224740206       ffma     r26, r48, r68, r26
3036: 3aed66a224760206       ffma     r27, r51, r69, r27
303e: 3aed648224760206       ffma     r27, r50, r68, r27
3046: 3ae16aa224700206       ffma     r24, r53, r69, r24
304e: 3ae1688224700206       ffma     r24, r52, r68, r24
3056: 3ae56ea224720206       ffma     r25, r55, r69, r25
305e: 3ae56c8224720206       ffma     r25, r54, r68, r25
3066: 3ad972a2246c0206       ffma     r22, r57, r69, r22
306e: 3ad97082246c0206       ffma     r22, r56, r68, r22
3076: 3add76a2246e0206       ffma     r23, r59, r69, r23
307e: 3add7482246e0206       ffma     r23, r58, r68, r23
3086: 3ad17aa224680206       ffma     r20, r61, r69, r20
308e: 3ad1788224680206       ffma     r20, r60, r68, r20
3096: 3ad546a2246a020a       ffma     r21, r67, r69, r21
309e: 3ad54482246a020a       ffma     r21, r66, r68, r21
30a6: 62f9602b00000010       ldimm    r62, 11104
30ae: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
30b6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
30be: 3ac962a224640206       ffma     r18, r49, r69, r18
30c6: 3ac9608224640206       ffma     r18, r48, r68, r18
30ce: 3acd66a224660206       ffma     r19, r51, r69, r19
30d6: 3acd648224660206       ffma     r19, r50, r68, r19
30de: 3ac16aa224600206       ffma     r16, r53, r69, r16
30e6: 3ac1688224600206       ffma     r16, r52, r68, r16
30ee: 3ac56ea224620206       ffma     r17, r55, r69, r17
30f6: 3ac56c8224620206       ffma     r17, r54, r68, r17
30fe: 3aa172a224500206       ffma     r8, r57, r69, r8
3106: 3aa1708224500206       ffma     r8, r56, r68, r8
310e: 3abd76a2245e0206       ffma     r15, r59, r69, r15
3116: 3abd7482245e0206       ffma     r15, r58, r68, r15
311e: 3a917aa224480206       ffma     r4, r61, r69, r4
3126: 3a91788224480206       ffma     r4, r60, r68, r4
312e: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
3136: 3a9d4482244e020a       ffma     r7, r66, r68, r7
313e: 0e415e0602150000       iadd     r48, r47.sx, 96
3146: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
314e: 0e495e8602170000       iadd     r50, r47.sx, 232
3156: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
315e: 0e515ec65c170000       iadd     r52, r47.sx, u230.sx
3166: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
316e: 62d9f80100000010       ldimm    r54, 504
3176: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
317e: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
3186: 62e1e00800000010       ldimm    r56, 2272
318e: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
3196: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
319e: 0e695e865e160000       iadd     r58, r47.sx, u212.sx
31a6: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
31ae: 0e715ec65f150000       iadd     r60, r47.sx, u190.sx
31b6: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
31be: 62f9780a00000010       ldimm    r62, 2680
31c6: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
31ce: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
31d6: 0e79d205641e0000       iadd     r62, u233.sx, r64.sx
31de: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
31e6: 3aa962a224544216       ffma     r42, r49, r69, r42
31ee: 3aa9608224544216       ffma     r42, r48, r68, r42
31f6: 3aad66a224564216       ffma     r43, r51, r69, r43
31fe: 3aad648224564216       ffma     r43, r50, r68, r43
3206: 3aa16aa224504216       ffma     r40, r53, r69, r40
320e: 3aa1688224504216       ffma     r40, r52, r68, r40
3216: 3aa56ea224524216       ffma     r41, r55, r69, r41
321e: 3aa56c8224524216       ffma     r41, r54, r68, r41
3226: 3a9972a2244c4216       ffma     r38, r57, r69, r38
322e: 3a997082244c4216       ffma     r38, r56, r68, r38
3236: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
323e: 3a9d7482244e4216       ffma     r39, r58, r68, r39
3246: 3a917aa224484216       ffma     r36, r61, r69, r36
324e: 3a91788224484216       ffma     r36, r60, r68, r36
3256: 3a9546a2244a421a       ffma     r37, r67, r69, r37
325e: 3a954482244a421a       ffma     r37, r66, r68, r37
3266: 62f9e82200000010       ldimm    r62, 8936
326e: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
3276: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
327e: 3a8962a224444216       ffma     r34, r49, r69, r34
3286: 3a89608224444216       ffma     r34, r48, r68, r34
328e: 3a8d66a224464216       ffma     r35, r51, r69, r35
3296: 3a8d648224464216       ffma     r35, r50, r68, r35
329e: 3a816aa224404216       ffma     r32, r53, r69, r32
32a6: 3a81688224404216       ffma     r32, r52, r68, r32
32ae: 3a856ea224424216       ffma     r33, r55, r69, r33
32b6: 3a856c8224424216       ffma     r33, r54, r68, r33
32be: 3af972a2247c0206       ffma     r30, r57, r69, r30
32c6: 3af97082247c0206       ffma     r30, r56, r68, r30
32ce: 3afd76a2247e0206       ffma     r31, r59, r69, r31
32d6: 3afd7482247e0206       ffma     r31, r58, r68, r31
32de: 3af17aa224780206       ffma     r28, r61, r69, r28
32e6: 3af1788224780206       ffma     r28, r60, r68, r28
32ee: 3af546a2247a020a       ffma     r29, r67, r69, r29
32f6: 3af54482247a020a       ffma     r29, r66, r68, r29
32fe: 0e79c205641a0000       iadd     r62, u193.sx, r64.sx
3306: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
330e: 3ae962a224740206       ffma     r26, r49, r69, r26
3316: 3ae9608224740206       ffma     r26, r48, r68, r26
331e: 3aed66a224760206       ffma     r27, r51, r69, r27
3326: 3aed648224760206       ffma     r27, r50, r68, r27
332e: 3ae16aa224700206       ffma     r24, r53, r69, r24
3336: 3ae1688224700206       ffma     r24, r52, r68, r24
333e: 3ae56ea224720206       ffma     r25, r55, r69, r25
3346: 3ae56c8224720206       ffma     r25, r54, r68, r25
334e: 3ad972a2246c0206       ffma     r22, r57, r69, r22
3356: 3ad97082246c0206       ffma     r22, r56, r68, r22
335e: 3add76a2246e0206       ffma     r23, r59, r69, r23
3366: 3add7482246e0206       ffma     r23, r58, r68, r23
336e: 3ad17aa224680206       ffma     r20, r61, r69, r20
3376: 3ad1788224680206       ffma     r20, r60, r68, r20
337e: 3ad546a2246a020a       ffma     r21, r67, r69, r21
3386: 3ad54482246a020a       ffma     r21, r66, r68, r21
338e: 62f9682b00000010       ldimm    r62, 11112
3396: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
339e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
33a6: 3ac962a224640206       ffma     r18, r49, r69, r18
33ae: 3ac9608224640206       ffma     r18, r48, r68, r18
33b6: 3acd66a224660206       ffma     r19, r51, r69, r19
33be: 3acd648224660206       ffma     r19, r50, r68, r19
33c6: 3ac16aa224600206       ffma     r16, r53, r69, r16
33ce: 3ac1688224600206       ffma     r16, r52, r68, r16
33d6: 3ac56ea224620206       ffma     r17, r55, r69, r17
33de: 3ac56c8224620206       ffma     r17, r54, r68, r17
33e6: 3aa172a224500206       ffma     r8, r57, r69, r8
33ee: 3aa1708224500206       ffma     r8, r56, r68, r8
33f6: 3abd76a2245e0206       ffma     r15, r59, r69, r15
33fe: 3abd7482245e0206       ffma     r15, r58, r68, r15
3406: 3a917aa224480206       ffma     r4, r61, r69, r4
340e: 3a91788224480206       ffma     r4, r60, r68, r4
3416: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
341e: 3a9d4482244e020a       ffma     r7, r66, r68, r7
3426: 0e415e8602150000       iadd     r48, r47.sx, 104
342e: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
3436: 0e495e0603170000       iadd     r50, r47.sx, 240
343e: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
3446: 62d1780100000010       ldimm    r52, 376
344e: 0e515e8666150000       iadd     r52, r47.sx, r52.sx
3456: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
345e: 62d9000200000010       ldimm    r54, 512
3466: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
346e: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
3476: 62e1e80800000010       ldimm    r56, 2280
347e: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
3486: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
348e: 62e9700900000010       ldimm    r58, 2416
3496: 0e695e4667150000       iadd     r58, r47.sx, r58.sx
349e: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
34a6: 0e715e065c160000       iadd     r60, r47.sx, u192.sx
34ae: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
34b6: 0e795ee65f160000       iadd     r62, r47.sx, u223.sx
34be: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
34c6: 0e79d605641e0000       iadd     r62, u235.sx, r64.sx
34ce: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
34d6: 3aa962a224544216       ffma     r42, r49, r69, r42
34de: 3aa9608224544216       ffma     r42, r48, r68, r42
34e6: 3aad66a224564216       ffma     r43, r51, r69, r43
34ee: 3aad648224564216       ffma     r43, r50, r68, r43
34f6: 3aa16aa224504216       ffma     r40, r53, r69, r40
34fe: 3aa1688224504216       ffma     r40, r52, r68, r40
3506: 3aa56ea224524216       ffma     r41, r55, r69, r41
350e: 3aa56c8224524216       ffma     r41, r54, r68, r41
3516: 3a9972a2244c4216       ffma     r38, r57, r69, r38
351e: 3a997082244c4216       ffma     r38, r56, r68, r38
3526: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
352e: 3a9d7482244e4216       ffma     r39, r58, r68, r39
3536: 3a917aa224484216       ffma     r36, r61, r69, r36
353e: 3a91788224484216       ffma     r36, r60, r68, r36
3546: 3a9546a2244a421a       ffma     r37, r67, r69, r37
354e: 3a954482244a421a       ffma     r37, r66, r68, r37
3556: 62f9f02200000010       ldimm    r62, 8944
355e: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
3566: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
356e: 3a8962a224444216       ffma     r34, r49, r69, r34
3576: 3a89608224444216       ffma     r34, r48, r68, r34
357e: 3a8d66a224464216       ffma     r35, r51, r69, r35
3586: 3a8d648224464216       ffma     r35, r50, r68, r35
358e: 3a816aa224404216       ffma     r32, r53, r69, r32
3596: 3a81688224404216       ffma     r32, r52, r68, r32
359e: 3a856ea224424216       ffma     r33, r55, r69, r33
35a6: 3a856c8224424216       ffma     r33, r54, r68, r33
35ae: 3af972a2247c0206       ffma     r30, r57, r69, r30
35b6: 3af97082247c0206       ffma     r30, r56, r68, r30
35be: 3afd76a2247e0206       ffma     r31, r59, r69, r31
35c6: 3afd7482247e0206       ffma     r31, r58, r68, r31
35ce: 3af17aa224780206       ffma     r28, r61, r69, r28
35d6: 3af1788224780206       ffma     r28, r60, r68, r28
35de: 3af546a2247a020a       ffma     r29, r67, r69, r29
35e6: 3af54482247a020a       ffma     r29, r66, r68, r29
35ee: 0e79c605641a0000       iadd     r62, u195.sx, r64.sx
35f6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
35fe: 3ae962a224740206       ffma     r26, r49, r69, r26
3606: 3ae9608224740206       ffma     r26, r48, r68, r26
360e: 3aed66a224760206       ffma     r27, r51, r69, r27
3616: 3aed648224760206       ffma     r27, r50, r68, r27
361e: 3ae16aa224700206       ffma     r24, r53, r69, r24
3626: 3ae1688224700206       ffma     r24, r52, r68, r24
362e: 3ae56ea224720206       ffma     r25, r55, r69, r25
3636: 3ae56c8224720206       ffma     r25, r54, r68, r25
363e: 3ad972a2246c0206       ffma     r22, r57, r69, r22
3646: 3ad97082246c0206       ffma     r22, r56, r68, r22
364e: 3add76a2246e0206       ffma     r23, r59, r69, r23
3656: 3add7482246e0206       ffma     r23, r58, r68, r23
365e: 3ad17aa224680206       ffma     r20, r61, r69, r20
3666: 3ad1788224680206       ffma     r20, r60, r68, r20
366e: 3ad546a2246a020a       ffma     r21, r67, r69, r21
3676: 3ad54482246a020a       ffma     r21, r66, r68, r21
367e: 0e79d00564160000       iadd     r62, u168.sx, r64.sx
3686: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
368e: 3ac962a224640206       ffma     r18, r49, r69, r18
3696: 3ac9608224640206       ffma     r18, r48, r68, r18
369e: 3acd66a224660206       ffma     r19, r51, r69, r19
36a6: 3acd648224660206       ffma     r19, r50, r68, r19
36ae: 3ac16aa224600206       ffma     r16, r53, r69, r16
36b6: 3ac1688224600206       ffma     r16, r52, r68, r16
36be: 3ac56ea224620206       ffma     r17, r55, r69, r17
36c6: 3ac56c8224620206       ffma     r17, r54, r68, r17
36ce: 3aa172a224500206       ffma     r8, r57, r69, r8
36d6: 3aa1708224500206       ffma     r8, r56, r68, r8
36de: 3abd76a2245e0206       ffma     r15, r59, r69, r15
36e6: 3abd7482245e0206       ffma     r15, r58, r68, r15
36ee: 3a917aa224480206       ffma     r4, r61, r69, r4
36f6: 3a91788224480206       ffma     r4, r60, r68, r4
36fe: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
3706: 3a9d4482244e020a       ffma     r7, r66, r68, r7
370e: 0e415e0603150000       iadd     r48, r47.sx, 112
3716: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
371e: 0e495e8603170000       iadd     r50, r47.sx, 248
3726: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
372e: 0e515e465e170000       iadd     r52, r47.sx, u242.sx
3736: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
373e: 62d9080200000010       ldimm    r54, 520
3746: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
374e: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
3756: 62e1f00800000010       ldimm    r56, 2288
375e: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
3766: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
376e: 62e9780900000010       ldimm    r58, 2424
3776: 0e695e4667150000       iadd     r58, r47.sx, r58.sx
377e: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
3786: 62f1000a00000010       ldimm    r60, 2560
378e: 0e715e8667150000       iadd     r60, r47.sx, r60.sx
3796: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
379e: 62f9880a00000010       ldimm    r62, 2696
37a6: 0e795ec667150000       iadd     r62, r47.sx, r62.sx
37ae: 69893c0234000024       lload    r66_r67, r62l, 0, i32, xy
37b6: 62f9702200000010       ldimm    r62, 8816
37be: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
37c6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
37ce: 3aa962a224544216       ffma     r42, r49, r69, r42
37d6: 3aa9608224544216       ffma     r42, r48, r68, r42
37de: 3aad66a224564216       ffma     r43, r51, r69, r43
37e6: 3aad648224564216       ffma     r43, r50, r68, r43
37ee: 3aa16aa224504216       ffma     r40, r53, r69, r40
37f6: 3aa1688224504216       ffma     r40, r52, r68, r40
37fe: 3aa56ea224524216       ffma     r41, r55, r69, r41
3806: 3aa56c8224524216       ffma     r41, r54, r68, r41
380e: 3a9972a2244c4216       ffma     r38, r57, r69, r38
3816: 3a997082244c4216       ffma     r38, r56, r68, r38
381e: 3a9d76a2244e4216       ffma     r39, r59, r69, r39
3826: 3a9d7482244e4216       ffma     r39, r58, r68, r39
382e: 3a917aa224484216       ffma     r36, r61, r69, r36
3836: 3a91788224484216       ffma     r36, r60, r68, r36
383e: 3a9546a2244a421a       ffma     r37, r67, r69, r37
3846: 3a954482244a421a       ffma     r37, r66, r68, r37
384e: 62f9f82200000010       ldimm    r62, 8952
3856: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
385e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
3866: 3a8962a224444216       ffma     r34, r49, r69, r34
386e: 3a89608224444216       ffma     r34, r48, r68, r34
3876: 3a8d66a224464216       ffma     r35, r51, r69, r35
387e: 3a8d648224464216       ffma     r35, r50, r68, r35
3886: 3a816aa224404216       ffma     r32, r53, r69, r32
388e: 3a81688224404216       ffma     r32, r52, r68, r32
3896: 3a856ea224424216       ffma     r33, r55, r69, r33
389e: 3a856c8224424216       ffma     r33, r54, r68, r33
38a6: 3af972a2247c0206       ffma     r30, r57, r69, r30
38ae: 3af97082247c0206       ffma     r30, r56, r68, r30
38b6: 3afd76a2247e0206       ffma     r31, r59, r69, r31
38be: 3afd7482247e0206       ffma     r31, r58, r68, r31
38c6: 3af17aa224780206       ffma     r28, r61, r69, r28
38ce: 3af1788224780206       ffma     r28, r60, r68, r28
38d6: 3af546a2247a020a       ffma     r29, r67, r69, r29
38de: 3af54482247a020a       ffma     r29, r66, r68, r29
38e6: 62f9f02a00000010       ldimm    r62, 10992
38ee: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
38f6: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
38fe: 3ae962a224740206       ffma     r26, r49, r69, r26
3906: 3ae9608224740206       ffma     r26, r48, r68, r26
390e: 3aed66a224760206       ffma     r27, r51, r69, r27
3916: 3aed648224760206       ffma     r27, r50, r68, r27
391e: 3ae16aa224700206       ffma     r24, r53, r69, r24
3926: 3ae1688224700206       ffma     r24, r52, r68, r24
392e: 3ae56ea224720206       ffma     r25, r55, r69, r25
3936: 3ae56c8224720206       ffma     r25, r54, r68, r25
393e: 3ad972a2246c0206       ffma     r22, r57, r69, r22
3946: 3ad97082246c0206       ffma     r22, r56, r68, r22
394e: 3add76a2246e0206       ffma     r23, r59, r69, r23
3956: 3add7482246e0206       ffma     r23, r58, r68, r23
395e: 3ad17aa224680206       ffma     r20, r61, r69, r20
3966: 3ad1788224680206       ffma     r20, r60, r68, r20
396e: 3ad546a2246a020a       ffma     r21, r67, r69, r21
3976: 3ad54482246a020a       ffma     r21, r66, r68, r21
397e: 62f9782b00000010       ldimm    r62, 11128
3986: 0e797c0664160000       iadd     r62, r62.sx, r64.sx
398e: 69913c0234000024       lload    r68_r69, r62l, 0, i32, xy
3996: 3ac962a224640206       ffma     r18, r49, r69, r18
399e: 3ac9608224640206       ffma     r18, r48, r68, r18
39a6: 3acd66a224660206       ffma     r19, r51, r69, r19
39ae: 3acd648224660206       ffma     r19, r50, r68, r19
39b6: 3ac16aa224600206       ffma     r16, r53, r69, r16
39be: 3ac1688224600206       ffma     r16, r52, r68, r16
39c6: 3ac56ea224620206       ffma     r17, r55, r69, r17
39ce: 3ac56c8224620206       ffma     r17, r54, r68, r17
39d6: 3aa172a224500206       ffma     r8, r57, r69, r8
39de: 3aa1708224500206       ffma     r8, r56, r68, r8
39e6: 3abd76a2245e0206       ffma     r15, r59, r69, r15
39ee: 3abd7482245e0206       ffma     r15, r58, r68, r15
39f6: 3a917aa224480206       ffma     r4, r61, r69, r4
39fe: 3a91788224480206       ffma     r4, r60, r68, r4
3a06: 3a9d46a2244e020a       ffma     r7, r67, r69, r7
3a0e: 3a9d4482244e020a       ffma     r7, r66, r68, r7
3a16: 0e415e8603150000       iadd     r48, r47.sx, 120
3a1e: 69c1200234000014       lload    r48_r49, r48l, 0, i32, xy
3a26: 0e495e465e160000       iadd     r50, r47.sx, u210.sx
3a2e: 69c9240234000014       lload    r50_r51, r50l, 0, i32, xy
3a36: 0e515e065e170000       iadd     r52, r47.sx, u240.sx
3a3e: 69d1280234000014       lload    r52_r53, r52l, 0, i32, xy
3a46: 62d9100200000010       ldimm    r54, 528
3a4e: 0e595ec666150000       iadd     r54, r47.sx, r54.sx
3a56: 69d92c0234000014       lload    r54_r55, r54l, 0, i32, xy
3a5e: 62e1f80800000010       ldimm    r56, 2296
3a66: 0e615e0667150000       iadd     r56, r47.sx, r56.sx
3a6e: 69e1300234000014       lload    r56_r57, r56l, 0, i32, xy
3a76: 0e695e865d150000       iadd     r58, r47.sx, u172.sx
3a7e: 69e9340234000014       lload    r58_r59, r58l, 0, i32, xy
3a86: 0e715ec65f170000       iadd     r60, r47.sx, u254.sx
3a8e: 69f1380234000014       lload    r60_r61, r60l, 0, i32, xy
3a96: 62f9900a00000010       ldimm    r62, 2704
3a9e: 0e3d5ec667150000       iadd     r47, r47.sx, r62.sx
3aa6: 69f91e0234000014       lload    r62_r63, r47l, 0, i32, xy
3aae: 0e3ddc05641e0000       iadd     r47, u238.sx, r64.sx
3ab6: 69891e0234000024       lload    r66_r67, r47l, 0, i32, xy
3abe: 3aa9626224544216       ffma     r42, r49, r67, r42
3ac6: 3aa9604224544216       ffma     r42, r48, r66, r42
3ace: 3aad666224564216       ffma     r43, r51, r67, r43
3ad6: 3aad644224564216       ffma     r43, r50, r66, r43
3ade: 3aa16a6224504216       ffma     r40, r53, r67, r40
3ae6: 3aa1684224504216       ffma     r40, r52, r66, r40
3aee: 3aa56e6224524216       ffma     r41, r55, r67, r41
3af6: 3aa56c4224524216       ffma     r41, r54, r66, r41
3afe: 3a997262244c4216       ffma     r38, r57, r67, r38
3b06: 3a997042244c4216       ffma     r38, r56, r66, r38
3b0e: 3a9d7662244e4216       ffma     r39, r59, r67, r39
3b16: 3a9d7442244e4216       ffma     r39, r58, r66, r39
3b1e: 3a917a6224484216       ffma     r36, r61, r67, r36
3b26: 3a91784224484216       ffma     r36, r60, r66, r36
3b2e: 3a957e62244a4216       ffma     r37, r63, r67, r37
3b36: 3a957c42244a4216       ffma     r37, r62, r66, r37
3b3e: 0e3dce0564160000       iadd     r47, u167.sx, r64.sx
3b46: 69891e0234000024       lload    r66_r67, r47l, 0, i32, xy
3b4e: 3a89626224444216       ffma     r34, r49, r67, r34
3b56: 3a89604224444216       ffma     r34, r48, r66, r34
3b5e: 3a8d666224464216       ffma     r35, r51, r67, r35
3b66: 3a8d644224464216       ffma     r35, r50, r66, r35
3b6e: 3a816a6224404216       ffma     r32, r53, r67, r32
3b76: 3a81684224404216       ffma     r32, r52, r66, r32
3b7e: 3a856e6224424216       ffma     r33, r55, r67, r33
3b86: 3a856c4224424216       ffma     r33, r54, r66, r33
3b8e: 3af97262247c0206       ffma     r30, r57, r67, r30
3b96: 3af97042247c0206       ffma     r30, r56, r66, r30
3b9e: 3afd7662247e0206       ffma     r31, r59, r67, r31
3ba6: 3afd7442247e0206       ffma     r31, r58, r66, r31
3bae: 3af17a6224780206       ffma     r28, r61, r67, r28
3bb6: 3af1784224780206       ffma     r28, r60, r66, r28
3bbe: 3af57e62247a0206       ffma     r29, r63, r67, r29
3bc6: 3af57c42247a0206       ffma     r29, r62, r66, r29
3bce: 62bdf82a00000010       ldimm    r47, 11000
3bd6: 0e3d5e0664160000       iadd     r47, r47.sx, r64.sx
3bde: 69891e0234000024       lload    r66_r67, r47l, 0, i32, xy
3be6: 3ae9626224740206       ffma     r26, r49, r67, r26
3bee: 3ae9604224740206       ffma     r26, r48, r66, r26
3bf6: 3aed666224760206       ffma     r27, r51, r67, r27
3bfe: 3aed644224760206       ffma     r27, r50, r66, r27
3c06: 3ae16a6224700206       ffma     r24, r53, r67, r24
3c0e: 3ae1684224700206       ffma     r24, r52, r66, r24
3c16: 3ae56e6224720206       ffma     r25, r55, r67, r25
3c1e: 3ae56c4224720206       ffma     r25, r54, r66, r25
3c26: 3ad97262246c0206       ffma     r22, r57, r67, r22
3c2e: 3ad97042246c0206       ffma     r22, r56, r66, r22
3c36: 3add7662246e0206       ffma     r23, r59, r67, r23
3c3e: 3add7442246e0206       ffma     r23, r58, r66, r23
3c46: 3ad17a6224680206       ffma     r20, r61, r67, r20
3c4e: 3ad1784224680206       ffma     r20, r60, r66, r20
3c56: 3ad57e62246a0206       ffma     r21, r63, r67, r21
3c5e: 3ad57c42246a0206       ffma     r21, r62, r66, r21
3c66: 62bd802b00000010       ldimm    r47, 11136
3c6e: 0e3d5e0664160000       iadd     r47, r47.sx, r64.sx
3c76: 69811e0234000024       lload    r64_r65, r47l, 0, i32, xy
3c7e: 3ac9622224640206       ffma     r18, r49, r65, r18
3c86: 3ac9600224640206       ffma     r18, r48, r64, r18
3c8e: 3acd662224660206       ffma     r19, r51, r65, r19
3c96: 3acd640224660206       ffma     r19, r50, r64, r19
3c9e: 3ac16a2224600206       ffma     r16, r53, r65, r16
3ca6: 3ac1680224600206       ffma     r16, r52, r64, r16
3cae: 3ac56e2224620206       ffma     r17, r55, r65, r17
3cb6: 3ac56c0224620206       ffma     r17, r54, r64, r17
3cbe: 3aa1722224500206       ffma     r8, r57, r65, r8
3cc6: 3aa1700224500206       ffma     r8, r56, r64, r8
3cce: 3abd7622245e0206       ffma     r15, r59, r65, r15
3cd6: 3abd7402245e0206       ffma     r15, r58, r64, r15
3cde: 3a917a2224480206       ffma     r4, r61, r65, r4
3ce6: 3a91780224480206       ffma     r4, r60, r64, r4
3cee: 3a9d7e22244e0206       ffma     r7, r63, r65, r7
3cf6: 3a9d7c02244e0206       ffma     r7, r62, r64, r7
3cfe: 6800                   barrier
3d00: 0e395c8600140000       iadd     r46, r46.sx, 8
3d08: 0e355a8600140000       iadd     r45, r45.sx, 8
3d10: 0e31580602140000       iadd     r44, r44.sx, 32
3d18: 00c0e0c5ffff           jmp_any  -14880
3d1e: 520e00000000           pop_exec 1
3d24: 1e195c06024c0600       imadd    r6, r14.sx, 32, r6.sx
3d2c: 1e094a0602440600       imadd    r2, r5.sx, 32, r2.sx
3d34: 1e05420658000001       imul     r1, r1.sx, u32.sx
3d3c: 1e05422658000001       imul     r1, r1.sx, u33.sx
3d44: 1e05460658420601       imadd    r1, r3.sx, u32.sx, r1.sx
3d4c: 0e0d00a065001000       iadd     r3, 0, r13.sx, lsl 2
3d54: 0e154c6664000000       iadd     r5, r6.sx, r3.sx
3d5c: 0e250080e5000000       iadd     r9, 0, r12.sx, lsl 1
3d64: 0e29442665000000       iadd     r10, r2.sx, r9.sx
3d6c: 12825442180101300001   csel     r0h, r10, u34, 1, 0, ult
3d76: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
3d7e: 520941000000           if       r0h, 0, 1, ine
3d84: 1e2d546658420601       imadd    r11, r10.sx, u35.sx, r1.sx
3d8c: 0e2d56a664000000       iadd     r11, r11.sx, r5.sx
3d94: 4551680e41c11200       store    r42, du36, r11, i32, x, a
3d9c: 3800                   wait     a
3d9e: 520e00000000           pop_exec 1
3da4: 128254c2180101300001   csel     r0h, r10, u38, 1, 0, ult
3dae: 0e2d01a064000000       iadd     r11, 1, r5.sx
3db6: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
3dbe: 520941000000           if       r0h, 0, 1, ine
3dc4: 0e31421600000000       iadd     r12, r1.sx, 1
3dcc: 1e3154e658580601       imadd    r12, r10.sx, u39.sx, r12.sx
3dd4: 0e3158a664000000       iadd     r12, r12.sx, r5.sx
3ddc: 4559800e51c11200       store    r43, du40, r12, i32, x, a
3de4: 3800                   wait     a
3de6: 520e00000000           pop_exec 1
3dec: 12825442190101300001   csel     r0h, r10, u42, 1, 0, ult
3df6: 0e314a2600000000       iadd     r12, r5.sx, 2
3dfe: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
3e06: 520941000000           if       r0h, 0, 1, ine
3e0c: 0e35422600000000       iadd     r13, r1.sx, 2
3e14: 1e355466595a0601       imadd    r13, r10.sx, u43.sx, r13.sx
3e1c: 0e355aa664000000       iadd     r13, r13.sx, r5.sx
3e24: 4541a80e51c11200       store    r40, du44, r13, i32, x, a
3e2c: 3800                   wait     a
3e2e: 520e00000000           pop_exec 1
3e34: 128254c2190101300001   csel     r0h, r10, u46, 1, 0, ult
3e3e: 0e3503a064000000       iadd     r13, 3, r5.sx
3e46: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
3e4e: 520941000000           if       r0h, 0, 1, ine
3e54: 0e39423600000000       iadd     r14, r1.sx, 3
3e5c: 1e3954e6595c0601       imadd    r14, r10.sx, u47.sx, r14.sx
3e64: 0e395ca664000000       iadd     r14, r14.sx, r5.sx
3e6c: 4549c00e61c11200       store    r41, du48, r14, i32, x, a
3e74: 3800                   wait     a
3e76: 520e00000000           pop_exec 1
3e7c: 0e39541600000000       iadd     r14, r10.sx, 1
3e84: 12825c421a0101300001   csel     r0h, r14, u50, 1, 0, ult
3e8e: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
3e96: 520941000000           if       r0h, 0, 1, ine
3e9c: 1e215c665a420611       imadd    r40, r14.sx, u51.sx, r1.sx
3ea4: 0e2150a664140000       iadd     r40, r40.sx, r5.sx
3eac: 4511080e65c11200       store    r34, du52, r40, i32, x, a
3eb4: 3800                   wait     a
3eb6: 520e00000000           pop_exec 1
3ebc: 12825cc21a0101300001   csel     r0h, r14, u54, 1, 0, ult
3ec6: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
3ece: 520941000000           if       r0h, 0, 1, ine
3ed4: 0e09421600100000       iadd     r34, r1.sx, 1
3edc: 1e095ce65a444611       imadd    r34, r14.sx, u55.sx, r34.sx
3ee4: 0e0944a664140000       iadd     r34, r34.sx, r5.sx
3eec: 4519400e74c11200       store    r35, du56, r34, i32, x, a
3ef4: 3800                   wait     a
3ef6: 520e00000000           pop_exec 1
3efc: 12825c421b0101300001   csel     r0h, r14, u58, 1, 0, ult
3f06: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
3f0e: 520941000000           if       r0h, 0, 1, ine
3f14: 0e09422600100000       iadd     r34, r1.sx, 2
3f1c: 1e095c665b444611       imadd    r34, r14.sx, u59.sx, r34.sx
3f24: 0e0944a664140000       iadd     r34, r34.sx, r5.sx
3f2c: 4501480e74c11200       store    r32, du60, r34, i32, x, a
3f34: 3800                   wait     a
3f36: 520e00000000           pop_exec 1
3f3c: 12825cc21b0101300001   csel     r0h, r14, u62, 1, 0, ult
3f46: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
3f4e: 520941000000           if       r0h, 0, 1, ine
3f54: 0e01423600100000       iadd     r32, r1.sx, 3
3f5c: 1e015ce65b404611       imadd    r32, r14.sx, u63.sx, r32.sx
3f64: 0e0140a664140000       iadd     r32, r32.sx, r5.sx
3f6c: 4509000e84c11200       store    r33, du64, r32, i32, x, a
3f74: 3800                   wait     a
3f76: 520e00000000           pop_exec 1
3f7c: 0e194c0601000000       iadd     r6, r6.sx, 16
3f84: 0e0d4c6664000000       iadd     r3, r6.sx, r3.sx
3f8c: 12825442180101300002   csel     r0h, r10, u66, 1, 0, ult
3f96: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
3f9e: 520941000000           if       r0h, 0, 1, ine
3fa4: 1e19546658420602       imadd    r6, r10.sx, u67.sx, r1.sx
3fac: 0e194c6664000000       iadd     r6, r6.sx, r3.sx
3fb4: 4531c80e80c11200       store    r38, du68, r6, i32, x, a
3fbc: 3800                   wait     a
3fbe: 520e00000000           pop_exec 1
3fc4: 128254c2180101300002   csel     r0h, r10, u70, 1, 0, ult
3fce: 0e19016064000000       iadd     r6, 1, r3.sx
3fd6: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
3fde: 520941000000           if       r0h, 0, 1, ine
3fe4: 0e01421600100000       iadd     r32, r1.sx, 1
3fec: 1e0154e658404612       imadd    r32, r10.sx, u71.sx, r32.sx
3ff4: 0e01406664140000       iadd     r32, r32.sx, r3.sx
3ffc: 4539000e94c11200       store    r39, du72, r32, i32, x, a
4004: 3800                   wait     a
4006: 520e00000000           pop_exec 1
400c: 12825442190101300002   csel     r0h, r10, u74, 1, 0, ult
4016: 0e01462600100000       iadd     r32, r3.sx, 2
401e: 128240621a4100300004   csel     r0h, r32, u19, r0h, 0, ult
4028: 520941000000           if       r0h, 0, 1, ine
402e: 0e05422600100000       iadd     r33, r1.sx, 2
4036: 1e05546659424612       imadd    r33, r10.sx, u75.sx, r33.sx
403e: 0e05426664140000       iadd     r33, r33.sx, r3.sx
4046: 4521280e94c11200       store    r36, du76, r33, i32, x, a
404e: 3800                   wait     a
4050: 520e00000000           pop_exec 1
4056: 128254c2190101300002   csel     r0h, r10, u78, 1, 0, ult
4060: 0e05036064100000       iadd     r33, 3, r3.sx
4068: 128242621a4100300004   csel     r0h, r33, u19, r0h, 0, ult
4072: 520941000000           if       r0h, 0, 1, ine
4078: 0e09423600100000       iadd     r34, r1.sx, 3
4080: 1e2954e659444602       imadd    r10, r10.sx, u79.sx, r34.sx
4088: 0e29546664000000       iadd     r10, r10.sx, r3.sx
4090: 4529400ea1c11200       store    r37, du80, r10, i32, x, a
4098: 3800                   wait     a
409a: 520e00000000           pop_exec 1
40a0: 12825c421a0101300002   csel     r0h, r14, u82, 1, 0, ult
40aa: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
40b2: 520941000000           if       r0h, 0, 1, ine
40b8: 1e295c665a420602       imadd    r10, r14.sx, u83.sx, r1.sx
40c0: 0e29546664000000       iadd     r10, r10.sx, r3.sx
40c8: 45f1480ea1c01200       store    r30, du84, r10, i32, x, a
40d0: 3800                   wait     a
40d2: 520e00000000           pop_exec 1
40d8: 12825cc21a0101300002   csel     r0h, r14, u86, 1, 0, ult
40e2: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
40ea: 520941000000           if       r0h, 0, 1, ine
40f0: 0e29421600000000       iadd     r10, r1.sx, 1
40f8: 1e295ce65a540602       imadd    r10, r14.sx, u87.sx, r10.sx
4100: 0e29546664000000       iadd     r10, r10.sx, r3.sx
4108: 45f9400eb1c01200       store    r31, du88, r10, i32, x, a
4110: 3800                   wait     a
4112: 520e00000000           pop_exec 1
4118: 12825c421b0101300002   csel     r0h, r14, u90, 1, 0, ult
4122: 128240621a4100300004   csel     r0h, r32, u19, r0h, 0, ult
412c: 520941000000           if       r0h, 0, 1, ine
4132: 0e29422600000000       iadd     r10, r1.sx, 2
413a: 1e295c665b540602       imadd    r10, r14.sx, u91.sx, r10.sx
4142: 0e29546664000000       iadd     r10, r10.sx, r3.sx
414a: 45e1480eb1c01200       store    r28, du92, r10, i32, x, a
4152: 3800                   wait     a
4154: 520e00000000           pop_exec 1
415a: 12825cc21b0101300002   csel     r0h, r14, u94, 1, 0, ult
4164: 128242621a4100300004   csel     r0h, r33, u19, r0h, 0, ult
416e: 520941000000           if       r0h, 0, 1, ine
4174: 0e29423600000000       iadd     r10, r1.sx, 3
417c: 1e295ce65b540602       imadd    r10, r14.sx, u95.sx, r10.sx
4184: 0e29546664000000       iadd     r10, r10.sx, r3.sx
418c: 45e9400ec1c01200       store    r29, du96, r10, i32, x, a
4194: 3800                   wait     a
4196: 520e00000000           pop_exec 1
419c: 0e09440601000000       iadd     r2, r2.sx, 16
41a4: 0e09442665000000       iadd     r2, r2.sx, r9.sx
41ac: 12824442180101300003   csel     r0h, r2, u98, 1, 0, ult
41b6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
41be: 520941000000           if       r0h, 0, 1, ine
41c4: 1e25446658420603       imadd    r9, r2.sx, u99.sx, r1.sx
41cc: 0e2552a664000000       iadd     r9, r9.sx, r5.sx
41d4: 45d1280ec1c01200       store    r26, du100, r9, i32, x, a
41dc: 3800                   wait     a
41de: 520e00000000           pop_exec 1
41e4: 128244c2180101300003   csel     r0h, r2, u102, 1, 0, ult
41ee: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
41f6: 520941000000           if       r0h, 0, 1, ine
41fc: 0e25421600000000       iadd     r9, r1.sx, 1
4204: 1e2544e658520603       imadd    r9, r2.sx, u103.sx, r9.sx
420c: 0e2552a664000000       iadd     r9, r9.sx, r5.sx
4214: 45d9200ed1c01200       store    r27, du104, r9, i32, x, a
421c: 3800                   wait     a
421e: 520e00000000           pop_exec 1
4224: 12824442190101300003   csel     r0h, r2, u106, 1, 0, ult
422e: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
4236: 520941000000           if       r0h, 0, 1, ine
423c: 0e25422600000000       iadd     r9, r1.sx, 2
4244: 1e25446659520603       imadd    r9, r2.sx, u107.sx, r9.sx
424c: 0e2552a664000000       iadd     r9, r9.sx, r5.sx
4254: 45c1280ed1c01200       store    r24, du108, r9, i32, x, a
425c: 3800                   wait     a
425e: 520e00000000           pop_exec 1
4264: 128244c2190101300003   csel     r0h, r2, u110, 1, 0, ult
426e: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
4276: 520941000000           if       r0h, 0, 1, ine
427c: 0e25423600000000       iadd     r9, r1.sx, 3
4284: 1e2544e659520603       imadd    r9, r2.sx, u111.sx, r9.sx
428c: 0e2552a664000000       iadd     r9, r9.sx, r5.sx
4294: 45c9200ee1c01200       store    r25, du112, r9, i32, x, a
429c: 3800                   wait     a
429e: 520e00000000           pop_exec 1
42a4: 0e25441600000000       iadd     r9, r2.sx, 1
42ac: 128252421a0101300003   csel     r0h, r9, u114, 1, 0, ult
42b6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
42be: 520941000000           if       r0h, 0, 1, ine
42c4: 1e2952665a420603       imadd    r10, r9.sx, u115.sx, r1.sx
42cc: 0e2954a664000000       iadd     r10, r10.sx, r5.sx
42d4: 4591480ee1c01200       store    r18, du116, r10, i32, x, a
42dc: 3800                   wait     a
42de: 520e00000000           pop_exec 1
42e4: 128252c21a0101300003   csel     r0h, r9, u118, 1, 0, ult
42ee: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
42f6: 520941000000           if       r0h, 0, 1, ine
42fc: 0e29421600000000       iadd     r10, r1.sx, 1
4304: 1e2952e65a540603       imadd    r10, r9.sx, u119.sx, r10.sx
430c: 0e2954a664000000       iadd     r10, r10.sx, r5.sx
4314: 4599400ef1c01200       store    r19, du120, r10, i32, x, a
431c: 3800                   wait     a
431e: 520e00000000           pop_exec 1
4324: 128252421b0101300003   csel     r0h, r9, u122, 1, 0, ult
432e: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
4336: 520941000000           if       r0h, 0, 1, ine
433c: 0e29422600000000       iadd     r10, r1.sx, 2
4344: 1e2952665b540603       imadd    r10, r9.sx, u123.sx, r10.sx
434c: 0e2954a664000000       iadd     r10, r10.sx, r5.sx
4354: 4581480ef1c01200       store    r16, du124, r10, i32, x, a
435c: 3800                   wait     a
435e: 520e00000000           pop_exec 1
4364: 128252c21b0101300003   csel     r0h, r9, u126, 1, 0, ult
436e: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
4376: 520941000000           if       r0h, 0, 1, ine
437c: 0e29423600000000       iadd     r10, r1.sx, 3
4384: 1e2952e65b540603       imadd    r10, r9.sx, u127.sx, r10.sx
438c: 0e1554a664000000       iadd     r5, r10.sx, r5.sx
4394: 7e29c0098000           mov      r10, u128
439a: 7e2dc2098000           mov      r11, u129
43a0: 4589a40610c01200       store    r17, dr10, r5, i32, x, a
43a8: 3800                   wait     a
43aa: 520e00000000           pop_exec 1
43b0: 120244421c010130       csel     r0h, r2, u130, 1, 0, ult
43b8: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
43c0: 520941000000           if       r0h, 0, 1, ine
43c6: 1e1544665c420600       imadd    r5, r2.sx, u131.sx, r1.sx
43ce: 0e154a6664000000       iadd     r5, r5.sx, r3.sx
43d6: 7e29c8098000           mov      r10, u132
43dc: 7e2dca098000           mov      r11, u133
43e2: 45b1a40610c01200       store    r22, dr10, r5, i32, x, a
43ea: 3800                   wait     a
43ec: 520e00000000           pop_exec 1
43f2: 120244c21c010130       csel     r0h, r2, u134, 1, 0, ult
43fa: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
4402: 520941000000           if       r0h, 0, 1, ine
4408: 0e15421600000000       iadd     r5, r1.sx, 1
4410: 1e1544e65c4a0600       imadd    r5, r2.sx, u135.sx, r5.sx
4418: 0e154a6664000000       iadd     r5, r5.sx, r3.sx
4420: 7e29d0098000           mov      r10, u136
4426: 7e2dd2098000           mov      r11, u137
442c: 45b9a40610c01200       store    r23, dr10, r5, i32, x, a
4434: 3800                   wait     a
4436: 520e00000000           pop_exec 1
443c: 120244421d010130       csel     r0h, r2, u138, 1, 0, ult
4444: 128240621a4100300004   csel     r0h, r32, u19, r0h, 0, ult
444e: 520941000000           if       r0h, 0, 1, ine
4454: 0e15422600000000       iadd     r5, r1.sx, 2
445c: 1e1544665d4a0600       imadd    r5, r2.sx, u139.sx, r5.sx
4464: 0e154a6664000000       iadd     r5, r5.sx, r3.sx
446c: 7e29d8098000           mov      r10, u140
4472: 7e2dda098000           mov      r11, u141
4478: 45a1a40610c01200       store    r20, dr10, r5, i32, x, a
4480: 3800                   wait     a
4482: 520e00000000           pop_exec 1
4488: 120244c21d010130       csel     r0h, r2, u142, 1, 0, ult
4490: 128242621a4100300004   csel     r0h, r33, u19, r0h, 0, ult
449a: 520941000000           if       r0h, 0, 1, ine
44a0: 0e15423600000000       iadd     r5, r1.sx, 3
44a8: 1e0944e65d4a0600       imadd    r2, r2.sx, u143.sx, r5.sx
44b0: 0e09446664000000       iadd     r2, r2.sx, r3.sx
44b8: 7e29e0098000           mov      r10, u144
44be: 7e2de2098000           mov      r11, u145
44c4: 45a9440610c01200       store    r21, dr10, r2, i32, x, a
44cc: 3800                   wait     a
44ce: 520e00000000           pop_exec 1
44d4: 120252421e010130       csel     r0h, r9, u146, 1, 0, ult
44dc: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
44e4: 520941000000           if       r0h, 0, 1, ine
44ea: 1e0952665e420600       imadd    r2, r9.sx, u147.sx, r1.sx
44f2: 0e09446664000000       iadd     r2, r2.sx, r3.sx
44fa: 7e29e8098000           mov      r10, u148
4500: 7e2dea098000           mov      r11, u149
4506: 4541440610c01200       store    r8, dr10, r2, i32, x, a
450e: 3800                   wait     a
4510: 520e00000000           pop_exec 1
4516: 120252c21e010130       csel     r0h, r9, u150, 1, 0, ult
451e: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
4526: 520941000000           if       r0h, 0, 1, ine
452c: 0e09421600000000       iadd     r2, r1.sx, 1
4534: 1e0952e65e440600       imadd    r2, r9.sx, u151.sx, r2.sx
453c: 0e09446664000000       iadd     r2, r2.sx, r3.sx
4544: 7e29f0098000           mov      r10, u152
454a: 7e2df2098000           mov      r11, u153
4550: 4579440610c01200       store    r15, dr10, r2, i32, x, a
4558: 3800                   wait     a
455a: 520e00000000           pop_exec 1
4560: 120252421f010130       csel     r0h, r9, u154, 1, 0, ult
4568: 128240621a4100300004   csel     r0h, r32, u19, r0h, 0, ult
4572: 520941000000           if       r0h, 0, 1, ine
4578: 0e09422600000000       iadd     r2, r1.sx, 2
4580: 1e0952665f440600       imadd    r2, r9.sx, u155.sx, r2.sx
4588: 0e09446664000000       iadd     r2, r2.sx, r3.sx
4590: 7e29f8098000           mov      r10, u156
4596: 7e2dfa098000           mov      r11, u157
459c: 4521440610c01200       store    r4, dr10, r2, i32, x, a
45a4: 3800                   wait     a
45a6: 520e00000000           pop_exec 1
45ac: 120252c21f010130       csel     r0h, r9, u158, 1, 0, ult
45b4: 128242621a4100300004   csel     r0h, r33, u19, r0h, 0, ult
45be: 520941000000           if       r0h, 0, 1, ine
45c4: 0e05423600000000       iadd     r1, r1.sx, 3
45cc: 1e0552e65f420600       imadd    r1, r9.sx, u159.sx, r1.sx
45d4: 0e05426664000000       iadd     r1, r1.sx, r3.sx
45dc: 7e09c0098004           mov      r2, u160
45e2: 7e0dc2098004           mov      r3, u161
45e8: 4539240600c01200       store    r7, dr2, r1, i32, x, a
45f0: 3800                   wait     a
45f2: 520e00000000           pop_exec 1
45f8: 8800                   stop




   0: 0501100d00c87200       load     r0_r1_r2, du0, 1, lsl 2, i32, xyz, a
   8: 3800                   wait     a
   a: c500803d0080f000       mov      du4, dr0
  12: c510c03d00803000       mov      u6, r2
  1a: 0501500d06c01200       load     r0, du0, 101, i32, x, a
  22: 3800                   wait     a
  24: c500e03d00803000       mov      u7, r0
  2c: 0501700d06c0f200       load     r0_r1_r2_r3, du0, 103, i32, xyzw, a
  34: 3800                   wait     a
  36: c518003d01803000       mov      u8, r3
  3e: c510203d01803000       mov      u9, r2
  46: 3e910a442400           u32_to_f r4, r2, rte
  4c: 0a154882               rcp      r5, r4
  50: 3a1148aa2430           ffma     r4, r4.neg, r5, 1.0
  56: 3a9148a2244a0200       ffma     r4, r4, r5, r5
  5e: 021148822448a004       csel     r4, r4, r4, r4, r5, feq
  66: 6215feff7f4f           ldimm    r5, 1333788670
  6c: 1a9148a22400           fmul     r4, r4, r5
  72: 3e9108802400           f_to_u32 r4, r4, rtz
  78: 1e19448664000000       imul     r6, r2.sx, r4.sx
  80: 0e1900c864000000       isub     r6, 0, r6.sx
  88: 1e1b48c224000000       imul     dr6, r4, r6
  90: 0e1148e664000000       iadd     r4, r4.sx, r7.sx
  98: c520403d01803000       mov      u10, r4
  a0: 0e09004864000000       isub     r2, 0, r2.sx
  a8: c510603d01803000       mov      u11, r2
  b0: 0511b00d06c01200       load     r2, du0, 107, i32, x, a
  b8: 3800                   wait     a
  ba: c510803d01803000       mov      u12, r2
  c2: 3e910a442400           u32_to_f r4, r2, rte
  c8: 0a194882               rcp      r6, r4
  cc: 3a1148ca2430           ffma     r4, r4.neg, r6, 1.0
  d2: 3a9148c2244c0200       ffma     r4, r4, r6, r6
  da: 021148822448c004       csel     r4, r4, r4, r4, r6, feq
  e2: 1a9148a22400           fmul     r4, r4, r5
  e8: 3e9108802400           f_to_u32 r4, r4, rtz
  ee: 1e19448664000000       imul     r6, r2.sx, r4.sx
  f6: 0e1900c864000000       isub     r6, 0, r6.sx
  fe: 1e1b48c224000000       imul     dr6, r4, r6
 106: 0e1148e664000000       iadd     r4, r4.sx, r7.sx
 10e: c520a03d01803000       mov      u13, r4
 116: 0e09004864000000       isub     r2, 0, r2.sx
 11e: c510c03d01803000       mov      u14, r2
 126: 3e890a642400           u32_to_f r2, r3, rte
 12c: 0a114482               rcp      r4, r2
 130: 3a09448a2430           ffma     r2, r2.neg, r4, 1.0
 136: 3a89448224480200       ffma     r2, r2, r4, r4
 13e: 0209444224448004       csel     r2, r2, r2, r2, r4, feq
 146: 1a8944a22400           fmul     r2, r2, r5
 14c: 3e8908402400           f_to_u32 r2, r2, rtz
 152: 1e11464664000000       imul     r4, r3.sx, r2.sx
 15a: 0e11008864000000       isub     r4, 0, r4.sx
 162: 1e1b448224000000       imul     dr6, r2, r4
 16a: 0e0944e664000000       iadd     r2, r2.sx, r7.sx
 172: c510e03d01803000       mov      u15, r2
 17a: 0e09006864000000       isub     r2, 0, r3.sx
 182: c510003d02803000       mov      u16, r2
 18a: c500203d02803000       mov      u17, r0
 192: c508403d02803000       mov      u18, r1
 19a: 0501700d01c81200       load     r0, du0, 23, lsl 2, i32, x, a
 1a2: 3800                   wait     a
 1a4: c500603d02803000       mov      u19, r0
 1ac: 0e013f0064000000       iadd     r0, 63, r0.sx
 1b4: 2e81000024060000       shr      r0, r0, 6
 1bc: c500803d02803000       mov      u20, r0
 1c4: 3e850a042400           u32_to_f r1, r0, rte
 1ca: 0a094282               rcp      r2, r1
 1ce: 3a05424a2430           ffma     r1, r1.neg, r2, 1.0
 1d4: 3a85424224440200       ffma     r1, r1, r2, r2
 1dc: 0205422224424004       csel     r1, r1, r1, r1, r2, feq
 1e4: 1a8542a22400           fmul     r1, r1, r5
 1ea: 3e8508202400           f_to_u32 r1, r1, rtz
 1f0: 1e09402664000000       imul     r2, r0.sx, r1.sx
 1f8: 0e09004864000000       isub     r2, 0, r2.sx
 200: 1e0b424224000000       imul     dr2, r1, r2
 208: 0e05426664000000       iadd     r1, r1.sx, r3.sx
 210: c508a03d02803000       mov      u21, r1
 218: 0e01000864000000       isub     r0, 0, r0.sx
 220: c500c03d02803000       mov      u22, r0
 228: 0501f00d02c47200       load     r0_r1_r2, du0, 47, lsl 1, i32, xyz, a
 230: 3800                   wait     a
 232: c510e03d02803000       mov      u23, r2
 23a: c500003d03803000       mov      u24, r0
 242: c508203d03803000       mov      u25, r1
 24a: 0501100d03c43200       load     r0_r1, du0, 49, lsl 1, i32, xy, a
 252: 3800                   wait     a
 254: c508403d03803000       mov      u26, r1
 25c: 2e81000024020000       shr      r0, r0, 2
 264: c500603d03803000       mov      u27, r0
 26c: 0501700d02c83200       load     r0_r1, du0, 39, lsl 2, i32, xy, a
 274: 3800                   wait     a
 276: 0521004500c0f200       load     r4_r5_r6_r7, dr0, 0, i32, xyzw, b
 27e: 3801                   wait     b
 280: c520803d0380f000       mov      du28, dr4
 288: 0521100500c8f200       load     r4_r5_r6_r7, dr0, 1, lsl 2, i32, xyzw, a
 290: 3800                   wait     a
 292: c520c03d0380f000       mov      du30, dr4
 29a: 0511900d01c81200       load     r2, du0, 25, lsl 2, i32, x, a
 2a2: 3800                   wait     a
 2a4: c510003d04803000       mov      u32, r2
 2ac: 0511300d03c41200       load     r2, du0, 51, lsl 1, i32, x, a
 2b4: 3800                   wait     a
 2b6: c510203d04803000       mov      u33, r2
 2be: 0511d00d05c01200       load     r2, du0, 93, i32, x, a
 2c6: 3800                   wait     a
 2c8: c510403d04803000       mov      u34, r2
 2d0: 0519100d06c01200       load     r3, du0, 97, i32, x, a
 2d8: 3800                   wait     a
 2da: c518603d04803000       mov      u35, r3
 2e2: 0521200500c8f200       load     r4_r5_r6_r7, dr0, 2, lsl 2, i32, xyzw, a
 2ea: 3800                   wait     a
 2ec: c520803d0480f000       mov      du36, dr4
 2f4: c510c03d04803000       mov      u38, r2
 2fc: c518e03d04803000       mov      u39, r3
 304: c520003d0580f000       mov      du40, dr4
 30c: c510403d05803000       mov      u42, r2
 314: c518603d05803000       mov      u43, r3
 31c: c520803d0580f000       mov      du44, dr4
 324: c510c03d05803000       mov      u46, r2
 32c: c518e03d05803000       mov      u47, r3
 334: c520003d0680f000       mov      du48, dr4
 33c: c510403d06803000       mov      u50, r2
 344: c518603d06803000       mov      u51, r3
 34c: c520803d0680f000       mov      du52, dr4
 354: c510c03d06803000       mov      u54, r2
 35c: c518e03d06803000       mov      u55, r3
 364: c520003d0780f000       mov      du56, dr4
 36c: c510403d07803000       mov      u58, r2
 374: c518603d07803000       mov      u59, r3
 37c: c520803d0780f000       mov      du60, dr4
 384: c510c03d07803000       mov      u62, r2
 38c: c518e03d078M=4096 N=512 K=14336  A=229376 blocks (33.0 MB)  B=29360.1 KB  D=8388.6 KB
03000       mov      u63, r3
 394: c520003d0880f000       mov      du64, dr4
 39c: c510403d08803000       mov      u66, r2
 3a4: c518603d08803000       mov      u67, r3
 3ac: c520803d0880f000       mov      du68, dr4
 3b4: c510c03d08803000       mov      u70, r2
 3bc: c518e03d08803000       mov      u71, r3
 3c4: c520003d0980f000       mov      du72, dr4
 3cc: c510403d09803000       mov      u74, r2
 3d4: c518603d09803000       mov      u75, r3
 3dc: c520803d0980f000       mov      du76, dr4
 3e4: c510c03d09803000       mov      u78, r2
 3ec: c518e03d09803000       mov      u79, r3
 3f4: c520003d0a80f000       mov      du80, dr4
 3fc: c510403d0a803000       mov      u82, r2
 404: c518603d0a803000       mov      u83, r3
 40c: c520803d0a80f000       mov      du84, dr4
 414: c510c03d0a803000       mov      u86, r2
 41c: c518e03d0a803000       mov      u87, r3
 424: c520003d0b80f000       mov      du88, dr4
 42c: c510403d0b803000       mov      u90, r2
 434: c518603d0b803000       mov      u91, r3
 43c: c520803d0b80f000       mov      du92, dr4
 444: c510c03d0b803000       mov      u94, r2
 44c: c518e03d0b803000       mov      u95, r3
 454: c520003d0c80f000       mov      du96, dr4
 45c: c510403d0c803000       mov      u98, r2
 464: c518603d0c803000       mov      u99, r3
 46c: c520803d0c80f000       mov      du100, dr4
 474: c510c03d0c803000       mov      u102, r2
 47c: c518e03d0c803000       mov      u103, r3
 484: c520003d0d80f000       mov      du104, dr4
 48c: c510403d0d803000       mov      u106, r2
 494: c518603d0d803000       mov      u107, r3
 49c: c520803d0d80f000       mov      du108, dr4
 4a4: c510c03d0d803000       mov      u110, r2
 4ac: c518e03d0d803000       mov      u111, r3
 4b4: c520003d0e80f000       mov      du112, dr4
 4bc: c510403d0e803000       mov      u114, r2
 4c4: c518603d0e803000       mov      u115, r3
 4cc: c520803d0e80f000       mov      du116, dr4
 4d4: c510c03d0e803000       mov      u118, r2
 4dc: c518e03d0e803000       mov      u119, r3
 4e4: c520003d0f80f000       mov      du120, dr4
 4ec: c510403d0f803000       mov      u122, r2
 4f4: c518603d0f803000       mov      u123, r3
 4fc: c520803d0f80f000       mov      du124, dr4
 504: c510c03d0f803000       mov      u126, r2
 50c: c518e03d0f803000       mov      u127, r3
 514: c520003d0080f001       mov      du128, dr4
 51c: c510403d00803001       mov      u130, r2
 524: c518603d00803001       mov      u131, r3
 52c: c520803d0080f001       mov      du132, dr4
 534: c510c03d00803001       mov      u134, r2
 53c: c518e03d00803001       mov      u135, r3
 544: c520003d0180f001       mov      du136, dr4
 54c: c510403d01803001       mov      u138, r2
 554: c518603d01803001       mov      u139, r3
 55c: c520803d0180f001       mov      du140, dr4
 564: c510c03d01803001       mov      u142, r2
 56c: c518e03d01803001       mov      u143, r3
 574: c520003d0280f001       mov      du144, dr4
 57c: c510403d02803001       mov      u146, r2
 584: c518603d02803001       mov      u147, r3
 58c: c520803d0280f001       mov      du148, dr4
 594: c510c03d02803001       mov      u150, r2
 59c: c518e03d02803001       mov      u151, r3
 5a4: c520003d0380f001       mov      du152, dr4
 5ac: c510403d03803001       mov      u154, r2
 5b4: c518603d03803001       mov      u155, r3
 5bc: c520803d0380f001       mov      du156, dr4
 5c4: c510c03d03803001       mov      u158, r2
 5cc: c518e03d03803001       mov      u159, r3
 5d4: c520003d0480f001       mov      du160, dr4
 5dc: 8800                   stop
END