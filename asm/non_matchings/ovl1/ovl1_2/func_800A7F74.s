glabel func_800A7F74
/* 0501C4 800A7F74 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0501C8 800A7F78 3C0E800D */  lui   $t6, %hi(D_800D6FB8) # $t6, 0x800d
/* 0501CC 800A7F7C 8DCE6FB8 */  lw    $t6, %lo(D_800D6FB8)($t6)
/* 0501D0 800A7F80 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0501D4 800A7F84 AFA40018 */  sw    $a0, 0x18($sp)
/* 0501D8 800A7F88 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0501DC 800A7F8C 8DCF0044 */  lw    $t7, 0x44($t6)
/* 0501E0 800A7F90 3C180001 */  lui   $t8, 1
/* 0501E4 800A7F94 00B8C804 */  sllv  $t9, $t8, $a1
/* 0501E8 800A7F98 44876000 */  mtc1  $a3, $f12
/* 0501EC 800A7F9C 01F94024 */  and   $t0, $t7, $t9
/* 0501F0 800A7FA0 1500001E */  bnez  $t0, .L800A801C_ovl1
/* 0501F4 800A7FA4 00001025 */   move  $v0, $zero
/* 0501F8 800A7FA8 000548C0 */  sll   $t1, $a1, 3
/* 0501FC 800A7FAC 01242025 */  or    $a0, $t1, $a0
/* 050200 800A7FB0 00C02825 */  move  $a1, $a2
/* 050204 800A7FB4 0C02867B */  jal   func_800A19EC_ovl1
/* 050208 800A7FB8 E7AC0024 */   swc1  $f12, 0x24($sp)
/* 05020C 800A7FBC C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 050210 800A7FC0 10400014 */  beqz  $v0, .L800A8014_ovl1
/* 050214 800A7FC4 00402025 */   move  $a0, $v0
/* 050218 800A7FC8 8C43004C */  lw    $v1, 0x4c($v0)
/* 05021C 800A7FCC 5060000B */  beql  $v1, $zero, .L800A7FFC_ovl1
/* 050220 800A7FD0 E44C0014 */   swc1  $f12, 0x14($v0)
/* 050224 800A7FD4 E46C0004 */  swc1  $f12, 4($v1)
/* 050228 800A7FD8 8C4B004C */  lw    $t3, 0x4c($v0)
/* 05022C 800A7FDC C7A40028 */  lwc1  $f4, 0x28($sp)
/* 050230 800A7FE0 E5640008 */  swc1  $f4, 8($t3)
/* 050234 800A7FE4 8C4C004C */  lw    $t4, 0x4c($v0)
/* 050238 800A7FE8 C7A6002C */  lwc1  $f6, 0x2c($sp)
/* 05023C 800A7FEC 00801025 */  move  $v0, $a0
/* 050240 800A7FF0 1000000A */  b     .L800A801C_ovl1
/* 050244 800A7FF4 E586000C */   swc1  $f6, 0xc($t4)
/* 050248 800A7FF8 E44C0014 */  swc1  $f12, 0x14($v0)
.L800A7FFC_ovl1:
/* 05024C 800A7FFC C7A80028 */  lwc1  $f8, 0x28($sp)
/* 050250 800A8000 E4480018 */  swc1  $f8, 0x18($v0)
/* 050254 800A8004 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 050258 800A8008 E44A001C */  swc1  $f10, 0x1c($v0)
/* 05025C 800A800C 10000003 */  b     .L800A801C_ovl1
/* 050260 800A8010 00801025 */   move  $v0, $a0
.L800A8014_ovl1:
/* 050264 800A8014 10000001 */  b     .L800A801C_ovl1
/* 050268 800A8018 00001025 */   move  $v0, $zero
.L800A801C_ovl1:
/* 05026C 800A801C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 050270 800A8020 27BD0018 */  addiu $sp, $sp, 0x18
/* 050274 800A8024 03E00008 */  jr    $ra
/* 050278 800A8028 00000000 */   nop   
