glabel func_80226FD8_ovl18
/* 239978 80226FD8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 23997C 80226FDC AFB2001C */  sw    $s2, 0x1c($sp)
/* 239980 80226FE0 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 239984 80226FE4 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 239988 80226FE8 8E420000 */  lw    $v0, ($s2)
/* 23998C 80226FEC AFBF002C */  sw    $ra, 0x2c($sp)
/* 239990 80226FF0 AFB50028 */  sw    $s5, 0x28($sp)
/* 239994 80226FF4 AFB40024 */  sw    $s4, 0x24($sp)
/* 239998 80226FF8 AFB30020 */  sw    $s3, 0x20($sp)
/* 23999C 80226FFC AFB10018 */  sw    $s1, 0x18($sp)
/* 2399A0 80227000 AFB00014 */  sw    $s0, 0x14($sp)
/* 2399A4 80227004 8C430000 */  lw    $v1, ($v0)
/* 2399A8 80227008 3C05800F */ lui $a1, %hi(D_800EC2E0)
/* 2399AC 8022700C 3C198023 */ lui $t9, %hi(D_8022AE14)
/* 2399B0 80227010 00031880 */  sll   $v1, $v1, 2
/* 2399B4 80227014 00A32821 */  addu  $a1, $a1, $v1
/* 2399B8 80227018 8CA5C2E0 */ lw $a1, %lo(D_800EC2E0)($a1)
/* 2399BC 8022701C 10A00008 */  beqz  $a1, .L80227040_ovl18
/* 2399C0 80227020 00057080 */   sll   $t6, $a1, 2
/* 2399C4 80227024 032EC821 */  addu  $t9, $t9, $t6
/* 2399C8 80227028 8F39AE14 */ lw $t9, %lo(D_8022AE14)($t9)
/* 2399CC 8022702C 0320F809 */  jalr  $t9
/* 2399D0 80227030 00000000 */  nop   
/* 2399D4 80227034 8E420000 */  lw    $v0, ($s2)
/* 2399D8 80227038 8C430000 */  lw    $v1, ($v0)
/* 2399DC 8022703C 00031880 */  sll   $v1, $v1, 2
.L80227040_ovl18:
/* 2399E0 80227040 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 2399E4 80227044 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 2399E8 80227048 24150001 */  li    $s5, 1
/* 2399EC 8022704C 02037821 */  addu  $t7, $s0, $v1
/* 2399F0 80227050 ADF50000 */  sw    $s5, ($t7)
/* 2399F4 80227054 8C580000 */  lw    $t8, ($v0)
/* 2399F8 80227058 3C13800D */  lui   $s3, %hi(D_800D6B74) # $s3, 0x800d
/* 2399FC 8022705C 3C014170 */  li    $at, 0x41700000 # 15.000000
/* 239A00 80227060 00184080 */  sll   $t0, $t8, 2
/* 239A04 80227064 02084821 */  addu  $t1, $s0, $t0
/* 239A08 80227068 8D2A0000 */  lw    $t2, ($t1)
/* 239A0C 8022706C 44812000 */  mtc1  $at, $f4
/* 239A10 80227070 26736B74 */  addiu $s3, %lo(D_800D6B74) # addiu $s3, $s3, 0x6b74
/* 239A14 80227074 3C01800D */  lui   $at, %hi(D_800D6B14) # $at, 0x800d
/* 239A18 80227078 AE6A0000 */  sw    $t2, ($s3)
/* 239A1C 8022707C C4266B14 */  lwc1  $f6, %lo(D_800D6B14)($at)
/* 239A20 80227080 46062202 */  mul.s $f8, $f4, $f6
/* 239A24 80227084 4600428D */  trunc.w.s $f10, $f8
/* 239A28 80227088 44045000 */  mfc1  $a0, $f10
/* 239A2C 8022708C 0C002DAF */  jal   func_8000B6BC
/* 239A30 80227090 00000000 */   nop   
/* 239A34 80227094 3C148005 */  lui   $s4, %hi(D_80048F20) # $s4, 0x8005
/* 239A38 80227098 3C11800D */  lui   $s1, %hi(D_800D6B24) # $s1, 0x800d
/* 239A3C 8022709C 26316B24 */  addiu $s1, %lo(D_800D6B24) # addiu $s1, $s1, 0x6b24
/* 239A40 802270A0 26948F20 */  addiu $s4, %lo(D_80048F20) # addiu $s4, $s4, -0x70e0
/* 239A44 802270A4 96820002 */  lhu   $v0, 2($s4)
.L802270A8_ovl18:
/* 239A48 802270A8 304C9000 */  andi  $t4, $v0, 0x9000
/* 239A4C 802270AC 1180000C */  beqz  $t4, .L802270E0_ovl18
/* 239A50 802270B0 304E0200 */   andi  $t6, $v0, 0x200
/* 239A54 802270B4 8E2D0000 */  lw    $t5, ($s1)
/* 239A58 802270B8 15A00009 */  bnez  $t5, .L802270E0_ovl18
/* 239A5C 802270BC 00000000 */   nop   
/* 239A60 802270C0 0C029D9E */  jal   func_800A7678
/* 239A64 802270C4 240400ED */   li    $a0, 237
/* 239A68 802270C8 00002025 */  move  $a0, $zero
/* 239A6C 802270CC 2405000C */  li    $a1, 12
/* 239A70 802270D0 0C029685 */  jal   func_800A5A14_ovl18
/* 239A74 802270D4 24060002 */   li    $a2, 2
/* 239A78 802270D8 10000028 */  b     .L8022717C_ovl18
/* 239A7C 802270DC 00000000 */   nop   
.L802270E0_ovl18:
/* 239A80 802270E0 11C00011 */  beqz  $t6, .L80227128_ovl18
/* 239A84 802270E4 304D0100 */   andi  $t5, $v0, 0x100
/* 239A88 802270E8 8E390000 */  lw    $t9, ($s1)
/* 239A8C 802270EC 1720000E */  bnez  $t9, .L80227128_ovl18
/* 239A90 802270F0 00000000 */   nop   
/* 239A94 802270F4 0C029D9E */  jal   func_800A7678
/* 239A98 802270F8 24040113 */   li    $a0, 275
/* 239A9C 802270FC 8E420000 */  lw    $v0, ($s2)
/* 239AA0 80227100 8C4F0000 */  lw    $t7, ($v0)
/* 239AA4 80227104 000FC080 */  sll   $t8, $t7, 2
/* 239AA8 80227108 02184021 */  addu  $t0, $s0, $t8
/* 239AAC 8022710C AD000000 */  sw    $zero, ($t0)
/* 239AB0 80227110 8C490000 */  lw    $t1, ($v0)
/* 239AB4 80227114 00095080 */  sll   $t2, $t1, 2
/* 239AB8 80227118 020A5821 */  addu  $t3, $s0, $t2
/* 239ABC 8022711C 8D6C0000 */  lw    $t4, ($t3)
/* 239AC0 80227120 10000012 */  b     .L8022716C_ovl18
/* 239AC4 80227124 AE6C0000 */   sw    $t4, ($s3)
.L80227128_ovl18:
/* 239AC8 80227128 11A00010 */  beqz  $t5, .L8022716C_ovl18
/* 239ACC 8022712C 00000000 */   nop   
/* 239AD0 80227130 8E2E0000 */  lw    $t6, ($s1)
/* 239AD4 80227134 15C0000D */  bnez  $t6, .L8022716C_ovl18
/* 239AD8 80227138 00000000 */   nop   
/* 239ADC 8022713C 0C029D9E */  jal   func_800A7678
/* 239AE0 80227140 24040113 */   li    $a0, 275
/* 239AE4 80227144 8E420000 */  lw    $v0, ($s2)
/* 239AE8 80227148 8C590000 */  lw    $t9, ($v0)
/* 239AEC 8022714C 00197880 */  sll   $t7, $t9, 2
/* 239AF0 80227150 020FC021 */  addu  $t8, $s0, $t7
/* 239AF4 80227154 AF150000 */  sw    $s5, ($t8)
/* 239AF8 80227158 8C480000 */  lw    $t0, ($v0)
/* 239AFC 8022715C 00084880 */  sll   $t1, $t0, 2
/* 239B00 80227160 02095021 */  addu  $t2, $s0, $t1
/* 239B04 80227164 8D4B0000 */  lw    $t3, ($t2)
/* 239B08 80227168 AE6B0000 */  sw    $t3, ($s3)
.L8022716C_ovl18:
/* 239B0C 8022716C 0C002DAF */  jal   func_8000B6BC
/* 239B10 80227170 02A02025 */   move  $a0, $s5
/* 239B14 80227174 1000FFCC */  b     .L802270A8_ovl18
/* 239B18 80227178 96820002 */   lhu   $v0, 2($s4)
.L8022717C_ovl18:
/* 239B1C 8022717C 0C02BE85 */  jal   func_800AFA14_ovl18
/* 239B20 80227180 00000000 */   nop   
/* 239B24 80227184 8FBF002C */  lw    $ra, 0x2c($sp)
/* 239B28 80227188 8FB00014 */  lw    $s0, 0x14($sp)
/* 239B2C 8022718C 8FB10018 */  lw    $s1, 0x18($sp)
/* 239B30 80227190 8FB2001C */  lw    $s2, 0x1c($sp)
/* 239B34 80227194 8FB30020 */  lw    $s3, 0x20($sp)
/* 239B38 80227198 8FB40024 */  lw    $s4, 0x24($sp)
/* 239B3C 8022719C 8FB50028 */  lw    $s5, 0x28($sp)
/* 239B40 802271A0 03E00008 */  jr    $ra
/* 239B44 802271A4 27BD0030 */   addiu $sp, $sp, 0x30
