glabel func_80167B80_ovl3
/* 0C85C0 80167B80 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C85C4 80167B84 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C85C8 80167B88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0C85CC 80167B8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0C85D0 80167B90 AFA40018 */  sw    $a0, 0x18($sp)
/* 0C85D4 80167B94 8C4F0000 */  lw    $t7, ($v0)
/* 0C85D8 80167B98 3C0E800B */  lui   $t6, %hi(D_800B5094) # $t6, 0x800b
/* 0C85DC 80167B9C 3C01800E */  lui   $at, 0x800e
/* 0C85E0 80167BA0 000FC080 */  sll   $t8, $t7, 2
/* 0C85E4 80167BA4 00380821 */  addu  $at, $at, $t8
/* 0C85E8 80167BA8 25CE5094 */  addiu $t6, %lo(D_800B5094) # addiu $t6, $t6, 0x5094
/* 0C85EC 80167BAC AC2EEF90 */  sw    $t6, -0x1070($at)
/* 0C85F0 80167BB0 8C480000 */  lw    $t0, ($v0)
/* 0C85F4 80167BB4 3C01800E */  lui   $at, 0x800e
/* 0C85F8 80167BB8 2419000E */  li    $t9, 14
/* 0C85FC 80167BBC 00084880 */  sll   $t1, $t0, 2
/* 0C8600 80167BC0 00290821 */  addu  $at, $at, $t1
/* 0C8604 80167BC4 AC390F10 */  sw    $t9, 0xf10($at)
/* 0C8608 80167BC8 8C4A0000 */  lw    $t2, ($v0)
/* 0C860C 80167BCC 3C0C800E */  lui   $t4, 0x800e
/* 0C8610 80167BD0 3C01800E */  lui   $at, 0x800e
/* 0C8614 80167BD4 000A5880 */  sll   $t3, $t2, 2
/* 0C8618 80167BD8 018B6021 */  addu  $t4, $t4, $t3
/* 0C861C 80167BDC 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 0C8620 80167BE0 000C6880 */  sll   $t5, $t4, 2
/* 0C8624 80167BE4 002D0821 */  addu  $at, $at, $t5
/* 0C8628 80167BE8 0C02BB30 */  jal   func_800AECC0_ovl3
/* 0C862C 80167BEC C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C8630 80167BF0 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 0C8634 80167BF4 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 0C8638 80167BF8 3C08800E */  lui   $t0, 0x800e
/* 0C863C 80167BFC 3C01800E */  lui   $at, 0x800e
/* 0C8640 80167C00 8DEE0000 */  lw    $t6, ($t7)
/* 0C8644 80167C04 000EC080 */  sll   $t8, $t6, 2
/* 0C8648 80167C08 01184021 */  addu  $t0, $t0, $t8
/* 0C864C 80167C0C 8D080D50 */  lw    $t0, 0xd50($t0)
/* 0C8650 80167C10 0008C880 */  sll   $t9, $t0, 2
/* 0C8654 80167C14 00390821 */  addu  $at, $at, $t9
/* 0C8658 80167C18 0C02BB48 */  jal   func_800AED20_ovl3
/* 0C865C 80167C1C C42C09D0 */   lwc1  $f12, 0x9d0($at)
/* 0C8660 80167C20 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 0C8664 80167C24 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 0C8668 80167C28 3C018019 */  lui   $at, %hi(D_801971B0) # $at, 0x8019
/* 0C866C 80167C2C C42071B0 */  lwc1  $f0, %lo(D_801971B0)($at)
/* 0C8670 80167C30 8C4A0000 */  lw    $t2, ($v0)
/* 0C8674 80167C34 3C01800E */  lui   $at, 0x800e
/* 0C8678 80167C38 3C098016 */  lui   $t1, %hi(D_80167CCC) # $t1, 0x8016
/* 0C867C 80167C3C 000A5880 */  sll   $t3, $t2, 2
/* 0C8680 80167C40 002B0821 */  addu  $at, $at, $t3
/* 0C8684 80167C44 25297CCC */  addiu $t1, %lo(D_80167CCC) # addiu $t1, $t1, 0x7ccc
/* 0C8688 80167C48 AC29F150 */  sw    $t1, -0xeb0($at)
/* 0C868C 80167C4C 8C4C0000 */  lw    $t4, ($v0)
/* 0C8690 80167C50 3C01800E */  lui   $at, 0x800e
/* 0C8694 80167C54 3C040002 */  lui   $a0, (0x0002005F >> 16) # lui $a0, 2
/* 0C8698 80167C58 000C6880 */  sll   $t5, $t4, 2
/* 0C869C 80167C5C 002D0821 */  addu  $at, $at, $t5
/* 0C86A0 80167C60 E4204550 */  swc1  $f0, 0x4550($at)
/* 0C86A4 80167C64 8C4F0000 */  lw    $t7, ($v0)
/* 0C86A8 80167C68 3C01800E */  lui   $at, 0x800e
/* 0C86AC 80167C6C 3484005F */  ori   $a0, (0x0002005F & 0xFFFF) # ori $a0, $a0, 0x5f
/* 0C86B0 80167C70 000F7080 */  sll   $t6, $t7, 2
/* 0C86B4 80167C74 002E0821 */  addu  $at, $at, $t6
/* 0C86B8 80167C78 E4204710 */  swc1  $f0, 0x4710($at)
/* 0C86BC 80167C7C 8C580000 */  lw    $t8, ($v0)
/* 0C86C0 80167C80 3C01800E */  lui   $at, 0x800e
/* 0C86C4 80167C84 24050022 */  li    $a1, 34
/* 0C86C8 80167C88 00184080 */  sll   $t0, $t8, 2
/* 0C86CC 80167C8C 00280821 */  addu  $at, $at, $t0
/* 0C86D0 80167C90 24060010 */  li    $a2, 16
/* 0C86D4 80167C94 0C02A619 */  jal   func_800A9864_ovl3
/* 0C86D8 80167C98 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0C86DC 80167C9C 3C040002 */  lui   $a0, (0x000202D5 >> 16) # lui $a0, 2
/* 0C86E0 80167CA0 0C02A855 */  jal   func_800AA154_ovl3
/* 0C86E4 80167CA4 348402D5 */   ori   $a0, (0x000202D5 & 0xFFFF) # ori $a0, $a0, 0x2d5
/* 0C86E8 80167CA8 3C040002 */  lui   $a0, (0x000202D4 >> 16) # lui $a0, 2
/* 0C86EC 80167CAC 0C02A806 */  jal   func_800AA018_ovl3
/* 0C86F0 80167CB0 348402D4 */   ori   $a0, (0x000202D4 & 0xFFFF) # ori $a0, $a0, 0x2d4
/* 0C86F4 80167CB4 0C02BE85 */  jal   func_800AFA14_ovl3
/* 0C86F8 80167CB8 00000000 */   nop   
/* 0C86FC 80167CBC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0C8700 80167CC0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0C8704 80167CC4 03E00008 */  jr    $ra
/* 0C8708 80167CC8 00000000 */   nop   
