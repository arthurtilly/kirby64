glabel func_8000A730
/* 00B330 8000A730 240E0020 */  li    $t6, 32
/* 00B334 8000A734 A08E000D */  sb    $t6, 0xd($a0)
/* 00B338 8000A738 AC860028 */  sw    $a2, 0x28($a0)
/* 00B33C 8000A73C AC85002C */  sw    $a1, 0x2c($a0)
/* 00B340 8000A740 AC870030 */  sw    $a3, 0x30($a0)
/* 00B344 8000A744 8FAF0010 */  lw    $t7, 0x10($sp)
/* 00B348 8000A748 AC800038 */  sw    $zero, 0x38($a0)
/* 00B34C 8000A74C 3C188004 */  lui   $t8, %hi(D_8003DCA8) # $t8, 0x8004
/* 00B350 8000A750 AC8F0034 */  sw    $t7, 0x34($a0)
/* 00B354 8000A754 8F18DCA8 */  lw    $t8, %lo(D_8003DCA8)($t8)
/* 00B358 8000A758 2719FFFF */  addiu $t9, $t8, -1
/* 00B35C 8000A75C 03E00008 */  jr    $ra
/* 00B360 8000A760 A099000E */   sb    $t9, 0xe($a0)
