glabel func_802223D8_ovl18
/* 234D78 802223D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 234D7C 802223DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 234D80 802223E0 0C06835D */  jal   func_801A0D74_ovl18
/* 234D84 802223E4 00000000 */   nop   
/* 234D88 802223E8 1440000B */  bnez  $v0, .L80222418_ovl18
/* 234D8C 802223EC 3C0E8005 */   lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 234D90 802223F0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 234D94 802223F4 3C04800E */ lui $a0, %hi(D_800DDFD0)
/* 234D98 802223F8 3C068023 */  lui   $a2, %hi(D_8022ABD8) # $a2, 0x8023
/* 234D9C 802223FC 8DCF0000 */  lw    $t7, ($t6)
/* 234DA0 80222400 24C6ABD8 */  addiu $a2, %lo(D_8022ABD8) # addiu $a2, $a2, -0x5428
/* 234DA4 80222404 24050001 */  li    $a1, 1
/* 234DA8 80222408 000FC080 */  sll   $t8, $t7, 2
/* 234DAC 8022240C 00982021 */  addu  $a0, $a0, $t8
/* 234DB0 80222410 0C02911F */  jal   func_800A447C_ovl18
/* 234DB4 80222414 8C84DFD0 */ lw $a0, %lo(D_800DDFD0)($a0)
.L80222418_ovl18:
/* 234DB8 80222418 0C087D73 */  jal   func_8021F5CC_ovl18
/* 234DBC 8022241C 00000000 */   nop   
/* 234DC0 80222420 8FBF0014 */  lw    $ra, 0x14($sp)
/* 234DC4 80222424 27BD0018 */  addiu $sp, $sp, 0x18
/* 234DC8 80222428 03E00008 */  jr    $ra
/* 234DCC 8022242C 00000000 */   nop   