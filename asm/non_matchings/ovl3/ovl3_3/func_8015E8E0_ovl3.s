glabel func_8015E8E0_ovl3
/* 0BF320 8015E8E0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0BF324 8015E8E4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0BF328 8015E8E8 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 0BF32C 8015E8EC 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 0BF330 8015E8F0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0BF334 8015E8F4 8E500000 */  lw    $s0, ($s2)
/* 0BF338 8015E8F8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0BF33C 8015E8FC AFB30020 */  sw    $s3, 0x20($sp)
/* 0BF340 8015E900 AFB10018 */  sw    $s1, 0x18($sp)
/* 0BF344 8015E904 8E0E0000 */  lw    $t6, ($s0)
/* 0BF348 8015E908 44802000 */  mtc1  $zero, $f4
/* 0BF34C 8015E90C 3C01800F */  lui   $at, 0x800f
/* 0BF350 8015E910 000E7880 */  sll   $t7, $t6, 2
/* 0BF354 8015E914 002F0821 */  addu  $at, $at, $t7
/* 0BF358 8015E918 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 0BF35C 8015E91C 8E180000 */  lw    $t8, ($s0)
/* 0BF360 8015E920 3C05800F */  lui   $a1, %hi(D_800E9FE0) # $a1, 0x800f
/* 0BF364 8015E924 24A59FE0 */  addiu $a1, %lo(D_800E9FE0) # addiu $a1, $a1, -0x6020
/* 0BF368 8015E928 0018C880 */  sll   $t9, $t8, 2
/* 0BF36C 8015E92C 00B95821 */  addu  $t3, $a1, $t9
/* 0BF370 8015E930 AD600000 */  sw    $zero, ($t3)
/* 0BF374 8015E934 8E020000 */  lw    $v0, ($s0)
/* 0BF378 8015E938 3C01800F */  lui   $at, 0x800f
/* 0BF37C 8015E93C 3C13800F */  lui   $s3, %hi(D_800E9AA0) # $s3, 0x800f
/* 0BF380 8015E940 00021080 */  sll   $v0, $v0, 2
/* 0BF384 8015E944 00A26021 */  addu  $t4, $a1, $v0
/* 0BF388 8015E948 8D830000 */  lw    $v1, ($t4)
/* 0BF38C 8015E94C 00220821 */  addu  $at, $at, $v0
/* 0BF390 8015E950 26739AA0 */  addiu $s3, %lo(D_800E9AA0) # addiu $s3, $s3, -0x6560
/* 0BF394 8015E954 AC239C60 */  sw    $v1, -0x63a0($at)
/* 0BF398 8015E958 8E0D0000 */  lw    $t5, ($s0)
/* 0BF39C 8015E95C 3C01800F */  lui   $at, 0x800f
/* 0BF3A0 8015E960 000D7080 */  sll   $t6, $t5, 2
/* 0BF3A4 8015E964 026E7821 */  addu  $t7, $s3, $t6
/* 0BF3A8 8015E968 ADE30000 */  sw    $v1, ($t7)
/* 0BF3AC 8015E96C 8E180000 */  lw    $t8, ($s0)
/* 0BF3B0 8015E970 0018C880 */  sll   $t9, $t8, 2
/* 0BF3B4 8015E974 00390821 */  addu  $at, $at, $t9
/* 0BF3B8 8015E978 0C058738 */  jal   func_80161CE0_ovl3
/* 0BF3BC 8015E97C AC2398E0 */   sw    $v1, -0x6720($at)
/* 0BF3C0 8015E980 00002025 */  move  $a0, $zero
/* 0BF3C4 8015E984 24050000 */  li    $a1, 0
/* 0BF3C8 8015E988 0C0587B0 */  jal   func_80161EC0_ovl3
/* 0BF3CC 8015E98C 3C0641A0 */   lui   $a2, 0x41a0
/* 0BF3D0 8015E990 8E500000 */  lw    $s0, ($s2)
/* 0BF3D4 8015E994 3C0B800B */  lui   $t3, %hi(D_800B4954) # $t3, 0x800b
/* 0BF3D8 8015E998 3C01800E */  lui   $at, 0x800e
/* 0BF3DC 8015E99C 8E0C0000 */  lw    $t4, ($s0)
/* 0BF3E0 8015E9A0 256B4954 */  addiu $t3, %lo(D_800B4954) # addiu $t3, $t3, 0x4954
/* 0BF3E4 8015E9A4 3C0E8016 */  lui   $t6, %hi(D_8015ED2C) # $t6, 0x8016
/* 0BF3E8 8015E9A8 000C6880 */  sll   $t5, $t4, 2
/* 0BF3EC 8015E9AC 002D0821 */  addu  $at, $at, $t5
/* 0BF3F0 8015E9B0 AC2BEF90 */  sw    $t3, -0x1070($at)
/* 0BF3F4 8015E9B4 8E0F0000 */  lw    $t7, ($s0)
/* 0BF3F8 8015E9B8 3C01800E */  lui   $at, 0x800e
/* 0BF3FC 8015E9BC 25CEED2C */  addiu $t6, %lo(D_8015ED2C) # addiu $t6, $t6, -0x12d4
/* 0BF400 8015E9C0 000FC080 */  sll   $t8, $t7, 2
/* 0BF404 8015E9C4 00380821 */  addu  $at, $at, $t8
/* 0BF408 8015E9C8 AC2EF150 */  sw    $t6, -0xeb0($at)
/* 0BF40C 8015E9CC 8E190000 */  lw    $t9, ($s0)
/* 0BF410 8015E9D0 44803000 */  mtc1  $zero, $f6
/* 0BF414 8015E9D4 3C01800E */  lui   $at, 0x800e
/* 0BF418 8015E9D8 00196080 */  sll   $t4, $t9, 2
/* 0BF41C 8015E9DC 002C0821 */  addu  $at, $at, $t4
/* 0BF420 8015E9E0 E42641D0 */  swc1  $f6, 0x41d0($at)
/* 0BF424 8015E9E4 8E0B0000 */  lw    $t3, ($s0)
/* 0BF428 8015E9E8 3C01800F */  lui   $at, 0x800f
/* 0BF42C 8015E9EC 3C0F8019 */  lui   $t7, %hi(D_80192EB8) # $t7, 0x8019
/* 0BF430 8015E9F0 000B6880 */  sll   $t5, $t3, 2
/* 0BF434 8015E9F4 002D0821 */  addu  $at, $at, $t5
/* 0BF438 8015E9F8 AC208760 */  sw    $zero, -0x78a0($at)
/* 0BF43C 8015E9FC 8E0E0000 */  lw    $t6, ($s0)
/* 0BF440 8015EA00 3C01800E */  lui   $at, 0x800e
/* 0BF444 8015EA04 25EF2EB8 */  addiu $t7, %lo(D_80192EB8) # addiu $t7, $t7, 0x2eb8
/* 0BF448 8015EA08 000EC080 */  sll   $t8, $t6, 2
/* 0BF44C 8015EA0C 00380821 */  addu  $at, $at, $t8
/* 0BF450 8015EA10 AC2F0490 */  sw    $t7, 0x490($at)
/* 0BF454 8015EA14 8E020000 */  lw    $v0, ($s0)
/* 0BF458 8015EA18 3C09800E */  lui   $t1, %hi(D_800E0D50) # $t1, 0x800e
/* 0BF45C 8015EA1C 25290D50 */  addiu $t1, %lo(D_800E0D50) # addiu $t1, $t1, 0xd50
/* 0BF460 8015EA20 00021080 */  sll   $v0, $v0, 2
/* 0BF464 8015EA24 0122C821 */  addu  $t9, $t1, $v0
/* 0BF468 8015EA28 8F2C0000 */  lw    $t4, ($t9)
/* 0BF46C 8015EA2C 3C11800F */  lui   $s1, %hi(D_800E8AE0) # $s1, 0x800f
/* 0BF470 8015EA30 26318AE0 */  addiu $s1, %lo(D_800E8AE0) # addiu $s1, $s1, -0x7520
/* 0BF474 8015EA34 000C5880 */  sll   $t3, $t4, 2
/* 0BF478 8015EA38 022B6821 */  addu  $t5, $s1, $t3
/* 0BF47C 8015EA3C 8DAE0000 */  lw    $t6, ($t5)
/* 0BF480 8015EA40 02227821 */  addu  $t7, $s1, $v0
/* 0BF484 8015EA44 3C0A800F */  lui   $t2, %hi(D_800E8920) # $t2, 0x800f
/* 0BF488 8015EA48 ADEE0000 */  sw    $t6, ($t7)
/* 0BF48C 8015EA4C 8E020000 */  lw    $v0, ($s0)
/* 0BF490 8015EA50 254A8920 */  addiu $t2, %lo(D_800E8920) # addiu $t2, $t2, -0x76e0
/* 0BF494 8015EA54 3C01800F */  lui   $at, 0x800f
/* 0BF498 8015EA58 00021080 */  sll   $v0, $v0, 2
/* 0BF49C 8015EA5C 0122C021 */  addu  $t8, $t1, $v0
/* 0BF4A0 8015EA60 8F190000 */  lw    $t9, ($t8)
/* 0BF4A4 8015EA64 01426821 */  addu  $t5, $t2, $v0
/* 0BF4A8 8015EA68 00196080 */  sll   $t4, $t9, 2
/* 0BF4AC 8015EA6C 014C5821 */  addu  $t3, $t2, $t4
/* 0BF4B0 8015EA70 8D670000 */  lw    $a3, ($t3)
/* 0BF4B4 8015EA74 3C0B8019 */  lui   $t3, %hi(D_80197F60) # $t3, 0x8019
/* 0BF4B8 8015EA78 256B7F60 */  addiu $t3, %lo(D_80197F60) # addiu $t3, $t3, 0x7f60
/* 0BF4BC 8015EA7C ADA70000 */  sw    $a3, ($t5)
/* 0BF4C0 8015EA80 8E0E0000 */  lw    $t6, ($s0)
/* 0BF4C4 8015EA84 000E7880 */  sll   $t7, $t6, 2
/* 0BF4C8 8015EA88 002F0821 */  addu  $at, $at, $t7
/* 0BF4CC 8015EA8C AC279E20 */  sw    $a3, -0x61e0($at)
/* 0BF4D0 8015EA90 8E030000 */  lw    $v1, ($s0)
/* 0BF4D4 8015EA94 3C0E801A */  lui   $t6, %hi(D_801982F8) # $t6, 0x801a
/* 0BF4D8 8015EA98 25CE82F8 */  addiu $t6, %lo(D_801982F8) # addiu $t6, $t6, -0x7d08
/* 0BF4DC 8015EA9C 2468FFFC */  addiu $t0, $v1, -4
/* 0BF4E0 8015EAA0 00086080 */  sll   $t4, $t0, 2
/* 0BF4E4 8015EAA4 01886023 */  subu  $t4, $t4, $t0
/* 0BF4E8 8015EAA8 000C60C0 */  sll   $t4, $t4, 3
/* 0BF4EC 8015EAAC 01886023 */  subu  $t4, $t4, $t0
/* 0BF4F0 8015EAB0 0003C080 */  sll   $t8, $v1, 2
/* 0BF4F4 8015EAB4 0138C821 */  addu  $t9, $t1, $t8
/* 0BF4F8 8015EAB8 000C6080 */  sll   $t4, $t4, 2
/* 0BF4FC 8015EABC 00086940 */  sll   $t5, $t0, 5
/* 0BF500 8015EAC0 01AE3021 */  addu  $a2, $t5, $t6
/* 0BF504 8015EAC4 018B2821 */  addu  $a1, $t4, $t3
/* 0BF508 8015EAC8 0C055192 */  jal   func_80154648_ovl3
/* 0BF50C 8015EACC 8F240000 */   lw    $a0, ($t9)
/* 0BF510 8015EAD0 8E500000 */  lw    $s0, ($s2)
/* 0BF514 8015EAD4 3C01800F */  lui   $at, 0x800f
/* 0BF518 8015EAD8 3C040002 */  lui   $a0, (0x0002003B >> 16) # lui $a0, 2
/* 0BF51C 8015EADC 8E0F0000 */  lw    $t7, ($s0)
/* 0BF520 8015EAE0 3484003B */  ori   $a0, (0x0002003B & 0xFFFF) # ori $a0, $a0, 0x3b
/* 0BF524 8015EAE4 000FC080 */  sll   $t8, $t7, 2
/* 0BF528 8015EAE8 00380821 */  addu  $at, $at, $t8
/* 0BF52C 8015EAEC AC208060 */  sw    $zero, -0x7fa0($at)
/* 0BF530 8015EAF0 8E190000 */  lw    $t9, ($s0)
/* 0BF534 8015EAF4 3C018013 */  lui   $at, 0x8013
/* 0BF538 8015EAF8 24180010 */  li    $t8, 16
/* 0BF53C 8015EAFC 00196080 */  sll   $t4, $t9, 2
/* 0BF540 8015EB00 022C5821 */  addu  $t3, $s1, $t4
/* 0BF544 8015EB04 8D6D0000 */  lw    $t5, ($t3)
/* 0BF548 8015EB08 31AE0004 */  andi  $t6, $t5, 4
/* 0BF54C 8015EB0C 11C00004 */  beqz  $t6, .L8015EB20_ovl3
/* 0BF550 8015EB10 240F0020 */   li    $t7, 32
/* 0BF554 8015EB14 3C018013 */  lui   $at, %hi(D_8012E7D6) # $at, 0x8013
/* 0BF558 8015EB18 10000002 */  b     .L8015EB24_ovl3
/* 0BF55C 8015EB1C A02FE7D6 */   sb    $t7, %lo(D_8012E7D6)($at)
.L8015EB20_ovl3:
/* 0BF560 8015EB20 A038E7D6 */  sb    $t8, %lo(D_8012E7D6)($at)
.L8015EB24_ovl3:
/* 0BF564 8015EB24 8E190000 */  lw    $t9, ($s0)
/* 0BF568 8015EB28 3C018019 */  lui   $at, %hi(D_8019709C) # $at, 0x8019
/* 0BF56C 8015EB2C C420709C */  lwc1  $f0, %lo(D_8019709C)($at)
/* 0BF570 8015EB30 3C01800E */  lui   $at, 0x800e
/* 0BF574 8015EB34 00196080 */  sll   $t4, $t9, 2
/* 0BF578 8015EB38 002C0821 */  addu  $at, $at, $t4
/* 0BF57C 8015EB3C E4204550 */  swc1  $f0, 0x4550($at)
/* 0BF580 8015EB40 8E0B0000 */  lw    $t3, ($s0)
/* 0BF584 8015EB44 3C01800E */  lui   $at, 0x800e
/* 0BF588 8015EB48 24050021 */  li    $a1, 33
/* 0BF58C 8015EB4C 000B6880 */  sll   $t5, $t3, 2
/* 0BF590 8015EB50 002D0821 */  addu  $at, $at, $t5
/* 0BF594 8015EB54 E4204710 */  swc1  $f0, 0x4710($at)
/* 0BF598 8015EB58 8E0E0000 */  lw    $t6, ($s0)
/* 0BF59C 8015EB5C 3C01800E */  lui   $at, 0x800e
/* 0BF5A0 8015EB60 24060010 */  li    $a2, 16
/* 0BF5A4 8015EB64 000E7880 */  sll   $t7, $t6, 2
/* 0BF5A8 8015EB68 002F0821 */  addu  $at, $at, $t7
/* 0BF5AC 8015EB6C 0C02A619 */  jal   func_800A9864_ovl3
/* 0BF5B0 8015EB70 E42048D0 */   swc1  $f0, 0x48d0($at)
/* 0BF5B4 8015EB74 8E580000 */  lw    $t8, ($s2)
/* 0BF5B8 8015EB78 3C01800F */  lui   $at, 0x800f
/* 0BF5BC 8015EB7C 27A5004C */  addiu $a1, $sp, 0x4c
/* 0BF5C0 8015EB80 8F190000 */  lw    $t9, ($t8)
/* 0BF5C4 8015EB84 24040058 */  li    $a0, 88
/* 0BF5C8 8015EB88 27A60050 */  addiu $a2, $sp, 0x50
/* 0BF5CC 8015EB8C 00196080 */  sll   $t4, $t9, 2
/* 0BF5D0 8015EB90 002C0821 */  addu  $at, $at, $t4
/* 0BF5D4 8015EB94 0C029DFA */  jal   func_800A77E8_ovl3
/* 0BF5D8 8015EB98 AC25A360 */   sw    $a1, -0x5ca0($at)
/* 0BF5DC 8015EB9C 8E500000 */  lw    $s0, ($s2)
/* 0BF5E0 8015EBA0 44804000 */  mtc1  $zero, $f8
/* 0BF5E4 8015EBA4 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 0BF5E8 8015EBA8 8E0B0000 */  lw    $t3, ($s0)
/* 0BF5EC 8015EBAC 44809000 */  mtc1  $zero, $f18
/* 0BF5F0 8015EBB0 3C040002 */  lui   $a0, (0x00020283 >> 16) # lui $a0, 2
/* 0BF5F4 8015EBB4 000B6880 */  sll   $t5, $t3, 2
/* 0BF5F8 8015EBB8 002D0821 */  addu  $at, $at, $t5
/* 0BF5FC 8015EBBC E428A8A0 */  swc1  $f8, -0x5760($at)
/* 0BF600 8015EBC0 8E020000 */  lw    $v0, ($s0)
/* 0BF604 8015EBC4 3C050002 */  lui   $a1, (0x00020284 >> 16) # lui $a1, 2
/* 0BF608 8015EBC8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BF60C 8015EBCC 00021080 */  sll   $v0, $v0, 2
/* 0BF610 8015EBD0 02227021 */  addu  $t6, $s1, $v0
/* 0BF614 8015EBD4 8DCF0000 */  lw    $t7, ($t6)
/* 0BF618 8015EBD8 34A50284 */  ori   $a1, (0x00020284 & 0xFFFF) # ori $a1, $a1, 0x284
/* 0BF61C 8015EBDC 34840283 */  ori   $a0, (0x00020283 & 0xFFFF) # ori $a0, $a0, 0x283
/* 0BF620 8015EBE0 31F80004 */  andi  $t8, $t7, 4
/* 0BF624 8015EBE4 57000008 */  bnezl $t8, .L8015EC08_ovl3
/* 0BF628 8015EBE8 44816000 */   mtc1  $at, $f12
/* 0BF62C 8015EBEC 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BF630 8015EBF0 44811000 */  mtc1  $at, $f2
/* 0BF634 8015EBF4 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 0BF638 8015EBF8 44816000 */  mtc1  $at, $f12
/* 0BF63C 8015EBFC 10000005 */  b     .L8015EC14_ovl3
/* 0BF640 8015EC00 46001006 */   mov.s $f0, $f2
/* 0BF644 8015EC04 44816000 */  mtc1  $at, $f12
.L8015EC08_ovl3:
/* 0BF648 8015EC08 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 0BF64C 8015EC0C 44811000 */  mtc1  $at, $f2
/* 0BF650 8015EC10 46006006 */  mov.s $f0, $f12
.L8015EC14_ovl3:
/* 0BF654 8015EC14 3C01800E */  lui   $at, 0x800e
/* 0BF658 8015EC18 00220821 */  addu  $at, $at, $v0
/* 0BF65C 8015EC1C C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 0BF660 8015EC20 3C01800E */  lui   $at, 0x800e
/* 0BF664 8015EC24 00220821 */  addu  $at, $at, $v0
/* 0BF668 8015EC28 460A0402 */  mul.s $f16, $f0, $f10
/* 0BF66C 8015EC2C E43064D0 */  swc1  $f16, 0x64d0($at)
/* 0BF670 8015EC30 8E020000 */  lw    $v0, ($s0)
/* 0BF674 8015EC34 3C01800E */  lui   $at, 0x800e
/* 0BF678 8015EC38 00021080 */  sll   $v0, $v0, 2
/* 0BF67C 8015EC3C 0222C821 */  addu  $t9, $s1, $v0
/* 0BF680 8015EC40 8F230000 */  lw    $v1, ($t9)
/* 0BF684 8015EC44 00220821 */  addu  $at, $at, $v0
/* 0BF688 8015EC48 30630004 */  andi  $v1, $v1, 4
/* 0BF68C 8015EC4C 54600004 */  bnezl $v1, .L8015EC60_ovl3
/* 0BF690 8015EC50 46006006 */   mov.s $f0, $f12
/* 0BF694 8015EC54 10000002 */  b     .L8015EC60_ovl3
/* 0BF698 8015EC58 46001006 */   mov.s $f0, $f2
/* 0BF69C 8015EC5C 46006006 */  mov.s $f0, $f12
.L8015EC60_ovl3:
/* 0BF6A0 8015EC60 4612003C */  c.lt.s $f0, $f18
/* 0BF6A4 8015EC64 00000000 */  nop   
/* 0BF6A8 8015EC68 4500000A */  bc1f  .L8015EC94_ovl3
/* 0BF6AC 8015EC6C 00000000 */   nop   
/* 0BF6B0 8015EC70 14600003 */  bnez  $v1, .L8015EC80_ovl3
/* 0BF6B4 8015EC74 3C01800E */   lui   $at, 0x800e
/* 0BF6B8 8015EC78 10000002 */  b     .L8015EC84_ovl3
/* 0BF6BC 8015EC7C 46001006 */   mov.s $f0, $f2
.L8015EC80_ovl3:
/* 0BF6C0 8015EC80 46006006 */  mov.s $f0, $f12
.L8015EC84_ovl3:
/* 0BF6C4 8015EC84 46000107 */  neg.s $f4, $f0
/* 0BF6C8 8015EC88 00220821 */  addu  $at, $at, $v0
/* 0BF6CC 8015EC8C 10000007 */  b     .L8015ECAC_ovl3
/* 0BF6D0 8015EC90 E4246850 */   swc1  $f4, 0x6850($at)
.L8015EC94_ovl3:
/* 0BF6D4 8015EC94 54600004 */  bnezl $v1, .L8015ECA8_ovl3
/* 0BF6D8 8015EC98 46006006 */   mov.s $f0, $f12
/* 0BF6DC 8015EC9C 10000002 */  b     .L8015ECA8_ovl3
/* 0BF6E0 8015ECA0 46001006 */   mov.s $f0, $f2
/* 0BF6E4 8015ECA4 46006006 */  mov.s $f0, $f12
.L8015ECA8_ovl3:
/* 0BF6E8 8015ECA8 E4206850 */  swc1  $f0, 0x6850($at)
.L8015ECAC_ovl3:
/* 0BF6EC 8015ECAC 0C048C3A */  jal   func_801230E8_ovl3
/* 0BF6F0 8015ECB0 00003025 */   move  $a2, $zero
/* 0BF6F4 8015ECB4 00008025 */  move  $s0, $zero
/* 0BF6F8 8015ECB8 2411000F */  li    $s1, 15
/* 0BF6FC 8015ECBC 8E4C0000 */  lw    $t4, ($s2)
.L8015ECC0_ovl3:
/* 0BF700 8015ECC0 8D820000 */  lw    $v0, ($t4)
/* 0BF704 8015ECC4 00021080 */  sll   $v0, $v0, 2
/* 0BF708 8015ECC8 02625821 */  addu  $t3, $s3, $v0
/* 0BF70C 8015ECCC 8D6D0000 */  lw    $t5, ($t3)
/* 0BF710 8015ECD0 15A0000A */  bnez  $t5, .L8015ECFC_ovl3
/* 0BF714 8015ECD4 00000000 */   nop   
/* 0BF718 8015ECD8 0C002DAF */  jal   func_8000B6BC_ovl3
/* 0BF71C 8015ECDC 24040001 */   li    $a0, 1
/* 0BF720 8015ECE0 26100001 */  addiu $s0, $s0, 1
/* 0BF724 8015ECE4 5611FFF6 */  bnel  $s0, $s1, .L8015ECC0_ovl3
/* 0BF728 8015ECE8 8E4C0000 */   lw    $t4, ($s2)
/* 0BF72C 8015ECEC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 0BF730 8015ECF0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 0BF734 8015ECF4 8DC20000 */  lw    $v0, ($t6)
/* 0BF738 8015ECF8 00021080 */  sll   $v0, $v0, 2
.L8015ECFC_ovl3:
/* 0BF73C 8015ECFC 3C01800F */  lui   $at, 0x800f
/* 0BF740 8015ED00 00220821 */  addu  $at, $at, $v0
/* 0BF744 8015ED04 240F0001 */  li    $t7, 1
/* 0BF748 8015ED08 0C02BE85 */  jal   func_800AFA14_ovl3
/* 0BF74C 8015ED0C AC2F98E0 */   sw    $t7, -0x6720($at)
/* 0BF750 8015ED10 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0BF754 8015ED14 8FB00014 */  lw    $s0, 0x14($sp)
/* 0BF758 8015ED18 8FB10018 */  lw    $s1, 0x18($sp)
/* 0BF75C 8015ED1C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0BF760 8015ED20 8FB30020 */  lw    $s3, 0x20($sp)
/* 0BF764 8015ED24 03E00008 */  jr    $ra
/* 0BF768 8015ED28 27BD0058 */   addiu $sp, $sp, 0x58
