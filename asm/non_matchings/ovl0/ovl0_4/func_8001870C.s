glabel atan2f
/* 01930C 8001870C 44801000 */  mtc1  $zero, $f2
/* 019310 80018710 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 019314 80018714 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 019318 80018718 460E103C */  c.lt.s $f2, $f14
/* 01931C 8001871C 46006506 */  mov.s $f20, $f12
/* 019320 80018720 AFBF001C */  sw    $ra, 0x1c($sp)
/* 019324 80018724 45020006 */  bc1fl .L80018740_ovl0
/* 019328 80018728 4602703C */   c.lt.s $f14, $f2
/* 01932C 8001872C 0C006179 */  jal   atanf
/* 019330 80018730 460E6303 */   div.s $f12, $f12, $f14
/* 019334 80018734 10000031 */  b     .L800187FC_ovl0
/* 019338 80018738 8FBF001C */   lw    $ra, 0x1c($sp)
/* 01933C 8001873C 4602703C */  c.lt.s $f14, $f2
.L80018740_ovl0:
/* 019340 80018740 00000000 */  nop   
/* 019344 80018744 4502001B */  bc1fl .L800187B4_ovl0
/* 019348 80018748 4602A032 */   c.eq.s $f20, $f2
/* 01934C 8001874C 4602A03C */  c.lt.s $f20, $f2
/* 019350 80018750 24020001 */  li    $v0, 1
/* 019354 80018754 460EA003 */  div.s $f0, $f20, $f14
/* 019358 80018758 45000003 */  bc1f  .L80018768_ovl0
/* 01935C 8001875C 00000000 */   nop   
/* 019360 80018760 10000001 */  b     .L80018768_ovl0
/* 019364 80018764 2402FFFF */   li    $v0, -1
.L80018768_ovl0:
/* 019368 80018768 4602003C */  c.lt.s $f0, $f2
/* 01936C 8001876C 00000000 */  nop   
/* 019370 80018770 45020004 */  bc1fl .L80018784_ovl0
/* 019374 80018774 46000306 */   mov.s $f12, $f0
/* 019378 80018778 10000002 */  b     .L80018784_ovl0
/* 01937C 8001877C 46000307 */   neg.s $f12, $f0
/* 019380 80018780 46000306 */  mov.s $f12, $f0
.L80018784_ovl0:
/* 019384 80018784 0C006179 */  jal   atanf
/* 019388 80018788 AFA20020 */   sw    $v0, 0x20($sp)
/* 01938C 8001878C 8FA20020 */  lw    $v0, 0x20($sp)
/* 019390 80018790 3C018004 */  lui   $at, %hi(D_80040C40) # $at, 0x8004
/* 019394 80018794 C4240C40 */  lwc1  $f4, %lo(D_80040C40)($at)
/* 019398 80018798 44824000 */  mtc1  $v0, $f8
/* 01939C 8001879C 46002181 */  sub.s $f6, $f4, $f0
/* 0193A0 800187A0 468042A0 */  cvt.s.w $f10, $f8
/* 0193A4 800187A4 460A3002 */  mul.s $f0, $f6, $f10
/* 0193A8 800187A8 10000014 */  b     .L800187FC_ovl0
/* 0193AC 800187AC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0193B0 800187B0 4602A032 */  c.eq.s $f20, $f2
.L800187B4_ovl0:
/* 0193B4 800187B4 00000000 */  nop   
/* 0193B8 800187B8 4503000F */  bc1tl .L800187F8_ovl0
/* 0193BC 800187BC 46001006 */   mov.s $f0, $f2
/* 0193C0 800187C0 4602A03C */  c.lt.s $f20, $f2
/* 0193C4 800187C4 24020001 */  li    $v0, 1
/* 0193C8 800187C8 45000003 */  bc1f  .L800187D8_ovl0
/* 0193CC 800187CC 00000000 */   nop   
/* 0193D0 800187D0 10000001 */  b     .L800187D8_ovl0
/* 0193D4 800187D4 2402FFFF */   li    $v0, -1
.L800187D8_ovl0:
/* 0193D8 800187D8 44828000 */  mtc1  $v0, $f16
/* 0193DC 800187DC 3C018004 */  lui   $at, %hi(D_80040C44) # $at, 0x8004
/* 0193E0 800187E0 C4240C44 */  lwc1  $f4, %lo(D_80040C44)($at)
/* 0193E4 800187E4 468084A0 */  cvt.s.w $f18, $f16
/* 0193E8 800187E8 46049002 */  mul.s $f0, $f18, $f4
/* 0193EC 800187EC 10000003 */  b     .L800187FC_ovl0
/* 0193F0 800187F0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0193F4 800187F4 46001006 */  mov.s $f0, $f2
.L800187F8_ovl0:
/* 0193F8 800187F8 8FBF001C */  lw    $ra, 0x1c($sp)
.L800187FC_ovl0:
/* 0193FC 800187FC D7B40010 */  ldc1  $f20, 0x10($sp)
/* 019400 80018800 27BD0028 */  addiu $sp, $sp, 0x28
/* 019404 80018804 03E00008 */  jr    $ra
/* 019408 80018808 00000000 */   nop   
