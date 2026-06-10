   0: f2050000               mov      $r1, threadgroup_in_grid_x
   4: f2090100               mov      $r2, threadgroup_in_grid_y
   8: f20d0200               mov      $r3, threadgroup_in_grid_z
   c: 8e0dc6c658000000       iadd     $r3, ^r3.sx, u6.sx
  14: 8e0d8e656c000000       iadd     $r3, u7.sx, ^r3.sx
  1c: 1e13868219000000       imul     dr4, $r3, u12
  24: 9e118a4659000000       imul     $r4, $r5.sx, u10.sx
  2c: 8e11868e6c000000       isub     $r4, $r3.sx, ^r4.sx
  34: 8e198a1600000000       iadd     $r6, $r5.sx, 1
  3c: 9215884219cac02c       csel     $r5, $r4, u10, ^r5, ^r6, ult
  44: 8e1988a659000000       iadd     $r6, $r4.sx, u13.sx
  4c: 9211c84219c8c02c       csel     $r4, ^r4, u10, ^r4, ^r6, ult
  54: 8e198a1600000000       iadd     $r6, $r5.sx, 1
  5c: 9215884219cac02c       csel     $r5, $r4, u10, ^r5, ^r6, ult
  64: 8e1988a659000000       iadd     $r6, $r4.sx, u13.sx
  6c: 9211c84219c8c02c       csel     $r4, ^r4, u10, ^r4, ^r6, ult
  74: 1e1b8ae219000000       imul     dr6, $r5, u15
  7c: 9e198ec659000000       imul     $r6, $r7.sx, u14.sx
  84: 8e15cace6c000000       isub     $r5, ^r5.sx, ^r6.sx
  8c: 8e198e1600000000       iadd     $r6, $r7.sx, 1
  94: 92198ac219cec02c       csel     $r6, $r5, u14, ^r7, ^r6, ult
  9c: 8e1d8a065a000000       iadd     $r7, $r5.sx, u16.sx
  a4: 9215cac219cae02c       csel     $r5, ^r5, u14, ^r5, ^r7, ult
  ac: 8e1d8c1600000000       iadd     $r7, $r6.sx, 1
  b4: 9215cac219cce02c       csel     $r5, ^r5, u14, ^r6, ^r7, ult
  bc: 1e1b88221a000000       imul     dr6, $r4, u17
  c4: 9e198e6659000000       imul     $r6, $r7.sx, u11.sx
  cc: 8e11c8ce6c000000       isub     $r4, ^r4.sx, ^r6.sx
  d4: 8e198e1600000000       iadd     $r6, $r7.sx, 1
  dc: 9219886219cec02c       csel     $r6, $r4, u11, ^r7, ^r6, ult
  e4: 8e1d88465a000000       iadd     $r7, $r4.sx, u18.sx
  ec: 9211c86219c8e02c       csel     $r4, ^r4, u11, ^r4, ^r7, ult
  f4: 8e1d8c1600000000       iadd     $r7, $r6.sx, 1
  fc: 9211c86219cce02c       csel     $r4, ^r4, u11, ^r6, ^r7, ult
 104: 9e11ca2659c80600       imadd    $r4, ^r5.sx, u9.sx, ^r4.sx
 10c: 8e05c28658000000       iadd     $r1, ^r1.sx, u4.sx
 114: 1e1b82a21a000000       imul     dr6, $r1, u21
 11c: 9e158e865a000000       imul     $r5, $r7.sx, u20.sx
 124: 8e05c2ae6c000000       isub     $r1, ^r1.sx, ^r5.sx
 12c: 8e1582c65a000000       iadd     $r5, $r1.sx, u22.sx
 134: 921582821a82a02c       csel     $r5, $r1, u20, $r1, ^r5, ult
 13c: 8e198ac65a000000       iadd     $r6, $r5.sx, u22.sx
 144: 92198a821a8ac02c       csel     $r6, $r5, u20, $r5, ^r6, ult
 14c: 8e218e1600000000       iadd     $r8, $r7.sx, 1
 154: 9205c2821ace002d       csel     $r1, ^r1, u20, ^r7, ^r8, ult
 15c: 8e1d821600000000       iadd     $r7, $r1.sx, 1
 164: 9205ca821ac2e02c       csel     $r1, ^r5, u20, ^r1, ^r7, ult
 16c: f2153000               mov      $r5, thread_in_threadgroup_x
 170: ae1900c02c060000       shl      $r6, ^r6, 6
 178: 9e1d820659000000       imul     $r7, $r1.sx, u8.sx
 180: 9e214c065b8e0600       imadd    $r8, r6.sx, u24.sx, $r7.sx
 188: aea100002d020000       shr      $r8, ^r8, 2
 190: 9e11c8a65bd00600       imadd    $r4, ^r4.sx, u29.sx, ^r8.sx
 198: 9e2146665b8e0600       imadd    $r8, r3.sx, u27.sx, $r7.sx
 1a0: 8e09c4a658000000       iadd     $r2, ^r2.sx, u5.sx
 1a8: ae0900402c060000       shl      $r2, ^r2, 6
 1b0: 9e2144265bd00600       imadd    $r8, r2.sx, u25.sx, ^r8.sx
 1b8: 7e258a728000           and      r9, $r5, 7
 1be: 8e29421600000000       iadd     $r10, r1.sx, 1
 1c6: 9e29d40659000000       imul     $r10, ^r10.sx, u8.sx
 1ce: 1229ae412dae412d       csel     r10, u23, ^r10, u23, ^r10, ult
 1d6: 2ead00a028030000       shr      r11, $r5, 3
 1de: aea100002d020000       shr      $r8, ^r8, 2
 1e6: fe318af28100           and      $r12, $r5, 31
 1ec: 7e3503a0a800           and      r13, 3, $r5
 1f2: 2eb100802d020000       shr      r12, ^r12, 2
 1fa: 2eb900a068050000       bfeil    r14, 0, $r5, 5, 1
 202: 2e9500a02c060000       shr      r5, ^r5, 6
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
 2d4: 7e31ce0a8010           mov      r44, ^r7
 2da: 7e35d00a8010           mov      r45, ^r8
 2e0: 7e39c80a8010           mov      r46, ^r4
 2e6: 621100000000           ldimm    r4, 0
 2ec: 621d00000000           ldimm    r7, 0
 2f2: 622100000000           ldimm    r8, 0
 2f8: 522c58422504           while    r44, r10, 1, ult
 2fe: 20c040060000           jmp_none 1600
 304: 52093c010000           if       u30l, 0, 1, ine
 30a: 20c0e6020000           jmp_none 742
 310: 9e3d96065b000010       imul     $r47, $r11.sx, u24.sx
 318: aebd00e025020011       shr      $r47, r47, 2
 320: 8e415c2669140000       iadd     $r48, r46.sx, $r9.sx
 328: 8e3d5e0666150000       iadd     $r47, r47.sx, r48.sx
 330: fe419ef28314           and      $r48, $r47, 63
 336: 8e410000e6110000       iadd     $r48, 0, r48.sx, lsl 1
 33e: fe45a0429d15           and      $r49, $r48, u170
 344: 8e45102066110000       iadd     $r49, 16, r49.sx
 34c: fe49a0f28014           and      $r50, $r48, 15
 352: 8e456246e6150000       iadd     $r49, r49.sx, r50.sx, lsl 1
 35a: aebd00e025060011       shr      $r47, r47, 6
 362: 8e499ee6e9151000       iadd     $r50, $r47.sx, $r47.sx, lsl 3
 36a: 9e515e0601000016       imul     $r52, r47.sx, 144
 372: aed50040261c0011       shr      $r53, r50, 28
 37a: fe4980098014           mov      $r50, u32
 380: fe4d82098014           mov      $r51, u33
 386: 8e59a82666150000       iadd     $r54, $r52.sx, r49.sx
 38e: fe61a80a8014           mov      $r56, $r52
 394: fe656a0a8014           mov      $r57, r53
 39a: 0e63a40337150000       iadd     dr56, $dr50, dr56
 3a2: fe696c0a8014           mov      $r58, r54
 3a8: fe6dce098014           mov      $r59, u167
 3ae: 0e4b644337150000       iadd     dr50, dr50, dr58
 3b6: 8578000570c13000       load     r47l_r47h, dr56, 0, i16, xy, a
 3be: fe45a0f28114           and      $r49, $r48, 31
 3c4: aec1000026050011       shr      $r48, r48, 5
 3cc: aec5002026040011       shr      $r49, r49, 4
 3d4: 8e41a206e6150000       iadd     $r48, $r49.sx, r48.sx, lsl 1
 3dc: 8e51048066110000       iadd     $r52, 4, r52.sx
 3e4: 8e55a04600140000       iadd     $r53, $r48.sx, 4
 3ec: 92d9a04200a0a02a5014   csel     $r54, $r48, 4, $r48, $r53, ult
 3f6: 0e59a8c666150000       iadd     r54, $r52.sx, r54.sx
 3fe: 8e5da04e00140000       isub     $r55, $r48.sx, 4
 406: 92dda04200a0e0265014   csel     $r55, $r48, 4, $r48, r55, ult
 410: 0e5da8e666150000       iadd     r55, $r52.sx, r55.sx
 418: 0e61a8a66a150000       iadd     r56, $r52.sx, $r53.sx
 420: 92d5a042006a002a5014   csel     $r53, $r48, 4, r53, $r48, ult
 42a: 0e5168a666150000       iadd     r52, r52.sx, r53.sx
 432: 0504c04e46c01000       load     r0h, du32, r54, i8, x, b
 43a: 05a8e00e46c11000       load     r53l, du32, r55, i8, x, a
 442: 05ac000e47c11000       load     r53h, du32, r56, i8, x, a
 44a: 05a0800e46c11000       load     r52l, du32, r52, i8, x, a
 452: 0591040560c11200       load     r50, dr50, 0, i32, x, a
 45a: 92cda042000f01333014   csel     $r51, $r48, 4, 15, 240, ult
 464: 3800                   wait     a
 466: fe4d6b60a615           and      $r51, r53h, r51
 46c: 92d9a042000041300014   csel     $r54, $r48, 4, 0, 4, ult
 476: aecd0060266c4211       shr      $r51, r51, r54
 47e: 92d9a042003001303014   csel     $r54, $r48, 4, 48, 192, ult
 488: fe5d68c0aa15           and      $r55, r52l, $r54
 48e: fe516ac0a615           and      $r52, r53l, r54
 494: 92c16042000021300014   csel     $r48, r48, 4, 0, 2, ult
 49e: aed500e026a04211       shr      $r53, r55, $r48
 4a6: aec1008026604211       shr      $r48, r52, r48
 4ae: fe4d66aae615           or       $r51, r51, r53
 4b4: 3801                   wait     b
 4b6: fe5141f08010           and      $r52, r0h, 15
 4bc: fe41680ae615           or       $r48, r52, r48
 4c2: 8e45002066111000       iadd     $r49, 0, r49.sx, lsl 2
 4ca: fe4562f28114           and      $r49, r49, 31
 4d0: aec5004026624211       shr      $r49, r50, r49
 4d8: 7e0266f28307           and      r0h, r51, 255
 4de: 7e4060f28317           and      r48l, r48, 255
 4e4: fe4562a29d15           and      $r49, r49, u173
 4ea: aec900202a080011       shr      $r50, $r49, 8
 4f2: 7e4264f28317           and      r48h, r50, 255
 4f8: bec900140410           u8_to_f  $r50, r0h, rte
 4fe: 9ac95f402615           fmul     $r50, r47h, r50
 504: becd00040611           u8_to_f  $r51, r48l, rte
 50a: 9abd5e602615           fmul     $r47, r47l, r51
 510: 8e4d002069101000       iadd     $r51, 0, $r9.sx, lsl 2
 518: aecd006026010011       shr      $r51, r51, 1
 520: 9e4d961601664610       imadd    $r51, $r11.sx, 17, r51.sx
 528: bed100140611           u8_to_f  $r52, r48h, rte
 52e: 3ad59e8226a44a15       ffma     r53, $r47, r52, $r50.neg
 536: 7e02a2f28307           and      r0h, $r49, 255
 53c: bec100140410           u8_to_f  $r48, r0h, rte
 542: 3ad19e0226a44a15       ffma     r52, $r47, r48, $r50.neg
 54a: 8e410060e6111000       iadd     $r48, 0, r51.sx, lsl 3
 552: 7e02a0088004           mov      r0h, $r48l
 558: 29d1010234800010       lstore   r52_r53, r0h, 0, i32, xy
 560: fe02a3088004           mov      $r0h, $r49h
 566: aec5002026180011       shr      $r49, r49, 24
 56e: 7e4462f28317           and      r49l, r49, 255
 574: 7e0241f08303           and      r0h, r0h, 255
 57a: becd00240611           u8_to_f  $r51, r49l, rte
 580: 3ad59e6226a44a15       ffma     r53, $r47, r51, $r50.neg
 588: bec500140410           u8_to_f  $r49, r0h, rte
 58e: 3ad15e2226644a15       ffma     r52, r47, r49, r50.neg
 596: 0e3da08600140000       iadd     r47, $r48.sx, 8
 59e: 29d11e0234800014       lstore   r52_r53, r47l, 0, i32, xy
 5a6: 9e3d56265b000010       imul     $r47, r11.sx, u25.sx
 5ae: aebd00e025020011       shr      $r47, r47, 2
 5b6: 8e455a2665140000       iadd     $r49, r45.sx, r9.sx
 5be: 0e3d5e2666150000       iadd     r47, r47.sx, r49.sx
 5c6: 0e45cc056a150000       iadd     r49, u166.sx, $r48.sx
 5ce: 05a1e40e45c9f200       load     r52_r53_r54_r55, du34, r47, lsl 2, i32, xyzw, a
 5d6: 3800                   wait     a
 5d8: 29d1220234800014       lstore   r52_r53, r49l, 0, i32, xy
 5e0: 0e3de40566150000       iadd     r47, u178.sx, r48.sx
 5e8: 29d91e0234800014       lstore   r54_r55, r47l, 0, i32, xy
 5f0: 520e00000000           pop_exec 1
 5f6: 6800                   barrier
 5f8: 62bd000000000010       ldimm    r47, 0
 600: 420800000000           if       0.0, 0.0, 1, feq
 606: 522c9e020104           while    $r47, 16, 1, ult
 60c: ae4100c025050010       shl      $r48, r14, 5
 614: 8e4160a665141000       iadd     $r48, r48.sx, r13.sx, lsl 2
 61c: 9e416016019e4614       imadd    $r48, r48.sx, 17, $r47.sx
 624: 8e410000e6111000       iadd     $r48, 0, r48.sx, lsl 3
 62c: 7e02a0088004           mov      r0h, $r48l
 632: 0e45a08600160000       iadd     r49, $r48.sx, 136
 63a: 0e49a0865d150000       iadd     r50, $r48.sx, u172.sx
 642: 0e4da0065d150000       iadd     r51, $r48.sx, u168.sx
 64a: 0e51a0665e150000       iadd     r52, $r48.sx, u179.sx
 652: 0e55a0265d150000       iadd     r53, $r48.sx, u169.sx
 65a: 0e59a0665d150000       iadd     r54, $r48.sx, u171.sx
 662: 0e4160e65d150000       iadd     r48, r48.sx, u175.sx
 66a: ae5d00a024050010       shl      $r55, r5, 5
 672: 8e5d6e86e5140000       iadd     $r55, r55.sx, r12.sx, lsl 1
 67a: 9e5d6e16019e4614       imadd    $r55, r55.sx, 17, $r47.sx
 682: 8e5d00e0e6111000       iadd     $r55, 0, r55.sx, lsl 3
 68a: 0e61cce56a150000       iadd     r56, u166.sx, $r55.sx
 692: 0e65dce56a150000       iadd     r57, u174.sx, $r55.sx
 69a: 0e69e0e56a150000       iadd     r58, u176.sx, $r55.sx
 6a2: 0e5de2e566150000       iadd     r55, u177.sx, r55.sx
 6aa: 69f1010234800010       lload    r60_r61, r0h, 0, i32, xy
 6b2: 69f9220234800014       lload    r62_r63, r49l, 0, i32, xy
 6ba: 6981240234800024       lload    r64_r65, r50l, 0, i32, xy
 6c2: 6989260234800024       lload    r66_r67, r51l, 0, i32, xy
 6ca: 69c9280234800014       lload    r50_r51, r52l, 0, i32, xy
 6d2: 69912a0234800024       lload    r68_r69, r53l, 0, i32, xy
 6da: 69d12c0234800014       lload    r52_r53, r54l, 0, i32, xy
 6e2: 6999200234800024       lload    r70_r71, r48l, 0, i32, xy
 6ea: 69c1300234800014       lload    r48_r49, r56l, 0, i32, xy
 6f2: 69a1320234800024       lload    r72_r73, r57l, 0, i32, xy
 6fa: 69e1340234800014       lload    r56_r57, r58l, 0, i32, xy
 702: 69e92e0234800014       lload    r58_r59, r55l, 0, i32, xy
 70a: baa9ba222a544215       ffma     $r42, $r61, $r49, r42
 712: 3aa9b8022a544215       ffma     r42, $r60, $r48, r42
 71a: baadbe222a564215       ffma     $r43, $r63, $r49, r43
 722: 3aadbc022a564215       ffma     r43, $r62, $r48, r43
 72a: baa182222a504219       ffma     $r40, $r65, $r49, r40
 732: 3aa180022a504219       ffma     r40, $r64, $r48, r40
 73a: baa586222a524219       ffma     $r41, $r67, $r49, r41
 742: 3aa584022a524219       ffma     r41, $r66, $r48, r41
 74a: ba99a6222a4c4215       ffma     $r38, $r51, $r49, r38
 752: 3a99a4022a4c4215       ffma     r38, $r50, $r48, r38
 75a: ba9d8a222a4e4219       ffma     $r39, $r69, $r49, r39
 762: 3a9d88022a4e4219       ffma     r39, $r68, $r48, r39
 76a: ba91aa222a484215       ffma     $r36, $r53, $r49, r36
 772: 3a91a8022a484215       ffma     r36, $r52, $r48, r36
 77a: ba958e22264a4219       ffma     $r37, $r71, r49, r37
 782: 3a958c02264a4219       ffma     r37, $r70, r48, r37
 78a: ba89ba2229444216       ffma     $r34, $r61, $r73, r34
 792: 3a89b80229444216       ffma     r34, $r60, $r72, r34
 79a: ba8dbe2229464216       ffma     $r35, $r63, $r73, r35
 7a2: 3a8dbc0229464216       ffma     r35, $r62, $r72, r35
 7aa: ba8182222940421a       ffma     $r32, $r65, $r73, r32
 7b2: 3a8180022940421a       ffma     r32, $r64, $r72, r32
 7ba: ba8586222942421a       ffma     $r33, $r67, $r73, r33
 7c2: 3a8584022942421a       ffma     r33, $r66, $r72, r33
 7ca: baf9a622297c0206       ffma     $r30, $r51, $r73, r30
 7d2: 3af9a402297c0206       ffma     r30, $r50, $r72, r30
 7da: bafd8a22297e020a       ffma     $r31, $r69, $r73, r31
 7e2: 3afd8802297e020a       ffma     r31, $r68, $r72, r31
 7ea: baf1aa2229780206       ffma     $r28, $r53, $r73, r28
 7f2: 3af1a80229780206       ffma     r28, $r52, $r72, r28
 7fa: baf58e22257a020a       ffma     $r29, $r71, r73, r29
 802: 3af58c02257a020a       ffma     r29, $r70, r72, r29
 80a: bae9ba222b740205       ffma     $r26, $r61, $r57, r26
 812: 3ae9b8022b740205       ffma     r26, $r60, $r56, r26
 81a: baedbe222b760205       ffma     $r27, $r63, $r57, r27
 822: 3aedbc022b760205       ffma     r27, $r62, $r56, r27
 82a: bae182222b700209       ffma     $r24, $r65, $r57, r24
 832: 3ae180022b700209       ffma     r24, $r64, $r56, r24
 83a: bae586222b720209       ffma     $r25, $r67, $r57, r25
 842: 3ae584022b720209       ffma     r25, $r66, $r56, r25
 84a: bad9a6222b6c0205       ffma     $r22, $r51, $r57, r22
 852: 3ad9a4022b6c0205       ffma     r22, $r50, $r56, r22
 85a: badd8a222b6e0209       ffma     $r23, $r69, $r57, r23
 862: 3add88022b6e0209       ffma     r23, $r68, $r56, r23
 86a: bad1aa222b680205       ffma     $r20, $r53, $r57, r20
 872: 3ad1a8022b680205       ffma     r20, $r52, $r56, r20
 87a: bad58e22276a0209       ffma     $r21, $r71, r57, r21
 882: 3ad58c02276a0209       ffma     r21, $r70, r56, r21
 88a: bac97a622b640205       ffma     $r18, r61, $r59, r18
 892: 3ac978422b640205       ffma     r18, r60, $r58, r18
 89a: bacd7e622b660205       ffma     $r19, r63, $r59, r19
 8a2: 3acd7c422b660205       ffma     r19, r62, $r58, r19
 8aa: bac142622b600209       ffma     $r16, r65, $r59, r16
 8b2: 3ac140422b600209       ffma     r16, r64, $r58, r16
 8ba: bac546622b620209       ffma     $r17, r67, $r59, r17
 8c2: 3ac544422b620209       ffma     r17, r66, $r58, r17
 8ca: baa166622b500205       ffma     $r8, r51, $r59, r8
 8d2: 3aa164422b500205       ffma     r8, r50, $r58, r8
 8da: babd4a622b5e0209       ffma     $r15, r69, $r59, r15
 8e2: 3abd48422b5e0209       ffma     r15, r68, $r58, r15
 8ea: ba916a622b480205       ffma     $r4, r53, $r59, r4
 8f2: 3a9168422b480205       ffma     r4, r52, $r58, r4
 8fa: ba9d4e62274e0209       ffma     $r7, r71, r59, r7
 902: 3a9d4c42274e0209       ffma     r7, r70, r58, r7
 90a: 0e3d5e1600140000       iadd     r47, r47.sx, 1
 912: 00c0f4fcffff           jmp_any  -780
 918: 520e00000000           pop_exec 1
 91e: 6800                   barrier
 920: 0e395c8600140000       iadd     r46, r46.sx, 8
 928: 0e355a8600140000       iadd     r45, r45.sx, 8
 930: 0e31580602140000       iadd     r44, r44.sx, 32
 938: 00c0c0f9ffff           jmp_any  -1600
 93e: 520e00000000           pop_exec 1
 944: 9e195c06024c0600       imadd    $r6, r14.sx, 32, r6.sx
 94c: 9e094a0602440600       imadd    $r2, r5.sx, 32, r2.sx
 954: 9e0542865b000000       imul     $r1, r1.sx, u28.sx
 95c: 9e05882564000004       imul     $r1, u36.sx, r1.sx
 964: 1e0546865b420600       imadd    r1, r3.sx, u28.sx, r1.sx
 96c: 8e0d4ca665001000       iadd     $r3, r6.sx, r13.sx, lsl 2
 974: 8e094486e5000000       iadd     $r2, r2.sx, r12.sx, lsl 1
 97c: 928244a2180101300001   csel     $r0h, r2, u37, 1, 0, ult
 986: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 98e: 520941000000           if       r0h, 0, 1, ine
 994: 8e15426664000000       iadd     $r5, r1.sx, r3.sx
 99c: 1e1544c6584a0601       imadd    r5, r2.sx, u38.sx, r5.sx
 9a4: 4551a00e50c11200       store    r42, du40, r5, i32, x, a
 9ac: 3800                   wait     a
 9ae: 520e00000000           pop_exec 1
 9b4: 92824442190101300001   csel     $r0h, r2, u42, 1, 0, ult
 9be: 8e15016064000000       iadd     $r5, 1, r3.sx
 9c6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 9ce: 520941000000           if       r0h, 0, 1, ine
 9d4: 8e19421600000000       iadd     $r6, r1.sx, 1
 9dc: 8e194c6664000000       iadd     $r6, r6.sx, r3.sx
 9e4: 1e194466594c0601       imadd    r6, r2.sx, u43.sx, r6.sx
 9ec: 4559c80e50c11200       store    r43, du44, r6, i32, x, a
 9f4: 3800                   wait     a
 9f6: 520e00000000           pop_exec 1
 9fc: 928244c2190101300001   csel     $r0h, r2, u46, 1, 0, ult
 a06: 8e19462600000000       iadd     $r6, r3.sx, 2
 a0e: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 a16: 520941000000           if       r0h, 0, 1, ine
 a1c: 8e25422600000000       iadd     $r9, r1.sx, 2
 a24: 8e25526664000000       iadd     $r9, r9.sx, r3.sx
 a2c: 1e2544e659520601       imadd    r9, r2.sx, u47.sx, r9.sx
 a34: 4541200e61c11200       store    r40, du48, r9, i32, x, a
 a3c: 3800                   wait     a
 a3e: 520e00000000           pop_exec 1
 a44: 928244421a0101300001   csel     $r0h, r2, u50, 1, 0, ult
 a4e: 8e25036064000000       iadd     $r9, 3, r3.sx
 a56: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 a5e: 520941000000           if       r0h, 0, 1, ine
 a64: 8e29423600000000       iadd     $r10, r1.sx, 3
 a6c: 8e29546664000000       iadd     $r10, r10.sx, r3.sx
 a74: 1e2944665a540601       imadd    r10, r2.sx, u51.sx, r10.sx
 a7c: 4549480e61c11200       store    r41, du52, r10, i32, x, a
 a84: 3800                   wait     a
 a86: 520e00000000           pop_exec 1
 a8c: 8e29441600000000       iadd     $r10, r2.sx, 1
 a94: 928254c21a0101300001   csel     $r0h, r10, u54, 1, 0, ult
 a9e: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 aa6: 520941000000           if       r0h, 0, 1, ine
 aac: 8e2d426664000000       iadd     $r11, r1.sx, r3.sx
 ab4: 1e2d54e65a560601       imadd    r11, r10.sx, u55.sx, r11.sx
 abc: 4511600e71c11200       store    r34, du56, r11, i32, x, a
 ac4: 3800                   wait     a
 ac6: 520e00000000           pop_exec 1
 acc: 928254421b0101300001   csel     $r0h, r10, u58, 1, 0, ult
 ad6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 ade: 520941000000           if       r0h, 0, 1, ine
 ae4: 8e2d421600000000       iadd     $r11, r1.sx, 1
 aec: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 af4: 1e2d54665b560601       imadd    r11, r10.sx, u59.sx, r11.sx
 afc: 4519680e71c11200       store    r35, du60, r11, i32, x, a
 b04: 3800                   wait     a
 b06: 520e00000000           pop_exec 1
 b0c: 928254c21b0101300001   csel     $r0h, r10, u62, 1, 0, ult
 b16: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 b1e: 520941000000           if       r0h, 0, 1, ine
 b24: 8e2d422600000000       iadd     $r11, r1.sx, 2
 b2c: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 b34: 1e2d54e65b560601       imadd    r11, r10.sx, u63.sx, r11.sx
 b3c: 4501600e81c11200       store    r32, du64, r11, i32, x, a
 b44: 3800                   wait     a
 b46: 520e00000000           pop_exec 1
 b4c: 92825442180101300002   csel     $r0h, r10, u66, 1, 0, ult
 b56: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 b5e: 520941000000           if       r0h, 0, 1, ine
 b64: 8e2d423600000000       iadd     $r11, r1.sx, 3
 b6c: 8e2d566664000000       iadd     $r11, r11.sx, r3.sx
 b74: 1e2d546658560602       imadd    r11, r10.sx, u67.sx, r11.sx
 b7c: 4509680e81c11200       store    r33, du68, r11, i32, x, a
 b84: 3800                   wait     a
 b86: 520e00000000           pop_exec 1
 b8c: 928244c2180101300002   csel     $r0h, r2, u70, 1, 0, ult
 b96: 8e2d106064000000       iadd     $r11, 16, r3.sx
 b9e: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 ba6: 520941000000           if       r0h, 0, 1, ine
 bac: 8e31426665000000       iadd     $r12, r1.sx, r11.sx
 bb4: 1e3144e658580602       imadd    r12, r2.sx, u71.sx, r12.sx
 bbc: 4531800e91c11200       store    r38, du72, r12, i32, x, a
 bc4: 3800                   wait     a
 bc6: 520e00000000           pop_exec 1
 bcc: 92824442190101300002   csel     $r0h, r2, u74, 1, 0, ult
 bd6: 8e31116064000000       iadd     $r12, 17, r3.sx
 bde: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
 be6: 520941000000           if       r0h, 0, 1, ine
 bec: 8e35421600000000       iadd     $r13, r1.sx, 1
 bf4: 8e355a6665000000       iadd     $r13, r13.sx, r11.sx
 bfc: 1e354466595a0602       imadd    r13, r2.sx, u75.sx, r13.sx
 c04: 4539a80e91c11200       store    r39, du76, r13, i32, x, a
 c0c: 3800                   wait     a
 c0e: 520e00000000           pop_exec 1
 c14: 928244c2190101300002   csel     $r0h, r2, u78, 1, 0, ult
 c1e: 8e35126064000000       iadd     $r13, 18, r3.sx
 c26: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
 c2e: 520941000000           if       r0h, 0, 1, ine
 c34: 8e39422600000000       iadd     $r14, r1.sx, 2
 c3c: 8e395c6665000000       iadd     $r14, r14.sx, r11.sx
 c44: 1e3944e6595c0602       imadd    r14, r2.sx, u79.sx, r14.sx
 c4c: 4521c00ea1c11200       store    r36, du80, r14, i32, x, a
 c54: 3800                   wait     a
 c56: 520e00000000           pop_exec 1
 c5c: 928244421a0101300002   csel     $r0h, r2, u82, 1, 0, ult
 c66: 8e39136064000000       iadd     $r14, 19, r3.sx
 c6e: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
 c76: 520941000000           if       r0h, 0, 1, ine
 c7c: 8e01423600100000       iadd     $r32, r1.sx, 3
 c84: 8e01406665140000       iadd     $r32, r32.sx, r11.sx
 c8c: 1e0144665a404612       imadd    r32, r2.sx, u83.sx, r32.sx
 c94: 4529080ea4c11200       store    r37, du84, r32, i32, x, a
 c9c: 3800                   wait     a
 c9e: 520e00000000           pop_exec 1
 ca4: 928254c21a0101300002   csel     $r0h, r10, u86, 1, 0, ult
 cae: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 cb6: 520941000000           if       r0h, 0, 1, ine
 cbc: 8e01426665100000       iadd     $r32, r1.sx, r11.sx
 cc4: 1e0154e65a404612       imadd    r32, r10.sx, u87.sx, r32.sx
 ccc: 45f1000eb4c01200       store    r30, du88, r32, i32, x, a
 cd4: 3800                   wait     a
 cd6: 520e00000000           pop_exec 1
 cdc: 928254421b0101300002   csel     $r0h, r10, u90, 1, 0, ult
 ce6: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
 cee: 520941000000           if       r0h, 0, 1, ine
 cf4: 8e79421600000000       iadd     $r30, r1.sx, 1
 cfc: 8e797c6665000000       iadd     $r30, r30.sx, r11.sx
 d04: 1e7954665b7c0602       imadd    r30, r10.sx, u91.sx, r30.sx
 d0c: 45f9c80eb3c01200       store    r31, du92, r30, i32, x, a
 d14: 3800                   wait     a
 d16: 520e00000000           pop_exec 1
 d1c: 928254c21b0101300002   csel     $r0h, r10, u94, 1, 0, ult
 d26: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
 d2e: 520941000000           if       r0h, 0, 1, ine
 d34: 8e79422600000000       iadd     $r30, r1.sx, 2
 d3c: 8e797c6665000000       iadd     $r30, r30.sx, r11.sx
 d44: 1e7954e65b7c0602       imadd    r30, r10.sx, u95.sx, r30.sx
 d4c: 45e1c00ec3c01200       store    r28, du96, r30, i32, x, a
 d54: 3800                   wait     a
 d56: 520e00000000           pop_exec 1
 d5c: 92825442180101300003   csel     $r0h, r10, u98, 1, 0, ult
 d66: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
 d6e: 520941000000           if       r0h, 0, 1, ine
 d74: 8e71423600000000       iadd     $r28, r1.sx, 3
 d7c: 8e71786665000000       iadd     $r28, r28.sx, r11.sx
 d84: 1e29546658780603       imadd    r10, r10.sx, u99.sx, r28.sx
 d8c: 45e9480ec1c01200       store    r29, du100, r10, i32, x, a
 d94: 3800                   wait     a
 d96: 520e00000000           pop_exec 1
 d9c: 8e29104064000000       iadd     $r10, 16, r2.sx
 da4: 928254c2180101300003   csel     $r0h, r10, u102, 1, 0, ult
 dae: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 db6: 520941000000           if       r0h, 0, 1, ine
 dbc: 8e71426664000000       iadd     $r28, r1.sx, r3.sx
 dc4: 1e7154e658780603       imadd    r28, r10.sx, u103.sx, r28.sx
 dcc: 45d1800ed3c01200       store    r26, du104, r28, i32, x, a
 dd4: 3800                   wait     a
 dd6: 520e00000000           pop_exec 1
 ddc: 92825442190101300003   csel     $r0h, r10, u106, 1, 0, ult
 de6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 dee: 520941000000           if       r0h, 0, 1, ine
 df4: 8e69421600000000       iadd     $r26, r1.sx, 1
 dfc: 8e69746664000000       iadd     $r26, r26.sx, r3.sx
 e04: 1e69546659740603       imadd    r26, r10.sx, u107.sx, r26.sx
 e0c: 45d9480ed3c01200       store    r27, du108, r26, i32, x, a
 e14: 3800                   wait     a
 e16: 520e00000000           pop_exec 1
 e1c: 928254c2190101300003   csel     $r0h, r10, u110, 1, 0, ult
 e26: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 e2e: 520941000000           if       r0h, 0, 1, ine
 e34: 8e69422600000000       iadd     $r26, r1.sx, 2
 e3c: 8e69746664000000       iadd     $r26, r26.sx, r3.sx
 e44: 1e6954e659740603       imadd    r26, r10.sx, u111.sx, r26.sx
 e4c: 45c1400ee3c01200       store    r24, du112, r26, i32, x, a
 e54: 3800                   wait     a
 e56: 520e00000000           pop_exec 1
 e5c: 928254421a0101300003   csel     $r0h, r10, u114, 1, 0, ult
 e66: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 e6e: 520941000000           if       r0h, 0, 1, ine
 e74: 8e61423600000000       iadd     $r24, r1.sx, 3
 e7c: 8e61706664000000       iadd     $r24, r24.sx, r3.sx
 e84: 1e6154665a700603       imadd    r24, r10.sx, u115.sx, r24.sx
 e8c: 45c9080ee3c01200       store    r25, du116, r24, i32, x, a
 e94: 3800                   wait     a
 e96: 520e00000000           pop_exec 1
 e9c: 8e09114064000000       iadd     $r2, 17, r2.sx
 ea4: 928244c21a0101300003   csel     $r0h, r2, u118, 1, 0, ult
 eae: 120246621a410030       csel     r0h, r3, u19, r0h, 0, ult
 eb6: 520941000000           if       r0h, 0, 1, ine
 ebc: 8e61426664000000       iadd     $r24, r1.sx, r3.sx
 ec4: 1e6144e65a700603       imadd    r24, r2.sx, u119.sx, r24.sx
 ecc: 4591000ef3c01200       store    r18, du120, r24, i32, x, a
 ed4: 3800                   wait     a
 ed6: 520e00000000           pop_exec 1
 edc: 928244421b0101300003   csel     $r0h, r2, u122, 1, 0, ult
 ee6: 12024a621a410030       csel     r0h, r5, u19, r0h, 0, ult
 eee: 520941000000           if       r0h, 0, 1, ine
 ef4: 8e15421600000000       iadd     $r5, r1.sx, 1
 efc: 8e154a6664000000       iadd     $r5, r5.sx, r3.sx
 f04: 1e1544665b4a0603       imadd    r5, r2.sx, u123.sx, r5.sx
 f0c: 4599a80ef0c01200       store    r19, du124, r5, i32, x, a
 f14: 3800                   wait     a
 f16: 520e00000000           pop_exec 1
 f1c: 928244c21b0101300003   csel     $r0h, r2, u126, 1, 0, ult
 f26: 12024c621a410030       csel     r0h, r6, u19, r0h, 0, ult
 f2e: 520941000000           if       r0h, 0, 1, ine
 f34: 8e15422600000000       iadd     $r5, r1.sx, 2
 f3c: 8e154a6664000000       iadd     $r5, r5.sx, r3.sx
 f44: 1e1544e65b4a0603       imadd    r5, r2.sx, u127.sx, r5.sx
 f4c: 7e49c0098000           mov      r18, u128
 f52: 7e4dc2098000           mov      r19, u129
 f58: 4581a40620c01200       store    r16, dr18, r5, i32, x, a
 f60: 3800                   wait     a
 f62: 520e00000000           pop_exec 1
 f68: 920244421c010130       csel     $r0h, r2, u130, 1, 0, ult
 f70: 120252621a410030       csel     r0h, r9, u19, r0h, 0, ult
 f78: 520941000000           if       r0h, 0, 1, ine
 f7e: 8e15423600000000       iadd     $r5, r1.sx, 3
 f86: 8e0d4a6664000000       iadd     $r3, r5.sx, r3.sx
 f8e: 1e0d44665c460600       imadd    r3, r2.sx, u131.sx, r3.sx
 f96: 7e49c8098000           mov      r18, u132
 f9c: 7e4dca098000           mov      r19, u133
 fa2: 4589640620c01200       store    r17, dr18, r3, i32, x, a
 faa: 3800                   wait     a
 fac: 520e00000000           pop_exec 1
 fb2: 920254c21c010130       csel     $r0h, r10, u134, 1, 0, ult
 fba: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
 fc2: 520941000000           if       r0h, 0, 1, ine
 fc8: 8e0d426665000000       iadd     $r3, r1.sx, r11.sx
 fd0: 1e0d54e65c460600       imadd    r3, r10.sx, u135.sx, r3.sx
 fd8: 7e41d0098000           mov      r16, u136
 fde: 7e45d2098000           mov      r17, u137
 fe4: 45b1600620c01200       store    r22, dr16, r3, i32, x, a
 fec: 3800                   wait     a
 fee: 520e00000000           pop_exec 1
 ff4: 920254421d010130       csel     $r0h, r10, u138, 1, 0, ult
 ffc: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
1004: 520941000000           if       r0h, 0, 1, ine
100a: 8e0d421600000000       iadd     $r3, r1.sx, 1
1012: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
101a: 1e0d54665d460600       imadd    r3, r10.sx, u139.sx, r3.sx
1022: 7e41d8098000           mov      r16, u140
1028: 7e45da098000           mov      r17, u141
102e: 45b9600620c01200       store    r23, dr16, r3, i32, x, a
1036: 3800                   wait     a
1038: 520e00000000           pop_exec 1
103e: 920254c21d010130       csel     $r0h, r10, u142, 1, 0, ult
1046: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
104e: 520941000000           if       r0h, 0, 1, ine
1054: 8e0d422600000000       iadd     $r3, r1.sx, 2
105c: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
1064: 1e0d54e65d460600       imadd    r3, r10.sx, u143.sx, r3.sx
106c: 7e41e0098000           mov      r16, u144
1072: 7e45e2098000           mov      r17, u145
1078: 45a1600620c01200       store    r20, dr16, r3, i32, x, a
1080: 3800                   wait     a
1082: 520e00000000           pop_exec 1
1088: 920254421e010130       csel     $r0h, r10, u146, 1, 0, ult
1090: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
1098: 520941000000           if       r0h, 0, 1, ine
109e: 8e0d423600000000       iadd     $r3, r1.sx, 3
10a6: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
10ae: 1e0d54665e460600       imadd    r3, r10.sx, u147.sx, r3.sx
10b6: 7e41e8098000           mov      r16, u148
10bc: 7e45ea098000           mov      r17, u149
10c2: 45a9600620c01200       store    r21, dr16, r3, i32, x, a
10ca: 3800                   wait     a
10cc: 520e00000000           pop_exec 1
10d2: 920244c21e010130       csel     $r0h, r2, u150, 1, 0, ult
10da: 120256621a410030       csel     r0h, r11, u19, r0h, 0, ult
10e2: 520941000000           if       r0h, 0, 1, ine
10e8: 8e0d426665000000       iadd     $r3, r1.sx, r11.sx
10f0: 1e0d44e65e460600       imadd    r3, r2.sx, u151.sx, r3.sx
10f8: 7e41f0098000           mov      r16, u152
10fe: 7e45f2098000           mov      r17, u153
1104: 4541600620c01200       store    r8, dr16, r3, i32, x, a
110c: 3800                   wait     a
110e: 520e00000000           pop_exec 1
1114: 920244421f010130       csel     $r0h, r2, u154, 1, 0, ult
111c: 120258621a410030       csel     r0h, r12, u19, r0h, 0, ult
1124: 520941000000           if       r0h, 0, 1, ine
112a: 8e0d421600000000       iadd     $r3, r1.sx, 1
1132: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
113a: 1e0d44665f460600       imadd    r3, r2.sx, u155.sx, r3.sx
1142: 7e21f8098000           mov      r8, u156
1148: 7e25fa098000           mov      r9, u157
114e: 4579600610c01200       store    r15, dr8, r3, i32, x, a
1156: 3800                   wait     a
1158: 520e00000000           pop_exec 1
115e: 920244c21f010130       csel     $r0h, r2, u158, 1, 0, ult
1166: 12025a621a410030       csel     r0h, r13, u19, r0h, 0, ult
116e: 520941000000           if       r0h, 0, 1, ine
1174: 8e0d422600000000       iadd     $r3, r1.sx, 2
117c: 8e0d466665000000       iadd     $r3, r3.sx, r11.sx
1184: 1e0d44e65f460600       imadd    r3, r2.sx, u159.sx, r3.sx
118c: 7e21c0098004           mov      r8, u160
1192: 7e25c2098004           mov      r9, u161
1198: 4521600610c01200       store    r4, dr8, r3, i32, x, a
11a0: 3800                   wait     a
11a2: 520e00000000           pop_exec 1
11a8: 928244421c0101300001   csel     $r0h, r2, u162, 1, 0, ult
11b2: 12025c621a410030       csel     r0h, r14, u19, r0h, 0, ult
11ba: 520941000000           if       r0h, 0, 1, ine
11c0: 8e05423600000000       iadd     $r1, r1.sx, 3
11c8: 8e05426665000000       iadd     $r1, r1.sx, r11.sx
11d0: 1e0544665c420601       imadd    r1, r2.sx, u163.sx, r1.sx
11d8: 7e09c8098004           mov      r2, u164
11de: 7e0dca098004           mov      r3, u165
11e4: 4539240600c01200       store    r7, dr2, r1, i32, x, a
11ec: 3800                   wait     a
11ee: 520e00000000           pop_exec 1
11f4: 8800                   stop
   0: 0501500d00c87200       load     r0_r1_r2, du0, 5, lsl 2, i32, xyz, a
   8: 0521304d08c01200       load     r4, du0, 131, i32, x, b
  10: 0541500d08c0f200       load     r8_r9_r10_r11, du0, 133, i32, xyzw, a
  18: 0529900d08c01200       load     r5, du0, 137, i32, x, a
  20: 0531d00d03c41200       load     r6, du0, 61, lsl 1, i32, x, a
  28: 0561f00d01c87200       load     r12_r13_r14, du0, 31, lsl 2, i32, xyz, a
  30: 0581000d02c87200       load     r16_r17_r18, du0, 32, lsl 2, i32, xyz, a
  38: 05a1040d00c0f200       load     r20_r21_r22_r23, du2, 0, i32, xyzw, a
  40: 05c1140d00c8f200       load     r24_r25_r26_r27, du2, 1, lsl 2, i32, xyzw, a
  48: 3800                   wait     a
  4a: 0539100d02c81200       load     r7, du0, 33, lsl 2, i32, x, a
  52: 05e1b00d07c01200       load     r28, du0, 123, i32, x, a
  5a: 05e9f00d07c01200       load     r29, du0, 127, i32, x, a
  62: 0501240d00c9f200       load     r32_r33_r34_r35, du2, 2, lsl 2, i32, xyzw, a
  6a: c500803d0080f000       mov      du4, dr0
  72: c510c03d00803000       mov      u6, r2
  7a: 3801                   wait     b
  7c: c520e03d00803000       mov      u7, r4
  84: c540003d0180f000       mov      du8, dr8
  8c: 7e01940a8000           mov      r0, $r10
  92: 7e05960a8000           mov      r1, $r11
  98: c500403d0180f000       mov      du10, dr0
  a0: be810a442900           u32_to_f $r0, $r10, rte
  a6: 8a058082               rcp      $r1, $r0
  aa: ba01c02a2830           ffma     $r0, ^r0.neg, $r1, 1.0
  b0: ba81c02228820200       ffma     $r0, ^r0, $r1, $r1
  b8: 8201c0022cc0200c       csel     $r0, ^r0, ^r0, ^r0, ^r1, feq
  c0: e205feff7f4f           ldimm    $r1, 1333788670
  c6: 1a81c0222800           fmul     r0, ^r0, $r1
  cc: be8108002c00           f_to_u32 $r0, ^r0, rtz
  d2: 9e09940668000000       imul     $r2, $r10.sx, $r0.sx
  da: 8e0900486c000000       isub     $r2, 0, ^r2.sx
  e2: 1e0b80422c000000       imul     dr2, $r0, ^r2
  ea: 0e01c0666c000000       iadd     r0, ^r0.sx, ^r3.sx
  f2: c500803d01803000       mov      u12, r0
  fa: 0e0100486d000000       isub     r0, 0, ^r10.sx
 102: c500a03d01803000       mov      u13, r0
 10a: c528c03d01803000       mov      u14, r5
 112: be810aa42800           u32_to_f $r0, $r5, rte
 118: 8a098082               rcp      $r2, $r0
 11c: ba01c04a2830           ffma     $r0, ^r0.neg, $r2, 1.0
 122: ba81c04228840200       ffma     $r0, ^r0, $r2, $r2
 12a: 8201c0022cc0400c       csel     $r0, ^r0, ^r0, ^r0, ^r2, feq
 132: 1a81c0222800           fmul     r0, ^r0, $r1
 138: be8108002c00           f_to_u32 $r0, ^r0, rtz
 13e: 9e098a0668000000       imul     $r2, $r5.sx, $r0.sx
 146: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 14e: 1e0b80422c000000       imul     dr2, $r0, ^r2
 156: 0e01c0666c000000       iadd     r0, ^r0.sx, ^r3.sx
 15e: c500e03d01803000       mov      u15, r0
 166: 0e0100a86c000000       isub     r0, 0, ^r5.sx
 16e: c500003d02803000       mov      u16, r0
 176: be810a642900           u32_to_f $r0, $r11, rte
 17c: 8a098082               rcp      $r2, $r0
 180: ba01c04a2830           ffma     $r0, ^r0.neg, $r2, 1.0
 186: ba81c04228840200       ffma     $r0, ^r0, $r2, $r2
 18e: 8201c0022cc0400c       csel     $r0, ^r0, ^r0, ^r0, ^r2, feq
 196: 1a81c0222800           fmul     r0, ^r0, $r1
 19c: be8108002c00           f_to_u32 $r0, ^r0, rtz
 1a2: 9e09960668000000       imul     $r2, $r11.sx, $r0.sx
 1aa: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 1b2: 1e0b80422c000000       imul     dr2, $r0, ^r2
 1ba: 0e01c0666c000000       iadd     r0, ^r0.sx, ^r3.sx
 1c2: c500203d02803000       mov      u17, r0
 1ca: 0e0100686d000000       isub     r0, 0, ^r11.sx
 1d2: c500403d02803000       mov      u18, r0
 1da: c530603d02803000       mov      u19, r6
 1e2: 8e013fc06c000000       iadd     $r0, 63, ^r6.sx
 1ea: ae8100002c060000       shr      $r0, ^r0, 6
 1f2: c500803d02803000       mov      u20, r0
 1fa: be890a042800           u32_to_f $r2, $r0, rte
 200: 8a0d8482               rcp      $r3, $r2
 204: ba09c46a2830           ffma     $r2, ^r2.neg, $r3, 1.0
 20a: ba89c46228860200       ffma     $r2, ^r2, $r3, $r3
 212: 8209c4422cc4600c       csel     $r2, ^r2, ^r2, ^r2, ^r3, feq
 21a: 1a85c4222c00           fmul     r1, ^r2, ^r1
 220: be8508202c00           f_to_u32 $r1, ^r1, rtz
 226: 9e09802668000000       imul     $r2, $r0.sx, $r1.sx
 22e: 8e0900486c000000       isub     $r2, 0, ^r2.sx
 236: 1e0b82422c000000       imul     dr2, $r1, ^r2
 23e: 0e05c2666c000000       iadd     r1, ^r1.sx, ^r3.sx
 246: c508a03d02803000       mov      u21, r1
 24e: 0e0100086c000000       isub     r0, 0, ^r0.sx
 256: c500c03d02803000       mov      u22, r0
 25e: 7e01980a8000           mov      r0, $r12
 264: 7e05da0a8000           mov      r1, ^r13
 26a: c500e03d0280f000       mov      du23, dr0
 272: c570203d03803000       mov      u25, r14
 27a: 7e01a00a8000           mov      r0, $r16
 280: 7e05e20a8000           mov      r1, ^r17
 286: c500403d0380f000       mov      du26, dr0
 28e: c590803d03803000       mov      u28, r18
 296: 2e8100002e020000       shr      r0, ^r16, 2
 29e: c500a03d03803000       mov      u29, r0
 2a6: e201efbeadde           ldimm    $r0, 3735928559
 2ac: 1200d8022c010110       csel     r0l, ^r12, ^r0, 1, 0, ieq
 2b4: c500c03d03801000       mov      u30l, r0l
 2bc: c5a0003d0480f000       mov      du32, dr20
 2c4: c5c0403d0480f000       mov      du34, dr24
 2cc: 3800                   wait     a
 2ce: c538803d04803000       mov      u36, r7
 2d6: c5e0a03d04803000       mov      u37, r28
 2de: c5e8c03d04803000       mov      u38, r29
 2e6: c500003d0581f000       mov      du40, dr32
 2ee: c5e0403d05803000       mov      u42, r28
 2f6: c5e8603d05803000       mov      u43, r29
 2fe: c500803d0581f000       mov      du44, dr32
 306: c5e0c03d05803000       mov      u46, r28
 30e: c5e8e03d05803000       mov      u47, r29
 316: c500003d0681f000       mov      du48, dr32
 31e: c5e0403d06803000       mov      u50, r28
 326: c5e8603d06803000       mov      u51, r29
 32e: c500803d0681f000       mov      du52, dr32
 336: c5e0c03d06803000       mov      u54, r28
 33e: c5e8e03d06803000       mov      u55, r29
 346: c500003d0781f000       mov      du56, dr32
 34e: c5e0403d07803000       mov      u58, r28
 356: c5e8603d07803000       mov      u59, r29
 35e: c500803d0781f000       mov      du60, dr32
 366: c5e0c03d07803000       mov      u62, r28
 36e: c5e8e03d07803000       mov      u63, r29
 376: c500003d0881f000       mov      du64, dr32
 37e: c5e0403d08803000       mov      u66, r28
 386: c5e8603d08803000       mov      u67, r29
 38e: c500803d0881f000       mov      M=4096 N=512 K=14336  A=229376 blocks (33.0 MB)  B=29360.1 KB  D=8388.6 KB
 396: c5e0c03d08803000       mov      u70, r28
 39e: c5e8e03d08803000       mov      u71, r29
 3a6: c500003d0981f000       mov      du72, dr32
 3ae: c5e0403d09803000       mov      u74, r28
 3b6: c5e8603d09803000       mov      u75, r29
 3be: c500803d0981f000       mov      du76, dr32
 3c6: c5e0c03d09803000       mov      u78, r28
 3ce: c5e8e03d09803000       mov      u79, r29
 3d6: c500003d0a81f000       mov      du80, dr32
 3de: c5e0403d0a803000       mov      u82, r28
 3e6: c5e8603d0a803000       mov      u83, r29
 3ee: c500803d0a81f000       mov      du84, dr32
 3f6: c5e0c03d0a803000       mov      u86, r28
 3fe: c5e8e03d0a803000       mov      u87, r29
 406: c500003d0b81f000       mov      du88, dr32
 40e: c5e0403d0b803000       mov      u90, r28
 416: c5e8603d0b803000       mov      u91, r29
 41e: c500803d0b81f000       mov      du92, dr32
 426: c5e0c03d0b803000       mov      u94, r28
 42e: c5e8e03d0b803000       mov      u95, r29
 436: c500003d0c81f000       mov      du96, dr32
 43e: c5e0403d0c803000       mov      u98, r28
 446: c5e8603d0c803000       mov      u99, r29
 44e: c500803d0c81f000       mov      du100, dr32
 456: c5e0c03d0c803000       mov      u102, r28
 45e: c5e8e03d0c803000       mov      u103, r29
 466: c500003d0d81f000       mov      du104, dr32
 46e: c5e0403d0d803000       mov      u106, r28
 476: c5e8603d0d803000       mov      u107, r29
 47e: c500803d0d81f000       mov      du108, dr32
 486: c5e0c03d0d803000       mov      u110, r28
 48e: c5e8e03d0d803000       mov      u111, r29
 496: c500003d0e81f000       mov      du112, dr32
 49e: c5e0403d0e803000       mov      u114, r28
 4a6: c5e8603d0e803000       mov      u115, r29
 4ae: c500803d0e81f000       mov      du116, dr32
 4b6: c5e0c03d0e803000       mov      u118, r28
 4be: c5e8e03d0e803000       mov      u119, r29
 4c6: c500003d0f81f000       mov      du120, dr32
 4ce: c5e0403d0f803000       mov      u122, r28
 4d6: c5e8603d0f803000       mov      u123, r29
 4de: c500803d0f81f000       mov      du124, dr32
 4e6: c5e0c03d0f803000       mov      u126, r28
 4ee: c5e8e03d0f803000       mov      u127, r29
 4f6: c500003d0081f001       mov      du128, dr32
 4fe: c5e0403d00803001       mov      u130, r28
 506: c5e8603d00803001       mov      u131, r29
 50e: c500803d0081f001       mov      du132, dr32
 516: c5e0c03d00803001       mov      u134, r28
 51e: c5e8e03d00803001       mov      u135, r29
 526: c500003d0181f001       mov      du136, dr32
 52e: c5e0403d01803001       mov      u138, r28
 536: c5e8603d01803001       mov      u139, r29
 53e: c500803d0181f001       mov      du140, dr32
 546: c5e0c03d01803001       mov      u142, r28
 54e: c5e8e03d01803001       mov      u143, r29
 556: c500003d0281f001       mov      du144, dr32
 55e: c5e0403d02803001       mov      u146, r28
 566: c5e8603d02803001       mov      u147, r29
 56e: c500803d0281f001       mov      du148, dr32
 576: c5e0c03d02803001       mov      u150, r28
 57e: c5e8e03d02803001       mov      u151, r29
 586: c500003d0381f001       mov      du152, dr32
 58e: c5e0403d03803001       mov      u154, r28
 596: c5e8603d03803001       mov      u155, r29
 59e: c500803d0381f001       mov      du156, dr32
 5a6: c5e0c03d03803001       mov      u158, r28
 5ae: c5e8e03d03803001       mov      u159, r29
 5b6: c500003d0481f001       mov      du160, dr32
 5be: c5e0403d04803001       mov      u162, r28
 5c6: c5e8603d04803001       mov      u163, r29
 5ce: c500803d0481f001       mov      du164, dr32
 5d6: 8800                   stop
