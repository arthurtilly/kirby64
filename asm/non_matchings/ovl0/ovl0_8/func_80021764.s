glabel func_80021764
/* 022364 80021764 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 022368 80021768 AFB20024 */  sw    $s2, 0x24($sp)
/* 02236C 8002176C 3C128005 */  lui   $s2, %hi(gDisplayListHeads) # $s2, 0x8005
/* 022370 80021770 2652A3D0 */  addiu $s2, %lo(gDisplayListHeads) # addiu $s2, $s2, -0x5c30
/* 022374 80021774 AFBF002C */  sw    $ra, 0x2c($sp)
/* 022378 80021778 AFB30028 */  sw    $s3, 0x28($sp)
/* 02237C 8002177C AFB10020 */  sw    $s1, 0x20($sp)
/* 022380 80021780 AFB0001C */  sw    $s0, 0x1c($sp)
/* 022384 80021784 00803825 */  move  $a3, $a0
/* 022388 80021788 8CE5003C */  lw    $a1, 0x3c($a3)
/* 02238C 8002178C 02402025 */  move  $a0, $s2
/* 022390 80021790 0C00598F */  jal   func_8001663C
/* 022394 80021794 00003025 */   move  $a2, $zero
/* 022398 80021798 8E510000 */  lw    $s1, ($s2)
/* 02239C 8002179C 3C0FE700 */  lui   $t7, 0xe700
/* 0223A0 800217A0 3C19E300 */  lui   $t9, (0xE3000A01 >> 16) # lui $t9, 0xe300
/* 0223A4 800217A4 262E0008 */  addiu $t6, $s1, 8
/* 0223A8 800217A8 AE4E0000 */  sw    $t6, ($s2)
/* 0223AC 800217AC AE200004 */  sw    $zero, 4($s1)
/* 0223B0 800217B0 AE2F0000 */  sw    $t7, ($s1)
/* 0223B4 800217B4 8E510000 */  lw    $s1, ($s2)
/* 0223B8 800217B8 37390A01 */  ori   $t9, (0xE3000A01 & 0xFFFF) # ori $t9, $t9, 0xa01
/* 0223BC 800217BC 3C080030 */  lui   $t0, 0x30
/* 0223C0 800217C0 26380008 */  addiu $t8, $s1, 8
/* 0223C4 800217C4 AE580000 */  sw    $t8, ($s2)
/* 0223C8 800217C8 AE280004 */  sw    $t0, 4($s1)
/* 0223CC 800217CC AE390000 */  sw    $t9, ($s1)
/* 0223D0 800217D0 8E510000 */  lw    $s1, ($s2)
/* 0223D4 800217D4 3C0AE200 */  lui   $t2, (0xE200001C >> 16) # lui $t2, 0xe200
/* 0223D8 800217D8 354A001C */  ori   $t2, (0xE200001C & 0xFFFF) # ori $t2, $t2, 0x1c
/* 0223DC 800217DC 26290008 */  addiu $t1, $s1, 8
/* 0223E0 800217E0 AE490000 */  sw    $t1, ($s2)
/* 0223E4 800217E4 AE200004 */  sw    $zero, 4($s1)
/* 0223E8 800217E8 AE2A0000 */  sw    $t2, ($s1)
/* 0223EC 800217EC 8E500000 */  lw    $s0, ($s2)
/* 0223F0 800217F0 3C0CF700 */  lui   $t4, 0xf700
/* 0223F4 800217F4 3C04FF00 */  lui   $a0, (0xFF0000FF >> 16) # lui $a0, 0xff00
/* 0223F8 800217F8 260B0008 */  addiu $t3, $s0, 8
/* 0223FC 800217FC AE4B0000 */  sw    $t3, ($s2)
/* 022400 80021800 348400FF */  ori   $a0, (0xFF0000FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 022404 80021804 0C001E3C */  jal   func_800078F0
/* 022408 80021808 AE0C0000 */   sw    $t4, ($s0)
/* 02240C 8002180C 3C138005 */  lui   $s3, %hi(D_8004A430) # $s3, 0x8005
/* 022410 80021810 2673A430 */  addiu $s3, %lo(D_8004A430) # addiu $s3, $s3, -0x5bd0
/* 022414 80021814 AE020004 */  sw    $v0, 4($s0)
/* 022418 80021818 8E6D0000 */  lw    $t5, ($s3)
/* 02241C 8002181C 24040028 */  li    $a0, 40
/* 022420 80021820 24050015 */  li    $a1, 21
/* 022424 80021824 448D2000 */  mtc1  $t5, $f4
/* 022428 80021828 05A10005 */  bgez  $t5, .L80021840_ovl0
/* 02242C 8002182C 468021A0 */   cvt.s.w $f6, $f4
/* 022430 80021830 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 022434 80021834 44814000 */  mtc1  $at, $f8
/* 022438 80021838 00000000 */  nop   
/* 02243C 8002183C 46083180 */  add.s $f6, $f6, $f8
.L80021840_ovl0:
/* 022440 80021840 3C013B80 */  li    $at, 0x3B800000 # 0.003906
/* 022444 80021844 44815000 */  mtc1  $at, $f10
/* 022448 80021848 240E0002 */  li    $t6, 2
/* 02244C 8002184C 240F0001 */  li    $t7, 1
/* 022450 80021850 460A3402 */  mul.s $f16, $f6, $f10
/* 022454 80021854 AFAF0014 */  sw    $t7, 0x14($sp)
/* 022458 80021858 AFAE0010 */  sw    $t6, 0x10($sp)
/* 02245C 8002185C 24070003 */  li    $a3, 3
/* 022460 80021860 44068000 */  mfc1  $a2, $f16
/* 022464 80021864 0C008586 */  jal   func_80021618
/* 022468 80021868 00000000 */   nop   
/* 02246C 8002186C 3C188005 */  lui   $t8, %hi(D_8004A434) # $t8, 0x8005
/* 022470 80021870 8F18A434 */  lw    $t8, %lo(D_8004A434)($t8)
/* 022474 80021874 2410004B */  li    $s0, 75
/* 022478 80021878 02002025 */  move  $a0, $s0
/* 02247C 8002187C 44989000 */  mtc1  $t8, $f18
/* 022480 80021880 24050015 */  li    $a1, 21
/* 022484 80021884 07010005 */  bgez  $t8, .L8002189C_ovl0
/* 022488 80021888 46809120 */   cvt.s.w $f4, $f18
/* 02248C 8002188C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 022490 80021890 44814000 */  mtc1  $at, $f8
/* 022494 80021894 00000000 */  nop   
/* 022498 80021898 46082100 */  add.s $f4, $f4, $f8
.L8002189C_ovl0:
/* 02249C 8002189C 3C013B80 */  li    $at, 0x3B800000 # 0.003906
/* 0224A0 800218A0 44813000 */  mtc1  $at, $f6
/* 0224A4 800218A4 24190002 */  li    $t9, 2
/* 0224A8 800218A8 24080001 */  li    $t0, 1
/* 0224AC 800218AC 46062282 */  mul.s $f10, $f4, $f6
/* 0224B0 800218B0 AFA80014 */  sw    $t0, 0x14($sp)
/* 0224B4 800218B4 AFB90010 */  sw    $t9, 0x10($sp)
/* 0224B8 800218B8 24070003 */  li    $a3, 3
/* 0224BC 800218BC 44065000 */  mfc1  $a2, $f10
/* 0224C0 800218C0 0C008586 */  jal   func_80021618
/* 0224C4 800218C4 00000000 */   nop   
/* 0224C8 800218C8 3C098005 */  lui   $t1, %hi(D_80048C74) # $t1, 0x8005
/* 0224CC 800218CC 8D298C74 */  lw    $t1, %lo(D_80048C74)($t1)
/* 0224D0 800218D0 26100023 */  addiu $s0, $s0, 0x23
/* 0224D4 800218D4 02002025 */  move  $a0, $s0
/* 0224D8 800218D8 44898000 */  mtc1  $t1, $f16
/* 0224DC 800218DC 24050015 */  li    $a1, 21
/* 0224E0 800218E0 05210005 */  bgez  $t1, .L800218F8_ovl0
/* 0224E4 800218E4 468084A0 */   cvt.s.w $f18, $f16
/* 0224E8 800218E8 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0224EC 800218EC 44814000 */  mtc1  $at, $f8
/* 0224F0 800218F0 00000000 */  nop   
/* 0224F4 800218F4 46089480 */  add.s $f18, $f18, $f8
.L800218F8_ovl0:
/* 0224F8 800218F8 3C013B80 */  li    $at, 0x3B800000 # 0.003906
/* 0224FC 800218FC 44812000 */  mtc1  $at, $f4
/* 022500 80021900 240A0002 */  li    $t2, 2
/* 022504 80021904 240B0001 */  li    $t3, 1
/* 022508 80021908 46049182 */  mul.s $f6, $f18, $f4
/* 02250C 8002190C AFAB0014 */  sw    $t3, 0x14($sp)
/* 022510 80021910 AFAA0010 */  sw    $t2, 0x10($sp)
/* 022514 80021914 24070003 */  li    $a3, 3
/* 022518 80021918 44063000 */  mfc1  $a2, $f6
/* 02251C 8002191C 0C008586 */  jal   func_80021618
/* 022520 80021920 00000000 */   nop   
/* 022524 80021924 8E6C0000 */  lw    $t4, ($s3)
/* 022528 80021928 3C013B80 */  li    $at, 0x3B800000 # 0.003906
/* 02252C 8002192C 44810000 */  mtc1  $at, $f0
/* 022530 80021930 448C5000 */  mtc1  $t4, $f10
/* 022534 80021934 26100023 */  addiu $s0, $s0, 0x23
/* 022538 80021938 2604000A */  addiu $a0, $s0, 0xa
/* 02253C 8002193C 24050015 */  li    $a1, 21
/* 022540 80021940 05810005 */  bgez  $t4, .L80021958_ovl0
/* 022544 80021944 46805420 */   cvt.s.w $f16, $f10
/* 022548 80021948 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 02254C 8002194C 44814000 */  mtc1  $at, $f8
/* 022550 80021950 00000000 */  nop   
/* 022554 80021954 46088400 */  add.s $f16, $f16, $f8
.L80021958_ovl0:
/* 022558 80021958 3C0D8005 */  lui   $t5, %hi(D_8004A434) # $t5, 0x8005
/* 02255C 8002195C 8DADA434 */  lw    $t5, %lo(D_8004A434)($t5)
/* 022560 80021960 46008482 */  mul.s $f18, $f16, $f0
/* 022564 80021964 448D2000 */  mtc1  $t5, $f4
/* 022568 80021968 05A10005 */  bgez  $t5, .L80021980_ovl0
/* 02256C 8002196C 468021A0 */   cvt.s.w $f6, $f4
/* 022570 80021970 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 022574 80021974 44815000 */  mtc1  $at, $f10
/* 022578 80021978 00000000 */  nop   
/* 02257C 8002197C 460A3180 */  add.s $f6, $f6, $f10
.L80021980_ovl0:
/* 022580 80021980 46003202 */  mul.s $f8, $f6, $f0
/* 022584 80021984 240E0002 */  li    $t6, 2
/* 022588 80021988 240F0001 */  li    $t7, 1
/* 02258C 8002198C AFAF0014 */  sw    $t7, 0x14($sp)
/* 022590 80021990 AFAE0010 */  sw    $t6, 0x10($sp)
/* 022594 80021994 24070003 */  li    $a3, 3
/* 022598 80021998 46089400 */  add.s $f16, $f18, $f8
/* 02259C 8002199C 44068000 */  mfc1  $a2, $f16
/* 0225A0 800219A0 0C008586 */  jal   func_80021618
/* 0225A4 800219A4 00000000 */   nop   
/* 0225A8 800219A8 3C188009 */  lui   $t8, %hi(D_80095DC0) # $t8, 0x8009
/* 0225AC 800219AC 8F185DC0 */  lw    $t8, %lo(D_80095DC0)($t8)
/* 0225B0 800219B0 26100046 */  addiu $s0, $s0, 0x46
/* 0225B4 800219B4 02002025 */  move  $a0, $s0
/* 0225B8 800219B8 44982000 */  mtc1  $t8, $f4
/* 0225BC 800219BC 24050015 */  li    $a1, 21
/* 0225C0 800219C0 07010005 */  bgez  $t8, .L800219D8_ovl0
/* 0225C4 800219C4 468022A0 */   cvt.s.w $f10, $f4
/* 0225C8 800219C8 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 0225CC 800219CC 44813000 */  mtc1  $at, $f6
/* 0225D0 800219D0 00000000 */  nop   
/* 0225D4 800219D4 46065280 */  add.s $f10, $f10, $f6
.L800219D8_ovl0:
/* 0225D8 800219D8 3C013B80 */  li    $at, 0x3B800000 # 0.003906
/* 0225DC 800219DC 44819000 */  mtc1  $at, $f18
/* 0225E0 800219E0 24190002 */  li    $t9, 2
/* 0225E4 800219E4 24080001 */  li    $t0, 1
/* 0225E8 800219E8 46125202 */  mul.s $f8, $f10, $f18
/* 0225EC 800219EC AFA80014 */  sw    $t0, 0x14($sp)
/* 0225F0 800219F0 AFB90010 */  sw    $t9, 0x10($sp)
/* 0225F4 800219F4 24070003 */  li    $a3, 3
/* 0225F8 800219F8 44064000 */  mfc1  $a2, $f8
/* 0225FC 800219FC 0C008586 */  jal   func_80021618
/* 022600 80021A00 00000000 */   nop   
/* 022604 80021A04 3C098005 */  lui   $t1, %hi(D_80048C78) # $t1, 0x8005
/* 022608 80021A08 8D298C78 */  lw    $t1, %lo(D_80048C78)($t1)
/* 02260C 80021A0C 26040023 */  addiu $a0, $s0, 0x23
/* 022610 80021A10 24050015 */  li    $a1, 21
/* 022614 80021A14 44898000 */  mtc1  $t1, $f16
/* 022618 80021A18 05210005 */  bgez  $t1, .L80021A30_ovl0
/* 02261C 80021A1C 46808120 */   cvt.s.w $f4, $f16
/* 022620 80021A20 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 022624 80021A24 44813000 */  mtc1  $at, $f6
/* 022628 80021A28 00000000 */  nop   
/* 02262C 80021A2C 46062100 */  add.s $f4, $f4, $f6
.L80021A30_ovl0:
/* 022630 80021A30 3C013B80 */  li    $at, 0x3B800000 # 0.003906
/* 022634 80021A34 44815000 */  mtc1  $at, $f10
/* 022638 80021A38 240A0002 */  li    $t2, 2
/* 02263C 80021A3C 240B0001 */  li    $t3, 1
/* 022640 80021A40 460A2482 */  mul.s $f18, $f4, $f10
/* 022644 80021A44 AFAB0014 */  sw    $t3, 0x14($sp)
/* 022648 80021A48 AFAA0010 */  sw    $t2, 0x10($sp)
/* 02264C 80021A4C 24070003 */  li    $a3, 3
/* 022650 80021A50 44069000 */  mfc1  $a2, $f18
/* 022654 80021A54 0C008586 */  jal   func_80021618
/* 022658 80021A58 00000000 */   nop   
/* 02265C 80021A5C 8E510000 */  lw    $s1, ($s2)
/* 022660 80021A60 3C0DE700 */  lui   $t5, 0xe700
/* 022664 80021A64 2405003E */  li    $a1, 62
/* 022668 80021A68 262C0008 */  addiu $t4, $s1, 8
/* 02266C 80021A6C AE4C0000 */  sw    $t4, ($s2)
/* 022670 80021A70 AE200004 */  sw    $zero, 4($s1)
/* 022674 80021A74 AE2D0000 */  sw    $t5, ($s1)
/* 022678 80021A78 8E630000 */  lw    $v1, ($s3)
/* 02267C 80021A7C 2406001F */  li    $a2, 31
/* 022680 80021A80 240E0020 */  li    $t6, 32
/* 022684 80021A84 00031882 */  srl   $v1, $v1, 2
/* 022688 80021A88 2C610101 */  sltiu $at, $v1, 0x101
/* 02268C 80021A8C 14200003 */  bnez  $at, .L80021A9C_ovl0
/* 022690 80021A90 00601025 */   move  $v0, $v1
/* 022694 80021A94 10000001 */  b     .L80021A9C_ovl0
/* 022698 80021A98 24020100 */   li    $v0, 256
.L80021A9C_ovl0:
/* 02269C 80021A9C 8E510000 */  lw    $s1, ($s2)
/* 0226A0 80021AA0 2447003E */  addiu $a3, $v0, 0x3e
/* 0226A4 80021AA4 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0226A8 80021AA8 262F0008 */  addiu $t7, $s1, 8
/* 0226AC 80021AAC AE4F0000 */  sw    $t7, ($s2)
/* 0226B0 80021AB0 0C00859A */  jal   func_80021668
/* 0226B4 80021AB4 02202025 */   move  $a0, $s1
/* 0226B8 80021AB8 8E510000 */  lw    $s1, ($s2)
/* 0226BC 80021ABC 3C19E700 */  lui   $t9, 0xe700
/* 0226C0 80021AC0 3C09F700 */  lui   $t1, 0xf700
/* 0226C4 80021AC4 26380008 */  addiu $t8, $s1, 8
/* 0226C8 80021AC8 AE580000 */  sw    $t8, ($s2)
/* 0226CC 80021ACC AE200004 */  sw    $zero, 4($s1)
/* 0226D0 80021AD0 AE390000 */  sw    $t9, ($s1)
/* 0226D4 80021AD4 8E530000 */  lw    $s3, ($s2)
/* 0226D8 80021AD8 3C04FF00 */  lui   $a0, (0xFF00FFFF >> 16) # lui $a0, 0xff00
/* 0226DC 80021ADC 24100021 */  li    $s0, 33
/* 0226E0 80021AE0 26680008 */  addiu $t0, $s3, 8
/* 0226E4 80021AE4 AE480000 */  sw    $t0, ($s2)
/* 0226E8 80021AE8 3484FFFF */  ori   $a0, (0xFF00FFFF & 0xFFFF) # ori $a0, $a0, 0xffff
/* 0226EC 80021AEC 0C001E3C */  jal   func_800078F0
/* 0226F0 80021AF0 AE690000 */   sw    $t1, ($s3)
/* 0226F4 80021AF4 AE620004 */  sw    $v0, 4($s3)
/* 0226F8 80021AF8 3C038005 */  lui   $v1, %hi(D_8004A434) # $v1, 0x8005
/* 0226FC 80021AFC 8C63A434 */  lw    $v1, %lo(D_8004A434)($v1)
/* 022700 80021B00 2405003E */  li    $a1, 62
/* 022704 80021B04 02003025 */  move  $a2, $s0
/* 022708 80021B08 00031882 */  srl   $v1, $v1, 2
/* 02270C 80021B0C 2C610101 */  sltiu $at, $v1, 0x101
/* 022710 80021B10 14200003 */  bnez  $at, .L80021B20_ovl0
/* 022714 80021B14 260A0001 */   addiu $t2, $s0, 1
/* 022718 80021B18 10000002 */  b     .L80021B24_ovl0
/* 02271C 80021B1C 24020100 */   li    $v0, 256
.L80021B20_ovl0:
/* 022720 80021B20 00601025 */  move  $v0, $v1
.L80021B24_ovl0:
/* 022724 80021B24 8E510000 */  lw    $s1, ($s2)
/* 022728 80021B28 2447003E */  addiu $a3, $v0, 0x3e
/* 02272C 80021B2C AFAA0010 */  sw    $t2, 0x10($sp)
/* 022730 80021B30 262B0008 */  addiu $t3, $s1, 8
/* 022734 80021B34 AE4B0000 */  sw    $t3, ($s2)
/* 022738 80021B38 0C00859A */  jal   func_80021668
/* 02273C 80021B3C 02202025 */   move  $a0, $s1
/* 022740 80021B40 8E510000 */  lw    $s1, ($s2)
/* 022744 80021B44 3C0DE700 */  lui   $t5, 0xe700
/* 022748 80021B48 3C0FF700 */  lui   $t7, 0xf700
/* 02274C 80021B4C 262C0008 */  addiu $t4, $s1, 8
/* 022750 80021B50 AE4C0000 */  sw    $t4, ($s2)
/* 022754 80021B54 AE200004 */  sw    $zero, 4($s1)
/* 022758 80021B58 AE2D0000 */  sw    $t5, ($s1)
/* 02275C 80021B5C 8E530000 */  lw    $s3, ($s2)
/* 022760 80021B60 3C0400FF */  lui   $a0, (0x00FF00FF >> 16) # lui $a0, 0xff
/* 022764 80021B64 26100002 */  addiu $s0, $s0, 2
/* 022768 80021B68 266E0008 */  addiu $t6, $s3, 8
/* 02276C 80021B6C AE4E0000 */  sw    $t6, ($s2)
/* 022770 80021B70 348400FF */  ori   $a0, (0x00FF00FF & 0xFFFF) # ori $a0, $a0, 0xff
/* 022774 80021B74 0C001E3C */  jal   func_800078F0
/* 022778 80021B78 AE6F0000 */   sw    $t7, ($s3)
/* 02277C 80021B7C AE620004 */  sw    $v0, 4($s3)
/* 022780 80021B80 3C038005 */  lui   $v1, %hi(D_80048C74) # $v1, 0x8005
/* 022784 80021B84 8C638C74 */  lw    $v1, %lo(D_80048C74)($v1)
/* 022788 80021B88 2405003E */  li    $a1, 62
/* 02278C 80021B8C 02003025 */  move  $a2, $s0
/* 022790 80021B90 00031882 */  srl   $v1, $v1, 2
/* 022794 80021B94 2C610101 */  sltiu $at, $v1, 0x101
/* 022798 80021B98 14200003 */  bnez  $at, .L80021BA8_ovl0
/* 02279C 80021B9C 26180001 */   addiu $t8, $s0, 1
/* 0227A0 80021BA0 10000002 */  b     .L80021BAC_ovl0
/* 0227A4 80021BA4 24020100 */   li    $v0, 256
.L80021BA8_ovl0:
/* 0227A8 80021BA8 00601025 */  move  $v0, $v1
.L80021BAC_ovl0:
/* 0227AC 80021BAC 8E510000 */  lw    $s1, ($s2)
/* 0227B0 80021BB0 2447003E */  addiu $a3, $v0, 0x3e
/* 0227B4 80021BB4 AFB80010 */  sw    $t8, 0x10($sp)
/* 0227B8 80021BB8 26390008 */  addiu $t9, $s1, 8
/* 0227BC 80021BBC AE590000 */  sw    $t9, ($s2)
/* 0227C0 80021BC0 0C00859A */  jal   func_80021668
/* 0227C4 80021BC4 02202025 */   move  $a0, $s1
/* 0227C8 80021BC8 8E510000 */  lw    $s1, ($s2)
/* 0227CC 80021BCC 3C09E700 */  lui   $t1, 0xe700
/* 0227D0 80021BD0 3C0BF700 */  lui   $t3, 0xf700
/* 0227D4 80021BD4 26280008 */  addiu $t0, $s1, 8
/* 0227D8 80021BD8 AE480000 */  sw    $t0, ($s2)
/* 0227DC 80021BDC AE200004 */  sw    $zero, 4($s1)
/* 0227E0 80021BE0 AE290000 */  sw    $t1, ($s1)
/* 0227E4 80021BE4 8E530000 */  lw    $s3, ($s2)
/* 0227E8 80021BE8 3C041010 */  lui   $a0, (0x101010FF >> 16) # lui $a0, 0x1010
/* 0227EC 80021BEC 348410FF */  ori   $a0, (0x101010FF & 0xFFFF) # ori $a0, $a0, 0x10ff
/* 0227F0 80021BF0 266A0008 */  addiu $t2, $s3, 8
/* 0227F4 80021BF4 AE4A0000 */  sw    $t2, ($s2)
/* 0227F8 80021BF8 0C001E3C */  jal   func_800078F0
/* 0227FC 80021BFC AE6B0000 */   sw    $t3, ($s3)
/* 022800 80021C00 AE620004 */  sw    $v0, 4($s3)
/* 022804 80021C04 2413013E */  li    $s3, 318
/* 022808 80021C08 2410003E */  li    $s0, 62
/* 02280C 80021C0C 8E510000 */  lw    $s1, ($s2)
.L80021C10_ovl0:
/* 022810 80021C10 240C0024 */  li    $t4, 36
/* 022814 80021C14 AFAC0010 */  sw    $t4, 0x10($sp)
/* 022818 80021C18 262D0008 */  addiu $t5, $s1, 8
/* 02281C 80021C1C AE4D0000 */  sw    $t5, ($s2)
/* 022820 80021C20 02002825 */  move  $a1, $s0
/* 022824 80021C24 2406001F */  li    $a2, 31
/* 022828 80021C28 02003825 */  move  $a3, $s0
/* 02282C 80021C2C 0C00859A */  jal   func_80021668
/* 022830 80021C30 02202025 */   move  $a0, $s1
/* 022834 80021C34 26100040 */  addiu $s0, $s0, 0x40
/* 022838 80021C38 5613FFF5 */  bnel  $s0, $s3, .L80021C10_ovl0
/* 02283C 80021C3C 8E510000 */   lw    $s1, ($s2)
/* 022840 80021C40 8E510000 */  lw    $s1, ($s2)
/* 022844 80021C44 3C0FE700 */  lui   $t7, 0xe700
/* 022848 80021C48 3C19E300 */  lui   $t9, (0xE3000A01 >> 16) # lui $t9, 0xe300
/* 02284C 80021C4C 262E0008 */  addiu $t6, $s1, 8
/* 022850 80021C50 AE4E0000 */  sw    $t6, ($s2)
/* 022854 80021C54 AE200004 */  sw    $zero, 4($s1)
/* 022858 80021C58 AE2F0000 */  sw    $t7, ($s1)
/* 02285C 80021C5C 8E510000 */  lw    $s1, ($s2)
/* 022860 80021C60 37390A01 */  ori   $t9, (0xE3000A01 & 0xFFFF) # ori $t9, $t9, 0xa01
/* 022864 80021C64 3C09E200 */  lui   $t1, (0xE200001C >> 16) # lui $t1, 0xe200
/* 022868 80021C68 26380008 */  addiu $t8, $s1, 8
/* 02286C 80021C6C AE580000 */  sw    $t8, ($s2)
/* 022870 80021C70 AE200004 */  sw    $zero, 4($s1)
/* 022874 80021C74 AE390000 */  sw    $t9, ($s1)
/* 022878 80021C78 8E510000 */  lw    $s1, ($s2)
/* 02287C 80021C7C 3C0A0055 */  lui   $t2, (0x00552078 >> 16) # lui $t2, 0x55
/* 022880 80021C80 354A2078 */  ori   $t2, (0x00552078 & 0xFFFF) # ori $t2, $t2, 0x2078
/* 022884 80021C84 26280008 */  addiu $t0, $s1, 8
/* 022888 80021C88 AE480000 */  sw    $t0, ($s2)
/* 02288C 80021C8C 3529001C */  ori   $t1, (0xE200001C & 0xFFFF) # ori $t1, $t1, 0x1c
/* 022890 80021C90 AE290000 */  sw    $t1, ($s1)
/* 022894 80021C94 AE2A0004 */  sw    $t2, 4($s1)
/* 022898 80021C98 8FBF002C */  lw    $ra, 0x2c($sp)
/* 02289C 80021C9C 8FB30028 */  lw    $s3, 0x28($sp)
/* 0228A0 80021CA0 8FB20024 */  lw    $s2, 0x24($sp)
/* 0228A4 80021CA4 8FB10020 */  lw    $s1, 0x20($sp)
/* 0228A8 80021CA8 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0228AC 80021CAC 03E00008 */  jr    $ra
/* 0228B0 80021CB0 27BD0030 */   addiu $sp, $sp, 0x30
