glabel func_8017499C_ovl3
/* 0D53DC 8017499C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0D53E0 801749A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D53E4 801749A4 0C054E61 */  jal   func_80153984_ovl3
/* 0D53E8 801749A8 AFA40018 */   sw    $a0, 0x18($sp)
/* 0D53EC 801749AC 0C0473D6 */  jal   func_8011CF58_ovl3
/* 0D53F0 801749B0 00000000 */   nop   
/* 0D53F4 801749B4 0C0485EE */  jal   func_801217B8_ovl3
/* 0D53F8 801749B8 00000000 */   nop   
/* 0D53FC 801749BC 10400003 */  beqz  $v0, .L801749CC_ovl3
/* 0D5400 801749C0 00000000 */   nop   
/* 0D5404 801749C4 0C048AD0 */  jal   func_80122B40_ovl3
/* 0D5408 801749C8 00000000 */   nop   
.L801749CC_ovl3:
/* 0D540C 801749CC 3C0E8013 */  lui   $t6, %hi(D_8012E7F0) # $t6, 0x8013
/* 0D5410 801749D0 8DCEE7F0 */  lw    $t6, %lo(D_8012E7F0)($t6)
/* 0D5414 801749D4 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0D5418 801749D8 51C00012 */  beql  $t6, $zero, .L80174A24_ovl3
/* 0D541C 801749DC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0D5420 801749E0 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0D5424 801749E4 3C08800F */  lui   $t0, 0x800f
/* 0D5428 801749E8 24050006 */  li    $a1, 6
/* 0D542C 801749EC 8DF80000 */  lw    $t8, ($t7)
/* 0D5430 801749F0 00002025 */  move  $a0, $zero
/* 0D5434 801749F4 0018C880 */  sll   $t9, $t8, 2
/* 0D5438 801749F8 01194021 */  addu  $t0, $t0, $t9
/* 0D543C 801749FC 8D088920 */  lw    $t0, -0x76e0($t0)
/* 0D5440 80174A00 15000005 */  bnez  $t0, .L80174A18_ovl3
/* 0D5444 80174A04 00000000 */   nop   
/* 0D5448 80174A08 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D544C 80174A0C 24040006 */   li    $a0, 6
/* 0D5450 80174A10 10000004 */  b     .L80174A24_ovl3
/* 0D5454 80174A14 8FBF0014 */   lw    $ra, 0x14($sp)
.L80174A18_ovl3:
/* 0D5458 80174A18 0C048BDB */  jal   func_80122F6C_ovl3
/* 0D545C 80174A1C 24050001 */   li    $a1, 1
/* 0D5460 80174A20 8FBF0014 */  lw    $ra, 0x14($sp)
.L80174A24_ovl3:
/* 0D5464 80174A24 27BD0018 */  addiu $sp, $sp, 0x18
/* 0D5468 80174A28 03E00008 */  jr    $ra
/* 0D546C 80174A2C 00000000 */   nop   