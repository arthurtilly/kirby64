glabel func_800BB4E4
/* 063734 800BB4E4 00803825 */  move  $a3, $a0
/* 063738 800BB4E8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06373C 800BB4EC 3C048005 */  lui   $a0, 0x8005
/* 063740 800BB4F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 063744 800BB4F4 00872021 */  addu  $a0, $a0, $a3
/* 063748 800BB4F8 0C02ECD9 */  jal   func_800BB364_ovl1
/* 06374C 800BB4FC 80848E9C */   lb    $a0, -0x7164($a0)
/* 063750 800BB500 8FBF0014 */  lw    $ra, 0x14($sp)
/* 063754 800BB504 27BD0018 */  addiu $sp, $sp, 0x18
/* 063758 800BB508 03E00008 */  jr    $ra
/* 06375C 800BB50C 00000000 */   nop   
