glabel func_80000E4C
/* 001A4C 80000E4C 8C820010 */  lw    $v0, 0x10($a0)
/* 001A50 80000E50 50400005 */  beql  $v0, $zero, .L80000E68_ovl0
/* 001A54 80000E54 8C8F000C */   lw    $t7, 0xc($a0)
/* 001A58 80000E58 8C8E000C */  lw    $t6, 0xc($a0)
/* 001A5C 80000E5C 10000004 */  b     .L80000E70_ovl0
/* 001A60 80000E60 AC4E000C */   sw    $t6, 0xc($v0)
/* 001A64 80000E64 8C8F000C */  lw    $t7, 0xc($a0)
.L80000E68_ovl0:
/* 001A68 80000E68 3C018005 */  lui   $at, %hi(D_80048B9C) # $at, 0x8005
/* 001A6C 80000E6C AC2F8B9C */  sw    $t7, %lo(D_80048B9C)($at)
.L80000E70_ovl0:
/* 001A70 80000E70 8C82000C */  lw    $v0, 0xc($a0)
/* 001A74 80000E74 50400005 */  beql  $v0, $zero, .L80000E8C_ovl0
/* 001A78 80000E78 8C990010 */   lw    $t9, 0x10($a0)
/* 001A7C 80000E7C 8C980010 */  lw    $t8, 0x10($a0)
/* 001A80 80000E80 03E00008 */  jr    $ra
/* 001A84 80000E84 AC580010 */   sw    $t8, 0x10($v0)

/* 001A88 80000E88 8C990010 */  lw    $t9, 0x10($a0)
.L80000E8C_ovl0:
/* 001A8C 80000E8C 3C018005 */  lui   $at, %hi(D_80048BA0) # $at, 0x8005
/* 001A90 80000E90 AC398BA0 */  sw    $t9, %lo(D_80048BA0)($at)
/* 001A94 80000E94 03E00008 */  jr    $ra
/* 001A98 80000E98 00000000 */   nop   
