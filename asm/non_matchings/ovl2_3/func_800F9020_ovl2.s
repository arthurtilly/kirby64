glabel func_800F9020_ovl2
/* 081A90 800F9020 3C0E8013 */  lui   $t6, %hi(D_80129118) # $t6, 0x8013
/* 081A94 800F9024 8DCE9118 */  lw    $t6, %lo(D_80129118)($t6)
/* 081A98 800F9028 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 081A9C 800F902C 44866000 */  mtc1  $a2, $f12
/* 081AA0 800F9030 00AE082A */  slt   $at, $a1, $t6
/* 081AA4 800F9034 AFBF0014 */  sw    $ra, 0x14($sp)
/* 081AA8 800F9038 1020000F */  beqz  $at, .L800F9078_ovl2
/* 081AAC 800F903C 00A03825 */   move  $a3, $a1
/* 081AB0 800F9040 04A2000E */  bltzl $a1, .L800F907C_ovl2
/* 081AB4 800F9044 44800000 */   mtc1  $zero, $f0
/* 081AB8 800F9048 44800000 */  mtc1  $zero, $f0
/* 081ABC 800F904C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 081AC0 800F9050 4600603C */  c.lt.s $f12, $f0
/* 081AC4 800F9054 00000000 */  nop   
/* 081AC8 800F9058 45030008 */  bc1tl .L800F907C_ovl2
/* 081ACC 800F905C 44800000 */   mtc1  $zero, $f0
/* 081AD0 800F9060 44812000 */  mtc1  $at, $f4
/* 081AD4 800F9064 3C0F8013 */  lui   $t7, %hi(D_80129114) # $t7, 0x8013
/* 081AD8 800F9068 460C203C */  c.lt.s $f4, $f12
/* 081ADC 800F906C 00000000 */  nop   
/* 081AE0 800F9070 45000007 */  bc1f  .L800F9090_ovl2
/* 081AE4 800F9074 00000000 */   nop   
.L800F9078_ovl2:
/* 081AE8 800F9078 44800000 */  mtc1  $zero, $f0
.L800F907C_ovl2:
/* 081AEC 800F907C 24020001 */  li    $v0, 1
/* 081AF0 800F9080 E4800008 */  swc1  $f0, 8($a0)
/* 081AF4 800F9084 E4800004 */  swc1  $f0, 4($a0)
/* 081AF8 800F9088 10000009 */  b     .L800F90B0_ovl2
/* 081AFC 800F908C E4800000 */   swc1  $f0, ($a0)
.L800F9090_ovl2:
/* 081B00 800F9090 8DEF9114 */  lw    $t7, %lo(D_80129114)($t7)
/* 081B04 800F9094 0007C900 */  sll   $t9, $a3, 4
/* 081B08 800F9098 44066000 */  mfc1  $a2, $f12
/* 081B0C 800F909C 8DF80004 */  lw    $t8, 4($t7)
/* 081B10 800F90A0 03194021 */  addu  $t0, $t8, $t9
/* 081B14 800F90A4 0C0078C0 */  jal   func_8001E300_ovl2
/* 081B18 800F90A8 8D050004 */   lw    $a1, 4($t0)
/* 081B1C 800F90AC 00001025 */  move  $v0, $zero
.L800F90B0_ovl2:
/* 081B20 800F90B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 081B24 800F90B4 27BD0018 */  addiu $sp, $sp, 0x18
/* 081B28 800F90B8 03E00008 */  jr    $ra
/* 081B2C 800F90BC 00000000 */   nop   