.set noat
.set noreorder
.set gp=64
.include "macros.inc"

.section .text, "ax"


glabel func_8002F040
/* 02FC40 8002F040 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 02FC44 8002F044 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02FC48 8002F048 AFB00018 */  sw    $s0, 0x18($sp)
/* 02FC4C 8002F04C 8C8E0008 */  lw    $t6, 8($a0)
/* 02FC50 8002F050 8C990000 */  lw    $t9, ($a0)
/* 02FC54 8002F054 3C18800A */  lui   $t8, %hi(D_80098990) # $t8, 0x800a
/* 02FC58 8002F058 27188990 */  addiu $t8, %lo(D_80098990) # addiu $t8, $t8, -0x7670
/* 02FC5C 8002F05C 000E7980 */  sll   $t7, $t6, 6
/* 02FC60 8002F060 33290008 */  andi  $t1, $t9, 8
/* 02FC64 8002F064 00808025 */  move  $s0, $a0
/* 02FC68 8002F068 00A03825 */  move  $a3, $a1
/* 02FC6C 8002F06C 15200003 */  bnez  $t1, .L8002F07C_ovl0
/* 02FC70 8002F070 01F84021 */   addu  $t0, $t7, $t8
/* 02FC74 8002F074 10000047 */  b     .L8002F194_ovl0
/* 02FC78 8002F078 24020005 */   li    $v0, 5
.L8002F07C_ovl0:
/* 02FC7C 8002F07C AFA70034 */  sw    $a3, 0x34($sp)
/* 02FC80 8002F080 0C00BD18 */  jal   __osSiGetAccess
/* 02FC84 8002F084 AFA80024 */   sw    $t0, 0x24($sp)
/* 02FC88 8002F088 8E0B0008 */  lw    $t3, 8($s0)
/* 02FC8C 8002F08C 3C06800A */  lui   $a2, %hi(D_80098990) # $a2, 0x800a
/* 02FC90 8002F090 24C68990 */  addiu $a2, %lo(D_80098990) # addiu $a2, $a2, -0x7670
/* 02FC94 8002F094 000B6180 */  sll   $t4, $t3, 6
/* 02FC98 8002F098 00CC6821 */  addu  $t5, $a2, $t4
/* 02FC9C 8002F09C 240A0001 */  li    $t2, 1
/* 02FCA0 8002F0A0 ADAA003C */  sw    $t2, 0x3c($t5)
/* 02FCA4 8002F0A4 8FA80024 */  lw    $t0, 0x24($sp)
/* 02FCA8 8002F0A8 8E0E0008 */  lw    $t6, 8($s0)
/* 02FCAC 8002F0AC 8FA70034 */  lw    $a3, 0x34($sp)
/* 02FCB0 8002F0B0 00001825 */  move  $v1, $zero
/* 02FCB4 8002F0B4 010E4021 */  addu  $t0, $t0, $t6
/* 02FCB8 8002F0B8 01001025 */  move  $v0, $t0
/* 02FCBC 8002F0BC 24040020 */  li    $a0, 32
.L8002F0C0_ovl0:
/* 02FCC0 8002F0C0 24630004 */  addiu $v1, $v1, 4
/* 02FCC4 8002F0C4 A0470007 */  sb    $a3, 7($v0)
/* 02FCC8 8002F0C8 A0470008 */  sb    $a3, 8($v0)
/* 02FCCC 8002F0CC A0470009 */  sb    $a3, 9($v0)
/* 02FCD0 8002F0D0 24420004 */  addiu $v0, $v0, 4
/* 02FCD4 8002F0D4 1464FFFA */  bne   $v1, $a0, .L8002F0C0_ovl0
/* 02FCD8 8002F0D8 A0470002 */   sb    $a3, 2($v0)
/* 02FCDC 8002F0DC 240F00FE */  li    $t7, 254
/* 02FCE0 8002F0E0 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 02FCE4 8002F0E4 A02F8AF0 */  sb    $t7, %lo(__osContLastCmd)($at)
/* 02FCE8 8002F0E8 8E180008 */  lw    $t8, 8($s0)
/* 02FCEC 8002F0EC AFA80024 */  sw    $t0, 0x24($sp)
/* 02FCF0 8002F0F0 AFA70034 */  sw    $a3, 0x34($sp)
/* 02FCF4 8002F0F4 0018C980 */  sll   $t9, $t8, 6
/* 02FCF8 8002F0F8 00D92821 */  addu  $a1, $a2, $t9
/* 02FCFC 8002F0FC 0C00C138 */  jal   __osSiRawStartDma
/* 02FD00 8002F100 24040001 */   li    $a0, 1
/* 02FD04 8002F104 8E040004 */  lw    $a0, 4($s0)
/* 02FD08 8002F108 00002825 */  move  $a1, $zero
/* 02FD0C 8002F10C 0C00B540 */  jal   osRecvMesg
/* 02FD10 8002F110 24060001 */   li    $a2, 1
/* 02FD14 8002F114 8E090008 */  lw    $t1, 8($s0)
/* 02FD18 8002F118 3C0C800A */  lui   $t4, %hi(D_80098990) # $t4, 0x800a
/* 02FD1C 8002F11C 258C8990 */  addiu $t4, %lo(D_80098990) # addiu $t4, $t4, -0x7670
/* 02FD20 8002F120 00095980 */  sll   $t3, $t1, 6
/* 02FD24 8002F124 016C2821 */  addu  $a1, $t3, $t4
/* 02FD28 8002F128 0C00C138 */  jal   __osSiRawStartDma
/* 02FD2C 8002F12C 00002025 */   move  $a0, $zero
/* 02FD30 8002F130 8E040004 */  lw    $a0, 4($s0)
/* 02FD34 8002F134 00002825 */  move  $a1, $zero
/* 02FD38 8002F138 0C00B540 */  jal   osRecvMesg
/* 02FD3C 8002F13C 24060001 */   li    $a2, 1
/* 02FD40 8002F140 8FA80024 */  lw    $t0, 0x24($sp)
/* 02FD44 8002F144 8FA70034 */  lw    $a3, 0x34($sp)
/* 02FD48 8002F148 91100002 */  lbu   $s0, 2($t0)
/* 02FD4C 8002F14C 320A00C0 */  andi  $t2, $s0, 0xc0
/* 02FD50 8002F150 1540000D */  bnez  $t2, .L8002F188_ovl0
/* 02FD54 8002F154 01408025 */   move  $s0, $t2
/* 02FD58 8002F158 54E00007 */  bnezl $a3, .L8002F178_ovl0
/* 02FD5C 8002F15C 910E0026 */   lbu   $t6, 0x26($t0)
/* 02FD60 8002F160 910D0026 */  lbu   $t5, 0x26($t0)
/* 02FD64 8002F164 11A00008 */  beqz  $t5, .L8002F188_ovl0
/* 02FD68 8002F168 00000000 */   nop   
/* 02FD6C 8002F16C 10000006 */  b     .L8002F188_ovl0
/* 02FD70 8002F170 24100004 */   li    $s0, 4
/* 02FD74 8002F174 910E0026 */  lbu   $t6, 0x26($t0)
.L8002F178_ovl0:
/* 02FD78 8002F178 240100EB */  li    $at, 235
/* 02FD7C 8002F17C 11C10002 */  beq   $t6, $at, .L8002F188_ovl0
/* 02FD80 8002F180 00000000 */   nop   
/* 02FD84 8002F184 24100004 */  li    $s0, 4
.L8002F188_ovl0:
/* 02FD88 8002F188 0C00BD29 */  jal   __osSiRelAccess
/* 02FD8C 8002F18C 00000000 */   nop   
/* 02FD90 8002F190 02001025 */  move  $v0, $s0
.L8002F194_ovl0:
/* 02FD94 8002F194 8FBF001C */  lw    $ra, 0x1c($sp)
/* 02FD98 8002F198 8FB00018 */  lw    $s0, 0x18($sp)
/* 02FD9C 8002F19C 27BD0030 */  addiu $sp, $sp, 0x30
/* 02FDA0 8002F1A0 03E00008 */  jr    $ra
/* 02FDA4 8002F1A4 00000000 */   nop   

glabel func_8002F1A8
/* 02FDA8 8002F1A8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 02FDAC 8002F1AC AFBF0014 */  sw    $ra, 0x14($sp)
/* 02FDB0 8002F1B0 00803025 */  move  $a2, $a0
/* 02FDB4 8002F1B4 240E00FF */  li    $t6, 255
/* 02FDB8 8002F1B8 240F0023 */  li    $t7, 35
/* 02FDBC 8002F1BC 24180001 */  li    $t8, 1
/* 02FDC0 8002F1C0 24190003 */  li    $t9, 3
/* 02FDC4 8002F1C4 240800C0 */  li    $t0, 192
/* 02FDC8 8002F1C8 A3AE0024 */  sb    $t6, 0x24($sp)
/* 02FDCC 8002F1CC A3AF0025 */  sb    $t7, 0x25($sp)
/* 02FDD0 8002F1D0 A3B80026 */  sb    $t8, 0x26($sp)
/* 02FDD4 8002F1D4 A3B90027 */  sb    $t9, 0x27($sp)
/* 02FDD8 8002F1D8 A3A80028 */  sb    $t0, 0x28($sp)
/* 02FDDC 8002F1DC AFA60050 */  sw    $a2, 0x50($sp)
/* 02FDE0 8002F1E0 24040600 */  li    $a0, 1536
/* 02FDE4 8002F1E4 0C00DD54 */  jal   func_80037550
/* 02FDE8 8002F1E8 AFA5004C */   sw    $a1, 0x4c($sp)
/* 02FDEC 8002F1EC 8FA60050 */  lw    $a2, 0x50($sp)
/* 02FDF0 8002F1F0 3449C000 */  ori   $t1, $v0, 0xc000
/* 02FDF4 8002F1F4 A3A90029 */  sb    $t1, 0x29($sp)
/* 02FDF8 8002F1F8 10C00012 */  beqz  $a2, .L8002F244_ovl0
/* 02FDFC 8002F1FC 8FA3004C */   lw    $v1, 0x4c($sp)
/* 02FE00 8002F200 18C00010 */  blez  $a2, .L8002F244_ovl0
/* 02FE04 8002F204 00001025 */   move  $v0, $zero
/* 02FE08 8002F208 30C50003 */  andi  $a1, $a2, 3
/* 02FE0C 8002F20C 10A00006 */  beqz  $a1, .L8002F228_ovl0
/* 02FE10 8002F210 00A02025 */   move  $a0, $a1
.L8002F214_ovl0:
/* 02FE14 8002F214 24420001 */  addiu $v0, $v0, 1
/* 02FE18 8002F218 A0600000 */  sb    $zero, ($v1)
/* 02FE1C 8002F21C 1482FFFD */  bne   $a0, $v0, .L8002F214_ovl0
/* 02FE20 8002F220 24630001 */   addiu $v1, $v1, 1
/* 02FE24 8002F224 10460007 */  beq   $v0, $a2, .L8002F244_ovl0
.L8002F228_ovl0:
/* 02FE28 8002F228 24420004 */   addiu $v0, $v0, 4
/* 02FE2C 8002F22C A0600001 */  sb    $zero, 1($v1)
/* 02FE30 8002F230 A0600002 */  sb    $zero, 2($v1)
/* 02FE34 8002F234 A0600003 */  sb    $zero, 3($v1)
/* 02FE38 8002F238 24630004 */  addiu $v1, $v1, 4
/* 02FE3C 8002F23C 1446FFFA */  bne   $v0, $a2, .L8002F228_ovl0
/* 02FE40 8002F240 A060FFFC */   sb    $zero, -4($v1)
.L8002F244_ovl0:
/* 02FE44 8002F244 27AA0024 */  addiu $t2, $sp, 0x24
/* 02FE48 8002F248 254C0024 */  addiu $t4, $t2, 0x24
/* 02FE4C 8002F24C 00606825 */  move  $t5, $v1
.L8002F250_ovl0:
/* 02FE50 8002F250 8D410000 */  lw    $at, ($t2)
/* 02FE54 8002F254 254A000C */  addiu $t2, $t2, 0xc
/* 02FE58 8002F258 25AD000C */  addiu $t5, $t5, 0xc
/* 02FE5C 8002F25C A9A1FFF4 */  swl   $at, -0xc($t5)
/* 02FE60 8002F260 B9A1FFF7 */  swr   $at, -9($t5)
/* 02FE64 8002F264 8D41FFF8 */  lw    $at, -8($t2)
/* 02FE68 8002F268 A9A1FFF8 */  swl   $at, -8($t5)
/* 02FE6C 8002F26C B9A1FFFB */  swr   $at, -5($t5)
/* 02FE70 8002F270 8D41FFFC */  lw    $at, -4($t2)
/* 02FE74 8002F274 A9A1FFFC */  swl   $at, -4($t5)
/* 02FE78 8002F278 154CFFF5 */  bne   $t2, $t4, .L8002F250_ovl0
/* 02FE7C 8002F27C B9A1FFFF */   swr   $at, -1($t5)
/* 02FE80 8002F280 91410000 */  lbu   $at, ($t2)
/* 02FE84 8002F284 240E00FE */  li    $t6, 254
/* 02FE88 8002F288 24630027 */  addiu $v1, $v1, 0x27
/* 02FE8C 8002F28C A1A10000 */  sb    $at, ($t5)
/* 02FE90 8002F290 914C0001 */  lbu   $t4, 1($t2)
/* 02FE94 8002F294 A1AC0001 */  sb    $t4, 1($t5)
/* 02FE98 8002F298 91410002 */  lbu   $at, 2($t2)
/* 02FE9C 8002F29C A1A10002 */  sb    $at, 2($t5)
/* 02FEA0 8002F2A0 A06E0000 */  sb    $t6, ($v1)
/* 02FEA4 8002F2A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 02FEA8 8002F2A8 27BD0050 */  addiu $sp, $sp, 0x50
/* 02FEAC 8002F2AC 03E00008 */  jr    $ra
/* 02FEB0 8002F2B0 00000000 */   nop   

glabel func_8002F2B4
/* 02FEB4 8002F2B4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 02FEB8 8002F2B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 02FEBC 8002F2BC AFB00018 */  sw    $s0, 0x18($sp)
/* 02FEC0 8002F2C0 AFA40048 */  sw    $a0, 0x48($sp)
/* 02FEC4 8002F2C4 AFA60050 */  sw    $a2, 0x50($sp)
/* 02FEC8 8002F2C8 ACA40004 */  sw    $a0, 4($a1)
/* 02FECC 8002F2CC 8FAF0050 */  lw    $t7, 0x50($sp)
/* 02FED0 8002F2D0 241800FF */  li    $t8, 255
/* 02FED4 8002F2D4 00A08025 */  move  $s0, $a1
/* 02FED8 8002F2D8 A0B80065 */  sb    $t8, 0x65($a1)
/* 02FEDC 8002F2DC ACA00000 */  sw    $zero, ($a1)
/* 02FEE0 8002F2E0 00A02025 */  move  $a0, $a1
/* 02FEE4 8002F2E4 ACAF0008 */  sw    $t7, 8($a1)
/* 02FEE8 8002F2E8 0C00D728 */  jal   func_80035CA0
/* 02FEEC 8002F2EC 240500FE */   li    $a1, 254
/* 02FEF0 8002F2F0 24010002 */  li    $at, 2
/* 02FEF4 8002F2F4 14410005 */  bne   $v0, $at, .L8002F30C_ovl0
/* 02FEF8 8002F2F8 00401825 */   move  $v1, $v0
/* 02FEFC 8002F2FC 02002025 */  move  $a0, $s0
/* 02FF00 8002F300 0C00D728 */  jal   func_80035CA0
/* 02FF04 8002F304 24050080 */   li    $a1, 128
/* 02FF08 8002F308 00401825 */  move  $v1, $v0
.L8002F30C_ovl0:
/* 02FF0C 8002F30C 10400003 */  beqz  $v0, .L8002F31C_ovl0
/* 02FF10 8002F310 8FA40048 */   lw    $a0, 0x48($sp)
/* 02FF14 8002F314 10000039 */  b     .L8002F3FC_ovl0
/* 02FF18 8002F318 00601025 */   move  $v0, $v1
.L8002F31C_ovl0:
/* 02FF1C 8002F31C 8FA50050 */  lw    $a1, 0x50($sp)
/* 02FF20 8002F320 24060400 */  li    $a2, 1024
/* 02FF24 8002F324 0C00DCC8 */  jal   func_80037320
/* 02FF28 8002F328 27A70024 */   addiu $a3, $sp, 0x24
/* 02FF2C 8002F32C 24010002 */  li    $at, 2
/* 02FF30 8002F330 14410002 */  bne   $v0, $at, .L8002F33C_ovl0
/* 02FF34 8002F334 00401825 */   move  $v1, $v0
/* 02FF38 8002F338 24030004 */  li    $v1, 4
.L8002F33C_ovl0:
/* 02FF3C 8002F33C 10600003 */  beqz  $v1, .L8002F34C_ovl0
/* 02FF40 8002F340 93B90043 */   lbu   $t9, 0x43($sp)
/* 02FF44 8002F344 1000002D */  b     .L8002F3FC_ovl0
/* 02FF48 8002F348 00601025 */   move  $v0, $v1
.L8002F34C_ovl0:
/* 02FF4C 8002F34C 240100FE */  li    $at, 254
/* 02FF50 8002F350 17210003 */  bne   $t9, $at, .L8002F360_ovl0
/* 02FF54 8002F354 02002025 */   move  $a0, $s0
/* 02FF58 8002F358 10000028 */  b     .L8002F3FC_ovl0
/* 02FF5C 8002F35C 2402000B */   li    $v0, 11
.L8002F360_ovl0:
/* 02FF60 8002F360 0C00D728 */  jal   func_80035CA0
/* 02FF64 8002F364 24050080 */   li    $a1, 128
/* 02FF68 8002F368 24010002 */  li    $at, 2
/* 02FF6C 8002F36C 14410002 */  bne   $v0, $at, .L8002F378_ovl0
/* 02FF70 8002F370 00401825 */   move  $v1, $v0
/* 02FF74 8002F374 24030004 */  li    $v1, 4
.L8002F378_ovl0:
/* 02FF78 8002F378 10600003 */  beqz  $v1, .L8002F388_ovl0
/* 02FF7C 8002F37C 8FA40048 */   lw    $a0, 0x48($sp)
/* 02FF80 8002F380 1000001E */  b     .L8002F3FC_ovl0
/* 02FF84 8002F384 00601025 */   move  $v0, $v1
.L8002F388_ovl0:
/* 02FF88 8002F388 8FA50050 */  lw    $a1, 0x50($sp)
/* 02FF8C 8002F38C 24060400 */  li    $a2, 1024
/* 02FF90 8002F390 0C00DCC8 */  jal   func_80037320
/* 02FF94 8002F394 27A70024 */   addiu $a3, $sp, 0x24
/* 02FF98 8002F398 24010002 */  li    $at, 2
/* 02FF9C 8002F39C 14410002 */  bne   $v0, $at, .L8002F3A8_ovl0
/* 02FFA0 8002F3A0 00401825 */   move  $v1, $v0
/* 02FFA4 8002F3A4 24030004 */  li    $v1, 4
.L8002F3A8_ovl0:
/* 02FFA8 8002F3A8 10600003 */  beqz  $v1, .L8002F3B8_ovl0
/* 02FFAC 8002F3AC 93A80043 */   lbu   $t0, 0x43($sp)
/* 02FFB0 8002F3B0 10000012 */  b     .L8002F3FC_ovl0
/* 02FFB4 8002F3B4 00601025 */   move  $v0, $v1
.L8002F3B8_ovl0:
/* 02FFB8 8002F3B8 24010080 */  li    $at, 128
/* 02FFBC 8002F3BC 51010004 */  beql  $t0, $at, .L8002F3D0_ovl0
/* 02FFC0 8002F3C0 8E090000 */   lw    $t1, ($s0)
/* 02FFC4 8002F3C4 1000000D */  b     .L8002F3FC_ovl0
/* 02FFC8 8002F3C8 2402000B */   li    $v0, 11
/* 02FFCC 8002F3CC 8E090000 */  lw    $t1, ($s0)
.L8002F3D0_ovl0:
/* 02FFD0 8002F3D0 8FA40050 */  lw    $a0, 0x50($sp)
/* 02FFD4 8002F3D4 3C0D800A */  lui   $t5, %hi(D_80098990) # $t5, 0x800a
/* 02FFD8 8002F3D8 312A0008 */  andi  $t2, $t1, 8
/* 02FFDC 8002F3DC 15400004 */  bnez  $t2, .L8002F3F0_ovl0
/* 02FFE0 8002F3E0 00046180 */   sll   $t4, $a0, 6
/* 02FFE4 8002F3E4 25AD8990 */  addiu $t5, %lo(D_80098990) # addiu $t5, $t5, -0x7670
/* 02FFE8 8002F3E8 0C00BC6A */  jal   func_8002F1A8
/* 02FFEC 8002F3EC 018D2821 */   addu  $a1, $t4, $t5
.L8002F3F0_ovl0:
/* 02FFF0 8002F3F0 240E0008 */  li    $t6, 8
/* 02FFF4 8002F3F4 AE0E0000 */  sw    $t6, ($s0)
/* 02FFF8 8002F3F8 00001025 */  move  $v0, $zero
.L8002F3FC_ovl0:
/* 02FFFC 8002F3FC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 030000 8002F400 8FB00018 */  lw    $s0, 0x18($sp)
/* 030004 8002F404 27BD0048 */  addiu $sp, $sp, 0x48
/* 030008 8002F408 03E00008 */  jr    $ra
/* 03000C 8002F40C 00000000 */   nop   

glabel func_8002F410
/* 030010 8002F410 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 030014 8002F414 AFBF0014 */  sw    $ra, 0x14($sp)
/* 030018 8002F418 240E0001 */  li    $t6, 1
/* 03001C 8002F41C 3C018004 */  lui   $at, %hi(D_8003FB70) # $at, 0x8004
/* 030020 8002F420 3C04800A */  lui   $a0, %hi(D_80098A98) # $a0, 0x800a
/* 030024 8002F424 3C05800A */  lui   $a1, %hi(D_80098A90) # $a1, 0x800a
/* 030028 8002F428 AC2EFB70 */  sw    $t6, %lo(D_8003FB70)($at)
/* 03002C 8002F42C 24A58A90 */  addiu $a1, %lo(D_80098A90) # addiu $a1, $a1, -0x7570
/* 030030 8002F430 24848A98 */  addiu $a0, %lo(D_80098A98) # addiu $a0, $a0, -0x7568
/* 030034 8002F434 0C00CEB8 */  jal   osCreateMesgQueue
/* 030038 8002F438 24060001 */   li    $a2, 1
/* 03003C 8002F43C 3C04800A */  lui   $a0, %hi(D_80098A98) # $a0, 0x800a
/* 030040 8002F440 24848A98 */  addiu $a0, %lo(D_80098A98) # addiu $a0, $a0, -0x7568
/* 030044 8002F444 00002825 */  move  $a1, $zero
/* 030048 8002F448 0C00B4BC */  jal   osSendMesg
/* 03004C 8002F44C 00003025 */   move  $a2, $zero
/* 030050 8002F450 8FBF0014 */  lw    $ra, 0x14($sp)
/* 030054 8002F454 27BD0018 */  addiu $sp, $sp, 0x18
/* 030058 8002F458 03E00008 */  jr    $ra
/* 03005C 8002F45C 00000000 */   nop   

glabel __osSiGetAccess
/* 030060 8002F460 3C0E8004 */  lui   $t6, %hi(D_8003FB70) # $t6, 0x8004
/* 030064 8002F464 8DCEFB70 */  lw    $t6, %lo(D_8003FB70)($t6)
/* 030068 8002F468 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 03006C 8002F46C AFBF0014 */  sw    $ra, 0x14($sp)
/* 030070 8002F470 15C00003 */  bnez  $t6, .L8002F480_ovl0
/* 030074 8002F474 00000000 */   nop   
/* 030078 8002F478 0C00BD04 */  jal   func_8002F410
/* 03007C 8002F47C 00000000 */   nop   
.L8002F480_ovl0:
/* 030080 8002F480 3C04800A */  lui   $a0, %hi(D_80098A98) # $a0, 0x800a
/* 030084 8002F484 24848A98 */  addiu $a0, %lo(D_80098A98) # addiu $a0, $a0, -0x7568
/* 030088 8002F488 27A5001C */  addiu $a1, $sp, 0x1c
/* 03008C 8002F48C 0C00B540 */  jal   osRecvMesg
/* 030090 8002F490 24060001 */   li    $a2, 1
/* 030094 8002F494 8FBF0014 */  lw    $ra, 0x14($sp)
/* 030098 8002F498 27BD0020 */  addiu $sp, $sp, 0x20
/* 03009C 8002F49C 03E00008 */  jr    $ra
/* 0300A0 8002F4A0 00000000 */   nop   

glabel __osSiRelAccess
/* 0300A4 8002F4A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0300A8 8002F4A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0300AC 8002F4AC 3C04800A */  lui   $a0, %hi(D_80098A98) # $a0, 0x800a
/* 0300B0 8002F4B0 24848A98 */  addiu $a0, %lo(D_80098A98) # addiu $a0, $a0, -0x7568
/* 0300B4 8002F4B4 00002825 */  move  $a1, $zero
/* 0300B8 8002F4B8 0C00B4BC */  jal   osSendMesg
/* 0300BC 8002F4BC 00003025 */   move  $a2, $zero
/* 0300C0 8002F4C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0300C4 8002F4C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0300C8 8002F4C8 03E00008 */  jr    $ra
/* 0300CC 8002F4CC 00000000 */   nop   

glabel osContReset
/* 0300D0 8002F4D0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0300D4 8002F4D4 3C0E8004 */  lui   $t6, %hi(D_8003FB80) # $t6, 0x8004
/* 0300D8 8002F4D8 8DCEFB80 */  lw    $t6, %lo(D_8003FB80)($t6)
/* 0300DC 8002F4DC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0300E0 8002F4E0 AFA40070 */  sw    $a0, 0x70($sp)
/* 0300E4 8002F4E4 AFA50074 */  sw    $a1, 0x74($sp)
/* 0300E8 8002F4E8 AFA60078 */  sw    $a2, 0x78($sp)
/* 0300EC 8002F4EC 11C00003 */  beqz  $t6, .L8002F4FC_ovl0
/* 0300F0 8002F4F0 AFA00068 */   sw    $zero, 0x68($sp)
/* 0300F4 8002F4F4 1000004E */  b     .L8002F630_ovl0
/* 0300F8 8002F4F8 00001025 */   move  $v0, $zero
.L8002F4FC_ovl0:
/* 0300FC 8002F4FC 240F0001 */  li    $t7, 1
/* 030100 8002F500 3C018004 */  lui   $at, %hi(D_8003FB80) # $at, 0x8004
/* 030104 8002F504 0C00D184 */  jal   osGetTime
/* 030108 8002F508 AC2FFB80 */   sw    $t7, %lo(D_8003FB80)($at)
/* 03010C 8002F50C AFA20060 */  sw    $v0, 0x60($sp)
/* 030110 8002F510 8FB80060 */  lw    $t8, 0x60($sp)
/* 030114 8002F514 AFA30064 */  sw    $v1, 0x64($sp)
/* 030118 8002F518 8FB90064 */  lw    $t9, 0x64($sp)
/* 03011C 8002F51C 17000020 */  bnez  $t8, .L8002F5A0_ovl0
/* 030120 8002F520 3C010165 */   lui   $at, (0x0165A0BC >> 16) # lui $at, 0x165
/* 030124 8002F524 3421A0BC */  ori   $at, (0x0165A0BC & 0xFFFF) # ori $at, $at, 0xa0bc
/* 030128 8002F528 0321082B */  sltu  $at, $t9, $at
/* 03012C 8002F52C 1020001C */  beqz  $at, .L8002F5A0_ovl0
/* 030130 8002F530 00000000 */   nop   
/* 030134 8002F534 27A40028 */  addiu $a0, $sp, 0x28
/* 030138 8002F538 27A5006C */  addiu $a1, $sp, 0x6c
/* 03013C 8002F53C 0C00CEB8 */  jal   osCreateMesgQueue
/* 030140 8002F540 24060001 */   li    $a2, 1
/* 030144 8002F544 8FA80060 */  lw    $t0, 0x60($sp)
/* 030148 8002F548 8FA90064 */  lw    $t1, 0x64($sp)
/* 03014C 8002F54C 3C0B0165 */  lui   $t3, (0x0165A0BC >> 16) # lui $t3, 0x165
/* 030150 8002F550 356BA0BC */  ori   $t3, (0x0165A0BC & 0xFFFF) # ori $t3, $t3, 0xa0bc
/* 030154 8002F554 240A0000 */  li    $t2, 0
/* 030158 8002F558 240C0000 */  li    $t4, 0
/* 03015C 8002F55C 240D0000 */  li    $t5, 0
/* 030160 8002F560 27AE0028 */  addiu $t6, $sp, 0x28
/* 030164 8002F564 27AF006C */  addiu $t7, $sp, 0x6c
/* 030168 8002F568 01483023 */  subu  $a2, $t2, $t0
/* 03016C 8002F56C 0169082B */  sltu  $at, $t3, $t1
/* 030170 8002F570 00C13023 */  subu  $a2, $a2, $at
/* 030174 8002F574 AFAF001C */  sw    $t7, 0x1c($sp)
/* 030178 8002F578 AFAE0018 */  sw    $t6, 0x18($sp)
/* 03017C 8002F57C AFAD0014 */  sw    $t5, 0x14($sp)
/* 030180 8002F580 AFAC0010 */  sw    $t4, 0x10($sp)
/* 030184 8002F584 27A40040 */  addiu $a0, $sp, 0x40
/* 030188 8002F588 0C00DE14 */  jal   osSetTimer
/* 03018C 8002F58C 01693823 */   subu  $a3, $t3, $t1
/* 030190 8002F590 27A40028 */  addiu $a0, $sp, 0x28
/* 030194 8002F594 27A5006C */  addiu $a1, $sp, 0x6c
/* 030198 8002F598 0C00B540 */  jal   osRecvMesg
/* 03019C 8002F59C 24060001 */   li    $a2, 1
.L8002F5A0_ovl0:
/* 0301A0 8002F5A0 24180004 */  li    $t8, 4
/* 0301A4 8002F5A4 3C01800A */  lui   $at, %hi(D_80098AF1) # $at, 0x800a
/* 0301A8 8002F5A8 A0388AF1 */  sb    $t8, %lo(D_80098AF1)($at)
/* 0301AC 8002F5AC 0C00BDC4 */  jal   __osPackRequestData
/* 0301B0 8002F5B0 00002025 */   move  $a0, $zero
/* 0301B4 8002F5B4 3C05800A */  lui   $a1, %hi(__osContPifRam) # $a1, 0x800a
/* 0301B8 8002F5B8 24A58AB0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, -0x7550
/* 0301BC 8002F5BC 0C00C138 */  jal   __osSiRawStartDma
/* 0301C0 8002F5C0 24040001 */   li    $a0, 1
/* 0301C4 8002F5C4 AFA20068 */  sw    $v0, 0x68($sp)
/* 0301C8 8002F5C8 8FA40070 */  lw    $a0, 0x70($sp)
/* 0301CC 8002F5CC 27A5006C */  addiu $a1, $sp, 0x6c
/* 0301D0 8002F5D0 0C00B540 */  jal   osRecvMesg
/* 0301D4 8002F5D4 24060001 */   li    $a2, 1
/* 0301D8 8002F5D8 3C05800A */  lui   $a1, %hi(__osContPifRam) # $a1, 0x800a
/* 0301DC 8002F5DC 24A58AB0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, -0x7550
/* 0301E0 8002F5E0 0C00C138 */  jal   __osSiRawStartDma
/* 0301E4 8002F5E4 00002025 */   move  $a0, $zero
/* 0301E8 8002F5E8 AFA20068 */  sw    $v0, 0x68($sp)
/* 0301EC 8002F5EC 8FA40070 */  lw    $a0, 0x70($sp)
/* 0301F0 8002F5F0 27A5006C */  addiu $a1, $sp, 0x6c
/* 0301F4 8002F5F4 0C00B540 */  jal   osRecvMesg
/* 0301F8 8002F5F8 24060001 */   li    $a2, 1
/* 0301FC 8002F5FC 8FA40074 */  lw    $a0, 0x74($sp)
/* 030200 8002F600 0C00BD90 */  jal   __osContGetInitData
/* 030204 8002F604 8FA50078 */   lw    $a1, 0x78($sp)
/* 030208 8002F608 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 03020C 8002F60C 0C00BD04 */  jal   func_8002F410
/* 030210 8002F610 A0208AF0 */   sb    $zero, %lo(__osContLastCmd)($at)
/* 030214 8002F614 3C04800A */  lui   $a0, %hi(__osEepromTimerQ) # $a0, 0x800a
/* 030218 8002F618 3C05800A */  lui   $a1, %hi(__osEepromTimerMsg) # $a1, 0x800a
/* 03021C 8002F61C 24A58B30 */  addiu $a1, %lo(__osEepromTimerMsg) # addiu $a1, $a1, -0x74d0
/* 030220 8002F620 24848B18 */  addiu $a0, %lo(__osEepromTimerQ) # addiu $a0, $a0, -0x74e8
/* 030224 8002F624 0C00CEB8 */  jal   osCreateMesgQueue
/* 030228 8002F628 24060001 */   li    $a2, 1
/* 03022C 8002F62C 8FA20068 */  lw    $v0, 0x68($sp)
.L8002F630_ovl0:
/* 030230 8002F630 8FBF0024 */  lw    $ra, 0x24($sp)
/* 030234 8002F634 27BD0070 */  addiu $sp, $sp, 0x70
/* 030238 8002F638 03E00008 */  jr    $ra
/* 03023C 8002F63C 00000000 */   nop   

glabel __osContGetInitData
/* 030240 8002F640 3C0F800A */  lui   $t7, %hi(D_80098AF1) # $t7, 0x800a
/* 030244 8002F644 91EF8AF1 */  lbu   $t7, %lo(D_80098AF1)($t7)
/* 030248 8002F648 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03024C 8002F64C 3C0E800A */  lui   $t6, %hi(__osContPifRam) # $t6, 0x800a
/* 030250 8002F650 25CE8AB0 */  addiu $t6, %lo(__osContPifRam) # addiu $t6, $t6, -0x7550
/* 030254 8002F654 A3A00007 */  sb    $zero, 7($sp)
/* 030258 8002F658 AFAE0014 */  sw    $t6, 0x14($sp)
/* 03025C 8002F65C 19E00028 */  blez  $t7, .L8002F700_ovl0
/* 030260 8002F660 AFA00008 */   sw    $zero, 8($sp)
.L8002F664_ovl0:
/* 030264 8002F664 8FB90014 */  lw    $t9, 0x14($sp)
/* 030268 8002F668 27B8000C */  addiu $t8, $sp, 0xc
/* 03026C 8002F66C 8B210000 */  lwl   $at, ($t9)
/* 030270 8002F670 9B210003 */  lwr   $at, 3($t9)
/* 030274 8002F674 AF010000 */  sw    $at, ($t8)
/* 030278 8002F678 8B290004 */  lwl   $t1, 4($t9)
/* 03027C 8002F67C 9B290007 */  lwr   $t1, 7($t9)
/* 030280 8002F680 AF090004 */  sw    $t1, 4($t8)
/* 030284 8002F684 93AA000E */  lbu   $t2, 0xe($sp)
/* 030288 8002F688 314B00C0 */  andi  $t3, $t2, 0xc0
/* 03028C 8002F68C 000B6103 */  sra   $t4, $t3, 4
/* 030290 8002F690 A0AC0003 */  sb    $t4, 3($a1)
/* 030294 8002F694 90AD0003 */  lbu   $t5, 3($a1)
/* 030298 8002F698 15A0000E */  bnez  $t5, .L8002F6D4_ovl0
/* 03029C 8002F69C 00000000 */   nop   
/* 0302A0 8002F6A0 93AE0011 */  lbu   $t6, 0x11($sp)
/* 0302A4 8002F6A4 93A80010 */  lbu   $t0, 0x10($sp)
/* 0302A8 8002F6A8 240B0001 */  li    $t3, 1
/* 0302AC 8002F6AC 000E7A00 */  sll   $t7, $t6, 8
/* 0302B0 8002F6B0 01E8C025 */  or    $t8, $t7, $t0
/* 0302B4 8002F6B4 A4B80000 */  sh    $t8, ($a1)
/* 0302B8 8002F6B8 93B90012 */  lbu   $t9, 0x12($sp)
/* 0302BC 8002F6BC A0B90002 */  sb    $t9, 2($a1)
/* 0302C0 8002F6C0 8FAA0008 */  lw    $t2, 8($sp)
/* 0302C4 8002F6C4 93A90007 */  lbu   $t1, 7($sp)
/* 0302C8 8002F6C8 014B6004 */  sllv  $t4, $t3, $t2
/* 0302CC 8002F6CC 012C6825 */  or    $t5, $t1, $t4
/* 0302D0 8002F6D0 A3AD0007 */  sb    $t5, 7($sp)
.L8002F6D4_ovl0:
/* 0302D4 8002F6D4 8FAE0008 */  lw    $t6, 8($sp)
/* 0302D8 8002F6D8 3C19800A */  lui   $t9, %hi(D_80098AF1) # $t9, 0x800a
/* 0302DC 8002F6DC 93398AF1 */  lbu   $t9, %lo(D_80098AF1)($t9)
/* 0302E0 8002F6E0 8FA80014 */  lw    $t0, 0x14($sp)
/* 0302E4 8002F6E4 25CF0001 */  addiu $t7, $t6, 1
/* 0302E8 8002F6E8 01F9082A */  slt   $at, $t7, $t9
/* 0302EC 8002F6EC 25180008 */  addiu $t8, $t0, 8
/* 0302F0 8002F6F0 AFB80014 */  sw    $t8, 0x14($sp)
/* 0302F4 8002F6F4 AFAF0008 */  sw    $t7, 8($sp)
/* 0302F8 8002F6F8 1420FFDA */  bnez  $at, .L8002F664_ovl0
/* 0302FC 8002F6FC 24A50004 */   addiu $a1, $a1, 4
.L8002F700_ovl0:
/* 030300 8002F700 93AB0007 */  lbu   $t3, 7($sp)
/* 030304 8002F704 27BD0018 */  addiu $sp, $sp, 0x18
/* 030308 8002F708 03E00008 */  jr    $ra
/* 03030C 8002F70C A08B0000 */   sb    $t3, ($a0)

glabel __osPackRequestData
/* 030310 8002F710 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 030314 8002F714 308400FF */  andi  $a0, $a0, 0xff
/* 030318 8002F718 AFA00000 */  sw    $zero, ($sp)
.L8002F71C_ovl0:
/* 03031C 8002F71C 8FAE0000 */  lw    $t6, ($sp)
/* 030320 8002F720 8FB80000 */  lw    $t8, ($sp)
/* 030324 8002F724 3C01800A */  lui   $at, 0x800a
/* 030328 8002F728 000E7880 */  sll   $t7, $t6, 2
/* 03032C 8002F72C 002F0821 */  addu  $at, $at, $t7
/* 030330 8002F730 AC208AB0 */  sw    $zero, -0x7550($at)
/* 030334 8002F734 27190001 */  addiu $t9, $t8, 1
/* 030338 8002F738 2B21000F */  slti  $at, $t9, 0xf
/* 03033C 8002F73C 1420FFF7 */  bnez  $at, .L8002F71C_ovl0
/* 030340 8002F740 AFB90000 */   sw    $t9, ($sp)
/* 030344 8002F744 3C19800A */  lui   $t9, %hi(D_80098AF1) # $t9, 0x800a
/* 030348 8002F748 93398AF1 */  lbu   $t9, %lo(D_80098AF1)($t9)
/* 03034C 8002F74C 3C09800A */  lui   $t1, %hi(__osContPifRam) # $t1, 0x800a
/* 030350 8002F750 24080001 */  li    $t0, 1
/* 030354 8002F754 3C01800A */  lui   $at, %hi(D_80098AEC) # $at, 0x800a
/* 030358 8002F758 25298AB0 */  addiu $t1, %lo(__osContPifRam) # addiu $t1, $t1, -0x7550
/* 03035C 8002F75C 240A00FF */  li    $t2, 255
/* 030360 8002F760 240B0001 */  li    $t3, 1
/* 030364 8002F764 240C0003 */  li    $t4, 3
/* 030368 8002F768 240D00FF */  li    $t5, 255
/* 03036C 8002F76C 240E00FF */  li    $t6, 255
/* 030370 8002F770 240F00FF */  li    $t7, 255
/* 030374 8002F774 241800FF */  li    $t8, 255
/* 030378 8002F778 AC288AEC */  sw    $t0, %lo(D_80098AEC)($at)
/* 03037C 8002F77C AFA9000C */  sw    $t1, 0xc($sp)
/* 030380 8002F780 A3AA0004 */  sb    $t2, 4($sp)
/* 030384 8002F784 A3AB0005 */  sb    $t3, 5($sp)
/* 030388 8002F788 A3AC0006 */  sb    $t4, 6($sp)
/* 03038C 8002F78C A3A40007 */  sb    $a0, 7($sp)
/* 030390 8002F790 A3AD0008 */  sb    $t5, 8($sp)
/* 030394 8002F794 A3AE0009 */  sb    $t6, 9($sp)
/* 030398 8002F798 A3AF000A */  sb    $t7, 0xa($sp)
/* 03039C 8002F79C A3B8000B */  sb    $t8, 0xb($sp)
/* 0303A0 8002F7A0 1B200013 */  blez  $t9, .L8002F7F0_ovl0
/* 0303A4 8002F7A4 AFA00000 */   sw    $zero, ($sp)
.L8002F7A8_ovl0:
/* 0303A8 8002F7A8 27A90004 */  addiu $t1, $sp, 4
/* 0303AC 8002F7AC 8D210000 */  lw    $at, ($t1)
/* 0303B0 8002F7B0 8FA8000C */  lw    $t0, 0xc($sp)
/* 0303B4 8002F7B4 3C18800A */  lui   $t8, %hi(D_80098AF1) # $t8, 0x800a
/* 0303B8 8002F7B8 A9010000 */  swl   $at, ($t0)
/* 0303BC 8002F7BC B9010003 */  swr   $at, 3($t0)
/* 0303C0 8002F7C0 8D2B0004 */  lw    $t3, 4($t1)
/* 0303C4 8002F7C4 A90B0004 */  swl   $t3, 4($t0)
/* 0303C8 8002F7C8 B90B0007 */  swr   $t3, 7($t0)
/* 0303CC 8002F7CC 8FAE0000 */  lw    $t6, ($sp)
/* 0303D0 8002F7D0 93188AF1 */  lbu   $t8, %lo(D_80098AF1)($t8)
/* 0303D4 8002F7D4 8FAC000C */  lw    $t4, 0xc($sp)
/* 0303D8 8002F7D8 25CF0001 */  addiu $t7, $t6, 1
/* 0303DC 8002F7DC 01F8082A */  slt   $at, $t7, $t8
/* 0303E0 8002F7E0 258D0008 */  addiu $t5, $t4, 8
/* 0303E4 8002F7E4 AFAF0000 */  sw    $t7, ($sp)
/* 0303E8 8002F7E8 1420FFEF */  bnez  $at, .L8002F7A8_ovl0
/* 0303EC 8002F7EC AFAD000C */   sw    $t5, 0xc($sp)
.L8002F7F0_ovl0:
/* 0303F0 8002F7F0 8FAA000C */  lw    $t2, 0xc($sp)
/* 0303F4 8002F7F4 241900FE */  li    $t9, 254
/* 0303F8 8002F7F8 27BD0010 */  addiu $sp, $sp, 0x10
/* 0303FC 8002F7FC 03E00008 */  jr    $ra
/* 030400 8002F800 A1590000 */   sb    $t9, ($t2)

glabel func_8002F804
/* 030404 8002F804 00000000 */  nop   
/* 030408 8002F808 00000000 */  nop   
/* 03040C 8002F80C 00000000 */  nop   
/* 030410 8002F810 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 030414 8002F814 AFBF001C */  sw    $ra, 0x1c($sp)
/* 030418 8002F818 AFB10018 */  sw    $s1, 0x18($sp)
/* 03041C 8002F81C 00808825 */  move  $s1, $a0
/* 030420 8002F820 AFB00014 */  sw    $s0, 0x14($sp)
/* 030424 8002F824 AFA5004C */  sw    $a1, 0x4c($sp)
/* 030428 8002F828 0C00BD18 */  jal   __osSiGetAccess
/* 03042C 8002F82C AFA60050 */   sw    $a2, 0x50($sp)
/* 030430 8002F830 27B0002C */  addiu $s0, $sp, 0x2c
/* 030434 8002F834 02002825 */  move  $a1, $s0
/* 030438 8002F838 0C00BE8D */  jal   __osEepStatus
/* 03043C 8002F83C 02202025 */   move  $a0, $s1
/* 030440 8002F840 14400015 */  bnez  $v0, .L8002F898_ovl0
/* 030444 8002F844 00401825 */   move  $v1, $v0
/* 030448 8002F848 97AE002C */  lhu   $t6, 0x2c($sp)
/* 03044C 8002F84C 34018000 */  li    $at, 32768
/* 030450 8002F850 93B8004F */  lbu   $t8, 0x4f($sp)
/* 030454 8002F854 31CFC000 */  andi  $t7, $t6, 0xc000
/* 030458 8002F858 11E10005 */  beq   $t7, $at, .L8002F870_ovl0
/* 03045C 8002F85C 3401C000 */   li    $at, 49152
/* 030460 8002F860 11E10008 */  beq   $t7, $at, .L8002F884_ovl0
/* 030464 8002F864 93B9004F */   lbu   $t9, 0x4f($sp)
/* 030468 8002F868 1000000B */  b     .L8002F898_ovl0
/* 03046C 8002F86C 24030008 */   li    $v1, 8
.L8002F870_ovl0:
/* 030470 8002F870 2B010040 */  slti  $at, $t8, 0x40
/* 030474 8002F874 14200008 */  bnez  $at, .L8002F898_ovl0
/* 030478 8002F878 00000000 */   nop   
/* 03047C 8002F87C 10000006 */  b     .L8002F898_ovl0
/* 030480 8002F880 2403FFFF */   li    $v1, -1
.L8002F884_ovl0:
/* 030484 8002F884 2B210100 */  slti  $at, $t9, 0x100
/* 030488 8002F888 14200003 */  bnez  $at, .L8002F898_ovl0
/* 03048C 8002F88C 00000000 */   nop   
/* 030490 8002F890 10000001 */  b     .L8002F898_ovl0
/* 030494 8002F894 2403FFFF */   li    $v1, -1
.L8002F898_ovl0:
/* 030498 8002F898 10600005 */  beqz  $v1, .L8002F8B0_ovl0
/* 03049C 8002F89C 93A8002E */   lbu   $t0, 0x2e($sp)
/* 0304A0 8002F8A0 0C00BD29 */  jal   __osSiRelAccess
/* 0304A4 8002F8A4 AFA30044 */   sw    $v1, 0x44($sp)
/* 0304A8 8002F8A8 10000032 */  b     .L8002F974_ovl0
/* 0304AC 8002F8AC 8FA20044 */   lw    $v0, 0x44($sp)
.L8002F8B0_ovl0:
/* 0304B0 8002F8B0 31090080 */  andi  $t1, $t0, 0x80
/* 0304B4 8002F8B4 11200007 */  beqz  $t1, .L8002F8D4_ovl0
/* 0304B8 8002F8B8 02202025 */   move  $a0, $s1
.L8002F8BC_ovl0:
/* 0304BC 8002F8BC 0C00BE8D */  jal   __osEepStatus
/* 0304C0 8002F8C0 02002825 */   move  $a1, $s0
/* 0304C4 8002F8C4 93AA002E */  lbu   $t2, 0x2e($sp)
/* 0304C8 8002F8C8 314B0080 */  andi  $t3, $t2, 0x80
/* 0304CC 8002F8CC 5560FFFB */  bnezl $t3, .L8002F8BC_ovl0
/* 0304D0 8002F8D0 02202025 */   move  $a0, $s1
.L8002F8D4_ovl0:
/* 0304D4 8002F8D4 93A4004F */  lbu   $a0, 0x4f($sp)
/* 0304D8 8002F8D8 0C00BE62 */  jal   func_8002F988
/* 0304DC 8002F8DC 8FA50050 */   lw    $a1, 0x50($sp)
/* 0304E0 8002F8E0 3C05800A */  lui   $a1, %hi(D_8009B500) # $a1, 0x800a
/* 0304E4 8002F8E4 24A5B500 */  addiu $a1, %lo(D_8009B500) # addiu $a1, $a1, -0x4b00
/* 0304E8 8002F8E8 0C00C138 */  jal   __osSiRawStartDma
/* 0304EC 8002F8EC 24040001 */   li    $a0, 1
/* 0304F0 8002F8F0 02202025 */  move  $a0, $s1
/* 0304F4 8002F8F4 00002825 */  move  $a1, $zero
/* 0304F8 8002F8F8 0C00B540 */  jal   osRecvMesg
/* 0304FC 8002F8FC 24060001 */   li    $a2, 1
/* 030500 8002F900 3C05800A */  lui   $a1, %hi(D_8009B500) # $a1, 0x800a
/* 030504 8002F904 24A5B500 */  addiu $a1, %lo(D_8009B500) # addiu $a1, $a1, -0x4b00
/* 030508 8002F908 0C00C138 */  jal   __osSiRawStartDma
/* 03050C 8002F90C 00002025 */   move  $a0, $zero
/* 030510 8002F910 240C0005 */  li    $t4, 5
/* 030514 8002F914 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 030518 8002F918 A02C8AF0 */  sb    $t4, %lo(__osContLastCmd)($at)
/* 03051C 8002F91C 02202025 */  move  $a0, $s1
/* 030520 8002F920 00002825 */  move  $a1, $zero
/* 030524 8002F924 0C00B540 */  jal   osRecvMesg
/* 030528 8002F928 24060001 */   li    $a2, 1
/* 03052C 8002F92C 3C07800A */  lui   $a3, %hi(D_8009B504) # $a3, 0x800a
/* 030530 8002F930 24E7B504 */  addiu $a3, %lo(D_8009B504) # addiu $a3, $a3, -0x4afc
/* 030534 8002F934 88E10000 */  lwl   $at, ($a3)
/* 030538 8002F938 98E10003 */  lwr   $at, 3($a3)
/* 03053C 8002F93C 27AD0030 */  addiu $t5, $sp, 0x30
/* 030540 8002F940 ADA10000 */  sw    $at, ($t5)
/* 030544 8002F944 88F80004 */  lwl   $t8, 4($a3)
/* 030548 8002F948 98F80007 */  lwr   $t8, 7($a3)
/* 03054C 8002F94C ADB80004 */  sw    $t8, 4($t5)
/* 030550 8002F950 88E10008 */  lwl   $at, 8($a3)
/* 030554 8002F954 98E1000B */  lwr   $at, 0xb($a3)
/* 030558 8002F958 ADA10008 */  sw    $at, 8($t5)
/* 03055C 8002F95C 93A30031 */  lbu   $v1, 0x31($sp)
/* 030560 8002F960 307900C0 */  andi  $t9, $v1, 0xc0
/* 030564 8002F964 00194103 */  sra   $t0, $t9, 4
/* 030568 8002F968 0C00BD29 */  jal   __osSiRelAccess
/* 03056C 8002F96C AFA80044 */   sw    $t0, 0x44($sp)
/* 030570 8002F970 8FA20044 */  lw    $v0, 0x44($sp)
.L8002F974_ovl0:
/* 030574 8002F974 8FBF001C */  lw    $ra, 0x1c($sp)
/* 030578 8002F978 8FB00014 */  lw    $s0, 0x14($sp)
/* 03057C 8002F97C 8FB10018 */  lw    $s1, 0x18($sp)
/* 030580 8002F980 03E00008 */  jr    $ra
/* 030584 8002F984 27BD0048 */   addiu $sp, $sp, 0x48

glabel func_8002F988
/* 030588 8002F988 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 03058C 8002F98C 3C07800A */  lui   $a3, %hi(D_8009B500) # $a3, 0x800a
/* 030590 8002F990 24E7B500 */  addiu $a3, %lo(D_8009B500) # addiu $a3, $a3, -0x4b00
/* 030594 8002F994 240F0001 */  li    $t7, 1
/* 030598 8002F998 2418000A */  li    $t8, 10
/* 03059C 8002F99C 24190001 */  li    $t9, 1
/* 0305A0 8002F9A0 24080005 */  li    $t0, 5
/* 0305A4 8002F9A4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0305A8 8002F9A8 ACEF003C */  sw    $t7, 0x3c($a3)
/* 0305AC 8002F9AC A3B80008 */  sb    $t8, 8($sp)
/* 0305B0 8002F9B0 A3B90009 */  sb    $t9, 9($sp)
/* 0305B4 8002F9B4 A3A8000A */  sb    $t0, 0xa($sp)
/* 0305B8 8002F9B8 A3A4000B */  sb    $a0, 0xb($sp)
/* 0305BC 8002F9BC 27A60008 */  addiu $a2, $sp, 8
/* 0305C0 8002F9C0 27A20010 */  addiu $v0, $sp, 0x10
.L8002F9C4_ovl0:
/* 0305C4 8002F9C4 90A90000 */  lbu   $t1, ($a1)
/* 0305C8 8002F9C8 24C60001 */  addiu $a2, $a2, 1
/* 0305CC 8002F9CC 00C2082B */  sltu  $at, $a2, $v0
/* 0305D0 8002F9D0 24A50001 */  addiu $a1, $a1, 1
/* 0305D4 8002F9D4 1420FFFB */  bnez  $at, .L8002F9C4_ovl0
/* 0305D8 8002F9D8 A0C90003 */   sb    $t1, 3($a2)
/* 0305DC 8002F9DC 3C01800A */  lui   $at, %hi(D_8009B500) # $at, 0x800a
/* 0305E0 8002F9E0 3C02800A */  lui   $v0, %hi(D_8009B501) # $v0, 0x800a
/* 0305E4 8002F9E4 2442B501 */  addiu $v0, %lo(D_8009B501) # addiu $v0, $v0, -0x4aff
/* 0305E8 8002F9E8 A020B500 */  sb    $zero, %lo(D_8009B500)($at)
/* 0305EC 8002F9EC A0400002 */  sb    $zero, 2($v0)
/* 0305F0 8002F9F0 A0400001 */  sb    $zero, 1($v0)
/* 0305F4 8002F9F4 A0400000 */  sb    $zero, ($v0)
/* 0305F8 8002F9F8 27AA0008 */  addiu $t2, $sp, 8
/* 0305FC 8002F9FC 8D410000 */  lw    $at, ($t2)
/* 030600 8002FA00 240D00FE */  li    $t5, 254
/* 030604 8002FA04 2442000F */  addiu $v0, $v0, 0xf
/* 030608 8002FA08 A841FFF4 */  swl   $at, -0xc($v0)
/* 03060C 8002FA0C B841FFF7 */  swr   $at, -9($v0)
/* 030610 8002FA10 8D4C0004 */  lw    $t4, 4($t2)
/* 030614 8002FA14 A84CFFF8 */  swl   $t4, -8($v0)
/* 030618 8002FA18 B84CFFFB */  swr   $t4, -5($v0)
/* 03061C 8002FA1C 8D410008 */  lw    $at, 8($t2)
/* 030620 8002FA20 A04D0000 */  sb    $t5, ($v0)
/* 030624 8002FA24 27BD0018 */  addiu $sp, $sp, 0x18
/* 030628 8002FA28 A841FFFC */  swl   $at, -4($v0)
/* 03062C 8002FA2C 03E00008 */  jr    $ra
/* 030630 8002FA30 B841FFFF */   swr   $at, -1($v0)

glabel __osEepStatus
/* 030634 __osEepStatus 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 030638 8002FA38 3C02800A */  lui   $v0, %hi(D_8009B500) # $v0, 0x800a
/* 03063C 8002FA3C 3C03800A */  lui   $v1, %hi(D_8009B540) # $v1, 0x800a
/* 030640 8002FA40 AFBF0014 */  sw    $ra, 0x14($sp)
/* 030644 8002FA44 AFA40030 */  sw    $a0, 0x30($sp)
/* 030648 8002FA48 AFA50034 */  sw    $a1, 0x34($sp)
/* 03064C 8002FA4C 2463B540 */  addiu $v1, %lo(D_8009B540) # addiu $v1, $v1, -0x4ac0
/* 030650 8002FA50 2442B500 */  addiu $v0, %lo(D_8009B500) # addiu $v0, $v0, -0x4b00
.L8002FA54_ovl0:
/* 030654 8002FA54 24420004 */  addiu $v0, $v0, 4
/* 030658 8002FA58 0043082B */  sltu  $at, $v0, $v1
/* 03065C 8002FA5C 1420FFFD */  bnez  $at, .L8002FA54_ovl0
/* 030660 8002FA60 AC40FFFC */   sw    $zero, -4($v0)
/* 030664 8002FA64 3C05800A */  lui   $a1, %hi(D_8009B500) # $a1, 0x800a
/* 030668 8002FA68 24A5B500 */  addiu $a1, %lo(D_8009B500) # addiu $a1, $a1, -0x4b00
/* 03066C 8002FA6C 240E0001 */  li    $t6, 1
/* 030670 8002FA70 ACAE003C */  sw    $t6, 0x3c($a1)
/* 030674 8002FA74 00A01025 */  move  $v0, $a1
/* 030678 8002FA78 00001825 */  move  $v1, $zero
.L8002FA7C_ovl0:
/* 03067C 8002FA7C 24630001 */  addiu $v1, $v1, 1
/* 030680 8002FA80 28610004 */  slti  $at, $v1, 4
/* 030684 8002FA84 A0400000 */  sb    $zero, ($v0)
/* 030688 8002FA88 1420FFFC */  bnez  $at, .L8002FA7C_ovl0
/* 03068C 8002FA8C 24420001 */   addiu $v0, $v0, 1
/* 030690 8002FA90 240F00FF */  li    $t7, 255
/* 030694 8002FA94 24180001 */  li    $t8, 1
/* 030698 8002FA98 24190003 */  li    $t9, 3
/* 03069C 8002FA9C 240800FF */  li    $t0, 255
/* 0306A0 8002FAA0 240900FF */  li    $t1, 255
/* 0306A4 8002FAA4 240A00FF */  li    $t2, 255
/* 0306A8 8002FAA8 240B00FF */  li    $t3, 255
/* 0306AC 8002FAAC A3AF001C */  sb    $t7, 0x1c($sp)
/* 0306B0 8002FAB0 A3B8001D */  sb    $t8, 0x1d($sp)
/* 0306B4 8002FAB4 A3B9001E */  sb    $t9, 0x1e($sp)
/* 0306B8 8002FAB8 A3A0001F */  sb    $zero, 0x1f($sp)
/* 0306BC 8002FABC A3A80020 */  sb    $t0, 0x20($sp)
/* 0306C0 8002FAC0 A3A90021 */  sb    $t1, 0x21($sp)
/* 0306C4 8002FAC4 A3AA0022 */  sb    $t2, 0x22($sp)
/* 0306C8 8002FAC8 A3AB0023 */  sb    $t3, 0x23($sp)
/* 0306CC 8002FACC 27AC001C */  addiu $t4, $sp, 0x1c
/* 0306D0 8002FAD0 8D810000 */  lw    $at, ($t4)
/* 0306D4 8002FAD4 241800FE */  li    $t8, 254
/* 0306D8 8002FAD8 24420008 */  addiu $v0, $v0, 8
/* 0306DC 8002FADC A841FFF8 */  swl   $at, -8($v0)
/* 0306E0 8002FAE0 B841FFFB */  swr   $at, -5($v0)
/* 0306E4 8002FAE4 8D8F0004 */  lw    $t7, 4($t4)
/* 0306E8 8002FAE8 A0580000 */  sb    $t8, ($v0)
/* 0306EC 8002FAEC 24040001 */  li    $a0, 1
/* 0306F0 8002FAF0 A84FFFFC */  swl   $t7, -4($v0)
/* 0306F4 8002FAF4 0C00C138 */  jal   __osSiRawStartDma
/* 0306F8 8002FAF8 B84FFFFF */   swr   $t7, -1($v0)
/* 0306FC 8002FAFC 8FA40030 */  lw    $a0, 0x30($sp)
/* 030700 8002FB00 00002825 */  move  $a1, $zero
/* 030704 8002FB04 0C00B540 */  jal   osRecvMesg
/* 030708 8002FB08 24060001 */   li    $a2, 1
/* 03070C 8002FB0C 241900FE */  li    $t9, 254
/* 030710 8002FB10 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 030714 8002FB14 3C05800A */  lui   $a1, %hi(D_8009B500) # $a1, 0x800a
/* 030718 8002FB18 A0398AF0 */  sb    $t9, %lo(__osContLastCmd)($at)
/* 03071C 8002FB1C 24A5B500 */  addiu $a1, %lo(D_8009B500) # addiu $a1, $a1, -0x4b00
/* 030720 8002FB20 0C00C138 */  jal   __osSiRawStartDma
/* 030724 8002FB24 00002025 */   move  $a0, $zero
/* 030728 8002FB28 8FA40030 */  lw    $a0, 0x30($sp)
/* 03072C 8002FB2C 00002825 */  move  $a1, $zero
/* 030730 8002FB30 24060001 */  li    $a2, 1
/* 030734 8002FB34 0C00B540 */  jal   osRecvMesg
/* 030738 8002FB38 AFA2002C */   sw    $v0, 0x2c($sp)
/* 03073C 8002FB3C 8FA3002C */  lw    $v1, 0x2c($sp)
/* 030740 8002FB40 3C02800A */  lui   $v0, %hi(D_8009B501) # $v0, 0x800a
/* 030744 8002FB44 2442B501 */  addiu $v0, %lo(D_8009B501) # addiu $v0, $v0, -0x4aff
/* 030748 8002FB48 10600003 */  beqz  $v1, .L8002FB58_ovl0
/* 03074C 8002FB4C 3C01800A */   lui   $at, %hi(D_8009B500) # $at, 0x800a
/* 030750 8002FB50 1000001E */  b     .L8002FBCC_ovl0
/* 030754 8002FB54 00601025 */   move  $v0, $v1
.L8002FB58_ovl0:
/* 030758 8002FB58 A020B500 */  sb    $zero, %lo(D_8009B500)($at)
/* 03075C 8002FB5C 88410003 */  lwl   $at, 3($v0)
/* 030760 8002FB60 98410006 */  lwr   $at, 6($v0)
/* 030764 8002FB64 A0400002 */  sb    $zero, 2($v0)
/* 030768 8002FB68 A0400001 */  sb    $zero, 1($v0)
/* 03076C 8002FB6C A0400000 */  sb    $zero, ($v0)
/* 030770 8002FB70 8FA40034 */  lw    $a0, 0x34($sp)
/* 030774 8002FB74 27A8001C */  addiu $t0, $sp, 0x1c
/* 030778 8002FB78 AD010000 */  sw    $at, ($t0)
/* 03077C 8002FB7C 884A0007 */  lwl   $t2, 7($v0)
/* 030780 8002FB80 984A000A */  lwr   $t2, 0xa($v0)
/* 030784 8002FB84 24420003 */  addiu $v0, $v0, 3
/* 030788 8002FB88 00001025 */  move  $v0, $zero
/* 03078C 8002FB8C AD0A0004 */  sw    $t2, 4($t0)
/* 030790 8002FB90 93AB001E */  lbu   $t3, 0x1e($sp)
/* 030794 8002FB94 316E00C0 */  andi  $t6, $t3, 0xc0
/* 030798 8002FB98 000E6903 */  sra   $t5, $t6, 4
/* 03079C 8002FB9C A08D0003 */  sb    $t5, 3($a0)
/* 0307A0 8002FBA0 93AC0021 */  lbu   $t4, 0x21($sp)
/* 0307A4 8002FBA4 93B80020 */  lbu   $t8, 0x20($sp)
/* 0307A8 8002FBA8 31A300FF */  andi  $v1, $t5, 0xff
/* 0307AC 8002FBAC 000C7A00 */  sll   $t7, $t4, 8
/* 0307B0 8002FBB0 01F8C825 */  or    $t9, $t7, $t8
/* 0307B4 8002FBB4 A4990000 */  sh    $t9, ($a0)
/* 0307B8 8002FBB8 93A90022 */  lbu   $t1, 0x22($sp)
/* 0307BC 8002FBBC 10600003 */  beqz  $v1, .L8002FBCC_ovl0
/* 0307C0 8002FBC0 A0890002 */   sb    $t1, 2($a0)
/* 0307C4 8002FBC4 10000001 */  b     .L8002FBCC_ovl0
/* 0307C8 8002FBC8 00601025 */   move  $v0, $v1
.L8002FBCC_ovl0:
/* 0307CC 8002FBCC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0307D0 8002FBD0 27BD0030 */  addiu $sp, $sp, 0x30
/* 0307D4 8002FBD4 03E00008 */  jr    $ra
/* 0307D8 8002FBD8 00000000 */   nop   

glabel osCreateThread
/* 0307DC 8002FBDC 00000000 */  nop   
/* 0307E0 8002FBE0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0307E4 8002FBE4 AFA40028 */  sw    $a0, 0x28($sp)
/* 0307E8 8002FBE8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0307EC 8002FBEC 8FAE002C */  lw    $t6, 0x2c($sp)
/* 0307F0 8002FBF0 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0307F4 8002FBF4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0307F8 8002FBF8 AFA60030 */  sw    $a2, 0x30($sp)
/* 0307FC 8002FBFC AFA70034 */  sw    $a3, 0x34($sp)
/* 030800 8002FC00 AFB00018 */  sw    $s0, 0x18($sp)
/* 030804 8002FC04 ADEE0014 */  sw    $t6, 0x14($t7)
/* 030808 8002FC08 8FB90028 */  lw    $t9, 0x28($sp)
/* 03080C 8002FC0C 8FB8003C */  lw    $t8, 0x3c($sp)
/* 030810 8002FC10 AF380004 */  sw    $t8, 4($t9)
/* 030814 8002FC14 8FA80028 */  lw    $t0, 0x28($sp)
/* 030818 8002FC18 AD000000 */  sw    $zero, ($t0)
/* 03081C 8002FC1C 8FA90028 */  lw    $t1, 0x28($sp)
/* 030820 8002FC20 AD200008 */  sw    $zero, 8($t1)
/* 030824 8002FC24 8FAB0028 */  lw    $t3, 0x28($sp)
/* 030828 8002FC28 8FAA0030 */  lw    $t2, 0x30($sp)
/* 03082C 8002FC2C AD6A011C */  sw    $t2, 0x11c($t3)
/* 030830 8002FC30 8FAC0034 */  lw    $t4, 0x34($sp)
/* 030834 8002FC34 8FAD0028 */  lw    $t5, 0x28($sp)
/* 030838 8002FC38 01807825 */  move  $t7, $t4
/* 03083C 8002FC3C 000C77C3 */  sra   $t6, $t4, 0x1f
/* 030840 8002FC40 ADAE0038 */  sw    $t6, 0x38($t5)
/* 030844 8002FC44 ADAF003C */  sw    $t7, 0x3c($t5)
/* 030848 8002FC48 8FB80038 */  lw    $t8, 0x38($sp)
/* 03084C 8002FC4C 8FB90028 */  lw    $t9, 0x28($sp)
/* 030850 8002FC50 3C0C8003 */  lui   $t4, %hi(__osCleanupThread) # $t4, 0x8003
/* 030854 8002FC54 03004825 */  move  $t1, $t8
/* 030858 8002FC58 2D210010 */  sltiu $at, $t1, 0x10
/* 03085C 8002FC5C 001847C3 */  sra   $t0, $t8, 0x1f
/* 030860 8002FC60 01015023 */  subu  $t2, $t0, $at
/* 030864 8002FC64 252BFFF0 */  addiu $t3, $t1, -0x10
/* 030868 8002FC68 AF2B00F4 */  sw    $t3, 0xf4($t9)
/* 03086C 8002FC6C AF2A00F0 */  sw    $t2, 0xf0($t9)
/* 030870 8002FC70 8FAD0028 */  lw    $t5, 0x28($sp)
/* 030874 8002FC74 258CE860 */  addiu $t4, %lo(__osCleanupThread) # addiu $t4, $t4, -0x17a0
/* 030878 8002FC78 01807825 */  move  $t7, $t4
/* 03087C 8002FC7C 000C77C3 */  sra   $t6, $t4, 0x1f
/* 030880 8002FC80 ADAE0100 */  sw    $t6, 0x100($t5)
/* 030884 8002FC84 ADAF0104 */  sw    $t7, 0x104($t5)
/* 030888 8002FC88 8FA90028 */  lw    $t1, 0x28($sp)
/* 03088C 8002FC8C 3C18003F */  lui   $t8, (0x003FFF01 >> 16) # lui $t8, 0x3f
/* 030890 8002FC90 3718FF01 */  ori   $t8, (0x003FFF01 & 0xFFFF) # ori $t8, $t8, 0xff01
/* 030894 8002FC94 AFB80020 */  sw    $t8, 0x20($sp)
/* 030898 8002FC98 3408FF03 */  li    $t0, 65283
/* 03089C 8002FC9C AD280118 */  sw    $t0, 0x118($t1)
/* 0308A0 8002FCA0 8FAA0020 */  lw    $t2, 0x20($sp)
/* 0308A4 8002FCA4 8FAC0028 */  lw    $t4, 0x28($sp)
/* 0308A8 8002FCA8 3C01003F */  lui   $at, 0x3f
/* 0308AC 8002FCAC 01415824 */  and   $t3, $t2, $at
/* 0308B0 8002FCB0 000BCC02 */  srl   $t9, $t3, 0x10
/* 0308B4 8002FCB4 AD990128 */  sw    $t9, 0x128($t4)
/* 0308B8 8002FCB8 8FAF0028 */  lw    $t7, 0x28($sp)
/* 0308BC 8002FCBC 3C0E0100 */  lui   $t6, (0x01000800 >> 16) # lui $t6, 0x100
/* 0308C0 8002FCC0 35CE0800 */  ori   $t6, (0x01000800 & 0xFFFF) # ori $t6, $t6, 0x800
/* 0308C4 8002FCC4 ADEE012C */  sw    $t6, 0x12c($t7)
/* 0308C8 8002FCC8 8FAD0028 */  lw    $t5, 0x28($sp)
/* 0308CC 8002FCCC 24180001 */  li    $t8, 1
/* 0308D0 8002FCD0 ADA00018 */  sw    $zero, 0x18($t5)
/* 0308D4 8002FCD4 8FA80028 */  lw    $t0, 0x28($sp)
/* 0308D8 8002FCD8 A5180010 */  sh    $t8, 0x10($t0)
/* 0308DC 8002FCDC 8FA90028 */  lw    $t1, 0x28($sp)
/* 0308E0 8002FCE0 0C00D4D8 */  jal   __osDisableInt
/* 0308E4 8002FCE4 A5200012 */   sh    $zero, 0x12($t1)
/* 0308E8 8002FCE8 3C0A8004 */  lui   $t2, %hi(__osActiveQueue) # $t2, 0x8004
/* 0308EC 8002FCEC 8D4AFB5C */  lw    $t2, %lo(__osActiveQueue)($t2)
/* 0308F0 8002FCF0 8FAB0028 */  lw    $t3, 0x28($sp)
/* 0308F4 8002FCF4 00408025 */  move  $s0, $v0
/* 0308F8 8002FCF8 3C018004 */  lui   $at, %hi(__osActiveQueue) # $at, 0x8004
/* 0308FC 8002FCFC AD6A000C */  sw    $t2, 0xc($t3)
/* 030900 8002FD00 8FB90028 */  lw    $t9, 0x28($sp)
/* 030904 8002FD04 02002025 */  move  $a0, $s0
/* 030908 8002FD08 0C00D4E0 */  jal   __osRestoreInt
/* 03090C 8002FD0C AC39FB5C */   sw    $t9, %lo(__osActiveQueue)($at)
/* 030910 8002FD10 8FBF001C */  lw    $ra, 0x1c($sp)
/* 030914 8002FD14 8FB00018 */  lw    $s0, 0x18($sp)
/* 030918 8002FD18 27BD0028 */  addiu $sp, $sp, 0x28
/* 03091C 8002FD1C 03E00008 */  jr    $ra
/* 030920 8002FD20 00000000 */   nop   

glabel func_8002FD24
/* 030924 8002FD24 00000000 */  nop   
/* 030928 8002FD28 00000000 */  nop   
/* 03092C 8002FD2C 00000000 */  nop   
/* 030930 8002FD30 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 030934 8002FD34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 030938 8002FD38 0C00BD18 */  jal   __osSiGetAccess
/* 03093C 8002FD3C AFA40020 */   sw    $a0, 0x20($sp)
/* 030940 8002FD40 3C0E800A */  lui   $t6, %hi(__osContLastCmd) # $t6, 0x800a
/* 030944 8002FD44 91CE8AF0 */  lbu   $t6, %lo(__osContLastCmd)($t6)
/* 030948 8002FD48 24010001 */  li    $at, 1
/* 03094C 8002FD4C 11C1000B */  beq   $t6, $at, .L8002FD7C_ovl0
/* 030950 8002FD50 00000000 */   nop   
/* 030954 8002FD54 0C00BF90 */  jal   func_8002FE40
/* 030958 8002FD58 00000000 */   nop   
/* 03095C 8002FD5C 3C05800A */  lui   $a1, %hi(__osContPifRam) # $a1, 0x800a
/* 030960 8002FD60 24A58AB0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, -0x7550
/* 030964 8002FD64 0C00C138 */  jal   __osSiRawStartDma
/* 030968 8002FD68 24040001 */   li    $a0, 1
/* 03096C 8002FD6C 8FA40020 */  lw    $a0, 0x20($sp)
/* 030970 8002FD70 00002825 */  move  $a1, $zero
/* 030974 8002FD74 0C00B540 */  jal   osRecvMesg
/* 030978 8002FD78 24060001 */   li    $a2, 1
.L8002FD7C_ovl0:
/* 03097C 8002FD7C 3C05800A */  lui   $a1, %hi(__osContPifRam) # $a1, 0x800a
/* 030980 8002FD80 24A58AB0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, -0x7550
/* 030984 8002FD84 0C00C138 */  jal   __osSiRawStartDma
/* 030988 8002FD88 00002025 */   move  $a0, $zero
/* 03098C 8002FD8C 240F0001 */  li    $t7, 1
/* 030990 8002FD90 3C01800A */  lui   $at, %hi(__osContLastCmd) # $at, 0x800a
/* 030994 8002FD94 AFA2001C */  sw    $v0, 0x1c($sp)
/* 030998 8002FD98 0C00BD29 */  jal   __osSiRelAccess
/* 03099C 8002FD9C A02F8AF0 */   sb    $t7, %lo(__osContLastCmd)($at)
/* 0309A0 8002FDA0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0309A4 8002FDA4 8FA2001C */  lw    $v0, 0x1c($sp)
/* 0309A8 8002FDA8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0309AC 8002FDAC 03E00008 */  jr    $ra
/* 0309B0 8002FDB0 00000000 */   nop   

glabel func_8002FDB4
/* 0309B4 8002FDB4 3C05800A */  lui   $a1, %hi(D_80098AF1) # $a1, 0x800a
/* 0309B8 8002FDB8 24A58AF1 */  addiu $a1, %lo(D_80098AF1) # addiu $a1, $a1, -0x750f
/* 0309BC 8002FDBC 90AE0000 */  lbu   $t6, ($a1)
/* 0309C0 8002FDC0 3C02800A */  lui   $v0, %hi(__osContPifRam) # $v0, 0x800a
/* 0309C4 8002FDC4 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0309C8 8002FDC8 24428AB0 */  addiu $v0, %lo(__osContPifRam) # addiu $v0, $v0, -0x7550
/* 0309CC 8002FDCC 19C0001A */  blez  $t6, .L8002FE38_ovl0
/* 0309D0 8002FDD0 00001825 */   move  $v1, $zero
/* 0309D4 8002FDD4 27A60004 */  addiu $a2, $sp, 4
.L8002FDD8_ovl0:
/* 0309D8 8002FDD8 88410000 */  lwl   $at, ($v0)
/* 0309DC 8002FDDC 98410003 */  lwr   $at, 3($v0)
/* 0309E0 8002FDE0 ACC10000 */  sw    $at, ($a2)
/* 0309E4 8002FDE4 88580004 */  lwl   $t8, 4($v0)
/* 0309E8 8002FDE8 98580007 */  lwr   $t8, 7($v0)
/* 0309EC 8002FDEC ACD80004 */  sw    $t8, 4($a2)
/* 0309F0 8002FDF0 93B90006 */  lbu   $t9, 6($sp)
/* 0309F4 8002FDF4 332800C0 */  andi  $t0, $t9, 0xc0
/* 0309F8 8002FDF8 00084903 */  sra   $t1, $t0, 4
/* 0309FC 8002FDFC 312A00FF */  andi  $t2, $t1, 0xff
/* 030A00 8002FE00 15400007 */  bnez  $t2, .L8002FE20_ovl0
/* 030A04 8002FE04 A0890004 */   sb    $t1, 4($a0)
/* 030A08 8002FE08 97AB0008 */  lhu   $t3, 8($sp)
/* 030A0C 8002FE0C A48B0000 */  sh    $t3, ($a0)
/* 030A10 8002FE10 83AC000A */  lb    $t4, 0xa($sp)
/* 030A14 8002FE14 A08C0002 */  sb    $t4, 2($a0)
/* 030A18 8002FE18 83AD000B */  lb    $t5, 0xb($sp)
/* 030A1C 8002FE1C A08D0003 */  sb    $t5, 3($a0)
.L8002FE20_ovl0:
/* 030A20 8002FE20 90AE0000 */  lbu   $t6, ($a1)
/* 030A24 8002FE24 24630001 */  addiu $v1, $v1, 1
/* 030A28 8002FE28 24420008 */  addiu $v0, $v0, 8
/* 030A2C 8002FE2C 006E082A */  slt   $at, $v1, $t6
/* 030A30 8002FE30 1420FFE9 */  bnez  $at, .L8002FDD8_ovl0
/* 030A34 8002FE34 24840006 */   addiu $a0, $a0, 6
.L8002FE38_ovl0:
/* 030A38 8002FE38 03E00008 */  jr    $ra
/* 030A3C 8002FE3C 27BD0010 */   addiu $sp, $sp, 0x10

glabel func_8002FE40
/* 030A40 8002FE40 3C05800A */  lui   $a1, %hi(__osContPifRam) # $a1, 0x800a
/* 030A44 8002FE44 24A58AB0 */  addiu $a1, %lo(__osContPifRam) # addiu $a1, $a1, -0x7550
/* 030A48 8002FE48 3C04800A */  lui   $a0, %hi(__osContPifRam) # $a0, 0x800a
/* 030A4C 8002FE4C 3C03800A */  lui   $v1, %hi(D_80098AEC) # $v1, 0x800a
/* 030A50 8002FE50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 030A54 8002FE54 00A01025 */  move  $v0, $a1
/* 030A58 8002FE58 24638AEC */  addiu $v1, %lo(D_80098AEC) # addiu $v1, $v1, -0x7514
/* 030A5C 8002FE5C 24848AB0 */  addiu $a0, %lo(__osContPifRam) # addiu $a0, $a0, -0x7550
.L8002FE60_ovl0:
/* 030A60 8002FE60 24840004 */  addiu $a0, $a0, 4
/* 030A64 8002FE64 0083082B */  sltu  $at, $a0, $v1
/* 030A68 8002FE68 1420FFFD */  bnez  $at, .L8002FE60_ovl0
/* 030A6C 8002FE6C AC80FFFC */   sw    $zero, -4($a0)
/* 030A70 8002FE70 3C04800A */  lui   $a0, %hi(D_80098AF1) # $a0, 0x800a
/* 030A74 8002FE74 24848AF1 */  addiu $a0, %lo(D_80098AF1) # addiu $a0, $a0, -0x750f
/* 030A78 8002FE78 908C0000 */  lbu   $t4, ($a0)
/* 030A7C 8002FE7C 240E0001 */  li    $t6, 1
/* 030A80 8002FE80 240F00FF */  li    $t7, 255
/* 030A84 8002FE84 24180001 */  li    $t8, 1
/* 030A88 8002FE88 24190004 */  li    $t9, 4
/* 030A8C 8002FE8C 24080001 */  li    $t0, 1
/* 030A90 8002FE90 3409FFFF */  li    $t1, 65535
/* 030A94 8002FE94 240AFFFF */  li    $t2, -1
/* 030A98 8002FE98 240BFFFF */  li    $t3, -1
/* 030A9C 8002FE9C ACAE003C */  sw    $t6, 0x3c($a1)
/* 030AA0 8002FEA0 A3AF000C */  sb    $t7, 0xc($sp)
/* 030AA4 8002FEA4 A3B8000D */  sb    $t8, 0xd($sp)
/* 030AA8 8002FEA8 A3B9000E */  sb    $t9, 0xe($sp)
/* 030AAC 8002FEAC A3A8000F */  sb    $t0, 0xf($sp)
/* 030AB0 8002FEB0 A7A90010 */  sh    $t1, 0x10($sp)
/* 030AB4 8002FEB4 A3AA0012 */  sb    $t2, 0x12($sp)
/* 030AB8 8002FEB8 A3AB0013 */  sb    $t3, 0x13($sp)
/* 030ABC 8002FEBC 1980000E */  blez  $t4, .L8002FEF8_ovl0
/* 030AC0 8002FEC0 00001825 */   move  $v1, $zero
/* 030AC4 8002FEC4 27A5000C */  addiu $a1, $sp, 0xc
/* 030AC8 8002FEC8 8CA10000 */  lw    $at, ($a1)
.L8002FECC_ovl0:
/* 030ACC 8002FECC 24630001 */  addiu $v1, $v1, 1
/* 030AD0 8002FED0 24420008 */  addiu $v0, $v0, 8
/* 030AD4 8002FED4 A841FFF8 */  swl   $at, -8($v0)
/* 030AD8 8002FED8 B841FFFB */  swr   $at, -5($v0)
/* 030ADC 8002FEDC 8CAE0004 */  lw    $t6, 4($a1)
/* 030AE0 8002FEE0 A84EFFFC */  swl   $t6, -4($v0)
/* 030AE4 8002FEE4 B84EFFFF */  swr   $t6, -1($v0)
/* 030AE8 8002FEE8 908F0000 */  lbu   $t7, ($a0)
/* 030AEC 8002FEEC 006F082A */  slt   $at, $v1, $t7
/* 030AF0 8002FEF0 5420FFF6 */  bnezl $at, .L8002FECC_ovl0
/* 030AF4 8002FEF4 8CA10000 */   lw    $at, ($a1)
.L8002FEF8_ovl0:
/* 030AF8 8002FEF8 241800FE */  li    $t8, 254
/* 030AFC 8002FEFC A0580000 */  sb    $t8, ($v0)
/* 030B00 8002FF00 03E00008 */  jr    $ra
/* 030B04 8002FF04 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_8002FF08
/* 030B08 8002FF08 00000000 */  nop   
/* 030B0C 8002FF0C 00000000 */  nop   
/* 030B10 8002FF10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 030B14 8002FF14 AFA7002C */  sw    $a3, 0x2c($sp)
/* 030B18 8002FF18 8FAE002C */  lw    $t6, 0x2c($sp)
/* 030B1C 8002FF1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 030B20 8002FF20 AFA40020 */  sw    $a0, 0x20($sp)
/* 030B24 8002FF24 AFA50024 */  sw    $a1, 0x24($sp)
/* 030B28 8002FF28 AFA60028 */  sw    $a2, 0x28($sp)
/* 030B2C 8002FF2C 19C00016 */  blez  $t6, .L8002FF88_ovl0
/* 030B30 8002FF30 AFA0001C */   sw    $zero, 0x1c($sp)
.L8002FF34_ovl0:
/* 030B34 8002FF34 8FA40020 */  lw    $a0, 0x20($sp)
/* 030B38 8002FF38 93A50027 */  lbu   $a1, 0x27($sp)
/* 030B3C 8002FF3C 0C00E3D8 */  jal   osEepromRead
/* 030B40 8002FF40 8FA60028 */   lw    $a2, 0x28($sp)
/* 030B44 8002FF44 AFA2001C */  sw    $v0, 0x1c($sp)
/* 030B48 8002FF48 8FAF001C */  lw    $t7, 0x1c($sp)
/* 030B4C 8002FF4C 11E00003 */  beqz  $t7, .L8002FF5C_ovl0
/* 030B50 8002FF50 00000000 */   nop   
/* 030B54 8002FF54 1000000D */  b     .L8002FF8C_ovl0
/* 030B58 8002FF58 01E01025 */   move  $v0, $t7
.L8002FF5C_ovl0:
/* 030B5C 8002FF5C 8FB8002C */  lw    $t8, 0x2c($sp)
/* 030B60 8002FF60 93A80027 */  lbu   $t0, 0x27($sp)
/* 030B64 8002FF64 8FAA0028 */  lw    $t2, 0x28($sp)
/* 030B68 8002FF68 2719FFF8 */  addiu $t9, $t8, -8
/* 030B6C 8002FF6C AFB9002C */  sw    $t9, 0x2c($sp)
/* 030B70 8002FF70 8FAC002C */  lw    $t4, 0x2c($sp)
/* 030B74 8002FF74 25090001 */  addiu $t1, $t0, 1
/* 030B78 8002FF78 254B0008 */  addiu $t3, $t2, 8
/* 030B7C 8002FF7C A3A90027 */  sb    $t1, 0x27($sp)
/* 030B80 8002FF80 1D80FFEC */  bgtz  $t4, .L8002FF34_ovl0
/* 030B84 8002FF84 AFAB0028 */   sw    $t3, 0x28($sp)
.L8002FF88_ovl0:
/* 030B88 8002FF88 8FA2001C */  lw    $v0, 0x1c($sp)
.L8002FF8C_ovl0:
/* 030B8C 8002FF8C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 030B90 8002FF90 27BD0020 */  addiu $sp, $sp, 0x20
/* 030B94 8002FF94 03E00008 */  jr    $ra
/* 030B98 8002FF98 00000000 */   nop   

glabel func_8002FF9C
/* 030B9C 8002FF9C 00000000 */  nop   
/* 030BA0 8002FFA0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 030BA4 8002FFA4 AFA40018 */  sw    $a0, 0x18($sp)
/* 030BA8 8002FFA8 8FAE0018 */  lw    $t6, 0x18($sp)
/* 030BAC 8002FFAC 3C018000 */  lui   $at, 0x8000
/* 030BB0 8002FFB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 030BB4 8002FFB4 01C1082B */  sltu  $at, $t6, $at
/* 030BB8 8002FFB8 14200007 */  bnez  $at, .L8002FFD8_ovl0
/* 030BBC 8002FFBC 3C01A000 */   lui   $at, 0xa000
/* 030BC0 8002FFC0 01C1082B */  sltu  $at, $t6, $at
/* 030BC4 8002FFC4 10200004 */  beqz  $at, .L8002FFD8_ovl0
/* 030BC8 8002FFC8 3C011FFF */   lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 030BCC 8002FFCC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 030BD0 8002FFD0 1000000E */  b     .L8003000C_ovl0
/* 030BD4 8002FFD4 01C11024 */   and   $v0, $t6, $at
.L8002FFD8_ovl0:
/* 030BD8 8002FFD8 8FAF0018 */  lw    $t7, 0x18($sp)
/* 030BDC 8002FFDC 3C01A000 */  lui   $at, 0xa000
/* 030BE0 8002FFE0 01E1082B */  sltu  $at, $t7, $at
/* 030BE4 8002FFE4 14200007 */  bnez  $at, .L80030004_ovl0
/* 030BE8 8002FFE8 3C01C000 */   lui   $at, 0xc000
/* 030BEC 8002FFEC 01E1082B */  sltu  $at, $t7, $at
/* 030BF0 8002FFF0 10200004 */  beqz  $at, .L80030004_ovl0
/* 030BF4 8002FFF4 3C011FFF */   lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 030BF8 8002FFF8 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 030BFC 8002FFFC 10000003 */  b     .L8003000C_ovl0
/* 030C00 80030000 01E11024 */   and   $v0, $t7, $at
.L80030004_ovl0:
/* 030C04 80030004 0C00C504 */  jal   __osProbeTLB
/* 030C08 80030008 8FA40018 */   lw    $a0, 0x18($sp)
.L8003000C_ovl0:
/* 030C0C 8003000C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 030C10 80030010 27BD0018 */  addiu $sp, $sp, 0x18
/* 030C14 80030014 03E00008 */  jr    $ra
/* 030C18 80030018 00000000 */   nop   

glabel func_8003001C
/* 030C1C 8003001C 00000000 */  nop   
/* 030C20 80030020 18A00011 */  blez  $a1, .L80030068_ovl0
/* 030C24 80030024 00000000 */   nop   
/* 030C28 80030028 240B2000 */  li    $t3, 8192
/* 030C2C 8003002C 00AB082B */  sltu  $at, $a1, $t3
/* 030C30 80030030 1020000F */  beqz  $at, .L80030070_ovl0
/* 030C34 80030034 00000000 */   nop   
/* 030C38 80030038 00804025 */  move  $t0, $a0
/* 030C3C 8003003C 00854821 */  addu  $t1, $a0, $a1
/* 030C40 80030040 0109082B */  sltu  $at, $t0, $t1
/* 030C44 80030044 10200008 */  beqz  $at, .L80030068_ovl0
/* 030C48 80030048 00000000 */   nop   
/* 030C4C 8003004C 310A000F */  andi  $t2, $t0, 0xf
/* 030C50 80030050 2529FFF0 */  addiu $t1, $t1, -0x10
/* 030C54 80030054 010A4023 */  subu  $t0, $t0, $t2
.L80030058_ovl0:
/* 030C58 80030058 BD190000 */  cache 0x19, ($t0)
/* 030C5C 8003005C 0109082B */  sltu  $at, $t0, $t1
/* 030C60 80030060 1420FFFD */  bnez  $at, .L80030058_ovl0
/* 030C64 80030064 25080010 */   addiu $t0, $t0, 0x10
.L80030068_ovl0:
/* 030C68 80030068 03E00008 */  jr    $ra
/* 030C6C 8003006C 00000000 */   nop   

.L80030070_ovl0:
/* 030C70 80030070 3C088000 */  lui   $t0, %hi(D_80000010) # $t0, 0x8000
/* 030C74 80030074 010B4821 */  addu  $t1, $t0, $t3
/* 030C78 80030078 2529FFF0 */  addiu $t1, $t1, -0x10
.L8003007C_ovl0:
/* 030C7C 8003007C BD010000 */  cache 1, ($t0)
/* 030C80 80030080 0109082B */  sltu  $at, $t0, $t1
/* 030C84 80030084 1420FFFD */  bnez  $at, .L8003007C_ovl0
/* 030C88 80030088 25080010 */   addiu $t0, %lo(D_80000010) # addiu $t0, $t0, 0x10
/* 030C8C 8003008C 03E00008 */  jr    $ra
/* 030C90 80030090 00000000 */   nop   

glabel func_80030094
/* 030C94 80030094 00000000 */  nop   
/* 030C98 80030098 00000000 */  nop   
/* 030C9C 8003009C 00000000 */  nop   




glabel osInitialize
/* 030CA0 800300A0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 030CA4 800300A4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 030CA8 800300A8 240E0001 */  li    $t6, 1
/* 030CAC 800300AC 3C01800A */  lui   $at, %hi(D_80098B40) # $at, 0x800a
/* 030CB0 800300B0 AFB00018 */  sw    $s0, 0x18($sp)
/* 030CB4 800300B4 AFA00030 */  sw    $zero, 0x30($sp)
/* 030CB8 800300B8 0C00C100 */  jal   __osGetSR
/* 030CBC 800300BC AC2E8B40 */   sw    $t6, %lo(D_80098B40)($at)
/* 030CC0 800300C0 00408025 */  move  $s0, $v0
/* 030CC4 800300C4 3C012000 */  lui   $at, 0x2000
/* 030CC8 800300C8 0C00C0FC */  jal   __osSetSR
/* 030CCC 800300CC 02012025 */   or    $a0, $s0, $at
/* 030CD0 800300D0 3C040100 */  lui   $a0, (0x01000800 >> 16) # lui $a0, 0x100
/* 030CD4 800300D4 0C00D748 */  jal   __osSetFpcCsr
/* 030CD8 800300D8 34840800 */   ori   $a0, (0x01000800 & 0xFFFF) # ori $a0, $a0, 0x800
/* 030CDC 800300DC 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 030CE0 800300E0 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 030CE4 800300E4 0C00C194 */  jal   __osSiRawReadIo
/* 030CE8 800300E8 27A50034 */   addiu $a1, $sp, 0x34
/* 030CEC 800300EC 10400007 */  beqz  $v0, .L8003010C_ovl0
/* 030CF0 800300F0 00000000 */   nop   
.L800300F4_ovl0:
/* 030CF4 800300F4 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 030CF8 800300F8 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 030CFC 800300FC 0C00C194 */  jal   __osSiRawReadIo
/* 030D00 80030100 27A50034 */   addiu $a1, $sp, 0x34
/* 030D04 80030104 1440FFFB */  bnez  $v0, .L800300F4_ovl0
/* 030D08 80030108 00000000 */   nop   
.L8003010C_ovl0:
/* 030D0C 8003010C 8FA50034 */  lw    $a1, 0x34($sp)
/* 030D10 80030110 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 030D14 80030114 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 030D18 80030118 34AF0008 */  ori   $t7, $a1, 8
/* 030D1C 8003011C 0C00E20C */  jal   __osSiRawWriteIo
/* 030D20 80030120 01E02825 */   move  $a1, $t7
/* 030D24 80030124 10400009 */  beqz  $v0, .L8003014C_ovl0
/* 030D28 80030128 00000000 */   nop   
.L8003012C_ovl0:
/* 030D2C 8003012C 8FA50034 */  lw    $a1, 0x34($sp)
/* 030D30 80030130 3C041FC0 */  lui   $a0, (0x1FC007FC >> 16) # lui $a0, 0x1fc0
/* 030D34 80030134 348407FC */  ori   $a0, (0x1FC007FC & 0xFFFF) # ori $a0, $a0, 0x7fc
/* 030D38 80030138 34B80008 */  ori   $t8, $a1, 8
/* 030D3C 8003013C 0C00E20C */  jal   __osSiRawWriteIo
/* 030D40 80030140 03002825 */   move  $a1, $t8
/* 030D44 80030144 1440FFF9 */  bnez  $v0, .L8003012C_ovl0
/* 030D48 80030148 00000000 */   nop   
.L8003014C_ovl0:
/* 030D4C 8003014C 3C088003 */  lui   $t0, %hi(__osExceptionPreamble) # $t0, 0x8003
/* 030D50 80030150 2508DF60 */  addiu $t0, %lo(__osExceptionPreamble) # addiu $t0, $t0, -0x20a0
/* 030D54 80030154 8D010000 */  lw    $at, ($t0)
/* 030D58 80030158 3C198000 */  lui   $t9, %hi(D_8000000C) # $t9, 0x8000
/* 030D5C 8003015C 3C0D8003 */  lui   $t5, %hi(__osExceptionPreamble) # $t5, 0x8003
/* 030D60 80030160 AF210000 */  sw    $at, ($t9)
/* 030D64 80030164 8D0B0004 */  lw    $t3, 4($t0)
/* 030D68 80030168 25ADDF60 */  addiu $t5, %lo(__osExceptionPreamble) # addiu $t5, $t5, -0x20a0
/* 030D6C 8003016C 3C0C8000 */  lui   $t4, %hi(D_8000000C) # $t4, 0x8000
/* 030D70 80030170 AF2B0004 */  sw    $t3, %lo(D_80000004)($t9)
/* 030D74 80030174 8D010008 */  lw    $at, 8($t0)
/* 030D78 80030178 358C0080 */  ori   $t4, (0x80000080 & 0xFFFF) # ori $t4, $t4, 0x80
/* 030D7C 8003017C 3C098003 */  lui   $t1, %hi(__osExceptionPreamble) # $t1, 0x8003
/* 030D80 80030180 AF210008 */  sw    $at, %lo(D_80000008)($t9)
/* 030D84 80030184 8D0B000C */  lw    $t3, 0xc($t0)
/* 030D88 80030188 2529DF60 */  addiu $t1, %lo(__osExceptionPreamble) # addiu $t1, $t1, -0x20a0
/* 030D8C 8003018C 3C0A8000 */  lui   $t2, %hi(D_8000000C) # $t2, 0x8000
/* 030D90 80030190 AF2B000C */  sw    $t3, %lo(D_8000000C)($t9)
/* 030D94 80030194 8DA10000 */  lw    $at, ($t5)
/* 030D98 80030198 354A0100 */  ori   $t2, (0x80000100 & 0xFFFF) # ori $t2, $t2, 0x100
/* 030D9C 8003019C 3C0E8003 */  lui   $t6, %hi(__osExceptionPreamble) # $t6, 0x8003
/* 030DA0 800301A0 AD810000 */  sw    $at, ($t4)
/* 030DA4 800301A4 8DB80004 */  lw    $t8, 4($t5)
/* 030DA8 800301A8 25CEDF60 */  addiu $t6, %lo(__osExceptionPreamble) # addiu $t6, $t6, -0x20a0
/* 030DAC 800301AC 3C0F8000 */  lui   $t7, %hi(D_8000000C) # $t7, 0x8000
/* 030DB0 800301B0 AD980004 */  sw    $t8, %lo(D_80000004)($t4)
/* 030DB4 800301B4 8DA10008 */  lw    $at, 8($t5)
/* 030DB8 800301B8 35EF0180 */  ori   $t7, (0x80000180 & 0xFFFF) # ori $t7, $t7, 0x180
/* 030DBC 800301BC 3C048000 */  lui   $a0, 0x8000
/* 030DC0 800301C0 AD810008 */  sw    $at, %lo(D_80000008)($t4)
/* 030DC4 800301C4 8DB8000C */  lw    $t8, 0xc($t5)
/* 030DC8 800301C8 24050190 */  li    $a1, 400
/* 030DCC 800301CC AD98000C */  sw    $t8, %lo(D_8000000C)($t4)
/* 030DD0 800301D0 8D210000 */  lw    $at, ($t1)
/* 030DD4 800301D4 AD410000 */  sw    $at, ($t2)
/* 030DD8 800301D8 8D2B0004 */  lw    $t3, 4($t1)
/* 030DDC 800301DC AD4B0004 */  sw    $t3, %lo(D_80000004)($t2)
/* 030DE0 800301E0 8D210008 */  lw    $at, 8($t1)
/* 030DE4 800301E4 AD410008 */  sw    $at, %lo(D_80000008)($t2)
/* 030DE8 800301E8 8D2B000C */  lw    $t3, 0xc($t1)
/* 030DEC 800301EC AD4B000C */  sw    $t3, %lo(D_8000000C)($t2)
/* 030DF0 800301F0 8DC10000 */  lw    $at, ($t6)
/* 030DF4 800301F4 ADE10000 */  sw    $at, ($t7)
/* 030DF8 800301F8 8DD80004 */  lw    $t8, 4($t6)
/* 030DFC 800301FC ADF80004 */  sw    $t8, %lo(D_80000004)($t7)
/* 030E00 80030200 8DC10008 */  lw    $at, 8($t6)
/* 030E04 80030204 ADE10008 */  sw    $at, %lo(D_80000008)($t7)
/* 030E08 80030208 8DD8000C */  lw    $t8, 0xc($t6)
/* 030E0C 8003020C 0C00C008 */  jal   osWritebackDCache
/* 030E10 80030210 ADF8000C */   sw    $t8, %lo(D_8000000C)($t7)
/* 030E14 80030214 3C048000 */  lui   $a0, 0x8000
/* 030E18 80030218 0C00CEC4 */  jal   osInvalICache
/* 030E1C 8003021C 24050190 */   li    $a1, 400
/* 030E20 80030220 0C00DBF4 */  jal   func_80036FD0
/* 030E24 80030224 00000000 */   nop   
/* 030E28 80030228 24040004 */  li    $a0, 4
/* 030E2C 8003022C 0C00C0CC */  jal   osPiRawReadIo
/* 030E30 80030230 27A50030 */   addiu $a1, $sp, 0x30
/* 030E34 80030234 8FA80030 */  lw    $t0, 0x30($sp)
/* 030E38 80030238 2401FFF0 */  li    $at, -16
/* 030E3C 8003023C 0101C824 */  and   $t9, $t0, $at
/* 030E40 80030240 13200006 */  beqz  $t9, .L8003025C_ovl0
/* 030E44 80030244 AFB90030 */   sw    $t9, 0x30($sp)
/* 030E48 80030248 3C018004 */  lui   $at, %hi(osClockRate + 4) # $at, 0x8004
/* 030E4C 8003024C 03205825 */  move  $t3, $t9
/* 030E50 80030250 240A0000 */  li    $t2, 0
/* 030E54 80030254 AC2AFB90 */  sw    $t2, %lo(osClockRate)($at)
/* 030E58 80030258 AC2BFB94 */  sw    $t3, %lo(osClockRate + 4)($at)
.L8003025C_ovl0:
/* 030E5C 8003025C 3C048004 */  lui   $a0, %hi(osClockRate) # $a0, 0x8004
/* 030E60 80030260 3C058004 */  lui   $a1, %hi(osClockRate + 4) # $a1, 0x8004
/* 030E64 80030264 8CA5FB94 */  lw    $a1, %lo(osClockRate + 4)($a1)
/* 030E68 80030268 8C84FB90 */  lw    $a0, %lo(osClockRate)($a0)
/* 030E6C 8003026C 24060000 */  li    $a2, 0
/* 030E70 80030270 0C00B782 */  jal   __ll_mul
/* 030E74 80030274 24070003 */   li    $a3, 3
/* 030E78 80030278 AFA20020 */  sw    $v0, 0x20($sp)
/* 030E7C 8003027C AFA30024 */  sw    $v1, 0x24($sp)
/* 030E80 80030280 8FA50024 */  lw    $a1, 0x24($sp)
/* 030E84 80030284 8FA40020 */  lw    $a0, 0x20($sp)
/* 030E88 80030288 24060000 */  li    $a2, 0
/* 030E8C 8003028C 0C00B742 */  jal   __ull_div
/* 030E90 80030290 24070004 */   li    $a3, 4
/* 030E94 80030294 3C098000 */  lui   $t1, %hi(D_8000030C) # $t1, 0x8000
/* 030E98 80030298 8D29030C */  lw    $t1, %lo(D_8000030C)($t1)
/* 030E9C 8003029C 3C018004 */  lui   $at, %hi(osClockRate + 4) # $at, 0x8004
/* 030EA0 800302A0 AC22FB90 */  sw    $v0, %lo(osClockRate)($at)
/* 030EA4 800302A4 15200005 */  bnez  $t1, .L800302BC_ovl0
/* 030EA8 800302A8 AC23FB94 */   sw    $v1, %lo(osClockRate + 4)($at)
/* 030EAC 800302AC 3C048000 */  lui   $a0, %hi(D_8000031C) # $a0, 0x8000
/* 030EB0 800302B0 2484031C */  addiu $a0, %lo(D_8000031C) # addiu $a0, $a0, 0x31c
/* 030EB4 800302B4 0C00BA2C */  jal   bzero
/* 030EB8 800302B8 24050040 */   li    $a1, 64
.L800302BC_ovl0:
/* 030EBC 800302BC 3C0D8000 */  lui   $t5, %hi(D_80000300) # $t5, 0x8000
/* 030EC0 800302C0 8DAD0300 */  lw    $t5, %lo(D_80000300)($t5)
/* 030EC4 800302C4 15A00006 */  bnez  $t5, .L800302E0_ovl0
/* 030EC8 800302C8 00000000 */   nop   
/* 030ECC 800302CC 3C0C02F5 */  lui   $t4, (0x02F5B2D2 >> 16) # lui $t4, 0x2f5
/* 030ED0 800302D0 358CB2D2 */  ori   $t4, (0x02F5B2D2 & 0xFFFF) # ori $t4, $t4, 0xb2d2
/* 030ED4 800302D4 3C018004 */  lui   $at, %hi(osViClock) # $at, 0x8004
/* 030ED8 800302D8 1000000F */  b     .L80030318_ovl0
/* 030EDC 800302DC AC2CFB98 */   sw    $t4, %lo(osViClock)($at)
.L800302E0_ovl0:
/* 030EE0 800302E0 3C0F8000 */  lui   $t7, %hi(D_80000300) # $t7, 0x8000
/* 030EE4 800302E4 8DEF0300 */  lw    $t7, %lo(D_80000300)($t7)
/* 030EE8 800302E8 24010002 */  li    $at, 2
/* 030EEC 800302EC 15E10006 */  bne   $t7, $at, .L80030308_ovl0
/* 030EF0 800302F0 00000000 */   nop   
/* 030EF4 800302F4 3C0E02E6 */  lui   $t6, (0x02E6025C >> 16) # lui $t6, 0x2e6
/* 030EF8 800302F8 35CE025C */  ori   $t6, (0x02E6025C & 0xFFFF) # ori $t6, $t6, 0x25c
/* 030EFC 800302FC 3C018004 */  lui   $at, %hi(osViClock) # $at, 0x8004
/* 030F00 80030300 10000005 */  b     .L80030318_ovl0
/* 030F04 80030304 AC2EFB98 */   sw    $t6, %lo(osViClock)($at)
.L80030308_ovl0:
/* 030F08 80030308 3C1802E6 */  lui   $t8, (0x02E6D354 >> 16) # lui $t8, 0x2e6
/* 030F0C 8003030C 3718D354 */  ori   $t8, (0x02E6D354 & 0xFFFF) # ori $t8, $t8, 0xd354
/* 030F10 80030310 3C018004 */  lui   $at, %hi(osViClock) # $at, 0x8004
/* 030F14 80030314 AC38FB98 */  sw    $t8, %lo(osViClock)($at)
.L80030318_ovl0:
/* 030F18 80030318 8FBF001C */  lw    $ra, 0x1c($sp)
/* 030F1C 8003031C 8FB00018 */  lw    $s0, 0x18($sp)
/* 030F20 80030320 27BD0038 */  addiu $sp, $sp, 0x38
/* 030F24 80030324 03E00008 */  jr    $ra
/* 030F28 80030328 00000000 */   nop   

glabel func_8003032C
/* 030F2C 8003032C 00000000 */  nop   
/* 030F30 80030330 3C0EA460 */  lui   $t6, %hi(D_A4600010) # $t6, 0xa460
/* 030F34 80030334 8DC60010 */  lw    $a2, %lo(D_A4600010)($t6)
/* 030F38 80030338 27BDFFF8 */  addiu $sp, $sp, -8
/* 030F3C 8003033C 30CF0003 */  andi  $t7, $a2, 3
/* 030F40 80030340 11E00006 */  beqz  $t7, .L8003035C_ovl0
/* 030F44 80030344 00000000 */   nop   
.L80030348_ovl0:
/* 030F48 80030348 3C18A460 */  lui   $t8, %hi(D_A4600010) # $t8, 0xa460
/* 030F4C 8003034C 8F060010 */  lw    $a2, %lo(D_A4600010)($t8)
/* 030F50 80030350 30D90003 */  andi  $t9, $a2, 3
/* 030F54 80030354 1720FFFC */  bnez  $t9, .L80030348_ovl0
/* 030F58 80030358 00000000 */   nop   
.L8003035C_ovl0:
/* 030F5C 8003035C 3C088000 */  lui   $t0, %hi(D_80000308) # $t0, 0x8000
/* 030F60 80030360 8D080308 */  lw    $t0, %lo(D_80000308)($t0)
/* 030F64 80030364 3C01A000 */  lui   $at, 0xa000
/* 030F68 80030368 00001025 */  move  $v0, $zero
/* 030F6C 8003036C 01044825 */  or    $t1, $t0, $a0
/* 030F70 80030370 01215025 */  or    $t2, $t1, $at
/* 030F74 80030374 8D4B0000 */  lw    $t3, ($t2)
/* 030F78 80030378 27BD0008 */  addiu $sp, $sp, 8
/* 030F7C 8003037C 03E00008 */  jr    $ra
/* 030F80 80030380 ACAB0000 */   sw    $t3, ($a1)

glabel func_80030384
/* 030F84 80030384 00000000 */  nop   
/* 030F88 80030388 00000000 */  nop   
/* 030F8C 8003038C 00000000 */  nop   
/* 030F90 80030390 00000000 */  nop   
/* 030F94 80030394 00000000 */  nop   
/* 030F98 80030398 00000000 */  nop   
/* 030F9C 8003039C 00000000 */  nop   
/* 030FA0 800303A0 00000000 */  nop   
/* 030FA4 800303A4 00000000 */  nop   
/* 030FA8 800303A8 00000000 */  nop   
/* 030FAC 800303AC 00000000 */  nop   
/* 030FB0 800303B0 00000000 */  nop   
/* 030FB4 800303B4 00000000 */  nop   
/* 030FB8 800303B8 00000000 */  nop   
/* 030FBC 800303BC 00000000 */  nop   
/* 030FC0 800303C0 00000000 */  nop   
/* 030FC4 800303C4 00000000 */  nop   
/* 030FC8 800303C8 00000000 */  nop   
/* 030FCC 800303CC 00000000 */  nop   
/* 030FD0 800303D0 00000000 */  nop   
/* 030FD4 800303D4 00000000 */  nop   
/* 030FD8 800303D8 00000000 */  nop   
/* 030FDC 800303DC 00000000 */  nop   
/* 030FE0 800303E0 00000000 */  nop   
/* 030FE4 800303E4 00000000 */  nop   
/* 030FE8 800303E8 00000000 */  nop   
/* 030FEC 800303EC 00000000 */  nop   
/* 030FF0 800303F0 40846000 */  mtc0  $a0, $12
/* 030FF4 800303F4 00000000 */  nop   
/* 030FF8 800303F8 03E00008 */  jr    $ra
/* 030FFC 800303FC 00000000 */   nop   

glabel __osGetSR
/* 031000 80030400 40026000 */  mfc0  $v0, $12
/* 031004 80030404 03E00008 */  jr    $ra
/* 031008 80030408 00000000 */   nop   

glabel func_8003040C
/* 03100C 8003040C 00000000 */  nop   
/* 031010 80030410 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 031014 80030414 AFBF001C */  sw    $ra, 0x1c($sp)
/* 031018 80030418 0C00D4D8 */  jal   __osDisableInt
/* 03101C 8003041C AFB00018 */   sw    $s0, 0x18($sp)
/* 031020 80030420 3C0E8004 */  lui   $t6, %hi(__osViNext) # $t6, 0x8004
/* 031024 80030424 8DCEFD64 */  lw    $t6, %lo(__osViNext)($t6)
/* 031028 80030428 00408025 */  move  $s0, $v0
/* 03102C 8003042C 02002025 */  move  $a0, $s0
/* 031030 80030430 8DCF0004 */  lw    $t7, 4($t6)
/* 031034 80030434 0C00D4E0 */  jal   __osRestoreInt
/* 031038 80030438 AFAF0020 */   sw    $t7, 0x20($sp)
/* 03103C 8003043C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 031040 80030440 8FA20020 */  lw    $v0, 0x20($sp)
/* 031044 80030444 8FB00018 */  lw    $s0, 0x18($sp)
/* 031048 80030448 03E00008 */  jr    $ra
/* 03104C 8003044C 27BD0028 */   addiu $sp, $sp, 0x28

glabel __osSpRawStartDma
/* 031050 80030450 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 031054 80030454 AFBF0014 */  sw    $ra, 0x14($sp)
/* 031058 80030458 AFA40018 */  sw    $a0, 0x18($sp)
/* 03105C 8003045C AFA5001C */  sw    $a1, 0x1c($sp)
/* 031060 80030460 AFA60020 */  sw    $a2, 0x20($sp)
/* 031064 80030464 0C00CF4C */  jal   __osSpDeviceBusy
/* 031068 80030468 AFA70024 */   sw    $a3, 0x24($sp)
/* 03106C 8003046C 10400003 */  beqz  $v0, .L8003047C_ovl0
/* 031070 80030470 00000000 */   nop   
/* 031074 80030474 10000015 */  b     .L800304CC_ovl0
/* 031078 80030478 2402FFFF */   li    $v0, -1
.L8003047C_ovl0:
/* 03107C 8003047C 8FAE001C */  lw    $t6, 0x1c($sp)
/* 031080 80030480 3C0FA404 */  lui   $t7, 0xa404
/* 031084 80030484 ADEE0000 */  sw    $t6, ($t7)
/* 031088 80030488 0C00BFE8 */  jal   osVirtualToPhysical
/* 03108C 8003048C 8FA40020 */   lw    $a0, 0x20($sp)
/* 031090 80030490 3C18A404 */  lui   $t8, %hi(D_A4040004) # $t8, 0xa404
/* 031094 80030494 AF020004 */  sw    $v0, %lo(D_A4040004)($t8)
/* 031098 80030498 8FB90018 */  lw    $t9, 0x18($sp)
/* 03109C 8003049C 17200006 */  bnez  $t9, .L800304B8_ovl0
/* 0310A0 800304A0 00000000 */   nop   
/* 0310A4 800304A4 8FA80024 */  lw    $t0, 0x24($sp)
/* 0310A8 800304A8 3C0AA404 */  lui   $t2, %hi(D_A404000C) # $t2, 0xa404
/* 0310AC 800304AC 2509FFFF */  addiu $t1, $t0, -1
/* 0310B0 800304B0 10000005 */  b     .L800304C8_ovl0
/* 0310B4 800304B4 AD49000C */   sw    $t1, %lo(D_A404000C)($t2)
.L800304B8_ovl0:
/* 0310B8 800304B8 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0310BC 800304BC 3C0DA404 */  lui   $t5, %hi(D_A4040008) # $t5, 0xa404
/* 0310C0 800304C0 256CFFFF */  addiu $t4, $t3, -1
/* 0310C4 800304C4 ADAC0008 */  sw    $t4, %lo(D_A4040008)($t5)
.L800304C8_ovl0:
/* 0310C8 800304C8 00001025 */  move  $v0, $zero
.L800304CC_ovl0:
/* 0310CC 800304CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0310D0 800304D0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0310D4 800304D4 03E00008 */  jr    $ra
/* 0310D8 800304D8 00000000 */   nop   

glabel func_800304DC
/* 0310DC 800304DC 00000000 */  nop   
/* 0310E0 800304E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0310E4 800304E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0310E8 800304E8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0310EC 800304EC 3C0EA480 */  lui   $t6, %hi(D_A4800018) # $t6, 0xa480
/* 0310F0 800304F0 8DCF0018 */  lw    $t7, %lo(D_A4800018)($t6)
/* 0310F4 800304F4 00803025 */  move  $a2, $a0
/* 0310F8 800304F8 24010001 */  li    $at, 1
/* 0310FC 800304FC 31F80003 */  andi  $t8, $t7, 3
/* 031100 80030500 13000003 */  beqz  $t8, .L80030510_ovl0
/* 031104 80030504 00000000 */   nop   
/* 031108 80030508 1000001C */  b     .L8003057C_ovl0
/* 03110C 8003050C 2402FFFF */   li    $v0, -1
.L80030510_ovl0:
/* 031110 80030510 14C10005 */  bne   $a2, $at, .L80030528_ovl0
/* 031114 80030514 8FA4001C */   lw    $a0, 0x1c($sp)
/* 031118 80030518 24050040 */  li    $a1, 64
/* 03111C 8003051C 0C00C008 */  jal   osWritebackDCache
/* 031120 80030520 AFA60018 */   sw    $a2, 0x18($sp)
/* 031124 80030524 8FA60018 */  lw    $a2, 0x18($sp)
.L80030528_ovl0:
/* 031128 80030528 8FA4001C */  lw    $a0, 0x1c($sp)
/* 03112C 8003052C 0C00BFE8 */  jal   osVirtualToPhysical
/* 031130 80030530 AFA60018 */   sw    $a2, 0x18($sp)
/* 031134 80030534 8FA60018 */  lw    $a2, 0x18($sp)
/* 031138 80030538 3C19A480 */  lui   $t9, 0xa480
/* 03113C 8003053C AF220000 */  sw    $v0, ($t9)
/* 031140 80030540 14C00006 */  bnez  $a2, .L8003055C_ovl0
/* 031144 80030544 3C0A1FC0 */   lui   $t2, (0x1FC007C0 >> 16) # lui $t2, 0x1fc0
/* 031148 80030548 3C081FC0 */  lui   $t0, (0x1FC007C0 >> 16) # lui $t0, 0x1fc0
/* 03114C 8003054C 350807C0 */  ori   $t0, (0x1FC007C0 & 0xFFFF) # ori $t0, $t0, 0x7c0
/* 031150 80030550 3C09A480 */  lui   $t1, %hi(D_A4800004) # $t1, 0xa480
/* 031154 80030554 10000004 */  b     .L80030568_ovl0
/* 031158 80030558 AD280004 */   sw    $t0, %lo(D_A4800004)($t1)
.L8003055C_ovl0:
/* 03115C 8003055C 354A07C0 */  ori   $t2, (0x1FC007C0 & 0xFFFF) # ori $t2, $t2, 0x7c0
/* 031160 80030560 3C0BA480 */  lui   $t3, %hi(D_A4800010) # $t3, 0xa480
/* 031164 80030564 AD6A0010 */  sw    $t2, %lo(D_A4800010)($t3)
.L80030568_ovl0:
/* 031168 80030568 14C00003 */  bnez  $a2, .L80030578_ovl0
/* 03116C 8003056C 8FA4001C */   lw    $a0, 0x1c($sp)
/* 031170 80030570 0C00CEE4 */  jal   osInvalDCache
/* 031174 80030574 24050040 */   li    $a1, 64
.L80030578_ovl0:
/* 031178 80030578 00001025 */  move  $v0, $zero
.L8003057C_ovl0:
/* 03117C 8003057C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 031180 80030580 27BD0018 */  addiu $sp, $sp, 0x18
/* 031184 80030584 03E00008 */  jr    $ra
/* 031188 80030588 00000000 */   nop   

glabel func_8003058C
/* 03118C 8003058C 00000000 */  nop   
/* 031190 80030590 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 031194 80030594 AFBF0014 */  sw    $ra, 0x14($sp)
/* 031198 80030598 0C00D4D8 */  jal   __osDisableInt
/* 03119C 8003059C AFA40020 */   sw    $a0, 0x20($sp)
/* 0311A0 800305A0 3C0E8004 */  lui   $t6, %hi(__osPiTable) # $t6, 0x8004
/* 0311A4 800305A4 8DCEFBDC */  lw    $t6, %lo(__osPiTable)($t6)
/* 0311A8 800305A8 8FAF0020 */  lw    $t7, 0x20($sp)
/* 0311AC 800305AC AFA2001C */  sw    $v0, 0x1c($sp)
/* 0311B0 800305B0 3C018004 */  lui   $at, %hi(__osPiTable) # $at, 0x8004
/* 0311B4 800305B4 ADEE0000 */  sw    $t6, ($t7)
/* 0311B8 800305B8 8FB80020 */  lw    $t8, 0x20($sp)
/* 0311BC 800305BC 8FA4001C */  lw    $a0, 0x1c($sp)
/* 0311C0 800305C0 0C00D4E0 */  jal   __osRestoreInt
/* 0311C4 800305C4 AC38FBDC */   sw    $t8, %lo(__osPiTable)($at)
/* 0311C8 800305C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0311CC 800305CC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0311D0 800305D0 00001025 */  move  $v0, $zero
/* 0311D4 800305D4 03E00008 */  jr    $ra
/* 0311D8 800305D8 00000000 */   nop   

glabel func_800305DC
/* 0311DC 800305DC 00000000 */  nop   
/* 0311E0 800305E0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0311E4 800305E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0311E8 800305E8 AFA40028 */  sw    $a0, 0x28($sp)
/* 0311EC 800305EC 0C00D4D8 */  jal   __osDisableInt
/* 0311F0 800305F0 AFB00018 */   sw    $s0, 0x18($sp)
/* 0311F4 800305F4 93AE002B */  lbu   $t6, 0x2b($sp)
/* 0311F8 800305F8 00408025 */  move  $s0, $v0
/* 0311FC 800305FC 11C00007 */  beqz  $t6, .L8003061C_ovl0
/* 031200 80030600 00000000 */   nop   
/* 031204 80030604 3C0F8004 */  lui   $t7, %hi(__osViNext) # $t7, 0x8004
/* 031208 80030608 8DEFFD64 */  lw    $t7, %lo(__osViNext)($t7)
/* 03120C 8003060C 95F80000 */  lhu   $t8, ($t7)
/* 031210 80030610 37190020 */  ori   $t9, $t8, 0x20
/* 031214 80030614 10000007 */  b     .L80030634_ovl0
/* 031218 80030618 A5F90000 */   sh    $t9, ($t7)
.L8003061C_ovl0:
/* 03121C 8003061C 3C088004 */  lui   $t0, %hi(__osViNext) # $t0, 0x8004
/* 031220 80030620 8D08FD64 */  lw    $t0, %lo(__osViNext)($t0)
/* 031224 80030624 2401FFDF */  li    $at, -33
/* 031228 80030628 95090000 */  lhu   $t1, ($t0)
/* 03122C 8003062C 01215024 */  and   $t2, $t1, $at
/* 031230 80030630 A50A0000 */  sh    $t2, ($t0)
.L80030634_ovl0:
/* 031234 80030634 0C00D4E0 */  jal   __osRestoreInt
/* 031238 80030638 02002025 */   move  $a0, $s0
/* 03123C 8003063C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 031240 80030640 8FB00018 */  lw    $s0, 0x18($sp)
/* 031244 80030644 27BD0028 */  addiu $sp, $sp, 0x28
/* 031248 80030648 03E00008 */  jr    $ra
/* 03124C 8003064C 00000000 */   nop   

glabel __osSiRawReadIo
/* 031250 80030650 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 031254 80030654 AFBF0014 */  sw    $ra, 0x14($sp)
/* 031258 80030658 AFA40018 */  sw    $a0, 0x18($sp)
/* 03125C 8003065C 0C00CF58 */  jal   __osSiDeviceBusy
/* 031260 80030660 AFA5001C */   sw    $a1, 0x1c($sp)
/* 031264 80030664 10400003 */  beqz  $v0, .L80030674_ovl0
/* 031268 80030668 00000000 */   nop   
/* 03126C 8003066C 10000008 */  b     .L80030690_ovl0
/* 031270 80030670 2402FFFF */   li    $v0, -1
.L80030674_ovl0:
/* 031274 80030674 8FAE0018 */  lw    $t6, 0x18($sp)
/* 031278 80030678 3C01A000 */  lui   $at, 0xa000
/* 03127C 8003067C 8FB9001C */  lw    $t9, 0x1c($sp)
/* 031280 80030680 01C17825 */  or    $t7, $t6, $at
/* 031284 80030684 8DF80000 */  lw    $t8, ($t7)
/* 031288 80030688 00001025 */  move  $v0, $zero
/* 03128C 8003068C AF380000 */  sw    $t8, ($t9)
.L80030690_ovl0:
/* 031290 80030690 8FBF0014 */  lw    $ra, 0x14($sp)
/* 031294 80030694 27BD0018 */  addiu $sp, $sp, 0x18
/* 031298 80030698 03E00008 */  jr    $ra
/* 03129C 8003069C 00000000 */   nop   

glabel osSpTaskYield
/* 0312A0 800306A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0312A4 800306A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0312A8 800306A8 0C00E258 */  jal   __osSpSetStatus
/* 0312AC 800306AC 24040400 */   li    $a0, 1024
/* 0312B0 800306B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0312B4 800306B4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0312B8 800306B8 03E00008 */  jr    $ra
/* 0312BC 800306BC 00000000 */   nop   

glabel func_800306C0
/* 0312C0 800306C0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0312C4 800306C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0312C8 800306C8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0312CC 800306CC AFA50024 */  sw    $a1, 0x24($sp)
/* 0312D0 800306D0 AFA60028 */  sw    $a2, 0x28($sp)
/* 0312D4 800306D4 90AF0000 */  lbu   $t7, ($a1)
/* 0312D8 800306D8 90E20000 */  lbu   $v0, ($a3)
/* 0312DC 800306DC 00E08025 */  move  $s0, $a3
/* 0312E0 800306E0 00A07025 */  move  $t6, $a1
/* 0312E4 800306E4 104F000A */  beq   $v0, $t7, .L80030710_ovl0
/* 0312E8 800306E8 00003025 */   move  $a2, $zero
/* 0312EC 800306EC A0A20000 */  sb    $v0, ($a1)
/* 0312F0 800306F0 91C70000 */  lbu   $a3, ($t6)
/* 0312F4 800306F4 AFA40020 */  sw    $a0, 0x20($sp)
/* 0312F8 800306F8 0C00C761 */  jal   func_80031D84
/* 0312FC 800306FC 8FA50028 */   lw    $a1, 0x28($sp)
/* 031300 80030700 10400003 */  beqz  $v0, .L80030710_ovl0
/* 031304 80030704 8FA40020 */   lw    $a0, 0x20($sp)
/* 031308 80030708 1000001E */  b     .L80030784_ovl0
/* 03130C 8003070C 8FBF001C */   lw    $ra, 0x1c($sp)
.L80030710_ovl0:
/* 031310 80030710 92190001 */  lbu   $t9, 1($s0)
/* 031314 80030714 8FB80028 */  lw    $t8, 0x28($sp)
/* 031318 80030718 00194040 */  sll   $t0, $t9, 1
/* 03131C 8003071C 03084821 */  addu  $t1, $t8, $t0
/* 031320 80030720 95210000 */  lhu   $at, ($t1)
/* 031324 80030724 A6010000 */  sh    $at, ($s0)
/* 031328 80030728 8C8C0060 */  lw    $t4, 0x60($a0)
/* 03132C 8003072C 3023FFFF */  andi  $v1, $at, 0xffff
/* 031330 80030730 006C082A */  slt   $at, $v1, $t4
/* 031334 80030734 5420000C */  bnezl $at, .L80030768_ovl0
/* 031338 80030738 24010001 */   li    $at, 1
/* 03133C 8003073C 920D0000 */  lbu   $t5, ($s0)
/* 031340 80030740 908F0064 */  lbu   $t7, 0x64($a0)
/* 031344 80030744 01AF082A */  slt   $at, $t5, $t7
/* 031348 80030748 50200007 */  beql  $at, $zero, .L80030768_ovl0
/* 03134C 8003074C 24010001 */   li    $at, 1
/* 031350 80030750 92020001 */  lbu   $v0, 1($s0)
/* 031354 80030754 18400003 */  blez  $v0, .L80030764_ovl0
/* 031358 80030758 28410080 */   slti  $at, $v0, 0x80
/* 03135C 8003075C 14200008 */  bnez  $at, .L80030780_ovl0
/* 031360 80030760 00001025 */   move  $v0, $zero
.L80030764_ovl0:
/* 031364 80030764 24010001 */  li    $at, 1
.L80030768_ovl0:
/* 031368 80030768 14610003 */  bne   $v1, $at, .L80030778_ovl0
/* 03136C 8003076C 00000000 */   nop   
/* 031370 80030770 10000003 */  b     .L80030780_ovl0
/* 031374 80030774 24020005 */   li    $v0, 5
.L80030778_ovl0:
/* 031378 80030778 10000001 */  b     .L80030780_ovl0
/* 03137C 8003077C 24020003 */   li    $v0, 3
.L80030780_ovl0:
/* 031380 80030780 8FBF001C */  lw    $ra, 0x1c($sp)
.L80030784_ovl0:
/* 031384 80030784 8FB00018 */  lw    $s0, 0x18($sp)
/* 031388 80030788 27BD0020 */  addiu $sp, $sp, 0x20
/* 03138C 8003078C 03E00008 */  jr    $ra
/* 031390 80030790 00000000 */   nop   

glabel func_80030794
/* 031394 80030794 27BDFE90 */  addiu $sp, $sp, -0x170
/* 031398 80030798 AFBF002C */  sw    $ra, 0x2c($sp)
/* 03139C 8003079C AFB30028 */  sw    $s3, 0x28($sp)
/* 0313A0 800307A0 AFB20024 */  sw    $s2, 0x24($sp)
/* 0313A4 800307A4 AFB10020 */  sw    $s1, 0x20($sp)
/* 0313A8 800307A8 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0313AC 800307AC AFA60178 */  sw    $a2, 0x178($sp)
/* 0313B0 800307B0 8C8E0050 */  lw    $t6, 0x50($a0)
/* 0313B4 800307B4 30D000FF */  andi  $s0, $a2, 0xff
/* 0313B8 800307B8 00E08825 */  move  $s1, $a3
/* 0313BC 800307BC 00AE082A */  slt   $at, $a1, $t6
/* 0313C0 800307C0 10200003 */  beqz  $at, .L800307D0_ovl0
/* 0313C4 800307C4 00809025 */   move  $s2, $a0
/* 0313C8 800307C8 04A10003 */  bgez  $a1, .L800307D8_ovl0
/* 0313CC 800307CC 8FA20180 */   lw    $v0, 0x180($sp)
.L800307D0_ovl0:
/* 0313D0 800307D0 100000C5 */  b     .L80030AE8_ovl0
/* 0313D4 800307D4 24020005 */   li    $v0, 5
.L800307D8_ovl0:
/* 0313D8 800307D8 18400003 */  blez  $v0, .L800307E8_ovl0
/* 0313DC 800307DC 304F001F */   andi  $t7, $v0, 0x1f
/* 0313E0 800307E0 11E00003 */  beqz  $t7, .L800307F0_ovl0
/* 0313E4 800307E4 00000000 */   nop   
.L800307E8_ovl0:
/* 0313E8 800307E8 100000BF */  b     .L80030AE8_ovl0
/* 0313EC 800307EC 24020005 */   li    $v0, 5
.L800307F0_ovl0:
/* 0313F0 800307F0 06200003 */  bltz  $s1, .L80030800_ovl0
/* 0313F4 800307F4 3238001F */   andi  $t8, $s1, 0x1f
/* 0313F8 800307F8 53000004 */  beql  $t8, $zero, .L8003080C_ovl0
/* 0313FC 800307FC 8E590000 */   lw    $t9, ($s2)
.L80030800_ovl0:
/* 031400 80030800 100000B9 */  b     .L80030AE8_ovl0
/* 031404 80030804 24020005 */   li    $v0, 5
/* 031408 80030808 8E590000 */  lw    $t9, ($s2)
.L8003080C_ovl0:
/* 03140C 8003080C 02402025 */  move  $a0, $s2
/* 031410 80030810 33280001 */  andi  $t0, $t9, 1
/* 031414 80030814 15000003 */  bnez  $t0, .L80030824_ovl0
/* 031418 80030818 00000000 */   nop   
/* 03141C 8003081C 100000B2 */  b     .L80030AE8_ovl0
/* 031420 80030820 24020005 */   li    $v0, 5
.L80030824_ovl0:
/* 031424 80030824 0C00C72C */  jal   func_80031CB0
/* 031428 80030828 AFA50174 */   sw    $a1, 0x174($sp)
/* 03142C 8003082C 24010002 */  li    $at, 2
/* 031430 80030830 54410004 */  bnel  $v0, $at, .L80030844_ovl0
/* 031434 80030834 92490065 */   lbu   $t1, 0x65($s2)
/* 031438 80030838 100000AB */  b     .L80030AE8_ovl0
/* 03143C 8003083C 24020002 */   li    $v0, 2
/* 031440 80030840 92490065 */  lbu   $t1, 0x65($s2)
.L80030844_ovl0:
/* 031444 80030844 02402025 */  move  $a0, $s2
/* 031448 80030848 51200008 */  beql  $t1, $zero, .L8003086C_ovl0
/* 03144C 8003084C 8E4A005C */   lw    $t2, 0x5c($s2)
/* 031450 80030850 0C00D728 */  jal   func_80035CA0
/* 031454 80030854 00002825 */   move  $a1, $zero
/* 031458 80030858 50400004 */  beql  $v0, $zero, .L8003086C_ovl0
/* 03145C 8003085C 8E4A005C */   lw    $t2, 0x5c($s2)
/* 031460 80030860 100000A2 */  b     .L80030AEC_ovl0
/* 031464 80030864 8FBF002C */   lw    $ra, 0x2c($sp)
/* 031468 80030868 8E4A005C */  lw    $t2, 0x5c($s2)
.L8003086C_ovl0:
/* 03146C 8003086C 8FAB0174 */  lw    $t3, 0x174($sp)
/* 031470 80030870 8E440004 */  lw    $a0, 4($s2)
/* 031474 80030874 8E450008 */  lw    $a1, 8($s2)
/* 031478 80030878 014B3021 */  addu  $a2, $t2, $t3
/* 03147C 8003087C 30CCFFFF */  andi  $t4, $a2, 0xffff
/* 031480 80030880 01803025 */  move  $a2, $t4
/* 031484 80030884 0C00DCC8 */  jal   func_80037320
/* 031488 80030888 27A7014C */   addiu $a3, $sp, 0x14c
/* 03148C 8003088C 10400003 */  beqz  $v0, .L8003089C_ovl0
/* 031490 80030890 97AD0150 */   lhu   $t5, 0x150($sp)
/* 031494 80030894 10000095 */  b     .L80030AEC_ovl0
/* 031498 80030898 8FBF002C */   lw    $ra, 0x2c($sp)
.L8003089C_ovl0:
/* 03149C 8003089C 11A00003 */  beqz  $t5, .L800308AC_ovl0
/* 0314A0 800308A0 8FAE014C */   lw    $t6, 0x14c($sp)
/* 0314A4 800308A4 15C00003 */  bnez  $t6, .L800308B4_ovl0
/* 0314A8 800308A8 97AF0152 */   lhu   $t7, 0x152($sp)
.L800308AC_ovl0:
/* 0314AC 800308AC 1000008E */  b     .L80030AE8_ovl0
/* 0314B0 800308B0 24020005 */   li    $v0, 5
.L800308B4_ovl0:
/* 0314B4 800308B4 8E580060 */  lw    $t8, 0x60($s2)
/* 0314B8 800308B8 93B90152 */  lbu   $t9, 0x152($sp)
/* 0314BC 800308BC 97AA0152 */  lhu   $t2, 0x152($sp)
/* 0314C0 800308C0 01F8082A */  slt   $at, $t7, $t8
/* 0314C4 800308C4 5420000A */  bnezl $at, .L800308F0_ovl0
/* 0314C8 800308C8 24010001 */   li    $at, 1
/* 0314CC 800308CC 92480064 */  lbu   $t0, 0x64($s2)
/* 0314D0 800308D0 93A90153 */  lbu   $t1, 0x153($sp)
/* 0314D4 800308D4 0328082A */  slt   $at, $t9, $t0
/* 0314D8 800308D8 50200005 */  beql  $at, $zero, .L800308F0_ovl0
/* 0314DC 800308DC 24010001 */   li    $at, 1
/* 0314E0 800308E0 19200002 */  blez  $t1, .L800308EC_ovl0
/* 0314E4 800308E4 29210080 */   slti  $at, $t1, 0x80
/* 0314E8 800308E8 14200007 */  bnez  $at, .L80030908_ovl0
.L800308EC_ovl0:
/* 0314EC 800308EC 24010001 */   li    $at, 1
.L800308F0_ovl0:
/* 0314F0 800308F0 15410003 */  bne   $t2, $at, .L80030900_ovl0
/* 0314F4 800308F4 00000000 */   nop   
/* 0314F8 800308F8 1000007B */  b     .L80030AE8_ovl0
/* 0314FC 800308FC 24020005 */   li    $v0, 5
.L80030900_ovl0:
/* 031500 80030900 10000079 */  b     .L80030AE8_ovl0
/* 031504 80030904 24020003 */   li    $v0, 3
.L80030908_ovl0:
/* 031508 80030908 16000007 */  bnez  $s0, .L80030928_ovl0
/* 03150C 8003090C AFB00034 */   sw    $s0, 0x34($sp)
/* 031510 80030910 93AC0154 */  lbu   $t4, 0x154($sp)
/* 031514 80030914 318D0002 */  andi  $t5, $t4, 2
/* 031518 80030918 55A00004 */  bnezl $t5, .L8003092C_ovl0
/* 03151C 8003091C 97AF0152 */   lhu   $t7, 0x152($sp)
/* 031520 80030920 10000071 */  b     .L80030AE8_ovl0
/* 031524 80030924 24020006 */   li    $v0, 6
.L80030928_ovl0:
/* 031528 80030928 97AF0152 */  lhu   $t7, 0x152($sp)
.L8003092C_ovl0:
/* 03152C 8003092C 240E00FF */  li    $t6, 255
/* 031530 80030930 A3AE003B */  sb    $t6, 0x3b($sp)
/* 031534 80030934 06210003 */  bgez  $s1, .L80030944_ovl0
/* 031538 80030938 00111143 */   sra   $v0, $s1, 5
/* 03153C 8003093C 2621001F */  addiu $at, $s1, 0x1f
/* 031540 80030940 00011143 */  sra   $v0, $at, 5
.L80030944_ovl0:
/* 031544 80030944 28410008 */  slti  $at, $v0, 8
/* 031548 80030948 00408025 */  move  $s0, $v0
/* 03154C 8003094C 1420000D */  bnez  $at, .L80030984_ovl0
/* 031550 80030950 A7AF0048 */   sh    $t7, 0x48($sp)
/* 031554 80030954 02402025 */  move  $a0, $s2
.L80030958_ovl0:
/* 031558 80030958 27A5003B */  addiu $a1, $sp, 0x3b
/* 03155C 8003095C 27A6004C */  addiu $a2, $sp, 0x4c
/* 031560 80030960 0C00C1B0 */  jal   func_800306C0
/* 031564 80030964 27A70048 */   addiu $a3, $sp, 0x48
/* 031568 80030968 10400003 */  beqz  $v0, .L80030978_ovl0
/* 03156C 8003096C 2610FFF8 */   addiu $s0, $s0, -8
/* 031570 80030970 1000005E */  b     .L80030AEC_ovl0
/* 031574 80030974 8FBF002C */   lw    $ra, 0x2c($sp)
.L80030978_ovl0:
/* 031578 80030978 2A010008 */  slti  $at, $s0, 8
/* 03157C 8003097C 5020FFF6 */  beql  $at, $zero, .L80030958_ovl0
/* 031580 80030980 02402025 */   move  $a0, $s2
.L80030984_ovl0:
/* 031584 80030984 8FA20180 */  lw    $v0, 0x180($sp)
/* 031588 80030988 8FB10184 */  lw    $s1, 0x184($sp)
/* 03158C 8003098C 04410003 */  bgez  $v0, .L8003099C_ovl0
/* 031590 80030990 0002C143 */   sra   $t8, $v0, 5
/* 031594 80030994 2441001F */  addiu $at, $v0, 0x1f
/* 031598 80030998 0001C143 */  sra   $t8, $at, 5
.L8003099C_ovl0:
/* 03159C 8003099C 1B000031 */  blez  $t8, .L80030A64_ovl0
/* 0315A0 800309A0 03009825 */   move  $s3, $t8
.L800309A4_ovl0:
/* 0315A4 800309A4 24010008 */  li    $at, 8
/* 0315A8 800309A8 16010009 */  bne   $s0, $at, .L800309D0_ovl0
/* 0315AC 800309AC 02402025 */   move  $a0, $s2
/* 0315B0 800309B0 27A5003B */  addiu $a1, $sp, 0x3b
/* 0315B4 800309B4 27A6004C */  addiu $a2, $sp, 0x4c
/* 0315B8 800309B8 0C00C1B0 */  jal   func_800306C0
/* 0315BC 800309BC 27A70048 */   addiu $a3, $sp, 0x48
/* 0315C0 800309C0 10400003 */  beqz  $v0, .L800309D0_ovl0
/* 0315C4 800309C4 00008025 */   move  $s0, $zero
/* 0315C8 800309C8 10000048 */  b     .L80030AEC_ovl0
/* 0315CC 800309CC 8FBF002C */   lw    $ra, 0x2c($sp)
.L800309D0_ovl0:
/* 0315D0 800309D0 93B90048 */  lbu   $t9, 0x48($sp)
/* 0315D4 800309D4 92480065 */  lbu   $t0, 0x65($s2)
/* 0315D8 800309D8 02402025 */  move  $a0, $s2
/* 0315DC 800309DC 53280008 */  beql  $t9, $t0, .L80030A00_ovl0
/* 0315E0 800309E0 93A90049 */   lbu   $t1, 0x49($sp)
/* 0315E4 800309E4 0C00D728 */  jal   func_80035CA0
/* 0315E8 800309E8 03202825 */   move  $a1, $t9
/* 0315EC 800309EC 50400004 */  beql  $v0, $zero, .L80030A00_ovl0
/* 0315F0 800309F0 93A90049 */   lbu   $t1, 0x49($sp)
/* 0315F4 800309F4 1000003D */  b     .L80030AEC_ovl0
/* 0315F8 800309F8 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0315FC 800309FC 93A90049 */  lbu   $t1, 0x49($sp)
.L80030A00_ovl0:
/* 031600 80030A00 8FAC0034 */  lw    $t4, 0x34($sp)
/* 031604 80030A04 02203825 */  move  $a3, $s1
/* 031608 80030A08 000950C0 */  sll   $t2, $t1, 3
/* 03160C 80030A0C 01503021 */  addu  $a2, $t2, $s0
/* 031610 80030A10 30CBFFFF */  andi  $t3, $a2, 0xffff
/* 031614 80030A14 15800007 */  bnez  $t4, .L80030A34_ovl0
/* 031618 80030A18 01603025 */   move  $a2, $t3
/* 03161C 80030A1C 8E440004 */  lw    $a0, 4($s2)
/* 031620 80030A20 8E450008 */  lw    $a1, 8($s2)
/* 031624 80030A24 0C00DCC8 */  jal   func_80037320
/* 031628 80030A28 02203825 */   move  $a3, $s1
/* 03162C 80030A2C 10000006 */  b     .L80030A48_ovl0
/* 031630 80030A30 00401825 */   move  $v1, $v0
.L80030A34_ovl0:
/* 031634 80030A34 8E440004 */  lw    $a0, 4($s2)
/* 031638 80030A38 8E450008 */  lw    $a1, 8($s2)
/* 03163C 80030A3C 0C00DC34 */  jal   func_800370D0
/* 031640 80030A40 AFA00010 */   sw    $zero, 0x10($sp)
/* 031644 80030A44 00401825 */  move  $v1, $v0
.L80030A48_ovl0:
/* 031648 80030A48 10400003 */  beqz  $v0, .L80030A58_ovl0
/* 03164C 80030A4C 26310020 */   addiu $s1, $s1, 0x20
/* 031650 80030A50 10000025 */  b     .L80030AE8_ovl0
/* 031654 80030A54 00601025 */   move  $v0, $v1
.L80030A58_ovl0:
/* 031658 80030A58 2673FFFF */  addiu $s3, $s3, -1
/* 03165C 80030A5C 1660FFD1 */  bnez  $s3, .L800309A4_ovl0
/* 031660 80030A60 26100001 */   addiu $s0, $s0, 1
.L80030A64_ovl0:
/* 031664 80030A64 8FAD0034 */  lw    $t5, 0x34($sp)
/* 031668 80030A68 93A20154 */  lbu   $v0, 0x154($sp)
/* 03166C 80030A6C 24010001 */  li    $at, 1
/* 031670 80030A70 15A1001C */  bne   $t5, $at, .L80030AE4_ovl0
/* 031674 80030A74 304E0002 */   andi  $t6, $v0, 2
/* 031678 80030A78 15C0001A */  bnez  $t6, .L80030AE4_ovl0
/* 03167C 80030A7C 344F0002 */   ori   $t7, $v0, 2
/* 031680 80030A80 A3AF0154 */  sb    $t7, 0x154($sp)
/* 031684 80030A84 92580065 */  lbu   $t8, 0x65($s2)
/* 031688 80030A88 02402025 */  move  $a0, $s2
/* 03168C 80030A8C 53000008 */  beql  $t8, $zero, .L80030AB0_ovl0
/* 031690 80030A90 8E48005C */   lw    $t0, 0x5c($s2)
/* 031694 80030A94 0C00D728 */  jal   func_80035CA0
/* 031698 80030A98 00002825 */   move  $a1, $zero
/* 03169C 80030A9C 50400004 */  beql  $v0, $zero, .L80030AB0_ovl0
/* 0316A0 80030AA0 8E48005C */   lw    $t0, 0x5c($s2)
/* 0316A4 80030AA4 10000011 */  b     .L80030AEC_ovl0
/* 0316A8 80030AA8 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0316AC 80030AAC 8E48005C */  lw    $t0, 0x5c($s2)
.L80030AB0_ovl0:
/* 0316B0 80030AB0 8FB90174 */  lw    $t9, 0x174($sp)
/* 0316B4 80030AB4 8E440004 */  lw    $a0, 4($s2)
/* 0316B8 80030AB8 8E450008 */  lw    $a1, 8($s2)
/* 0316BC 80030ABC 01193021 */  addu  $a2, $t0, $t9
/* 0316C0 80030AC0 30C9FFFF */  andi  $t1, $a2, 0xffff
/* 0316C4 80030AC4 01203025 */  move  $a2, $t1
/* 0316C8 80030AC8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0316CC 80030ACC 0C00DC34 */  jal   func_800370D0
/* 0316D0 80030AD0 27A7014C */   addiu $a3, $sp, 0x14c
/* 0316D4 80030AD4 50400004 */  beql  $v0, $zero, .L80030AE8_ovl0
/* 0316D8 80030AD8 00001025 */   move  $v0, $zero
/* 0316DC 80030ADC 10000003 */  b     .L80030AEC_ovl0
/* 0316E0 80030AE0 8FBF002C */   lw    $ra, 0x2c($sp)
.L80030AE4_ovl0:
/* 0316E4 80030AE4 00001025 */  move  $v0, $zero
.L80030AE8_ovl0:
/* 0316E8 80030AE8 8FBF002C */  lw    $ra, 0x2c($sp)
.L80030AEC_ovl0:
/* 0316EC 80030AEC 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0316F0 80030AF0 8FB10020 */  lw    $s1, 0x20($sp)
/* 0316F4 80030AF4 8FB20024 */  lw    $s2, 0x24($sp)
/* 0316F8 80030AF8 8FB30028 */  lw    $s3, 0x28($sp)
/* 0316FC 80030AFC 03E00008 */  jr    $ra
/* 031700 80030B00 27BD0170 */   addiu $sp, $sp, 0x170

glabel func_80030B04
/* 031704 80030B04 00000000 */  nop   
/* 031708 80030B08 00000000 */  nop   
/* 03170C 80030B0C 00000000 */  nop   
/* 031710 80030B10 3C014780 */  li    $at, 0x47800000 # 65536.000000
/* 031714 80030B14 44810000 */  mtc1  $at, $f0
/* 031718 80030B18 00A01025 */  move  $v0, $a1
/* 03171C 80030B1C 24A30020 */  addiu $v1, $a1, 0x20
/* 031720 80030B20 00003025 */  move  $a2, $zero
/* 031724 80030B24 00803825 */  move  $a3, $a0
/* 031728 80030B28 240C0004 */  li    $t4, 4
/* 03172C 80030B2C 240B0002 */  li    $t3, 2
/* 031730 80030B30 3C0AFFFF */  lui   $t2, 0xffff
.L80030B34_ovl0:
/* 031734 80030B34 00002025 */  move  $a0, $zero
/* 031738 80030B38 00E04025 */  move  $t0, $a3
/* 03173C 80030B3C C50E0004 */  lwc1  $f14, 4($t0)
/* 031740 80030B40 24840001 */  addiu $a0, $a0, 1
/* 031744 80030B44 C5120000 */  lwc1  $f18, ($t0)
/* 031748 80030B48 46007402 */  mul.s $f16, $f14, $f0
/* 03174C 80030B4C 108B0019 */  beq   $a0, $t3, .L80030BB4_ovl0
/* 031750 80030B50 00000000 */   nop   
.L80030B54_ovl0:
/* 031754 80030B54 46009382 */  mul.s $f14, $f18, $f0
/* 031758 80030B58 24840001 */  addiu $a0, $a0, 1
/* 03175C 80030B5C 24420004 */  addiu $v0, $v0, 4
/* 031760 80030B60 24630004 */  addiu $v1, $v1, 4
/* 031764 80030B64 25080008 */  addiu $t0, $t0, 8
/* 031768 80030B68 4600830D */  trunc.w.s $f12, $f16
/* 03176C 80030B6C 4600738D */  trunc.w.s $f14, $f14
/* 031770 80030B70 44096000 */  mfc1  $t1, $f12
/* 031774 80030B74 44057000 */  mfc1  $a1, $f14
/* 031778 80030B78 0009CC03 */  sra   $t9, $t1, 0x10
/* 03177C 80030B7C 332DFFFF */  andi  $t5, $t9, 0xffff
/* 031780 80030B80 00AAC024 */  and   $t8, $a1, $t2
/* 031784 80030B84 030D7025 */  or    $t6, $t8, $t5
/* 031788 80030B88 00057C00 */  sll   $t7, $a1, 0x10
/* 03178C 80030B8C 01EAC824 */  and   $t9, $t7, $t2
/* 031790 80030B90 AC4EFFFC */  sw    $t6, -4($v0)
/* 031794 80030B94 3138FFFF */  andi  $t8, $t1, 0xffff
/* 031798 80030B98 03386825 */  or    $t5, $t9, $t8
/* 03179C 80030B9C AC6DFFFC */  sw    $t5, -4($v1)
/* 0317A0 80030BA0 C50E0004 */  lwc1  $f14, 4($t0)
/* 0317A4 80030BA4 C5120000 */  lwc1  $f18, ($t0)
/* 0317A8 80030BA8 46007402 */  mul.s $f16, $f14, $f0
/* 0317AC 80030BAC 148BFFE9 */  bne   $a0, $t3, .L80030B54_ovl0
/* 0317B0 80030BB0 00000000 */   nop   
.L80030BB4_ovl0:
/* 0317B4 80030BB4 46009382 */  mul.s $f14, $f18, $f0
/* 0317B8 80030BB8 25080008 */  addiu $t0, $t0, 8
/* 0317BC 80030BBC 24420004 */  addiu $v0, $v0, 4
/* 0317C0 80030BC0 24630004 */  addiu $v1, $v1, 4
/* 0317C4 80030BC4 4600830D */  trunc.w.s $f12, $f16
/* 0317C8 80030BC8 4600738D */  trunc.w.s $f14, $f14
/* 0317CC 80030BCC 44096000 */  mfc1  $t1, $f12
/* 0317D0 80030BD0 44057000 */  mfc1  $a1, $f14
/* 0317D4 80030BD4 0009CC03 */  sra   $t9, $t1, 0x10
/* 0317D8 80030BD8 332DFFFF */  andi  $t5, $t9, 0xffff
/* 0317DC 80030BDC 00AAC024 */  and   $t8, $a1, $t2
/* 0317E0 80030BE0 030D7025 */  or    $t6, $t8, $t5
/* 0317E4 80030BE4 00057C00 */  sll   $t7, $a1, 0x10
/* 0317E8 80030BE8 01EAC824 */  and   $t9, $t7, $t2
/* 0317EC 80030BEC 3138FFFF */  andi  $t8, $t1, 0xffff
/* 0317F0 80030BF0 AC4EFFFC */  sw    $t6, -4($v0)
/* 0317F4 80030BF4 03386825 */  or    $t5, $t9, $t8
/* 0317F8 80030BF8 AC6DFFFC */  sw    $t5, -4($v1)
/* 0317FC 80030BFC 24C60001 */  addiu $a2, $a2, 1
/* 031800 80030C00 14CCFFCC */  bne   $a2, $t4, .L80030B34_ovl0
/* 031804 80030C04 24E70010 */   addiu $a3, $a3, 0x10
/* 031808 80030C08 03E00008 */  jr    $ra
/* 03180C 80030C0C 00000000 */   nop   

glabel func_80030C10
/* 031810 80030C10 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 031814 80030C14 00801825 */  move  $v1, $a0
/* 031818 80030C18 44810000 */  mtc1  $at, $f0
/* 03181C 80030C1C 44801000 */  mtc1  $zero, $f2
/* 031820 80030C20 24040001 */  li    $a0, 1
/* 031824 80030C24 00001025 */  move  $v0, $zero
/* 031828 80030C28 24070004 */  li    $a3, 4
/* 03182C 80030C2C 24060003 */  li    $a2, 3
/* 031830 80030C30 24050002 */  li    $a1, 2
.L80030C34_ovl0:
/* 031834 80030C34 54400004 */  bnezl $v0, .L80030C48_ovl0
/* 031838 80030C38 E4620000 */   swc1  $f2, ($v1)
/* 03183C 80030C3C 10000002 */  b     .L80030C48_ovl0
/* 031840 80030C40 E4600000 */   swc1  $f0, ($v1)
/* 031844 80030C44 E4620000 */  swc1  $f2, ($v1)
.L80030C48_ovl0:
/* 031848 80030C48 54440004 */  bnel  $v0, $a0, .L80030C5C_ovl0
/* 03184C 80030C4C E4620004 */   swc1  $f2, 4($v1)
/* 031850 80030C50 10000002 */  b     .L80030C5C_ovl0
/* 031854 80030C54 E4600004 */   swc1  $f0, 4($v1)
/* 031858 80030C58 E4620004 */  swc1  $f2, 4($v1)
.L80030C5C_ovl0:
/* 03185C 80030C5C 54450004 */  bnel  $v0, $a1, .L80030C70_ovl0
/* 031860 80030C60 E4620008 */   swc1  $f2, 8($v1)
/* 031864 80030C64 10000002 */  b     .L80030C70_ovl0
/* 031868 80030C68 E4600008 */   swc1  $f0, 8($v1)
/* 03186C 80030C6C E4620008 */  swc1  $f2, 8($v1)
.L80030C70_ovl0:
/* 031870 80030C70 54460004 */  bnel  $v0, $a2, .L80030C84_ovl0
/* 031874 80030C74 E462000C */   swc1  $f2, 0xc($v1)
/* 031878 80030C78 10000002 */  b     .L80030C84_ovl0
/* 03187C 80030C7C E460000C */   swc1  $f0, 0xc($v1)
/* 031880 80030C80 E462000C */  swc1  $f2, 0xc($v1)
.L80030C84_ovl0:
/* 031884 80030C84 24420001 */  addiu $v0, $v0, 1
/* 031888 80030C88 1447FFEA */  bne   $v0, $a3, .L80030C34_ovl0
/* 03188C 80030C8C 24630010 */   addiu $v1, $v1, 0x10
/* 031890 80030C90 03E00008 */  jr    $ra
/* 031894 80030C94 00000000 */   nop   

glabel func_80030C98
/* 031898 80030C98 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 03189C 80030C9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0318A0 80030CA0 AFA40058 */  sw    $a0, 0x58($sp)
/* 0318A4 80030CA4 0C00C304 */  jal   func_80030C10
/* 0318A8 80030CA8 27A40018 */   addiu $a0, $sp, 0x18
/* 0318AC 80030CAC 27A40018 */  addiu $a0, $sp, 0x18
/* 0318B0 80030CB0 0C00C2C4 */  jal   func_80030B10
/* 0318B4 80030CB4 8FA50058 */   lw    $a1, 0x58($sp)
/* 0318B8 80030CB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0318BC 80030CBC 27BD0058 */  addiu $sp, $sp, 0x58
/* 0318C0 80030CC0 03E00008 */  jr    $ra
/* 0318C4 80030CC4 00000000 */   nop   

glabel func_80030CC8
/* 0318C8 80030CC8 3C013780 */  li    $at, 0x37800000 # 0.000015
/* 0318CC 80030CCC 44810000 */  mtc1  $at, $f0
/* 0318D0 80030CD0 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0318D4 80030CD4 00A01025 */  move  $v0, $a1
/* 0318D8 80030CD8 24A30020 */  addiu $v1, $a1, 0x20
/* 0318DC 80030CDC 00003025 */  move  $a2, $zero
/* 0318E0 80030CE0 00804025 */  move  $t0, $a0
/* 0318E4 80030CE4 240C0004 */  li    $t4, 4
/* 0318E8 80030CE8 240B0002 */  li    $t3, 2
/* 0318EC 80030CEC 3C0AFFFF */  lui   $t2, 0xffff
.L80030CF0_ovl0:
/* 0318F0 80030CF0 00002025 */  move  $a0, $zero
/* 0318F4 80030CF4 01004825 */  move  $t1, $t0
.L80030CF8_ovl0:
/* 0318F8 80030CF8 8C6E0000 */  lw    $t6, ($v1)
/* 0318FC 80030CFC 8C590000 */  lw    $t9, ($v0)
/* 031900 80030D00 24840001 */  addiu $a0, $a0, 1
/* 031904 80030D04 000E7C02 */  srl   $t7, $t6, 0x10
/* 031908 80030D08 31F8FFFF */  andi  $t8, $t7, 0xffff
/* 03190C 80030D0C 032A6824 */  and   $t5, $t9, $t2
/* 031910 80030D10 030D7025 */  or    $t6, $t8, $t5
/* 031914 80030D14 AFAE0004 */  sw    $t6, 4($sp)
/* 031918 80030D18 8C580000 */  lw    $t8, ($v0)
/* 03191C 80030D1C 8FA50004 */  lw    $a1, 4($sp)
/* 031920 80030D20 8C6F0000 */  lw    $t7, ($v1)
/* 031924 80030D24 00186C00 */  sll   $t5, $t8, 0x10
/* 031928 80030D28 44852000 */  mtc1  $a1, $f4
/* 03192C 80030D2C 01AA7024 */  and   $t6, $t5, $t2
/* 031930 80030D30 31F9FFFF */  andi  $t9, $t7, 0xffff
/* 031934 80030D34 032E3825 */  or    $a3, $t9, $t6
/* 031938 80030D38 468021A0 */  cvt.s.w $f6, $f4
/* 03193C 80030D3C 44875000 */  mtc1  $a3, $f10
/* 031940 80030D40 AFA70000 */  sw    $a3, ($sp)
/* 031944 80030D44 25290008 */  addiu $t1, $t1, 8
/* 031948 80030D48 24420004 */  addiu $v0, $v0, 4
/* 03194C 80030D4C 46805420 */  cvt.s.w $f16, $f10
/* 031950 80030D50 46003202 */  mul.s $f8, $f6, $f0
/* 031954 80030D54 24630004 */  addiu $v1, $v1, 4
/* 031958 80030D58 46008482 */  mul.s $f18, $f16, $f0
/* 03195C 80030D5C E528FFF8 */  swc1  $f8, -8($t1)
/* 031960 80030D60 148BFFE5 */  bne   $a0, $t3, .L80030CF8_ovl0
/* 031964 80030D64 E532FFFC */   swc1  $f18, -4($t1)
/* 031968 80030D68 24C60001 */  addiu $a2, $a2, 1
/* 03196C 80030D6C 14CCFFE0 */  bne   $a2, $t4, .L80030CF0_ovl0
/* 031970 80030D70 25080010 */   addiu $t0, $t0, 0x10
/* 031974 80030D74 03E00008 */  jr    $ra
/* 031978 80030D78 27BD0010 */   addiu $sp, $sp, 0x10

glabel func_80030D7C
/* 03197C 80030D7C 00000000 */  nop   
/* 031980 80030D80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 031984 80030D84 AFBF001C */  sw    $ra, 0x1c($sp)
/* 031988 80030D88 AFA40028 */  sw    $a0, 0x28($sp)
/* 03198C 80030D8C 0C00D4D8 */  jal   __osDisableInt
/* 031990 80030D90 AFB00018 */   sw    $s0, 0x18($sp)
/* 031994 80030D94 3C0F8004 */  lui   $t7, %hi(__osViNext) # $t7, 0x8004
/* 031998 80030D98 8DEFFD64 */  lw    $t7, %lo(__osViNext)($t7)
/* 03199C 80030D9C 8FAE0028 */  lw    $t6, 0x28($sp)
/* 0319A0 80030DA0 3C198004 */  lui   $t9, %hi(__osViNext) # $t9, 0x8004
/* 0319A4 80030DA4 24180001 */  li    $t8, 1
/* 0319A8 80030DA8 ADEE0008 */  sw    $t6, 8($t7)
/* 0319AC 80030DAC 8F39FD64 */  lw    $t9, %lo(__osViNext)($t9)
/* 0319B0 80030DB0 3C088004 */  lui   $t0, %hi(__osViNext) # $t0, 0x8004
/* 0319B4 80030DB4 00408025 */  move  $s0, $v0
/* 0319B8 80030DB8 A7380000 */  sh    $t8, ($t9)
/* 0319BC 80030DBC 8D08FD64 */  lw    $t0, %lo(__osViNext)($t0)
/* 0319C0 80030DC0 02002025 */  move  $a0, $s0
/* 0319C4 80030DC4 8D090008 */  lw    $t1, 8($t0)
/* 0319C8 80030DC8 8D2A0004 */  lw    $t2, 4($t1)
/* 0319CC 80030DCC 0C00D4E0 */  jal   __osRestoreInt
/* 0319D0 80030DD0 AD0A000C */   sw    $t2, 0xc($t0)
/* 0319D4 80030DD4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0319D8 80030DD8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0319DC 80030DDC 27BD0028 */  addiu $sp, $sp, 0x28
/* 0319E0 80030DE0 03E00008 */  jr    $ra
/* 0319E4 80030DE4 00000000 */   nop   

glabel func_80030DE8
/* 0319E8 80030DE8 00000000 */  nop   
/* 0319EC 80030DEC 00000000 */  nop   
/* 0319F0 80030DF0 27BDFD68 */  addiu $sp, $sp, -0x298
/* 0319F4 80030DF4 AFB70040 */  sw    $s7, 0x40($sp)
/* 0319F8 80030DF8 AFB6003C */  sw    $s6, 0x3c($sp)
/* 0319FC 80030DFC AFB50038 */  sw    $s5, 0x38($sp)
/* 031A00 80030E00 AFB30030 */  sw    $s3, 0x30($sp)
/* 031A04 80030E04 AFA5029C */  sw    $a1, 0x29c($sp)
/* 031A08 80030E08 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 031A0C 80030E0C 01C02825 */  move  $a1, $t6
/* 031A10 80030E10 00809825 */  move  $s3, $a0
/* 031A14 80030E14 AFBF0044 */  sw    $ra, 0x44($sp)
/* 031A18 80030E18 AFB40034 */  sw    $s4, 0x34($sp)
/* 031A1C 80030E1C AFB2002C */  sw    $s2, 0x2c($sp)
/* 031A20 80030E20 AFB10028 */  sw    $s1, 0x28($sp)
/* 031A24 80030E24 AFB00024 */  sw    $s0, 0x24($sp)
/* 031A28 80030E28 AFA702A4 */  sw    $a3, 0x2a4($sp)
/* 031A2C 80030E2C 0000B025 */  move  $s6, $zero
/* 031A30 80030E30 0000B825 */  move  $s7, $zero
/* 031A34 80030E34 11C00003 */  beqz  $t6, .L80030E44_ovl0
/* 031A38 80030E38 0000A825 */   move  $s5, $zero
/* 031A3C 80030E3C 14C00003 */  bnez  $a2, .L80030E4C_ovl0
/* 031A40 80030E40 8FB102AC */   lw    $s1, 0x2ac($sp)
.L80030E44_ovl0:
/* 031A44 80030E44 100000AC */  b     .L800310F8_ovl0
/* 031A48 80030E48 24020005 */   li    $v0, 5
.L80030E4C_ovl0:
/* 031A4C 80030E4C 263000FF */  addiu $s0, $s1, 0xff
/* 031A50 80030E50 8FB802A8 */  lw    $t8, 0x2a8($sp)
/* 031A54 80030E54 8FB902B0 */  lw    $t9, 0x2b0($sp)
/* 031A58 80030E58 06010003 */  bgez  $s0, .L80030E68_ovl0
/* 031A5C 80030E5C 00107A03 */   sra   $t7, $s0, 8
/* 031A60 80030E60 260100FF */  addiu $at, $s0, 0xff
/* 031A64 80030E64 00017A03 */  sra   $t7, $at, 8
.L80030E68_ovl0:
/* 031A68 80030E68 01E08025 */  move  $s0, $t7
/* 031A6C 80030E6C 01E0A025 */  move  $s4, $t7
/* 031A70 80030E70 02602025 */  move  $a0, $s3
/* 031A74 80030E74 8FA702A4 */  lw    $a3, 0x2a4($sp)
/* 031A78 80030E78 A7A5029E */  sh    $a1, 0x29e($sp)
/* 031A7C 80030E7C AFA602A0 */  sw    $a2, 0x2a0($sp)
/* 031A80 80030E80 AFB80010 */  sw    $t8, 0x10($sp)
/* 031A84 80030E84 0C00C834 */  jal   func_800320D0
/* 031A88 80030E88 AFB90014 */   sw    $t9, 0x14($sp)
/* 031A8C 80030E8C 10400005 */  beqz  $v0, .L80030EA4_ovl0
/* 031A90 80030E90 24010005 */   li    $at, 5
/* 031A94 80030E94 50410004 */  beql  $v0, $at, .L80030EA8_ovl0
/* 031A98 80030E98 8FA802B0 */   lw    $t0, 0x2b0($sp)
/* 031A9C 80030E9C 10000097 */  b     .L800310FC_ovl0
/* 031AA0 80030EA0 8FBF0044 */   lw    $ra, 0x44($sp)
.L80030EA4_ovl0:
/* 031AA4 80030EA4 8FA802B0 */  lw    $t0, 0x2b0($sp)
.L80030EA8_ovl0:
/* 031AA8 80030EA8 2401FFFF */  li    $at, -1
/* 031AAC 80030EAC 02602025 */  move  $a0, $s3
/* 031AB0 80030EB0 8D090000 */  lw    $t1, ($t0)
/* 031AB4 80030EB4 11210003 */  beq   $t1, $at, .L80030EC4_ovl0
/* 031AB8 80030EB8 00000000 */   nop   
/* 031ABC 80030EBC 1000008E */  b     .L800310F8_ovl0
/* 031AC0 80030EC0 24020009 */   li    $v0, 9
.L80030EC4_ovl0:
/* 031AC4 80030EC4 0C00C49C */  jal   func_80031270
/* 031AC8 80030EC8 27A50054 */   addiu $a1, $sp, 0x54
/* 031ACC 80030ECC 8FAA0054 */  lw    $t2, 0x54($sp)
/* 031AD0 80030ED0 0151082A */  slt   $at, $t2, $s1
/* 031AD4 80030ED4 10200003 */  beqz  $at, .L80030EE4_ovl0
/* 031AD8 80030ED8 00000000 */   nop   
/* 031ADC 80030EDC 10000086 */  b     .L800310F8_ovl0
/* 031AE0 80030EE0 24020007 */   li    $v0, 7
.L80030EE4_ovl0:
/* 031AE4 80030EE4 16000003 */  bnez  $s0, .L80030EF4_ovl0
/* 031AE8 80030EE8 02602025 */   move  $a0, $s3
/* 031AEC 80030EEC 10000082 */  b     .L800310F8_ovl0
/* 031AF0 80030EF0 24020005 */   li    $v0, 5
.L80030EF4_ovl0:
/* 031AF4 80030EF4 8FAB02B0 */  lw    $t3, 0x2b0($sp)
/* 031AF8 80030EF8 00002825 */  move  $a1, $zero
/* 031AFC 80030EFC 00003025 */  move  $a2, $zero
/* 031B00 80030F00 00003825 */  move  $a3, $zero
/* 031B04 80030F04 AFA00010 */  sw    $zero, 0x10($sp)
/* 031B08 80030F08 0C00C834 */  jal   func_800320D0
/* 031B0C 80030F0C AFAB0014 */   sw    $t3, 0x14($sp)
/* 031B10 80030F10 10400005 */  beqz  $v0, .L80030F28_ovl0
/* 031B14 80030F14 24010005 */   li    $at, 5
/* 031B18 80030F18 50410004 */  beql  $v0, $at, .L80030F2C_ovl0
/* 031B1C 80030F1C 8FAC02B0 */   lw    $t4, 0x2b0($sp)
/* 031B20 80030F20 10000076 */  b     .L800310FC_ovl0
/* 031B24 80030F24 8FBF0044 */   lw    $ra, 0x44($sp)
.L80030F28_ovl0:
/* 031B28 80030F28 8FAC02B0 */  lw    $t4, 0x2b0($sp)
.L80030F2C_ovl0:
/* 031B2C 80030F2C 2401FFFF */  li    $at, -1
/* 031B30 80030F30 8D8D0000 */  lw    $t5, ($t4)
/* 031B34 80030F34 55A10004 */  bnel  $t5, $at, .L80030F48_ovl0
/* 031B38 80030F38 926E0064 */   lbu   $t6, 0x64($s3)
/* 031B3C 80030F3C 1000006E */  b     .L800310F8_ovl0
/* 031B40 80030F40 24020008 */   li    $v0, 8
/* 031B44 80030F44 926E0064 */  lbu   $t6, 0x64($s3)
.L80030F48_ovl0:
/* 031B48 80030F48 00008025 */  move  $s0, $zero
/* 031B4C 80030F4C 27B20180 */  addiu $s2, $sp, 0x180
/* 031B50 80030F50 19C00049 */  blez  $t6, .L80031078_ovl0
/* 031B54 80030F54 27B10080 */   addiu $s1, $sp, 0x80
.L80030F58_ovl0:
/* 031B58 80030F58 02602025 */  move  $a0, $s3
/* 031B5C 80030F5C 02402825 */  move  $a1, $s2
/* 031B60 80030F60 00003025 */  move  $a2, $zero
/* 031B64 80030F64 0C00C761 */  jal   func_80031D84
/* 031B68 80030F68 320700FF */   andi  $a3, $s0, 0xff
/* 031B6C 80030F6C 10400003 */  beqz  $v0, .L80030F7C_ovl0
/* 031B70 80030F70 02602025 */   move  $a0, $s3
/* 031B74 80030F74 10000061 */  b     .L800310FC_ovl0
/* 031B78 80030F78 8FBF0044 */   lw    $ra, 0x44($sp)
.L80030F7C_ovl0:
/* 031B7C 80030F7C 27AF0290 */  addiu $t7, $sp, 0x290
/* 031B80 80030F80 27B8028C */  addiu $t8, $sp, 0x28c
/* 031B84 80030F84 AFB80018 */  sw    $t8, 0x18($sp)
/* 031B88 80030F88 AFAF0014 */  sw    $t7, 0x14($sp)
/* 031B8C 80030F8C 02402825 */  move  $a1, $s2
/* 031B90 80030F90 02803025 */  move  $a2, $s4
/* 031B94 80030F94 27A70294 */  addiu $a3, $sp, 0x294
/* 031B98 80030F98 0C00C449 */  jal   func_80031124
/* 031B9C 80030F9C AFB00010 */   sw    $s0, 0x10($sp)
/* 031BA0 80030FA0 10400003 */  beqz  $v0, .L80030FB0_ovl0
/* 031BA4 80030FA4 8FA30294 */   lw    $v1, 0x294($sp)
/* 031BA8 80030FA8 10000054 */  b     .L800310FC_ovl0
/* 031BAC 80030FAC 8FBF0044 */   lw    $ra, 0x44($sp)
.L80030FB0_ovl0:
/* 031BB0 80030FB0 2401FFFF */  li    $at, -1
/* 031BB4 80030FB4 5061002B */  beql  $v1, $at, .L80031064_ovl0
/* 031BB8 80030FB8 926B0064 */   lbu   $t3, 0x64($s3)
/* 031BBC 80030FBC 16A00004 */  bnez  $s5, .L80030FD0_ovl0
/* 031BC0 80030FC0 0016C840 */   sll   $t9, $s6, 1
/* 031BC4 80030FC4 A3A30051 */  sb    $v1, 0x51($sp)
/* 031BC8 80030FC8 1000000D */  b     .L80031000_ovl0
/* 031BCC 80030FCC A3B00050 */   sb    $s0, 0x50($sp)
.L80030FD0_ovl0:
/* 031BD0 80030FD0 02391021 */  addu  $v0, $s1, $t9
/* 031BD4 80030FD4 A0500000 */  sb    $s0, ($v0)
/* 031BD8 80030FD8 A0430001 */  sb    $v1, 1($v0)
/* 031BDC 80030FDC 02602025 */  move  $a0, $s3
/* 031BE0 80030FE0 02202825 */  move  $a1, $s1
/* 031BE4 80030FE4 24060001 */  li    $a2, 1
/* 031BE8 80030FE8 0C00C761 */  jal   func_80031D84
/* 031BEC 80030FEC 32E700FF */   andi  $a3, $s7, 0xff
/* 031BF0 80030FF0 50400004 */  beql  $v0, $zero, .L80031004_ovl0
/* 031BF4 80030FF4 8FA80290 */   lw    $t0, 0x290($sp)
/* 031BF8 80030FF8 10000040 */  b     .L800310FC_ovl0
/* 031BFC 80030FFC 8FBF0044 */   lw    $ra, 0x44($sp)
.L80031000_ovl0:
/* 031C00 80031000 8FA80290 */  lw    $t0, 0x290($sp)
.L80031004_ovl0:
/* 031C04 80031004 02402025 */  move  $a0, $s2
/* 031C08 80031008 02202825 */  move  $a1, $s1
/* 031C0C 8003100C 0114082A */  slt   $at, $t0, $s4
/* 031C10 80031010 5020000A */  beql  $at, $zero, .L8003103C_ovl0
/* 031C14 80031014 0000A025 */   move  $s4, $zero
/* 031C18 80031018 0C00D340 */  jal   bcopy
/* 031C1C 8003101C 24060100 */   li    $a2, 256
/* 031C20 80031020 8FA90290 */  lw    $t1, 0x290($sp)
/* 031C24 80031024 8FB6028C */  lw    $s6, 0x28c($sp)
/* 031C28 80031028 321700FF */  andi  $s7, $s0, 0xff
/* 031C2C 8003102C 26B50001 */  addiu $s5, $s5, 1
/* 031C30 80031030 1000000B */  b     .L80031060_ovl0
/* 031C34 80031034 0289A023 */   subu  $s4, $s4, $t1
/* 031C38 80031038 0000A025 */  move  $s4, $zero
.L8003103C_ovl0:
/* 031C3C 8003103C 02602025 */  move  $a0, $s3
/* 031C40 80031040 02402825 */  move  $a1, $s2
/* 031C44 80031044 24060001 */  li    $a2, 1
/* 031C48 80031048 0C00C761 */  jal   func_80031D84
/* 031C4C 8003104C 320700FF */   andi  $a3, $s0, 0xff
/* 031C50 80031050 10400009 */  beqz  $v0, .L80031078_ovl0
/* 031C54 80031054 00000000 */   nop   
/* 031C58 80031058 10000028 */  b     .L800310FC_ovl0
/* 031C5C 8003105C 8FBF0044 */   lw    $ra, 0x44($sp)
.L80031060_ovl0:
/* 031C60 80031060 926B0064 */  lbu   $t3, 0x64($s3)
.L80031064_ovl0:
/* 031C64 80031064 26100001 */  addiu $s0, $s0, 1
/* 031C68 80031068 320A00FF */  andi  $t2, $s0, 0xff
/* 031C6C 8003106C 014B082A */  slt   $at, $t2, $t3
/* 031C70 80031070 1420FFB9 */  bnez  $at, .L80030F58_ovl0
/* 031C74 80031074 01408025 */   move  $s0, $t2
.L80031078_ovl0:
/* 031C78 80031078 1E800004 */  bgtz  $s4, .L8003108C_ovl0
/* 031C7C 8003107C 8FA30294 */   lw    $v1, 0x294($sp)
/* 031C80 80031080 2401FFFF */  li    $at, -1
/* 031C84 80031084 14610003 */  bne   $v1, $at, .L80031094_ovl0
/* 031C88 80031088 97AC0050 */   lhu   $t4, 0x50($sp)
.L8003108C_ovl0:
/* 031C8C 8003108C 1000001A */  b     .L800310F8_ovl0
/* 031C90 80031090 24020003 */   li    $v0, 3
.L80031094_ovl0:
/* 031C94 80031094 97AD029E */  lhu   $t5, 0x29e($sp)
/* 031C98 80031098 8FAE02A0 */  lw    $t6, 0x2a0($sp)
/* 031C9C 8003109C A7AC0066 */  sh    $t4, 0x66($sp)
/* 031CA0 800310A0 A7A0006A */  sh    $zero, 0x6a($sp)
/* 031CA4 800310A4 8FA402A4 */  lw    $a0, 0x2a4($sp)
/* 031CA8 800310A8 27A50070 */  addiu $a1, $sp, 0x70
/* 031CAC 800310AC 24060010 */  li    $a2, 16
/* 031CB0 800310B0 A7AD0064 */  sh    $t5, 0x64($sp)
/* 031CB4 800310B4 0C00D340 */  jal   bcopy
/* 031CB8 800310B8 AFAE0060 */   sw    $t6, 0x60($sp)
/* 031CBC 800310BC 8FA402A8 */  lw    $a0, 0x2a8($sp)
/* 031CC0 800310C0 27A5006C */  addiu $a1, $sp, 0x6c
/* 031CC4 800310C4 0C00D340 */  jal   bcopy
/* 031CC8 800310C8 24060004 */   li    $a2, 4
/* 031CCC 800310CC 8FAF02B0 */  lw    $t7, 0x2b0($sp)
/* 031CD0 800310D0 8E79005C */  lw    $t9, 0x5c($s3)
/* 031CD4 800310D4 8E640004 */  lw    $a0, 4($s3)
/* 031CD8 800310D8 8DF80000 */  lw    $t8, ($t7)
/* 031CDC 800310DC 8E650008 */  lw    $a1, 8($s3)
/* 031CE0 800310E0 AFA00010 */  sw    $zero, 0x10($sp)
/* 031CE4 800310E4 03193021 */  addu  $a2, $t8, $t9
/* 031CE8 800310E8 30C8FFFF */  andi  $t0, $a2, 0xffff
/* 031CEC 800310EC 01003025 */  move  $a2, $t0
/* 031CF0 800310F0 0C00DC34 */  jal   func_800370D0
/* 031CF4 800310F4 27A70060 */   addiu $a3, $sp, 0x60
.L800310F8_ovl0:
/* 031CF8 800310F8 8FBF0044 */  lw    $ra, 0x44($sp)
.L800310FC_ovl0:
/* 031CFC 800310FC 8FB00024 */  lw    $s0, 0x24($sp)
/* 031D00 80031100 8FB10028 */  lw    $s1, 0x28($sp)
/* 031D04 80031104 8FB2002C */  lw    $s2, 0x2c($sp)
/* 031D08 80031108 8FB30030 */  lw    $s3, 0x30($sp)
/* 031D0C 8003110C 8FB40034 */  lw    $s4, 0x34($sp)
/* 031D10 80031110 8FB50038 */  lw    $s5, 0x38($sp)
/* 031D14 80031114 8FB6003C */  lw    $s6, 0x3c($sp)
/* 031D18 80031118 8FB70040 */  lw    $s7, 0x40($sp)
/* 031D1C 8003111C 03E00008 */  jr    $ra
/* 031D20 80031120 27BD0298 */   addiu $sp, $sp, 0x298

glabel func_80031124
/* 031D24 80031124 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 031D28 80031128 AFB00008 */  sw    $s0, 8($sp)
/* 031D2C 8003112C 93B00023 */  lbu   $s0, 0x23($sp)
/* 031D30 80031130 AFB1000C */  sw    $s1, 0xc($sp)
/* 031D34 80031134 00C08825 */  move  $s1, $a2
/* 031D38 80031138 1A000003 */  blez  $s0, .L80031148_ovl0
/* 031D3C 8003113C 240B0080 */   li    $t3, 128
/* 031D40 80031140 10000002 */  b     .L8003114C_ovl0
/* 031D44 80031144 24020001 */   li    $v0, 1
.L80031148_ovl0:
/* 031D48 80031148 8C820060 */  lw    $v0, 0x60($a0)
.L8003114C_ovl0:
/* 031D4C 8003114C 28410080 */  slti  $at, $v0, 0x80
/* 031D50 80031150 1020000A */  beqz  $at, .L8003117C_ovl0
/* 031D54 80031154 00401825 */   move  $v1, $v0
/* 031D58 80031158 00027040 */  sll   $t6, $v0, 1
/* 031D5C 8003115C 00AE1021 */  addu  $v0, $a1, $t6
/* 031D60 80031160 240A0003 */  li    $t2, 3
.L80031164_ovl0:
/* 031D64 80031164 944F0000 */  lhu   $t7, ($v0)
/* 031D68 80031168 514F0005 */  beql  $t2, $t7, .L80031180_ovl0
/* 031D6C 8003116C 240B0080 */   li    $t3, 128
/* 031D70 80031170 24630001 */  addiu $v1, $v1, 1
/* 031D74 80031174 146BFFFB */  bne   $v1, $t3, .L80031164_ovl0
/* 031D78 80031178 24420002 */   addiu $v0, $v0, 2
.L8003117C_ovl0:
/* 031D7C 8003117C 240B0080 */  li    $t3, 128
.L80031180_ovl0:
/* 031D80 80031180 146B0005 */  bne   $v1, $t3, .L80031198_ovl0
/* 031D84 80031184 240A0003 */   li    $t2, 3
/* 031D88 80031188 2418FFFF */  li    $t8, -1
/* 031D8C 8003118C ACF80000 */  sw    $t8, ($a3)
/* 031D90 80031190 10000030 */  b     .L80031254_ovl0
/* 031D94 80031194 00001025 */   move  $v0, $zero
.L80031198_ovl0:
/* 031D98 80031198 8FA60024 */  lw    $a2, 0x24($sp)
/* 031D9C 8003119C 00602025 */  move  $a0, $v1
/* 031DA0 800311A0 24190001 */  li    $t9, 1
/* 031DA4 800311A4 00604025 */  move  $t0, $v1
/* 031DA8 800311A8 2A210002 */  slti  $at, $s1, 2
/* 031DAC 800311AC 24630001 */  addiu $v1, $v1, 1
/* 031DB0 800311B0 14200018 */  bnez  $at, .L80031214_ovl0
/* 031DB4 800311B4 ACD90000 */   sw    $t9, ($a2)
/* 031DB8 800311B8 28610080 */  slti  $at, $v1, 0x80
/* 031DBC 800311BC 10200015 */  beqz  $at, .L80031214_ovl0
/* 031DC0 800311C0 00036040 */   sll   $t4, $v1, 1
/* 031DC4 800311C4 00AC1021 */  addu  $v0, $a1, $t4
/* 031DC8 800311C8 944D0000 */  lhu   $t5, ($v0)
.L800311CC_ovl0:
/* 031DCC 800311CC 00087040 */  sll   $t6, $t0, 1
/* 031DD0 800311D0 00AE4821 */  addu  $t1, $a1, $t6
/* 031DD4 800311D4 554D0008 */  bnel  $t2, $t5, .L800311F8_ovl0
/* 031DD8 800311D8 8CD90000 */   lw    $t9, ($a2)
/* 031DDC 800311DC A1300000 */  sb    $s0, ($t1)
/* 031DE0 800311E0 A1230001 */  sb    $v1, 1($t1)
/* 031DE4 800311E4 8CCF0000 */  lw    $t7, ($a2)
/* 031DE8 800311E8 00604025 */  move  $t0, $v1
/* 031DEC 800311EC 25F80001 */  addiu $t8, $t7, 1
/* 031DF0 800311F0 ACD80000 */  sw    $t8, ($a2)
/* 031DF4 800311F4 8CD90000 */  lw    $t9, ($a2)
.L800311F8_ovl0:
/* 031DF8 800311F8 24630001 */  addiu $v1, $v1, 1
/* 031DFC 800311FC 24420002 */  addiu $v0, $v0, 2
/* 031E00 80031200 0331082A */  slt   $at, $t9, $s1
/* 031E04 80031204 10200003 */  beqz  $at, .L80031214_ovl0
/* 031E08 80031208 28610080 */   slti  $at, $v1, 0x80
/* 031E0C 8003120C 5420FFEF */  bnezl $at, .L800311CC_ovl0
/* 031E10 80031210 944D0000 */   lhu   $t5, ($v0)
.L80031214_ovl0:
/* 031E14 80031214 146B0008 */  bne   $v1, $t3, .L80031238_ovl0
/* 031E18 80031218 ACE40000 */   sw    $a0, ($a3)
/* 031E1C 8003121C 8CCC0000 */  lw    $t4, ($a2)
/* 031E20 80031220 8FAD0028 */  lw    $t5, 0x28($sp)
/* 031E24 80031224 0191082A */  slt   $at, $t4, $s1
/* 031E28 80031228 50200004 */  beql  $at, $zero, .L8003123C_ovl0
/* 031E2C 8003122C 00087840 */   sll   $t7, $t0, 1
/* 031E30 80031230 10000007 */  b     .L80031250_ovl0
/* 031E34 80031234 ADA80000 */   sw    $t0, ($t5)
.L80031238_ovl0:
/* 031E38 80031238 00087840 */  sll   $t7, $t0, 1
.L8003123C_ovl0:
/* 031E3C 8003123C 00AFC021 */  addu  $t8, $a1, $t7
/* 031E40 80031240 240E0001 */  li    $t6, 1
/* 031E44 80031244 A70E0000 */  sh    $t6, ($t8)
/* 031E48 80031248 8FB90028 */  lw    $t9, 0x28($sp)
/* 031E4C 8003124C AF200000 */  sw    $zero, ($t9)
.L80031250_ovl0:
/* 031E50 80031250 00001025 */  move  $v0, $zero
.L80031254_ovl0:
/* 031E54 80031254 8FB00008 */  lw    $s0, 8($sp)
/* 031E58 80031258 8FB1000C */  lw    $s1, 0xc($sp)
/* 031E5C 8003125C 03E00008 */  jr    $ra
/* 031E60 80031260 27BD0010 */   addiu $sp, $sp, 0x10

glabel func_80031264
/* 031E64 80031264 00000000 */  nop   
/* 031E68 80031268 00000000 */  nop   
/* 031E6C 8003126C 00000000 */  nop   
/* 031E70 80031270 27BDFEB0 */  addiu $sp, $sp, -0x150
/* 031E74 80031274 AFBF002C */  sw    $ra, 0x2c($sp)
/* 031E78 80031278 AFB50028 */  sw    $s5, 0x28($sp)
/* 031E7C 8003127C AFB40024 */  sw    $s4, 0x24($sp)
/* 031E80 80031280 AFB30020 */  sw    $s3, 0x20($sp)
/* 031E84 80031284 AFB2001C */  sw    $s2, 0x1c($sp)
/* 031E88 80031288 AFB10018 */  sw    $s1, 0x18($sp)
/* 031E8C 8003128C AFB00014 */  sw    $s0, 0x14($sp)
/* 031E90 80031290 AFA50154 */  sw    $a1, 0x154($sp)
/* 031E94 80031294 8C8E0000 */  lw    $t6, ($a0)
/* 031E98 80031298 0080A025 */  move  $s4, $a0
/* 031E9C 8003129C 00008025 */  move  $s0, $zero
/* 031EA0 800312A0 31CF0001 */  andi  $t7, $t6, 1
/* 031EA4 800312A4 15E00003 */  bnez  $t7, .L800312B4_ovl0
/* 031EA8 800312A8 00000000 */   nop   
/* 031EAC 800312AC 1000004D */  b     .L800313E4_ovl0
/* 031EB0 800312B0 24020005 */   li    $v0, 5
.L800312B4_ovl0:
/* 031EB4 800312B4 0C00C72C */  jal   func_80031CB0
/* 031EB8 800312B8 02802025 */   move  $a0, $s4
/* 031EBC 800312BC 50400004 */  beql  $v0, $zero, .L800312D0_ovl0
/* 031EC0 800312C0 92980064 */   lbu   $t8, 0x64($s4)
/* 031EC4 800312C4 10000048 */  b     .L800313E8_ovl0
/* 031EC8 800312C8 8FBF002C */   lw    $ra, 0x2c($sp)
/* 031ECC 800312CC 92980064 */  lbu   $t8, 0x64($s4)
.L800312D0_ovl0:
/* 031ED0 800312D0 00009825 */  move  $s3, $zero
/* 031ED4 800312D4 24150080 */  li    $s5, 128
/* 031ED8 800312D8 1B00003E */  blez  $t8, .L800313D4_ovl0
/* 031EDC 800312DC 27B20148 */   addiu $s2, $sp, 0x148
/* 031EE0 800312E0 24110003 */  li    $s1, 3
.L800312E4_ovl0:
/* 031EE4 800312E4 02802025 */  move  $a0, $s4
/* 031EE8 800312E8 27A50048 */  addiu $a1, $sp, 0x48
/* 031EEC 800312EC 00003025 */  move  $a2, $zero
/* 031EF0 800312F0 0C00C761 */  jal   func_80031D84
/* 031EF4 800312F4 326700FF */   andi  $a3, $s3, 0xff
/* 031EF8 800312F8 10400003 */  beqz  $v0, .L80031308_ovl0
/* 031EFC 800312FC 00000000 */   nop   
/* 031F00 80031300 10000039 */  b     .L800313E8_ovl0
/* 031F04 80031304 8FBF002C */   lw    $ra, 0x2c($sp)
.L80031308_ovl0:
/* 031F08 80031308 5A600004 */  blezl $s3, .L8003131C_ovl0
/* 031F0C 8003130C 8E850060 */   lw    $a1, 0x60($s4)
/* 031F10 80031310 10000002 */  b     .L8003131C_ovl0
/* 031F14 80031314 24050001 */   li    $a1, 1
/* 031F18 80031318 8E850060 */  lw    $a1, 0x60($s4)
.L8003131C_ovl0:
/* 031F1C 8003131C 28A10080 */  slti  $at, $a1, 0x80
/* 031F20 80031320 10200026 */  beqz  $at, .L800313BC_ovl0
/* 031F24 80031324 00A01825 */   move  $v1, $a1
/* 031F28 80031328 02A53023 */  subu  $a2, $s5, $a1
/* 031F2C 8003132C 30D90003 */  andi  $t9, $a2, 3
/* 031F30 80031330 1320000C */  beqz  $t9, .L80031364_ovl0
/* 031F34 80031334 03252021 */   addu  $a0, $t9, $a1
/* 031F38 80031338 00054040 */  sll   $t0, $a1, 1
/* 031F3C 8003133C 27A90048 */  addiu $t1, $sp, 0x48
/* 031F40 80031340 01091021 */  addu  $v0, $t0, $t1
.L80031344_ovl0:
/* 031F44 80031344 944A0000 */  lhu   $t2, ($v0)
/* 031F48 80031348 24630001 */  addiu $v1, $v1, 1
/* 031F4C 8003134C 162A0002 */  bne   $s1, $t2, .L80031358_ovl0
/* 031F50 80031350 00000000 */   nop   
/* 031F54 80031354 26100001 */  addiu $s0, $s0, 1
.L80031358_ovl0:
/* 031F58 80031358 1483FFFA */  bne   $a0, $v1, .L80031344_ovl0
/* 031F5C 8003135C 24420002 */   addiu $v0, $v0, 2
/* 031F60 80031360 10750016 */  beq   $v1, $s5, .L800313BC_ovl0
.L80031364_ovl0:
/* 031F64 80031364 00035840 */   sll   $t3, $v1, 1
/* 031F68 80031368 27AC0048 */  addiu $t4, $sp, 0x48
/* 031F6C 8003136C 016C1021 */  addu  $v0, $t3, $t4
/* 031F70 80031370 944D0000 */  lhu   $t5, ($v0)
.L80031374_ovl0:
/* 031F74 80031374 562D0003 */  bnel  $s1, $t5, .L80031384_ovl0
/* 031F78 80031378 944E0002 */   lhu   $t6, 2($v0)
/* 031F7C 8003137C 26100001 */  addiu $s0, $s0, 1
/* 031F80 80031380 944E0002 */  lhu   $t6, 2($v0)
.L80031384_ovl0:
/* 031F84 80031384 562E0003 */  bnel  $s1, $t6, .L80031394_ovl0
/* 031F88 80031388 944F0004 */   lhu   $t7, 4($v0)
/* 031F8C 8003138C 26100001 */  addiu $s0, $s0, 1
/* 031F90 80031390 944F0004 */  lhu   $t7, 4($v0)
.L80031394_ovl0:
/* 031F94 80031394 562F0003 */  bnel  $s1, $t7, .L800313A4_ovl0
/* 031F98 80031398 94580006 */   lhu   $t8, 6($v0)
/* 031F9C 8003139C 26100001 */  addiu $s0, $s0, 1
/* 031FA0 800313A0 94580006 */  lhu   $t8, 6($v0)
.L800313A4_ovl0:
/* 031FA4 800313A4 24420008 */  addiu $v0, $v0, 8
/* 031FA8 800313A8 16380002 */  bne   $s1, $t8, .L800313B4_ovl0
/* 031FAC 800313AC 00000000 */   nop   
/* 031FB0 800313B0 26100001 */  addiu $s0, $s0, 1
.L800313B4_ovl0:
/* 031FB4 800313B4 5452FFEF */  bnel  $v0, $s2, .L80031374_ovl0
/* 031FB8 800313B8 944D0000 */   lhu   $t5, ($v0)
.L800313BC_ovl0:
/* 031FBC 800313BC 92880064 */  lbu   $t0, 0x64($s4)
/* 031FC0 800313C0 26730001 */  addiu $s3, $s3, 1
/* 031FC4 800313C4 327900FF */  andi  $t9, $s3, 0xff
/* 031FC8 800313C8 0328082A */  slt   $at, $t9, $t0
/* 031FCC 800313CC 1420FFC5 */  bnez  $at, .L800312E4_ovl0
/* 031FD0 800313D0 03209825 */   move  $s3, $t9
.L800313D4_ovl0:
/* 031FD4 800313D4 8FAA0154 */  lw    $t2, 0x154($sp)
/* 031FD8 800313D8 00104A00 */  sll   $t1, $s0, 8
/* 031FDC 800313DC 00001025 */  move  $v0, $zero
/* 031FE0 800313E0 AD490000 */  sw    $t1, ($t2)
.L800313E4_ovl0:
/* 031FE4 800313E4 8FBF002C */  lw    $ra, 0x2c($sp)
.L800313E8_ovl0:
/* 031FE8 800313E8 8FB00014 */  lw    $s0, 0x14($sp)
/* 031FEC 800313EC 8FB10018 */  lw    $s1, 0x18($sp)
/* 031FF0 800313F0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 031FF4 800313F4 8FB30020 */  lw    $s3, 0x20($sp)
/* 031FF8 800313F8 8FB40024 */  lw    $s4, 0x24($sp)
/* 031FFC 800313FC 8FB50028 */  lw    $s5, 0x28($sp)
/* 032000 80031400 03E00008 */  jr    $ra
/* 032004 80031404 27BD0150 */   addiu $sp, $sp, 0x150

glabel func_80031408
/* 032008 80031408 00000000 */  nop   
/* 03200C 8003140C 00000000 */  nop   
/* 032010 80031410 40085000 */  mfc0  $t0, $10
/* 032014 80031414 310900FF */  andi  $t1, $t0, 0xff
/* 032018 80031418 2401E000 */  li    $at, -8192
/* 03201C 8003141C 00815024 */  and   $t2, $a0, $at
/* 032020 80031420 012A4825 */  or    $t1, $t1, $t2
/* 032024 80031424 40895000 */  mtc0  $t1, $10
/* 032028 80031428 00000000 */  nop   
/* 03202C 8003142C 00000000 */  nop   
/* 032030 80031430 00000000 */  nop   
/* 032034 80031434 42000008 */  tlbp  
/* 032038 80031438 00000000 */  nop   
/* 03203C 8003143C 00000000 */  nop   
/* 032040 80031440 400B0000 */  mfc0  $t3, $0
/* 032044 80031444 3C018000 */  lui   $at, 0x8000
/* 032048 80031448 01615824 */  and   $t3, $t3, $at
/* 03204C 8003144C 1560001A */  bnez  $t3, .L800314B8_ovl0
/* 032050 80031450 00000000 */   nop   
/* 032054 80031454 42000001 */  tlbr  
/* 032058 80031458 00000000 */  nop   
/* 03205C 8003145C 00000000 */  nop   
/* 032060 80031460 00000000 */  nop   
/* 032064 80031464 400B2800 */  mfc0  $t3, $5
/* 032068 80031468 216B2000 */  addi  $t3, $t3, 0x2000
/* 03206C 8003146C 000B5842 */  srl   $t3, $t3, 1
/* 032070 80031470 01646024 */  and   $t4, $t3, $a0
/* 032074 80031474 15800004 */  bnez  $t4, .L80031488_ovl0
/* 032078 80031478 216BFFFF */   addi  $t3, $t3, -1
/* 03207C 8003147C 40021000 */  mfc0  $v0, $2
/* 032080 80031480 10000002 */  b     .L8003148C_ovl0
/* 032084 80031484 00000000 */   nop   
.L80031488_ovl0:
/* 032088 80031488 40021800 */  mfc0  $v0, $3
.L8003148C_ovl0:
/* 03208C 8003148C 304D0002 */  andi  $t5, $v0, 2
/* 032090 80031490 11A00009 */  beqz  $t5, .L800314B8_ovl0
/* 032094 80031494 00000000 */   nop   
/* 032098 80031498 3C013FFF */  lui   $at, (0x3FFFFFC0 >> 16) # lui $at, 0x3fff
/* 03209C 8003149C 3421FFC0 */  ori   $at, (0x3FFFFFC0 & 0xFFFF) # ori $at, $at, 0xffc0
/* 0320A0 800314A0 00411024 */  and   $v0, $v0, $at
/* 0320A4 800314A4 00021180 */  sll   $v0, $v0, 6
/* 0320A8 800314A8 008B6824 */  and   $t5, $a0, $t3
/* 0320AC 800314AC 004D1020 */  add   $v0, $v0, $t5
/* 0320B0 800314B0 10000002 */  b     .L800314BC_ovl0
/* 0320B4 800314B4 00000000 */   nop   
.L800314B8_ovl0:
/* 0320B8 800314B8 2402FFFF */  li    $v0, -1
.L800314BC_ovl0:
/* 0320BC 800314BC 40885000 */  mtc0  $t0, $10
/* 0320C0 800314C0 03E00008 */  jr    $ra
/* 0320C4 800314C4 00000000 */   nop   

glabel func_800314C8
/* 0320C8 800314C8 00000000 */  nop   
/* 0320CC 800314CC 00000000 */  nop   
/* 0320D0 800314D0 40024800 */  mfc0  $v0, $9
/* 0320D4 800314D4 03E00008 */  jr    $ra
/* 0320D8 800314D8 00000000 */   nop   

glabel func_800314DC
/* 0320DC 800314DC 00000000 */  nop   
/* 0320E0 800314E0 00001825 */  move  $v1, $zero
/* 0320E4 800314E4 00801025 */  move  $v0, $a0
/* 0320E8 800314E8 18A00016 */  blez  $a1, .L80031544_ovl0
/* 0320EC 800314EC 00003025 */   move  $a2, $zero
/* 0320F0 800314F0 30A70003 */  andi  $a3, $a1, 3
/* 0320F4 800314F4 10E00008 */  beqz  $a3, .L80031518_ovl0
/* 0320F8 800314F8 00E02025 */   move  $a0, $a3
.L800314FC_ovl0:
/* 0320FC 800314FC 904E0000 */  lbu   $t6, ($v0)
/* 032100 80031500 24C60001 */  addiu $a2, $a2, 1
/* 032104 80031504 24420001 */  addiu $v0, $v0, 1
/* 032108 80031508 1486FFFC */  bne   $a0, $a2, .L800314FC_ovl0
/* 03210C 8003150C 006E1821 */   addu  $v1, $v1, $t6
/* 032110 80031510 50C5000D */  beql  $a2, $a1, .L80031548_ovl0
/* 032114 80031514 00601025 */   move  $v0, $v1
.L80031518_ovl0:
/* 032118 80031518 904F0000 */  lbu   $t7, ($v0)
/* 03211C 8003151C 90580001 */  lbu   $t8, 1($v0)
/* 032120 80031520 90590002 */  lbu   $t9, 2($v0)
/* 032124 80031524 006F1821 */  addu  $v1, $v1, $t7
/* 032128 80031528 90480003 */  lbu   $t0, 3($v0)
/* 03212C 8003152C 00781821 */  addu  $v1, $v1, $t8
/* 032130 80031530 24C60004 */  addiu $a2, $a2, 4
/* 032134 80031534 00791821 */  addu  $v1, $v1, $t9
/* 032138 80031538 24420004 */  addiu $v0, $v0, 4
/* 03213C 8003153C 14C5FFF6 */  bne   $a2, $a1, .L80031518_ovl0
/* 032140 80031540 00681821 */   addu  $v1, $v1, $t0
.L80031544_ovl0:
/* 032144 80031544 00601025 */  move  $v0, $v1
.L80031548_ovl0:
/* 032148 80031548 3049FFFF */  andi  $t1, $v0, 0xffff
/* 03214C 8003154C 03E00008 */  jr    $ra
/* 032150 80031550 01201025 */   move  $v0, $t1

glabel func_80031554
/* 032154 80031554 A4C00000 */  sh    $zero, ($a2)
/* 032158 80031558 A4A00000 */  sh    $zero, ($a1)
/* 03215C 8003155C 94820000 */  lhu   $v0, ($a0)
/* 032160 80031560 24870004 */  addiu $a3, $a0, 4
/* 032164 80031564 24E90002 */  addiu $t1, $a3, 2
/* 032168 80031568 0002C021 */  addu  $t8, $zero, $v0
/* 03216C 8003156C A4B80000 */  sh    $t8, ($a1)
/* 032170 80031570 94D90000 */  lhu   $t9, ($a2)
/* 032174 80031574 00406827 */  not   $t5, $v0
/* 032178 80031578 24EA0004 */  addiu $t2, $a3, 4
/* 03217C 8003157C 032D7021 */  addu  $t6, $t9, $t5
/* 032180 80031580 A4CE0000 */  sh    $t6, ($a2)
/* 032184 80031584 94AF0000 */  lhu   $t7, ($a1)
/* 032188 80031588 94820002 */  lhu   $v0, 2($a0)
/* 03218C 8003158C 2404001C */  li    $a0, 28
/* 032190 80031590 24EB0006 */  addiu $t3, $a3, 6
/* 032194 80031594 01E2C021 */  addu  $t8, $t7, $v0
/* 032198 80031598 A4B80000 */  sh    $t8, ($a1)
/* 03219C 8003159C 94D90000 */  lhu   $t9, ($a2)
/* 0321A0 800315A0 00406827 */  not   $t5, $v0
/* 0321A4 800315A4 24030004 */  li    $v1, 4
/* 0321A8 800315A8 032D7021 */  addu  $t6, $t9, $t5
/* 0321AC 800315AC A4CE0000 */  sh    $t6, ($a2)
.L800315B0_ovl0:
/* 0321B0 800315B0 94E20000 */  lhu   $v0, ($a3)
/* 0321B4 800315B4 94AF0000 */  lhu   $t7, ($a1)
/* 0321B8 800315B8 24630008 */  addiu $v1, $v1, 8
/* 0321BC 800315BC 00406827 */  not   $t5, $v0
/* 0321C0 800315C0 01E2C021 */  addu  $t8, $t7, $v0
/* 0321C4 800315C4 A4B80000 */  sh    $t8, ($a1)
/* 0321C8 800315C8 94D90000 */  lhu   $t9, ($a2)
/* 0321CC 800315CC 24E70008 */  addiu $a3, $a3, 8
/* 0321D0 800315D0 25290008 */  addiu $t1, $t1, 8
/* 0321D4 800315D4 032D7021 */  addu  $t6, $t9, $t5
/* 0321D8 800315D8 A4CE0000 */  sh    $t6, ($a2)
/* 0321DC 800315DC 94AF0000 */  lhu   $t7, ($a1)
/* 0321E0 800315E0 9522FFF8 */  lhu   $v0, -8($t1)
/* 0321E4 800315E4 254A0008 */  addiu $t2, $t2, 8
/* 0321E8 800315E8 256B0008 */  addiu $t3, $t3, 8
/* 0321EC 800315EC 01E2C021 */  addu  $t8, $t7, $v0
/* 0321F0 800315F0 A4B80000 */  sh    $t8, ($a1)
/* 0321F4 800315F4 94D90000 */  lhu   $t9, ($a2)
/* 0321F8 800315F8 00406827 */  not   $t5, $v0
/* 0321FC 800315FC 032D7021 */  addu  $t6, $t9, $t5
/* 032200 80031600 A4CE0000 */  sh    $t6, ($a2)
/* 032204 80031604 94AF0000 */  lhu   $t7, ($a1)
/* 032208 80031608 9542FFF8 */  lhu   $v0, -8($t2)
/* 03220C 8003160C 01E2C021 */  addu  $t8, $t7, $v0
/* 032210 80031610 A4B80000 */  sh    $t8, ($a1)
/* 032214 80031614 94D90000 */  lhu   $t9, ($a2)
/* 032218 80031618 00406827 */  not   $t5, $v0
/* 03221C 8003161C 032D7021 */  addu  $t6, $t9, $t5
/* 032220 80031620 A4CE0000 */  sh    $t6, ($a2)
/* 032224 80031624 94AF0000 */  lhu   $t7, ($a1)
/* 032228 80031628 9562FFF8 */  lhu   $v0, -8($t3)
/* 03222C 8003162C 01E2C021 */  addu  $t8, $t7, $v0
/* 032230 80031630 A4B80000 */  sh    $t8, ($a1)
/* 032234 80031634 94D90000 */  lhu   $t9, ($a2)
/* 032238 80031638 00406827 */  not   $t5, $v0
/* 03223C 8003163C 032D7021 */  addu  $t6, $t9, $t5
/* 032240 80031640 1464FFDB */  bne   $v1, $a0, .L800315B0_ovl0
/* 032244 80031644 A4CE0000 */   sh    $t6, ($a2)
/* 032248 80031648 03E00008 */  jr    $ra
/* 03224C 8003164C 00001025 */   move  $v0, $zero

glabel func_80031650
/* 032250 80031650 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 032254 80031654 AFBF003C */  sw    $ra, 0x3c($sp)
/* 032258 80031658 AFB60038 */  sw    $s6, 0x38($sp)
/* 03225C 8003165C AFB50034 */  sw    $s5, 0x34($sp)
/* 032260 80031660 AFB40030 */  sw    $s4, 0x30($sp)
/* 032264 80031664 AFB3002C */  sw    $s3, 0x2c($sp)
/* 032268 80031668 AFB20028 */  sw    $s2, 0x28($sp)
/* 03226C 8003166C AFB10024 */  sw    $s1, 0x24($sp)
/* 032270 80031670 AFB00020 */  sw    $s0, 0x20($sp)
/* 032274 80031674 240EFFFF */  li    $t6, -1
/* 032278 80031678 00809025 */  move  $s2, $a0
/* 03227C 8003167C 00C0A025 */  move  $s4, $a2
/* 032280 80031680 00A0B025 */  move  $s6, $a1
/* 032284 80031684 00009825 */  move  $s3, $zero
/* 032288 80031688 0C00C534 */  jal   osGetCount
/* 03228C 8003168C ACCE0000 */   sw    $t6, ($a2)
/* 032290 80031690 AE820004 */  sw    $v0, 4($s4)
/* 032294 80031694 8ED9000C */  lw    $t9, 0xc($s6)
/* 032298 80031698 8ED80008 */  lw    $t8, 8($s6)
/* 03229C 8003169C 02402025 */  move  $a0, $s2
/* 0322A0 800316A0 AE99000C */  sw    $t9, 0xc($s4)
/* 0322A4 800316A4 AE980008 */  sw    $t8, 8($s4)
/* 0322A8 800316A8 8EC90014 */  lw    $t1, 0x14($s6)
/* 0322AC 800316AC 8EC80010 */  lw    $t0, 0x10($s6)
/* 0322B0 800316B0 AE890014 */  sw    $t1, 0x14($s4)
/* 0322B4 800316B4 AE880010 */  sw    $t0, 0x10($s4)
/* 0322B8 800316B8 924F0065 */  lbu   $t7, 0x65($s2)
/* 0322BC 800316BC 51E00008 */  beql  $t7, $zero, .L800316E0_ovl0
/* 0322C0 800316C0 27B1007C */   addiu $s1, $sp, 0x7c
/* 0322C4 800316C4 0C00D728 */  jal   func_80035CA0
/* 0322C8 800316C8 00002825 */   move  $a1, $zero
/* 0322CC 800316CC 50400004 */  beql  $v0, $zero, .L800316E0_ovl0
/* 0322D0 800316D0 27B1007C */   addiu $s1, $sp, 0x7c
/* 0322D4 800316D4 100000A9 */  b     .L8003197C_ovl0
/* 0322D8 800316D8 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0322DC 800316DC 27B1007C */  addiu $s1, $sp, 0x7c
.L800316E0_ovl0:
/* 0322E0 800316E0 0220A825 */  move  $s5, $s1
/* 0322E4 800316E4 27B0009C */  addiu $s0, $sp, 0x9c
/* 0322E8 800316E8 02402025 */  move  $a0, $s2
.L800316EC_ovl0:
/* 0322EC 800316EC 0C00D728 */  jal   func_80035CA0
/* 0322F0 800316F0 326500FF */   andi  $a1, $s3, 0xff
/* 0322F4 800316F4 10400003 */  beqz  $v0, .L80031704_ovl0
/* 0322F8 800316F8 00003025 */   move  $a2, $zero
/* 0322FC 800316FC 1000009F */  b     .L8003197C_ovl0
/* 032300 80031700 8FBF003C */   lw    $ra, 0x3c($sp)
.L80031704_ovl0:
/* 032304 80031704 8E440004 */  lw    $a0, 4($s2)
/* 032308 80031708 8E450008 */  lw    $a1, 8($s2)
/* 03230C 8003170C 0C00DCC8 */  jal   func_80037320
/* 032310 80031710 02A03825 */   move  $a3, $s5
/* 032314 80031714 10400003 */  beqz  $v0, .L80031724_ovl0
/* 032318 80031718 366B0080 */   ori   $t3, $s3, 0x80
/* 03231C 8003171C 10000097 */  b     .L8003197C_ovl0
/* 032320 80031720 8FBF003C */   lw    $ra, 0x3c($sp)
.L80031724_ovl0:
/* 032324 80031724 A3AB007C */  sb    $t3, 0x7c($sp)
/* 032328 80031728 27A2007D */  addiu $v0, $sp, 0x7d
.L8003172C_ovl0:
/* 03232C 8003172C 904C0000 */  lbu   $t4, ($v0)
/* 032330 80031730 24420001 */  addiu $v0, $v0, 1
/* 032334 80031734 0050082B */  sltu  $at, $v0, $s0
/* 032338 80031738 01806827 */  not   $t5, $t4
/* 03233C 8003173C 1420FFFB */  bnez  $at, .L8003172C_ovl0
/* 032340 80031740 A04DFFFF */   sb    $t5, -1($v0)
/* 032344 80031744 8E440004 */  lw    $a0, 4($s2)
/* 032348 80031748 8E450008 */  lw    $a1, 8($s2)
/* 03234C 8003174C AFA00010 */  sw    $zero, 0x10($sp)
/* 032350 80031750 00003025 */  move  $a2, $zero
/* 032354 80031754 0C00DC34 */  jal   func_800370D0
/* 032358 80031758 02A03825 */   move  $a3, $s5
/* 03235C 8003175C 10400003 */  beqz  $v0, .L8003176C_ovl0
/* 032360 80031760 00003025 */   move  $a2, $zero
/* 032364 80031764 10000085 */  b     .L8003197C_ovl0
/* 032368 80031768 8FBF003C */   lw    $ra, 0x3c($sp)
.L8003176C_ovl0:
/* 03236C 8003176C 8E440004 */  lw    $a0, 4($s2)
/* 032370 80031770 8E450008 */  lw    $a1, 8($s2)
/* 032374 80031774 0C00DCC8 */  jal   func_80037320
/* 032378 80031778 27A7005C */   addiu $a3, $sp, 0x5c
/* 03237C 8003177C 10400003 */  beqz  $v0, .L8003178C_ovl0
/* 032380 80031780 27A3005C */   addiu $v1, $sp, 0x5c
/* 032384 80031784 1000007D */  b     .L8003197C_ovl0
/* 032388 80031788 8FBF003C */   lw    $ra, 0x3c($sp)
.L8003178C_ovl0:
/* 03238C 8003178C 27A2007C */  addiu $v0, $sp, 0x7c
.L80031790_ovl0:
/* 032390 80031790 906E0000 */  lbu   $t6, ($v1)
/* 032394 80031794 90580000 */  lbu   $t8, ($v0)
/* 032398 80031798 55D80006 */  bnel  $t6, $t8, .L800317B4_ovl0
/* 03239C 8003179C 27B9007C */   addiu $t9, $sp, 0x7c
/* 0323A0 800317A0 24630001 */  addiu $v1, $v1, 1
/* 0323A4 800317A4 0071082B */  sltu  $at, $v1, $s1
/* 0323A8 800317A8 1420FFF9 */  bnez  $at, .L80031790_ovl0
/* 0323AC 800317AC 24420001 */   addiu $v0, $v0, 1
/* 0323B0 800317B0 27B9007C */  addiu $t9, $sp, 0x7c
.L800317B4_ovl0:
/* 0323B4 800317B4 14790018 */  bne   $v1, $t9, .L80031818_ovl0
/* 0323B8 800317B8 02402025 */   move  $a0, $s2
/* 0323BC 800317BC 5A600013 */  blezl $s3, .L8003180C_ovl0
/* 0323C0 800317C0 26730001 */   addiu $s3, $s3, 1
/* 0323C4 800317C4 0C00D728 */  jal   func_80035CA0
/* 0323C8 800317C8 00002825 */   move  $a1, $zero
/* 0323CC 800317CC 10400003 */  beqz  $v0, .L800317DC_ovl0
/* 0323D0 800317D0 00003025 */   move  $a2, $zero
/* 0323D4 800317D4 10000069 */  b     .L8003197C_ovl0
/* 0323D8 800317D8 8FBF003C */   lw    $ra, 0x3c($sp)
.L800317DC_ovl0:
/* 0323DC 800317DC 8E440004 */  lw    $a0, 4($s2)
/* 0323E0 800317E0 8E450008 */  lw    $a1, 8($s2)
/* 0323E4 800317E4 0C00DCC8 */  jal   func_80037320
/* 0323E8 800317E8 02A03825 */   move  $a3, $s5
/* 0323EC 800317EC 10400003 */  beqz  $v0, .L800317FC_ovl0
/* 0323F0 800317F0 93A8007C */   lbu   $t0, 0x7c($sp)
/* 0323F4 800317F4 10000061 */  b     .L8003197C_ovl0
/* 0323F8 800317F8 8FBF003C */   lw    $ra, 0x3c($sp)
.L800317FC_ovl0:
/* 0323FC 800317FC 24010080 */  li    $at, 128
/* 032400 80031800 55010006 */  bnel  $t0, $at, .L8003181C_ovl0
/* 032404 80031804 92490065 */   lbu   $t1, 0x65($s2)
/* 032408 80031808 26730001 */  addiu $s3, $s3, 1
.L8003180C_ovl0:
/* 03240C 8003180C 2A61003E */  slti  $at, $s3, 0x3e
/* 032410 80031810 5420FFB6 */  bnezl $at, .L800316EC_ovl0
/* 032414 80031814 02402025 */   move  $a0, $s2
.L80031818_ovl0:
/* 032418 80031818 92490065 */  lbu   $t1, 0x65($s2)
.L8003181C_ovl0:
/* 03241C 8003181C 02402025 */  move  $a0, $s2
/* 032420 80031820 11200007 */  beqz  $t1, .L80031840_ovl0
/* 032424 80031824 00000000 */   nop   
/* 032428 80031828 0C00D728 */  jal   func_80035CA0
/* 03242C 8003182C 00002825 */   move  $a1, $zero
/* 032430 80031830 10400003 */  beqz  $v0, .L80031840_ovl0
/* 032434 80031834 00000000 */   nop   
/* 032438 80031838 10000050 */  b     .L8003197C_ovl0
/* 03243C 8003183C 8FBF003C */   lw    $ra, 0x3c($sp)
.L80031840_ovl0:
/* 032440 80031840 1A600003 */  blez  $s3, .L80031850_ovl0
/* 032444 80031844 02802025 */   move  $a0, $s4
/* 032448 80031848 10000002 */  b     .L80031854_ovl0
/* 03244C 8003184C 24020001 */   li    $v0, 1
.L80031850_ovl0:
/* 032450 80031850 00001025 */  move  $v0, $zero
.L80031854_ovl0:
/* 032454 80031854 96CF0018 */  lhu   $t7, 0x18($s6)
/* 032458 80031858 A293001A */  sb    $s3, 0x1a($s4)
/* 03245C 8003185C 2685001C */  addiu $a1, $s4, 0x1c
/* 032460 80031860 31EAFFFE */  andi  $t2, $t7, 0xfffe
/* 032464 80031864 01425825 */  or    $t3, $t2, $v0
/* 032468 80031868 A68B0018 */  sh    $t3, 0x18($s4)
/* 03246C 8003186C 92CC001B */  lbu   $t4, 0x1b($s6)
/* 032470 80031870 2686001E */  addiu $a2, $s4, 0x1e
/* 032474 80031874 0C00C555 */  jal   func_80031554
/* 032478 80031878 A28C001B */   sb    $t4, 0x1b($s4)
/* 03247C 8003187C 240D0001 */  li    $t5, 1
/* 032480 80031880 240E0003 */  li    $t6, 3
/* 032484 80031884 24180004 */  li    $t8, 4
/* 032488 80031888 24190006 */  li    $t9, 6
/* 03248C 8003188C A7AD0048 */  sh    $t5, 0x48($sp)
/* 032490 80031890 A7AE004A */  sh    $t6, 0x4a($sp)
/* 032494 80031894 A7B8004C */  sh    $t8, 0x4c($sp)
/* 032498 80031898 A7B9004E */  sh    $t9, 0x4e($sp)
/* 03249C 8003189C 27B00048 */  addiu $s0, $sp, 0x48
/* 0324A0 800318A0 27B10050 */  addiu $s1, $sp, 0x50
/* 0324A4 800318A4 8E440004 */  lw    $a0, 4($s2)
.L800318A8_ovl0:
/* 0324A8 800318A8 8E450008 */  lw    $a1, 8($s2)
/* 0324AC 800318AC 96060000 */  lhu   $a2, ($s0)
/* 0324B0 800318B0 24080001 */  li    $t0, 1
/* 0324B4 800318B4 AFA80010 */  sw    $t0, 0x10($sp)
/* 0324B8 800318B8 0C00DC34 */  jal   func_800370D0
/* 0324BC 800318BC 02803825 */   move  $a3, $s4
/* 0324C0 800318C0 10400003 */  beqz  $v0, .L800318D0_ovl0
/* 0324C4 800318C4 26100002 */   addiu $s0, $s0, 2
/* 0324C8 800318C8 1000002C */  b     .L8003197C_ovl0
/* 0324CC 800318CC 8FBF003C */   lw    $ra, 0x3c($sp)
.L800318D0_ovl0:
/* 0324D0 800318D0 0211082B */  sltu  $at, $s0, $s1
/* 0324D4 800318D4 5420FFF4 */  bnezl $at, .L800318A8_ovl0
/* 0324D8 800318D8 8E440004 */   lw    $a0, 4($s2)
/* 0324DC 800318DC 8E440004 */  lw    $a0, 4($s2)
/* 0324E0 800318E0 8E450008 */  lw    $a1, 8($s2)
/* 0324E4 800318E4 24060001 */  li    $a2, 1
/* 0324E8 800318E8 0C00DCC8 */  jal   func_80037320
/* 0324EC 800318EC 02A03825 */   move  $a3, $s5
/* 0324F0 800318F0 10400003 */  beqz  $v0, .L80031900_ovl0
/* 0324F4 800318F4 02801825 */   move  $v1, $s4
/* 0324F8 800318F8 10000020 */  b     .L8003197C_ovl0
/* 0324FC 800318FC 8FBF003C */   lw    $ra, 0x3c($sp)
.L80031900_ovl0:
/* 032500 80031900 27A2007C */  addiu $v0, $sp, 0x7c
/* 032504 80031904 27A4009C */  addiu $a0, $sp, 0x9c
.L80031908_ovl0:
/* 032508 80031908 90490000 */  lbu   $t1, ($v0)
/* 03250C 8003190C 906F0000 */  lbu   $t7, ($v1)
/* 032510 80031910 512F0004 */  beql  $t1, $t7, .L80031924_ovl0
/* 032514 80031914 904A0001 */   lbu   $t2, 1($v0)
/* 032518 80031918 10000017 */  b     .L80031978_ovl0
/* 03251C 8003191C 2402000A */   li    $v0, 10
/* 032520 80031920 904A0001 */  lbu   $t2, 1($v0)
.L80031924_ovl0:
/* 032524 80031924 906B0001 */  lbu   $t3, 1($v1)
/* 032528 80031928 514B0004 */  beql  $t2, $t3, .L8003193C_ovl0
/* 03252C 8003192C 904C0002 */   lbu   $t4, 2($v0)
/* 032530 80031930 10000011 */  b     .L80031978_ovl0
/* 032534 80031934 2402000A */   li    $v0, 10
/* 032538 80031938 904C0002 */  lbu   $t4, 2($v0)
.L8003193C_ovl0:
/* 03253C 8003193C 906D0002 */  lbu   $t5, 2($v1)
/* 032540 80031940 518D0004 */  beql  $t4, $t5, .L80031954_ovl0
/* 032544 80031944 904E0003 */   lbu   $t6, 3($v0)
/* 032548 80031948 1000000B */  b     .L80031978_ovl0
/* 03254C 8003194C 2402000A */   li    $v0, 10
/* 032550 80031950 904E0003 */  lbu   $t6, 3($v0)
.L80031954_ovl0:
/* 032554 80031954 90780003 */  lbu   $t8, 3($v1)
/* 032558 80031958 24420004 */  addiu $v0, $v0, 4
/* 03255C 8003195C 11D80003 */  beq   $t6, $t8, .L8003196C_ovl0
/* 032560 80031960 00000000 */   nop   
/* 032564 80031964 10000004 */  b     .L80031978_ovl0
/* 032568 80031968 2402000A */   li    $v0, 10
.L8003196C_ovl0:
/* 03256C 8003196C 1444FFE6 */  bne   $v0, $a0, .L80031908_ovl0
/* 032570 80031970 24630004 */   addiu $v1, $v1, 4
/* 032574 80031974 00001025 */  move  $v0, $zero
.L80031978_ovl0:
/* 032578 80031978 8FBF003C */  lw    $ra, 0x3c($sp)
.L8003197C_ovl0:
/* 03257C 8003197C 8FB00020 */  lw    $s0, 0x20($sp)
/* 032580 80031980 8FB10024 */  lw    $s1, 0x24($sp)
/* 032584 80031984 8FB20028 */  lw    $s2, 0x28($sp)
/* 032588 80031988 8FB3002C */  lw    $s3, 0x2c($sp)
/* 03258C 8003198C 8FB40030 */  lw    $s4, 0x30($sp)
/* 032590 80031990 8FB50034 */  lw    $s5, 0x34($sp)
/* 032594 80031994 8FB60038 */  lw    $s6, 0x38($sp)
/* 032598 80031998 03E00008 */  jr    $ra
/* 03259C 8003199C 27BD00A0 */   addiu $sp, $sp, 0xa0

glabel func_800319A0
/* 0325A0 800319A0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0325A4 800319A4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0325A8 800319A8 AFB60038 */  sw    $s6, 0x38($sp)
/* 0325AC 800319AC AFB50034 */  sw    $s5, 0x34($sp)
/* 0325B0 800319B0 AFB40030 */  sw    $s4, 0x30($sp)
/* 0325B4 800319B4 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0325B8 800319B8 AFB20028 */  sw    $s2, 0x28($sp)
/* 0325BC 800319BC AFB10024 */  sw    $s1, 0x24($sp)
/* 0325C0 800319C0 AFB00020 */  sw    $s0, 0x20($sp)
/* 0325C4 800319C4 908E0065 */  lbu   $t6, 0x65($a0)
/* 0325C8 800319C8 00A09025 */  move  $s2, $a1
/* 0325CC 800319CC 00809825 */  move  $s3, $a0
/* 0325D0 800319D0 51C00008 */  beql  $t6, $zero, .L800319F4_ovl0
/* 0325D4 800319D4 240F0001 */   li    $t7, 1
/* 0325D8 800319D8 0C00D728 */  jal   func_80035CA0
/* 0325DC 800319DC 00002825 */   move  $a1, $zero
/* 0325E0 800319E0 50400004 */  beql  $v0, $zero, .L800319F4_ovl0
/* 0325E4 800319E4 240F0001 */   li    $t7, 1
/* 0325E8 800319E8 1000003D */  b     .L80031AE0_ovl0
/* 0325EC 800319EC 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0325F0 800319F0 240F0001 */  li    $t7, 1
.L800319F4_ovl0:
/* 0325F4 800319F4 24180003 */  li    $t8, 3
/* 0325F8 800319F8 24190004 */  li    $t9, 4
/* 0325FC 800319FC 24080006 */  li    $t0, 6
/* 032600 80031A00 A7AF0058 */  sh    $t7, 0x58($sp)
/* 032604 80031A04 A7B8005A */  sh    $t8, 0x5a($sp)
/* 032608 80031A08 A7B9005C */  sh    $t9, 0x5c($sp)
/* 03260C 80031A0C A7A8005E */  sh    $t0, 0x5e($sp)
/* 032610 80031A10 24110001 */  li    $s1, 1
/* 032614 80031A14 27B0005A */  addiu $s0, $sp, 0x5a
/* 032618 80031A18 27B60050 */  addiu $s6, $sp, 0x50
/* 03261C 80031A1C 24150004 */  li    $s5, 4
/* 032620 80031A20 27B40052 */  addiu $s4, $sp, 0x52
.L80031A24_ovl0:
/* 032624 80031A24 8E640004 */  lw    $a0, 4($s3)
/* 032628 80031A28 8E650008 */  lw    $a1, 8($s3)
/* 03262C 80031A2C 96060000 */  lhu   $a2, ($s0)
/* 032630 80031A30 0C00DCC8 */  jal   func_80037320
/* 032634 80031A34 02403825 */   move  $a3, $s2
/* 032638 80031A38 10400003 */  beqz  $v0, .L80031A48_ovl0
/* 03263C 80031A3C 02402025 */   move  $a0, $s2
/* 032640 80031A40 10000027 */  b     .L80031AE0_ovl0
/* 032644 80031A44 8FBF003C */   lw    $ra, 0x3c($sp)
.L80031A48_ovl0:
/* 032648 80031A48 02802825 */  move  $a1, $s4
/* 03264C 80031A4C 0C00C555 */  jal   func_80031554
/* 032650 80031A50 02C03025 */   move  $a2, $s6
/* 032654 80031A54 97A90052 */  lhu   $t1, 0x52($sp)
/* 032658 80031A58 964A001C */  lhu   $t2, 0x1c($s2)
/* 03265C 80031A5C 97AB0050 */  lhu   $t3, 0x50($sp)
/* 032660 80031A60 552A0005 */  bnel  $t1, $t2, .L80031A78_ovl0
/* 032664 80031A64 26310001 */   addiu $s1, $s1, 1
/* 032668 80031A68 964C001E */  lhu   $t4, 0x1e($s2)
/* 03266C 80031A6C 116C0004 */  beq   $t3, $t4, .L80031A80_ovl0
/* 032670 80031A70 00000000 */   nop   
/* 032674 80031A74 26310001 */  addiu $s1, $s1, 1
.L80031A78_ovl0:
/* 032678 80031A78 1635FFEA */  bne   $s1, $s5, .L80031A24_ovl0
/* 03267C 80031A7C 26100002 */   addiu $s0, $s0, 2
.L80031A80_ovl0:
/* 032680 80031A80 16350003 */  bne   $s1, $s5, .L80031A90_ovl0
/* 032684 80031A84 00008025 */   move  $s0, $zero
/* 032688 80031A88 10000014 */  b     .L80031ADC_ovl0
/* 03268C 80031A8C 2402000A */   li    $v0, 10
.L80031A90_ovl0:
/* 032690 80031A90 27B40058 */  addiu $s4, $sp, 0x58
.L80031A94_ovl0:
/* 032694 80031A94 1211000D */  beq   $s0, $s1, .L80031ACC_ovl0
/* 032698 80031A98 00106840 */   sll   $t5, $s0, 1
/* 03269C 80031A9C 028D7021 */  addu  $t6, $s4, $t5
/* 0326A0 80031AA0 95C60000 */  lhu   $a2, ($t6)
/* 0326A4 80031AA4 8E640004 */  lw    $a0, 4($s3)
/* 0326A8 80031AA8 8E650008 */  lw    $a1, 8($s3)
/* 0326AC 80031AAC 240F0001 */  li    $t7, 1
/* 0326B0 80031AB0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0326B4 80031AB4 0C00DC34 */  jal   func_800370D0
/* 0326B8 80031AB8 02403825 */   move  $a3, $s2
/* 0326BC 80031ABC 50400004 */  beql  $v0, $zero, .L80031AD0_ovl0
/* 0326C0 80031AC0 26100001 */   addiu $s0, $s0, 1
/* 0326C4 80031AC4 10000006 */  b     .L80031AE0_ovl0
/* 0326C8 80031AC8 8FBF003C */   lw    $ra, 0x3c($sp)
.L80031ACC_ovl0:
/* 0326CC 80031ACC 26100001 */  addiu $s0, $s0, 1
.L80031AD0_ovl0:
/* 0326D0 80031AD0 1615FFF0 */  bne   $s0, $s5, .L80031A94_ovl0
/* 0326D4 80031AD4 00000000 */   nop   
/* 0326D8 80031AD8 00001025 */  move  $v0, $zero
.L80031ADC_ovl0:
/* 0326DC 80031ADC 8FBF003C */  lw    $ra, 0x3c($sp)
.L80031AE0_ovl0:
/* 0326E0 80031AE0 8FB00020 */  lw    $s0, 0x20($sp)
/* 0326E4 80031AE4 8FB10024 */  lw    $s1, 0x24($sp)
/* 0326E8 80031AE8 8FB20028 */  lw    $s2, 0x28($sp)
/* 0326EC 80031AEC 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0326F0 80031AF0 8FB40030 */  lw    $s4, 0x30($sp)
/* 0326F4 80031AF4 8FB50034 */  lw    $s5, 0x34($sp)
/* 0326F8 80031AF8 8FB60038 */  lw    $s6, 0x38($sp)
/* 0326FC 80031AFC 03E00008 */  jr    $ra
/* 032700 80031B00 27BD0060 */   addiu $sp, $sp, 0x60

glabel func_80031B04
/* 032704 80031B04 27BDFF90 */  addiu $sp, $sp, -0x70
/* 032708 80031B08 AFBF001C */  sw    $ra, 0x1c($sp)
/* 03270C 80031B0C AFB10018 */  sw    $s1, 0x18($sp)
/* 032710 80031B10 AFB00014 */  sw    $s0, 0x14($sp)
/* 032714 80031B14 908E0065 */  lbu   $t6, 0x65($a0)
/* 032718 80031B18 00808025 */  move  $s0, $a0
/* 03271C 80031B1C 51C00008 */  beql  $t6, $zero, .L80031B40_ovl0
/* 032720 80031B20 8E040004 */   lw    $a0, 4($s0)
/* 032724 80031B24 0C00D728 */  jal   func_80035CA0
/* 032728 80031B28 00002825 */   move  $a1, $zero
/* 03272C 80031B2C 50400004 */  beql  $v0, $zero, .L80031B40_ovl0
/* 032730 80031B30 8E040004 */   lw    $a0, 4($s0)
/* 032734 80031B34 1000005A */  b     .L80031CA0_ovl0
/* 032738 80031B38 8FBF001C */   lw    $ra, 0x1c($sp)
/* 03273C 80031B3C 8E040004 */  lw    $a0, 4($s0)
.L80031B40_ovl0:
/* 032740 80031B40 8E050008 */  lw    $a1, 8($s0)
/* 032744 80031B44 24060001 */  li    $a2, 1
/* 032748 80031B48 0C00DCC8 */  jal   func_80037320
/* 03274C 80031B4C 27A7004C */   addiu $a3, $sp, 0x4c
/* 032750 80031B50 10400003 */  beqz  $v0, .L80031B60_ovl0
/* 032754 80031B54 27A4004C */   addiu $a0, $sp, 0x4c
/* 032758 80031B58 10000051 */  b     .L80031CA0_ovl0
/* 03275C 80031B5C 8FBF001C */   lw    $ra, 0x1c($sp)
.L80031B60_ovl0:
/* 032760 80031B60 27A5006E */  addiu $a1, $sp, 0x6e
/* 032764 80031B64 0C00C555 */  jal   func_80031554
/* 032768 80031B68 27A6006C */   addiu $a2, $sp, 0x6c
/* 03276C 80031B6C 97AF006E */  lhu   $t7, 0x6e($sp)
/* 032770 80031B70 97B80068 */  lhu   $t8, 0x68($sp)
/* 032774 80031B74 27A5004C */  addiu $a1, $sp, 0x4c
/* 032778 80031B78 00A08825 */  move  $s1, $a1
/* 03277C 80031B7C 15F80004 */  bne   $t7, $t8, .L80031B90_ovl0
/* 032780 80031B80 97B9006C */   lhu   $t9, 0x6c($sp)
/* 032784 80031B84 97A9006A */  lhu   $t1, 0x6a($sp)
/* 032788 80031B88 53290015 */  beql  $t9, $t1, .L80031BE0_ovl0
/* 03278C 80031B8C 962A0018 */   lhu   $t2, 0x18($s1)
.L80031B90_ovl0:
/* 032790 80031B90 0C00C668 */  jal   func_800319A0
/* 032794 80031B94 02002025 */   move  $a0, $s0
/* 032798 80031B98 2401000A */  li    $at, 10
/* 03279C 80031B9C 1441000B */  bne   $v0, $at, .L80031BCC_ovl0
/* 0327A0 80031BA0 00401825 */   move  $v1, $v0
/* 0327A4 80031BA4 02002025 */  move  $a0, $s0
/* 0327A8 80031BA8 27A5004C */  addiu $a1, $sp, 0x4c
/* 0327AC 80031BAC 0C00C594 */  jal   func_80031650
/* 0327B0 80031BB0 27A60028 */   addiu $a2, $sp, 0x28
/* 0327B4 80031BB4 10400003 */  beqz  $v0, .L80031BC4_ovl0
/* 0327B8 80031BB8 00000000 */   nop   
/* 0327BC 80031BBC 10000038 */  b     .L80031CA0_ovl0
/* 0327C0 80031BC0 8FBF001C */   lw    $ra, 0x1c($sp)
.L80031BC4_ovl0:
/* 0327C4 80031BC4 10000005 */  b     .L80031BDC_ovl0
/* 0327C8 80031BC8 27B10028 */   addiu $s1, $sp, 0x28
.L80031BCC_ovl0:
/* 0327CC 80031BCC 50400004 */  beql  $v0, $zero, .L80031BE0_ovl0
/* 0327D0 80031BD0 962A0018 */   lhu   $t2, 0x18($s1)
/* 0327D4 80031BD4 10000031 */  b     .L80031C9C_ovl0
/* 0327D8 80031BD8 00601025 */   move  $v0, $v1
.L80031BDC_ovl0:
/* 0327DC 80031BDC 962A0018 */  lhu   $t2, 0x18($s1)
.L80031BE0_ovl0:
/* 0327E0 80031BE0 02002025 */  move  $a0, $s0
/* 0327E4 80031BE4 02202825 */  move  $a1, $s1
/* 0327E8 80031BE8 314B0001 */  andi  $t3, $t2, 1
/* 0327EC 80031BEC 5560000D */  bnezl $t3, .L80031C24_ovl0
/* 0327F0 80031BF0 02202025 */   move  $a0, $s1
/* 0327F4 80031BF4 0C00C594 */  jal   func_80031650
/* 0327F8 80031BF8 27A60028 */   addiu $a2, $sp, 0x28
/* 0327FC 80031BFC 10400003 */  beqz  $v0, .L80031C0C_ovl0
/* 032800 80031C00 97AC0040 */   lhu   $t4, 0x40($sp)
/* 032804 80031C04 10000026 */  b     .L80031CA0_ovl0
/* 032808 80031C08 8FBF001C */   lw    $ra, 0x1c($sp)
.L80031C0C_ovl0:
/* 03280C 80031C0C 318D0001 */  andi  $t5, $t4, 1
/* 032810 80031C10 15A00003 */  bnez  $t5, .L80031C20_ovl0
/* 032814 80031C14 27B10028 */   addiu $s1, $sp, 0x28
/* 032818 80031C18 10000020 */  b     .L80031C9C_ovl0
/* 03281C 80031C1C 2402000B */   li    $v0, 11
.L80031C20_ovl0:
/* 032820 80031C20 02202025 */  move  $a0, $s1
.L80031C24_ovl0:
/* 032824 80031C24 2605000C */  addiu $a1, $s0, 0xc
/* 032828 80031C28 0C00D340 */  jal   bcopy
/* 03282C 80031C2C 24060020 */   li    $a2, 32
/* 032830 80031C30 922E001B */  lbu   $t6, 0x1b($s1)
/* 032834 80031C34 24090010 */  li    $t1, 16
/* 032838 80031C38 240A0008 */  li    $t2, 8
/* 03283C 80031C3C AE0E004C */  sw    $t6, 0x4c($s0)
/* 032840 80031C40 922F001A */  lbu   $t7, 0x1a($s1)
/* 032844 80031C44 AE090050 */  sw    $t1, 0x50($s0)
/* 032848 80031C48 AE0A0054 */  sw    $t2, 0x54($s0)
/* 03284C 80031C4C 31E200FF */  andi  $v0, $t7, 0xff
/* 032850 80031C50 000218C0 */  sll   $v1, $v0, 3
/* 032854 80031C54 0002C040 */  sll   $t8, $v0, 1
/* 032858 80031C58 24680008 */  addiu $t0, $v1, 8
/* 03285C 80031C5C 27190003 */  addiu $t9, $t8, 3
/* 032860 80031C60 01035821 */  addu  $t3, $t0, $v1
/* 032864 80031C64 AE190060 */  sw    $t9, 0x60($s0)
/* 032868 80031C68 AE080058 */  sw    $t0, 0x58($s0)
/* 03286C 80031C6C AE0B005C */  sw    $t3, 0x5c($s0)
/* 032870 80031C70 8E040004 */  lw    $a0, 4($s0)
/* 032874 80031C74 8E050008 */  lw    $a1, 8($s0)
/* 032878 80031C78 24060007 */  li    $a2, 7
/* 03287C 80031C7C 2607002C */  addiu $a3, $s0, 0x2c
/* 032880 80031C80 0C00DCC8 */  jal   func_80037320
/* 032884 80031C84 A20F0064 */   sb    $t7, 0x64($s0)
/* 032888 80031C88 50400004 */  beql  $v0, $zero, .L80031C9C_ovl0
/* 03288C 80031C8C 00001025 */   move  $v0, $zero
/* 032890 80031C90 10000003 */  b     .L80031CA0_ovl0
/* 032894 80031C94 8FBF001C */   lw    $ra, 0x1c($sp)
/* 032898 80031C98 00001025 */  move  $v0, $zero
.L80031C9C_ovl0:
/* 03289C 80031C9C 8FBF001C */  lw    $ra, 0x1c($sp)
.L80031CA0_ovl0:
/* 0328A0 80031CA0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0328A4 80031CA4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0328A8 80031CA8 03E00008 */  jr    $ra
/* 0328AC 80031CAC 27BD0070 */   addiu $sp, $sp, 0x70

glabel func_80031CB0
/* 0328B0 80031CB0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0328B4 80031CB4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0328B8 80031CB8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0328BC 80031CBC 908E0065 */  lbu   $t6, 0x65($a0)
/* 0328C0 80031CC0 00808025 */  move  $s0, $a0
/* 0328C4 80031CC4 51C0000F */  beql  $t6, $zero, .L80031D04_ovl0
/* 0328C8 80031CC8 8E040004 */   lw    $a0, 4($s0)
/* 0328CC 80031CCC 0C00D728 */  jal   func_80035CA0
/* 0328D0 80031CD0 00002825 */   move  $a1, $zero
/* 0328D4 80031CD4 24010002 */  li    $at, 2
/* 0328D8 80031CD8 14410005 */  bne   $v0, $at, .L80031CF0_ovl0
/* 0328DC 80031CDC 00401825 */   move  $v1, $v0
/* 0328E0 80031CE0 02002025 */  move  $a0, $s0
/* 0328E4 80031CE4 0C00D728 */  jal   func_80035CA0
/* 0328E8 80031CE8 00002825 */   move  $a1, $zero
/* 0328EC 80031CEC 00401825 */  move  $v1, $v0
.L80031CF0_ovl0:
/* 0328F0 80031CF0 50400004 */  beql  $v0, $zero, .L80031D04_ovl0
/* 0328F4 80031CF4 8E040004 */   lw    $a0, 4($s0)
/* 0328F8 80031CF8 1000001D */  b     .L80031D70_ovl0
/* 0328FC 80031CFC 00601025 */   move  $v0, $v1
/* 032900 80031D00 8E040004 */  lw    $a0, 4($s0)
.L80031D04_ovl0:
/* 032904 80031D04 8E050008 */  lw    $a1, 8($s0)
/* 032908 80031D08 24060001 */  li    $a2, 1
/* 03290C 80031D0C 0C00DCC8 */  jal   func_80037320
/* 032910 80031D10 27A70028 */   addiu $a3, $sp, 0x28
/* 032914 80031D14 1040000D */  beqz  $v0, .L80031D4C_ovl0
/* 032918 80031D18 24010002 */   li    $at, 2
/* 03291C 80031D1C 10410003 */  beq   $v0, $at, .L80031D2C_ovl0
/* 032920 80031D20 24060001 */   li    $a2, 1
/* 032924 80031D24 10000013 */  b     .L80031D74_ovl0
/* 032928 80031D28 8FBF001C */   lw    $ra, 0x1c($sp)
.L80031D2C_ovl0:
/* 03292C 80031D2C 8E040004 */  lw    $a0, 4($s0)
/* 032930 80031D30 8E050008 */  lw    $a1, 8($s0)
/* 032934 80031D34 0C00DCC8 */  jal   func_80037320
/* 032938 80031D38 27A70028 */   addiu $a3, $sp, 0x28
/* 03293C 80031D3C 50400004 */  beql  $v0, $zero, .L80031D50_ovl0
/* 032940 80031D40 2604000C */   addiu $a0, $s0, 0xc
/* 032944 80031D44 1000000B */  b     .L80031D74_ovl0
/* 032948 80031D48 8FBF001C */   lw    $ra, 0x1c($sp)
.L80031D4C_ovl0:
/* 03294C 80031D4C 2604000C */  addiu $a0, $s0, 0xc
.L80031D50_ovl0:
/* 032950 80031D50 27A50028 */  addiu $a1, $sp, 0x28
/* 032954 80031D54 0C00D13C */  jal   bcmp
/* 032958 80031D58 24060020 */   li    $a2, 32
/* 03295C 80031D5C 50400004 */  beql  $v0, $zero, .L80031D70_ovl0
/* 032960 80031D60 00001025 */   move  $v0, $zero
/* 032964 80031D64 10000002 */  b     .L80031D70_ovl0
/* 032968 80031D68 24020002 */   li    $v0, 2
/* 03296C 80031D6C 00001025 */  move  $v0, $zero
.L80031D70_ovl0:
/* 032970 80031D70 8FBF001C */  lw    $ra, 0x1c($sp)
.L80031D74_ovl0:
/* 032974 80031D74 8FB00018 */  lw    $s0, 0x18($sp)
/* 032978 80031D78 27BD0048 */  addiu $sp, $sp, 0x48
/* 03297C 80031D7C 03E00008 */  jr    $ra
/* 032980 80031D80 00000000 */   nop   

glabel func_80031D84
/* 032984 80031D84 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 032988 80031D88 AFB40030 */  sw    $s4, 0x30($sp)
/* 03298C 80031D8C 30D400FF */  andi  $s4, $a2, 0xff
/* 032990 80031D90 AFB20028 */  sw    $s2, 0x28($sp)
/* 032994 80031D94 00809025 */  move  $s2, $a0
/* 032998 80031D98 AFBF0034 */  sw    $ra, 0x34($sp)
/* 03299C 80031D9C AFB3002C */  sw    $s3, 0x2c($sp)
/* 0329A0 80031DA0 AFB10024 */  sw    $s1, 0x24($sp)
/* 0329A4 80031DA4 AFB00020 */  sw    $s0, 0x20($sp)
/* 0329A8 80031DA8 AFA5005C */  sw    $a1, 0x5c($sp)
/* 0329AC 80031DAC AFA60060 */  sw    $a2, 0x60($sp)
/* 0329B0 80031DB0 16800011 */  bnez  $s4, .L80031DF8_ovl0
/* 0329B4 80031DB4 AFA70064 */   sw    $a3, 0x64($sp)
/* 0329B8 80031DB8 3C0F8004 */  lui   $t7, %hi(D_8003FBB4) # $t7, 0x8004
/* 0329BC 80031DBC 91EFFBB4 */  lbu   $t7, %lo(D_8003FBB4)($t7)
/* 0329C0 80031DC0 93B80067 */  lbu   $t8, 0x67($sp)
/* 0329C4 80031DC4 3C198004 */  lui   $t9, %hi(D_8003FBB0) # $t9, 0x8004
/* 0329C8 80031DC8 55F8000C */  bnel  $t7, $t8, .L80031DFC_ovl0
/* 0329CC 80031DCC 92490065 */   lbu   $t1, 0x65($s2)
/* 0329D0 80031DD0 8F39FBB0 */  lw    $t9, %lo(D_8003FBB0)($t9)
/* 0329D4 80031DD4 8C880008 */  lw    $t0, 8($a0)
/* 0329D8 80031DD8 3C04800A */  lui   $a0, %hi(D_80098D00) # $a0, 0x800a
/* 0329DC 80031DDC 24848D00 */  addiu $a0, %lo(D_80098D00) # addiu $a0, $a0, -0x7300
/* 0329E0 80031DE0 57280006 */  bnel  $t9, $t0, .L80031DFC_ovl0
/* 0329E4 80031DE4 92490065 */   lbu   $t1, 0x65($s2)
/* 0329E8 80031DE8 0C00D340 */  jal   bcopy
/* 0329EC 80031DEC 24060100 */   li    $a2, 256
/* 0329F0 80031DF0 10000091 */  b     .L80032038_ovl0
/* 0329F4 80031DF4 00001025 */   move  $v0, $zero
.L80031DF8_ovl0:
/* 0329F8 80031DF8 92490065 */  lbu   $t1, 0x65($s2)
.L80031DFC_ovl0:
/* 0329FC 80031DFC 02402025 */  move  $a0, $s2
/* 032A00 80031E00 51200008 */  beql  $t1, $zero, .L80031E24_ovl0
/* 032A04 80031E04 93A30067 */   lbu   $v1, 0x67($sp)
/* 032A08 80031E08 0C00D728 */  jal   func_80035CA0
/* 032A0C 80031E0C 00002825 */   move  $a1, $zero
/* 032A10 80031E10 50400004 */  beql  $v0, $zero, .L80031E24_ovl0
/* 032A14 80031E14 93A30067 */   lbu   $v1, 0x67($sp)
/* 032A18 80031E18 10000088 */  b     .L8003203C_ovl0
/* 032A1C 80031E1C 8FBF0034 */   lw    $ra, 0x34($sp)
/* 032A20 80031E20 93A30067 */  lbu   $v1, 0x67($sp)
.L80031E24_ovl0:
/* 032A24 80031E24 24020001 */  li    $v0, 1
/* 032A28 80031E28 240A0001 */  li    $t2, 1
/* 032A2C 80031E2C 58600004 */  blezl $v1, .L80031E40_ovl0
/* 032A30 80031E30 8E4B0060 */   lw    $t3, 0x60($s2)
/* 032A34 80031E34 10000003 */  b     .L80031E44_ovl0
/* 032A38 80031E38 AFAA0048 */   sw    $t2, 0x48($sp)
/* 032A3C 80031E3C 8E4B0060 */  lw    $t3, 0x60($s2)
.L80031E40_ovl0:
/* 032A40 80031E40 AFAB0048 */  sw    $t3, 0x48($sp)
.L80031E44_ovl0:
/* 032A44 80031E44 1454000C */  bne   $v0, $s4, .L80031E78_ovl0
/* 032A48 80031E48 8FAD0048 */   lw    $t5, 0x48($sp)
/* 032A4C 80031E4C 8FAC005C */  lw    $t4, 0x5c($sp)
/* 032A50 80031E50 000D2823 */  negu  $a1, $t5
/* 032A54 80031E54 00057840 */  sll   $t7, $a1, 1
/* 032A58 80031E58 000D7040 */  sll   $t6, $t5, 1
/* 032A5C 80031E5C 25E50100 */  addiu $a1, $t7, 0x100
/* 032A60 80031E60 AFA3003C */  sw    $v1, 0x3c($sp)
/* 032A64 80031E64 0C00C538 */  jal   func_800314E0
/* 032A68 80031E68 018E2021 */   addu  $a0, $t4, $t6
/* 032A6C 80031E6C 8FB8005C */  lw    $t8, 0x5c($sp)
/* 032A70 80031E70 8FA3003C */  lw    $v1, 0x3c($sp)
/* 032A74 80031E74 A3020001 */  sb    $v0, 1($t8)
.L80031E78_ovl0:
/* 032A78 80031E78 00008025 */  move  $s0, $zero
/* 032A7C 80031E7C 8FB1005C */  lw    $s1, 0x5c($sp)
/* 032A80 80031E80 000398C0 */  sll   $s3, $v1, 3
.L80031E84_ovl0:
/* 032A84 80031E84 24020001 */  li    $v0, 1
/* 032A88 80031E88 14540016 */  bne   $v0, $s4, .L80031EE4_ovl0
/* 032A8C 80031E8C 8E450008 */   lw    $a1, 8($s2)
/* 032A90 80031E90 8E590054 */  lw    $t9, 0x54($s2)
/* 032A94 80031E94 8E440004 */  lw    $a0, 4($s2)
/* 032A98 80031E98 AFA00010 */  sw    $zero, 0x10($sp)
/* 032A9C 80031E9C 03334021 */  addu  $t0, $t9, $s3
/* 032AA0 80031EA0 01103021 */  addu  $a2, $t0, $s0
/* 032AA4 80031EA4 30C9FFFF */  andi  $t1, $a2, 0xffff
/* 032AA8 80031EA8 01203025 */  move  $a2, $t1
/* 032AAC 80031EAC 0C00DC34 */  jal   func_800370D0
/* 032AB0 80031EB0 02203825 */   move  $a3, $s1
/* 032AB4 80031EB4 8E4A0058 */  lw    $t2, 0x58($s2)
/* 032AB8 80031EB8 8E440004 */  lw    $a0, 4($s2)
/* 032ABC 80031EBC 8E450008 */  lw    $a1, 8($s2)
/* 032AC0 80031EC0 01535821 */  addu  $t3, $t2, $s3
/* 032AC4 80031EC4 01703021 */  addu  $a2, $t3, $s0
/* 032AC8 80031EC8 30CCFFFF */  andi  $t4, $a2, 0xffff
/* 032ACC 80031ECC 01803025 */  move  $a2, $t4
/* 032AD0 80031ED0 AFA00010 */  sw    $zero, 0x10($sp)
/* 032AD4 80031ED4 0C00DC34 */  jal   func_800370D0
/* 032AD8 80031ED8 02203825 */   move  $a3, $s1
/* 032ADC 80031EDC 1000000A */  b     .L80031F08_ovl0
/* 032AE0 80031EE0 00401825 */   move  $v1, $v0
.L80031EE4_ovl0:
/* 032AE4 80031EE4 8E4E0054 */  lw    $t6, 0x54($s2)
/* 032AE8 80031EE8 8E440004 */  lw    $a0, 4($s2)
/* 032AEC 80031EEC 02203825 */  move  $a3, $s1
/* 032AF0 80031EF0 01D36821 */  addu  $t5, $t6, $s3
/* 032AF4 80031EF4 01B03021 */  addu  $a2, $t5, $s0
/* 032AF8 80031EF8 30CFFFFF */  andi  $t7, $a2, 0xffff
/* 032AFC 80031EFC 0C00DCC8 */  jal   func_80037320
/* 032B00 80031F00 01E03025 */   move  $a2, $t7
/* 032B04 80031F04 00401825 */  move  $v1, $v0
.L80031F08_ovl0:
/* 032B08 80031F08 10400003 */  beqz  $v0, .L80031F18_ovl0
/* 032B0C 80031F0C 26100001 */   addiu $s0, $s0, 1
/* 032B10 80031F10 10000049 */  b     .L80032038_ovl0
/* 032B14 80031F14 00601025 */   move  $v0, $v1
.L80031F18_ovl0:
/* 032B18 80031F18 2A010008 */  slti  $at, $s0, 8
/* 032B1C 80031F1C 1420FFD9 */  bnez  $at, .L80031E84_ovl0
/* 032B20 80031F20 26310020 */   addiu $s1, $s1, 0x20
/* 032B24 80031F24 16800038 */  bnez  $s4, .L80032008_ovl0
/* 032B28 80031F28 8FB90048 */   lw    $t9, 0x48($sp)
/* 032B2C 80031F2C 8FB8005C */  lw    $t8, 0x5c($sp)
/* 032B30 80031F30 00192823 */  negu  $a1, $t9
/* 032B34 80031F34 00054840 */  sll   $t1, $a1, 1
/* 032B38 80031F38 00194040 */  sll   $t0, $t9, 1
/* 032B3C 80031F3C 25250100 */  addiu $a1, $t1, 0x100
/* 032B40 80031F40 0308A021 */  addu  $s4, $t8, $t0
/* 032B44 80031F44 02802025 */  move  $a0, $s4
/* 032B48 80031F48 0C00C538 */  jal   func_800314E0
/* 032B4C 80031F4C AFA5003C */   sw    $a1, 0x3c($sp)
/* 032B50 80031F50 8FAB005C */  lw    $t3, 0x5c($sp)
/* 032B54 80031F54 304A00FF */  andi  $t2, $v0, 0xff
/* 032B58 80031F58 00008025 */  move  $s0, $zero
/* 032B5C 80031F5C 916C0001 */  lbu   $t4, 1($t3)
/* 032B60 80031F60 01608825 */  move  $s1, $t3
/* 032B64 80031F64 514C0029 */  beql  $t2, $t4, .L8003200C_ovl0
/* 032B68 80031F68 93AB0067 */   lbu   $t3, 0x67($sp)
.L80031F6C_ovl0:
/* 032B6C 80031F6C 8E4E0058 */  lw    $t6, 0x58($s2)
/* 032B70 80031F70 8E440004 */  lw    $a0, 4($s2)
/* 032B74 80031F74 8E450008 */  lw    $a1, 8($s2)
/* 032B78 80031F78 01D36821 */  addu  $t5, $t6, $s3
/* 032B7C 80031F7C 01B03021 */  addu  $a2, $t5, $s0
/* 032B80 80031F80 30CFFFFF */  andi  $t7, $a2, 0xffff
/* 032B84 80031F84 01E03025 */  move  $a2, $t7
/* 032B88 80031F88 0C00DCC8 */  jal   func_80037320
/* 032B8C 80031F8C 02203825 */   move  $a3, $s1
/* 032B90 80031F90 26100001 */  addiu $s0, $s0, 1
/* 032B94 80031F94 2A010008 */  slti  $at, $s0, 8
/* 032B98 80031F98 1420FFF4 */  bnez  $at, .L80031F6C_ovl0
/* 032B9C 80031F9C 26310020 */   addiu $s1, $s1, 0x20
/* 032BA0 80031FA0 02802025 */  move  $a0, $s4
/* 032BA4 80031FA4 0C00C538 */  jal   func_800314E0
/* 032BA8 80031FA8 8FA5003C */   lw    $a1, 0x3c($sp)
/* 032BAC 80031FAC 8FA8005C */  lw    $t0, 0x5c($sp)
/* 032BB0 80031FB0 305800FF */  andi  $t8, $v0, 0xff
/* 032BB4 80031FB4 00008025 */  move  $s0, $zero
/* 032BB8 80031FB8 91190001 */  lbu   $t9, 1($t0)
/* 032BBC 80031FBC 8FB1005C */  lw    $s1, 0x5c($sp)
/* 032BC0 80031FC0 13190003 */  beq   $t8, $t9, .L80031FD0_ovl0
/* 032BC4 80031FC4 00000000 */   nop   
/* 032BC8 80031FC8 1000001B */  b     .L80032038_ovl0
/* 032BCC 80031FCC 24020003 */   li    $v0, 3
.L80031FD0_ovl0:
/* 032BD0 80031FD0 8E490054 */  lw    $t1, 0x54($s2)
/* 032BD4 80031FD4 8E440004 */  lw    $a0, 4($s2)
/* 032BD8 80031FD8 8E450008 */  lw    $a1, 8($s2)
/* 032BDC 80031FDC 01335021 */  addu  $t2, $t1, $s3
/* 032BE0 80031FE0 01503021 */  addu  $a2, $t2, $s0
/* 032BE4 80031FE4 30CCFFFF */  andi  $t4, $a2, 0xffff
/* 032BE8 80031FE8 01803025 */  move  $a2, $t4
/* 032BEC 80031FEC AFA00010 */  sw    $zero, 0x10($sp)
/* 032BF0 80031FF0 0C00DC34 */  jal   func_800370D0
/* 032BF4 80031FF4 02203825 */   move  $a3, $s1
/* 032BF8 80031FF8 26100001 */  addiu $s0, $s0, 1
/* 032BFC 80031FFC 24010008 */  li    $at, 8
/* 032C00 80032000 1601FFF3 */  bne   $s0, $at, .L80031FD0_ovl0
/* 032C04 80032004 26310020 */   addiu $s1, $s1, 0x20
.L80032008_ovl0:
/* 032C08 80032008 93AB0067 */  lbu   $t3, 0x67($sp)
.L8003200C_ovl0:
/* 032C0C 8003200C 3C018004 */  lui   $at, %hi(D_8003FBB4) # $at, 0x8004
/* 032C10 80032010 3C05800A */  lui   $a1, %hi(D_80098D00) # $a1, 0x800a
/* 032C14 80032014 24A58D00 */  addiu $a1, %lo(D_80098D00) # addiu $a1, $a1, -0x7300
/* 032C18 80032018 8FA4005C */  lw    $a0, 0x5c($sp)
/* 032C1C 8003201C 24060100 */  li    $a2, 256
/* 032C20 80032020 0C00D340 */  jal   bcopy
/* 032C24 80032024 A02BFBB4 */   sb    $t3, %lo(D_8003FBB4)($at)
/* 032C28 80032028 8E4E0008 */  lw    $t6, 8($s2)
/* 032C2C 8003202C 3C018004 */  lui   $at, %hi(D_8003FBB0) # $at, 0x8004
/* 032C30 80032030 00001025 */  move  $v0, $zero
/* 032C34 80032034 AC2EFBB0 */  sw    $t6, %lo(D_8003FBB0)($at)
.L80032038_ovl0:
/* 032C38 80032038 8FBF0034 */  lw    $ra, 0x34($sp)
.L8003203C_ovl0:
/* 032C3C 8003203C 8FB00020 */  lw    $s0, 0x20($sp)
/* 032C40 80032040 8FB10024 */  lw    $s1, 0x24($sp)
/* 032C44 80032044 8FB20028 */  lw    $s2, 0x28($sp)
/* 032C48 80032048 8FB3002C */  lw    $s3, 0x2c($sp)
/* 032C4C 8003204C 8FB40030 */  lw    $s4, 0x30($sp)
/* 032C50 80032050 03E00008 */  jr    $ra
/* 032C54 80032054 27BD0058 */   addiu $sp, $sp, 0x58

glabel func_80032058
/* 032C58 80032058 00000000 */  nop   
/* 032C5C 8003205C 00000000 */  nop   
/* 032C60 80032060 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 032C64 80032064 AFBF0014 */  sw    $ra, 0x14($sp)
/* 032C68 80032068 0C00BD18 */  jal   __osSiGetAccess
/* 032C6C 8003206C AFA40030 */   sw    $a0, 0x30($sp)
/* 032C70 80032070 8FA40030 */  lw    $a0, 0x30($sp)
/* 032C74 80032074 0C00BE8D */  jal   __osEepStatus
/* 032C78 80032078 27A50024 */   addiu $a1, $sp, 0x24
/* 032C7C 8003207C 10400003 */  beqz  $v0, .L8003208C_ovl0
/* 032C80 80032080 97AE0024 */   lhu   $t6, 0x24($sp)
/* 032C84 80032084 1000000B */  b     .L800320B4_ovl0
/* 032C88 80032088 00001825 */   move  $v1, $zero
.L8003208C_ovl0:
/* 032C8C 8003208C 31CFC000 */  andi  $t7, $t6, 0xc000
/* 032C90 80032090 34018000 */  li    $at, 32768
/* 032C94 80032094 11E10005 */  beq   $t7, $at, .L800320AC_ovl0
/* 032C98 80032098 3401C000 */   li    $at, 49152
/* 032C9C 8003209C 11E10005 */  beq   $t7, $at, .L800320B4_ovl0
/* 032CA0 800320A0 24030002 */   li    $v1, 2
/* 032CA4 800320A4 10000003 */  b     .L800320B4_ovl0
/* 032CA8 800320A8 00001825 */   move  $v1, $zero
.L800320AC_ovl0:
/* 032CAC 800320AC 10000001 */  b     .L800320B4_ovl0
/* 032CB0 800320B0 24030001 */   li    $v1, 1
.L800320B4_ovl0:
/* 032CB4 800320B4 0C00BD29 */  jal   __osSiRelAccess
/* 032CB8 800320B8 AFA3002C */   sw    $v1, 0x2c($sp)
/* 032CBC 800320BC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 032CC0 800320C0 8FA2002C */  lw    $v0, 0x2c($sp)
/* 032CC4 800320C4 27BD0030 */  addiu $sp, $sp, 0x30
/* 032CC8 800320C8 03E00008 */  jr    $ra
/* 032CCC 800320CC 00000000 */   nop   

glabel func_800320D0
/* 032CD0 800320D0 27BDFF88 */  addiu $sp, $sp, -0x78
/* 032CD4 800320D4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 032CD8 800320D8 AFBE0038 */  sw    $fp, 0x38($sp)
/* 032CDC 800320DC AFB70034 */  sw    $s7, 0x34($sp)
/* 032CE0 800320E0 AFB60030 */  sw    $s6, 0x30($sp)
/* 032CE4 800320E4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 032CE8 800320E8 AFB40028 */  sw    $s4, 0x28($sp)
/* 032CEC 800320EC AFB30024 */  sw    $s3, 0x24($sp)
/* 032CF0 800320F0 AFB20020 */  sw    $s2, 0x20($sp)
/* 032CF4 800320F4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 032CF8 800320F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 032CFC 800320FC AFA5007C */  sw    $a1, 0x7c($sp)
/* 032D00 80032100 8C8E0000 */  lw    $t6, ($a0)
/* 032D04 80032104 00809025 */  move  $s2, $a0
/* 032D08 80032108 00E0A825 */  move  $s5, $a3
/* 032D0C 8003210C 31CF0001 */  andi  $t7, $t6, 1
/* 032D10 80032110 30B7FFFF */  andi  $s7, $a1, 0xffff
/* 032D14 80032114 15E00003 */  bnez  $t7, .L80032124_ovl0
/* 032D18 80032118 00C0F025 */   move  $fp, $a2
/* 032D1C 8003211C 1000004A */  b     .L80032248_ovl0
/* 032D20 80032120 24020005 */   li    $v0, 5
.L80032124_ovl0:
/* 032D24 80032124 0C00C72C */  jal   func_80031CB0
/* 032D28 80032128 02402025 */   move  $a0, $s2
/* 032D2C 8003212C 50400004 */  beql  $v0, $zero, .L80032140_ovl0
/* 032D30 80032130 8E580050 */   lw    $t8, 0x50($s2)
/* 032D34 80032134 10000045 */  b     .L8003224C_ovl0
/* 032D38 80032138 8FBF003C */   lw    $ra, 0x3c($sp)
/* 032D3C 8003213C 8E580050 */  lw    $t8, 0x50($s2)
.L80032140_ovl0:
/* 032D40 80032140 00009825 */  move  $s3, $zero
/* 032D44 80032144 27B60050 */  addiu $s6, $sp, 0x50
/* 032D48 80032148 1B00003B */  blez  $t8, .L80032238_ovl0
/* 032D4C 8003214C 8FB40088 */   lw    $s4, 0x88($sp)
/* 032D50 80032150 27B10060 */  addiu $s1, $sp, 0x60
/* 032D54 80032154 27B00054 */  addiu $s0, $sp, 0x54
/* 032D58 80032158 8E59005C */  lw    $t9, 0x5c($s2)
.L8003215C_ovl0:
/* 032D5C 8003215C 8E440004 */  lw    $a0, 4($s2)
/* 032D60 80032160 8E450008 */  lw    $a1, 8($s2)
/* 032D64 80032164 03333021 */  addu  $a2, $t9, $s3
/* 032D68 80032168 30C8FFFF */  andi  $t0, $a2, 0xffff
/* 032D6C 8003216C 01003025 */  move  $a2, $t0
/* 032D70 80032170 0C00DCC8 */  jal   func_80037320
/* 032D74 80032174 02C03825 */   move  $a3, $s6
/* 032D78 80032178 10400003 */  beqz  $v0, .L80032188_ovl0
/* 032D7C 8003217C 00403025 */   move  $a2, $v0
/* 032D80 80032180 10000032 */  b     .L8003224C_ovl0
/* 032D84 80032184 8FBF003C */   lw    $ra, 0x3c($sp)
.L80032188_ovl0:
/* 032D88 80032188 97A90054 */  lhu   $t1, 0x54($sp)
/* 032D8C 8003218C 8FAA0050 */  lw    $t2, 0x50($sp)
/* 032D90 80032190 56E90025 */  bnel  $s7, $t1, .L80032228_ovl0
/* 032D94 80032194 8E580050 */   lw    $t8, 0x50($s2)
/* 032D98 80032198 555E0023 */  bnel  $t2, $fp, .L80032228_ovl0
/* 032D9C 8003219C 8E580050 */   lw    $t8, 0x50($s2)
/* 032DA0 800321A0 12A0000C */  beqz  $s5, .L800321D4_ovl0
/* 032DA4 800321A4 00002025 */   move  $a0, $zero
/* 032DA8 800321A8 27A20050 */  addiu $v0, $sp, 0x50
/* 032DAC 800321AC 02A01825 */  move  $v1, $s5
.L800321B0_ovl0:
/* 032DB0 800321B0 904B0010 */  lbu   $t3, 0x10($v0)
/* 032DB4 800321B4 906C0000 */  lbu   $t4, ($v1)
/* 032DB8 800321B8 24420001 */  addiu $v0, $v0, 1
/* 032DBC 800321BC 116C0003 */  beq   $t3, $t4, .L800321CC_ovl0
/* 032DC0 800321C0 00000000 */   nop   
/* 032DC4 800321C4 10000003 */  b     .L800321D4_ovl0
/* 032DC8 800321C8 24040001 */   li    $a0, 1
.L800321CC_ovl0:
/* 032DCC 800321CC 1451FFF8 */  bne   $v0, $s1, .L800321B0_ovl0
/* 032DD0 800321D0 24630001 */   addiu $v1, $v1, 1
.L800321D4_ovl0:
/* 032DD4 800321D4 1280000D */  beqz  $s4, .L8003220C_ovl0
/* 032DD8 800321D8 00000000 */   nop   
/* 032DDC 800321DC 1480000B */  bnez  $a0, .L8003220C_ovl0
/* 032DE0 800321E0 27A20050 */   addiu $v0, $sp, 0x50
/* 032DE4 800321E4 02801825 */  move  $v1, $s4
.L800321E8_ovl0:
/* 032DE8 800321E8 904D000C */  lbu   $t5, 0xc($v0)
/* 032DEC 800321EC 906E0000 */  lbu   $t6, ($v1)
/* 032DF0 800321F0 24420001 */  addiu $v0, $v0, 1
/* 032DF4 800321F4 11AE0003 */  beq   $t5, $t6, .L80032204_ovl0
/* 032DF8 800321F8 00000000 */   nop   
/* 032DFC 800321FC 10000003 */  b     .L8003220C_ovl0
/* 032E00 80032200 24040001 */   li    $a0, 1
.L80032204_ovl0:
/* 032E04 80032204 1450FFF8 */  bne   $v0, $s0, .L800321E8_ovl0
/* 032E08 80032208 24630001 */   addiu $v1, $v1, 1
.L8003220C_ovl0:
/* 032E0C 8003220C 54800006 */  bnezl $a0, .L80032228_ovl0
/* 032E10 80032210 8E580050 */   lw    $t8, 0x50($s2)
/* 032E14 80032214 8FAF008C */  lw    $t7, 0x8c($sp)
/* 032E18 80032218 00C01025 */  move  $v0, $a2
/* 032E1C 8003221C 1000000A */  b     .L80032248_ovl0
/* 032E20 80032220 ADF30000 */   sw    $s3, ($t7)
/* 032E24 80032224 8E580050 */  lw    $t8, 0x50($s2)
.L80032228_ovl0:
/* 032E28 80032228 26730001 */  addiu $s3, $s3, 1
/* 032E2C 8003222C 0278082A */  slt   $at, $s3, $t8
/* 032E30 80032230 5420FFCA */  bnezl $at, .L8003215C_ovl0
/* 032E34 80032234 8E59005C */   lw    $t9, 0x5c($s2)
.L80032238_ovl0:
/* 032E38 80032238 8FA8008C */  lw    $t0, 0x8c($sp)
/* 032E3C 8003223C 2419FFFF */  li    $t9, -1
/* 032E40 80032240 24020005 */  li    $v0, 5
/* 032E44 80032244 AD190000 */  sw    $t9, ($t0)
.L80032248_ovl0:
/* 032E48 80032248 8FBF003C */  lw    $ra, 0x3c($sp)
.L8003224C_ovl0:
/* 032E4C 8003224C 8FB00018 */  lw    $s0, 0x18($sp)
/* 032E50 80032250 8FB1001C */  lw    $s1, 0x1c($sp)
/* 032E54 80032254 8FB20020 */  lw    $s2, 0x20($sp)
/* 032E58 80032258 8FB30024 */  lw    $s3, 0x24($sp)
/* 032E5C 8003225C 8FB40028 */  lw    $s4, 0x28($sp)
/* 032E60 80032260 8FB5002C */  lw    $s5, 0x2c($sp)
/* 032E64 80032264 8FB60030 */  lw    $s6, 0x30($sp)
/* 032E68 80032268 8FB70034 */  lw    $s7, 0x34($sp)
/* 032E6C 8003226C 8FBE0038 */  lw    $fp, 0x38($sp)
/* 032E70 80032270 03E00008 */  jr    $ra
/* 032E74 80032274 27BD0078 */   addiu $sp, $sp, 0x78

/* 032E78 80032278 00000000 */  nop   
/* 032E7C 8003227C 00000000 */  nop   
glabel osCreatePiManager
/* 032E80 80032280 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 032E84 80032284 AFB00020 */  sw    $s0, 0x20($sp)
/* 032E88 80032288 3C108004 */  lui   $s0, %hi(__osPiDevMgr) # $s0, 0x8004
/* 032E8C 8003228C 2610FBC0 */  addiu $s0, %lo(__osPiDevMgr) # addiu $s0, $s0, -0x440
/* 032E90 80032290 8E0E0000 */  lw    $t6, ($s0)
/* 032E94 80032294 AFBF0024 */  sw    $ra, 0x24($sp)
/* 032E98 80032298 AFA40030 */  sw    $a0, 0x30($sp)
/* 032E9C 8003229C AFA50034 */  sw    $a1, 0x34($sp)
/* 032EA0 800322A0 AFA60038 */  sw    $a2, 0x38($sp)
/* 032EA4 800322A4 15C00050 */  bnez  $t6, .L800323E8_ovl0
/* 032EA8 800322A8 AFA7003C */   sw    $a3, 0x3c($sp)
/* 032EAC 800322AC 0C00C8FF */  jal   func_800323FC
/* 032EB0 800322B0 00000000 */   nop   
/* 032EB4 800322B4 8FA40034 */  lw    $a0, 0x34($sp)
/* 032EB8 800322B8 8FA50038 */  lw    $a1, 0x38($sp)
/* 032EBC 800322BC 0C00CEB8 */  jal   osCreateMesgQueue
/* 032EC0 800322C0 8FA6003C */   lw    $a2, 0x3c($sp)
/* 032EC4 800322C4 3C04800A */  lui   $a0, %hi(D_8009A0A0) # $a0, 0x800a
/* 032EC8 800322C8 3C05800A */  lui   $a1, %hi(D_8009A0B8) # $a1, 0x800a
/* 032ECC 800322CC 24A5A0B8 */  addiu $a1, %lo(D_8009A0B8) # addiu $a1, $a1, -0x5f48
/* 032ED0 800322D0 2484A0A0 */  addiu $a0, %lo(D_8009A0A0) # addiu $a0, $a0, -0x5f60
/* 032ED4 800322D4 0C00CEB8 */  jal   osCreateMesgQueue
/* 032ED8 800322D8 24060001 */   li    $a2, 1
/* 032EDC 800322DC 3C0F8004 */  lui   $t7, %hi(D_8003FBF0) # $t7, 0x8004
/* 032EE0 800322E0 8DEFFBF0 */  lw    $t7, %lo(D_8003FBF0)($t7)
/* 032EE4 800322E4 15E00003 */  bnez  $t7, .L800322F4_ovl0
/* 032EE8 800322E8 00000000 */   nop   
/* 032EEC 800322EC 0C00C91C */  jal   func_80032470
/* 032EF0 800322F0 00000000 */   nop   
.L800322F4_ovl0:
/* 032EF4 800322F4 3C05800A */  lui   $a1, %hi(D_8009A0A0) # $a1, 0x800a
/* 032EF8 800322F8 3C062222 */  lui   $a2, (0x22222222 >> 16) # lui $a2, 0x2222
/* 032EFC 800322FC 34C62222 */  ori   $a2, (0x22222222 & 0xFFFF) # ori $a2, $a2, 0x2222
/* 032F00 80032300 24A5A0A0 */  addiu $a1, %lo(D_8009A0A0) # addiu $a1, $a1, -0x5f60
/* 032F04 80032304 0C00CAAC */  jal   osSetEventMesg
/* 032F08 80032308 24040008 */   li    $a0, 8
/* 032F0C 8003230C 2418FFFF */  li    $t8, -1
/* 032F10 80032310 AFB80028 */  sw    $t8, 0x28($sp)
/* 032F14 80032314 0C00CFF0 */  jal   osGetThreadPri
/* 032F18 80032318 00002025 */   move  $a0, $zero
/* 032F1C 8003231C 8FB90030 */  lw    $t9, 0x30($sp)
/* 032F20 80032320 00002025 */  move  $a0, $zero
/* 032F24 80032324 0059082A */  slt   $at, $v0, $t9
/* 032F28 80032328 10200003 */  beqz  $at, .L80032338_ovl0
/* 032F2C 8003232C 03202825 */   move  $a1, $t9
/* 032F30 80032330 0C00CFB8 */  jal   osSetThreadPri
/* 032F34 80032334 AFA20028 */   sw    $v0, 0x28($sp)
.L80032338_ovl0:
/* 032F38 80032338 0C00D4D8 */  jal   __osDisableInt
/* 032F3C 8003233C 00000000 */   nop   
/* 032F40 80032340 8FA90034 */  lw    $t1, 0x34($sp)
/* 032F44 80032344 8FAF0030 */  lw    $t7, 0x30($sp)
/* 032F48 80032348 3C04800A */  lui   $a0, %hi(D_80098EF0) # $a0, 0x800a
/* 032F4C 8003234C 3C0A800A */  lui   $t2, %hi(D_8009A0A0) # $t2, 0x800a
/* 032F50 80032350 3C0B800A */  lui   $t3, %hi(D_8009A0C8) # $t3, 0x800a
/* 032F54 80032354 3C0C8003 */  lui   $t4, %hi(D_800329D0) # $t4, 0x8003
/* 032F58 80032358 3C0D8003 */  lui   $t5, %hi(osEPiRawStartDma) # $t5, 0x8003
/* 032F5C 8003235C 3C0E800A */  lui   $t6, %hi(D_8009A0A0) # $t6, 0x800a
/* 032F60 80032360 24848EF0 */  addiu $a0, %lo(D_80098EF0) # addiu $a0, $a0, -0x7110
/* 032F64 80032364 24080001 */  li    $t0, 1
/* 032F68 80032368 254AA0A0 */  addiu $t2, %lo(D_8009A0A0) # addiu $t2, $t2, -0x5f60
/* 032F6C 8003236C 256BA0C8 */  addiu $t3, %lo(D_8009A0C8) # addiu $t3, $t3, -0x5f38
/* 032F70 80032370 258C29D0 */  addiu $t4, %lo(D_800329D0) # addiu $t4, $t4, 0x29d0
/* 032F74 80032374 25AD4240 */  addiu $t5, %lo(osEPiRawStartDma) # addiu $t5, $t5, 0x4240
/* 032F78 80032378 25CEA0A0 */  addiu $t6, %lo(D_8009A0A0) # addiu $t6, $t6, -0x5f60
/* 032F7C 8003237C 3C068003 */  lui   $a2, %hi(D_80032540) # $a2, 0x8003
/* 032F80 80032380 AFA2002C */  sw    $v0, 0x2c($sp)
/* 032F84 80032384 AE080000 */  sw    $t0, ($s0)
/* 032F88 80032388 AE040004 */  sw    $a0, 4($s0)
/* 032F8C 8003238C AE0A000C */  sw    $t2, 0xc($s0)
/* 032F90 80032390 AE0B0010 */  sw    $t3, 0x10($s0)
/* 032F94 80032394 AE0C0014 */  sw    $t4, 0x14($s0)
/* 032F98 80032398 AE0D0018 */  sw    $t5, 0x18($s0)
/* 032F9C 8003239C 24C62540 */  addiu $a2, %lo(D_80032540) # addiu $a2, $a2, 0x2540
/* 032FA0 800323A0 AFAE0010 */  sw    $t6, 0x10($sp)
/* 032FA4 800323A4 00002825 */  move  $a1, $zero
/* 032FA8 800323A8 02003825 */  move  $a3, $s0
/* 032FAC 800323AC AE090008 */  sw    $t1, 8($s0)
/* 032FB0 800323B0 0C00BEF8 */  jal   osCreateThread
/* 032FB4 800323B4 AFAF0014 */   sw    $t7, 0x14($sp)
/* 032FB8 800323B8 3C04800A */  lui   $a0, %hi(D_80098EF0) # $a0, 0x800a
/* 032FBC 800323BC 0C00E334 */  jal   osStartThread
/* 032FC0 800323C0 24848EF0 */   addiu $a0, %lo(D_80098EF0) # addiu $a0, $a0, -0x7110
/* 032FC4 800323C4 0C00D4E0 */  jal   __osRestoreInt
/* 032FC8 800323C8 8FA4002C */   lw    $a0, 0x2c($sp)
/* 032FCC 800323CC 8FB80028 */  lw    $t8, 0x28($sp)
/* 032FD0 800323D0 2401FFFF */  li    $at, -1
/* 032FD4 800323D4 00002025 */  move  $a0, $zero
/* 032FD8 800323D8 53010004 */  beql  $t8, $at, .L800323EC_ovl0
/* 032FDC 800323DC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 032FE0 800323E0 0C00CFB8 */  jal   osSetThreadPri
/* 032FE4 800323E4 03002825 */   move  $a1, $t8
.L800323E8_ovl0:
/* 032FE8 800323E8 8FBF0024 */  lw    $ra, 0x24($sp)
.L800323EC_ovl0:
/* 032FEC 800323EC 8FB00020 */  lw    $s0, 0x20($sp)
/* 032FF0 800323F0 27BD0030 */  addiu $sp, $sp, 0x30
/* 032FF4 800323F4 03E00008 */  jr    $ra
/* 032FF8 800323F8 00000000 */   nop   

glabel func_800323FC
/* 032FFC 800323FC 3C0EA460 */  lui   $t6, %hi(D_A4600028) # $t6, 0xa460
/* 033000 80032400 8DCF0014 */  lw    $t7, %lo(D_A4600014)($t6)
/* 033004 80032404 3C02800A */  lui   $v0, %hi(D_80098E00) # $v0, 0x800a
/* 033008 80032408 24428E00 */  addiu $v0, %lo(D_80098E00) # addiu $v0, $v0, -0x7200
/* 03300C 8003240C 3C18A460 */  lui   $t8, %hi(D_A460002C) # $t8, 0xa460
/* 033010 80032410 A04F0005 */  sb    $t7, 5($v0)
/* 033014 80032414 8F190018 */  lw    $t9, %lo(D_A4600018)($t8)
/* 033018 80032418 3C08A460 */  lui   $t0, %hi(D_A4600030) # $t0, 0xa460
/* 03301C 8003241C 3C0AA460 */  lui   $t2, %hi(D_A4600020) # $t2, 0xa460
/* 033020 80032420 A0590008 */  sb    $t9, 8($v0)
/* 033024 80032424 8D09001C */  lw    $t1, %lo(D_A460001C)($t0)
/* 033028 80032428 3C0CA460 */  lui   $t4, %hi(D_A4600024) # $t4, 0xa460
/* 03302C 8003242C 3C03800A */  lui   $v1, %hi(D_80098E78) # $v1, 0x800a
/* 033030 80032430 A0490006 */  sb    $t1, 6($v0)
/* 033034 80032434 8D4B0020 */  lw    $t3, %lo(D_A4600020)($t2)
/* 033038 80032438 A0400009 */  sb    $zero, 9($v0)
/* 03303C 8003243C 24638E78 */  addiu $v1, %lo(D_80098E78) # addiu $v1, $v1, -0x7188
/* 033040 80032440 A04B0007 */  sb    $t3, 7($v0)
/* 033044 80032444 8D8D0024 */  lw    $t5, %lo(D_A4600024)($t4)
/* 033048 80032448 240A0001 */  li    $t2, 1
/* 03304C 8003244C A06D0005 */  sb    $t5, 5($v1)
/* 033050 80032450 8DCF0028 */  lw    $t7, %lo(D_A4600028)($t6)
/* 033054 80032454 A06F0008 */  sb    $t7, 8($v1)
/* 033058 80032458 8F19002C */  lw    $t9, %lo(D_A460002C)($t8)
/* 03305C 8003245C A0790006 */  sb    $t9, 6($v1)
/* 033060 80032460 8D090030 */  lw    $t1, %lo(D_A4600030)($t0)
/* 033064 80032464 A06A0009 */  sb    $t2, 9($v1)
/* 033068 80032468 03E00008 */  jr    $ra
/* 03306C 8003246C A0690007 */   sb    $t1, 7($v1)

glabel func_80032470
/* 033070 80032470 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 033074 80032474 AFBF0014 */  sw    $ra, 0x14($sp)
/* 033078 80032478 240E0001 */  li    $t6, 1
/* 03307C 8003247C 3C018004 */  lui   $at, %hi(D_8003FBF0) # $at, 0x8004
/* 033080 80032480 3C04800A */  lui   $a0, %hi(D_8009A0C8) # $a0, 0x800a
/* 033084 80032484 3C05800A */  lui   $a1, %hi(D_8009A0C0) # $a1, 0x800a
/* 033088 80032488 AC2EFBF0 */  sw    $t6, %lo(D_8003FBF0)($at)
/* 03308C 8003248C 24A5A0C0 */  addiu $a1, %lo(D_8009A0C0) # addiu $a1, $a1, -0x5f40
/* 033090 80032490 2484A0C8 */  addiu $a0, %lo(D_8009A0C8) # addiu $a0, $a0, -0x5f38
/* 033094 80032494 0C00CEB8 */  jal   osCreateMesgQueue
/* 033098 80032498 24060001 */   li    $a2, 1
/* 03309C 8003249C 3C04800A */  lui   $a0, %hi(D_8009A0C8) # $a0, 0x800a
/* 0330A0 800324A0 2484A0C8 */  addiu $a0, %lo(D_8009A0C8) # addiu $a0, $a0, -0x5f38
/* 0330A4 800324A4 00002825 */  move  $a1, $zero
/* 0330A8 800324A8 0C00B4BC */  jal   osSendMesg
/* 0330AC 800324AC 00003025 */   move  $a2, $zero
/* 0330B0 800324B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0330B4 800324B4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0330B8 800324B8 03E00008 */  jr    $ra
/* 0330BC 800324BC 00000000 */   nop   

glabel func_800324C0
/* 0330C0 800324C0 3C0E8004 */  lui   $t6, %hi(D_8003FBF0) # $t6, 0x8004
/* 0330C4 800324C4 8DCEFBF0 */  lw    $t6, %lo(D_8003FBF0)($t6)
/* 0330C8 800324C8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0330CC 800324CC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0330D0 800324D0 15C00003 */  bnez  $t6, .L800324E0_ovl0
/* 0330D4 800324D4 00000000 */   nop   
/* 0330D8 800324D8 0C00C91C */  jal   func_80032470
/* 0330DC 800324DC 00000000 */   nop   
.L800324E0_ovl0:
/* 0330E0 800324E0 3C04800A */  lui   $a0, %hi(D_8009A0C8) # $a0, 0x800a
/* 0330E4 800324E4 2484A0C8 */  addiu $a0, %lo(D_8009A0C8) # addiu $a0, $a0, -0x5f38
/* 0330E8 800324E8 27A5001C */  addiu $a1, $sp, 0x1c
/* 0330EC 800324EC 0C00B540 */  jal   osRecvMesg
/* 0330F0 800324F0 24060001 */   li    $a2, 1
/* 0330F4 800324F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0330F8 800324F8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0330FC 800324FC 03E00008 */  jr    $ra
/* 033100 80032500 00000000 */   nop   

glabel func_80032504
/* 033104 80032504 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 033108 80032508 AFBF0014 */  sw    $ra, 0x14($sp)
/* 03310C 8003250C 3C04800A */  lui   $a0, %hi(D_8009A0C8) # $a0, 0x800a
/* 033110 80032510 2484A0C8 */  addiu $a0, %lo(D_8009A0C8) # addiu $a0, $a0, -0x5f38
/* 033114 80032514 00002825 */  move  $a1, $zero
/* 033118 80032518 0C00B4BC */  jal   osSendMesg
/* 03311C 8003251C 00003025 */   move  $a2, $zero
/* 033120 80032520 8FBF0014 */  lw    $ra, 0x14($sp)
/* 033124 80032524 27BD0018 */  addiu $sp, $sp, 0x18
/* 033128 80032528 03E00008 */  jr    $ra
/* 03312C 8003252C 00000000 */   nop   

/* 033130 80032530 00000000 */  nop   
/* 033134 80032534 00000000 */  nop   
/* 033138 80032538 00000000 */  nop   
/* 03313C 8003253C 00000000 */  nop    

