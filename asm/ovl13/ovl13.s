.set noat
.set noreorder
.set gp=64


.section .text, "ax"

/* 1F3160 801DB1E0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1F3164 801DB1E4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1F3168 801DB1E8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1F316C 801DB1EC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1F3170 801DB1F0 8E0F0000 */  lw    $t7, ($s0)
/* 1F3174 801DB1F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1F3178 801DB1F8 AFB20020 */  sw    $s2, 0x20($sp)
/* 1F317C 801DB1FC AFB1001C */  sw    $s1, 0x1c($sp)
/* 1F3180 801DB200 AFA40028 */  sw    $a0, 0x28($sp)
/* 1F3184 801DB204 8DF80000 */  lw    $t8, ($t7)
/* 1F3188 801DB208 3C08800E */  lui   $t0, 0x800e
/* 1F318C 801DB20C 240EFFFF */  li    $t6, -1
/* 1F3190 801DB210 0018C880 */  sll   $t9, $t8, 2
/* 1F3194 801DB214 01194021 */  addu  $t0, $t0, $t9
/* 1F3198 801DB218 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 1F319C 801DB21C 3C09801E */  lui   $t1, %hi(D_801DB358) # $t1, 0x801e
/* 1F31A0 801DB220 3C01800E */  lui   $at, 0x800e
/* 1F31A4 801DB224 A10E0039 */  sb    $t6, 0x39($t0)
/* 1F31A8 801DB228 8E0A0000 */  lw    $t2, ($s0)
/* 1F31AC 801DB22C 2529B358 */  addiu $t1, %lo(D_801DB358) # addiu $t1, $t1, -0x4ca8
/* 1F31B0 801DB230 3C04801E */  lui   $a0, %hi(D_801DB2D8) # $a0, 0x801e
/* 1F31B4 801DB234 8D4B0000 */  lw    $t3, ($t2)
/* 1F31B8 801DB238 2484B2D8 */  addiu $a0, %lo(D_801DB2D8) # addiu $a0, $a0, -0x4d28
/* 1F31BC 801DB23C 000B6080 */  sll   $t4, $t3, 2
/* 1F31C0 801DB240 002C0821 */  addu  $at, $at, $t4
/* 1F31C4 801DB244 0C068354 */  jal   func_801A0D50_ovl13
/* 1F31C8 801DB248 AC29F150 */   sw    $t1, -0xeb0($at)
/* 1F31CC 801DB24C 8E020000 */  lw    $v0, ($s0)
/* 1F31D0 801DB250 3C01800F */  lui   $at, 0x800f
/* 1F31D4 801DB254 3C04800E */  lui   $a0, 0x800e
/* 1F31D8 801DB258 8C4D0000 */  lw    $t5, ($v0)
/* 1F31DC 801DB25C 3C06801E */  lui   $a2, %hi(D_801E5A80) # $a2, 0x801e
/* 1F31E0 801DB260 24C65A80 */  addiu $a2, %lo(D_801E5A80) # addiu $a2, $a2, 0x5a80
/* 1F31E4 801DB264 000D7880 */  sll   $t7, $t5, 2
/* 1F31E8 801DB268 002F0821 */  addu  $at, $at, $t7
/* 1F31EC 801DB26C AC208920 */  sw    $zero, -0x76e0($at)
/* 1F31F0 801DB270 8C580000 */  lw    $t8, ($v0)
/* 1F31F4 801DB274 24050006 */  li    $a1, 6
/* 1F31F8 801DB278 00982021 */  addu  $a0, $a0, $t8
/* 1F31FC 801DB27C 0C02911F */  jal   func_800A447C_ovl13
/* 1F3200 801DB280 90847880 */   lbu   $a0, 0x7880($a0)
/* 1F3204 801DB284 3C12801E */  lui   $s2, %hi(D_801E5A98) # $s2, 0x801e
/* 1F3208 801DB288 3C11800E */  lui   $s1, %hi(D_800DDC50) # $s1, 0x800e
/* 1F320C 801DB28C 2631DC50 */  addiu $s1, %lo(D_800DDC50) # addiu $s1, $s1, -0x23b0
/* 1F3210 801DB290 26525A98 */  addiu $s2, %lo(D_801E5A98) # addiu $s2, $s2, 0x5a98
/* 1F3214 801DB294 8E190000 */  lw    $t9, ($s0)
.L801DB298_ovl13:
/* 1F3218 801DB298 24050010 */  li    $a1, 16
/* 1F321C 801DB29C 02403025 */  move  $a2, $s2
/* 1F3220 801DB2A0 8F2E0000 */  lw    $t6, ($t9)
/* 1F3224 801DB2A4 000E4080 */  sll   $t0, $t6, 2
/* 1F3228 801DB2A8 02285021 */  addu  $t2, $s1, $t0
/* 1F322C 801DB2AC 0C02911F */  jal   func_800A447C_ovl13
/* 1F3230 801DB2B0 8D440000 */   lw    $a0, ($t2)
/* 1F3234 801DB2B4 1000FFF8 */  b     .L801DB298_ovl13
/* 1F3238 801DB2B8 8E190000 */   lw    $t9, ($s0)
/* 1F323C 801DB2BC 00000000 */  nop   
/* 1F3240 801DB2C0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1F3244 801DB2C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 1F3248 801DB2C8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1F324C 801DB2CC 8FB20020 */  lw    $s2, 0x20($sp)
/* 1F3250 801DB2D0 03E00008 */  jr    $ra
/* 1F3254 801DB2D4 27BD0028 */   addiu $sp, $sp, 0x28

/* 1F3258 801DB2D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1F325C 801DB2DC AFB20020 */  sw    $s2, 0x20($sp)
/* 1F3260 801DB2E0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1F3264 801DB2E4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1F3268 801DB2E8 3C10800E */  lui   $s0, %hi(D_800DDC50) # $s0, 0x800e
/* 1F326C 801DB2EC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1F3270 801DB2F0 3C12801E */  lui   $s2, %hi(D_801E5A98) # $s2, 0x801e
/* 1F3274 801DB2F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1F3278 801DB2F8 AFA40028 */  sw    $a0, 0x28($sp)
/* 1F327C 801DB2FC 26525A98 */  addiu $s2, %lo(D_801E5A98) # addiu $s2, $s2, 0x5a98
/* 1F3280 801DB300 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1F3284 801DB304 2610DC50 */  addiu $s0, %lo(D_800DDC50) # addiu $s0, $s0, -0x23b0
/* 1F3288 801DB308 8E2E0000 */  lw    $t6, ($s1)
.L801DB30C_ovl13:
/* 1F328C 801DB30C 24050010 */  li    $a1, 16
/* 1F3290 801DB310 02403025 */  move  $a2, $s2
/* 1F3294 801DB314 8DCF0000 */  lw    $t7, ($t6)
/* 1F3298 801DB318 000FC080 */  sll   $t8, $t7, 2
/* 1F329C 801DB31C 0218C821 */  addu  $t9, $s0, $t8
/* 1F32A0 801DB320 0C02911F */  jal   func_800A447C_ovl13
/* 1F32A4 801DB324 8F240000 */   lw    $a0, ($t9)
/* 1F32A8 801DB328 1000FFF8 */  b     .L801DB30C_ovl13
/* 1F32AC 801DB32C 8E2E0000 */   lw    $t6, ($s1)
/* 1F32B0 801DB330 00000000 */  nop   
/* 1F32B4 801DB334 00000000 */  nop   
/* 1F32B8 801DB338 00000000 */  nop   
/* 1F32BC 801DB33C 00000000 */  nop   
/* 1F32C0 801DB340 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1F32C4 801DB344 8FB00018 */  lw    $s0, 0x18($sp)
/* 1F32C8 801DB348 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1F32CC 801DB34C 8FB20020 */  lw    $s2, 0x20($sp)
/* 1F32D0 801DB350 03E00008 */  jr    $ra
/* 1F32D4 801DB354 27BD0028 */   addiu $sp, $sp, 0x28

/* 1F32D8 801DB358 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F32DC 801DB35C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F32E0 801DB360 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F32E4 801DB364 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F32E8 801DB368 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F32EC 801DB36C 8DCF0000 */  lw    $t7, ($t6)
/* 1F32F0 801DB370 3C04800E */  lui   $a0, 0x800e
/* 1F32F4 801DB374 3C06801E */  lui   $a2, %hi(D_801E5AD8) # $a2, 0x801e
/* 1F32F8 801DB378 000FC080 */  sll   $t8, $t7, 2
/* 1F32FC 801DB37C 00982021 */  addu  $a0, $a0, $t8
/* 1F3300 801DB380 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 1F3304 801DB384 24C65AD8 */  addiu $a2, %lo(D_801E5AD8) # addiu $a2, $a2, 0x5ad8
/* 1F3308 801DB388 0C02911F */  jal   func_800A447C_ovl13
/* 1F330C 801DB38C 2405000F */   li    $a1, 15
/* 1F3310 801DB390 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F3314 801DB394 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F3318 801DB398 03E00008 */  jr    $ra
/* 1F331C 801DB39C 00000000 */   nop   

/* 1F3320 801DB3A0 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1F3324 801DB3A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1F3328 801DB3A8 3C108013 */  lui   $s0, %hi(D_801290D0) # $s0, 0x8013
/* 1F332C 801DB3AC 261090D0 */  addiu $s0, %lo(D_801290D0) # addiu $s0, $s0, -0x6f30
/* 1F3330 801DB3B0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 1F3334 801DB3B4 44806000 */  mtc1  $zero, $f12
/* 1F3338 801DB3B8 AFBE0038 */  sw    $fp, 0x38($sp)
/* 1F333C 801DB3BC AFB70034 */  sw    $s7, 0x34($sp)
/* 1F3340 801DB3C0 AFB60030 */  sw    $s6, 0x30($sp)
/* 1F3344 801DB3C4 AFB5002C */  sw    $s5, 0x2c($sp)
/* 1F3348 801DB3C8 AFB40028 */  sw    $s4, 0x28($sp)
/* 1F334C 801DB3CC AFB30024 */  sw    $s3, 0x24($sp)
/* 1F3350 801DB3D0 AFB20020 */  sw    $s2, 0x20($sp)
/* 1F3354 801DB3D4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1F3358 801DB3D8 AFA40040 */  sw    $a0, 0x40($sp)
/* 1F335C 801DB3DC 0C02BB60 */  jal   func_800AED80_ovl13
/* 1F3360 801DB3E0 8E050000 */   lw    $a1, ($s0)
/* 1F3364 801DB3E4 3C040007 */  lui   $a0, (0x00070050 >> 16) # lui $a0, 7
/* 1F3368 801DB3E8 34840050 */  ori   $a0, (0x00070050 & 0xFFFF) # ori $a0, $a0, 0x50
/* 1F336C 801DB3EC 24050000 */  li    $a1, 0
/* 1F3370 801DB3F0 0C02A80E */  jal   func_800AA038_ovl13
/* 1F3374 801DB3F4 8E060000 */   lw    $a2, ($s0)
/* 1F3378 801DB3F8 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 1F337C 801DB3FC 0C066ED6 */  jal   func_8019BB58_ovl13
/* 1F3380 801DB400 AC207098 */   sw    $zero, %lo(D_800D7098)($at)
/* 1F3384 801DB404 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1F3388 801DB408 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1F338C 801DB40C 8E2E0000 */  lw    $t6, ($s1)
/* 1F3390 801DB410 24040079 */  li    $a0, 121
/* 1F3394 801DB414 0C02C67D */  jal   func_800B19F4
/* 1F3398 801DB418 8DC50000 */   lw    $a1, ($t6)
/* 1F339C 801DB41C 00002025 */  move  $a0, $zero
/* 1F33A0 801DB420 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1F33A4 801DB424 8E250000 */   lw    $a1, ($s1)
/* 1F33A8 801DB428 8E260000 */  lw    $a2, ($s1)
/* 1F33AC 801DB42C 3C0F800B */  lui   $t7, %hi(D_800B7138) # $t7, 0x800b
/* 1F33B0 801DB430 3C01800E */  lui   $at, 0x800e
/* 1F33B4 801DB434 8CD80000 */  lw    $t8, ($a2)
/* 1F33B8 801DB438 25EF7138 */  addiu $t7, %lo(D_800B7138) # addiu $t7, $t7, 0x7138
/* 1F33BC 801DB43C 3C04800E */  lui   $a0, 0x800e
/* 1F33C0 801DB440 0018C880 */  sll   $t9, $t8, 2
/* 1F33C4 801DB444 00390821 */  addu  $at, $at, $t9
/* 1F33C8 801DB448 AC2FEF90 */  sw    $t7, -0x1070($at)
/* 1F33CC 801DB44C 8CC80000 */  lw    $t0, ($a2)
/* 1F33D0 801DB450 3C05800B */  lui   $a1, %hi(D_800B1434) # $a1, 0x800b
/* 1F33D4 801DB454 24A51434 */  addiu $a1, %lo(D_800B1434) # addiu $a1, $a1, 0x1434
/* 1F33D8 801DB458 00084880 */  sll   $t1, $t0, 2
/* 1F33DC 801DB45C 00892021 */  addu  $a0, $a0, $t1
/* 1F33E0 801DB460 0C02C7DA */  jal   func_800B1F68_ovl13
/* 1F33E4 801DB464 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 1F33E8 801DB468 8E2A0000 */  lw    $t2, ($s1)
/* 1F33EC 801DB46C 3C01800E */  lui   $at, 0x800e
/* 1F33F0 801DB470 8D4B0000 */  lw    $t3, ($t2)
/* 1F33F4 801DB474 000B6080 */  sll   $t4, $t3, 2
/* 1F33F8 801DB478 002C0821 */  addu  $at, $at, $t4
/* 1F33FC 801DB47C 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F3400 801DB480 AC20F150 */   sw    $zero, -0xeb0($at)
/* 1F3404 801DB484 8E260000 */  lw    $a2, ($s1)
/* 1F3408 801DB488 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 1F340C 801DB48C 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 1F3410 801DB490 8CCD0000 */  lw    $t5, ($a2)
/* 1F3414 801DB494 3C12800F */  lui   $s2, %hi(D_800EBBE0) # $s2, 0x800f
/* 1F3418 801DB498 2652BBE0 */  addiu $s2, %lo(D_800EBBE0) # addiu $s2, $s2, -0x4420
/* 1F341C 801DB49C 000D7080 */  sll   $t6, $t5, 2
/* 1F3420 801DB4A0 020EC021 */  addu  $t8, $s0, $t6
/* 1F3424 801DB4A4 AF000000 */  sw    $zero, ($t8)
/* 1F3428 801DB4A8 8CC50000 */  lw    $a1, ($a2)
/* 1F342C 801DB4AC 241E0001 */  li    $fp, 1
/* 1F3430 801DB4B0 24170002 */  li    $s7, 2
/* 1F3434 801DB4B4 00052880 */  sll   $a1, $a1, 2
/* 1F3438 801DB4B8 02057821 */  addu  $t7, $s0, $a1
/* 1F343C 801DB4BC 8DE30000 */  lw    $v1, ($t7)
/* 1F3440 801DB4C0 24160005 */  li    $s6, 5
/* 1F3444 801DB4C4 24150006 */  li    $s5, 6
/* 1F3448 801DB4C8 24140007 */  li    $s4, 7
/* 1F344C 801DB4CC 24130004 */  li    $s3, 4
.L801DB4D0_ovl13:
/* 1F3450 801DB4D0 2C610008 */  sltiu $at, $v1, 8
.L801DB4D4_ovl13:
/* 1F3454 801DB4D4 102000CD */  beqz  $at, .L801DB80C_ovl13
/* 1F3458 801DB4D8 0003C880 */   sll   $t9, $v1, 2
.L801DB4DC_ovl13:
/* 1F345C 801DB4DC 3C01801E */  lui   $at, 0x801e
/* 1F3460 801DB4E0 00390821 */  addu  $at, $at, $t9
/* 1F3464 801DB4E4 8C395C30 */  lw    $t9, 0x5c30($at)
/* 1F3468 801DB4E8 03200008 */  jr    $t9
/* 1F346C 801DB4EC 00000000 */   nop   
/* 1F3470 801DB4F0 24040002 */  li    $a0, 2
/* 1F3474 801DB4F4 0C06783A */  jal   func_8019E0E8_ovl13
/* 1F3478 801DB4F8 24050001 */   li    $a1, 1
/* 1F347C 801DB4FC 8E280000 */  lw    $t0, ($s1)
/* 1F3480 801DB500 3C01800F */  lui   $at, 0x800f
/* 1F3484 801DB504 24040002 */  li    $a0, 2
/* 1F3488 801DB508 8D090000 */  lw    $t1, ($t0)
/* 1F348C 801DB50C 24050003 */  li    $a1, 3
/* 1F3490 801DB510 00095080 */  sll   $t2, $t1, 2
/* 1F3494 801DB514 002A0821 */  addu  $at, $at, $t2
/* 1F3498 801DB518 0C06783A */  jal   func_8019E0E8_ovl13
/* 1F349C 801DB51C AC22C120 */   sw    $v0, -0x3ee0($at)
/* 1F34A0 801DB520 8E260000 */  lw    $a2, ($s1)
/* 1F34A4 801DB524 3C0E800F */  lui   $t6, 0x800f
/* 1F34A8 801DB528 8CCB0000 */  lw    $t3, ($a2)
/* 1F34AC 801DB52C 000B6080 */  sll   $t4, $t3, 2
/* 1F34B0 801DB530 024C6821 */  addu  $t5, $s2, $t4
/* 1F34B4 801DB534 ADA20000 */  sw    $v0, ($t5)
/* 1F34B8 801DB538 8CC50000 */  lw    $a1, ($a2)
/* 1F34BC 801DB53C 00052880 */  sll   $a1, $a1, 2
/* 1F34C0 801DB540 0245C021 */  addu  $t8, $s2, $a1
/* 1F34C4 801DB544 8F0F0000 */  lw    $t7, ($t8)
/* 1F34C8 801DB548 01C57021 */  addu  $t6, $t6, $a1
/* 1F34CC 801DB54C 8DCEC120 */  lw    $t6, -0x3ee0($t6)
/* 1F34D0 801DB550 000FC880 */  sll   $t9, $t7, 2
/* 1F34D4 801DB554 02594021 */  addu  $t0, $s2, $t9
/* 1F34D8 801DB558 AD0E0000 */  sw    $t6, ($t0)
/* 1F34DC 801DB55C 8CC50000 */  lw    $a1, ($a2)
/* 1F34E0 801DB560 00052880 */  sll   $a1, $a1, 2
/* 1F34E4 801DB564 02054821 */  addu  $t1, $s0, $a1
/* 1F34E8 801DB568 8D230000 */  lw    $v1, ($t1)
/* 1F34EC 801DB56C 5460FFD9 */  bnezl $v1, .L801DB4D4_ovl13
/* 1F34F0 801DB570 2C610008 */   sltiu $at, $v1, 8
.L801DB574_ovl13:
/* 1F34F4 801DB574 0C002DAF */  jal   func_8000B6BC
/* 1F34F8 801DB578 03C02025 */   move  $a0, $fp
/* 1F34FC 801DB57C 8E2A0000 */  lw    $t2, ($s1)
/* 1F3500 801DB580 8D450000 */  lw    $a1, ($t2)
/* 1F3504 801DB584 00052880 */  sll   $a1, $a1, 2
/* 1F3508 801DB588 02055821 */  addu  $t3, $s0, $a1
/* 1F350C 801DB58C 8D630000 */  lw    $v1, ($t3)
/* 1F3510 801DB590 1060FFF8 */  beqz  $v1, .L801DB574_ovl13
/* 1F3514 801DB594 00000000 */   nop   
/* 1F3518 801DB598 1000FFCE */  b     .L801DB4D4_ovl13
/* 1F351C 801DB59C 2C610008 */   sltiu $at, $v1, 8
/* 1F3520 801DB5A0 57C3FFCC */  bnel  $fp, $v1, .L801DB4D4_ovl13
/* 1F3524 801DB5A4 2C610008 */   sltiu $at, $v1, 8
.L801DB5A8_ovl13:
/* 1F3528 801DB5A8 0C002DAF */  jal   func_8000B6BC
/* 1F352C 801DB5AC 03C02025 */   move  $a0, $fp
/* 1F3530 801DB5B0 8E2C0000 */  lw    $t4, ($s1)
/* 1F3534 801DB5B4 8D850000 */  lw    $a1, ($t4)
/* 1F3538 801DB5B8 00052880 */  sll   $a1, $a1, 2
/* 1F353C 801DB5BC 02056821 */  addu  $t5, $s0, $a1
/* 1F3540 801DB5C0 8DA30000 */  lw    $v1, ($t5)
/* 1F3544 801DB5C4 13C3FFF8 */  beq   $fp, $v1, .L801DB5A8_ovl13
/* 1F3548 801DB5C8 00000000 */   nop   
/* 1F354C 801DB5CC 1000FFC1 */  b     .L801DB4D4_ovl13
/* 1F3550 801DB5D0 2C610008 */   sltiu $at, $v1, 8
/* 1F3554 801DB5D4 56E3FFBF */  bnel  $s7, $v1, .L801DB4D4_ovl13
/* 1F3558 801DB5D8 2C610008 */   sltiu $at, $v1, 8
.L801DB5DC_ovl13:
/* 1F355C 801DB5DC 0C002DAF */  jal   func_8000B6BC
/* 1F3560 801DB5E0 03C02025 */   move  $a0, $fp
/* 1F3564 801DB5E4 8E380000 */  lw    $t8, ($s1)
/* 1F3568 801DB5E8 8F050000 */  lw    $a1, ($t8)
/* 1F356C 801DB5EC 00052880 */  sll   $a1, $a1, 2
/* 1F3570 801DB5F0 02057821 */  addu  $t7, $s0, $a1
/* 1F3574 801DB5F4 8DE30000 */  lw    $v1, ($t7)
/* 1F3578 801DB5F8 12E3FFF8 */  beq   $s7, $v1, .L801DB5DC_ovl13
/* 1F357C 801DB5FC 00000000 */   nop   
/* 1F3580 801DB600 1000FFB4 */  b     .L801DB4D4_ovl13
/* 1F3584 801DB604 2C610008 */   sltiu $at, $v1, 8
/* 1F3588 801DB608 0245C821 */  addu  $t9, $s2, $a1
/* 1F358C 801DB60C 0C066EEA */  jal   func_8019BBA8_ovl13
/* 1F3590 801DB610 8F240000 */   lw    $a0, ($t9)
/* 1F3594 801DB614 8E2E0000 */  lw    $t6, ($s1)
/* 1F3598 801DB618 8DC80000 */  lw    $t0, ($t6)
/* 1F359C 801DB61C 00084880 */  sll   $t1, $t0, 2
/* 1F35A0 801DB620 02495021 */  addu  $t2, $s2, $t1
/* 1F35A4 801DB624 0C02C640 */  jal   func_800B1900_ovl13
/* 1F35A8 801DB628 95440002 */   lhu   $a0, 2($t2)
/* 1F35AC 801DB62C 24040002 */  li    $a0, 2
/* 1F35B0 801DB630 0C06783A */  jal   func_8019E0E8_ovl13
/* 1F35B4 801DB634 24050004 */   li    $a1, 4
/* 1F35B8 801DB638 8E260000 */  lw    $a2, ($s1)
/* 1F35BC 801DB63C 3C18800F */  lui   $t8, 0x800f
/* 1F35C0 801DB640 3C09800F */  lui   $t1, 0x800f
/* 1F35C4 801DB644 8CCB0000 */  lw    $t3, ($a2)
/* 1F35C8 801DB648 3C014370 */  li    $at, 0x43700000 # 240.000000
/* 1F35CC 801DB64C 44813000 */  mtc1  $at, $f6
/* 1F35D0 801DB650 000B6080 */  sll   $t4, $t3, 2
/* 1F35D4 801DB654 024C6821 */  addu  $t5, $s2, $t4
/* 1F35D8 801DB658 ADA20000 */  sw    $v0, ($t5)
/* 1F35DC 801DB65C 8CC50000 */  lw    $a1, ($a2)
/* 1F35E0 801DB660 3C0B800E */  lui   $t3, %hi(D_800E2790) # $t3, 0x800e
/* 1F35E4 801DB664 256B2790 */  addiu $t3, %lo(D_800E2790) # addiu $t3, $t3, 0x2790
/* 1F35E8 801DB668 00052880 */  sll   $a1, $a1, 2
/* 1F35EC 801DB66C 02457821 */  addu  $t7, $s2, $a1
/* 1F35F0 801DB670 8DF90000 */  lw    $t9, ($t7)
/* 1F35F4 801DB674 0305C021 */  addu  $t8, $t8, $a1
/* 1F35F8 801DB678 8F18C120 */  lw    $t8, -0x3ee0($t8)
/* 1F35FC 801DB67C 00197080 */  sll   $t6, $t9, 2
/* 1F3600 801DB680 024E4021 */  addu  $t0, $s2, $t6
/* 1F3604 801DB684 AD180000 */  sw    $t8, ($t0)
/* 1F3608 801DB688 8CC50000 */  lw    $a1, ($a2)
/* 1F360C 801DB68C 3C01800E */  lui   $at, 0x800e
/* 1F3610 801DB690 00052880 */  sll   $a1, $a1, 2
/* 1F3614 801DB694 01254821 */  addu  $t1, $t1, $a1
/* 1F3618 801DB698 8D29C120 */  lw    $t1, -0x3ee0($t1)
/* 1F361C 801DB69C 02456821 */  addu  $t5, $s2, $a1
/* 1F3620 801DB6A0 8DAF0000 */  lw    $t7, ($t5)
/* 1F3624 801DB6A4 00095080 */  sll   $t2, $t1, 2
/* 1F3628 801DB6A8 014B6021 */  addu  $t4, $t2, $t3
/* 1F362C 801DB6AC C5840000 */  lwc1  $f4, ($t4)
/* 1F3630 801DB6B0 000FC880 */  sll   $t9, $t7, 2
/* 1F3634 801DB6B4 032B7021 */  addu  $t6, $t9, $t3
/* 1F3638 801DB6B8 46062001 */  sub.s $f0, $f4, $f6
/* 1F363C 801DB6BC E5C00000 */  swc1  $f0, ($t6)
/* 1F3640 801DB6C0 8CD80000 */  lw    $t8, ($a2)
/* 1F3644 801DB6C4 00184080 */  sll   $t0, $t8, 2
/* 1F3648 801DB6C8 02484821 */  addu  $t1, $s2, $t0
/* 1F364C 801DB6CC 8D2A0000 */  lw    $t2, ($t1)
/* 1F3650 801DB6D0 000A6080 */  sll   $t4, $t2, 2
/* 1F3654 801DB6D4 002C0821 */  addu  $at, $at, $t4
/* 1F3658 801DB6D8 E4202CD0 */  swc1  $f0, 0x2cd0($at)
/* 1F365C 801DB6DC 8CCD0000 */  lw    $t5, ($a2)
/* 1F3660 801DB6E0 000D7880 */  sll   $t7, $t5, 2
/* 1F3664 801DB6E4 020FC821 */  addu  $t9, $s0, $t7
/* 1F3668 801DB6E8 AF330000 */  sw    $s3, ($t9)
/* 1F366C 801DB6EC 8CC50000 */  lw    $a1, ($a2)
/* 1F3670 801DB6F0 00052880 */  sll   $a1, $a1, 2
/* 1F3674 801DB6F4 02055821 */  addu  $t3, $s0, $a1
/* 1F3678 801DB6F8 1000FF75 */  b     .L801DB4D0_ovl13
/* 1F367C 801DB6FC 8D630000 */   lw    $v1, ($t3)
/* 1F3680 801DB700 5663FF74 */  bnel  $s3, $v1, .L801DB4D4_ovl13
/* 1F3684 801DB704 2C610008 */   sltiu $at, $v1, 8
.L801DB708_ovl13:
/* 1F3688 801DB708 0C002DAF */  jal   func_8000B6BC
/* 1F368C 801DB70C 03C02025 */   move  $a0, $fp
/* 1F3690 801DB710 8E2E0000 */  lw    $t6, ($s1)
/* 1F3694 801DB714 8DC50000 */  lw    $a1, ($t6)
/* 1F3698 801DB718 00052880 */  sll   $a1, $a1, 2
/* 1F369C 801DB71C 0205C021 */  addu  $t8, $s0, $a1
/* 1F36A0 801DB720 8F030000 */  lw    $v1, ($t8)
/* 1F36A4 801DB724 1263FFF8 */  beq   $s3, $v1, .L801DB708_ovl13
/* 1F36A8 801DB728 00000000 */   nop   
/* 1F36AC 801DB72C 1000FF69 */  b     .L801DB4D4_ovl13
/* 1F36B0 801DB730 2C610008 */   sltiu $at, $v1, 8
/* 1F36B4 801DB734 56C3FF67 */  bnel  $s6, $v1, .L801DB4D4_ovl13
/* 1F36B8 801DB738 2C610008 */   sltiu $at, $v1, 8
.L801DB73C_ovl13:
/* 1F36BC 801DB73C 0C002DAF */  jal   func_8000B6BC
/* 1F36C0 801DB740 03C02025 */   move  $a0, $fp
/* 1F36C4 801DB744 8E280000 */  lw    $t0, ($s1)
/* 1F36C8 801DB748 8D050000 */  lw    $a1, ($t0)
/* 1F36CC 801DB74C 00052880 */  sll   $a1, $a1, 2
/* 1F36D0 801DB750 02054821 */  addu  $t1, $s0, $a1
/* 1F36D4 801DB754 8D230000 */  lw    $v1, ($t1)
/* 1F36D8 801DB758 12C3FFF8 */  beq   $s6, $v1, .L801DB73C_ovl13
/* 1F36DC 801DB75C 00000000 */   nop   
/* 1F36E0 801DB760 1000FF5C */  b     .L801DB4D4_ovl13
/* 1F36E4 801DB764 2C610008 */   sltiu $at, $v1, 8
/* 1F36E8 801DB768 02455021 */  addu  $t2, $s2, $a1
/* 1F36EC 801DB76C 0C066EEA */  jal   func_8019BBA8_ovl13
/* 1F36F0 801DB770 8D440000 */   lw    $a0, ($t2)
/* 1F36F4 801DB774 8E2C0000 */  lw    $t4, ($s1)
/* 1F36F8 801DB778 8D8D0000 */  lw    $t5, ($t4)
/* 1F36FC 801DB77C 000D7880 */  sll   $t7, $t5, 2
/* 1F3700 801DB780 024FC821 */  addu  $t9, $s2, $t7
/* 1F3704 801DB784 0C02C640 */  jal   func_800B1900_ovl13
/* 1F3708 801DB788 97240002 */   lhu   $a0, 2($t9)
/* 1F370C 801DB78C 8E2B0000 */  lw    $t3, ($s1)
/* 1F3710 801DB790 8D650000 */  lw    $a1, ($t3)
/* 1F3714 801DB794 00052880 */  sll   $a1, $a1, 2
/* 1F3718 801DB798 02057021 */  addu  $t6, $s0, $a1
/* 1F371C 801DB79C 8DC30000 */  lw    $v1, ($t6)
/* 1F3720 801DB7A0 56A3FF4C */  bnel  $s5, $v1, .L801DB4D4_ovl13
/* 1F3724 801DB7A4 2C610008 */   sltiu $at, $v1, 8
.L801DB7A8_ovl13:
/* 1F3728 801DB7A8 0C002DAF */  jal   func_8000B6BC
/* 1F372C 801DB7AC 03C02025 */   move  $a0, $fp
/* 1F3730 801DB7B0 8E380000 */  lw    $t8, ($s1)
/* 1F3734 801DB7B4 8F050000 */  lw    $a1, ($t8)
/* 1F3738 801DB7B8 00052880 */  sll   $a1, $a1, 2
/* 1F373C 801DB7BC 02054021 */  addu  $t0, $s0, $a1
/* 1F3740 801DB7C0 8D030000 */  lw    $v1, ($t0)
/* 1F3744 801DB7C4 12A3FFF8 */  beq   $s5, $v1, .L801DB7A8_ovl13
/* 1F3748 801DB7C8 00000000 */   nop   
/* 1F374C 801DB7CC 1000FF41 */  b     .L801DB4D4_ovl13
/* 1F3750 801DB7D0 2C610008 */   sltiu $at, $v1, 8
/* 1F3754 801DB7D4 5683FF3F */  bnel  $s4, $v1, .L801DB4D4_ovl13
/* 1F3758 801DB7D8 2C610008 */   sltiu $at, $v1, 8
.L801DB7DC_ovl13:
/* 1F375C 801DB7DC 0C002DAF */  jal   func_8000B6BC
/* 1F3760 801DB7E0 03C02025 */   move  $a0, $fp
/* 1F3764 801DB7E4 8E290000 */  lw    $t1, ($s1)
/* 1F3768 801DB7E8 8D250000 */  lw    $a1, ($t1)
/* 1F376C 801DB7EC 00052880 */  sll   $a1, $a1, 2
/* 1F3770 801DB7F0 02055021 */  addu  $t2, $s0, $a1
/* 1F3774 801DB7F4 8D430000 */  lw    $v1, ($t2)
/* 1F3778 801DB7F8 1283FFF8 */  beq   $s4, $v1, .L801DB7DC_ovl13
/* 1F377C 801DB7FC 00000000 */   nop   
/* 1F3780 801DB800 2C610008 */  sltiu $at, $v1, 8
/* 1F3784 801DB804 5420FF35 */  bnezl $at, .L801DB4DC_ovl13
/* 1F3788 801DB808 0003C880 */   sll   $t9, $v1, 2
.L801DB80C_ovl13:
/* 1F378C 801DB80C 0C02BE85 */  jal   func_800AFA14_ovl13
/* 1F3790 801DB810 00000000 */   nop   
/* 1F3794 801DB814 8E2C0000 */  lw    $t4, ($s1)
/* 1F3798 801DB818 8D850000 */  lw    $a1, ($t4)
/* 1F379C 801DB81C 00052880 */  sll   $a1, $a1, 2
/* 1F37A0 801DB820 02056821 */  addu  $t5, $s0, $a1
/* 1F37A4 801DB824 1000FF2A */  b     .L801DB4D0_ovl13
/* 1F37A8 801DB828 8DA30000 */   lw    $v1, ($t5)
/* 1F37AC 801DB82C 00000000 */  nop   
/* 1F37B0 801DB830 00000000 */  nop   
/* 1F37B4 801DB834 00000000 */  nop   
/* 1F37B8 801DB838 00000000 */  nop   
/* 1F37BC 801DB83C 00000000 */  nop   
/* 1F37C0 801DB840 8FBF003C */  lw    $ra, 0x3c($sp)
/* 1F37C4 801DB844 8FB00018 */  lw    $s0, 0x18($sp)
/* 1F37C8 801DB848 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1F37CC 801DB84C 8FB20020 */  lw    $s2, 0x20($sp)
/* 1F37D0 801DB850 8FB30024 */  lw    $s3, 0x24($sp)
/* 1F37D4 801DB854 8FB40028 */  lw    $s4, 0x28($sp)
/* 1F37D8 801DB858 8FB5002C */  lw    $s5, 0x2c($sp)
/* 1F37DC 801DB85C 8FB60030 */  lw    $s6, 0x30($sp)
/* 1F37E0 801DB860 8FB70034 */  lw    $s7, 0x34($sp)
/* 1F37E4 801DB864 8FBE0038 */  lw    $fp, 0x38($sp)
/* 1F37E8 801DB868 03E00008 */  jr    $ra
/* 1F37EC 801DB86C 27BD0040 */   addiu $sp, $sp, 0x40

/* 1F37F0 801DB870 27BDFF90 */  addiu $sp, $sp, -0x70
/* 1F37F4 801DB874 AFB30054 */  sw    $s3, 0x54($sp)
/* 1F37F8 801DB878 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1F37FC 801DB87C 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1F3800 801DB880 8E6E0000 */  lw    $t6, ($s3)
/* 1F3804 801DB884 AFBF006C */  sw    $ra, 0x6c($sp)
/* 1F3808 801DB888 AFBE0068 */  sw    $fp, 0x68($sp)
/* 1F380C 801DB88C AFB70064 */  sw    $s7, 0x64($sp)
/* 1F3810 801DB890 AFB60060 */  sw    $s6, 0x60($sp)
/* 1F3814 801DB894 AFB5005C */  sw    $s5, 0x5c($sp)
/* 1F3818 801DB898 AFB40058 */  sw    $s4, 0x58($sp)
/* 1F381C 801DB89C AFB20050 */  sw    $s2, 0x50($sp)
/* 1F3820 801DB8A0 AFB1004C */  sw    $s1, 0x4c($sp)
/* 1F3824 801DB8A4 AFB00048 */  sw    $s0, 0x48($sp)
/* 1F3828 801DB8A8 F7BE0040 */  sdc1  $f30, 0x40($sp)
/* 1F382C 801DB8AC F7BC0038 */  sdc1  $f28, 0x38($sp)
/* 1F3830 801DB8B0 F7BA0030 */  sdc1  $f26, 0x30($sp)
/* 1F3834 801DB8B4 F7B80028 */  sdc1  $f24, 0x28($sp)
/* 1F3838 801DB8B8 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1F383C 801DB8BC F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1F3840 801DB8C0 AFA40070 */  sw    $a0, 0x70($sp)
/* 1F3844 801DB8C4 8DCF0000 */  lw    $t7, ($t6)
/* 1F3848 801DB8C8 3C10800E */  lui   $s0, 0x800e
/* 1F384C 801DB8CC 000FC080 */  sll   $t8, $t7, 2
/* 1F3850 801DB8D0 02188021 */  addu  $s0, $s0, $t8
/* 1F3854 801DB8D4 0C066ED6 */  jal   func_8019BB58_ovl13
/* 1F3858 801DB8D8 8E100D50 */   lw    $s0, 0xd50($s0)
/* 1F385C 801DB8DC 8E710000 */  lw    $s1, ($s3)
/* 1F3860 801DB8E0 3C19800B */  lui   $t9, %hi(D_800B7138) # $t9, 0x800b
/* 1F3864 801DB8E4 3C01800E */  lui   $at, 0x800e
/* 1F3868 801DB8E8 8E280000 */  lw    $t0, ($s1)
/* 1F386C 801DB8EC 27397138 */  addiu $t9, %lo(D_800B7138) # addiu $t9, $t9, 0x7138
/* 1F3870 801DB8F0 3C0A801E */  lui   $t2, %hi(func_801DC788) # $t2, 0x801e
/* 1F3874 801DB8F4 00084880 */  sll   $t1, $t0, 2
/* 1F3878 801DB8F8 00290821 */  addu  $at, $at, $t1
/* 1F387C 801DB8FC AC39EF90 */  sw    $t9, -0x1070($at)
/* 1F3880 801DB900 8E2B0000 */  lw    $t3, ($s1)
/* 1F3884 801DB904 3C01800E */  lui   $at, 0x800e
/* 1F3888 801DB908 254AC788 */  addiu $t2, %lo(func_801DC788) # addiu $t2, $t2, -0x3878
/* 1F388C 801DB90C 000B6080 */  sll   $t4, $t3, 2
/* 1F3890 801DB910 002C0821 */  addu  $at, $at, $t4
/* 1F3894 801DB914 AC2AF150 */  sw    $t2, -0xeb0($at)
/* 1F3898 801DB918 8E2D0000 */  lw    $t5, ($s1)
/* 1F389C 801DB91C 3C04800E */  lui   $a0, 0x800e
/* 1F38A0 801DB920 3C05800B */  lui   $a1, %hi(D_800B1434) # $a1, 0x800b
/* 1F38A4 801DB924 000D7080 */  sll   $t6, $t5, 2
/* 1F38A8 801DB928 008E2021 */  addu  $a0, $a0, $t6
/* 1F38AC 801DB92C 8C84EC10 */  lw    $a0, -0x13f0($a0)
/* 1F38B0 801DB930 0C02C7DA */  jal   func_800B1F68_ovl13
/* 1F38B4 801DB934 24A51434 */   addiu $a1, %lo(D_800B1434) # addiu $a1, $a1, 0x1434
/* 1F38B8 801DB938 8E6F0000 */  lw    $t7, ($s3)
/* 1F38BC 801DB93C 24040071 */  li    $a0, 113
/* 1F38C0 801DB940 0C02C67D */  jal   func_800B19F4
/* 1F38C4 801DB944 8DE50000 */   lw    $a1, ($t7)
/* 1F38C8 801DB948 00002025 */  move  $a0, $zero
/* 1F38CC 801DB94C 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1F38D0 801DB950 8E650000 */   lw    $a1, ($s3)
/* 1F38D4 801DB954 0C044A6B */  jal   func_801129AC_ovl13
/* 1F38D8 801DB958 00000000 */   nop   
/* 1F38DC 801DB95C 0C044A77 */  jal   func_801129DC_ovl13
/* 1F38E0 801DB960 00000000 */   nop   
/* 1F38E4 801DB964 8E780000 */  lw    $t8, ($s3)
/* 1F38E8 801DB968 3C04801E */  lui   $a0, %hi(D_801DAAB4) # $a0, 0x801e
/* 1F38EC 801DB96C 3C01800E */  lui   $at, 0x800e
/* 1F38F0 801DB970 8F080000 */  lw    $t0, ($t8)
/* 1F38F4 801DB974 2484AAB4 */  addiu $a0, %lo(D_801DAAB4) # addiu $a0, $a0, -0x554c
/* 1F38F8 801DB978 0008C880 */  sll   $t9, $t0, 2
/* 1F38FC 801DB97C 00390821 */  addu  $at, $at, $t9
/* 1F3900 801DB980 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F3904 801DB984 AC240490 */   sw    $a0, 0x490($at)
/* 1F3908 801DB988 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F390C 801DB98C 00000000 */   nop   
/* 1F3910 801DB990 8E710000 */  lw    $s1, ($s3)
/* 1F3914 801DB994 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F3918 801DB998 44812000 */  mtc1  $at, $f4
/* 1F391C 801DB99C 8E290000 */  lw    $t1, ($s1)
/* 1F3920 801DB9A0 3C01800E */  lui   $at, 0x800e
/* 1F3924 801DB9A4 3C048000 */  lui   $a0, (0x80000002 >> 16) # lui $a0, 0x8000
/* 1F3928 801DB9A8 00095880 */  sll   $t3, $t1, 2
/* 1F392C 801DB9AC 002B0821 */  addu  $at, $at, $t3
/* 1F3930 801DB9B0 E4246A10 */  swc1  $f4, 0x6a10($at)
/* 1F3934 801DB9B4 8E2A0000 */  lw    $t2, ($s1)
/* 1F3938 801DB9B8 3C01800F */  lui   $at, 0x800f
/* 1F393C 801DB9BC 34840002 */  ori   $a0, (0x80000002 & 0xFFFF) # ori $a0, $a0, 2
/* 1F3940 801DB9C0 000A6080 */  sll   $t4, $t2, 2
/* 1F3944 801DB9C4 002C0821 */  addu  $at, $at, $t4
/* 1F3948 801DB9C8 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1F394C 801DB9CC 8E2D0000 */  lw    $t5, ($s1)
/* 1F3950 801DB9D0 3C01800F */  lui   $at, 0x800f
/* 1F3954 801DB9D4 000D7080 */  sll   $t6, $t5, 2
/* 1F3958 801DB9D8 002E0821 */  addu  $at, $at, $t6
/* 1F395C 801DB9DC 0C03E905 */  jal   func_800FA414_ovl13
/* 1F3960 801DB9E0 AC209AA0 */   sw    $zero, -0x6560($at)
/* 1F3964 801DB9E4 8E6F0000 */  lw    $t7, ($s3)
/* 1F3968 801DB9E8 3C018013 */  lui   $at, %hi(D_80129138) # $at, 0x8013
/* 1F396C 801DB9EC 3C19800F */  lui   $t9, %hi(D_800E98E0) # $t9, 0x800f
/* 1F3970 801DB9F0 8DF80000 */  lw    $t8, ($t7)
/* 1F3974 801DB9F4 273998E0 */  addiu $t9, %lo(D_800E98E0) # addiu $t9, $t9, -0x6720
/* 1F3978 801DB9F8 00104080 */  sll   $t0, $s0, 2
/* 1F397C 801DB9FC AC389138 */  sw    $t8, %lo(D_80129138)($at)
/* 1F3980 801DBA00 3C01801E */  lui   $at, %hi(D_801E5C50) # $at, 0x801e
/* 1F3984 801DBA04 C43E5C50 */  lwc1  $f30, %lo(D_801E5C50)($at)
/* 1F3988 801DBA08 3C01801E */  lui   $at, %hi(D_801E5C54) # $at, 0x801e
/* 1F398C 801DBA0C 0119A821 */  addu  $s5, $t0, $t9
/* 1F3990 801DBA10 3C1E800E */  lui   $fp, %hi(D_800E64D0) # $fp, 0x800e
/* 1F3994 801DBA14 3C17800E */  lui   $s7, %hi(D_800E6690) # $s7, 0x800e
/* 1F3998 801DBA18 3C14800E */  lui   $s4, %hi(D_800E2790) # $s4, 0x800e
/* 1F399C 801DBA1C 4480E000 */  mtc1  $zero, $f28
/* 1F39A0 801DBA20 26942790 */  addiu $s4, %lo(D_800E2790) # addiu $s4, $s4, 0x2790
/* 1F39A4 801DBA24 26F76690 */  addiu $s7, %lo(D_800E6690) # addiu $s7, $s7, 0x6690
/* 1F39A8 801DBA28 27DE64D0 */  addiu $fp, %lo(D_800E64D0) # addiu $fp, $fp, 0x64d0
/* 1F39AC 801DBA2C 8EA20000 */  lw    $v0, ($s5)
/* 1F39B0 801DBA30 C43A5C54 */  lwc1  $f26, %lo(D_801E5C54)($at)
/* 1F39B4 801DBA34 24160001 */  li    $s6, 1
.L801DBA38_ovl13:
/* 1F39B8 801DBA38 2C410008 */  sltiu $at, $v0, 8
.L801DBA3C_ovl13:
/* 1F39BC 801DBA3C 10200337 */  beqz  $at, .L801DC71C_ovl13
/* 1F39C0 801DBA40 00024880 */   sll   $t1, $v0, 2
.L801DBA44_ovl13:
/* 1F39C4 801DBA44 3C01801E */  lui   $at, 0x801e
/* 1F39C8 801DBA48 00290821 */  addu  $at, $at, $t1
/* 1F39CC 801DBA4C 8C295C58 */  lw    $t1, 0x5c58($at)
/* 1F39D0 801DBA50 01200008 */  jr    $t1
/* 1F39D4 801DBA54 00000000 */   nop   
/* 1F39D8 801DBA58 8E710000 */  lw    $s1, ($s3)
/* 1F39DC 801DBA5C 3C01800F */  lui   $at, 0x800f
/* 1F39E0 801DBA60 3C04801E */  lui   $a0, %hi(D_801DAAB4) # $a0, 0x801e
/* 1F39E4 801DBA64 8E2B0000 */  lw    $t3, ($s1)
/* 1F39E8 801DBA68 2484AAB4 */  addiu $a0, %lo(D_801DAAB4) # addiu $a0, $a0, -0x554c
/* 1F39EC 801DBA6C 000B5080 */  sll   $t2, $t3, 2
/* 1F39F0 801DBA70 002A0821 */  addu  $at, $at, $t2
/* 1F39F4 801DBA74 AC208920 */  sw    $zero, -0x76e0($at)
/* 1F39F8 801DBA78 8E2C0000 */  lw    $t4, ($s1)
/* 1F39FC 801DBA7C 3C01800E */  lui   $at, 0x800e
/* 1F3A00 801DBA80 000C6880 */  sll   $t5, $t4, 2
/* 1F3A04 801DBA84 002D0821 */  addu  $at, $at, $t5
/* 1F3A08 801DBA88 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F3A0C 801DBA8C AC240490 */   sw    $a0, 0x490($at)
/* 1F3A10 801DBA90 8E6F0000 */  lw    $t7, ($s3)
/* 1F3A14 801DBA94 3C19800E */  lui   $t9, 0x800e
/* 1F3A18 801DBA98 3C0E801E */  lui   $t6, %hi(D_801DADB0) # $t6, 0x801e
/* 1F3A1C 801DBA9C 8DF80000 */  lw    $t8, ($t7)
/* 1F3A20 801DBAA0 25CEADB0 */  addiu $t6, %lo(D_801DADB0) # addiu $t6, $t6, -0x5250
/* 1F3A24 801DBAA4 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 1F3A28 801DBAA8 00184080 */  sll   $t0, $t8, 2
/* 1F3A2C 801DBAAC 0328C821 */  addu  $t9, $t9, $t0
/* 1F3A30 801DBAB0 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 1F3A34 801DBAB4 44813000 */  mtc1  $at, $f6
/* 1F3A38 801DBAB8 3C01800E */  lui   $at, 0x800e
/* 1F3A3C 801DBABC AF2E0098 */  sw    $t6, 0x98($t9)
/* 1F3A40 801DBAC0 8E710000 */  lw    $s1, ($s3)
/* 1F3A44 801DBAC4 3C0D800F */  lui   $t5, 0x800f
/* 1F3A48 801DBAC8 8E290000 */  lw    $t1, ($s1)
/* 1F3A4C 801DBACC 00095880 */  sll   $t3, $t1, 2
/* 1F3A50 801DBAD0 002B0821 */  addu  $at, $at, $t3
/* 1F3A54 801DBAD4 E4263210 */  swc1  $f6, 0x3210($at)
/* 1F3A58 801DBAD8 8E2A0000 */  lw    $t2, ($s1)
/* 1F3A5C 801DBADC 000A6080 */  sll   $t4, $t2, 2
/* 1F3A60 801DBAE0 01AC6821 */  addu  $t5, $t5, $t4
/* 1F3A64 801DBAE4 8DAD8920 */  lw    $t5, -0x76e0($t5)
/* 1F3A68 801DBAE8 55A0000C */  bnezl $t5, .L801DBB1C_ovl13
/* 1F3A6C 801DBAEC AEB60000 */   sw    $s6, ($s5)
.L801DBAF0_ovl13:
/* 1F3A70 801DBAF0 0C002DAF */  jal   func_8000B6BC
/* 1F3A74 801DBAF4 02C02025 */   move  $a0, $s6
/* 1F3A78 801DBAF8 8E710000 */  lw    $s1, ($s3)
/* 1F3A7C 801DBAFC 3C08800F */  lui   $t0, 0x800f
/* 1F3A80 801DBB00 8E2F0000 */  lw    $t7, ($s1)
/* 1F3A84 801DBB04 000FC080 */  sll   $t8, $t7, 2
/* 1F3A88 801DBB08 01184021 */  addu  $t0, $t0, $t8
/* 1F3A8C 801DBB0C 8D088920 */  lw    $t0, -0x76e0($t0)
/* 1F3A90 801DBB10 1100FFF7 */  beqz  $t0, .L801DBAF0_ovl13
/* 1F3A94 801DBB14 00000000 */   nop   
/* 1F3A98 801DBB18 AEB60000 */  sw    $s6, ($s5)
.L801DBB1C_ovl13:
/* 1F3A9C 801DBB1C 8E2E0000 */  lw    $t6, ($s1)
/* 1F3AA0 801DBB20 3C03800E */  lui   $v1, %hi(D_800E3750) # $v1, 0x800e
/* 1F3AA4 801DBB24 24633750 */  addiu $v1, %lo(D_800E3750) # addiu $v1, $v1, 0x3750
/* 1F3AA8 801DBB28 000EC880 */  sll   $t9, $t6, 2
/* 1F3AAC 801DBB2C 00794821 */  addu  $t1, $v1, $t9
/* 1F3AB0 801DBB30 E53C0000 */  swc1  $f28, ($t1)
/* 1F3AB4 801DBB34 8E300000 */  lw    $s0, ($s1)
/* 1F3AB8 801DBB38 3C01800E */  lui   $at, 0x800e
/* 1F3ABC 801DBB3C 00108080 */  sll   $s0, $s0, 2
/* 1F3AC0 801DBB40 00705821 */  addu  $t3, $v1, $s0
/* 1F3AC4 801DBB44 C5680000 */  lwc1  $f8, ($t3)
/* 1F3AC8 801DBB48 00300821 */  addu  $at, $at, $s0
/* 1F3ACC 801DBB4C E4283210 */  swc1  $f8, 0x3210($at)
/* 1F3AD0 801DBB50 8E2A0000 */  lw    $t2, ($s1)
/* 1F3AD4 801DBB54 3C01801E */  lui   $at, %hi(D_801E5C78) # $at, 0x801e
/* 1F3AD8 801DBB58 C42A5C78 */  lwc1  $f10, %lo(D_801E5C78)($at)
/* 1F3ADC 801DBB5C 3C01800E */  lui   $at, 0x800e
/* 1F3AE0 801DBB60 000A6080 */  sll   $t4, $t2, 2
/* 1F3AE4 801DBB64 002C0821 */  addu  $at, $at, $t4
/* 1F3AE8 801DBB68 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 1F3AEC 801DBB6C 1000FFB2 */  b     .L801DBA38_ovl13
/* 1F3AF0 801DBB70 8EA20000 */   lw    $v0, ($s5)
/* 1F3AF4 801DBB74 8E6D0000 */  lw    $t5, ($s3)
/* 1F3AF8 801DBB78 3C04801E */  lui   $a0, %hi(D_801DAAB4) # $a0, 0x801e
/* 1F3AFC 801DBB7C 3C01800E */  lui   $at, 0x800e
/* 1F3B00 801DBB80 8DAF0000 */  lw    $t7, ($t5)
/* 1F3B04 801DBB84 2484AAB4 */  addiu $a0, %lo(D_801DAAB4) # addiu $a0, $a0, -0x554c
/* 1F3B08 801DBB88 000FC080 */  sll   $t8, $t7, 2
/* 1F3B0C 801DBB8C 00380821 */  addu  $at, $at, $t8
/* 1F3B10 801DBB90 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F3B14 801DBB94 AC240490 */   sw    $a0, 0x490($at)
/* 1F3B18 801DBB98 8E6E0000 */  lw    $t6, ($s3)
/* 1F3B1C 801DBB9C 3C0B800E */  lui   $t3, 0x800e
/* 1F3B20 801DBBA0 3C08801E */  lui   $t0, %hi(D_801DADD4) # $t0, 0x801e
/* 1F3B24 801DBBA4 8DD90000 */  lw    $t9, ($t6)
/* 1F3B28 801DBBA8 2508ADD4 */  addiu $t0, %lo(D_801DADD4) # addiu $t0, $t0, -0x522c
/* 1F3B2C 801DBBAC 00194880 */  sll   $t1, $t9, 2
/* 1F3B30 801DBBB0 01695821 */  addu  $t3, $t3, $t1
/* 1F3B34 801DBBB4 8D6B1B50 */  lw    $t3, 0x1b50($t3)
/* 1F3B38 801DBBB8 AD680098 */  sw    $t0, 0x98($t3)
/* 1F3B3C 801DBBBC 8EAA0000 */  lw    $t2, ($s5)
/* 1F3B40 801DBBC0 56CA0007 */  bnel  $s6, $t2, .L801DBBE0_ovl13
/* 1F3B44 801DBBC4 8E6D0000 */   lw    $t5, ($s3)
.L801DBBC8_ovl13:
/* 1F3B48 801DBBC8 0C002DAF */  jal   func_8000B6BC
/* 1F3B4C 801DBBCC 02C02025 */   move  $a0, $s6
/* 1F3B50 801DBBD0 8EAC0000 */  lw    $t4, ($s5)
/* 1F3B54 801DBBD4 12CCFFFC */  beq   $s6, $t4, .L801DBBC8_ovl13
/* 1F3B58 801DBBD8 00000000 */   nop   
/* 1F3B5C 801DBBDC 8E6D0000 */  lw    $t5, ($s3)
.L801DBBE0_ovl13:
/* 1F3B60 801DBBE0 3C01801E */  lui   $at, %hi(D_801E5C7C) # $at, 0x801e
/* 1F3B64 801DBBE4 C4325C7C */  lwc1  $f18, %lo(D_801E5C7C)($at)
/* 1F3B68 801DBBE8 8DAF0000 */  lw    $t7, ($t5)
/* 1F3B6C 801DBBEC 2410000A */  li    $s0, 10
/* 1F3B70 801DBBF0 000FC080 */  sll   $t8, $t7, 2
/* 1F3B74 801DBBF4 03D87021 */  addu  $t6, $fp, $t8
/* 1F3B78 801DBBF8 C5D00000 */  lwc1  $f16, ($t6)
/* 1F3B7C 801DBBFC 46128582 */  mul.s $f22, $f16, $f18
/* 1F3B80 801DBC00 00000000 */  nop   
/* 1F3B84 801DBC04 44902000 */  mtc1  $s0, $f4
.L801DBC08_ovl13:
/* 1F3B88 801DBC08 8E790000 */  lw    $t9, ($s3)
/* 1F3B8C 801DBC0C 02C02025 */  move  $a0, $s6
/* 1F3B90 801DBC10 468021A0 */  cvt.s.w $f6, $f4
/* 1F3B94 801DBC14 8F290000 */  lw    $t1, ($t9)
/* 1F3B98 801DBC18 00094080 */  sll   $t0, $t1, 2
/* 1F3B9C 801DBC1C 03C85821 */  addu  $t3, $fp, $t0
/* 1F3BA0 801DBC20 46163202 */  mul.s $f8, $f6, $f22
/* 1F3BA4 801DBC24 0C002DAF */  jal   func_8000B6BC
/* 1F3BA8 801DBC28 E5680000 */   swc1  $f8, ($t3)
/* 1F3BAC 801DBC2C 2610FFFF */  addiu $s0, $s0, -1
/* 1F3BB0 801DBC30 5600FFF5 */  bnezl $s0, .L801DBC08_ovl13
/* 1F3BB4 801DBC34 44902000 */   mtc1  $s0, $f4
/* 1F3BB8 801DBC38 8E710000 */  lw    $s1, ($s3)
/* 1F3BBC 801DBC3C 3C01801E */  lui   $at, %hi(D_801E5C80) # $at, 0x801e
/* 1F3BC0 801DBC40 8E2A0000 */  lw    $t2, ($s1)
/* 1F3BC4 801DBC44 000A6080 */  sll   $t4, $t2, 2
/* 1F3BC8 801DBC48 02EC6821 */  addu  $t5, $s7, $t4
/* 1F3BCC 801DBC4C E5BC0000 */  swc1  $f28, ($t5)
/* 1F3BD0 801DBC50 8E300000 */  lw    $s0, ($s1)
/* 1F3BD4 801DBC54 00108080 */  sll   $s0, $s0, 2
/* 1F3BD8 801DBC58 02F07821 */  addu  $t7, $s7, $s0
/* 1F3BDC 801DBC5C C5EA0000 */  lwc1  $f10, ($t7)
/* 1F3BE0 801DBC60 03D0C021 */  addu  $t8, $fp, $s0
/* 1F3BE4 801DBC64 E70A0000 */  swc1  $f10, ($t8)
/* 1F3BE8 801DBC68 8E2E0000 */  lw    $t6, ($s1)
/* 1F3BEC 801DBC6C C4305C80 */  lwc1  $f16, %lo(D_801E5C80)($at)
/* 1F3BF0 801DBC70 3C01800E */  lui   $at, 0x800e
/* 1F3BF4 801DBC74 000EC880 */  sll   $t9, $t6, 2
/* 1F3BF8 801DBC78 00390821 */  addu  $at, $at, $t9
/* 1F3BFC 801DBC7C E4306850 */  swc1  $f16, 0x6850($at)
/* 1F3C00 801DBC80 1000FF6D */  b     .L801DBA38_ovl13
/* 1F3C04 801DBC84 8EA20000 */   lw    $v0, ($s5)
/* 1F3C08 801DBC88 8E710000 */  lw    $s1, ($s3)
/* 1F3C0C 801DBC8C 3C01800F */  lui   $at, 0x800f
/* 1F3C10 801DBC90 3C0B801E */  lui   $t3, %hi(D_801DAAC8) # $t3, 0x801e
/* 1F3C14 801DBC94 8E290000 */  lw    $t1, ($s1)
/* 1F3C18 801DBC98 256BAAC8 */  addiu $t3, %lo(D_801DAAC8) # addiu $t3, $t3, -0x5538
/* 1F3C1C 801DBC9C 3C04801E */  lui   $a0, %hi(D_801DAAC8) # $a0, 0x801e
/* 1F3C20 801DBCA0 00094080 */  sll   $t0, $t1, 2
/* 1F3C24 801DBCA4 00280821 */  addu  $at, $at, $t0
/* 1F3C28 801DBCA8 AC208920 */  sw    $zero, -0x76e0($at)
/* 1F3C2C 801DBCAC 8E2A0000 */  lw    $t2, ($s1)
/* 1F3C30 801DBCB0 3C01800E */  lui   $at, 0x800e
/* 1F3C34 801DBCB4 2484AAC8 */  addiu $a0, %lo(D_801DAAC8) # addiu $a0, $a0, -0x5538
/* 1F3C38 801DBCB8 000A6080 */  sll   $t4, $t2, 2
/* 1F3C3C 801DBCBC 002C0821 */  addu  $at, $at, $t4
/* 1F3C40 801DBCC0 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F3C44 801DBCC4 AC2B0490 */   sw    $t3, 0x490($at)
/* 1F3C48 801DBCC8 8E6F0000 */  lw    $t7, ($s3)
/* 1F3C4C 801DBCCC 3C19800E */  lui   $t9, 0x800e
/* 1F3C50 801DBCD0 3C0D801E */  lui   $t5, %hi(D_801DAD8C) # $t5, 0x801e
/* 1F3C54 801DBCD4 8DF80000 */  lw    $t8, ($t7)
/* 1F3C58 801DBCD8 25ADAD8C */  addiu $t5, %lo(D_801DAD8C) # addiu $t5, $t5, -0x5274
/* 1F3C5C 801DBCDC 3C02800E */  lui   $v0, %hi(D_800E3910) # $v0, 0x800e
/* 1F3C60 801DBCE0 00187080 */  sll   $t6, $t8, 2
/* 1F3C64 801DBCE4 032EC821 */  addu  $t9, $t9, $t6
/* 1F3C68 801DBCE8 8F391B50 */  lw    $t9, 0x1b50($t9)
/* 1F3C6C 801DBCEC 24423910 */  addiu $v0, %lo(D_800E3910) # addiu $v0, $v0, 0x3910
/* 1F3C70 801DBCF0 3C01800E */  lui   $at, 0x800e
/* 1F3C74 801DBCF4 AF2D0098 */  sw    $t5, 0x98($t9)
/* 1F3C78 801DBCF8 8E710000 */  lw    $s1, ($s3)
/* 1F3C7C 801DBCFC 3C03800E */  lui   $v1, %hi(D_800E3E50) # $v1, 0x800e
/* 1F3C80 801DBD00 24633E50 */  addiu $v1, %lo(D_800E3E50) # addiu $v1, $v1, 0x3e50
/* 1F3C84 801DBD04 8E290000 */  lw    $t1, ($s1)
/* 1F3C88 801DBD08 24040186 */  li    $a0, 390
/* 1F3C8C 801DBD0C 00094080 */  sll   $t0, $t1, 2
/* 1F3C90 801DBD10 00485021 */  addu  $t2, $v0, $t0
/* 1F3C94 801DBD14 E55C0000 */  swc1  $f28, ($t2)
/* 1F3C98 801DBD18 8E300000 */  lw    $s0, ($s1)
/* 1F3C9C 801DBD1C 00108080 */  sll   $s0, $s0, 2
/* 1F3CA0 801DBD20 00505821 */  addu  $t3, $v0, $s0
/* 1F3CA4 801DBD24 C5600000 */  lwc1  $f0, ($t3)
/* 1F3CA8 801DBD28 00300821 */  addu  $at, $at, $s0
/* 1F3CAC 801DBD2C E4203750 */  swc1  $f0, 0x3750($at)
/* 1F3CB0 801DBD30 8E2C0000 */  lw    $t4, ($s1)
/* 1F3CB4 801DBD34 3C01800E */  lui   $at, 0x800e
/* 1F3CB8 801DBD38 000C7880 */  sll   $t7, $t4, 2
/* 1F3CBC 801DBD3C 002F0821 */  addu  $at, $at, $t7
/* 1F3CC0 801DBD40 E4203590 */  swc1  $f0, 0x3590($at)
/* 1F3CC4 801DBD44 8E380000 */  lw    $t8, ($s1)
/* 1F3CC8 801DBD48 3C01800E */  lui   $at, 0x800e
/* 1F3CCC 801DBD4C 00187080 */  sll   $t6, $t8, 2
/* 1F3CD0 801DBD50 002E0821 */  addu  $at, $at, $t6
/* 1F3CD4 801DBD54 E42033D0 */  swc1  $f0, 0x33d0($at)
/* 1F3CD8 801DBD58 8E2D0000 */  lw    $t5, ($s1)
/* 1F3CDC 801DBD5C 3C01800E */  lui   $at, 0x800e
/* 1F3CE0 801DBD60 000DC880 */  sll   $t9, $t5, 2
/* 1F3CE4 801DBD64 00390821 */  addu  $at, $at, $t9
/* 1F3CE8 801DBD68 E4203210 */  swc1  $f0, 0x3210($at)
/* 1F3CEC 801DBD6C 8E290000 */  lw    $t1, ($s1)
/* 1F3CF0 801DBD70 3C01800E */  lui   $at, 0x800e
/* 1F3CF4 801DBD74 00094080 */  sll   $t0, $t1, 2
/* 1F3CF8 801DBD78 00280821 */  addu  $at, $at, $t0
/* 1F3CFC 801DBD7C E4203050 */  swc1  $f0, 0x3050($at)
/* 1F3D00 801DBD80 8E2A0000 */  lw    $t2, ($s1)
/* 1F3D04 801DBD84 3C01801E */  lui   $at, %hi(D_801E5C84) # $at, 0x801e
/* 1F3D08 801DBD88 C4325C84 */  lwc1  $f18, %lo(D_801E5C84)($at)
/* 1F3D0C 801DBD8C 000A5880 */  sll   $t3, $t2, 2
/* 1F3D10 801DBD90 006B6021 */  addu  $t4, $v1, $t3
/* 1F3D14 801DBD94 E5920000 */  swc1  $f18, ($t4)
/* 1F3D18 801DBD98 8E300000 */  lw    $s0, ($s1)
/* 1F3D1C 801DBD9C 3C01800E */  lui   $at, 0x800e
/* 1F3D20 801DBDA0 00108080 */  sll   $s0, $s0, 2
/* 1F3D24 801DBDA4 00707821 */  addu  $t7, $v1, $s0
/* 1F3D28 801DBDA8 C5E20000 */  lwc1  $f2, ($t7)
/* 1F3D2C 801DBDAC 00300821 */  addu  $at, $at, $s0
/* 1F3D30 801DBDB0 E4223C90 */  swc1  $f2, 0x3c90($at)
/* 1F3D34 801DBDB4 8E380000 */  lw    $t8, ($s1)
/* 1F3D38 801DBDB8 3C01800E */  lui   $at, 0x800e
/* 1F3D3C 801DBDBC 00187080 */  sll   $t6, $t8, 2
/* 1F3D40 801DBDC0 002E0821 */  addu  $at, $at, $t6
/* 1F3D44 801DBDC4 0C029D9E */  jal   func_800A7678
/* 1F3D48 801DBDC8 E4223AD0 */   swc1  $f2, 0x3ad0($at)
/* 1F3D4C 801DBDCC 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F3D50 801DBDD0 24040004 */   li    $a0, 4
/* 1F3D54 801DBDD4 0C002DAF */  jal   func_8000B6BC
/* 1F3D58 801DBDD8 24040014 */   li    $a0, 20
/* 1F3D5C 801DBDDC 3C01800D */  lui   $at, %hi(D_800D7098) # $at, 0x800d
/* 1F3D60 801DBDE0 AC367098 */  sw    $s6, %lo(D_800D7098)($at)
/* 1F3D64 801DBDE4 0C002DAF */  jal   func_8000B6BC
/* 1F3D68 801DBDE8 02C02025 */   move  $a0, $s6
/* 1F3D6C 801DBDEC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F3D70 801DBDF0 3C058013 */  lui   $a1, %hi(D_801290D0) # $a1, 0x8013
/* 1F3D74 801DBDF4 8CA590D0 */  lw    $a1, %lo(D_801290D0)($a1)
/* 1F3D78 801DBDF8 0C02BB60 */  jal   func_800AED80_ovl13
/* 1F3D7C 801DBDFC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1F3D80 801DBE00 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F3D84 801DBE04 24040005 */   li    $a0, 5
/* 1F3D88 801DBE08 0C002DAF */  jal   func_8000B6BC
/* 1F3D8C 801DBE0C 240400C8 */   li    $a0, 200
/* 1F3D90 801DBE10 8E6D0000 */  lw    $t5, ($s3)
/* 1F3D94 801DBE14 3C04800E */  lui   $a0, 0x800e
/* 1F3D98 801DBE18 8DB90000 */  lw    $t9, ($t5)
/* 1F3D9C 801DBE1C 00194880 */  sll   $t1, $t9, 2
/* 1F3DA0 801DBE20 00892021 */  addu  $a0, $a0, $t1
/* 1F3DA4 801DBE24 0C06769C */  jal   func_8019DA70_ovl13
/* 1F3DA8 801DBE28 8C840D50 */   lw    $a0, 0xd50($a0)
/* 1F3DAC 801DBE2C 4600E03C */  c.lt.s $f28, $f0
/* 1F3DB0 801DBE30 00000000 */  nop   
/* 1F3DB4 801DBE34 4502000B */  bc1fl .L801DBE64_ovl13
/* 1F3DB8 801DBE38 8E710000 */   lw    $s1, ($s3)
/* 1F3DBC 801DBE3C 8E710000 */  lw    $s1, ($s3)
/* 1F3DC0 801DBE40 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F3DC4 801DBE44 44812000 */  mtc1  $at, $f4
/* 1F3DC8 801DBE48 8E280000 */  lw    $t0, ($s1)
/* 1F3DCC 801DBE4C 3C01800E */  lui   $at, 0x800e
/* 1F3DD0 801DBE50 00085080 */  sll   $t2, $t0, 2
/* 1F3DD4 801DBE54 002A0821 */  addu  $at, $at, $t2
/* 1F3DD8 801DBE58 10000009 */  b     .L801DBE80_ovl13
/* 1F3DDC 801DBE5C E4246A10 */   swc1  $f4, 0x6a10($at)
/* 1F3DE0 801DBE60 8E710000 */  lw    $s1, ($s3)
.L801DBE64_ovl13:
/* 1F3DE4 801DBE64 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1F3DE8 801DBE68 44813000 */  mtc1  $at, $f6
/* 1F3DEC 801DBE6C 8E2B0000 */  lw    $t3, ($s1)
/* 1F3DF0 801DBE70 3C01800E */  lui   $at, 0x800e
/* 1F3DF4 801DBE74 000B6080 */  sll   $t4, $t3, 2
/* 1F3DF8 801DBE78 002C0821 */  addu  $at, $at, $t4
/* 1F3DFC 801DBE7C E4266A10 */  swc1  $f6, 0x6a10($at)
.L801DBE80_ovl13:
/* 1F3E00 801DBE80 8E300000 */  lw    $s0, ($s1)
/* 1F3E04 801DBE84 3C01800E */  lui   $at, 0x800e
/* 1F3E08 801DBE88 00108080 */  sll   $s0, $s0, 2
/* 1F3E0C 801DBE8C 00300821 */  addu  $at, $at, $s0
/* 1F3E10 801DBE90 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 1F3E14 801DBE94 3C01801E */  lui   $at, %hi(D_801E5C88) # $at, 0x801e
/* 1F3E18 801DBE98 C42A5C88 */  lwc1  $f10, %lo(D_801E5C88)($at)
/* 1F3E1C 801DBE9C 02F07821 */  addu  $t7, $s7, $s0
/* 1F3E20 801DBEA0 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F3E24 801DBEA4 460A4402 */  mul.s $f16, $f8, $f10
/* 1F3E28 801DBEA8 44819000 */  mtc1  $at, $f18
/* 1F3E2C 801DBEAC 3C01800E */  lui   $at, 0x800e
/* 1F3E30 801DBEB0 E5F00000 */  swc1  $f16, ($t7)
/* 1F3E34 801DBEB4 8E380000 */  lw    $t8, ($s1)
/* 1F3E38 801DBEB8 00187080 */  sll   $t6, $t8, 2
/* 1F3E3C 801DBEBC 002E0821 */  addu  $at, $at, $t6
/* 1F3E40 801DBEC0 E4326850 */  swc1  $f18, 0x6850($at)
/* 1F3E44 801DBEC4 8E2D0000 */  lw    $t5, ($s1)
/* 1F3E48 801DBEC8 3C01800E */  lui   $at, 0x800e
/* 1F3E4C 801DBECC 000DC880 */  sll   $t9, $t5, 2
/* 1F3E50 801DBED0 00390821 */  addu  $at, $at, $t9
/* 1F3E54 801DBED4 E43C3210 */  swc1  $f28, 0x3210($at)
/* 1F3E58 801DBED8 8E290000 */  lw    $t1, ($s1)
/* 1F3E5C 801DBEDC 3C01801E */  lui   $at, %hi(D_801E5C8C) # $at, 0x801e
/* 1F3E60 801DBEE0 C4245C8C */  lwc1  $f4, %lo(D_801E5C8C)($at)
/* 1F3E64 801DBEE4 3C01800E */  lui   $at, 0x800e
/* 1F3E68 801DBEE8 00094080 */  sll   $t0, $t1, 2
/* 1F3E6C 801DBEEC 00280821 */  addu  $at, $at, $t0
/* 1F3E70 801DBEF0 E4243750 */  swc1  $f4, 0x3750($at)
/* 1F3E74 801DBEF4 8E2A0000 */  lw    $t2, ($s1)
/* 1F3E78 801DBEF8 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F3E7C 801DBEFC 44813000 */  mtc1  $at, $f6
/* 1F3E80 801DBF00 3C01800E */  lui   $at, 0x800e
/* 1F3E84 801DBF04 000A5880 */  sll   $t3, $t2, 2
/* 1F3E88 801DBF08 002B0821 */  addu  $at, $at, $t3
/* 1F3E8C 801DBF0C E4263C90 */  swc1  $f6, 0x3c90($at)
/* 1F3E90 801DBF10 8E300000 */  lw    $s0, ($s1)
/* 1F3E94 801DBF14 3C01801E */  lui   $at, %hi(D_801E5C90) # $at, 0x801e
/* 1F3E98 801DBF18 C4285C90 */  lwc1  $f8, %lo(D_801E5C90)($at)
/* 1F3E9C 801DBF1C 00108080 */  sll   $s0, $s0, 2
/* 1F3EA0 801DBF20 02906021 */  addu  $t4, $s4, $s0
/* 1F3EA4 801DBF24 C5800000 */  lwc1  $f0, ($t4)
/* 1F3EA8 801DBF28 4608003C */  c.lt.s $f0, $f8
/* 1F3EAC 801DBF2C 00000000 */  nop   
/* 1F3EB0 801DBF30 4502006F */  bc1fl .L801DC0F0_ovl13
/* 1F3EB4 801DBF34 2419FFFD */   li    $t9, -3
/* 1F3EB8 801DBF38 461E003C */  c.lt.s $f0, $f30
.L801DBF3C_ovl13:
/* 1F3EBC 801DBF3C 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 1F3EC0 801DBF40 44815000 */  mtc1  $at, $f10
/* 1F3EC4 801DBF44 3C01800F */  lui   $at, 0x800f
/* 1F3EC8 801DBF48 45000004 */  bc1f  .L801DBF5C_ovl13
/* 1F3ECC 801DBF4C 461E0501 */   sub.s $f20, $f0, $f30
/* 1F3ED0 801DBF50 461E0501 */  sub.s $f20, $f0, $f30
/* 1F3ED4 801DBF54 10000001 */  b     .L801DBF5C_ovl13
/* 1F3ED8 801DBF58 4600A507 */   neg.s $f20, $f20
.L801DBF5C_ovl13:
/* 1F3EDC 801DBF5C 460AA03C */  c.lt.s $f20, $f10
/* 1F3EE0 801DBF60 00300821 */  addu  $at, $at, $s0
/* 1F3EE4 801DBF64 3C04800E */  lui   $a0, 0x800e
/* 1F3EE8 801DBF68 45000005 */  bc1f  .L801DBF80_ovl13
/* 1F3EEC 801DBF6C 00000000 */   nop   
/* 1F3EF0 801DBF70 3C01800F */  lui   $at, 0x800f
/* 1F3EF4 801DBF74 00300821 */  addu  $at, $at, $s0
/* 1F3EF8 801DBF78 10000002 */  b     .L801DBF84_ovl13
/* 1F3EFC 801DBF7C AC36A520 */   sw    $s6, -0x5ae0($at)
.L801DBF80_ovl13:
/* 1F3F00 801DBF80 AC20A520 */  sw    $zero, -0x5ae0($at)
.L801DBF84_ovl13:
/* 1F3F04 801DBF84 8E300000 */  lw    $s0, ($s1)
/* 1F3F08 801DBF88 00108080 */  sll   $s0, $s0, 2
/* 1F3F0C 801DBF8C 03D07821 */  addu  $t7, $fp, $s0
/* 1F3F10 801DBF90 C5F00000 */  lwc1  $f16, ($t7)
/* 1F3F14 801DBF94 02F0C021 */  addu  $t8, $s7, $s0
/* 1F3F18 801DBF98 00902021 */  addu  $a0, $a0, $s0
/* 1F3F1C 801DBF9C 4610E032 */  c.eq.s $f28, $f16
/* 1F3F20 801DBFA0 00000000 */  nop   
/* 1F3F24 801DBFA4 45000006 */  bc1f  .L801DBFC0_ovl13
/* 1F3F28 801DBFA8 00000000 */   nop   
/* 1F3F2C 801DBFAC C7120000 */  lwc1  $f18, ($t8)
/* 1F3F30 801DBFB0 4612E032 */  c.eq.s $f28, $f18
/* 1F3F34 801DBFB4 00000000 */  nop   
/* 1F3F38 801DBFB8 45010038 */  bc1t  .L801DC09C_ovl13
/* 1F3F3C 801DBFBC 00000000 */   nop   
.L801DBFC0_ovl13:
/* 1F3F40 801DBFC0 0C06769C */  jal   func_8019DA70_ovl13
/* 1F3F44 801DBFC4 8C840D50 */   lw    $a0, 0xd50($a0)
/* 1F3F48 801DBFC8 44802000 */  mtc1  $zero, $f4
/* 1F3F4C 801DBFCC 3C014090 */  li    $at, 0x40900000 # 4.500000
/* 1F3F50 801DBFD0 44814000 */  mtc1  $at, $f8
/* 1F3F54 801DBFD4 4604003C */  c.lt.s $f0, $f4
/* 1F3F58 801DBFD8 46000086 */  mov.s $f2, $f0
/* 1F3F5C 801DBFDC 3C01801E */  lui   $at, %hi(D_801E5C94) # $at, 0x801e
/* 1F3F60 801DBFE0 45000003 */  bc1f  .L801DBFF0_ovl13
/* 1F3F64 801DBFE4 00000000 */   nop   
/* 1F3F68 801DBFE8 10000001 */  b     .L801DBFF0_ovl13
/* 1F3F6C 801DBFEC 46000087 */   neg.s $f2, $f0
.L801DBFF0_ovl13:
/* 1F3F70 801DBFF0 8E6E0000 */  lw    $t6, ($s3)
/* 1F3F74 801DBFF4 44803000 */  mtc1  $zero, $f6
/* 1F3F78 801DBFF8 8DD00000 */  lw    $s0, ($t6)
/* 1F3F7C 801DBFFC 00108080 */  sll   $s0, $s0, 2
/* 1F3F80 801DC000 03D06821 */  addu  $t5, $fp, $s0
/* 1F3F84 801DC004 C5A00000 */  lwc1  $f0, ($t5)
/* 1F3F88 801DC008 4606003C */  c.lt.s $f0, $f6
/* 1F3F8C 801DC00C 46000506 */  mov.s $f20, $f0
/* 1F3F90 801DC010 45000003 */  bc1f  .L801DC020_ovl13
/* 1F3F94 801DC014 00000000 */   nop   
/* 1F3F98 801DC018 10000001 */  b     .L801DC020_ovl13
/* 1F3F9C 801DC01C 46000507 */   neg.s $f20, $f0
.L801DC020_ovl13:
/* 1F3FA0 801DC020 4608A282 */  mul.s $f10, $f20, $f8
/* 1F3FA4 801DC024 460A103C */  c.lt.s $f2, $f10
/* 1F3FA8 801DC028 00000000 */  nop   
/* 1F3FAC 801DC02C 4500001B */  bc1f  .L801DC09C_ovl13
/* 1F3FB0 801DC030 00000000 */   nop   
/* 1F3FB4 801DC034 C4305C94 */  lwc1  $f16, %lo(D_801E5C94)($at)
/* 1F3FB8 801DC038 02F0C821 */  addu  $t9, $s7, $s0
/* 1F3FBC 801DC03C 2404000A */  li    $a0, 10
/* 1F3FC0 801DC040 46100482 */  mul.s $f18, $f0, $f16
/* 1F3FC4 801DC044 0C002DAF */  jal   func_8000B6BC
/* 1F3FC8 801DC048 E7320000 */   swc1  $f18, ($t9)
/* 1F3FCC 801DC04C 8E710000 */  lw    $s1, ($s3)
/* 1F3FD0 801DC050 3C01801E */  lui   $at, %hi(D_801E5C98) # $at, 0x801e
/* 1F3FD4 801DC054 8E290000 */  lw    $t1, ($s1)
/* 1F3FD8 801DC058 00094080 */  sll   $t0, $t1, 2
/* 1F3FDC 801DC05C 02E85021 */  addu  $t2, $s7, $t0
/* 1F3FE0 801DC060 E55C0000 */  swc1  $f28, ($t2)
/* 1F3FE4 801DC064 8E300000 */  lw    $s0, ($s1)
/* 1F3FE8 801DC068 00108080 */  sll   $s0, $s0, 2
/* 1F3FEC 801DC06C 02F05821 */  addu  $t3, $s7, $s0
/* 1F3FF0 801DC070 C5640000 */  lwc1  $f4, ($t3)
/* 1F3FF4 801DC074 03D06021 */  addu  $t4, $fp, $s0
/* 1F3FF8 801DC078 E5840000 */  swc1  $f4, ($t4)
/* 1F3FFC 801DC07C 8E2F0000 */  lw    $t7, ($s1)
/* 1F4000 801DC080 C4265C98 */  lwc1  $f6, %lo(D_801E5C98)($at)
/* 1F4004 801DC084 3C01800E */  lui   $at, 0x800e
/* 1F4008 801DC088 000FC080 */  sll   $t8, $t7, 2
/* 1F400C 801DC08C 00380821 */  addu  $at, $at, $t8
/* 1F4010 801DC090 E4266850 */  swc1  $f6, 0x6850($at)
/* 1F4014 801DC094 8E300000 */  lw    $s0, ($s1)
/* 1F4018 801DC098 00108080 */  sll   $s0, $s0, 2
.L801DC09C_ovl13:
/* 1F401C 801DC09C 3C0E800F */  lui   $t6, 0x800f
/* 1F4020 801DC0A0 01D07021 */  addu  $t6, $t6, $s0
/* 1F4024 801DC0A4 8DCEA520 */  lw    $t6, -0x5ae0($t6)
/* 1F4028 801DC0A8 11C00003 */  beqz  $t6, .L801DC0B8_ovl13
/* 1F402C 801DC0AC 00000000 */   nop   
/* 1F4030 801DC0B0 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F4034 801DC0B4 24040004 */   li    $a0, 4
.L801DC0B8_ovl13:
/* 1F4038 801DC0B8 0C002DAF */  jal   func_8000B6BC
/* 1F403C 801DC0BC 02C02025 */   move  $a0, $s6
/* 1F4040 801DC0C0 8E710000 */  lw    $s1, ($s3)
/* 1F4044 801DC0C4 3C01801E */  lui   $at, %hi(D_801E5C9C) # $at, 0x801e
/* 1F4048 801DC0C8 C4285C9C */  lwc1  $f8, %lo(D_801E5C9C)($at)
/* 1F404C 801DC0CC 8E300000 */  lw    $s0, ($s1)
/* 1F4050 801DC0D0 00108080 */  sll   $s0, $s0, 2
/* 1F4054 801DC0D4 02906821 */  addu  $t5, $s4, $s0
/* 1F4058 801DC0D8 C5A00000 */  lwc1  $f0, ($t5)
/* 1F405C 801DC0DC 4608003C */  c.lt.s $f0, $f8
/* 1F4060 801DC0E0 00000000 */  nop   
/* 1F4064 801DC0E4 4503FF95 */  bc1tl .L801DBF3C_ovl13
/* 1F4068 801DC0E8 461E003C */   c.lt.s $f0, $f30
/* 1F406C 801DC0EC 2419FFFD */  li    $t9, -3
.L801DC0F0_ovl13:
/* 1F4070 801DC0F0 44995000 */  mtc1  $t9, $f10
/* 1F4074 801DC0F4 00002025 */  move  $a0, $zero
/* 1F4078 801DC0F8 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F407C 801DC0FC 46805520 */   cvt.s.w $f20, $f10
/* 1F4080 801DC100 0C02CD48 */  jal   func_800B3520_ovl13
/* 1F4084 801DC104 00000000 */   nop   
/* 1F4088 801DC108 24090003 */  li    $t1, 3
/* 1F408C 801DC10C AEA90000 */  sw    $t1, ($s5)
/* 1F4090 801DC110 3C088013 */  lui   $t0, %hi(D_801290D0) # $t0, 0x8013
/* 1F4094 801DC114 8D0890D0 */  lw    $t0, %lo(D_801290D0)($t0)
/* 1F4098 801DC118 3C0B800E */  lui   $t3, 0x800e
/* 1F409C 801DC11C 00085080 */  sll   $t2, $t0, 2
/* 1F40A0 801DC120 016A5821 */  addu  $t3, $t3, $t2
/* 1F40A4 801DC124 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 1F40A8 801DC128 8D6C0008 */  lw    $t4, 8($t3)
/* 1F40AC 801DC12C E5940020 */  swc1  $f20, 0x20($t4)
/* 1F40B0 801DC130 1000FE41 */  b     .L801DBA38_ovl13
/* 1F40B4 801DC134 8EA20000 */   lw    $v0, ($s5)
/* 1F40B8 801DC138 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F40BC 801DC13C 44818000 */  mtc1  $at, $f16
/* 1F40C0 801DC140 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 1F40C4 801DC144 E430C9E4 */  swc1  $f16, %lo(D_800EC9E4)($at)
/* 1F40C8 801DC148 8E6F0000 */  lw    $t7, ($s3)
/* 1F40CC 801DC14C 3C01800F */  lui   $at, 0x800f
/* 1F40D0 801DC150 8DF80000 */  lw    $t8, ($t7)
/* 1F40D4 801DC154 00187080 */  sll   $t6, $t8, 2
/* 1F40D8 801DC158 002E0821 */  addu  $at, $at, $t6
/* 1F40DC 801DC15C E430A6E0 */  swc1  $f16, -0x5920($at)
/* 1F40E0 801DC160 24010003 */  li    $at, 3
/* 1F40E4 801DC164 5441FE35 */  bnel  $v0, $at, .L801DBA3C_ovl13
/* 1F40E8 801DC168 2C410008 */   sltiu $at, $v0, 8
.L801DC16C_ovl13:
/* 1F40EC 801DC16C 0C002DAF */  jal   func_8000B6BC
/* 1F40F0 801DC170 02C02025 */   move  $a0, $s6
/* 1F40F4 801DC174 8EA20000 */  lw    $v0, ($s5)
/* 1F40F8 801DC178 24010003 */  li    $at, 3
/* 1F40FC 801DC17C 1041FFFB */  beq   $v0, $at, .L801DC16C_ovl13
/* 1F4100 801DC180 00000000 */   nop   
/* 1F4104 801DC184 1000FE2D */  b     .L801DBA3C_ovl13
/* 1F4108 801DC188 2C410008 */   sltiu $at, $v0, 8
/* 1F410C 801DC18C 8E710000 */  lw    $s1, ($s3)
/* 1F4110 801DC190 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F4114 801DC194 44819000 */  mtc1  $at, $f18
/* 1F4118 801DC198 8E2D0000 */  lw    $t5, ($s1)
/* 1F411C 801DC19C 3C01800E */  lui   $at, 0x800e
/* 1F4120 801DC1A0 3C04801E */  lui   $a0, %hi(D_801DAAC8) # $a0, 0x801e
/* 1F4124 801DC1A4 000DC880 */  sll   $t9, $t5, 2
/* 1F4128 801DC1A8 00390821 */  addu  $at, $at, $t9
/* 1F412C 801DC1AC E4326A10 */  swc1  $f18, 0x6a10($at)
/* 1F4130 801DC1B0 8E290000 */  lw    $t1, ($s1)
/* 1F4134 801DC1B4 3C01800E */  lui   $at, 0x800e
/* 1F4138 801DC1B8 2484AAC8 */  addiu $a0, %lo(D_801DAAC8) # addiu $a0, $a0, -0x5538
/* 1F413C 801DC1BC 00094080 */  sll   $t0, $t1, 2
/* 1F4140 801DC1C0 00280821 */  addu  $at, $at, $t0
/* 1F4144 801DC1C4 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F4148 801DC1C8 AC240490 */   sw    $a0, 0x490($at)
/* 1F414C 801DC1CC 8E6B0000 */  lw    $t3, ($s3)
/* 1F4150 801DC1D0 3C18800E */  lui   $t8, 0x800e
/* 1F4154 801DC1D4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F4158 801DC1D8 8D6C0000 */  lw    $t4, ($t3)
/* 1F415C 801DC1DC 44812000 */  mtc1  $at, $f4
/* 1F4160 801DC1E0 3C0A801E */  lui   $t2, %hi(D_801DAD8C) # $t2, 0x801e
/* 1F4164 801DC1E4 000C7880 */  sll   $t7, $t4, 2
/* 1F4168 801DC1E8 030FC021 */  addu  $t8, $t8, $t7
/* 1F416C 801DC1EC 8F181B50 */  lw    $t8, 0x1b50($t8)
/* 1F4170 801DC1F0 254AAD8C */  addiu $t2, %lo(D_801DAD8C) # addiu $t2, $t2, -0x5274
/* 1F4174 801DC1F4 3C01800F */  lui   $at, %hi(D_800EC9E4) # $at, 0x800f
/* 1F4178 801DC1F8 AF0A0098 */  sw    $t2, 0x98($t8)
/* 1F417C 801DC1FC E424C9E4 */  swc1  $f4, %lo(D_800EC9E4)($at)
/* 1F4180 801DC200 8E6E0000 */  lw    $t6, ($s3)
/* 1F4184 801DC204 3C01800F */  lui   $at, 0x800f
/* 1F4188 801DC208 8DCD0000 */  lw    $t5, ($t6)
/* 1F418C 801DC20C 000DC880 */  sll   $t9, $t5, 2
/* 1F4190 801DC210 00390821 */  addu  $at, $at, $t9
/* 1F4194 801DC214 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 1F4198 801DC218 8EA20000 */  lw    $v0, ($s5)
/* 1F419C 801DC21C 24010004 */  li    $at, 4
/* 1F41A0 801DC220 5441FE06 */  bnel  $v0, $at, .L801DBA3C_ovl13
/* 1F41A4 801DC224 2C410008 */   sltiu $at, $v0, 8
/* 1F41A8 801DC228 8E690000 */  lw    $t1, ($s3)
.L801DC22C_ovl13:
/* 1F41AC 801DC22C 3C08800F */  lui   $t0, 0x800f
/* 1F41B0 801DC230 3C0B800E */  lui   $t3, 0x800e
/* 1F41B4 801DC234 8D300000 */  lw    $s0, ($t1)
/* 1F41B8 801DC238 00108080 */  sll   $s0, $s0, 2
/* 1F41BC 801DC23C 01104021 */  addu  $t0, $t0, $s0
/* 1F41C0 801DC240 8D089AA0 */  lw    $t0, -0x6560($t0)
/* 1F41C4 801DC244 01705821 */  addu  $t3, $t3, $s0
/* 1F41C8 801DC248 150000B3 */  bnez  $t0, .L801DC518_ovl13
/* 1F41CC 801DC24C 00000000 */   nop   
/* 1F41D0 801DC250 8D6B0D50 */  lw    $t3, 0xd50($t3)
/* 1F41D4 801DC254 3C0F800F */  lui   $t7, 0x800f
/* 1F41D8 801DC258 3C01800E */  lui   $at, 0x800e
/* 1F41DC 801DC25C 000B6080 */  sll   $t4, $t3, 2
/* 1F41E0 801DC260 01EC7821 */  addu  $t7, $t7, $t4
/* 1F41E4 801DC264 8DEFBBE0 */  lw    $t7, -0x4420($t7)
/* 1F41E8 801DC268 000F5080 */  sll   $t2, $t7, 2
/* 1F41EC 801DC26C 002A0821 */  addu  $at, $at, $t2
/* 1F41F0 801DC270 C4267B20 */  lwc1  $f6, 0x7b20($at)
/* 1F41F4 801DC274 4606E03C */  c.lt.s $f28, $f6
/* 1F41F8 801DC278 00000000 */  nop   
/* 1F41FC 801DC27C 450000A6 */  bc1f  .L801DC518_ovl13
/* 1F4200 801DC280 00000000 */   nop   
/* 1F4204 801DC284 0C006291 */  jal   random_soft_s32_range
/* 1F4208 801DC288 24040003 */   li    $a0, 3
/* 1F420C 801DC28C 00023080 */  sll   $a2, $v0, 2
/* 1F4210 801DC290 3C04801E */  lui   $a0, 0x801e
/* 1F4214 801DC294 3C05801E */  lui   $a1, 0x801e
/* 1F4218 801DC298 00A62821 */  addu  $a1, $a1, $a2
/* 1F421C 801DC29C 00862021 */  addu  $a0, $a0, $a2
/* 1F4220 801DC2A0 00408025 */  move  $s0, $v0
/* 1F4224 801DC2A4 8C845B14 */  lw    $a0, 0x5b14($a0)
/* 1F4228 801DC2A8 0C077706 */  jal   func_801DDC18_ovl13
/* 1F422C 801DC2AC 8CA55B24 */   lw    $a1, 0x5b24($a1)
/* 1F4230 801DC2B0 2401FFFF */  li    $at, -1
/* 1F4234 801DC2B4 10410098 */  beq   $v0, $at, .L801DC518_ovl13
/* 1F4238 801DC2B8 00409025 */   move  $s2, $v0
/* 1F423C 801DC2BC 1200000A */  beqz  $s0, .L801DC2E8_ovl13
/* 1F4240 801DC2C0 24010002 */   li    $at, 2
/* 1F4244 801DC2C4 12160008 */  beq   $s0, $s6, .L801DC2E8_ovl13
/* 1F4248 801DC2C8 00023080 */   sll   $a2, $v0, 2
/* 1F424C 801DC2CC 12010006 */  beq   $s0, $at, .L801DC2E8_ovl13
/* 1F4250 801DC2D0 3C0F800F */   lui   $t7, %hi(D_800E8AE0) # $t7, 0x800f
/* 1F4254 801DC2D4 24010003 */  li    $at, 3
/* 1F4258 801DC2D8 1201001C */  beq   $s0, $at, .L801DC34C_ovl13
/* 1F425C 801DC2DC 25EF8AE0 */   addiu $t7, %lo(D_800E8AE0) # addiu $t7, $t7, -0x7520
/* 1F4260 801DC2E0 1000008D */  b     .L801DC518_ovl13
/* 1F4264 801DC2E4 00000000 */   nop   
.L801DC2E8_ovl13:
/* 1F4268 801DC2E8 0C006291 */  jal   random_soft_s32_range
/* 1F426C 801DC2EC 24040002 */   li    $a0, 2
/* 1F4270 801DC2F0 3C18800E */  lui   $t8, %hi(D_800E5F90) # $t8, 0x800e
/* 1F4274 801DC2F4 3C0E800E */  lui   $t6, %hi(D_800E6BD0) # $t6, 0x800e
/* 1F4278 801DC2F8 00026880 */  sll   $t5, $v0, 2
/* 1F427C 801DC2FC 3C06801E */  lui   $a2, 0x801e
/* 1F4280 801DC300 00CD3021 */  addu  $a2, $a2, $t5
/* 1F4284 801DC304 25CE6BD0 */  addiu $t6, %lo(D_800E6BD0) # addiu $t6, $t6, 0x6bd0
/* 1F4288 801DC308 27185F90 */  addiu $t8, %lo(D_800E5F90) # addiu $t8, $t8, 0x5f90
/* 1F428C 801DC30C 00128080 */  sll   $s0, $s2, 2
/* 1F4290 801DC310 02182021 */  addu  $a0, $s0, $t8
/* 1F4294 801DC314 020E2821 */  addu  $a1, $s0, $t6
/* 1F4298 801DC318 0C03E65D */  jal   func_800F9974_ovl13
/* 1F429C 801DC31C 8CC65B34 */   lw    $a2, 0x5b34($a2)
/* 1F42A0 801DC320 8E790000 */  lw    $t9, ($s3)
/* 1F42A4 801DC324 3C0143A0 */  li    $at, 0x43A00000 # 320.000000
/* 1F42A8 801DC328 44815000 */  mtc1  $at, $f10
/* 1F42AC 801DC32C 8F290000 */  lw    $t1, ($t9)
/* 1F42B0 801DC330 02906021 */  addu  $t4, $s4, $s0
/* 1F42B4 801DC334 00094080 */  sll   $t0, $t1, 2
/* 1F42B8 801DC338 02885821 */  addu  $t3, $s4, $t0
/* 1F42BC 801DC33C C5680000 */  lwc1  $f8, ($t3)
/* 1F42C0 801DC340 460A4400 */  add.s $f16, $f8, $f10
/* 1F42C4 801DC344 10000074 */  b     .L801DC518_ovl13
/* 1F42C8 801DC348 E5900000 */   swc1  $f16, ($t4)
.L801DC34C_ovl13:
/* 1F42CC 801DC34C 3C01800F */  lui   $at, 0x800f
/* 1F42D0 801DC350 00260821 */  addu  $at, $at, $a2
/* 1F42D4 801DC354 AC368E60 */  sw    $s6, -0x71a0($at)
/* 1F42D8 801DC358 00CF2021 */  addu  $a0, $a2, $t7
/* 1F42DC 801DC35C 8C8A0000 */  lw    $t2, ($a0)
/* 1F42E0 801DC360 8E710000 */  lw    $s1, ($s3)
/* 1F42E4 801DC364 3C05800E */  lui   $a1, %hi(D_800E17D0) # $a1, 0x800e
/* 1F42E8 801DC368 35580001 */  ori   $t8, $t2, 1
/* 1F42EC 801DC36C AC980000 */  sw    $t8, ($a0)
/* 1F42F0 801DC370 8E2E0000 */  lw    $t6, ($s1)
/* 1F42F4 801DC374 24A517D0 */  addiu $a1, %lo(D_800E17D0) # addiu $a1, $a1, 0x17d0
/* 1F42F8 801DC378 00A61821 */  addu  $v1, $a1, $a2
/* 1F42FC 801DC37C 000E6880 */  sll   $t5, $t6, 2
/* 1F4300 801DC380 00ADC821 */  addu  $t9, $a1, $t5
/* 1F4304 801DC384 C7320000 */  lwc1  $f18, ($t9)
/* 1F4308 801DC388 E4720000 */  swc1  $f18, ($v1)
/* 1F430C 801DC38C C4600000 */  lwc1  $f0, ($v1)
/* 1F4310 801DC390 4600D03E */  c.le.s $f26, $f0
/* 1F4314 801DC394 00000000 */  nop   
/* 1F4318 801DC398 45020009 */  bc1fl .L801DC3C0_ovl13
/* 1F431C 801DC39C 461C003C */   c.lt.s $f0, $f28
/* 1F4320 801DC3A0 461A0101 */  sub.s $f4, $f0, $f26
.L801DC3A4_ovl13:
/* 1F4324 801DC3A4 E4640000 */  swc1  $f4, ($v1)
/* 1F4328 801DC3A8 C4600000 */  lwc1  $f0, ($v1)
/* 1F432C 801DC3AC 4600D03E */  c.le.s $f26, $f0
/* 1F4330 801DC3B0 00000000 */  nop   
/* 1F4334 801DC3B4 4503FFFB */  bc1tl .L801DC3A4_ovl13
/* 1F4338 801DC3B8 461A0101 */   sub.s $f4, $f0, $f26
/* 1F433C 801DC3BC 461C003C */  c.lt.s $f0, $f28
.L801DC3C0_ovl13:
/* 1F4340 801DC3C0 00000000 */  nop   
/* 1F4344 801DC3C4 45020009 */  bc1fl .L801DC3EC_ovl13
/* 1F4348 801DC3C8 8E290000 */   lw    $t1, ($s1)
/* 1F434C 801DC3CC 461A0180 */  add.s $f6, $f0, $f26
.L801DC3D0_ovl13:
/* 1F4350 801DC3D0 E4660000 */  swc1  $f6, ($v1)
/* 1F4354 801DC3D4 C4600000 */  lwc1  $f0, ($v1)
/* 1F4358 801DC3D8 461C003C */  c.lt.s $f0, $f28
/* 1F435C 801DC3DC 00000000 */  nop   
/* 1F4360 801DC3E0 4503FFFB */  bc1tl .L801DC3D0_ovl13
/* 1F4364 801DC3E4 461A0180 */   add.s $f6, $f0, $f26
/* 1F4368 801DC3E8 8E290000 */  lw    $t1, ($s1)
.L801DC3EC_ovl13:
/* 1F436C 801DC3EC 3C01800E */  lui   $at, 0x800e
/* 1F4370 801DC3F0 24040007 */  li    $a0, 7
/* 1F4374 801DC3F4 00094080 */  sll   $t0, $t1, 2
/* 1F4378 801DC3F8 00280821 */  addu  $at, $at, $t0
/* 1F437C 801DC3FC C42817D0 */  lwc1  $f8, 0x17d0($at)
/* 1F4380 801DC400 3C01801E */  lui   $at, %hi(D_801E5CA0) # $at, 0x801e
/* 1F4384 801DC404 C42A5CA0 */  lwc1  $f10, %lo(D_801E5CA0)($at)
/* 1F4388 801DC408 0C006291 */  jal   random_soft_s32_range
/* 1F438C 801DC40C 460A4580 */   add.s $f22, $f8, $f10
/* 1F4390 801DC410 00025880 */  sll   $t3, $v0, 2
/* 1F4394 801DC414 3C01801E */  lui   $at, 0x801e
/* 1F4398 801DC418 002B0821 */  addu  $at, $at, $t3
/* 1F439C 801DC41C C4305B3C */  lwc1  $f16, 0x5b3c($at)
/* 1F43A0 801DC420 4610B580 */  add.s $f22, $f22, $f16
/* 1F43A4 801DC424 0C00D604 */  jal   cosf
/* 1F43A8 801DC428 4600B306 */   mov.s $f12, $f22
/* 1F43AC 801DC42C 461C0032 */  c.eq.s $f0, $f28
/* 1F43B0 801DC430 3C01801E */  lui   $at, %hi(D_801E5CA4) # $at, 0x801e
/* 1F43B4 801DC434 45000003 */  bc1f  .L801DC444_ovl13
/* 1F43B8 801DC438 00000000 */   nop   
/* 1F43BC 801DC43C 10000004 */  b     .L801DC450_ovl13
/* 1F43C0 801DC440 C4345CA4 */   lwc1  $f20, %lo(D_801E5CA4)($at)
.L801DC444_ovl13:
/* 1F43C4 801DC444 0C00D604 */  jal   cosf
/* 1F43C8 801DC448 4600B306 */   mov.s $f12, $f22
/* 1F43CC 801DC44C 46000506 */  mov.s $f20, $f0
.L801DC450_ovl13:
/* 1F43D0 801DC450 0C00B5B8 */  jal   sinf
/* 1F43D4 801DC454 4600B306 */   mov.s $f12, $f22
/* 1F43D8 801DC458 3C01C3C8 */  li    $at, 0xC3C80000 # -400.000000
/* 1F43DC 801DC45C 44819000 */  mtc1  $at, $f18
/* 1F43E0 801DC460 8E6C0000 */  lw    $t4, ($s3)
/* 1F43E4 801DC464 3C02800E */  lui   $v0, %hi(D_800E25D0) # $v0, 0x800e
/* 1F43E8 801DC468 46149603 */  div.s $f24, $f18, $f20
/* 1F43EC 801DC46C 8D8F0000 */  lw    $t7, ($t4)
/* 1F43F0 801DC470 244225D0 */  addiu $v0, %lo(D_800E25D0) # addiu $v0, $v0, 0x25d0
/* 1F43F4 801DC474 00128080 */  sll   $s0, $s2, 2
/* 1F43F8 801DC478 000F5080 */  sll   $t2, $t7, 2
/* 1F43FC 801DC47C 004AC021 */  addu  $t8, $v0, $t2
/* 1F4400 801DC480 C7060000 */  lwc1  $f6, ($t8)
/* 1F4404 801DC484 00507021 */  addu  $t6, $v0, $s0
/* 1F4408 801DC488 4600B306 */  mov.s $f12, $f22
/* 1F440C 801DC48C 46180102 */  mul.s $f4, $f0, $f24
/* 1F4410 801DC490 46062200 */  add.s $f8, $f4, $f6
/* 1F4414 801DC494 0C00D604 */  jal   cosf
/* 1F4418 801DC498 E5C80000 */   swc1  $f8, ($t6)
/* 1F441C 801DC49C 8E710000 */  lw    $s1, ($s3)
/* 1F4420 801DC4A0 46180282 */  mul.s $f10, $f0, $f24
/* 1F4424 801DC4A4 3C02800E */  lui   $v0, %hi(D_800E2950) # $v0, 0x800e
/* 1F4428 801DC4A8 8E2D0000 */  lw    $t5, ($s1)
/* 1F442C 801DC4AC 24422950 */  addiu $v0, %lo(D_800E2950) # addiu $v0, $v0, 0x2950
/* 1F4430 801DC4B0 00504021 */  addu  $t0, $v0, $s0
/* 1F4434 801DC4B4 000DC880 */  sll   $t9, $t5, 2
/* 1F4438 801DC4B8 00594821 */  addu  $t1, $v0, $t9
/* 1F443C 801DC4BC C5300000 */  lwc1  $f16, ($t1)
/* 1F4440 801DC4C0 3C0143A0 */  li    $at, 0x43A00000 # 320.000000
/* 1F4444 801DC4C4 44813000 */  mtc1  $at, $f6
/* 1F4448 801DC4C8 46105480 */  add.s $f18, $f10, $f16
/* 1F444C 801DC4CC 02905021 */  addu  $t2, $s4, $s0
/* 1F4450 801DC4D0 3C01800E */  lui   $at, 0x800e
/* 1F4454 801DC4D4 E5120000 */  swc1  $f18, ($t0)
/* 1F4458 801DC4D8 8E2B0000 */  lw    $t3, ($s1)
/* 1F445C 801DC4DC 000B6080 */  sll   $t4, $t3, 2
/* 1F4460 801DC4E0 028C7821 */  addu  $t7, $s4, $t4
/* 1F4464 801DC4E4 C5E40000 */  lwc1  $f4, ($t7)
/* 1F4468 801DC4E8 46062200 */  add.s $f8, $f4, $f6
/* 1F446C 801DC4EC E5480000 */  swc1  $f8, ($t2)
/* 1F4470 801DC4F0 8E380000 */  lw    $t8, ($s1)
/* 1F4474 801DC4F4 00187080 */  sll   $t6, $t8, 2
/* 1F4478 801DC4F8 002E0821 */  addu  $at, $at, $t6
/* 1F447C 801DC4FC C42A17D0 */  lwc1  $f10, 0x17d0($at)
/* 1F4480 801DC500 3C01801E */  lui   $at, %hi(D_801E5CA8) # $at, 0x801e
/* 1F4484 801DC504 C4305CA8 */  lwc1  $f16, %lo(D_801E5CA8)($at)
/* 1F4488 801DC508 3C01800E */  lui   $at, 0x800e
/* 1F448C 801DC50C 00300821 */  addu  $at, $at, $s0
/* 1F4490 801DC510 46105481 */  sub.s $f18, $f10, $f16
/* 1F4494 801DC514 E43241D0 */  swc1  $f18, 0x41d0($at)
.L801DC518_ovl13:
/* 1F4498 801DC518 0C077233 */  jal   func_801DC8CC_ovl13
/* 1F449C 801DC51C 8FA40070 */   lw    $a0, 0x70($sp)
/* 1F44A0 801DC520 0C002DAF */  jal   func_8000B6BC
/* 1F44A4 801DC524 02C02025 */   move  $a0, $s6
/* 1F44A8 801DC528 8EA20000 */  lw    $v0, ($s5)
/* 1F44AC 801DC52C 24010004 */  li    $at, 4
/* 1F44B0 801DC530 5041FF3E */  beql  $v0, $at, .L801DC22C_ovl13
/* 1F44B4 801DC534 8E690000 */   lw    $t1, ($s3)
/* 1F44B8 801DC538 1000FD40 */  b     .L801DBA3C_ovl13
/* 1F44BC 801DC53C 2C410008 */   sltiu $at, $v0, 8
/* 1F44C0 801DC540 24010005 */  li    $at, 5
/* 1F44C4 801DC544 5441FD3D */  bnel  $v0, $at, .L801DBA3C_ovl13
/* 1F44C8 801DC548 2C410008 */   sltiu $at, $v0, 8
.L801DC54C_ovl13:
/* 1F44CC 801DC54C 0C077233 */  jal   func_801DC8CC_ovl13
/* 1F44D0 801DC550 8FA40070 */   lw    $a0, 0x70($sp)
/* 1F44D4 801DC554 0C002DAF */  jal   func_8000B6BC
/* 1F44D8 801DC558 02C02025 */   move  $a0, $s6
/* 1F44DC 801DC55C 8EA20000 */  lw    $v0, ($s5)
/* 1F44E0 801DC560 24010005 */  li    $at, 5
/* 1F44E4 801DC564 1041FFF9 */  beq   $v0, $at, .L801DC54C_ovl13
/* 1F44E8 801DC568 00000000 */   nop   
/* 1F44EC 801DC56C 1000FD33 */  b     .L801DBA3C_ovl13
/* 1F44F0 801DC570 2C410008 */   sltiu $at, $v0, 8
/* 1F44F4 801DC574 8E6D0000 */  lw    $t5, ($s3)
/* 1F44F8 801DC578 3C04801E */  lui   $a0, %hi(D_801DAAC8) # $a0, 0x801e
/* 1F44FC 801DC57C 3C01800E */  lui   $at, 0x800e
/* 1F4500 801DC580 8DB90000 */  lw    $t9, ($t5)
/* 1F4504 801DC584 2484AAC8 */  addiu $a0, %lo(D_801DAAC8) # addiu $a0, $a0, -0x5538
/* 1F4508 801DC588 00194880 */  sll   $t1, $t9, 2
/* 1F450C 801DC58C 00290821 */  addu  $at, $at, $t1
/* 1F4510 801DC590 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F4514 801DC594 AC240490 */   sw    $a0, 0x490($at)
/* 1F4518 801DC598 8E6B0000 */  lw    $t3, ($s3)
/* 1F451C 801DC59C 3C0A800E */  lui   $t2, 0x800e
/* 1F4520 801DC5A0 3C08801E */  lui   $t0, %hi(D_801DAD8C) # $t0, 0x801e
/* 1F4524 801DC5A4 8D6C0000 */  lw    $t4, ($t3)
/* 1F4528 801DC5A8 2508AD8C */  addiu $t0, %lo(D_801DAD8C) # addiu $t0, $t0, -0x5274
/* 1F452C 801DC5AC 000C7880 */  sll   $t7, $t4, 2
/* 1F4530 801DC5B0 014F5021 */  addu  $t2, $t2, $t7
/* 1F4534 801DC5B4 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 1F4538 801DC5B8 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F453C 801DC5BC AD480098 */   sw    $t0, 0x98($t2)
/* 1F4540 801DC5C0 8E710000 */  lw    $s1, ($s3)
/* 1F4544 801DC5C4 3C02800F */  lui   $v0, %hi(D_800EC9E4) # $v0, 0x800f
/* 1F4548 801DC5C8 2442C9E4 */  addiu $v0, %lo(D_800EC9E4) # addiu $v0, $v0, -0x361c
/* 1F454C 801DC5CC E45C0000 */  swc1  $f28, ($v0)
/* 1F4550 801DC5D0 8E380000 */  lw    $t8, ($s1)
/* 1F4554 801DC5D4 C4440000 */  lwc1  $f4, ($v0)
/* 1F4558 801DC5D8 3C01800F */  lui   $at, 0x800f
/* 1F455C 801DC5DC 00187080 */  sll   $t6, $t8, 2
/* 1F4560 801DC5E0 002E0821 */  addu  $at, $at, $t6
/* 1F4564 801DC5E4 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 1F4568 801DC5E8 8E2D0000 */  lw    $t5, ($s1)
/* 1F456C 801DC5EC 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F4570 801DC5F0 44813000 */  mtc1  $at, $f6
/* 1F4574 801DC5F4 3C01800E */  lui   $at, 0x800e
/* 1F4578 801DC5F8 000DC880 */  sll   $t9, $t5, 2
/* 1F457C 801DC5FC 00390821 */  addu  $at, $at, $t9
/* 1F4580 801DC600 E4263210 */  swc1  $f6, 0x3210($at)
/* 1F4584 801DC604 8E300000 */  lw    $s0, ($s1)
/* 1F4588 801DC608 3C01800D */  lui   $at, %hi(D_800D70D8) # $at, 0x800d
/* 1F458C 801DC60C C42A70D8 */  lwc1  $f10, %lo(D_800D70D8)($at)
/* 1F4590 801DC610 00108080 */  sll   $s0, $s0, 2
/* 1F4594 801DC614 02904821 */  addu  $t1, $s4, $s0
/* 1F4598 801DC618 C5280000 */  lwc1  $f8, ($t1)
/* 1F459C 801DC61C 460A403C */  c.lt.s $f8, $f10
/* 1F45A0 801DC620 00000000 */  nop   
/* 1F45A4 801DC624 4500000E */  bc1f  .L801DC660_ovl13
/* 1F45A8 801DC628 00000000 */   nop   
.L801DC62C_ovl13:
/* 1F45AC 801DC62C 0C002DAF */  jal   func_8000B6BC
/* 1F45B0 801DC630 02C02025 */   move  $a0, $s6
/* 1F45B4 801DC634 8E6B0000 */  lw    $t3, ($s3)
/* 1F45B8 801DC638 3C01800D */  lui   $at, %hi(D_800D70D8) # $at, 0x800d
/* 1F45BC 801DC63C C43270D8 */  lwc1  $f18, %lo(D_800D70D8)($at)
/* 1F45C0 801DC640 8D700000 */  lw    $s0, ($t3)
/* 1F45C4 801DC644 00108080 */  sll   $s0, $s0, 2
/* 1F45C8 801DC648 02906021 */  addu  $t4, $s4, $s0
/* 1F45CC 801DC64C C5900000 */  lwc1  $f16, ($t4)
/* 1F45D0 801DC650 4612803C */  c.lt.s $f16, $f18
/* 1F45D4 801DC654 00000000 */  nop   
/* 1F45D8 801DC658 4501FFF4 */  bc1t  .L801DC62C_ovl13
/* 1F45DC 801DC65C 00000000 */   nop   
.L801DC660_ovl13:
/* 1F45E0 801DC660 3C01800E */  lui   $at, 0x800e
/* 1F45E4 801DC664 00300821 */  addu  $at, $at, $s0
/* 1F45E8 801DC668 C4243210 */  lwc1  $f4, 0x3210($at)
/* 1F45EC 801DC66C 3C01801E */  lui   $at, %hi(D_801E5CAC) # $at, 0x801e
/* 1F45F0 801DC670 C4265CAC */  lwc1  $f6, %lo(D_801E5CAC)($at)
/* 1F45F4 801DC674 3C01800E */  lui   $at, 0x800e
/* 1F45F8 801DC678 00300821 */  addu  $at, $at, $s0
/* 1F45FC 801DC67C 46062202 */  mul.s $f8, $f4, $f6
/* 1F4600 801DC680 2404000A */  li    $a0, 10
/* 1F4604 801DC684 0C002DAF */  jal   func_8000B6BC
/* 1F4608 801DC688 E4283750 */   swc1  $f8, 0x3750($at)
/* 1F460C 801DC68C 8E710000 */  lw    $s1, ($s3)
/* 1F4610 801DC690 3C01800E */  lui   $at, 0x800e
/* 1F4614 801DC694 24020007 */  li    $v0, 7
/* 1F4618 801DC698 8E2F0000 */  lw    $t7, ($s1)
/* 1F461C 801DC69C 000F4080 */  sll   $t0, $t7, 2
/* 1F4620 801DC6A0 00280821 */  addu  $at, $at, $t0
/* 1F4624 801DC6A4 E43C3750 */  swc1  $f28, 0x3750($at)
/* 1F4628 801DC6A8 8E300000 */  lw    $s0, ($s1)
/* 1F462C 801DC6AC 3C01800E */  lui   $at, 0x800e
/* 1F4630 801DC6B0 00108080 */  sll   $s0, $s0, 2
/* 1F4634 801DC6B4 00300821 */  addu  $at, $at, $s0
/* 1F4638 801DC6B8 C42A3750 */  lwc1  $f10, 0x3750($at)
/* 1F463C 801DC6BC 3C01800E */  lui   $at, 0x800e
/* 1F4640 801DC6C0 00300821 */  addu  $at, $at, $s0
/* 1F4644 801DC6C4 E42A3210 */  swc1  $f10, 0x3210($at)
/* 1F4648 801DC6C8 8E2A0000 */  lw    $t2, ($s1)
/* 1F464C 801DC6CC 3C01801E */  lui   $at, %hi(D_801E5CB0) # $at, 0x801e
/* 1F4650 801DC6D0 C4305CB0 */  lwc1  $f16, %lo(D_801E5CB0)($at)
/* 1F4654 801DC6D4 3C01800E */  lui   $at, 0x800e
/* 1F4658 801DC6D8 000AC080 */  sll   $t8, $t2, 2
/* 1F465C 801DC6DC 00380821 */  addu  $at, $at, $t8
/* 1F4660 801DC6E0 E4303C90 */  swc1  $f16, 0x3c90($at)
/* 1F4664 801DC6E4 1000FCD4 */  b     .L801DBA38_ovl13
/* 1F4668 801DC6E8 AEA20000 */   sw    $v0, ($s5)
/* 1F466C 801DC6EC 24010007 */  li    $at, 7
/* 1F4670 801DC6F0 5441FCD2 */  bnel  $v0, $at, .L801DBA3C_ovl13
/* 1F4674 801DC6F4 2C410008 */   sltiu $at, $v0, 8
.L801DC6F8_ovl13:
/* 1F4678 801DC6F8 0C002DAF */  jal   func_8000B6BC
/* 1F467C 801DC6FC 02C02025 */   move  $a0, $s6
/* 1F4680 801DC700 8EA20000 */  lw    $v0, ($s5)
/* 1F4684 801DC704 24010007 */  li    $at, 7
/* 1F4688 801DC708 1041FFFB */  beq   $v0, $at, .L801DC6F8_ovl13
/* 1F468C 801DC70C 00000000 */   nop   
/* 1F4690 801DC710 2C410008 */  sltiu $at, $v0, 8
/* 1F4694 801DC714 5420FCCB */  bnezl $at, .L801DBA44_ovl13
/* 1F4698 801DC718 00024880 */   sll   $t1, $v0, 2
.L801DC71C_ovl13:
/* 1F469C 801DC71C 0C02BE85 */  jal   func_800AFA14_ovl13
/* 1F46A0 801DC720 00000000 */   nop   
/* 1F46A4 801DC724 1000FCC4 */  b     .L801DBA38_ovl13
/* 1F46A8 801DC728 8EA20000 */   lw    $v0, ($s5)
/* 1F46AC 801DC72C 00000000 */  nop   
/* 1F46B0 801DC730 00000000 */  nop   
/* 1F46B4 801DC734 00000000 */  nop   
/* 1F46B8 801DC738 00000000 */  nop   
/* 1F46BC 801DC73C 00000000 */  nop   
/* 1F46C0 801DC740 8FBF006C */  lw    $ra, 0x6c($sp)
/* 1F46C4 801DC744 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1F46C8 801DC748 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1F46CC 801DC74C D7B80028 */  ldc1  $f24, 0x28($sp)
/* 1F46D0 801DC750 D7BA0030 */  ldc1  $f26, 0x30($sp)
/* 1F46D4 801DC754 D7BC0038 */  ldc1  $f28, 0x38($sp)
/* 1F46D8 801DC758 D7BE0040 */  ldc1  $f30, 0x40($sp)
/* 1F46DC 801DC75C 8FB00048 */  lw    $s0, 0x48($sp)
/* 1F46E0 801DC760 8FB1004C */  lw    $s1, 0x4c($sp)
/* 1F46E4 801DC764 8FB20050 */  lw    $s2, 0x50($sp)
/* 1F46E8 801DC768 8FB30054 */  lw    $s3, 0x54($sp)
/* 1F46EC 801DC76C 8FB40058 */  lw    $s4, 0x58($sp)
/* 1F46F0 801DC770 8FB5005C */  lw    $s5, 0x5c($sp)
/* 1F46F4 801DC774 8FB60060 */  lw    $s6, 0x60($sp)
/* 1F46F8 801DC778 8FB70064 */  lw    $s7, 0x64($sp)
/* 1F46FC 801DC77C 8FBE0068 */  lw    $fp, 0x68($sp)
/* 1F4700 801DC780 03E00008 */  jr    $ra
/* 1F4704 801DC784 27BD0070 */   addiu $sp, $sp, 0x70

/* 1F4708 801DC788 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1F470C 801DC78C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1F4710 801DC790 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F4714 801DC794 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F4718 801DC798 8C6E0000 */  lw    $t6, ($v1)
/* 1F471C 801DC79C 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1F4720 801DC7A0 24E79AA0 */  addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1F4724 801DC7A4 000E7880 */  sll   $t7, $t6, 2
/* 1F4728 801DC7A8 00EF1021 */  addu  $v0, $a3, $t7
/* 1F472C 801DC7AC 8C580000 */  lw    $t8, ($v0)
/* 1F4730 801DC7B0 240100B4 */  li    $at, 180
/* 1F4734 801DC7B4 3C0C800E */  lui   $t4, 0x800e
/* 1F4738 801DC7B8 27190001 */  addiu $t9, $t8, 1
/* 1F473C 801DC7BC AC590000 */  sw    $t9, ($v0)
/* 1F4740 801DC7C0 8C680000 */  lw    $t0, ($v1)
/* 1F4744 801DC7C4 3C0E800F */  lui   $t6, %hi(D_800E98E0) # $t6, 0x800f
/* 1F4748 801DC7C8 25CE98E0 */  addiu $t6, %lo(D_800E98E0) # addiu $t6, $t6, -0x6720
/* 1F474C 801DC7CC 00084880 */  sll   $t1, $t0, 2
/* 1F4750 801DC7D0 00E91021 */  addu  $v0, $a3, $t1
/* 1F4754 801DC7D4 8C4A0000 */  lw    $t2, ($v0)
/* 1F4758 801DC7D8 0141001A */  div   $zero, $t2, $at
/* 1F475C 801DC7DC 00005810 */  mfhi  $t3
/* 1F4760 801DC7E0 AC4B0000 */  sw    $t3, ($v0)
/* 1F4764 801DC7E4 8C650000 */  lw    $a1, ($v1)
/* 1F4768 801DC7E8 00052880 */  sll   $a1, $a1, 2
/* 1F476C 801DC7EC 01856021 */  addu  $t4, $t4, $a1
/* 1F4770 801DC7F0 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 1F4774 801DC7F4 000C6880 */  sll   $t5, $t4, 2
/* 1F4778 801DC7F8 01AE3021 */  addu  $a2, $t5, $t6
/* 1F477C 801DC7FC 8CCF0000 */  lw    $t7, ($a2)
/* 1F4780 801DC800 2DE10008 */  sltiu $at, $t7, 8
/* 1F4784 801DC804 1020002D */  beqz  $at, .L801DC8BC_ovl13
/* 1F4788 801DC808 000F7880 */   sll   $t7, $t7, 2
/* 1F478C 801DC80C 3C01801E */  lui   $at, 0x801e
/* 1F4790 801DC810 002F0821 */  addu  $at, $at, $t7
/* 1F4794 801DC814 8C2F5CB4 */  lw    $t7, 0x5cb4($at)
/* 1F4798 801DC818 01E00008 */  jr    $t7
/* 1F479C 801DC81C 00000000 */   nop   
/* 1F47A0 801DC820 0C06835D */  jal   func_801A0D74_ovl13
/* 1F47A4 801DC824 00000000 */   nop   
/* 1F47A8 801DC828 10000025 */  b     .L801DC8C0_ovl13
/* 1F47AC 801DC82C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1F47B0 801DC830 3C048013 */  lui   $a0, %hi(D_801290D0) # $a0, 0x8013
/* 1F47B4 801DC834 248490D0 */  addiu $a0, %lo(D_801290D0) # addiu $a0, $a0, -0x6f30
/* 1F47B8 801DC838 8C980000 */  lw    $t8, ($a0)
/* 1F47BC 801DC83C 3C03800E */  lui   $v1, %hi(D_800DFBD0) # $v1, 0x800e
/* 1F47C0 801DC840 2463FBD0 */  addiu $v1, %lo(D_800DFBD0) # addiu $v1, $v1, -0x430
/* 1F47C4 801DC844 0018C880 */  sll   $t9, $t8, 2
/* 1F47C8 801DC848 00794021 */  addu  $t0, $v1, $t9
/* 1F47CC 801DC84C 8D090000 */  lw    $t1, ($t0)
/* 1F47D0 801DC850 3C01800F */  lui   $at, 0x800f
/* 1F47D4 801DC854 00250821 */  addu  $at, $at, $a1
/* 1F47D8 801DC858 8D220008 */  lw    $v0, 8($t1)
/* 1F47DC 801DC85C C426A6E0 */  lwc1  $f6, -0x5920($at)
/* 1F47E0 801DC860 3C01C470 */  li    $at, 0xC4700000 # -960.000000
/* 1F47E4 801DC864 C4440020 */  lwc1  $f4, 0x20($v0)
/* 1F47E8 801DC868 44815000 */  mtc1  $at, $f10
/* 1F47EC 801DC86C 3C0143F0 */  li    $at, 0x43F00000 # 480.000000
/* 1F47F0 801DC870 46062201 */  sub.s $f8, $f4, $f6
/* 1F47F4 801DC874 E4480020 */  swc1  $f8, 0x20($v0)
/* 1F47F8 801DC878 8C8A0000 */  lw    $t2, ($a0)
/* 1F47FC 801DC87C 000A5880 */  sll   $t3, $t2, 2
/* 1F4800 801DC880 006B6021 */  addu  $t4, $v1, $t3
/* 1F4804 801DC884 8D8D0000 */  lw    $t5, ($t4)
/* 1F4808 801DC888 8DA20008 */  lw    $v0, 8($t5)
/* 1F480C 801DC88C C4400020 */  lwc1  $f0, 0x20($v0)
/* 1F4810 801DC890 460A003C */  c.lt.s $f0, $f10
/* 1F4814 801DC894 00000000 */  nop   
/* 1F4818 801DC898 45020009 */  bc1fl .L801DC8C0_ovl13
/* 1F481C 801DC89C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1F4820 801DC8A0 44818000 */  mtc1  $at, $f16
/* 1F4824 801DC8A4 00000000 */  nop   
/* 1F4828 801DC8A8 46100480 */  add.s $f18, $f0, $f16
/* 1F482C 801DC8AC 10000003 */  b     .L801DC8BC_ovl13
/* 1F4830 801DC8B0 E4520020 */   swc1  $f18, 0x20($v0)
/* 1F4834 801DC8B4 240E0006 */  li    $t6, 6
/* 1F4838 801DC8B8 ACCE0000 */  sw    $t6, ($a2)
.L801DC8BC_ovl13:
/* 1F483C 801DC8BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DC8C0_ovl13:
/* 1F4840 801DC8C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F4844 801DC8C4 03E00008 */  jr    $ra
/* 1F4848 801DC8C8 00000000 */   nop   

/* 1F484C 801DC8CC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 1F4850 801DC8D0 F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1F4854 801DC8D4 3C01801E */  lui   $at, %hi(D_801E5CD4) # $at, 0x801e
/* 1F4858 801DC8D8 AFBE0048 */  sw    $fp, 0x48($sp)
/* 1F485C 801DC8DC AFB70044 */  sw    $s7, 0x44($sp)
/* 1F4860 801DC8E0 AFB5003C */  sw    $s5, 0x3c($sp)
/* 1F4864 801DC8E4 AFB40038 */  sw    $s4, 0x38($sp)
/* 1F4868 801DC8E8 AFB20030 */  sw    $s2, 0x30($sp)
/* 1F486C 801DC8EC C4365CD4 */  lwc1  $f22, %lo(D_801E5CD4)($at)
/* 1F4870 801DC8F0 AFB60040 */  sw    $s6, 0x40($sp)
/* 1F4874 801DC8F4 AFB30034 */  sw    $s3, 0x34($sp)
/* 1F4878 801DC8F8 AFB1002C */  sw    $s1, 0x2c($sp)
/* 1F487C 801DC8FC AFB00028 */  sw    $s0, 0x28($sp)
/* 1F4880 801DC900 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1F4884 801DC904 3C01801E */  lui   $at, %hi(D_801E5CD8) # $at, 0x801e
/* 1F4888 801DC908 3C12800E */  lui   $s2, %hi(D_800DD788) # $s2, 0x800e
/* 1F488C 801DC90C 3C14800E */  lui   $s4, %hi(D_800E7730) # $s4, 0x800e
/* 1F4890 801DC910 3C15800E */  lui   $s5, %hi(D_800E7B20) # $s5, 0x800e
/* 1F4894 801DC914 3C17800F */  lui   $s7, %hi(D_800E83E0) # $s7, 0x800f
/* 1F4898 801DC918 3C1E8005 */  lui   $fp, %hi(D_8004A7C4) # $fp, 0x8005
/* 1F489C 801DC91C AFBF004C */  sw    $ra, 0x4c($sp)
/* 1F48A0 801DC920 AFA40050 */  sw    $a0, 0x50($sp)
/* 1F48A4 801DC924 2403FFFF */  li    $v1, -1
/* 1F48A8 801DC928 27DEA7C4 */  addiu $fp, %lo(D_8004A7C4) # addiu $fp, $fp, -0x583c
/* 1F48AC 801DC92C 26F783E0 */  addiu $s7, %lo(D_800E83E0) # addiu $s7, $s7, -0x7c20
/* 1F48B0 801DC930 26B57B20 */  addiu $s5, %lo(D_800E7B20) # addiu $s5, $s5, 0x7b20
/* 1F48B4 801DC934 26947730 */  addiu $s4, %lo(D_800E7730) # addiu $s4, $s4, 0x7730
/* 1F48B8 801DC938 2652D788 */  addiu $s2, %lo(D_800DD788) # addiu $s2, $s2, -0x2878
/* 1F48BC 801DC93C C4345CD8 */  lwc1  $f20, %lo(D_801E5CD8)($at)
/* 1F48C0 801DC940 2410001E */  li    $s0, 30
/* 1F48C4 801DC944 24110078 */  li    $s1, 120
/* 1F48C8 801DC948 2413FFFF */  li    $s3, -1
/* 1F48CC 801DC94C 24160001 */  li    $s6, 1
.L801DC950_ovl13:
/* 1F48D0 801DC950 8E4E0000 */  lw    $t6, ($s2)
/* 1F48D4 801DC954 02907821 */  addu  $t7, $s4, $s0
/* 1F48D8 801DC958 526E0026 */  beql  $s3, $t6, .L801DC9F4_ovl13
/* 1F48DC 801DC95C 26100001 */   addiu $s0, $s0, 1
/* 1F48E0 801DC960 91F80000 */  lbu   $t8, ($t7)
/* 1F48E4 801DC964 02B1C821 */  addu  $t9, $s5, $s1
/* 1F48E8 801DC968 57000022 */  bnezl $t8, .L801DC9F4_ovl13
/* 1F48EC 801DC96C 26100001 */   addiu $s0, $s0, 1
/* 1F48F0 801DC970 C7200000 */  lwc1  $f0, ($t9)
/* 1F48F4 801DC974 4600A03C */  c.lt.s $f20, $f0
/* 1F48F8 801DC978 00000000 */  nop   
/* 1F48FC 801DC97C 4502001D */  bc1fl .L801DC9F4_ovl13
/* 1F4900 801DC980 26100001 */   addiu $s0, $s0, 1
/* 1F4904 801DC984 4616003C */  c.lt.s $f0, $f22
/* 1F4908 801DC988 02F14021 */  addu  $t0, $s7, $s1
/* 1F490C 801DC98C 45020019 */  bc1fl .L801DC9F4_ovl13
/* 1F4910 801DC990 26100001 */   addiu $s0, $s0, 1
/* 1F4914 801DC994 8D090000 */  lw    $t1, ($t0)
/* 1F4918 801DC998 3C0E800E */  lui   $t6, 0x800e
/* 1F491C 801DC99C 3C0C800E */  lui   $t4, 0x800e
/* 1F4920 801DC9A0 12C9000B */  beq   $s6, $t1, .L801DC9D0_ovl13
/* 1F4924 801DC9A4 01D17021 */   addu  $t6, $t6, $s1
/* 1F4928 801DC9A8 8FCA0000 */  lw    $t2, ($fp)
/* 1F492C 801DC9AC 01916021 */  addu  $t4, $t4, $s1
/* 1F4930 801DC9B0 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 1F4934 801DC9B4 8D4B0000 */  lw    $t3, ($t2)
/* 1F4938 801DC9B8 556C000E */  bnel  $t3, $t4, .L801DC9F4_ovl13
/* 1F493C 801DC9BC 26100001 */   addiu $s0, $s0, 1
/* 1F4940 801DC9C0 0C077290 */  jal   func_801DCA40_ovl13
/* 1F4944 801DC9C4 02002025 */   move  $a0, $s0
/* 1F4948 801DC9C8 10000009 */  b     .L801DC9F0_ovl13
/* 1F494C 801DC9CC 00401825 */   move  $v1, $v0
.L801DC9D0_ovl13:
/* 1F4950 801DC9D0 8DCEF150 */  lw    $t6, -0xeb0($t6)
/* 1F4954 801DC9D4 3C0D801A */  lui   $t5, %hi(D_801A4C0C) # $t5, 0x801a
/* 1F4958 801DC9D8 25AD4C0C */  addiu $t5, %lo(D_801A4C0C) # addiu $t5, $t5, 0x4c0c
/* 1F495C 801DC9DC 55AE0005 */  bnel  $t5, $t6, .L801DC9F4_ovl13
/* 1F4960 801DC9E0 26100001 */   addiu $s0, $s0, 1
/* 1F4964 801DC9E4 0C077290 */  jal   func_801DCA40_ovl13
/* 1F4968 801DC9E8 02002025 */   move  $a0, $s0
/* 1F496C 801DC9EC 00401825 */  move  $v1, $v0
.L801DC9F0_ovl13:
/* 1F4970 801DC9F0 26100001 */  addiu $s0, $s0, 1
.L801DC9F4_ovl13:
/* 1F4974 801DC9F4 2401003C */  li    $at, 60
/* 1F4978 801DC9F8 26310004 */  addiu $s1, $s1, 4
/* 1F497C 801DC9FC 1601FFD4 */  bne   $s0, $at, .L801DC950_ovl13
/* 1F4980 801DCA00 26520004 */   addiu $s2, $s2, 4
/* 1F4984 801DCA04 8FBF004C */  lw    $ra, 0x4c($sp)
/* 1F4988 801DCA08 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1F498C 801DCA0C D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1F4990 801DCA10 8FB00028 */  lw    $s0, 0x28($sp)
/* 1F4994 801DCA14 8FB1002C */  lw    $s1, 0x2c($sp)
/* 1F4998 801DCA18 8FB20030 */  lw    $s2, 0x30($sp)
/* 1F499C 801DCA1C 8FB30034 */  lw    $s3, 0x34($sp)
/* 1F49A0 801DCA20 8FB40038 */  lw    $s4, 0x38($sp)
/* 1F49A4 801DCA24 8FB5003C */  lw    $s5, 0x3c($sp)
/* 1F49A8 801DCA28 8FB60040 */  lw    $s6, 0x40($sp)
/* 1F49AC 801DCA2C 8FB70044 */  lw    $s7, 0x44($sp)
/* 1F49B0 801DCA30 8FBE0048 */  lw    $fp, 0x48($sp)
/* 1F49B4 801DCA34 27BD0050 */  addiu $sp, $sp, 0x50
/* 1F49B8 801DCA38 03E00008 */  jr    $ra
/* 1F49BC 801DCA3C 00601025 */   move  $v0, $v1

/* 1F49C0 801DCA40 00047040 */  sll   $t6, $a0, 1
/* 1F49C4 801DCA44 3C02800E */  lui   $v0, 0x800e
/* 1F49C8 801DCA48 004E1021 */  addu  $v0, $v0, $t6
/* 1F49CC 801DCA4C 944277A0 */  lhu   $v0, 0x77a0($v0)
/* 1F49D0 801DCA50 24010019 */  li    $at, 25
/* 1F49D4 801DCA54 00045080 */  sll   $t2, $a0, 2
/* 1F49D8 801DCA58 10410015 */  beq   $v0, $at, .L801DCAB0_ovl13
/* 1F49DC 801DCA5C 3C0B800F */   lui   $t3, 0x800f
/* 1F49E0 801DCA60 2401001B */  li    $at, 27
/* 1F49E4 801DCA64 10410006 */  beq   $v0, $at, .L801DCA80_ovl13
/* 1F49E8 801DCA68 3C03800F */   lui   $v1, 0x800f
/* 1F49EC 801DCA6C 24010021 */  li    $at, 33
/* 1F49F0 801DCA70 1041001C */  beq   $v0, $at, .L801DCAE4_ovl13
/* 1F49F4 801DCA74 00000000 */   nop   
/* 1F49F8 801DCA78 03E00008 */  jr    $ra
/* 1F49FC 801DCA7C 00001025 */   move  $v0, $zero

.L801DCA80_ovl13:
/* 1F4A00 801DCA80 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1F4A04 801DCA84 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1F4A08 801DCA88 2463A6E0 */  addiu $v1, $v1, -0x5920
/* 1F4A0C 801DCA8C 00047880 */  sll   $t7, $a0, 2
/* 1F4A10 801DCA90 8F190000 */  lw    $t9, ($t8)
/* 1F4A14 801DCA94 006F1021 */  addu  $v0, $v1, $t7
/* 1F4A18 801DCA98 C4440000 */  lwc1  $f4, ($v0)
/* 1F4A1C 801DCA9C 00194080 */  sll   $t0, $t9, 2
/* 1F4A20 801DCAA0 00684821 */  addu  $t1, $v1, $t0
/* 1F4A24 801DCAA4 C5260000 */  lwc1  $f6, ($t1)
/* 1F4A28 801DCAA8 46062201 */  sub.s $f8, $f4, $f6
/* 1F4A2C 801DCAAC E4480000 */  swc1  $f8, ($v0)
.L801DCAB0_ovl13:
/* 1F4A30 801DCAB0 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1F4A34 801DCAB4 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1F4A38 801DCAB8 3C03800F */  lui   $v1, %hi(D_800EA6E0) # $v1, 0x800f
/* 1F4A3C 801DCABC 2463A6E0 */  addiu $v1, %lo(D_800EA6E0) # addiu $v1, $v1, -0x5920
/* 1F4A40 801DCAC0 8D8D0000 */  lw    $t5, ($t4)
/* 1F4A44 801DCAC4 256BA8A0 */  addiu $t3, $t3, -0x5760
/* 1F4A48 801DCAC8 014B1021 */  addu  $v0, $t2, $t3
/* 1F4A4C 801DCACC 000D7080 */  sll   $t6, $t5, 2
/* 1F4A50 801DCAD0 006E7821 */  addu  $t7, $v1, $t6
/* 1F4A54 801DCAD4 C5F00000 */  lwc1  $f16, ($t7)
/* 1F4A58 801DCAD8 C44A0000 */  lwc1  $f10, ($v0)
/* 1F4A5C 801DCADC 46105481 */  sub.s $f18, $f10, $f16
/* 1F4A60 801DCAE0 E4520000 */  swc1  $f18, ($v0)
.L801DCAE4_ovl13:
/* 1F4A64 801DCAE4 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F4A68 801DCAE8 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1F4A6C 801DCAEC 3C03800F */  lui   $v1, %hi(D_800EA6E0) # $v1, 0x800f
/* 1F4A70 801DCAF0 3C19800E */  lui   $t9, %hi(D_800E2790) # $t9, 0x800e
/* 1F4A74 801DCAF4 8D090000 */  lw    $t1, ($t0)
/* 1F4A78 801DCAF8 2463A6E0 */  addiu $v1, %lo(D_800EA6E0) # addiu $v1, $v1, -0x5920
/* 1F4A7C 801DCAFC 27392790 */  addiu $t9, %lo(D_800E2790) # addiu $t9, $t9, 0x2790
/* 1F4A80 801DCB00 0004C080 */  sll   $t8, $a0, 2
/* 1F4A84 801DCB04 00095080 */  sll   $t2, $t1, 2
/* 1F4A88 801DCB08 006A5821 */  addu  $t3, $v1, $t2
/* 1F4A8C 801DCB0C 03191021 */  addu  $v0, $t8, $t9
/* 1F4A90 801DCB10 C4440000 */  lwc1  $f4, ($v0)
/* 1F4A94 801DCB14 C5660000 */  lwc1  $f6, ($t3)
/* 1F4A98 801DCB18 46062201 */  sub.s $f8, $f4, $f6
/* 1F4A9C 801DCB1C E4480000 */  swc1  $f8, ($v0)
/* 1F4AA0 801DCB20 03E00008 */  jr    $ra
/* 1F4AA4 801DCB24 00001025 */   move  $v0, $zero

/* 1F4AA8 801DCB28 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1F4AAC 801DCB2C AFB10018 */  sw    $s1, 0x18($sp)
/* 1F4AB0 801DCB30 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1F4AB4 801DCB34 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1F4AB8 801DCB38 8E2E0000 */  lw    $t6, ($s1)
/* 1F4ABC 801DCB3C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1F4AC0 801DCB40 AFB00014 */  sw    $s0, 0x14($sp)
/* 1F4AC4 801DCB44 AFA40020 */  sw    $a0, 0x20($sp)
/* 1F4AC8 801DCB48 8DCF0000 */  lw    $t7, ($t6)
/* 1F4ACC 801DCB4C 3C10800E */  lui   $s0, 0x800e
/* 1F4AD0 801DCB50 000FC080 */  sll   $t8, $t7, 2
/* 1F4AD4 801DCB54 02188021 */  addu  $s0, $s0, $t8
/* 1F4AD8 801DCB58 0C068CA0 */  jal   func_801A3280_ovl13
/* 1F4ADC 801DCB5C 8E100D50 */   lw    $s0, 0xd50($s0)
/* 1F4AE0 801DCB60 0C066ED6 */  jal   func_8019BB58_ovl13
/* 1F4AE4 801DCB64 00000000 */   nop   
/* 1F4AE8 801DCB68 8E220000 */  lw    $v0, ($s1)
/* 1F4AEC 801DCB6C 3C01800E */  lui   $at, 0x800e
/* 1F4AF0 801DCB70 3C04800E */  lui   $a0, 0x800e
/* 1F4AF4 801DCB74 8C590000 */  lw    $t9, ($v0)
/* 1F4AF8 801DCB78 3C05800B */  lui   $a1, %hi(D_800B1434) # $a1, 0x800b
/* 1F4AFC 801DCB7C 24A51434 */  addiu $a1, %lo(D_800B1434) # addiu $a1, $a1, 0x1434
/* 1F4B00 801DCB80 00194080 */  sll   $t0, $t9, 2
/* 1F4B04 801DCB84 00280821 */  addu  $at, $at, $t0
/* 1F4B08 801DCB88 AC20EF90 */  sw    $zero, -0x1070($at)
/* 1F4B0C 801DCB8C 8C490000 */  lw    $t1, ($v0)
/* 1F4B10 801DCB90 3C01800E */  lui   $at, 0x800e
/* 1F4B14 801DCB94 00095080 */  sll   $t2, $t1, 2
/* 1F4B18 801DCB98 002A0821 */  addu  $at, $at, $t2
/* 1F4B1C 801DCB9C AC20F150 */  sw    $zero, -0xeb0($at)
/* 1F4B20 801DCBA0 8C4B0000 */  lw    $t3, ($v0)
/* 1F4B24 801DCBA4 000B6080 */  sll   $t4, $t3, 2
/* 1F4B28 801DCBA8 008C2021 */  addu  $a0, $a0, $t4
/* 1F4B2C 801DCBAC 0C02C7DA */  jal   func_800B1F68_ovl13
/* 1F4B30 801DCBB0 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 1F4B34 801DCBB4 8E2D0000 */  lw    $t5, ($s1)
/* 1F4B38 801DCBB8 2404007D */  li    $a0, 125
/* 1F4B3C 801DCBBC 0C02C67D */  jal   func_800B19F4
/* 1F4B40 801DCBC0 8DA50000 */   lw    $a1, ($t5)
/* 1F4B44 801DCBC4 00002025 */  move  $a0, $zero
/* 1F4B48 801DCBC8 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1F4B4C 801DCBCC 8E250000 */   lw    $a1, ($s1)
/* 1F4B50 801DCBD0 0C029D9E */  jal   func_800A7678
/* 1F4B54 801DCBD4 24040028 */   li    $a0, 40
/* 1F4B58 801DCBD8 8E2F0000 */  lw    $t7, ($s1)
/* 1F4B5C 801DCBDC 3C01800F */  lui   $at, 0x800f
/* 1F4B60 801DCBE0 240E0002 */  li    $t6, 2
/* 1F4B64 801DCBE4 8DF80000 */  lw    $t8, ($t7)
/* 1F4B68 801DCBE8 02002825 */  move  $a1, $s0
/* 1F4B6C 801DCBEC 0018C880 */  sll   $t9, $t8, 2
/* 1F4B70 801DCBF0 00390821 */  addu  $at, $at, $t9
/* 1F4B74 801DCBF4 AC2E98E0 */  sw    $t6, -0x6720($at)
/* 1F4B78 801DCBF8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F4B7C 801DCBFC 0C02BB74 */  jal   func_800AEDD0_ovl13
/* 1F4B80 801DCC00 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1F4B84 801DCC04 3C040001 */  lui   $a0, (0x00010412 >> 16) # lui $a0, 1
/* 1F4B88 801DCC08 34840412 */  ori   $a0, (0x00010412 & 0xFFFF) # ori $a0, $a0, 0x412
/* 1F4B8C 801DCC0C 24050000 */  li    $a1, 0
/* 1F4B90 801DCC10 0C02A80E */  jal   func_800AA038_ovl13
/* 1F4B94 801DCC14 02003025 */   move  $a2, $s0
/* 1F4B98 801DCC18 0C002DAF */  jal   func_8000B6BC
/* 1F4B9C 801DCC1C 2404002A */   li    $a0, 42
/* 1F4BA0 801DCC20 3C040001 */  lui   $a0, (0x0001041F >> 16) # lui $a0, 1
/* 1F4BA4 801DCC24 3484041F */  ori   $a0, (0x0001041F & 0xFFFF) # ori $a0, $a0, 0x41f
/* 1F4BA8 801DCC28 24050000 */  li    $a1, 0
/* 1F4BAC 801DCC2C 0C02A80E */  jal   func_800AA038_ovl13
/* 1F4BB0 801DCC30 02003025 */   move  $a2, $s0
/* 1F4BB4 801DCC34 8E220000 */  lw    $v0, ($s1)
/* 1F4BB8 801DCC38 3C01800F */  lui   $at, 0x800f
/* 1F4BBC 801DCC3C 00105880 */  sll   $t3, $s0, 2
/* 1F4BC0 801DCC40 8C480000 */  lw    $t0, ($v0)
/* 1F4BC4 801DCC44 240AFFFF */  li    $t2, -1
/* 1F4BC8 801DCC48 00084880 */  sll   $t1, $t0, 2
/* 1F4BCC 801DCC4C 00290821 */  addu  $at, $at, $t1
/* 1F4BD0 801DCC50 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1F4BD4 801DCC54 3C01800F */  lui   $at, 0x800f
/* 1F4BD8 801DCC58 002B0821 */  addu  $at, $at, $t3
/* 1F4BDC 801DCC5C AC2ABDA0 */  sw    $t2, -0x4260($at)
/* 1F4BE0 801DCC60 0C067656 */  jal   func_8019D958_ovl13
/* 1F4BE4 801DCC64 94440002 */   lhu   $a0, 2($v0)
/* 1F4BE8 801DCC68 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1F4BEC 801DCC6C 8FB00014 */  lw    $s0, 0x14($sp)
/* 1F4BF0 801DCC70 8FB10018 */  lw    $s1, 0x18($sp)
/* 1F4BF4 801DCC74 03E00008 */  jr    $ra
/* 1F4BF8 801DCC78 27BD0020 */   addiu $sp, $sp, 0x20

/* 1F4BFC 801DCC7C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1F4C00 801DCC80 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 1F4C04 801DCC84 8C6E0000 */  lw    $t6, ($v1)
/* 1F4C08 801DCC88 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F4C0C 801DCC8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F4C10 801DCC90 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F4C14 801DCC94 8DCF0000 */  lw    $t7, ($t6)
/* 1F4C18 801DCC98 3C02800E */  lui   $v0, 0x800e
/* 1F4C1C 801DCC9C 3C01C448 */  li    $at, 0xC4480000 # -800.000000
/* 1F4C20 801DCCA0 000FC080 */  sll   $t8, $t7, 2
/* 1F4C24 801DCCA4 00581021 */  addu  $v0, $v0, $t8
/* 1F4C28 801DCCA8 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 1F4C2C 801DCCAC 44812000 */  mtc1  $at, $f4
/* 1F4C30 801DCCB0 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1F4C34 801DCCB4 8C590080 */  lw    $t9, 0x80($v0)
/* 1F4C38 801DCCB8 44813000 */  mtc1  $at, $f6
/* 1F4C3C 801DCCBC 3C04800E */  lui   $a0, 0x800e
/* 1F4C40 801DCCC0 E7240018 */  swc1  $f4, 0x18($t9)
/* 1F4C44 801DCCC4 8C480080 */  lw    $t0, 0x80($v0)
/* 1F4C48 801DCCC8 3C05800B */  lui   $a1, %hi(D_800B17B8) # $a1, 0x800b
/* 1F4C4C 801DCCCC 24A517B8 */  addiu $a1, %lo(D_800B17B8) # addiu $a1, $a1, 0x17b8
/* 1F4C50 801DCCD0 E5060010 */  swc1  $f6, 0x10($t0)
/* 1F4C54 801DCCD4 8C690000 */  lw    $t1, ($v1)
/* 1F4C58 801DCCD8 8D2A0000 */  lw    $t2, ($t1)
/* 1F4C5C 801DCCDC 000A5880 */  sll   $t3, $t2, 2
/* 1F4C60 801DCCE0 008B2021 */  addu  $a0, $a0, $t3
/* 1F4C64 801DCCE4 0C02C7DA */  jal   func_800B1F68_ovl13
/* 1F4C68 801DCCE8 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 1F4C6C 801DCCEC 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1F4C70 801DCCF0 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1F4C74 801DCCF4 3C01800F */  lui   $at, 0x800f
/* 1F4C78 801DCCF8 240C0001 */  li    $t4, 1
/* 1F4C7C 801DCCFC 8DAE0000 */  lw    $t6, ($t5)
/* 1F4C80 801DCD00 3C040001 */  lui   $a0, (0x00010069 >> 16) # lui $a0, 1
/* 1F4C84 801DCD04 34840069 */  ori   $a0, (0x00010069 & 0xFFFF) # ori $a0, $a0, 0x69
/* 1F4C88 801DCD08 000E7880 */  sll   $t7, $t6, 2
/* 1F4C8C 801DCD0C 002F0821 */  addu  $at, $at, $t7
/* 1F4C90 801DCD10 AC2CA520 */  sw    $t4, -0x5ae0($at)
/* 1F4C94 801DCD14 24050023 */  li    $a1, 35
/* 1F4C98 801DCD18 0C02A619 */  jal   func_800A9864_ovl13
/* 1F4C9C 801DCD1C 24060010 */   li    $a2, 16
/* 1F4CA0 801DCD20 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1F4CA4 801DCD24 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1F4CA8 801DCD28 3C18800B */  lui   $t8, %hi(D_800B7138) # $t8, 0x800b
/* 1F4CAC 801DCD2C 3C01800E */  lui   $at, 0x800e
/* 1F4CB0 801DCD30 8F280000 */  lw    $t0, ($t9)
/* 1F4CB4 801DCD34 27187138 */  addiu $t8, %lo(D_800B7138) # addiu $t8, $t8, 0x7138
/* 1F4CB8 801DCD38 24040004 */  li    $a0, 4
/* 1F4CBC 801DCD3C 00084880 */  sll   $t1, $t0, 2
/* 1F4CC0 801DCD40 00290821 */  addu  $at, $at, $t1
/* 1F4CC4 801DCD44 0C006291 */  jal   random_soft_s32_range
/* 1F4CC8 801DCD48 AC38EF90 */   sw    $t8, -0x1070($at)
/* 1F4CCC 801DCD4C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1F4CD0 801DCD50 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1F4CD4 801DCD54 3C01800F */  lui   $at, 0x800f
/* 1F4CD8 801DCD58 240CFFFF */  li    $t4, -1
/* 1F4CDC 801DCD5C 8C6A0000 */  lw    $t2, ($v1)
/* 1F4CE0 801DCD60 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F4CE4 801DCD64 000A5880 */  sll   $t3, $t2, 2
/* 1F4CE8 801DCD68 002B0821 */  addu  $at, $at, $t3
/* 1F4CEC 801DCD6C AC229AA0 */  sw    $v0, -0x6560($at)
/* 1F4CF0 801DCD70 8C6D0000 */  lw    $t5, ($v1)
/* 1F4CF4 801DCD74 3C01800F */  lui   $at, 0x800f
/* 1F4CF8 801DCD78 000D7080 */  sll   $t6, $t5, 2
/* 1F4CFC 801DCD7C 002E0821 */  addu  $at, $at, $t6
/* 1F4D00 801DCD80 AC209C60 */  sw    $zero, -0x63a0($at)
/* 1F4D04 801DCD84 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 1F4D08 801DCD88 AC2C7154 */  sw    $t4, %lo(D_800D7154)($at)
/* 1F4D0C 801DCD8C 8C6F0000 */  lw    $t7, ($v1)
/* 1F4D10 801DCD90 3C01800E */  lui   $at, 0x800e
/* 1F4D14 801DCD94 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F4D18 801DCD98 000FC880 */  sll   $t9, $t7, 2
/* 1F4D1C 801DCD9C 00390821 */  addu  $at, $at, $t9
/* 1F4D20 801DCDA0 03E00008 */  jr    $ra
/* 1F4D24 801DCDA4 AC20DC50 */   sw    $zero, -0x23b0($at)

/* 1F4D28 801DCDA8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F4D2C 801DCDAC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F4D30 801DCDB0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F4D34 801DCDB4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F4D38 801DCDB8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F4D3C 801DCDBC 8DCF0000 */  lw    $t7, ($t6)
/* 1F4D40 801DCDC0 3C04800E */  lui   $a0, 0x800e
/* 1F4D44 801DCDC4 3C05800B */  lui   $a1, %hi(D_800B17B8) # $a1, 0x800b
/* 1F4D48 801DCDC8 000FC080 */  sll   $t8, $t7, 2
/* 1F4D4C 801DCDCC 00982021 */  addu  $a0, $a0, $t8
/* 1F4D50 801DCDD0 8C84EC10 */  lw    $a0, -0x13f0($a0)
/* 1F4D54 801DCDD4 0C02C7DA */  jal   func_800B1F68_ovl13
/* 1F4D58 801DCDD8 24A517B8 */   addiu $a1, %lo(D_800B17B8) # addiu $a1, $a1, 0x17b8
/* 1F4D5C 801DCDDC 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F4D60 801DCDE0 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1F4D64 801DCDE4 3C01800F */  lui   $at, 0x800f
/* 1F4D68 801DCDE8 24190001 */  li    $t9, 1
/* 1F4D6C 801DCDEC 8D090000 */  lw    $t1, ($t0)
/* 1F4D70 801DCDF0 3C040001 */  lui   $a0, (0x00010069 >> 16) # lui $a0, 1
/* 1F4D74 801DCDF4 34840069 */  ori   $a0, (0x00010069 & 0xFFFF) # ori $a0, $a0, 0x69
/* 1F4D78 801DCDF8 00095080 */  sll   $t2, $t1, 2
/* 1F4D7C 801DCDFC 002A0821 */  addu  $at, $at, $t2
/* 1F4D80 801DCE00 AC39A520 */  sw    $t9, -0x5ae0($at)
/* 1F4D84 801DCE04 24050023 */  li    $a1, 35
/* 1F4D88 801DCE08 0C02A619 */  jal   func_800A9864_ovl13
/* 1F4D8C 801DCE0C 24060010 */   li    $a2, 16
/* 1F4D90 801DCE10 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1F4D94 801DCE14 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1F4D98 801DCE18 3C0B800B */  lui   $t3, %hi(D_800B72AC) # $t3, 0x800b
/* 1F4D9C 801DCE1C 3C01800E */  lui   $at, 0x800e
/* 1F4DA0 801DCE20 8D8D0000 */  lw    $t5, ($t4)
/* 1F4DA4 801DCE24 256B72AC */  addiu $t3, %lo(D_800B72AC) # addiu $t3, $t3, 0x72ac
/* 1F4DA8 801DCE28 24040003 */  li    $a0, 3
/* 1F4DAC 801DCE2C 000D7080 */  sll   $t6, $t5, 2
/* 1F4DB0 801DCE30 002E0821 */  addu  $at, $at, $t6
/* 1F4DB4 801DCE34 0C006291 */  jal   random_soft_s32_range
/* 1F4DB8 801DCE38 AC2BEF90 */   sw    $t3, -0x1070($at)
/* 1F4DBC 801DCE3C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1F4DC0 801DCE40 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1F4DC4 801DCE44 3C01800F */  lui   $at, 0x800f
/* 1F4DC8 801DCE48 2419FFFF */  li    $t9, -1
/* 1F4DCC 801DCE4C 8C6F0000 */  lw    $t7, ($v1)
/* 1F4DD0 801DCE50 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F4DD4 801DCE54 240A0008 */  li    $t2, 8
/* 1F4DD8 801DCE58 000FC080 */  sll   $t8, $t7, 2
/* 1F4DDC 801DCE5C 00380821 */  addu  $at, $at, $t8
/* 1F4DE0 801DCE60 AC229AA0 */  sw    $v0, -0x6560($at)
/* 1F4DE4 801DCE64 8C680000 */  lw    $t0, ($v1)
/* 1F4DE8 801DCE68 3C01800F */  lui   $at, 0x800f
/* 1F4DEC 801DCE6C 00084880 */  sll   $t1, $t0, 2
/* 1F4DF0 801DCE70 00290821 */  addu  $at, $at, $t1
/* 1F4DF4 801DCE74 AC209C60 */  sw    $zero, -0x63a0($at)
/* 1F4DF8 801DCE78 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 1F4DFC 801DCE7C AC397154 */  sw    $t9, %lo(D_800D7154)($at)
/* 1F4E00 801DCE80 8C6C0000 */  lw    $t4, ($v1)
/* 1F4E04 801DCE84 3C01800E */  lui   $at, 0x800e
/* 1F4E08 801DCE88 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F4E0C 801DCE8C 000C6880 */  sll   $t5, $t4, 2
/* 1F4E10 801DCE90 002D0821 */  addu  $at, $at, $t5
/* 1F4E14 801DCE94 03E00008 */  jr    $ra
/* 1F4E18 801DCE98 AC2ADC50 */   sw    $t2, -0x23b0($at)

/* 1F4E1C 801DCE9C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1F4E20 801DCEA0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1F4E24 801DCEA4 AFB30020 */  sw    $s3, 0x20($sp)
/* 1F4E28 801DCEA8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 1F4E2C 801DCEAC AFB10018 */  sw    $s1, 0x18($sp)
/* 1F4E30 801DCEB0 AFB00014 */  sw    $s0, 0x14($sp)
/* 1F4E34 801DCEB4 0C066ED6 */  jal   func_8019BB58_ovl13
/* 1F4E38 801DCEB8 AFA40028 */   sw    $a0, 0x28($sp)
/* 1F4E3C 801DCEBC 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 1F4E40 801DCEC0 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 1F4E44 801DCEC4 8E4E0000 */  lw    $t6, ($s2)
/* 1F4E48 801DCEC8 3C04800E */  lui   $a0, 0x800e
/* 1F4E4C 801DCECC 3C05800B */  lui   $a1, %hi(D_800B1434) # $a1, 0x800b
/* 1F4E50 801DCED0 8DCF0000 */  lw    $t7, ($t6)
/* 1F4E54 801DCED4 24A51434 */  addiu $a1, %lo(D_800B1434) # addiu $a1, $a1, 0x1434
/* 1F4E58 801DCED8 000FC080 */  sll   $t8, $t7, 2
/* 1F4E5C 801DCEDC 00982021 */  addu  $a0, $a0, $t8
/* 1F4E60 801DCEE0 0C02C7DA */  jal   func_800B1F68_ovl13
/* 1F4E64 801DCEE4 8C84EC10 */   lw    $a0, -0x13f0($a0)
/* 1F4E68 801DCEE8 8E590000 */  lw    $t9, ($s2)
/* 1F4E6C 801DCEEC 24040071 */  li    $a0, 113
/* 1F4E70 801DCEF0 0C02C67D */  jal   func_800B19F4
/* 1F4E74 801DCEF4 8F250000 */   lw    $a1, ($t9)
/* 1F4E78 801DCEF8 00002025 */  move  $a0, $zero
/* 1F4E7C 801DCEFC 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1F4E80 801DCF00 8E450000 */   lw    $a1, ($s2)
/* 1F4E84 801DCF04 8E420000 */  lw    $v0, ($s2)
/* 1F4E88 801DCF08 3C13800F */  lui   $s3, %hi(D_800E98E0) # $s3, 0x800f
/* 1F4E8C 801DCF0C 267398E0 */  addiu $s3, %lo(D_800E98E0) # addiu $s3, $s3, -0x6720
/* 1F4E90 801DCF10 8C490000 */  lw    $t1, ($v0)
/* 1F4E94 801DCF14 24080001 */  li    $t0, 1
/* 1F4E98 801DCF18 3C0C800B */  lui   $t4, %hi(D_800B6CF8) # $t4, 0x800b
/* 1F4E9C 801DCF1C 00095080 */  sll   $t2, $t1, 2
/* 1F4EA0 801DCF20 026A5821 */  addu  $t3, $s3, $t2
/* 1F4EA4 801DCF24 AD680000 */  sw    $t0, ($t3)
/* 1F4EA8 801DCF28 8C4D0000 */  lw    $t5, ($v0)
/* 1F4EAC 801DCF2C 3C01800E */  lui   $at, 0x800e
/* 1F4EB0 801DCF30 258C6CF8 */  addiu $t4, %lo(D_800B6CF8) # addiu $t4, $t4, 0x6cf8
/* 1F4EB4 801DCF34 000D7080 */  sll   $t6, $t5, 2
/* 1F4EB8 801DCF38 002E0821 */  addu  $at, $at, $t6
/* 1F4EBC 801DCF3C AC2CEF90 */  sw    $t4, -0x1070($at)
/* 1F4EC0 801DCF40 8C580000 */  lw    $t8, ($v0)
/* 1F4EC4 801DCF44 3C01800E */  lui   $at, 0x800e
/* 1F4EC8 801DCF48 240F000D */  li    $t7, 13
/* 1F4ECC 801DCF4C 0018C880 */  sll   $t9, $t8, 2
/* 1F4ED0 801DCF50 00390821 */  addu  $at, $at, $t9
/* 1F4ED4 801DCF54 AC2FDFD0 */  sw    $t7, -0x2030($at)
/* 1F4ED8 801DCF58 8C4A0000 */  lw    $t2, ($v0)
/* 1F4EDC 801DCF5C 3C10800E */  lui   $s0, %hi(D_800E1B50) # $s0, 0x800e
/* 1F4EE0 801DCF60 26101B50 */  addiu $s0, %lo(D_800E1B50) # addiu $s0, $s0, 0x1b50
/* 1F4EE4 801DCF64 000A4080 */  sll   $t0, $t2, 2
/* 1F4EE8 801DCF68 02085821 */  addu  $t3, $s0, $t0
/* 1F4EEC 801DCF6C 8D6D0000 */  lw    $t5, ($t3)
/* 1F4EF0 801DCF70 3C09801E */  lui   $t1, %hi(D_801D9384) # $t1, 0x801e
/* 1F4EF4 801DCF74 25299384 */  addiu $t1, %lo(D_801D9384) # addiu $t1, $t1, -0x6c7c
/* 1F4EF8 801DCF78 ADA9008C */  sw    $t1, 0x8c($t5)
/* 1F4EFC 801DCF7C 8E4C0000 */  lw    $t4, ($s2)
/* 1F4F00 801DCF80 3C04801E */  lui   $a0, %hi(D_801DAB18) # $a0, 0x801e
/* 1F4F04 801DCF84 3C01800E */  lui   $at, 0x800e
/* 1F4F08 801DCF88 8D8E0000 */  lw    $t6, ($t4)
/* 1F4F0C 801DCF8C 2484AB18 */  addiu $a0, %lo(D_801DAB18) # addiu $a0, $a0, -0x54e8
/* 1F4F10 801DCF90 000EC080 */  sll   $t8, $t6, 2
/* 1F4F14 801DCF94 00380821 */  addu  $at, $at, $t8
/* 1F4F18 801DCF98 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F4F1C 801DCF9C AC240490 */   sw    $a0, 0x490($at)
/* 1F4F20 801DCFA0 8E590000 */  lw    $t9, ($s2)
/* 1F4F24 801DCFA4 3C0F801E */  lui   $t7, %hi(D_801DAE1C) # $t7, 0x801e
/* 1F4F28 801DCFA8 25EFAE1C */  addiu $t7, %lo(D_801DAE1C) # addiu $t7, $t7, -0x51e4
/* 1F4F2C 801DCFAC 8F2A0000 */  lw    $t2, ($t9)
/* 1F4F30 801DCFB0 44802000 */  mtc1  $zero, $f4
/* 1F4F34 801DCFB4 3C04800E */  lui   $a0, %hi(D_800E2E90) # $a0, 0x800e
/* 1F4F38 801DCFB8 000A4080 */  sll   $t0, $t2, 2
/* 1F4F3C 801DCFBC 02085821 */  addu  $t3, $s0, $t0
/* 1F4F40 801DCFC0 8D690000 */  lw    $t1, ($t3)
/* 1F4F44 801DCFC4 24842E90 */  addiu $a0, %lo(D_800E2E90) # addiu $a0, $a0, 0x2e90
/* 1F4F48 801DCFC8 3C01800E */  lui   $at, 0x800e
/* 1F4F4C 801DCFCC AD2F0098 */  sw    $t7, 0x98($t1)
/* 1F4F50 801DCFD0 8E420000 */  lw    $v0, ($s2)
/* 1F4F54 801DCFD4 8C4D0000 */  lw    $t5, ($v0)
/* 1F4F58 801DCFD8 000D6080 */  sll   $t4, $t5, 2
/* 1F4F5C 801DCFDC 008C7021 */  addu  $t6, $a0, $t4
/* 1F4F60 801DCFE0 E5C40000 */  swc1  $f4, ($t6)
/* 1F4F64 801DCFE4 8C430000 */  lw    $v1, ($v0)
/* 1F4F68 801DCFE8 00031880 */  sll   $v1, $v1, 2
/* 1F4F6C 801DCFEC 0083C021 */  addu  $t8, $a0, $v1
/* 1F4F70 801DCFF0 C7060000 */  lwc1  $f6, ($t8)
/* 1F4F74 801DCFF4 00230821 */  addu  $at, $at, $v1
/* 1F4F78 801DCFF8 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F4F7C 801DCFFC E4262950 */   swc1  $f6, 0x2950($at)
/* 1F4F80 801DD000 8E590000 */  lw    $t9, ($s2)
/* 1F4F84 801DD004 3C10800E */  lui   $s0, %hi(D_800E0D50) # $s0, 0x800e
/* 1F4F88 801DD008 26100D50 */  addiu $s0, %lo(D_800E0D50) # addiu $s0, $s0, 0xd50
/* 1F4F8C 801DD00C 8F230000 */  lw    $v1, ($t9)
/* 1F4F90 801DD010 24110002 */  li    $s1, 2
/* 1F4F94 801DD014 00031880 */  sll   $v1, $v1, 2
/* 1F4F98 801DD018 02035021 */  addu  $t2, $s0, $v1
/* 1F4F9C 801DD01C 8D420000 */  lw    $v0, ($t2)
/* 1F4FA0 801DD020 00021080 */  sll   $v0, $v0, 2
/* 1F4FA4 801DD024 02024021 */  addu  $t0, $s0, $v0
/* 1F4FA8 801DD028 8D0B0000 */  lw    $t3, ($t0)
/* 1F4FAC 801DD02C 000B7880 */  sll   $t7, $t3, 2
/* 1F4FB0 801DD030 026F4821 */  addu  $t1, $s3, $t7
/* 1F4FB4 801DD034 8D2D0000 */  lw    $t5, ($t1)
/* 1F4FB8 801DD038 122D0010 */  beq   $s1, $t5, .L801DD07C_ovl13
/* 1F4FBC 801DD03C 00000000 */   nop   
.L801DD040_ovl13:
/* 1F4FC0 801DD040 0C002DAF */  jal   func_8000B6BC
/* 1F4FC4 801DD044 24040001 */   li    $a0, 1
/* 1F4FC8 801DD048 8E4C0000 */  lw    $t4, ($s2)
/* 1F4FCC 801DD04C 8D830000 */  lw    $v1, ($t4)
/* 1F4FD0 801DD050 00031880 */  sll   $v1, $v1, 2
/* 1F4FD4 801DD054 02037021 */  addu  $t6, $s0, $v1
/* 1F4FD8 801DD058 8DC20000 */  lw    $v0, ($t6)
/* 1F4FDC 801DD05C 00021080 */  sll   $v0, $v0, 2
/* 1F4FE0 801DD060 0202C021 */  addu  $t8, $s0, $v0
/* 1F4FE4 801DD064 8F190000 */  lw    $t9, ($t8)
/* 1F4FE8 801DD068 00195080 */  sll   $t2, $t9, 2
/* 1F4FEC 801DD06C 026A4021 */  addu  $t0, $s3, $t2
/* 1F4FF0 801DD070 8D0B0000 */  lw    $t3, ($t0)
/* 1F4FF4 801DD074 162BFFF2 */  bne   $s1, $t3, .L801DD040_ovl13
/* 1F4FF8 801DD078 00000000 */   nop   
.L801DD07C_ovl13:
/* 1F4FFC 801DD07C 3C07800E */  lui   $a3, %hi(D_800E25D0) # $a3, 0x800e
/* 1F5000 801DD080 24E725D0 */  addiu $a3, %lo(D_800E25D0) # addiu $a3, $a3, 0x25d0
/* 1F5004 801DD084 00E27821 */  addu  $t7, $a3, $v0
/* 1F5008 801DD088 00E34821 */  addu  $t1, $a3, $v1
/* 1F500C 801DD08C C52A0000 */  lwc1  $f10, ($t1)
/* 1F5010 801DD090 C5E80000 */  lwc1  $f8, ($t7)
/* 1F5014 801DD094 3C0D800E */  lui   $t5, %hi(D_800E5F90) # $t5, 0x800e
/* 1F5018 801DD098 3C0C800E */  lui   $t4, %hi(D_800E6BD0) # $t4, 0x800e
/* 1F501C 801DD09C 460A4001 */  sub.s $f0, $f8, $f10
/* 1F5020 801DD0A0 258C6BD0 */  addiu $t4, %lo(D_800E6BD0) # addiu $t4, $t4, 0x6bd0
/* 1F5024 801DD0A4 25AD5F90 */  addiu $t5, %lo(D_800E5F90) # addiu $t5, $t5, 0x5f90
/* 1F5028 801DD0A8 006D2021 */  addu  $a0, $v1, $t5
/* 1F502C 801DD0AC 44060000 */  mfc1  $a2, $f0
/* 1F5030 801DD0B0 0C03E65D */  jal   func_800F9974_ovl13
/* 1F5034 801DD0B4 006C2821 */   addu  $a1, $v1, $t4
/* 1F5038 801DD0B8 8E420000 */  lw    $v0, ($s2)
/* 1F503C 801DD0BC 3C05800E */  lui   $a1, %hi(D_800E2790) # $a1, 0x800e
/* 1F5040 801DD0C0 24A52790 */  addiu $a1, %lo(D_800E2790) # addiu $a1, $a1, 0x2790
/* 1F5044 801DD0C4 8C430000 */  lw    $v1, ($v0)
/* 1F5048 801DD0C8 3C01800E */  lui   $at, 0x800e
/* 1F504C 801DD0CC 24040258 */  li    $a0, 600
/* 1F5050 801DD0D0 00031880 */  sll   $v1, $v1, 2
/* 1F5054 801DD0D4 02037021 */  addu  $t6, $s0, $v1
/* 1F5058 801DD0D8 8DD80000 */  lw    $t8, ($t6)
/* 1F505C 801DD0DC 00230821 */  addu  $at, $at, $v1
/* 1F5060 801DD0E0 0018C880 */  sll   $t9, $t8, 2
/* 1F5064 801DD0E4 00B95021 */  addu  $t2, $a1, $t9
/* 1F5068 801DD0E8 C5400000 */  lwc1  $f0, ($t2)
/* 1F506C 801DD0EC E4202CD0 */  swc1  $f0, 0x2cd0($at)
/* 1F5070 801DD0F0 8C480000 */  lw    $t0, ($v0)
/* 1F5074 801DD0F4 00085880 */  sll   $t3, $t0, 2
/* 1F5078 801DD0F8 00AB7821 */  addu  $t7, $a1, $t3
/* 1F507C 801DD0FC 0C002DAF */  jal   func_8000B6BC
/* 1F5080 801DD100 E5E00000 */   swc1  $f0, ($t7)
/* 1F5084 801DD104 8E490000 */  lw    $t1, ($s2)
/* 1F5088 801DD108 2404001E */  li    $a0, 30
/* 1F508C 801DD10C 8D2D0000 */  lw    $t5, ($t1)
/* 1F5090 801DD110 000D6080 */  sll   $t4, $t5, 2
/* 1F5094 801DD114 026C7021 */  addu  $t6, $s3, $t4
/* 1F5098 801DD118 0C002DAF */  jal   func_8000B6BC
/* 1F509C 801DD11C ADC00000 */   sw    $zero, ($t6)
/* 1F50A0 801DD120 8E580000 */  lw    $t8, ($s2)
/* 1F50A4 801DD124 0C067656 */  jal   func_8019D958_ovl13
/* 1F50A8 801DD128 97040002 */   lhu   $a0, 2($t8)
/* 1F50AC 801DD12C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1F50B0 801DD130 8FB00014 */  lw    $s0, 0x14($sp)
/* 1F50B4 801DD134 8FB10018 */  lw    $s1, 0x18($sp)
/* 1F50B8 801DD138 8FB2001C */  lw    $s2, 0x1c($sp)
/* 1F50BC 801DD13C 8FB30020 */  lw    $s3, 0x20($sp)
/* 1F50C0 801DD140 03E00008 */  jr    $ra
/* 1F50C4 801DD144 27BD0028 */   addiu $sp, $sp, 0x28

/* 1F50C8 801DD148 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1F50CC 801DD14C 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1F50D0 801DD150 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F50D4 801DD154 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F50D8 801DD158 8DF80000 */  lw    $t8, ($t7)
/* 1F50DC 801DD15C 3C01800F */  lui   $at, 0x800f
/* 1F50E0 801DD160 240E0001 */  li    $t6, 1
/* 1F50E4 801DD164 0018C880 */  sll   $t9, $t8, 2
/* 1F50E8 801DD168 00390821 */  addu  $at, $at, $t9
/* 1F50EC 801DD16C 0C06835D */  jal   func_801A0D74_ovl13
/* 1F50F0 801DD170 AC2E8920 */   sw    $t6, -0x76e0($at)
/* 1F50F4 801DD174 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F50F8 801DD178 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F50FC 801DD17C 03E00008 */  jr    $ra
/* 1F5100 801DD180 00000000 */   nop   

/* 1F5104 801DD184 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1F5108 801DD188 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1F510C 801DD18C 44806000 */  mtc1  $zero, $f12
/* 1F5110 801DD190 AFB20020 */  sw    $s2, 0x20($sp)
/* 1F5114 801DD194 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1F5118 801DD198 AFB00018 */  sw    $s0, 0x18($sp)
/* 1F511C 801DD19C 0C02BB48 */  jal   func_800AED20_ovl13
/* 1F5120 801DD1A0 AFA40028 */   sw    $a0, 0x28($sp)
/* 1F5124 801DD1A4 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F5128 801DD1A8 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1F512C 801DD1AC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1F5130 801DD1B0 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 1F5134 801DD1B4 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 1F5138 801DD1B8 8E430000 */  lw    $v1, ($s2)
/* 1F513C 801DD1BC 3C01800E */  lui   $at, 0x800e
/* 1F5140 801DD1C0 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1F5144 801DD1C4 8C6E0000 */  lw    $t6, ($v1)
/* 1F5148 801DD1C8 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1F514C 801DD1CC 3C18801E */  lui   $t8, %hi(D_801D9384) # $t8, 0x801e
/* 1F5150 801DD1D0 000E7880 */  sll   $t7, $t6, 2
/* 1F5154 801DD1D4 002F0821 */  addu  $at, $at, $t7
/* 1F5158 801DD1D8 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 1F515C 801DD1DC 8C790000 */  lw    $t9, ($v1)
/* 1F5160 801DD1E0 27189384 */  addiu $t8, %lo(D_801D9384) # addiu $t8, $t8, -0x6c7c
/* 1F5164 801DD1E4 3C0B801E */  lui   $t3, %hi(D_801DAE1C) # $t3, 0x801e
/* 1F5168 801DD1E8 00194080 */  sll   $t0, $t9, 2
/* 1F516C 801DD1EC 00484821 */  addu  $t1, $v0, $t0
/* 1F5170 801DD1F0 8D2A0000 */  lw    $t2, ($t1)
/* 1F5174 801DD1F4 256BAE1C */  addiu $t3, %lo(D_801DAE1C) # addiu $t3, $t3, -0x51e4
/* 1F5178 801DD1F8 AD58008C */  sw    $t8, 0x8c($t2)
/* 1F517C 801DD1FC 8E4C0000 */  lw    $t4, ($s2)
/* 1F5180 801DD200 8D8D0000 */  lw    $t5, ($t4)
/* 1F5184 801DD204 000D7080 */  sll   $t6, $t5, 2
/* 1F5188 801DD208 004E7821 */  addu  $t7, $v0, $t6
/* 1F518C 801DD20C 8DF90000 */  lw    $t9, ($t7)
/* 1F5190 801DD210 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F5194 801DD214 AF2B0098 */   sw    $t3, 0x98($t9)
/* 1F5198 801DD218 0C006291 */  jal   random_soft_s32_range
/* 1F519C 801DD21C 24040003 */   li    $a0, 3
/* 1F51A0 801DD220 8E430000 */  lw    $v1, ($s2)
/* 1F51A4 801DD224 3C01800F */  lui   $at, 0x800f
/* 1F51A8 801DD228 3C11800E */  lui   $s1, %hi(D_800E64D0) # $s1, 0x800e
/* 1F51AC 801DD22C 8C680000 */  lw    $t0, ($v1)
/* 1F51B0 801DD230 263164D0 */  addiu $s1, %lo(D_800E64D0) # addiu $s1, $s1, 0x64d0
/* 1F51B4 801DD234 3C10800E */  lui   $s0, %hi(D_800E3210) # $s0, 0x800e
/* 1F51B8 801DD238 00084880 */  sll   $t1, $t0, 2
/* 1F51BC 801DD23C 00290821 */  addu  $at, $at, $t1
/* 1F51C0 801DD240 AC22A1A0 */  sw    $v0, -0x5e60($at)
/* 1F51C4 801DD244 8C780000 */  lw    $t8, ($v1)
/* 1F51C8 801DD248 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 1F51CC 801DD24C 44812000 */  mtc1  $at, $f4
/* 1F51D0 801DD250 00185080 */  sll   $t2, $t8, 2
/* 1F51D4 801DD254 022A6021 */  addu  $t4, $s1, $t2
/* 1F51D8 801DD258 E5840000 */  swc1  $f4, ($t4)
/* 1F51DC 801DD25C 8C6D0000 */  lw    $t5, ($v1)
/* 1F51E0 801DD260 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 1F51E4 801DD264 44813000 */  mtc1  $at, $f6
/* 1F51E8 801DD268 26103210 */  addiu $s0, %lo(D_800E3210) # addiu $s0, $s0, 0x3210
/* 1F51EC 801DD26C 000D7080 */  sll   $t6, $t5, 2
/* 1F51F0 801DD270 020E7821 */  addu  $t7, $s0, $t6
/* 1F51F4 801DD274 24040001 */  li    $a0, 1
/* 1F51F8 801DD278 0C002DAF */  jal   func_8000B6BC
/* 1F51FC 801DD27C E5E60000 */   swc1  $f6, ($t7)
/* 1F5200 801DD280 8E430000 */  lw    $v1, ($s2)
/* 1F5204 801DD284 44804000 */  mtc1  $zero, $f8
/* 1F5208 801DD288 3C040001 */  lui   $a0, (0x00010412 >> 16) # lui $a0, 1
/* 1F520C 801DD28C 8C6B0000 */  lw    $t3, ($v1)
/* 1F5210 801DD290 34840412 */  ori   $a0, (0x00010412 & 0xFFFF) # ori $a0, $a0, 0x412
/* 1F5214 801DD294 3C054040 */  lui   $a1, 0x4040
/* 1F5218 801DD298 000BC880 */  sll   $t9, $t3, 2
/* 1F521C 801DD29C 02194021 */  addu  $t0, $s0, $t9
/* 1F5220 801DD2A0 E5080000 */  swc1  $f8, ($t0)
/* 1F5224 801DD2A4 8C620000 */  lw    $v0, ($v1)
/* 1F5228 801DD2A8 00021080 */  sll   $v0, $v0, 2
/* 1F522C 801DD2AC 02024821 */  addu  $t1, $s0, $v0
/* 1F5230 801DD2B0 C52A0000 */  lwc1  $f10, ($t1)
/* 1F5234 801DD2B4 0222C021 */  addu  $t8, $s1, $v0
/* 1F5238 801DD2B8 0C02A7E6 */  jal   func_800A9F98_ovl13
/* 1F523C 801DD2BC E70A0000 */   swc1  $f10, ($t8)
/* 1F5240 801DD2C0 3C040001 */  lui   $a0, (0x00010427 >> 16) # lui $a0, 1
/* 1F5244 801DD2C4 0C02A806 */  jal   func_800AA018_ovl13
/* 1F5248 801DD2C8 34840427 */   ori   $a0, (0x00010427 & 0xFFFF) # ori $a0, $a0, 0x427
/* 1F524C 801DD2CC 0C002DAF */  jal   func_8000B6BC
/* 1F5250 801DD2D0 2404001E */   li    $a0, 30
/* 1F5254 801DD2D4 8E4A0000 */  lw    $t2, ($s2)
/* 1F5258 801DD2D8 3C01800E */  lui   $at, 0x800e
/* 1F525C 801DD2DC 8D4C0000 */  lw    $t4, ($t2)
/* 1F5260 801DD2E0 000C6880 */  sll   $t5, $t4, 2
/* 1F5264 801DD2E4 002D0821 */  addu  $at, $at, $t5
/* 1F5268 801DD2E8 C4307B20 */  lwc1  $f16, 0x7b20($at)
/* 1F526C 801DD2EC 4600848D */  trunc.w.s $f18, $f16
/* 1F5270 801DD2F0 44049000 */  mfc1  $a0, $f18
/* 1F5274 801DD2F4 0C02F07F */  jal   func_800BC1FC_ovl13
/* 1F5278 801DD2F8 00000000 */   nop   
/* 1F527C 801DD2FC 0C002DAF */  jal   func_8000B6BC
/* 1F5280 801DD300 24040030 */   li    $a0, 48
/* 1F5284 801DD304 8E4F0000 */  lw    $t7, ($s2)
/* 1F5288 801DD308 3C11800E */  lui   $s1, %hi(D_800E0D50) # $s1, 0x800e
/* 1F528C 801DD30C 26310D50 */  addiu $s1, %lo(D_800E0D50) # addiu $s1, $s1, 0xd50
/* 1F5290 801DD310 8DEB0000 */  lw    $t3, ($t7)
/* 1F5294 801DD314 3C10800F */  lui   $s0, %hi(D_800E98E0) # $s0, 0x800f
/* 1F5298 801DD318 261098E0 */  addiu $s0, %lo(D_800E98E0) # addiu $s0, $s0, -0x6720
/* 1F529C 801DD31C 000BC880 */  sll   $t9, $t3, 2
/* 1F52A0 801DD320 02394021 */  addu  $t0, $s1, $t9
/* 1F52A4 801DD324 8D090000 */  lw    $t1, ($t0)
/* 1F52A8 801DD328 0009C080 */  sll   $t8, $t1, 2
/* 1F52AC 801DD32C 02185021 */  addu  $t2, $s0, $t8
/* 1F52B0 801DD330 8D4C0000 */  lw    $t4, ($t2)
/* 1F52B4 801DD334 1580000D */  bnez  $t4, .L801DD36C_ovl13
/* 1F52B8 801DD338 00000000 */   nop   
.L801DD33C_ovl13:
/* 1F52BC 801DD33C 0C002DAF */  jal   func_8000B6BC
/* 1F52C0 801DD340 24040001 */   li    $a0, 1
/* 1F52C4 801DD344 8E4D0000 */  lw    $t5, ($s2)
/* 1F52C8 801DD348 8DAE0000 */  lw    $t6, ($t5)
/* 1F52CC 801DD34C 000E7880 */  sll   $t7, $t6, 2
/* 1F52D0 801DD350 022F5821 */  addu  $t3, $s1, $t7
/* 1F52D4 801DD354 8D790000 */  lw    $t9, ($t3)
/* 1F52D8 801DD358 00194080 */  sll   $t0, $t9, 2
/* 1F52DC 801DD35C 02084821 */  addu  $t1, $s0, $t0
/* 1F52E0 801DD360 8D380000 */  lw    $t8, ($t1)
/* 1F52E4 801DD364 1300FFF5 */  beqz  $t8, .L801DD33C_ovl13
/* 1F52E8 801DD368 00000000 */   nop   
.L801DD36C_ovl13:
/* 1F52EC 801DD36C 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F52F0 801DD370 00000000 */   nop   
/* 1F52F4 801DD374 8E4C0000 */  lw    $t4, ($s2)
/* 1F52F8 801DD378 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1F52FC 801DD37C 3C01800E */  lui   $at, 0x800e
/* 1F5300 801DD380 8D8D0000 */  lw    $t5, ($t4)
/* 1F5304 801DD384 240A0001 */  li    $t2, 1
/* 1F5308 801DD388 8FB20020 */  lw    $s2, 0x20($sp)
/* 1F530C 801DD38C 000D7080 */  sll   $t6, $t5, 2
/* 1F5310 801DD390 002E0821 */  addu  $at, $at, $t6
/* 1F5314 801DD394 8FB00018 */  lw    $s0, 0x18($sp)
/* 1F5318 801DD398 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1F531C 801DD39C AC2ADC50 */  sw    $t2, -0x23b0($at)
/* 1F5320 801DD3A0 03E00008 */  jr    $ra
/* 1F5324 801DD3A4 27BD0028 */   addiu $sp, $sp, 0x28

/* 1F5328 801DD3A8 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F532C 801DD3AC 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F5330 801DD3B0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F5334 801DD3B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F5338 801DD3B8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F533C 801DD3BC 8DCF0000 */  lw    $t7, ($t6)
/* 1F5340 801DD3C0 3C01800F */  lui   $at, 0x800f
/* 1F5344 801DD3C4 000FC080 */  sll   $t8, $t7, 2
/* 1F5348 801DD3C8 00380821 */  addu  $at, $at, $t8
/* 1F534C 801DD3CC 0C06835D */  jal   func_801A0D74_ovl13
/* 1F5350 801DD3D0 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F5354 801DD3D4 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1F5358 801DD3D8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1F535C 801DD3DC 3C02800E */  lui   $v0, 0x800e
/* 1F5360 801DD3E0 8F280000 */  lw    $t0, ($t9)
/* 1F5364 801DD3E4 00084880 */  sll   $t1, $t0, 2
/* 1F5368 801DD3E8 00491021 */  addu  $v0, $v0, $t1
/* 1F536C 801DD3EC 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1F5370 801DD3F0 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F5374 801DD3F4 8C450010 */  lw    $a1, 0x10($v0)
/* 1F5378 801DD3F8 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F537C 801DD3FC 8C460018 */   lw    $a2, 0x18($v0)
/* 1F5380 801DD400 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F5384 801DD404 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1F5388 801DD408 3C0A800F */  lui   $t2, 0x800f
/* 1F538C 801DD40C 24010001 */  li    $at, 1
/* 1F5390 801DD410 8C430000 */  lw    $v1, ($v0)
/* 1F5394 801DD414 240B0007 */  li    $t3, 7
/* 1F5398 801DD418 3C04800E */  lui   $a0, 0x800e
/* 1F539C 801DD41C 00031880 */  sll   $v1, $v1, 2
/* 1F53A0 801DD420 01435021 */  addu  $t2, $t2, $v1
/* 1F53A4 801DD424 8D4A83E0 */  lw    $t2, -0x7c20($t2)
/* 1F53A8 801DD428 1541000A */  bne   $t2, $at, .L801DD454_ovl13
/* 1F53AC 801DD42C 3C01800E */   lui   $at, 0x800e
/* 1F53B0 801DD430 00230821 */  addu  $at, $at, $v1
/* 1F53B4 801DD434 AC2BDC50 */  sw    $t3, -0x23b0($at)
/* 1F53B8 801DD438 8C4C0000 */  lw    $t4, ($v0)
/* 1F53BC 801DD43C 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F53C0 801DD440 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F53C4 801DD444 000C6880 */  sll   $t5, $t4, 2
/* 1F53C8 801DD448 008D2021 */  addu  $a0, $a0, $t5
/* 1F53CC 801DD44C 0C02C7B2 */  jal   func_800B1EC8
/* 1F53D0 801DD450 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801DD454_ovl13:
/* 1F53D4 801DD454 0C078E56 */  jal   func_801E3958_ovl13
/* 1F53D8 801DD458 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F53DC 801DD45C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F53E0 801DD460 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F53E4 801DD464 03E00008 */  jr    $ra
/* 1F53E8 801DD468 00000000 */   nop   

/* 1F53EC 801DD46C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1F53F0 801DD470 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 1F53F4 801DD474 8C620000 */  lw    $v0, ($v1)
/* 1F53F8 801DD478 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F53FC 801DD47C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F5400 801DD480 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F5404 801DD484 8C4F0000 */  lw    $t7, ($v0)
/* 1F5408 801DD488 3C01800E */  lui   $at, 0x800e
/* 1F540C 801DD48C 240E0001 */  li    $t6, 1
/* 1F5410 801DD490 000FC080 */  sll   $t8, $t7, 2
/* 1F5414 801DD494 00380821 */  addu  $at, $at, $t8
/* 1F5418 801DD498 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1F541C 801DD49C 8C480000 */  lw    $t0, ($v0)
/* 1F5420 801DD4A0 3C0A800E */  lui   $t2, 0x800e
/* 1F5424 801DD4A4 3C19801E */  lui   $t9, %hi(D_801D93A8) # $t9, 0x801e
/* 1F5428 801DD4A8 00084880 */  sll   $t1, $t0, 2
/* 1F542C 801DD4AC 01495021 */  addu  $t2, $t2, $t1
/* 1F5430 801DD4B0 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 1F5434 801DD4B4 273993A8 */  addiu $t9, %lo(D_801D93A8) # addiu $t9, $t9, -0x6c58
/* 1F5438 801DD4B8 3C04801E */  lui   $a0, %hi(D_801DAADC) # $a0, 0x801e
/* 1F543C 801DD4BC AD59008C */  sw    $t9, 0x8c($t2)
/* 1F5440 801DD4C0 8C6B0000 */  lw    $t3, ($v1)
/* 1F5444 801DD4C4 3C01800E */  lui   $at, 0x800e
/* 1F5448 801DD4C8 2484AADC */  addiu $a0, %lo(D_801DAADC) # addiu $a0, $a0, -0x5524
/* 1F544C 801DD4CC 8D6C0000 */  lw    $t4, ($t3)
/* 1F5450 801DD4D0 000C6880 */  sll   $t5, $t4, 2
/* 1F5454 801DD4D4 002D0821 */  addu  $at, $at, $t5
/* 1F5458 801DD4D8 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F545C 801DD4DC AC240490 */   sw    $a0, 0x490($at)
/* 1F5460 801DD4E0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F5464 801DD4E4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F5468 801DD4E8 3C09800E */  lui   $t1, 0x800e
/* 1F546C 801DD4EC 3C0F801E */  lui   $t7, %hi(D_801DAE1C) # $t7, 0x801e
/* 1F5470 801DD4F0 8DD80000 */  lw    $t8, ($t6)
/* 1F5474 801DD4F4 25EFAE1C */  addiu $t7, %lo(D_801DAE1C) # addiu $t7, $t7, -0x51e4
/* 1F5478 801DD4F8 00184080 */  sll   $t0, $t8, 2
/* 1F547C 801DD4FC 01284821 */  addu  $t1, $t1, $t0
/* 1F5480 801DD500 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 1F5484 801DD504 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F5488 801DD508 AD2F0098 */   sw    $t7, 0x98($t1)
/* 1F548C 801DD50C 3C040001 */  lui   $a0, (0x00010427 >> 16) # lui $a0, 1
/* 1F5490 801DD510 0C02A855 */  jal   func_800AA154_ovl13
/* 1F5494 801DD514 34840427 */   ori   $a0, (0x00010427 & 0xFFFF) # ori $a0, $a0, 0x427
/* 1F5498 801DD518 3C040001 */  lui   $a0, (0x00010429 >> 16) # lui $a0, 1
/* 1F549C 801DD51C 0C02A855 */  jal   func_800AA154_ovl13
/* 1F54A0 801DD520 34840429 */   ori   $a0, (0x00010429 & 0xFFFF) # ori $a0, $a0, 0x429
/* 1F54A4 801DD524 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1F54A8 801DD528 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1F54AC 801DD52C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F54B0 801DD530 3C01800E */  lui   $at, 0x800e
/* 1F54B4 801DD534 8D4B0000 */  lw    $t3, ($t2)
/* 1F54B8 801DD538 24190002 */  li    $t9, 2
/* 1F54BC 801DD53C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F54C0 801DD540 000B6080 */  sll   $t4, $t3, 2
/* 1F54C4 801DD544 002C0821 */  addu  $at, $at, $t4
/* 1F54C8 801DD548 03E00008 */  jr    $ra
/* 1F54CC 801DD54C AC39DC50 */   sw    $t9, -0x23b0($at)

/* 1F54D0 801DD550 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F54D4 801DD554 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F54D8 801DD558 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F54DC 801DD55C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F54E0 801DD560 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F54E4 801DD564 8DCF0000 */  lw    $t7, ($t6)
/* 1F54E8 801DD568 3C01800F */  lui   $at, 0x800f
/* 1F54EC 801DD56C 000FC080 */  sll   $t8, $t7, 2
/* 1F54F0 801DD570 00380821 */  addu  $at, $at, $t8
/* 1F54F4 801DD574 0C06835D */  jal   func_801A0D74_ovl13
/* 1F54F8 801DD578 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F54FC 801DD57C 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1F5500 801DD580 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1F5504 801DD584 3C02800E */  lui   $v0, 0x800e
/* 1F5508 801DD588 8F280000 */  lw    $t0, ($t9)
/* 1F550C 801DD58C 00084880 */  sll   $t1, $t0, 2
/* 1F5510 801DD590 00491021 */  addu  $v0, $v0, $t1
/* 1F5514 801DD594 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1F5518 801DD598 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F551C 801DD59C 8C450010 */  lw    $a1, 0x10($v0)
/* 1F5520 801DD5A0 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F5524 801DD5A4 8C460018 */   lw    $a2, 0x18($v0)
/* 1F5528 801DD5A8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F552C 801DD5AC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1F5530 801DD5B0 3C0A800F */  lui   $t2, 0x800f
/* 1F5534 801DD5B4 24010001 */  li    $at, 1
/* 1F5538 801DD5B8 8C430000 */  lw    $v1, ($v0)
/* 1F553C 801DD5BC 240B0007 */  li    $t3, 7
/* 1F5540 801DD5C0 3C04800E */  lui   $a0, 0x800e
/* 1F5544 801DD5C4 00031880 */  sll   $v1, $v1, 2
/* 1F5548 801DD5C8 01435021 */  addu  $t2, $t2, $v1
/* 1F554C 801DD5CC 8D4A83E0 */  lw    $t2, -0x7c20($t2)
/* 1F5550 801DD5D0 1541000A */  bne   $t2, $at, .L801DD5FC_ovl13
/* 1F5554 801DD5D4 3C01800E */   lui   $at, 0x800e
/* 1F5558 801DD5D8 00230821 */  addu  $at, $at, $v1
/* 1F555C 801DD5DC AC2BDC50 */  sw    $t3, -0x23b0($at)
/* 1F5560 801DD5E0 8C4C0000 */  lw    $t4, ($v0)
/* 1F5564 801DD5E4 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F5568 801DD5E8 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F556C 801DD5EC 000C6880 */  sll   $t5, $t4, 2
/* 1F5570 801DD5F0 008D2021 */  addu  $a0, $a0, $t5
/* 1F5574 801DD5F4 0C02C7B2 */  jal   func_800B1EC8
/* 1F5578 801DD5F8 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801DD5FC_ovl13:
/* 1F557C 801DD5FC 0C078E56 */  jal   func_801E3958_ovl13
/* 1F5580 801DD600 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F5584 801DD604 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F5588 801DD608 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F558C 801DD60C 03E00008 */  jr    $ra
/* 1F5590 801DD610 00000000 */   nop   

/* 1F5594 801DD614 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 1F5598 801DD618 AFB2001C */  sw    $s2, 0x1c($sp)
/* 1F559C 801DD61C 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 1F55A0 801DD620 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 1F55A4 801DD624 8E430000 */  lw    $v1, ($s2)
/* 1F55A8 801DD628 AFBF0034 */  sw    $ra, 0x34($sp)
/* 1F55AC 801DD62C AFB70030 */  sw    $s7, 0x30($sp)
/* 1F55B0 801DD630 AFB6002C */  sw    $s6, 0x2c($sp)
/* 1F55B4 801DD634 AFB50028 */  sw    $s5, 0x28($sp)
/* 1F55B8 801DD638 AFB40024 */  sw    $s4, 0x24($sp)
/* 1F55BC 801DD63C AFB30020 */  sw    $s3, 0x20($sp)
/* 1F55C0 801DD640 AFB10018 */  sw    $s1, 0x18($sp)
/* 1F55C4 801DD644 AFB00014 */  sw    $s0, 0x14($sp)
/* 1F55C8 801DD648 AFA40038 */  sw    $a0, 0x38($sp)
/* 1F55CC 801DD64C 8C6E0000 */  lw    $t6, ($v1)
/* 1F55D0 801DD650 3C01800E */  lui   $at, 0x800e
/* 1F55D4 801DD654 24170002 */  li    $s7, 2
/* 1F55D8 801DD658 000E7880 */  sll   $t7, $t6, 2
/* 1F55DC 801DD65C 002F0821 */  addu  $at, $at, $t7
/* 1F55E0 801DD660 AC37DFD0 */  sw    $s7, -0x2030($at)
/* 1F55E4 801DD664 8C790000 */  lw    $t9, ($v1)
/* 1F55E8 801DD668 3C10800E */  lui   $s0, %hi(D_800E1B50) # $s0, 0x800e
/* 1F55EC 801DD66C 26101B50 */  addiu $s0, %lo(D_800E1B50) # addiu $s0, $s0, 0x1b50
/* 1F55F0 801DD670 00194080 */  sll   $t0, $t9, 2
/* 1F55F4 801DD674 02084821 */  addu  $t1, $s0, $t0
/* 1F55F8 801DD678 8D2A0000 */  lw    $t2, ($t1)
/* 1F55FC 801DD67C 3C18801E */  lui   $t8, %hi(D_801D93A8) # $t8, 0x801e
/* 1F5600 801DD680 271893A8 */  addiu $t8, %lo(D_801D93A8) # addiu $t8, $t8, -0x6c58
/* 1F5604 801DD684 AD58008C */  sw    $t8, 0x8c($t2)
/* 1F5608 801DD688 8E4B0000 */  lw    $t3, ($s2)
/* 1F560C 801DD68C 3C04801E */  lui   $a0, %hi(D_801DAADC) # $a0, 0x801e
/* 1F5610 801DD690 3C01800E */  lui   $at, 0x800e
/* 1F5614 801DD694 8D6C0000 */  lw    $t4, ($t3)
/* 1F5618 801DD698 2484AADC */  addiu $a0, %lo(D_801DAADC) # addiu $a0, $a0, -0x5524
/* 1F561C 801DD69C 000C6880 */  sll   $t5, $t4, 2
/* 1F5620 801DD6A0 002D0821 */  addu  $at, $at, $t5
/* 1F5624 801DD6A4 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F5628 801DD6A8 AC240490 */   sw    $a0, 0x490($at)
/* 1F562C 801DD6AC 8E4F0000 */  lw    $t7, ($s2)
/* 1F5630 801DD6B0 3C0E801E */  lui   $t6, %hi(D_801DADF8) # $t6, 0x801e
/* 1F5634 801DD6B4 25CEADF8 */  addiu $t6, %lo(D_801DADF8) # addiu $t6, $t6, -0x5208
/* 1F5638 801DD6B8 8DF90000 */  lw    $t9, ($t7)
/* 1F563C 801DD6BC 00194080 */  sll   $t0, $t9, 2
/* 1F5640 801DD6C0 02084821 */  addu  $t1, $s0, $t0
/* 1F5644 801DD6C4 8D380000 */  lw    $t8, ($t1)
/* 1F5648 801DD6C8 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F564C 801DD6CC AF0E0098 */   sw    $t6, 0x98($t8)
/* 1F5650 801DD6D0 8E430000 */  lw    $v1, ($s2)
/* 1F5654 801DD6D4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F5658 801DD6D8 44812000 */  mtc1  $at, $f4
/* 1F565C 801DD6DC 8C6A0000 */  lw    $t2, ($v1)
/* 1F5660 801DD6E0 3C01800E */  lui   $at, 0x800e
/* 1F5664 801DD6E4 3C02800E */  lui   $v0, %hi(D_800E64D0) # $v0, 0x800e
/* 1F5668 801DD6E8 000A5880 */  sll   $t3, $t2, 2
/* 1F566C 801DD6EC 002B0821 */  addu  $at, $at, $t3
/* 1F5670 801DD6F0 E4243C90 */  swc1  $f4, 0x3c90($at)
/* 1F5674 801DD6F4 8C640000 */  lw    $a0, ($v1)
/* 1F5678 801DD6F8 3C01800E */  lui   $at, 0x800e
/* 1F567C 801DD6FC 244264D0 */  addiu $v0, %lo(D_800E64D0) # addiu $v0, $v0, 0x64d0
/* 1F5680 801DD700 00042080 */  sll   $a0, $a0, 2
/* 1F5684 801DD704 00240821 */  addu  $at, $at, $a0
/* 1F5688 801DD708 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 1F568C 801DD70C 3C01C000 */  li    $at, 0xC0000000 # -2.000000
/* 1F5690 801DD710 44814000 */  mtc1  $at, $f8
/* 1F5694 801DD714 00446021 */  addu  $t4, $v0, $a0
/* 1F5698 801DD718 3C0F800F */  lui   $t7, 0x800f
/* 1F569C 801DD71C 46083282 */  mul.s $f10, $f6, $f8
/* 1F56A0 801DD720 3C10800F */  lui   $s0, %hi(D_800EA360) # $s0, 0x800f
/* 1F56A4 801DD724 2610A360 */  addiu $s0, %lo(D_800EA360) # addiu $s0, $s0, -0x5ca0
/* 1F56A8 801DD728 24090001 */  li    $t1, 1
/* 1F56AC 801DD72C 3C01800F */  lui   $at, 0x800f
/* 1F56B0 801DD730 3C13800E */  lui   $s3, %hi(D_800DDC50) # $s3, 0x800e
/* 1F56B4 801DD734 2673DC50 */  addiu $s3, %lo(D_800DDC50) # addiu $s3, $s3, -0x23b0
/* 1F56B8 801DD738 E58A0000 */  swc1  $f10, ($t4)
/* 1F56BC 801DD73C 8C640000 */  lw    $a0, ($v1)
/* 1F56C0 801DD740 3C160001 */  lui   $s6, (0x0001042A >> 16) # lui $s6, 1
/* 1F56C4 801DD744 3C15800E */  lui   $s5, %hi(D_800DF310) # $s5, 0x800e
/* 1F56C8 801DD748 00042080 */  sll   $a0, $a0, 2
/* 1F56CC 801DD74C 01E47821 */  addu  $t7, $t7, $a0
/* 1F56D0 801DD750 8DEFBBE0 */  lw    $t7, -0x4420($t7)
/* 1F56D4 801DD754 00446821 */  addu  $t5, $v0, $a0
/* 1F56D8 801DD758 C5B00000 */  lwc1  $f16, ($t5)
/* 1F56DC 801DD75C 000FC880 */  sll   $t9, $t7, 2
/* 1F56E0 801DD760 00594021 */  addu  $t0, $v0, $t9
/* 1F56E4 801DD764 E5100000 */  swc1  $f16, ($t0)
/* 1F56E8 801DD768 8C6E0000 */  lw    $t6, ($v1)
/* 1F56EC 801DD76C 3C140001 */  lui   $s4, (0x0001041D >> 16) # lui $s4, 1
/* 1F56F0 801DD770 3694041D */  ori   $s4, (0x0001041D & 0xFFFF) # ori $s4, $s4, 0x41d
/* 1F56F4 801DD774 000EC080 */  sll   $t8, $t6, 2
/* 1F56F8 801DD778 02185021 */  addu  $t2, $s0, $t8
/* 1F56FC 801DD77C AD490000 */  sw    $t1, ($t2)
/* 1F5700 801DD780 8C640000 */  lw    $a0, ($v1)
/* 1F5704 801DD784 26B5F310 */  addiu $s5, %lo(D_800DF310) # addiu $s5, $s5, -0xcf0
/* 1F5708 801DD788 36D6042A */  ori   $s6, (0x0001042A & 0xFFFF) # ori $s6, $s6, 0x42a
/* 1F570C 801DD78C 00042080 */  sll   $a0, $a0, 2
/* 1F5710 801DD790 02045821 */  addu  $t3, $s0, $a0
/* 1F5714 801DD794 8D6C0000 */  lw    $t4, ($t3)
/* 1F5718 801DD798 00240821 */  addu  $at, $at, $a0
/* 1F571C 801DD79C AC2C9E20 */  sw    $t4, -0x61e0($at)
/* 1F5720 801DD7A0 8C640000 */  lw    $a0, ($v1)
/* 1F5724 801DD7A4 00042080 */  sll   $a0, $a0, 2
/* 1F5728 801DD7A8 02646821 */  addu  $t5, $s3, $a0
/* 1F572C 801DD7AC 8DAF0000 */  lw    $t7, ($t5)
/* 1F5730 801DD7B0 16EF002A */  bne   $s7, $t7, .L801DD85C_ovl13
/* 1F5734 801DD7B4 02041021 */   addu  $v0, $s0, $a0
.L801DD7B8_ovl13:
/* 1F5738 801DD7B8 8C590000 */  lw    $t9, ($v0)
/* 1F573C 801DD7BC 3C11801E */  lui   $s1, %hi(D_801DDADC) # $s1, 0x801e
/* 1F5740 801DD7C0 2631DADC */  addiu $s1, %lo(D_801DDADC) # addiu $s1, $s1, -0x2524
/* 1F5744 801DD7C4 27280001 */  addiu $t0, $t9, 1
/* 1F5748 801DD7C8 AC480000 */  sw    $t0, ($v0)
/* 1F574C 801DD7CC 8C6E0000 */  lw    $t6, ($v1)
/* 1F5750 801DD7D0 02C02025 */  move  $a0, $s6
/* 1F5754 801DD7D4 000EC080 */  sll   $t8, $t6, 2
/* 1F5758 801DD7D8 02181021 */  addu  $v0, $s0, $t8
/* 1F575C 801DD7DC 8C490000 */  lw    $t1, ($v0)
/* 1F5760 801DD7E0 05210004 */  bgez  $t1, .L801DD7F4_ovl13
/* 1F5764 801DD7E4 312A0001 */   andi  $t2, $t1, 1
/* 1F5768 801DD7E8 11400002 */  beqz  $t2, .L801DD7F4_ovl13
/* 1F576C 801DD7EC 00000000 */   nop   
/* 1F5770 801DD7F0 254AFFFE */  addiu $t2, $t2, -2
.L801DD7F4_ovl13:
/* 1F5774 801DD7F4 AC4A0000 */  sw    $t2, ($v0)
/* 1F5778 801DD7F8 8C6B0000 */  lw    $t3, ($v1)
/* 1F577C 801DD7FC 000B6080 */  sll   $t4, $t3, 2
/* 1F5780 801DD800 020C6821 */  addu  $t5, $s0, $t4
/* 1F5784 801DD804 8DAF0000 */  lw    $t7, ($t5)
/* 1F5788 801DD808 11E0000B */  beqz  $t7, .L801DD838_ovl13
/* 1F578C 801DD80C 00000000 */   nop   
/* 1F5790 801DD810 0C02A806 */  jal   func_800AA018_ovl13
/* 1F5794 801DD814 02802025 */   move  $a0, $s4
/* 1F5798 801DD818 8E590000 */  lw    $t9, ($s2)
/* 1F579C 801DD81C 8F280000 */  lw    $t0, ($t9)
/* 1F57A0 801DD820 00087080 */  sll   $t6, $t0, 2
/* 1F57A4 801DD824 02AEC021 */  addu  $t8, $s5, $t6
/* 1F57A8 801DD828 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F57AC 801DD82C AF110000 */   sw    $s1, ($t8)
/* 1F57B0 801DD830 10000004 */  b     .L801DD844_ovl13
/* 1F57B4 801DD834 8E430000 */   lw    $v1, ($s2)
.L801DD838_ovl13:
/* 1F57B8 801DD838 0C02AA19 */  jal   func_800AA864_ovl13
/* 1F57BC 801DD83C 24050002 */   li    $a1, 2
/* 1F57C0 801DD840 8E430000 */  lw    $v1, ($s2)
.L801DD844_ovl13:
/* 1F57C4 801DD844 8C640000 */  lw    $a0, ($v1)
/* 1F57C8 801DD848 00042080 */  sll   $a0, $a0, 2
/* 1F57CC 801DD84C 02644821 */  addu  $t1, $s3, $a0
/* 1F57D0 801DD850 8D2A0000 */  lw    $t2, ($t1)
/* 1F57D4 801DD854 52EAFFD8 */  beql  $s7, $t2, .L801DD7B8_ovl13
/* 1F57D8 801DD858 02041021 */   addu  $v0, $s0, $a0
.L801DD85C_ovl13:
/* 1F57DC 801DD85C 8FBF0034 */  lw    $ra, 0x34($sp)
/* 1F57E0 801DD860 8FB00014 */  lw    $s0, 0x14($sp)
/* 1F57E4 801DD864 8FB10018 */  lw    $s1, 0x18($sp)
/* 1F57E8 801DD868 8FB2001C */  lw    $s2, 0x1c($sp)
/* 1F57EC 801DD86C 8FB30020 */  lw    $s3, 0x20($sp)
/* 1F57F0 801DD870 8FB40024 */  lw    $s4, 0x24($sp)
/* 1F57F4 801DD874 8FB50028 */  lw    $s5, 0x28($sp)
/* 1F57F8 801DD878 8FB6002C */  lw    $s6, 0x2c($sp)
/* 1F57FC 801DD87C 8FB70030 */  lw    $s7, 0x30($sp)
/* 1F5800 801DD880 03E00008 */  jr    $ra
/* 1F5804 801DD884 27BD0038 */   addiu $sp, $sp, 0x38

/* 1F5808 801DD888 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1F580C 801DD88C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1F5810 801DD890 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F5814 801DD894 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F5818 801DD898 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F581C 801DD89C 8CC30000 */  lw    $v1, ($a2)
/* 1F5820 801DD8A0 3C0E800F */  lui   $t6, %hi(D_800E9E20) # $t6, 0x800f
/* 1F5824 801DD8A4 25CE9E20 */  addiu $t6, %lo(D_800E9E20) # addiu $t6, $t6, -0x61e0
/* 1F5828 801DD8A8 00031880 */  sll   $v1, $v1, 2
/* 1F582C 801DD8AC 006E2821 */  addu  $a1, $v1, $t6
/* 1F5830 801DD8B0 8CA20000 */  lw    $v0, ($a1)
/* 1F5834 801DD8B4 18400007 */  blez  $v0, .L801DD8D4_ovl13
/* 1F5838 801DD8B8 244FFFFF */   addiu $t7, $v0, -1
/* 1F583C 801DD8BC ACAF0000 */  sw    $t7, ($a1)
/* 1F5840 801DD8C0 8CC30000 */  lw    $v1, ($a2)
/* 1F5844 801DD8C4 3C02800F */  lui   $v0, 0x800f
/* 1F5848 801DD8C8 00031880 */  sll   $v1, $v1, 2
/* 1F584C 801DD8CC 00431021 */  addu  $v0, $v0, $v1
/* 1F5850 801DD8D0 8C429E20 */  lw    $v0, -0x61e0($v0)
.L801DD8D4_ovl13:
/* 1F5854 801DD8D4 1C40001A */  bgtz  $v0, .L801DD940_ovl13
/* 1F5858 801DD8D8 00000000 */   nop   
/* 1F585C 801DD8DC 0C006291 */  jal   random_soft_s32_range
/* 1F5860 801DD8E0 24040008 */   li    $a0, 8
/* 1F5864 801DD8E4 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1F5868 801DD8E8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1F586C 801DD8EC 0002C080 */  sll   $t8, $v0, 2
/* 1F5870 801DD8F0 3C01801E */  lui   $at, 0x801e
/* 1F5874 801DD8F4 8F280000 */  lw    $t0, ($t9)
/* 1F5878 801DD8F8 00380821 */  addu  $at, $at, $t8
/* 1F587C 801DD8FC C4245B58 */  lwc1  $f4, 0x5b58($at)
/* 1F5880 801DD900 3C01800E */  lui   $at, 0x800e
/* 1F5884 801DD904 00084880 */  sll   $t1, $t0, 2
/* 1F5888 801DD908 00290821 */  addu  $at, $at, $t1
/* 1F588C 801DD90C 2404001F */  li    $a0, 31
/* 1F5890 801DD910 0C006291 */  jal   random_soft_s32_range
/* 1F5894 801DD914 E4243750 */   swc1  $f4, 0x3750($at)
/* 1F5898 801DD918 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1F589C 801DD91C 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1F58A0 801DD920 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 1F58A4 801DD924 244A000F */  addiu $t2, $v0, 0xf
/* 1F58A8 801DD928 8CCB0000 */  lw    $t3, ($a2)
/* 1F58AC 801DD92C 000B6080 */  sll   $t4, $t3, 2
/* 1F58B0 801DD930 002C0821 */  addu  $at, $at, $t4
/* 1F58B4 801DD934 AC2A9E20 */  sw    $t2, -0x61e0($at)
/* 1F58B8 801DD938 8CC30000 */  lw    $v1, ($a2)
/* 1F58BC 801DD93C 00031880 */  sll   $v1, $v1, 2
.L801DD940_ovl13:
/* 1F58C0 801DD940 3C0D800F */  lui   $t5, 0x800f
/* 1F58C4 801DD944 01A36821 */  addu  $t5, $t5, $v1
/* 1F58C8 801DD948 8DADBBE0 */  lw    $t5, -0x4420($t5)
/* 1F58CC 801DD94C 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1F58D0 801DD950 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1F58D4 801DD954 000D7080 */  sll   $t6, $t5, 2
/* 1F58D8 801DD958 004E7821 */  addu  $t7, $v0, $t6
/* 1F58DC 801DD95C 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 1F58E0 801DD960 44813000 */  mtc1  $at, $f6
/* 1F58E4 801DD964 C5E00000 */  lwc1  $f0, ($t7)
/* 1F58E8 801DD968 0043C021 */  addu  $t8, $v0, $v1
/* 1F58EC 801DD96C C7020000 */  lwc1  $f2, ($t8)
/* 1F58F0 801DD970 46060200 */  add.s $f8, $f0, $f6
/* 1F58F4 801DD974 3C19800E */  lui   $t9, %hi(D_800E3750) # $t9, 0x800e
/* 1F58F8 801DD978 27393750 */  addiu $t9, %lo(D_800E3750) # addiu $t9, $t9, 0x3750
/* 1F58FC 801DD97C 00791021 */  addu  $v0, $v1, $t9
/* 1F5900 801DD980 4602403C */  c.lt.s $f8, $f2
/* 1F5904 801DD984 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1F5908 801DD988 45020012 */  bc1fl .L801DD9D4_ovl13
/* 1F590C 801DD98C 44813000 */   mtc1  $at, $f6
/* 1F5910 801DD990 C4400000 */  lwc1  $f0, ($v0)
/* 1F5914 801DD994 44805000 */  mtc1  $zero, $f10
/* 1F5918 801DD998 00000000 */  nop   
/* 1F591C 801DD99C 460A003C */  c.lt.s $f0, $f10
/* 1F5920 801DD9A0 00000000 */  nop   
/* 1F5924 801DD9A4 45020006 */  bc1fl .L801DD9C0_ovl13
/* 1F5928 801DD9A8 46000107 */   neg.s $f4, $f0
/* 1F592C 801DD9AC 46000407 */  neg.s $f16, $f0
/* 1F5930 801DD9B0 46008487 */  neg.s $f18, $f16
/* 1F5934 801DD9B4 10000003 */  b     .L801DD9C4_ovl13
/* 1F5938 801DD9B8 E4520000 */   swc1  $f18, ($v0)
/* 1F593C 801DD9BC 46000107 */  neg.s $f4, $f0
.L801DD9C0_ovl13:
/* 1F5940 801DD9C0 E4440000 */  swc1  $f4, ($v0)
.L801DD9C4_ovl13:
/* 1F5944 801DD9C4 8CC30000 */  lw    $v1, ($a2)
/* 1F5948 801DD9C8 10000019 */  b     .L801DDA30_ovl13
/* 1F594C 801DD9CC 00031880 */   sll   $v1, $v1, 2
/* 1F5950 801DD9D0 44813000 */  mtc1  $at, $f6
.L801DD9D4_ovl13:
/* 1F5954 801DD9D4 3C08800E */  lui   $t0, %hi(D_800E3750) # $t0, 0x800e
/* 1F5958 801DD9D8 25083750 */  addiu $t0, %lo(D_800E3750) # addiu $t0, $t0, 0x3750
/* 1F595C 801DD9DC 46060200 */  add.s $f8, $f0, $f6
/* 1F5960 801DD9E0 00681021 */  addu  $v0, $v1, $t0
/* 1F5964 801DD9E4 4608103C */  c.lt.s $f2, $f8
/* 1F5968 801DD9E8 00000000 */  nop   
/* 1F596C 801DD9EC 45000010 */  bc1f  .L801DDA30_ovl13
/* 1F5970 801DD9F0 00000000 */   nop   
/* 1F5974 801DD9F4 C4400000 */  lwc1  $f0, ($v0)
/* 1F5978 801DD9F8 44805000 */  mtc1  $zero, $f10
/* 1F597C 801DD9FC 00000000 */  nop   
/* 1F5980 801DDA00 460A003C */  c.lt.s $f0, $f10
/* 1F5984 801DDA04 00000000 */  nop   
/* 1F5988 801DDA08 45020007 */  bc1fl .L801DDA28_ovl13
/* 1F598C 801DDA0C E4400000 */   swc1  $f0, ($v0)
/* 1F5990 801DDA10 46000407 */  neg.s $f16, $f0
/* 1F5994 801DDA14 E4500000 */  swc1  $f16, ($v0)
/* 1F5998 801DDA18 8CC30000 */  lw    $v1, ($a2)
/* 1F599C 801DDA1C 10000004 */  b     .L801DDA30_ovl13
/* 1F59A0 801DDA20 00031880 */   sll   $v1, $v1, 2
/* 1F59A4 801DDA24 E4400000 */  swc1  $f0, ($v0)
.L801DDA28_ovl13:
/* 1F59A8 801DDA28 8CC30000 */  lw    $v1, ($a2)
/* 1F59AC 801DDA2C 00031880 */  sll   $v1, $v1, 2
.L801DDA30_ovl13:
/* 1F59B0 801DDA30 3C01800F */  lui   $at, 0x800f
/* 1F59B4 801DDA34 00230821 */  addu  $at, $at, $v1
/* 1F59B8 801DDA38 AC208920 */  sw    $zero, -0x76e0($at)
/* 1F59BC 801DDA3C 0C06835D */  jal   func_801A0D74_ovl13
/* 1F59C0 801DDA40 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F59C4 801DDA44 3C098005 */  lui   $t1, %hi(D_8004A7C4) # $t1, 0x8005
/* 1F59C8 801DDA48 8D29A7C4 */  lw    $t1, %lo(D_8004A7C4)($t1)
/* 1F59CC 801DDA4C 3C03800E */  lui   $v1, 0x800e
/* 1F59D0 801DDA50 8D2B0000 */  lw    $t3, ($t1)
/* 1F59D4 801DDA54 000B5080 */  sll   $t2, $t3, 2
/* 1F59D8 801DDA58 006A1821 */  addu  $v1, $v1, $t2
/* 1F59DC 801DDA5C 8C63FBD0 */  lw    $v1, -0x430($v1)
/* 1F59E0 801DDA60 8C64005C */  lw    $a0, 0x5c($v1)
/* 1F59E4 801DDA64 8C650010 */  lw    $a1, 0x10($v1)
/* 1F59E8 801DDA68 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F59EC 801DDA6C 8C660018 */   lw    $a2, 0x18($v1)
/* 1F59F0 801DDA70 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1F59F4 801DDA74 8CC6A7C4 */  lw    $a2, %lo(D_8004A7C4)($a2)
/* 1F59F8 801DDA78 3C0C800F */  lui   $t4, 0x800f
/* 1F59FC 801DDA7C 24010001 */  li    $at, 1
/* 1F5A00 801DDA80 8CC30000 */  lw    $v1, ($a2)
/* 1F5A04 801DDA84 240D0007 */  li    $t5, 7
/* 1F5A08 801DDA88 3C04800E */  lui   $a0, 0x800e
/* 1F5A0C 801DDA8C 00031880 */  sll   $v1, $v1, 2
/* 1F5A10 801DDA90 01836021 */  addu  $t4, $t4, $v1
/* 1F5A14 801DDA94 8D8C83E0 */  lw    $t4, -0x7c20($t4)
/* 1F5A18 801DDA98 1581000A */  bne   $t4, $at, .L801DDAC4_ovl13
/* 1F5A1C 801DDA9C 3C01800E */   lui   $at, 0x800e
/* 1F5A20 801DDAA0 00230821 */  addu  $at, $at, $v1
/* 1F5A24 801DDAA4 AC2DDC50 */  sw    $t5, -0x23b0($at)
/* 1F5A28 801DDAA8 8CCE0000 */  lw    $t6, ($a2)
/* 1F5A2C 801DDAAC 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F5A30 801DDAB0 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F5A34 801DDAB4 000E7880 */  sll   $t7, $t6, 2
/* 1F5A38 801DDAB8 008F2021 */  addu  $a0, $a0, $t7
/* 1F5A3C 801DDABC 0C02C7B2 */  jal   func_800B1EC8
/* 1F5A40 801DDAC0 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801DDAC4_ovl13:
/* 1F5A44 801DDAC4 0C078E56 */  jal   func_801E3958_ovl13
/* 1F5A48 801DDAC8 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F5A4C 801DDACC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F5A50 801DDAD0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F5A54 801DDAD4 03E00008 */  jr    $ra
/* 1F5A58 801DDAD8 00000000 */   nop   

/* 1F5A5C 801DDADC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F5A60 801DDAE0 44866000 */  mtc1  $a2, $f12
/* 1F5A64 801DDAE4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F5A68 801DDAE8 14A00047 */  bnez  $a1, .L801DDC08_ovl13
/* 1F5A6C 801DDAEC AFA40018 */   sw    $a0, 0x18($sp)
/* 1F5A70 801DDAF0 4600610D */  trunc.w.s $f4, $f12
/* 1F5A74 801DDAF4 24010001 */  li    $at, 1
/* 1F5A78 801DDAF8 440F2000 */  mfc1  $t7, $f4
/* 1F5A7C 801DDAFC 00000000 */  nop   
/* 1F5A80 801DDB00 55E10042 */  bnel  $t7, $at, .L801DDC0C_ovl13
/* 1F5A84 801DDB04 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1F5A88 801DDB08 0C006291 */  jal   random_soft_s32_range
/* 1F5A8C 801DDB0C 24040003 */   li    $a0, 3
/* 1F5A90 801DDB10 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1F5A94 801DDB14 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1F5A98 801DDB18 3C06800F */  lui   $a2, %hi(D_800EA1A0) # $a2, 0x800f
/* 1F5A9C 801DDB1C 24C6A1A0 */  addiu $a2, %lo(D_800EA1A0) # addiu $a2, $a2, -0x5e60
/* 1F5AA0 801DDB20 8F190000 */  lw    $t9, ($t8)
/* 1F5AA4 801DDB24 3C0B801E */  lui   $t3, %hi(D_801E5B78) # $t3, 0x801e
/* 1F5AA8 801DDB28 256B5B78 */  addiu $t3, %lo(D_801E5B78) # addiu $t3, $t3, 0x5b78
/* 1F5AAC 801DDB2C 00194080 */  sll   $t0, $t9, 2
/* 1F5AB0 801DDB30 00C81821 */  addu  $v1, $a2, $t0
/* 1F5AB4 801DDB34 8C640000 */  lw    $a0, ($v1)
/* 1F5AB8 801DDB38 00027080 */  sll   $t6, $v0, 2
/* 1F5ABC 801DDB3C 01CB7821 */  addu  $t7, $t6, $t3
/* 1F5AC0 801DDB40 14440004 */  bne   $v0, $a0, .L801DDB54_ovl13
/* 1F5AC4 801DDB44 00045080 */   sll   $t2, $a0, 2
/* 1F5AC8 801DDB48 24890003 */  addiu $t1, $a0, 3
/* 1F5ACC 801DDB4C 1000001E */  b     .L801DDBC8_ovl13
/* 1F5AD0 801DDB50 AC690000 */   sw    $t1, ($v1)
.L801DDB54_ovl13:
/* 1F5AD4 801DDB54 014B6021 */  addu  $t4, $t2, $t3
/* 1F5AD8 801DDB58 8D8D0000 */  lw    $t5, ($t4)
/* 1F5ADC 801DDB5C 8DF80000 */  lw    $t8, ($t7)
/* 1F5AE0 801DDB60 55B80019 */  bnel  $t5, $t8, .L801DDBC8_ovl13
/* 1F5AE4 801DDB64 AC620000 */   sw    $v0, ($v1)
/* 1F5AE8 801DDB68 0C006291 */  jal   random_soft_s32_range
/* 1F5AEC 801DDB6C 24040002 */   li    $a0, 2
/* 1F5AF0 801DDB70 3C048005 */  lui   $a0, %hi(D_8004A7C4) # $a0, 0x8005
/* 1F5AF4 801DDB74 8C84A7C4 */  lw    $a0, %lo(D_8004A7C4)($a0)
/* 1F5AF8 801DDB78 3C06800F */  lui   $a2, %hi(D_800EA1A0) # $a2, 0x800f
/* 1F5AFC 801DDB7C 24C6A1A0 */  addiu $a2, %lo(D_800EA1A0) # addiu $a2, $a2, -0x5e60
/* 1F5B00 801DDB80 8C990000 */  lw    $t9, ($a0)
/* 1F5B04 801DDB84 24010003 */  li    $at, 3
/* 1F5B08 801DDB88 00194080 */  sll   $t0, $t9, 2
/* 1F5B0C 801DDB8C 00C81821 */  addu  $v1, $a2, $t0
/* 1F5B10 801DDB90 8C690000 */  lw    $t1, ($v1)
/* 1F5B14 801DDB94 01225021 */  addu  $t2, $t1, $v0
/* 1F5B18 801DDB98 254C0001 */  addiu $t4, $t2, 1
/* 1F5B1C 801DDB9C AC6C0000 */  sw    $t4, ($v1)
/* 1F5B20 801DDBA0 8C8E0000 */  lw    $t6, ($a0)
/* 1F5B24 801DDBA4 000E5880 */  sll   $t3, $t6, 2
/* 1F5B28 801DDBA8 00CB1821 */  addu  $v1, $a2, $t3
/* 1F5B2C 801DDBAC 8C6F0000 */  lw    $t7, ($v1)
/* 1F5B30 801DDBB0 01E1001A */  div   $zero, $t7, $at
/* 1F5B34 801DDBB4 00006810 */  mfhi  $t5
/* 1F5B38 801DDBB8 AC6D0000 */  sw    $t5, ($v1)
/* 1F5B3C 801DDBBC 10000002 */  b     .L801DDBC8_ovl13
/* 1F5B40 801DDBC0 00000000 */   nop   
/* 1F5B44 801DDBC4 AC620000 */  sw    $v0, ($v1)
.L801DDBC8_ovl13:
/* 1F5B48 801DDBC8 0C029D9E */  jal   func_800A7678
/* 1F5B4C 801DDBCC 24040188 */   li    $a0, 392
/* 1F5B50 801DDBD0 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1F5B54 801DDBD4 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1F5B58 801DDBD8 3C06800F */  lui   $a2, %hi(D_800EA1A0) # $a2, 0x800f
/* 1F5B5C 801DDBDC 24C6A1A0 */  addiu $a2, %lo(D_800EA1A0) # addiu $a2, $a2, -0x5e60
/* 1F5B60 801DDBE0 8F190000 */  lw    $t9, ($t8)
/* 1F5B64 801DDBE4 3C04801E */  lui   $a0, 0x801e
/* 1F5B68 801DDBE8 00002825 */  move  $a1, $zero
/* 1F5B6C 801DDBEC 00194080 */  sll   $t0, $t9, 2
/* 1F5B70 801DDBF0 00C84821 */  addu  $t1, $a2, $t0
/* 1F5B74 801DDBF4 8D2A0000 */  lw    $t2, ($t1)
/* 1F5B78 801DDBF8 000A6080 */  sll   $t4, $t2, 2
/* 1F5B7C 801DDBFC 008C2021 */  addu  $a0, $a0, $t4
/* 1F5B80 801DDC00 0C077706 */  jal   func_801DDC18_ovl13
/* 1F5B84 801DDC04 8C845B78 */   lw    $a0, 0x5b78($a0)
.L801DDC08_ovl13:
/* 1F5B88 801DDC08 8FBF0014 */  lw    $ra, 0x14($sp)
.L801DDC0C_ovl13:
/* 1F5B8C 801DDC0C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F5B90 801DDC10 03E00008 */  jr    $ra
/* 1F5B94 801DDC14 00000000 */   nop   

/* 1F5B98 801DDC18 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F5B9C 801DDC1C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F5BA0 801DDC20 0C06775E */  jal   func_8019DD78_ovl13
/* 1F5BA4 801DDC24 00000000 */   nop   
/* 1F5BA8 801DDC28 2401FFFF */  li    $at, -1
/* 1F5BAC 801DDC2C 10410005 */  beq   $v0, $at, .L801DDC44_ovl13
/* 1F5BB0 801DDC30 00401825 */   move  $v1, $v0
/* 1F5BB4 801DDC34 00027080 */  sll   $t6, $v0, 2
/* 1F5BB8 801DDC38 3C01800F */  lui   $at, 0x800f
/* 1F5BBC 801DDC3C 002E0821 */  addu  $at, $at, $t6
/* 1F5BC0 801DDC40 AC208E60 */  sw    $zero, -0x71a0($at)
.L801DDC44_ovl13:
/* 1F5BC4 801DDC44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F5BC8 801DDC48 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F5BCC 801DDC4C 00601025 */  move  $v0, $v1
/* 1F5BD0 801DDC50 03E00008 */  jr    $ra
/* 1F5BD4 801DDC54 00000000 */   nop   

/* 1F5BD8 801DDC58 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F5BDC 801DDC5C 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 1F5BE0 801DDC60 8C430000 */  lw    $v1, ($v0)
/* 1F5BE4 801DDC64 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F5BE8 801DDC68 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F5BEC 801DDC6C AFA40018 */  sw    $a0, 0x18($sp)
/* 1F5BF0 801DDC70 8C6F0000 */  lw    $t7, ($v1)
/* 1F5BF4 801DDC74 3C01800E */  lui   $at, 0x800e
/* 1F5BF8 801DDC78 240E0003 */  li    $t6, 3
/* 1F5BFC 801DDC7C 000FC080 */  sll   $t8, $t7, 2
/* 1F5C00 801DDC80 00380821 */  addu  $at, $at, $t8
/* 1F5C04 801DDC84 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1F5C08 801DDC88 8C680000 */  lw    $t0, ($v1)
/* 1F5C0C 801DDC8C 3C0A800E */  lui   $t2, 0x800e
/* 1F5C10 801DDC90 3C19801E */  lui   $t9, %hi(D_801D93A8) # $t9, 0x801e
/* 1F5C14 801DDC94 00084880 */  sll   $t1, $t0, 2
/* 1F5C18 801DDC98 01495021 */  addu  $t2, $t2, $t1
/* 1F5C1C 801DDC9C 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 1F5C20 801DDCA0 273993A8 */  addiu $t9, %lo(D_801D93A8) # addiu $t9, $t9, -0x6c58
/* 1F5C24 801DDCA4 3C04801E */  lui   $a0, %hi(D_801DAAF0) # $a0, 0x801e
/* 1F5C28 801DDCA8 AD59008C */  sw    $t9, 0x8c($t2)
/* 1F5C2C 801DDCAC 8C4B0000 */  lw    $t3, ($v0)
/* 1F5C30 801DDCB0 3C01800E */  lui   $at, 0x800e
/* 1F5C34 801DDCB4 2484AAF0 */  addiu $a0, %lo(D_801DAAF0) # addiu $a0, $a0, -0x5510
/* 1F5C38 801DDCB8 8D6C0000 */  lw    $t4, ($t3)
/* 1F5C3C 801DDCBC 000C6880 */  sll   $t5, $t4, 2
/* 1F5C40 801DDCC0 002D0821 */  addu  $at, $at, $t5
/* 1F5C44 801DDCC4 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F5C48 801DDCC8 AC240490 */   sw    $a0, 0x490($at)
/* 1F5C4C 801DDCCC 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1F5C50 801DDCD0 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 1F5C54 801DDCD4 8CAE0000 */  lw    $t6, ($a1)
/* 1F5C58 801DDCD8 3C09800E */  lui   $t1, 0x800e
/* 1F5C5C 801DDCDC 3C01801E */  lui   $at, %hi(D_801E5CDC) # $at, 0x801e
/* 1F5C60 801DDCE0 8DD80000 */  lw    $t8, ($t6)
/* 1F5C64 801DDCE4 3C0F801E */  lui   $t7, %hi(D_801DAD8C) # $t7, 0x801e
/* 1F5C68 801DDCE8 C4205CDC */  lwc1  $f0, %lo(D_801E5CDC)($at)
/* 1F5C6C 801DDCEC 00184080 */  sll   $t0, $t8, 2
/* 1F5C70 801DDCF0 01284821 */  addu  $t1, $t1, $t0
/* 1F5C74 801DDCF4 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 1F5C78 801DDCF8 25EFAD8C */  addiu $t7, %lo(D_801DAD8C) # addiu $t7, $t7, -0x5274
/* 1F5C7C 801DDCFC 3C01800E */  lui   $at, 0x800e
/* 1F5C80 801DDD00 AD2F0098 */  sw    $t7, 0x98($t1)
/* 1F5C84 801DDD04 8CA30000 */  lw    $v1, ($a1)
/* 1F5C88 801DDD08 2404000A */  li    $a0, 10
/* 1F5C8C 801DDD0C 8C620000 */  lw    $v0, ($v1)
/* 1F5C90 801DDD10 00021080 */  sll   $v0, $v0, 2
/* 1F5C94 801DDD14 00220821 */  addu  $at, $at, $v0
/* 1F5C98 801DDD18 C42464D0 */  lwc1  $f4, 0x64d0($at)
/* 1F5C9C 801DDD1C 3C01800E */  lui   $at, 0x800e
/* 1F5CA0 801DDD20 00220821 */  addu  $at, $at, $v0
/* 1F5CA4 801DDD24 46002182 */  mul.s $f6, $f4, $f0
/* 1F5CA8 801DDD28 E4266690 */  swc1  $f6, 0x6690($at)
/* 1F5CAC 801DDD2C 8C620000 */  lw    $v0, ($v1)
/* 1F5CB0 801DDD30 3C01800E */  lui   $at, 0x800e
/* 1F5CB4 801DDD34 00021080 */  sll   $v0, $v0, 2
/* 1F5CB8 801DDD38 00220821 */  addu  $at, $at, $v0
/* 1F5CBC 801DDD3C C4283210 */  lwc1  $f8, 0x3210($at)
/* 1F5CC0 801DDD40 3C01800E */  lui   $at, 0x800e
/* 1F5CC4 801DDD44 00220821 */  addu  $at, $at, $v0
/* 1F5CC8 801DDD48 46004282 */  mul.s $f10, $f8, $f0
/* 1F5CCC 801DDD4C 0C002DAF */  jal   func_8000B6BC
/* 1F5CD0 801DDD50 E42A3750 */   swc1  $f10, 0x3750($at)
/* 1F5CD4 801DDD54 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F5CD8 801DDD58 00000000 */   nop   
/* 1F5CDC 801DDD5C 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F5CE0 801DDD60 00000000 */   nop   
/* 1F5CE4 801DDD64 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1F5CE8 801DDD68 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1F5CEC 801DDD6C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F5CF0 801DDD70 3C01800E */  lui   $at, 0x800e
/* 1F5CF4 801DDD74 8D4B0000 */  lw    $t3, ($t2)
/* 1F5CF8 801DDD78 24190004 */  li    $t9, 4
/* 1F5CFC 801DDD7C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F5D00 801DDD80 000B6080 */  sll   $t4, $t3, 2
/* 1F5D04 801DDD84 002C0821 */  addu  $at, $at, $t4
/* 1F5D08 801DDD88 03E00008 */  jr    $ra
/* 1F5D0C 801DDD8C AC39DC50 */   sw    $t9, -0x23b0($at)

/* 1F5D10 801DDD90 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F5D14 801DDD94 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F5D18 801DDD98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F5D1C 801DDD9C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F5D20 801DDDA0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F5D24 801DDDA4 8DCF0000 */  lw    $t7, ($t6)
/* 1F5D28 801DDDA8 3C01800F */  lui   $at, 0x800f
/* 1F5D2C 801DDDAC 000FC080 */  sll   $t8, $t7, 2
/* 1F5D30 801DDDB0 00380821 */  addu  $at, $at, $t8
/* 1F5D34 801DDDB4 0C06835D */  jal   func_801A0D74_ovl13
/* 1F5D38 801DDDB8 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F5D3C 801DDDBC 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1F5D40 801DDDC0 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1F5D44 801DDDC4 3C02800E */  lui   $v0, 0x800e
/* 1F5D48 801DDDC8 8F280000 */  lw    $t0, ($t9)
/* 1F5D4C 801DDDCC 00084880 */  sll   $t1, $t0, 2
/* 1F5D50 801DDDD0 00491021 */  addu  $v0, $v0, $t1
/* 1F5D54 801DDDD4 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1F5D58 801DDDD8 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F5D5C 801DDDDC 8C450010 */  lw    $a1, 0x10($v0)
/* 1F5D60 801DDDE0 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F5D64 801DDDE4 8C460018 */   lw    $a2, 0x18($v0)
/* 1F5D68 801DDDE8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F5D6C 801DDDEC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1F5D70 801DDDF0 3C0A800F */  lui   $t2, 0x800f
/* 1F5D74 801DDDF4 24010001 */  li    $at, 1
/* 1F5D78 801DDDF8 8C430000 */  lw    $v1, ($v0)
/* 1F5D7C 801DDDFC 240B0007 */  li    $t3, 7
/* 1F5D80 801DDE00 3C04800E */  lui   $a0, 0x800e
/* 1F5D84 801DDE04 00031880 */  sll   $v1, $v1, 2
/* 1F5D88 801DDE08 01435021 */  addu  $t2, $t2, $v1
/* 1F5D8C 801DDE0C 8D4A83E0 */  lw    $t2, -0x7c20($t2)
/* 1F5D90 801DDE10 1541000A */  bne   $t2, $at, .L801DDE3C_ovl13
/* 1F5D94 801DDE14 3C01800E */   lui   $at, 0x800e
/* 1F5D98 801DDE18 00230821 */  addu  $at, $at, $v1
/* 1F5D9C 801DDE1C AC2BDC50 */  sw    $t3, -0x23b0($at)
/* 1F5DA0 801DDE20 8C4C0000 */  lw    $t4, ($v0)
/* 1F5DA4 801DDE24 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F5DA8 801DDE28 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F5DAC 801DDE2C 000C6880 */  sll   $t5, $t4, 2
/* 1F5DB0 801DDE30 008D2021 */  addu  $a0, $a0, $t5
/* 1F5DB4 801DDE34 0C02C7B2 */  jal   func_800B1EC8
/* 1F5DB8 801DDE38 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801DDE3C_ovl13:
/* 1F5DBC 801DDE3C 0C078E56 */  jal   func_801E3958_ovl13
/* 1F5DC0 801DDE40 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F5DC4 801DDE44 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F5DC8 801DDE48 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F5DCC 801DDE4C 03E00008 */  jr    $ra
/* 1F5DD0 801DDE50 00000000 */   nop   

/* 1F5DD4 801DDE54 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1F5DD8 801DDE58 AFB00018 */  sw    $s0, 0x18($sp)
/* 1F5DDC 801DDE5C 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1F5DE0 801DDE60 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1F5DE4 801DDE64 8E020000 */  lw    $v0, ($s0)
/* 1F5DE8 801DDE68 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1F5DEC 801DDE6C AFA40020 */  sw    $a0, 0x20($sp)
/* 1F5DF0 801DDE70 8C4F0000 */  lw    $t7, ($v0)
/* 1F5DF4 801DDE74 3C01800E */  lui   $at, 0x800e
/* 1F5DF8 801DDE78 240E0004 */  li    $t6, 4
/* 1F5DFC 801DDE7C 000FC080 */  sll   $t8, $t7, 2
/* 1F5E00 801DDE80 00380821 */  addu  $at, $at, $t8
/* 1F5E04 801DDE84 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1F5E08 801DDE88 8C480000 */  lw    $t0, ($v0)
/* 1F5E0C 801DDE8C 3C0A800E */  lui   $t2, 0x800e
/* 1F5E10 801DDE90 3C19801E */  lui   $t9, %hi(D_801D93A8) # $t9, 0x801e
/* 1F5E14 801DDE94 00084880 */  sll   $t1, $t0, 2
/* 1F5E18 801DDE98 01495021 */  addu  $t2, $t2, $t1
/* 1F5E1C 801DDE9C 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 1F5E20 801DDEA0 273993A8 */  addiu $t9, %lo(D_801D93A8) # addiu $t9, $t9, -0x6c58
/* 1F5E24 801DDEA4 3C04801E */  lui   $a0, %hi(D_801DAAF0) # $a0, 0x801e
/* 1F5E28 801DDEA8 AD59008C */  sw    $t9, 0x8c($t2)
/* 1F5E2C 801DDEAC 8E0B0000 */  lw    $t3, ($s0)
/* 1F5E30 801DDEB0 3C01800E */  lui   $at, 0x800e
/* 1F5E34 801DDEB4 2484AAF0 */  addiu $a0, %lo(D_801DAAF0) # addiu $a0, $a0, -0x5510
/* 1F5E38 801DDEB8 8D6C0000 */  lw    $t4, ($t3)
/* 1F5E3C 801DDEBC 000C6880 */  sll   $t5, $t4, 2
/* 1F5E40 801DDEC0 002D0821 */  addu  $at, $at, $t5
/* 1F5E44 801DDEC4 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F5E48 801DDEC8 AC240490 */   sw    $a0, 0x490($at)
/* 1F5E4C 801DDECC 8E0E0000 */  lw    $t6, ($s0)
/* 1F5E50 801DDED0 3C09800E */  lui   $t1, 0x800e
/* 1F5E54 801DDED4 3C0F801E */  lui   $t7, %hi(D_801DAD8C) # $t7, 0x801e
/* 1F5E58 801DDED8 8DD80000 */  lw    $t8, ($t6)
/* 1F5E5C 801DDEDC 25EFAD8C */  addiu $t7, %lo(D_801DAD8C) # addiu $t7, $t7, -0x5274
/* 1F5E60 801DDEE0 00184080 */  sll   $t0, $t8, 2
/* 1F5E64 801DDEE4 01284821 */  addu  $t1, $t1, $t0
/* 1F5E68 801DDEE8 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 1F5E6C 801DDEEC 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F5E70 801DDEF0 AD2F0098 */   sw    $t7, 0x98($t1)
/* 1F5E74 801DDEF4 3C040001 */  lui   $a0, (0x00010423 >> 16) # lui $a0, 1
/* 1F5E78 801DDEF8 0C02A855 */  jal   func_800AA154_ovl13
/* 1F5E7C 801DDEFC 34840423 */   ori   $a0, (0x00010423 & 0xFFFF) # ori $a0, $a0, 0x423
/* 1F5E80 801DDF00 3C040001 */  lui   $a0, (0x00010427 >> 16) # lui $a0, 1
/* 1F5E84 801DDF04 34840427 */  ori   $a0, (0x00010427 & 0xFFFF) # ori $a0, $a0, 0x427
/* 1F5E88 801DDF08 0C02AA19 */  jal   func_800AA864_ovl13
/* 1F5E8C 801DDF0C 24050002 */   li    $a1, 2
/* 1F5E90 801DDF10 3C040001 */  lui   $a0, (0x00010429 >> 16) # lui $a0, 1
/* 1F5E94 801DDF14 0C02A855 */  jal   func_800AA154_ovl13
/* 1F5E98 801DDF18 34840429 */   ori   $a0, (0x00010429 & 0xFFFF) # ori $a0, $a0, 0x429
/* 1F5E9C 801DDF1C 8E020000 */  lw    $v0, ($s0)
/* 1F5EA0 801DDF20 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1F5EA4 801DDF24 24E79AA0 */  addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1F5EA8 801DDF28 8C430000 */  lw    $v1, ($v0)
/* 1F5EAC 801DDF2C 24010001 */  li    $at, 1
/* 1F5EB0 801DDF30 00031880 */  sll   $v1, $v1, 2
/* 1F5EB4 801DDF34 00E33021 */  addu  $a2, $a3, $v1
/* 1F5EB8 801DDF38 8CC50000 */  lw    $a1, ($a2)
/* 1F5EBC 801DDF3C 10A0000A */  beqz  $a1, .L801DDF68_ovl13
/* 1F5EC0 801DDF40 00000000 */   nop   
/* 1F5EC4 801DDF44 10A10020 */  beq   $a1, $at, .L801DDFC8_ovl13
/* 1F5EC8 801DDF48 240F0002 */   li    $t7, 2
/* 1F5ECC 801DDF4C 24010002 */  li    $at, 2
/* 1F5ED0 801DDF50 10A10024 */  beq   $a1, $at, .L801DDFE4_ovl13
/* 1F5ED4 801DDF54 24010003 */   li    $at, 3
/* 1F5ED8 801DDF58 50A1003A */  beql  $a1, $at, .L801DE044_ovl13
/* 1F5EDC 801DDF5C ACC00000 */   sw    $zero, ($a2)
/* 1F5EE0 801DDF60 1000003E */  b     .L801DE05C_ovl13
/* 1F5EE4 801DDF64 00056880 */   sll   $t5, $a1, 2
.L801DDF68_ovl13:
/* 1F5EE8 801DDF68 0C006291 */  jal   random_soft_s32_range
/* 1F5EEC 801DDF6C 24040002 */   li    $a0, 2
/* 1F5EF0 801DDF70 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1F5EF4 801DDF74 14400008 */  bnez  $v0, .L801DDF98_ovl13
/* 1F5EF8 801DDF78 24E79AA0 */   addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1F5EFC 801DDF7C 8E020000 */  lw    $v0, ($s0)
/* 1F5F00 801DDF80 24190001 */  li    $t9, 1
/* 1F5F04 801DDF84 8C4A0000 */  lw    $t2, ($v0)
/* 1F5F08 801DDF88 000A5880 */  sll   $t3, $t2, 2
/* 1F5F0C 801DDF8C 00EB6021 */  addu  $t4, $a3, $t3
/* 1F5F10 801DDF90 10000007 */  b     .L801DDFB0_ovl13
/* 1F5F14 801DDF94 AD990000 */   sw    $t9, ($t4)
.L801DDF98_ovl13:
/* 1F5F18 801DDF98 8E020000 */  lw    $v0, ($s0)
/* 1F5F1C 801DDF9C 240D0002 */  li    $t5, 2
/* 1F5F20 801DDFA0 8C4E0000 */  lw    $t6, ($v0)
/* 1F5F24 801DDFA4 000EC080 */  sll   $t8, $t6, 2
/* 1F5F28 801DDFA8 00F84021 */  addu  $t0, $a3, $t8
/* 1F5F2C 801DDFAC AD0D0000 */  sw    $t5, ($t0)
.L801DDFB0_ovl13:
/* 1F5F30 801DDFB0 8C430000 */  lw    $v1, ($v0)
/* 1F5F34 801DDFB4 3C05800F */  lui   $a1, 0x800f
/* 1F5F38 801DDFB8 00031880 */  sll   $v1, $v1, 2
/* 1F5F3C 801DDFBC 00A32821 */  addu  $a1, $a1, $v1
/* 1F5F40 801DDFC0 10000025 */  b     .L801DE058_ovl13
/* 1F5F44 801DDFC4 8CA59AA0 */   lw    $a1, -0x6560($a1)
.L801DDFC8_ovl13:
/* 1F5F48 801DDFC8 ACCF0000 */  sw    $t7, ($a2)
/* 1F5F4C 801DDFCC 8C430000 */  lw    $v1, ($v0)
/* 1F5F50 801DDFD0 3C05800F */  lui   $a1, 0x800f
/* 1F5F54 801DDFD4 00031880 */  sll   $v1, $v1, 2
/* 1F5F58 801DDFD8 00A32821 */  addu  $a1, $a1, $v1
/* 1F5F5C 801DDFDC 1000001E */  b     .L801DE058_ovl13
/* 1F5F60 801DDFE0 8CA59AA0 */   lw    $a1, -0x6560($a1)
.L801DDFE4_ovl13:
/* 1F5F64 801DDFE4 0C006291 */  jal   random_soft_s32_range
/* 1F5F68 801DDFE8 24040002 */   li    $a0, 2
/* 1F5F6C 801DDFEC 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1F5F70 801DDFF0 14400008 */  bnez  $v0, .L801DE014_ovl13
/* 1F5F74 801DDFF4 24E79AA0 */   addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1F5F78 801DDFF8 8E020000 */  lw    $v0, ($s0)
/* 1F5F7C 801DDFFC 24090003 */  li    $t1, 3
/* 1F5F80 801DE000 8C4A0000 */  lw    $t2, ($v0)
/* 1F5F84 801DE004 000A5880 */  sll   $t3, $t2, 2
/* 1F5F88 801DE008 00EBC821 */  addu  $t9, $a3, $t3
/* 1F5F8C 801DE00C 10000006 */  b     .L801DE028_ovl13
/* 1F5F90 801DE010 AF290000 */   sw    $t1, ($t9)
.L801DE014_ovl13:
/* 1F5F94 801DE014 8E020000 */  lw    $v0, ($s0)
/* 1F5F98 801DE018 8C4C0000 */  lw    $t4, ($v0)
/* 1F5F9C 801DE01C 000C7080 */  sll   $t6, $t4, 2
/* 1F5FA0 801DE020 00EEC021 */  addu  $t8, $a3, $t6
/* 1F5FA4 801DE024 AF000000 */  sw    $zero, ($t8)
.L801DE028_ovl13:
/* 1F5FA8 801DE028 8C430000 */  lw    $v1, ($v0)
/* 1F5FAC 801DE02C 3C05800F */  lui   $a1, 0x800f
/* 1F5FB0 801DE030 00031880 */  sll   $v1, $v1, 2
/* 1F5FB4 801DE034 00A32821 */  addu  $a1, $a1, $v1
/* 1F5FB8 801DE038 10000007 */  b     .L801DE058_ovl13
/* 1F5FBC 801DE03C 8CA59AA0 */   lw    $a1, -0x6560($a1)
/* 1F5FC0 801DE040 ACC00000 */  sw    $zero, ($a2)
.L801DE044_ovl13:
/* 1F5FC4 801DE044 8C430000 */  lw    $v1, ($v0)
/* 1F5FC8 801DE048 3C05800F */  lui   $a1, 0x800f
/* 1F5FCC 801DE04C 00031880 */  sll   $v1, $v1, 2
/* 1F5FD0 801DE050 00A32821 */  addu  $a1, $a1, $v1
/* 1F5FD4 801DE054 8CA59AA0 */  lw    $a1, -0x6560($a1)
.L801DE058_ovl13:
/* 1F5FD8 801DE058 00056880 */  sll   $t5, $a1, 2
.L801DE05C_ovl13:
/* 1F5FDC 801DE05C 3C08801E */  lui   $t0, 0x801e
/* 1F5FE0 801DE060 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1F5FE4 801DE064 010D4021 */  addu  $t0, $t0, $t5
/* 1F5FE8 801DE068 8D085B90 */  lw    $t0, 0x5b90($t0)
/* 1F5FEC 801DE06C 3C01800E */  lui   $at, 0x800e
/* 1F5FF0 801DE070 00230821 */  addu  $at, $at, $v1
/* 1F5FF4 801DE074 8FB00018 */  lw    $s0, 0x18($sp)
/* 1F5FF8 801DE078 27BD0020 */  addiu $sp, $sp, 0x20
/* 1F5FFC 801DE07C 03E00008 */  jr    $ra
/* 1F6000 801DE080 AC28DC50 */   sw    $t0, -0x23b0($at)

/* 1F6004 801DE084 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F6008 801DE088 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F600C 801DE08C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F6010 801DE090 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F6014 801DE094 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F6018 801DE098 8DCF0000 */  lw    $t7, ($t6)
/* 1F601C 801DE09C 3C01800F */  lui   $at, 0x800f
/* 1F6020 801DE0A0 000FC080 */  sll   $t8, $t7, 2
/* 1F6024 801DE0A4 00380821 */  addu  $at, $at, $t8
/* 1F6028 801DE0A8 0C06835D */  jal   func_801A0D74_ovl13
/* 1F602C 801DE0AC AC208920 */   sw    $zero, -0x76e0($at)
/* 1F6030 801DE0B0 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1F6034 801DE0B4 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1F6038 801DE0B8 3C02800E */  lui   $v0, 0x800e
/* 1F603C 801DE0BC 8F280000 */  lw    $t0, ($t9)
/* 1F6040 801DE0C0 00084880 */  sll   $t1, $t0, 2
/* 1F6044 801DE0C4 00491021 */  addu  $v0, $v0, $t1
/* 1F6048 801DE0C8 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1F604C 801DE0CC 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F6050 801DE0D0 8C450010 */  lw    $a1, 0x10($v0)
/* 1F6054 801DE0D4 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F6058 801DE0D8 8C460018 */   lw    $a2, 0x18($v0)
/* 1F605C 801DE0DC 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F6060 801DE0E0 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1F6064 801DE0E4 3C0A800F */  lui   $t2, 0x800f
/* 1F6068 801DE0E8 24010001 */  li    $at, 1
/* 1F606C 801DE0EC 8C430000 */  lw    $v1, ($v0)
/* 1F6070 801DE0F0 240B0007 */  li    $t3, 7
/* 1F6074 801DE0F4 3C04800E */  lui   $a0, 0x800e
/* 1F6078 801DE0F8 00031880 */  sll   $v1, $v1, 2
/* 1F607C 801DE0FC 01435021 */  addu  $t2, $t2, $v1
/* 1F6080 801DE100 8D4A83E0 */  lw    $t2, -0x7c20($t2)
/* 1F6084 801DE104 1541000A */  bne   $t2, $at, .L801DE130_ovl13
/* 1F6088 801DE108 3C01800E */   lui   $at, 0x800e
/* 1F608C 801DE10C 00230821 */  addu  $at, $at, $v1
/* 1F6090 801DE110 AC2BDC50 */  sw    $t3, -0x23b0($at)
/* 1F6094 801DE114 8C4C0000 */  lw    $t4, ($v0)
/* 1F6098 801DE118 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F609C 801DE11C 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F60A0 801DE120 000C6880 */  sll   $t5, $t4, 2
/* 1F60A4 801DE124 008D2021 */  addu  $a0, $a0, $t5
/* 1F60A8 801DE128 0C02C7B2 */  jal   func_800B1EC8
/* 1F60AC 801DE12C 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801DE130_ovl13:
/* 1F60B0 801DE130 0C078E56 */  jal   func_801E3958_ovl13
/* 1F60B4 801DE134 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F60B8 801DE138 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F60BC 801DE13C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F60C0 801DE140 03E00008 */  jr    $ra
/* 1F60C4 801DE144 00000000 */   nop   

/* 1F60C8 801DE148 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1F60CC 801DE14C AFB10020 */  sw    $s1, 0x20($sp)
/* 1F60D0 801DE150 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1F60D4 801DE154 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1F60D8 801DE158 8E230000 */  lw    $v1, ($s1)
/* 1F60DC 801DE15C AFBF002C */  sw    $ra, 0x2c($sp)
/* 1F60E0 801DE160 AFB30028 */  sw    $s3, 0x28($sp)
/* 1F60E4 801DE164 AFB20024 */  sw    $s2, 0x24($sp)
/* 1F60E8 801DE168 AFB0001C */  sw    $s0, 0x1c($sp)
/* 1F60EC 801DE16C F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1F60F0 801DE170 AFA40040 */  sw    $a0, 0x40($sp)
/* 1F60F4 801DE174 8C700000 */  lw    $s0, ($v1)
/* 1F60F8 801DE178 3C12800E */  lui   $s2, %hi(D_800E1B50) # $s2, 0x800e
/* 1F60FC 801DE17C 26521B50 */  addiu $s2, %lo(D_800E1B50) # addiu $s2, $s2, 0x1b50
/* 1F6100 801DE180 00108080 */  sll   $s0, $s0, 2
/* 1F6104 801DE184 02507021 */  addu  $t6, $s2, $s0
/* 1F6108 801DE188 8DCF0000 */  lw    $t7, ($t6)
/* 1F610C 801DE18C 3C01800E */  lui   $at, 0x800e
/* 1F6110 801DE190 00300821 */  addu  $at, $at, $s0
/* 1F6114 801DE194 24180005 */  li    $t8, 5
/* 1F6118 801DE198 AC38DFD0 */  sw    $t8, -0x2030($at)
/* 1F611C 801DE19C AFAF003C */  sw    $t7, 0x3c($sp)
/* 1F6120 801DE1A0 8C680000 */  lw    $t0, ($v1)
/* 1F6124 801DE1A4 3C19801E */  lui   $t9, %hi(D_801D93CC) # $t9, 0x801e
/* 1F6128 801DE1A8 273993CC */  addiu $t9, %lo(D_801D93CC) # addiu $t9, $t9, -0x6c34
/* 1F612C 801DE1AC 00084880 */  sll   $t1, $t0, 2
/* 1F6130 801DE1B0 02495021 */  addu  $t2, $s2, $t1
/* 1F6134 801DE1B4 8D4B0000 */  lw    $t3, ($t2)
/* 1F6138 801DE1B8 3C04801E */  lui   $a0, %hi(D_801DAAF0) # $a0, 0x801e
/* 1F613C 801DE1BC 3C01800E */  lui   $at, 0x800e
/* 1F6140 801DE1C0 AD79008C */  sw    $t9, 0x8c($t3)
/* 1F6144 801DE1C4 8E2C0000 */  lw    $t4, ($s1)
/* 1F6148 801DE1C8 2484AAF0 */  addiu $a0, %lo(D_801DAAF0) # addiu $a0, $a0, -0x5510
/* 1F614C 801DE1CC 8D8D0000 */  lw    $t5, ($t4)
/* 1F6150 801DE1D0 000D7080 */  sll   $t6, $t5, 2
/* 1F6154 801DE1D4 002E0821 */  addu  $at, $at, $t6
/* 1F6158 801DE1D8 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F615C 801DE1DC AC240490 */   sw    $a0, 0x490($at)
/* 1F6160 801DE1E0 8E380000 */  lw    $t8, ($s1)
/* 1F6164 801DE1E4 3C0F801E */  lui   $t7, %hi(D_801DAD8C) # $t7, 0x801e
/* 1F6168 801DE1E8 25EFAD8C */  addiu $t7, %lo(D_801DAD8C) # addiu $t7, $t7, -0x5274
/* 1F616C 801DE1EC 8F080000 */  lw    $t0, ($t8)
/* 1F6170 801DE1F0 3C01800F */  lui   $at, 0x800f
/* 1F6174 801DE1F4 00084880 */  sll   $t1, $t0, 2
/* 1F6178 801DE1F8 02495021 */  addu  $t2, $s2, $t1
/* 1F617C 801DE1FC 8D590000 */  lw    $t9, ($t2)
/* 1F6180 801DE200 AF2F0098 */  sw    $t7, 0x98($t9)
/* 1F6184 801DE204 8E2B0000 */  lw    $t3, ($s1)
/* 1F6188 801DE208 8D6C0000 */  lw    $t4, ($t3)
/* 1F618C 801DE20C 000C6880 */  sll   $t5, $t4, 2
/* 1F6190 801DE210 002D0821 */  addu  $at, $at, $t5
/* 1F6194 801DE214 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F6198 801DE218 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F619C 801DE21C 8E230000 */  lw    $v1, ($s1)
/* 1F61A0 801DE220 4480A000 */  mtc1  $zero, $f20
/* 1F61A4 801DE224 3C02800F */  lui   $v0, %hi(D_800EAA60) # $v0, 0x800f
/* 1F61A8 801DE228 8C6E0000 */  lw    $t6, ($v1)
/* 1F61AC 801DE22C 2442AA60 */  addiu $v0, %lo(D_800EAA60) # addiu $v0, $v0, -0x55a0
/* 1F61B0 801DE230 3C01800F */  lui   $at, 0x800f
/* 1F61B4 801DE234 000EC080 */  sll   $t8, $t6, 2
/* 1F61B8 801DE238 00584021 */  addu  $t0, $v0, $t8
/* 1F61BC 801DE23C E5140000 */  swc1  $f20, ($t0)
/* 1F61C0 801DE240 8C700000 */  lw    $s0, ($v1)
/* 1F61C4 801DE244 3C040001 */  lui   $a0, (0x00010415 >> 16) # lui $a0, 1
/* 1F61C8 801DE248 34840415 */  ori   $a0, (0x00010415 & 0xFFFF) # ori $a0, $a0, 0x415
/* 1F61CC 801DE24C 00108080 */  sll   $s0, $s0, 2
/* 1F61D0 801DE250 00504821 */  addu  $t1, $v0, $s0
/* 1F61D4 801DE254 C5240000 */  lwc1  $f4, ($t1)
/* 1F61D8 801DE258 00300821 */  addu  $at, $at, $s0
/* 1F61DC 801DE25C 0C02A855 */  jal   func_800AA154_ovl13
/* 1F61E0 801DE260 E424A8A0 */   swc1  $f4, -0x5760($at)
/* 1F61E4 801DE264 0C029D9E */  jal   func_800A7678
/* 1F61E8 801DE268 24040184 */   li    $a0, 388
/* 1F61EC 801DE26C 3C040001 */  lui   $a0, (0x00010416 >> 16) # lui $a0, 1
/* 1F61F0 801DE270 34840416 */  ori   $a0, (0x00010416 & 0xFFFF) # ori $a0, $a0, 0x416
/* 1F61F4 801DE274 0C02AA19 */  jal   func_800AA864_ovl13
/* 1F61F8 801DE278 24050002 */   li    $a1, 2
/* 1F61FC 801DE27C 3C040001 */  lui   $a0, (0x00010418 >> 16) # lui $a0, 1
/* 1F6200 801DE280 0C02A855 */  jal   func_800AA154_ovl13
/* 1F6204 801DE284 34840418 */   ori   $a0, (0x00010418 & 0xFFFF) # ori $a0, $a0, 0x418
/* 1F6208 801DE288 0C029D9E */  jal   func_800A7678
/* 1F620C 801DE28C 24040187 */   li    $a0, 391
/* 1F6210 801DE290 8E2A0000 */  lw    $t2, ($s1)
/* 1F6214 801DE294 3C01800E */  lui   $at, 0x800e
/* 1F6218 801DE298 3C040001 */  lui   $a0, (0x0001042A >> 16) # lui $a0, 1
/* 1F621C 801DE29C 8D500000 */  lw    $s0, ($t2)
/* 1F6220 801DE2A0 3484042A */  ori   $a0, (0x0001042A & 0xFFFF) # ori $a0, $a0, 0x42a
/* 1F6224 801DE2A4 00108080 */  sll   $s0, $s0, 2
/* 1F6228 801DE2A8 00300821 */  addu  $at, $at, $s0
/* 1F622C 801DE2AC C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 1F6230 801DE2B0 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 1F6234 801DE2B4 44814000 */  mtc1  $at, $f8
/* 1F6238 801DE2B8 3C01800E */  lui   $at, 0x800e
/* 1F623C 801DE2BC 00300821 */  addu  $at, $at, $s0
/* 1F6240 801DE2C0 46083282 */  mul.s $f10, $f6, $f8
/* 1F6244 801DE2C4 0C02A855 */  jal   func_800AA154_ovl13
/* 1F6248 801DE2C8 E42A64D0 */   swc1  $f10, 0x64d0($at)
/* 1F624C 801DE2CC 8E2F0000 */  lw    $t7, ($s1)
/* 1F6250 801DE2D0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F6254 801DE2D4 44818000 */  mtc1  $at, $f16
/* 1F6258 801DE2D8 8DF90000 */  lw    $t9, ($t7)
/* 1F625C 801DE2DC 3C01800E */  lui   $at, 0x800e
/* 1F6260 801DE2E0 00195880 */  sll   $t3, $t9, 2
/* 1F6264 801DE2E4 002B0821 */  addu  $at, $at, $t3
/* 1F6268 801DE2E8 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 1F626C 801DE2EC 46128032 */  c.eq.s $f16, $f18
/* 1F6270 801DE2F0 00000000 */  nop   
/* 1F6274 801DE2F4 45000003 */  bc1f  .L801DE304_ovl13
/* 1F6278 801DE2F8 3C040001 */   lui   $a0, (0x00010425 >> 16) # lui $a0, 1
/* 1F627C 801DE2FC 10000003 */  b     .L801DE30C_ovl13
/* 1F6280 801DE300 34840425 */   ori   $a0, (0x00010425 & 0xFFFF) # ori $a0, $a0, 0x425
.L801DE304_ovl13:
/* 1F6284 801DE304 3C040001 */  lui   $a0, (0x00010424 >> 16) # lui $a0, 1
/* 1F6288 801DE308 34840424 */  ori   $a0, (0x00010424 & 0xFFFF) # ori $a0, $a0, 0x424
.L801DE30C_ovl13:
/* 1F628C 801DE30C 0C02A806 */  jal   func_800AA018_ovl13
/* 1F6290 801DE310 00000000 */   nop   
/* 1F6294 801DE314 8E2C0000 */  lw    $t4, ($s1)
/* 1F6298 801DE318 3C01800E */  lui   $at, 0x800e
/* 1F629C 801DE31C 24040019 */  li    $a0, 25
/* 1F62A0 801DE320 8D900000 */  lw    $s0, ($t4)
/* 1F62A4 801DE324 00108080 */  sll   $s0, $s0, 2
/* 1F62A8 801DE328 00300821 */  addu  $at, $at, $s0
/* 1F62AC 801DE32C C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1F62B0 801DE330 3C01801E */  lui   $at, %hi(D_801E5CE0) # $at, 0x801e
/* 1F62B4 801DE334 C4265CE0 */  lwc1  $f6, %lo(D_801E5CE0)($at)
/* 1F62B8 801DE338 3C01800E */  lui   $at, 0x800e
/* 1F62BC 801DE33C 00300821 */  addu  $at, $at, $s0
/* 1F62C0 801DE340 46062202 */  mul.s $f8, $f4, $f6
/* 1F62C4 801DE344 0C002DAF */  jal   func_8000B6BC
/* 1F62C8 801DE348 E4286690 */   swc1  $f8, 0x6690($at)
/* 1F62CC 801DE34C 8E230000 */  lw    $v1, ($s1)
/* 1F62D0 801DE350 3C02800E */  lui   $v0, %hi(D_800E6690) # $v0, 0x800e
/* 1F62D4 801DE354 24426690 */  addiu $v0, %lo(D_800E6690) # addiu $v0, $v0, 0x6690
/* 1F62D8 801DE358 8C6D0000 */  lw    $t5, ($v1)
/* 1F62DC 801DE35C 3C01800E */  lui   $at, 0x800e
/* 1F62E0 801DE360 000D7080 */  sll   $t6, $t5, 2
/* 1F62E4 801DE364 004EC021 */  addu  $t8, $v0, $t6
/* 1F62E8 801DE368 E7140000 */  swc1  $f20, ($t8)
/* 1F62EC 801DE36C 8C700000 */  lw    $s0, ($v1)
/* 1F62F0 801DE370 00108080 */  sll   $s0, $s0, 2
/* 1F62F4 801DE374 00504021 */  addu  $t0, $v0, $s0
/* 1F62F8 801DE378 C50A0000 */  lwc1  $f10, ($t0)
/* 1F62FC 801DE37C 00300821 */  addu  $at, $at, $s0
/* 1F6300 801DE380 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 1F6304 801DE384 8C690000 */  lw    $t1, ($v1)
/* 1F6308 801DE388 3C01801E */  lui   $at, %hi(D_801E5CE4) # $at, 0x801e
/* 1F630C 801DE38C C4305CE4 */  lwc1  $f16, %lo(D_801E5CE4)($at)
/* 1F6310 801DE390 3C01800E */  lui   $at, 0x800e
/* 1F6314 801DE394 00095080 */  sll   $t2, $t1, 2
/* 1F6318 801DE398 002A0821 */  addu  $at, $at, $t2
/* 1F631C 801DE39C 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F6320 801DE3A0 E4306850 */   swc1  $f16, 0x6850($at)
/* 1F6324 801DE3A4 8E2F0000 */  lw    $t7, ($s1)
/* 1F6328 801DE3A8 3C01800E */  lui   $at, 0x800e
/* 1F632C 801DE3AC 3C13800E */  lui   $s3, %hi(D_800DFBD0) # $s3, 0x800e
/* 1F6330 801DE3B0 8DF00000 */  lw    $s0, ($t7)
/* 1F6334 801DE3B4 2673FBD0 */  addiu $s3, %lo(D_800DFBD0) # addiu $s3, $s3, -0x430
/* 1F6338 801DE3B8 3C040001 */  lui   $a0, (0x00010414 >> 16) # lui $a0, 1
/* 1F633C 801DE3BC 00108080 */  sll   $s0, $s0, 2
/* 1F6340 801DE3C0 00300821 */  addu  $at, $at, $s0
/* 1F6344 801DE3C4 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 1F6348 801DE3C8 3C01801E */  lui   $at, %hi(D_801E5CE8) # $at, 0x801e
/* 1F634C 801DE3CC C4245CE8 */  lwc1  $f4, %lo(D_801E5CE8)($at)
/* 1F6350 801DE3D0 0270C821 */  addu  $t9, $s3, $s0
/* 1F6354 801DE3D4 8F2B0000 */  lw    $t3, ($t9)
/* 1F6358 801DE3D8 46049182 */  mul.s $f6, $f18, $f4
/* 1F635C 801DE3DC 34840414 */  ori   $a0, (0x00010414 & 0xFFFF) # ori $a0, $a0, 0x414
/* 1F6360 801DE3E0 8D6C0004 */  lw    $t4, 4($t3)
/* 1F6364 801DE3E4 0C02A806 */  jal   func_800AA018_ovl13
/* 1F6368 801DE3E8 E5860034 */   swc1  $f6, 0x34($t4)
/* 1F636C 801DE3EC 8E230000 */  lw    $v1, ($s1)
/* 1F6370 801DE3F0 3C01800F */  lui   $at, 0x800f
/* 1F6374 801DE3F4 2404000A */  li    $a0, 10
/* 1F6378 801DE3F8 8C6D0000 */  lw    $t5, ($v1)
/* 1F637C 801DE3FC 000D7080 */  sll   $t6, $t5, 2
/* 1F6380 801DE400 002E0821 */  addu  $at, $at, $t6
/* 1F6384 801DE404 E434A8A0 */  swc1  $f20, -0x5760($at)
/* 1F6388 801DE408 8C700000 */  lw    $s0, ($v1)
/* 1F638C 801DE40C 3C01800E */  lui   $at, 0x800e
/* 1F6390 801DE410 00108080 */  sll   $s0, $s0, 2
/* 1F6394 801DE414 00300821 */  addu  $at, $at, $s0
/* 1F6398 801DE418 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 1F639C 801DE41C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F63A0 801DE420 44815000 */  mtc1  $at, $f10
/* 1F63A4 801DE424 3C01800F */  lui   $at, 0x800f
/* 1F63A8 801DE428 00300821 */  addu  $at, $at, $s0
/* 1F63AC 801DE42C 460A4402 */  mul.s $f16, $f8, $f10
/* 1F63B0 801DE430 0C002DAF */  jal   func_8000B6BC
/* 1F63B4 801DE434 E430AA60 */   swc1  $f16, -0x55a0($at)
/* 1F63B8 801DE438 8E230000 */  lw    $v1, ($s1)
/* 1F63BC 801DE43C 3C01800E */  lui   $at, 0x800e
/* 1F63C0 801DE440 24040014 */  li    $a0, 20
/* 1F63C4 801DE444 8C700000 */  lw    $s0, ($v1)
/* 1F63C8 801DE448 00108080 */  sll   $s0, $s0, 2
/* 1F63CC 801DE44C 00300821 */  addu  $at, $at, $s0
/* 1F63D0 801DE450 C4326A10 */  lwc1  $f18, 0x6a10($at)
/* 1F63D4 801DE454 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1F63D8 801DE458 44812000 */  mtc1  $at, $f4
/* 1F63DC 801DE45C 3C01800F */  lui   $at, 0x800f
/* 1F63E0 801DE460 00300821 */  addu  $at, $at, $s0
/* 1F63E4 801DE464 46049182 */  mul.s $f6, $f18, $f4
/* 1F63E8 801DE468 E426A8A0 */  swc1  $f6, -0x5760($at)
/* 1F63EC 801DE46C 8C780000 */  lw    $t8, ($v1)
/* 1F63F0 801DE470 3C01800F */  lui   $at, 0x800f
/* 1F63F4 801DE474 00184080 */  sll   $t0, $t8, 2
/* 1F63F8 801DE478 00280821 */  addu  $at, $at, $t0
/* 1F63FC 801DE47C 0C002DAF */  jal   func_8000B6BC
/* 1F6400 801DE480 E434AA60 */   swc1  $f20, -0x55a0($at)
/* 1F6404 801DE484 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F6408 801DE488 C4286B10 */  lwc1  $f8, %lo(D_800D6B10)($at)
/* 1F640C 801DE48C 3C013E80 */  li    $at, 0x3E800000 # 0.250000
/* 1F6410 801DE490 44815000 */  mtc1  $at, $f10
/* 1F6414 801DE494 00000000 */  nop   
/* 1F6418 801DE498 460A4302 */  mul.s $f12, $f8, $f10
/* 1F641C 801DE49C 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1F6420 801DE4A0 00000000 */   nop   
/* 1F6424 801DE4A4 0C006291 */  jal   random_soft_s32_range
/* 1F6428 801DE4A8 24040003 */   li    $a0, 3
/* 1F642C 801DE4AC 00022880 */  sll   $a1, $v0, 2
/* 1F6430 801DE4B0 3C01801E */  lui   $at, 0x801e
/* 1F6434 801DE4B4 00250821 */  addu  $at, $at, $a1
/* 1F6438 801DE4B8 C4205BAC */  lwc1  $f0, 0x5bac($at)
/* 1F643C 801DE4BC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F6440 801DE4C0 44818000 */  mtc1  $at, $f16
/* 1F6444 801DE4C4 8E230000 */  lw    $v1, ($s1)
/* 1F6448 801DE4C8 3C01800F */  lui   $at, 0x800f
/* 1F644C 801DE4CC 46008083 */  div.s $f2, $f16, $f0
/* 1F6450 801DE4D0 8C700000 */  lw    $s0, ($v1)
/* 1F6454 801DE4D4 3C06800E */  lui   $a2, %hi(D_800E6A10) # $a2, 0x800e
/* 1F6458 801DE4D8 24C66A10 */  addiu $a2, %lo(D_800E6A10) # addiu $a2, $a2, 0x6a10
/* 1F645C 801DE4DC 00108080 */  sll   $s0, $s0, 2
/* 1F6460 801DE4E0 00300821 */  addu  $at, $at, $s0
/* 1F6464 801DE4E4 C432A8A0 */  lwc1  $f18, -0x5760($at)
/* 1F6468 801DE4E8 3C01800F */  lui   $at, 0x800f
/* 1F646C 801DE4EC 00300821 */  addu  $at, $at, $s0
/* 1F6470 801DE4F0 00409025 */  move  $s2, $v0
/* 1F6474 801DE4F4 46000200 */  add.s $f8, $f0, $f0
/* 1F6478 801DE4F8 46001087 */  neg.s $f2, $f2
/* 1F647C 801DE4FC 46121102 */  mul.s $f4, $f2, $f18
/* 1F6480 801DE500 E424AA60 */  swc1  $f4, -0x55a0($at)
/* 1F6484 801DE504 8C700000 */  lw    $s0, ($v1)
/* 1F6488 801DE508 3C01801E */  lui   $at, %hi(D_801E5CEC) # $at, 0x801e
/* 1F648C 801DE50C C4305CEC */  lwc1  $f16, %lo(D_801E5CEC)($at)
/* 1F6490 801DE510 00108080 */  sll   $s0, $s0, 2
/* 1F6494 801DE514 00D04821 */  addu  $t1, $a2, $s0
/* 1F6498 801DE518 C5260000 */  lwc1  $f6, ($t1)
/* 1F649C 801DE51C 3C01800F */  lui   $at, 0x800f
/* 1F64A0 801DE520 00300821 */  addu  $at, $at, $s0
/* 1F64A4 801DE524 46083282 */  mul.s $f10, $f6, $f8
/* 1F64A8 801DE528 46000187 */  neg.s $f6, $f0
/* 1F64AC 801DE52C 460A8483 */  div.s $f18, $f16, $f10
/* 1F64B0 801DE530 E432AC20 */  swc1  $f18, -0x53e0($at)
/* 1F64B4 801DE534 8C700000 */  lw    $s0, ($v1)
/* 1F64B8 801DE538 3C01801E */  lui   $at, 0x801e
/* 1F64BC 801DE53C 00250821 */  addu  $at, $at, $a1
/* 1F64C0 801DE540 00108080 */  sll   $s0, $s0, 2
/* 1F64C4 801DE544 00D05021 */  addu  $t2, $a2, $s0
/* 1F64C8 801DE548 C5440000 */  lwc1  $f4, ($t2)
/* 1F64CC 801DE54C C4305BC4 */  lwc1  $f16, 0x5bc4($at)
/* 1F64D0 801DE550 3C01800F */  lui   $at, 0x800f
/* 1F64D4 801DE554 46062202 */  mul.s $f8, $f4, $f6
/* 1F64D8 801DE558 00300821 */  addu  $at, $at, $s0
/* 1F64DC 801DE55C 46088283 */  div.s $f10, $f16, $f8
/* 1F64E0 801DE560 4600020D */  trunc.w.s $f8, $f0
/* 1F64E4 801DE564 44044000 */  mfc1  $a0, $f8
/* 1F64E8 801DE568 E42AAFA0 */  swc1  $f10, -0x5060($at)
/* 1F64EC 801DE56C 3C01801E */  lui   $at, 0x801e
/* 1F64F0 801DE570 00250821 */  addu  $at, $at, $a1
/* 1F64F4 801DE574 C4325BA0 */  lwc1  $f18, 0x5ba0($at)
/* 1F64F8 801DE578 8C700000 */  lw    $s0, ($v1)
/* 1F64FC 801DE57C 3C01800E */  lui   $at, 0x800e
/* 1F6500 801DE580 46121102 */  mul.s $f4, $f2, $f18
/* 1F6504 801DE584 00108080 */  sll   $s0, $s0, 2
/* 1F6508 801DE588 00D07821 */  addu  $t7, $a2, $s0
/* 1F650C 801DE58C C5E60000 */  lwc1  $f6, ($t7)
/* 1F6510 801DE590 00300821 */  addu  $at, $at, $s0
/* 1F6514 801DE594 46062402 */  mul.s $f16, $f4, $f6
/* 1F6518 801DE598 0C002DAF */  jal   func_8000B6BC
/* 1F651C 801DE59C E4306690 */   swc1  $f16, 0x6690($at)
/* 1F6520 801DE5A0 8E230000 */  lw    $v1, ($s1)
/* 1F6524 801DE5A4 3C01800F */  lui   $at, 0x800f
/* 1F6528 801DE5A8 3C18800F */  lui   $t8, %hi(D_800EAFA0) # $t8, 0x800f
/* 1F652C 801DE5AC 8C6B0000 */  lw    $t3, ($v1)
/* 1F6530 801DE5B0 2718AFA0 */  addiu $t8, %lo(D_800EAFA0) # addiu $t8, $t8, -0x5060
/* 1F6534 801DE5B4 00122880 */  sll   $a1, $s2, 2
/* 1F6538 801DE5B8 000B6080 */  sll   $t4, $t3, 2
/* 1F653C 801DE5BC 002C0821 */  addu  $at, $at, $t4
/* 1F6540 801DE5C0 E434A8A0 */  swc1  $f20, -0x5760($at)
/* 1F6544 801DE5C4 8C6D0000 */  lw    $t5, ($v1)
/* 1F6548 801DE5C8 3C01801E */  lui   $at, 0x801e
/* 1F654C 801DE5CC 00250821 */  addu  $at, $at, $a1
/* 1F6550 801DE5D0 000D7080 */  sll   $t6, $t5, 2
/* 1F6554 801DE5D4 01D81021 */  addu  $v0, $t6, $t8
/* 1F6558 801DE5D8 C44A0000 */  lwc1  $f10, ($v0)
/* 1F655C 801DE5DC 46005487 */  neg.s $f18, $f10
/* 1F6560 801DE5E0 E4520000 */  swc1  $f18, ($v0)
/* 1F6564 801DE5E4 C4205BAC */  lwc1  $f0, 0x5bac($at)
/* 1F6568 801DE5E8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F656C 801DE5EC 44812000 */  mtc1  $at, $f4
/* 1F6570 801DE5F0 3C01801E */  lui   $at, 0x801e
/* 1F6574 801DE5F4 00250821 */  addu  $at, $at, $a1
/* 1F6578 801DE5F8 46002183 */  div.s $f6, $f4, $f0
/* 1F657C 801DE5FC C4305BA0 */  lwc1  $f16, 0x5ba0($at)
/* 1F6580 801DE600 8C700000 */  lw    $s0, ($v1)
/* 1F6584 801DE604 3C01800E */  lui   $at, 0x800e
/* 1F6588 801DE608 4600010D */  trunc.w.s $f4, $f0
/* 1F658C 801DE60C 00108080 */  sll   $s0, $s0, 2
/* 1F6590 801DE610 00300821 */  addu  $at, $at, $s0
/* 1F6594 801DE614 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 1F6598 801DE618 3C01800E */  lui   $at, 0x800e
/* 1F659C 801DE61C 00300821 */  addu  $at, $at, $s0
/* 1F65A0 801DE620 44042000 */  mfc1  $a0, $f4
/* 1F65A4 801DE624 46103202 */  mul.s $f8, $f6, $f16
/* 1F65A8 801DE628 00000000 */  nop   
/* 1F65AC 801DE62C 460A4482 */  mul.s $f18, $f8, $f10
/* 1F65B0 801DE630 0C002DAF */  jal   func_8000B6BC
/* 1F65B4 801DE634 E4326690 */   swc1  $f18, 0x6690($at)
/* 1F65B8 801DE638 8E230000 */  lw    $v1, ($s1)
/* 1F65BC 801DE63C 3C02800E */  lui   $v0, %hi(D_800E6690) # $v0, 0x800e
/* 1F65C0 801DE640 24426690 */  addiu $v0, %lo(D_800E6690) # addiu $v0, $v0, 0x6690
/* 1F65C4 801DE644 8C690000 */  lw    $t1, ($v1)
/* 1F65C8 801DE648 3C01800E */  lui   $at, 0x800e
/* 1F65CC 801DE64C 00095080 */  sll   $t2, $t1, 2
/* 1F65D0 801DE650 004A7821 */  addu  $t7, $v0, $t2
/* 1F65D4 801DE654 E5F40000 */  swc1  $f20, ($t7)
/* 1F65D8 801DE658 8C700000 */  lw    $s0, ($v1)
/* 1F65DC 801DE65C 00108080 */  sll   $s0, $s0, 2
/* 1F65E0 801DE660 0050C821 */  addu  $t9, $v0, $s0
/* 1F65E4 801DE664 C7260000 */  lwc1  $f6, ($t9)
/* 1F65E8 801DE668 00300821 */  addu  $at, $at, $s0
/* 1F65EC 801DE66C E42664D0 */  swc1  $f6, 0x64d0($at)
/* 1F65F0 801DE670 8C6B0000 */  lw    $t3, ($v1)
/* 1F65F4 801DE674 3C01801E */  lui   $at, %hi(func_801E5CF0) # $at, 0x801e
/* 1F65F8 801DE678 C4305CF0 */  lwc1  $f16, %lo(func_801E5CF0)($at)
/* 1F65FC 801DE67C 3C01800E */  lui   $at, 0x800e
/* 1F6600 801DE680 000B6080 */  sll   $t4, $t3, 2
/* 1F6604 801DE684 002C0821 */  addu  $at, $at, $t4
/* 1F6608 801DE688 E4306850 */  swc1  $f16, 0x6850($at)
/* 1F660C 801DE68C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F6610 801DE690 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1F6614 801DE694 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1F6618 801DE698 0C029D9E */  jal   func_800A7678
/* 1F661C 801DE69C 24040187 */   li    $a0, 391
/* 1F6620 801DE6A0 8E230000 */  lw    $v1, ($s1)
/* 1F6624 801DE6A4 3C12800F */  lui   $s2, %hi(D_800EBBE0) # $s2, 0x800f
/* 1F6628 801DE6A8 2652BBE0 */  addiu $s2, %lo(D_800EBBE0) # addiu $s2, $s2, -0x4420
/* 1F662C 801DE6AC 8C700000 */  lw    $s0, ($v1)
/* 1F6630 801DE6B0 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1F6634 801DE6B4 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1F6638 801DE6B8 00108080 */  sll   $s0, $s0, 2
/* 1F663C 801DE6BC 02506821 */  addu  $t5, $s2, $s0
/* 1F6640 801DE6C0 8DAE0000 */  lw    $t6, ($t5)
/* 1F6644 801DE6C4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1F6648 801DE6C8 44815000 */  mtc1  $at, $f10
/* 1F664C 801DE6CC 000EC080 */  sll   $t8, $t6, 2
/* 1F6650 801DE6D0 00584021 */  addu  $t0, $v0, $t8
/* 1F6654 801DE6D4 C5080000 */  lwc1  $f8, ($t0)
/* 1F6658 801DE6D8 00504821 */  addu  $t1, $v0, $s0
/* 1F665C 801DE6DC C5240000 */  lwc1  $f4, ($t1)
/* 1F6660 801DE6E0 460A4480 */  add.s $f18, $f8, $f10
/* 1F6664 801DE6E4 3C05800E */  lui   $a1, %hi(D_800E6A10) # $a1, 0x800e
/* 1F6668 801DE6E8 24A56A10 */  addiu $a1, %lo(D_800E6A10) # addiu $a1, $a1, 0x6a10
/* 1F666C 801DE6EC 4604903C */  c.lt.s $f18, $f4
/* 1F6670 801DE6F0 00000000 */  nop   
/* 1F6674 801DE6F4 45000007 */  bc1f  .L801DE714_ovl13
/* 1F6678 801DE6F8 3C01C000 */   li    $at, 0xC0000000 # -2.000000
/* 1F667C 801DE6FC 44813000 */  mtc1  $at, $f6
/* 1F6680 801DE700 3C01800E */  lui   $at, 0x800e
/* 1F6684 801DE704 00300821 */  addu  $at, $at, $s0
/* 1F6688 801DE708 E4263210 */  swc1  $f6, 0x3210($at)
/* 1F668C 801DE70C 8C700000 */  lw    $s0, ($v1)
/* 1F6690 801DE710 00108080 */  sll   $s0, $s0, 2
.L801DE714_ovl13:
/* 1F6694 801DE714 00B05021 */  addu  $t2, $a1, $s0
/* 1F6698 801DE718 3C01C1A0 */  li    $at, 0xC1A00000 # -20.000000
/* 1F669C 801DE71C 44814000 */  mtc1  $at, $f8
/* 1F66A0 801DE720 C5500000 */  lwc1  $f16, ($t2)
/* 1F66A4 801DE724 3C01800F */  lui   $at, 0x800f
/* 1F66A8 801DE728 00300821 */  addu  $at, $at, $s0
/* 1F66AC 801DE72C 46088282 */  mul.s $f10, $f16, $f8
/* 1F66B0 801DE730 3C07800F */  lui   $a3, %hi(D_800EAA60) # $a3, 0x800f
/* 1F66B4 801DE734 24E7AA60 */  addiu $a3, %lo(D_800EAA60) # addiu $a3, $a3, -0x55a0
/* 1F66B8 801DE738 3C06800F */  lui   $a2, %hi(D_800EAFA0) # $a2, 0x800f
/* 1F66BC 801DE73C 24C6AFA0 */  addiu $a2, %lo(D_800EAFA0) # addiu $a2, $a2, -0x5060
/* 1F66C0 801DE740 2404001E */  li    $a0, 30
/* 1F66C4 801DE744 E42AA8A0 */  swc1  $f10, -0x5760($at)
/* 1F66C8 801DE748 8C6F0000 */  lw    $t7, ($v1)
/* 1F66CC 801DE74C 3C01800F */  lui   $at, 0x800f
/* 1F66D0 801DE750 000FC880 */  sll   $t9, $t7, 2
/* 1F66D4 801DE754 00F95821 */  addu  $t3, $a3, $t9
/* 1F66D8 801DE758 E5740000 */  swc1  $f20, ($t3)
/* 1F66DC 801DE75C 8C6C0000 */  lw    $t4, ($v1)
/* 1F66E0 801DE760 000C6880 */  sll   $t5, $t4, 2
/* 1F66E4 801DE764 00CD7021 */  addu  $t6, $a2, $t5
/* 1F66E8 801DE768 E5D40000 */  swc1  $f20, ($t6)
/* 1F66EC 801DE76C 8C700000 */  lw    $s0, ($v1)
/* 1F66F0 801DE770 00108080 */  sll   $s0, $s0, 2
/* 1F66F4 801DE774 00D0C021 */  addu  $t8, $a2, $s0
/* 1F66F8 801DE778 C7000000 */  lwc1  $f0, ($t8)
/* 1F66FC 801DE77C 00300821 */  addu  $at, $at, $s0
/* 1F6700 801DE780 E420AC20 */  swc1  $f0, -0x53e0($at)
/* 1F6704 801DE784 8C680000 */  lw    $t0, ($v1)
/* 1F6708 801DE788 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 1F670C 801DE78C 44812000 */  mtc1  $at, $f4
/* 1F6710 801DE790 00084880 */  sll   $t1, $t0, 2
/* 1F6714 801DE794 00E95021 */  addu  $t2, $a3, $t1
/* 1F6718 801DE798 E5400000 */  swc1  $f0, ($t2)
/* 1F671C 801DE79C 8C6F0000 */  lw    $t7, ($v1)
/* 1F6720 801DE7A0 3C01801E */  lui   $at, %hi(D_801E5CF4) # $at, 0x801e
/* 1F6724 801DE7A4 000FC880 */  sll   $t9, $t7, 2
/* 1F6728 801DE7A8 02795821 */  addu  $t3, $s3, $t9
/* 1F672C 801DE7AC 8D6C0000 */  lw    $t4, ($t3)
/* 1F6730 801DE7B0 8D8D0008 */  lw    $t5, 8($t4)
/* 1F6734 801DE7B4 E5A00038 */  swc1  $f0, 0x38($t5)
/* 1F6738 801DE7B8 8E2E0000 */  lw    $t6, ($s1)
/* 1F673C 801DE7BC C4305CF4 */  lwc1  $f16, %lo(D_801E5CF4)($at)
/* 1F6740 801DE7C0 8DD00000 */  lw    $s0, ($t6)
/* 1F6744 801DE7C4 00108080 */  sll   $s0, $s0, 2
/* 1F6748 801DE7C8 00B0C021 */  addu  $t8, $a1, $s0
/* 1F674C 801DE7CC C7120000 */  lwc1  $f18, ($t8)
/* 1F6750 801DE7D0 02704021 */  addu  $t0, $s3, $s0
/* 1F6754 801DE7D4 8D090000 */  lw    $t1, ($t0)
/* 1F6758 801DE7D8 46049182 */  mul.s $f6, $f18, $f4
/* 1F675C 801DE7DC 8D2A0004 */  lw    $t2, 4($t1)
/* 1F6760 801DE7E0 46103202 */  mul.s $f8, $f6, $f16
/* 1F6764 801DE7E4 0C002DAF */  jal   func_8000B6BC
/* 1F6768 801DE7E8 E5480034 */   swc1  $f8, 0x34($t2)
/* 1F676C 801DE7EC 3C040001 */  lui   $a0, (0x00010420 >> 16) # lui $a0, 1
/* 1F6770 801DE7F0 0C02A806 */  jal   func_800AA018_ovl13
/* 1F6774 801DE7F4 34840420 */   ori   $a0, (0x00010420 & 0xFFFF) # ori $a0, $a0, 0x420
/* 1F6778 801DE7F8 8E230000 */  lw    $v1, ($s1)
/* 1F677C 801DE7FC 3C01800F */  lui   $at, 0x800f
/* 1F6780 801DE800 24040014 */  li    $a0, 20
/* 1F6784 801DE804 8C700000 */  lw    $s0, ($v1)
/* 1F6788 801DE808 00108080 */  sll   $s0, $s0, 2
/* 1F678C 801DE80C 00300821 */  addu  $at, $at, $s0
/* 1F6790 801DE810 C42AA8A0 */  lwc1  $f10, -0x5760($at)
/* 1F6794 801DE814 3C01801E */  lui   $at, %hi(D_801E5CF8) # $at, 0x801e
/* 1F6798 801DE818 C4325CF8 */  lwc1  $f18, %lo(D_801E5CF8)($at)
/* 1F679C 801DE81C 3C01800F */  lui   $at, 0x800f
/* 1F67A0 801DE820 00300821 */  addu  $at, $at, $s0
/* 1F67A4 801DE824 46125102 */  mul.s $f4, $f10, $f18
/* 1F67A8 801DE828 E424AA60 */  swc1  $f4, -0x55a0($at)
/* 1F67AC 801DE82C 8C6F0000 */  lw    $t7, ($v1)
/* 1F67B0 801DE830 3C01801E */  lui   $at, %hi(D_801E5CFC) # $at, 0x801e
/* 1F67B4 801DE834 C4265CFC */  lwc1  $f6, %lo(D_801E5CFC)($at)
/* 1F67B8 801DE838 3C01800F */  lui   $at, 0x800f
/* 1F67BC 801DE83C 000FC880 */  sll   $t9, $t7, 2
/* 1F67C0 801DE840 00390821 */  addu  $at, $at, $t9
/* 1F67C4 801DE844 E426ADE0 */  swc1  $f6, -0x5220($at)
/* 1F67C8 801DE848 8C6B0000 */  lw    $t3, ($v1)
/* 1F67CC 801DE84C 3C01800E */  lui   $at, 0x800e
/* 1F67D0 801DE850 000B6080 */  sll   $t4, $t3, 2
/* 1F67D4 801DE854 002C0821 */  addu  $at, $at, $t4
/* 1F67D8 801DE858 E4343210 */  swc1  $f20, 0x3210($at)
/* 1F67DC 801DE85C 8C6D0000 */  lw    $t5, ($v1)
/* 1F67E0 801DE860 3C01801E */  lui   $at, %hi(D_801E5D00) # $at, 0x801e
/* 1F67E4 801DE864 C4305D00 */  lwc1  $f16, %lo(D_801E5D00)($at)
/* 1F67E8 801DE868 3C01800E */  lui   $at, 0x800e
/* 1F67EC 801DE86C 000D7080 */  sll   $t6, $t5, 2
/* 1F67F0 801DE870 002E0821 */  addu  $at, $at, $t6
/* 1F67F4 801DE874 0C002DAF */  jal   func_8000B6BC
/* 1F67F8 801DE878 E4303750 */   swc1  $f16, 0x3750($at)
/* 1F67FC 801DE87C 8E380000 */  lw    $t8, ($s1)
/* 1F6800 801DE880 3C01801E */  lui   $at, %hi(D_801E5D04) # $at, 0x801e
/* 1F6804 801DE884 C4285D04 */  lwc1  $f8, %lo(D_801E5D04)($at)
/* 1F6808 801DE888 8F080000 */  lw    $t0, ($t8)
/* 1F680C 801DE88C 3C01800F */  lui   $at, 0x800f
/* 1F6810 801DE890 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1F6814 801DE894 00084880 */  sll   $t1, $t0, 2
/* 1F6818 801DE898 02695021 */  addu  $t2, $s3, $t1
/* 1F681C 801DE89C 8D4F0000 */  lw    $t7, ($t2)
/* 1F6820 801DE8A0 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1F6824 801DE8A4 8DF90008 */  lw    $t9, 8($t7)
/* 1F6828 801DE8A8 E7280030 */  swc1  $f8, 0x30($t9)
/* 1F682C 801DE8AC 8E230000 */  lw    $v1, ($s1)
/* 1F6830 801DE8B0 8C6B0000 */  lw    $t3, ($v1)
/* 1F6834 801DE8B4 000B6080 */  sll   $t4, $t3, 2
/* 1F6838 801DE8B8 002C0821 */  addu  $at, $at, $t4
/* 1F683C 801DE8BC E434AFA0 */  swc1  $f20, -0x5060($at)
/* 1F6840 801DE8C0 8C700000 */  lw    $s0, ($v1)
/* 1F6844 801DE8C4 3C01800F */  lui   $at, 0x800f
/* 1F6848 801DE8C8 00108080 */  sll   $s0, $s0, 2
/* 1F684C 801DE8CC 00300821 */  addu  $at, $at, $s0
/* 1F6850 801DE8D0 C420AFA0 */  lwc1  $f0, -0x5060($at)
/* 1F6854 801DE8D4 3C01800F */  lui   $at, 0x800f
/* 1F6858 801DE8D8 00300821 */  addu  $at, $at, $s0
/* 1F685C 801DE8DC E420ADE0 */  swc1  $f0, -0x5220($at)
/* 1F6860 801DE8E0 8C6D0000 */  lw    $t5, ($v1)
/* 1F6864 801DE8E4 3C01800F */  lui   $at, 0x800f
/* 1F6868 801DE8E8 000D7080 */  sll   $t6, $t5, 2
/* 1F686C 801DE8EC 002E0821 */  addu  $at, $at, $t6
/* 1F6870 801DE8F0 E420AC20 */  swc1  $f0, -0x53e0($at)
/* 1F6874 801DE8F4 8C780000 */  lw    $t8, ($v1)
/* 1F6878 801DE8F8 3C01800F */  lui   $at, 0x800f
/* 1F687C 801DE8FC 00184080 */  sll   $t0, $t8, 2
/* 1F6880 801DE900 00280821 */  addu  $at, $at, $t0
/* 1F6884 801DE904 E420AA60 */  swc1  $f0, -0x55a0($at)
/* 1F6888 801DE908 8C690000 */  lw    $t1, ($v1)
/* 1F688C 801DE90C 3C01800F */  lui   $at, 0x800f
/* 1F6890 801DE910 00095080 */  sll   $t2, $t1, 2
/* 1F6894 801DE914 002A0821 */  addu  $at, $at, $t2
/* 1F6898 801DE918 E420A8A0 */  swc1  $f0, -0x5760($at)
/* 1F689C 801DE91C 8C6F0000 */  lw    $t7, ($v1)
/* 1F68A0 801DE920 3C014140 */  li    $at, 0x41400000 # 12.000000
/* 1F68A4 801DE924 44815000 */  mtc1  $at, $f10
/* 1F68A8 801DE928 3C01800E */  lui   $at, 0x800e
/* 1F68AC 801DE92C 000FC880 */  sll   $t9, $t7, 2
/* 1F68B0 801DE930 00390821 */  addu  $at, $at, $t9
/* 1F68B4 801DE934 E42A3210 */  swc1  $f10, 0x3210($at)
/* 1F68B8 801DE938 8C700000 */  lw    $s0, ($v1)
/* 1F68BC 801DE93C 3C0143C8 */  li    $at, 0x43C80000 # 400.000000
/* 1F68C0 801DE940 44813000 */  mtc1  $at, $f6
/* 1F68C4 801DE944 00108080 */  sll   $s0, $s0, 2
/* 1F68C8 801DE948 02506021 */  addu  $t4, $s2, $s0
/* 1F68CC 801DE94C 8D8D0000 */  lw    $t5, ($t4)
/* 1F68D0 801DE950 00505821 */  addu  $t3, $v0, $s0
/* 1F68D4 801DE954 C5720000 */  lwc1  $f18, ($t3)
/* 1F68D8 801DE958 000D7080 */  sll   $t6, $t5, 2
/* 1F68DC 801DE95C 004EC021 */  addu  $t8, $v0, $t6
/* 1F68E0 801DE960 C7040000 */  lwc1  $f4, ($t8)
/* 1F68E4 801DE964 46062400 */  add.s $f16, $f4, $f6
/* 1F68E8 801DE968 4610903C */  c.lt.s $f18, $f16
/* 1F68EC 801DE96C 00000000 */  nop   
/* 1F68F0 801DE970 45020017 */  bc1fl .L801DE9D0_ovl13
/* 1F68F4 801DE974 02706021 */   addu  $t4, $s3, $s0
.L801DE978_ovl13:
/* 1F68F8 801DE978 0C002DAF */  jal   func_8000B6BC
/* 1F68FC 801DE97C 24040001 */   li    $a0, 1
/* 1F6900 801DE980 8E280000 */  lw    $t0, ($s1)
/* 1F6904 801DE984 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1F6908 801DE988 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1F690C 801DE98C 8D100000 */  lw    $s0, ($t0)
/* 1F6910 801DE990 3C0143C8 */  li    $at, 0x43C80000 # 400.000000
/* 1F6914 801DE994 44812000 */  mtc1  $at, $f4
/* 1F6918 801DE998 00108080 */  sll   $s0, $s0, 2
/* 1F691C 801DE99C 02505021 */  addu  $t2, $s2, $s0
/* 1F6920 801DE9A0 8D4F0000 */  lw    $t7, ($t2)
/* 1F6924 801DE9A4 00504821 */  addu  $t1, $v0, $s0
/* 1F6928 801DE9A8 C5280000 */  lwc1  $f8, ($t1)
/* 1F692C 801DE9AC 000FC880 */  sll   $t9, $t7, 2
/* 1F6930 801DE9B0 00595821 */  addu  $t3, $v0, $t9
/* 1F6934 801DE9B4 C56A0000 */  lwc1  $f10, ($t3)
/* 1F6938 801DE9B8 46045180 */  add.s $f6, $f10, $f4
/* 1F693C 801DE9BC 4606403C */  c.lt.s $f8, $f6
/* 1F6940 801DE9C0 00000000 */  nop   
/* 1F6944 801DE9C4 4501FFEC */  bc1t  .L801DE978_ovl13
/* 1F6948 801DE9C8 00000000 */   nop   
/* 1F694C 801DE9CC 02706021 */  addu  $t4, $s3, $s0
.L801DE9D0_ovl13:
/* 1F6950 801DE9D0 8D8D0000 */  lw    $t5, ($t4)
/* 1F6954 801DE9D4 3C07800E */  lui   $a3, %hi(D_800E3750) # $a3, 0x800e
/* 1F6958 801DE9D8 24E73750 */  addiu $a3, %lo(D_800E3750) # addiu $a3, $a3, 0x3750
/* 1F695C 801DE9DC 8DAE0004 */  lw    $t6, 4($t5)
/* 1F6960 801DE9E0 3C01800E */  lui   $at, 0x800e
/* 1F6964 801DE9E4 3C05800E */  lui   $a1, %hi(D_800E5F90) # $a1, 0x800e
/* 1F6968 801DE9E8 E5D4001C */  swc1  $f20, 0x1c($t6)
/* 1F696C 801DE9EC 8E230000 */  lw    $v1, ($s1)
/* 1F6970 801DE9F0 24A55F90 */  addiu $a1, %lo(D_800E5F90) # addiu $a1, $a1, 0x5f90
/* 1F6974 801DE9F4 3C06800E */  lui   $a2, %hi(D_800E6BD0) # $a2, 0x800e
/* 1F6978 801DE9F8 8C780000 */  lw    $t8, ($v1)
/* 1F697C 801DE9FC 24C66BD0 */  addiu $a2, %lo(D_800E6BD0) # addiu $a2, $a2, 0x6bd0
/* 1F6980 801DEA00 24040003 */  li    $a0, 3
/* 1F6984 801DEA04 00184080 */  sll   $t0, $t8, 2
/* 1F6988 801DEA08 00E84821 */  addu  $t1, $a3, $t0
/* 1F698C 801DEA0C E5340000 */  swc1  $f20, ($t1)
/* 1F6990 801DEA10 8C700000 */  lw    $s0, ($v1)
/* 1F6994 801DEA14 8FAB003C */  lw    $t3, 0x3c($sp)
/* 1F6998 801DEA18 3C18800E */  lui   $t8, %hi(D_800E6A10) # $t8, 0x800e
/* 1F699C 801DEA1C 00108080 */  sll   $s0, $s0, 2
/* 1F69A0 801DEA20 00F05021 */  addu  $t2, $a3, $s0
/* 1F69A4 801DEA24 C5520000 */  lwc1  $f18, ($t2)
/* 1F69A8 801DEA28 00300821 */  addu  $at, $at, $s0
/* 1F69AC 801DEA2C 27186A10 */  addiu $t8, %lo(D_800E6A10) # addiu $t8, $t8, 0x6a10
/* 1F69B0 801DEA30 E4323210 */  swc1  $f18, 0x3210($at)
/* 1F69B4 801DEA34 8C6F0000 */  lw    $t7, ($v1)
/* 1F69B8 801DEA38 3C01801E */  lui   $at, %hi(D_801E5D08) # $at, 0x801e
/* 1F69BC 801DEA3C C4305D08 */  lwc1  $f16, %lo(D_801E5D08)($at)
/* 1F69C0 801DEA40 3C01800E */  lui   $at, 0x800e
/* 1F69C4 801DEA44 000FC880 */  sll   $t9, $t7, 2
/* 1F69C8 801DEA48 00390821 */  addu  $at, $at, $t9
/* 1F69CC 801DEA4C E4303C90 */  swc1  $f16, 0x3c90($at)
/* 1F69D0 801DEA50 8D6C0080 */  lw    $t4, 0x80($t3)
/* 1F69D4 801DEA54 E5940010 */  swc1  $f20, 0x10($t4)
/* 1F69D8 801DEA58 8E230000 */  lw    $v1, ($s1)
/* 1F69DC 801DEA5C 8C6D0000 */  lw    $t5, ($v1)
/* 1F69E0 801DEA60 000D7080 */  sll   $t6, $t5, 2
/* 1F69E4 801DEA64 01D81021 */  addu  $v0, $t6, $t8
/* 1F69E8 801DEA68 C44A0000 */  lwc1  $f10, ($v0)
/* 1F69EC 801DEA6C 46005107 */  neg.s $f4, $f10
/* 1F69F0 801DEA70 E4440000 */  swc1  $f4, ($v0)
/* 1F69F4 801DEA74 8C700000 */  lw    $s0, ($v1)
/* 1F69F8 801DEA78 00108080 */  sll   $s0, $s0, 2
/* 1F69FC 801DEA7C 02504021 */  addu  $t0, $s2, $s0
/* 1F6A00 801DEA80 8D090000 */  lw    $t1, ($t0)
/* 1F6A04 801DEA84 00B05821 */  addu  $t3, $a1, $s0
/* 1F6A08 801DEA88 00095080 */  sll   $t2, $t1, 2
/* 1F6A0C 801DEA8C 00AA7821 */  addu  $t7, $a1, $t2
/* 1F6A10 801DEA90 8DF90000 */  lw    $t9, ($t7)
/* 1F6A14 801DEA94 AD790000 */  sw    $t9, ($t3)
/* 1F6A18 801DEA98 8C700000 */  lw    $s0, ($v1)
/* 1F6A1C 801DEA9C 00108080 */  sll   $s0, $s0, 2
/* 1F6A20 801DEAA0 02506021 */  addu  $t4, $s2, $s0
/* 1F6A24 801DEAA4 8D8D0000 */  lw    $t5, ($t4)
/* 1F6A28 801DEAA8 00D04021 */  addu  $t0, $a2, $s0
/* 1F6A2C 801DEAAC 000D7080 */  sll   $t6, $t5, 2
/* 1F6A30 801DEAB0 00CEC021 */  addu  $t8, $a2, $t6
/* 1F6A34 801DEAB4 C7080000 */  lwc1  $f8, ($t8)
/* 1F6A38 801DEAB8 0C006291 */  jal   random_soft_s32_range
/* 1F6A3C 801DEABC E5080000 */   swc1  $f8, ($t0)
/* 1F6A40 801DEAC0 8E290000 */  lw    $t1, ($s1)
/* 1F6A44 801DEAC4 3C01800E */  lui   $at, 0x800e
/* 1F6A48 801DEAC8 0002C880 */  sll   $t9, $v0, 2
/* 1F6A4C 801DEACC 8D300000 */  lw    $s0, ($t1)
/* 1F6A50 801DEAD0 3C0A800E */  lui   $t2, %hi(D_800E5F90) # $t2, 0x800e
/* 1F6A54 801DEAD4 3C0F800E */  lui   $t7, %hi(D_800E6BD0) # $t7, 0x800e
/* 1F6A58 801DEAD8 00108080 */  sll   $s0, $s0, 2
/* 1F6A5C 801DEADC 00300821 */  addu  $at, $at, $s0
/* 1F6A60 801DEAE0 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 1F6A64 801DEAE4 3C01801E */  lui   $at, 0x801e
/* 1F6A68 801DEAE8 00390821 */  addu  $at, $at, $t9
/* 1F6A6C 801DEAEC C4325BB8 */  lwc1  $f18, 0x5bb8($at)
/* 1F6A70 801DEAF0 25EF6BD0 */  addiu $t7, %lo(D_800E6BD0) # addiu $t7, $t7, 0x6bd0
/* 1F6A74 801DEAF4 254A5F90 */  addiu $t2, %lo(D_800E5F90) # addiu $t2, $t2, 0x5f90
/* 1F6A78 801DEAF8 46123402 */  mul.s $f16, $f6, $f18
/* 1F6A7C 801DEAFC 020A2021 */  addu  $a0, $s0, $t2
/* 1F6A80 801DEB00 020F2821 */  addu  $a1, $s0, $t7
/* 1F6A84 801DEB04 44068000 */  mfc1  $a2, $f16
/* 1F6A88 801DEB08 0C03E65D */  jal   func_800F9974_ovl13
/* 1F6A8C 801DEB0C 00000000 */   nop   
/* 1F6A90 801DEB10 8E2B0000 */  lw    $t3, ($s1)
/* 1F6A94 801DEB14 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1F6A98 801DEB18 44811000 */  mtc1  $at, $f2
/* 1F6A9C 801DEB1C 8D700000 */  lw    $s0, ($t3)
/* 1F6AA0 801DEB20 3C01800E */  lui   $at, 0x800e
/* 1F6AA4 801DEB24 4602A03C */  c.lt.s $f20, $f2
/* 1F6AA8 801DEB28 00108080 */  sll   $s0, $s0, 2
/* 1F6AAC 801DEB2C 00300821 */  addu  $at, $at, $s0
/* 1F6AB0 801DEB30 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 1F6AB4 801DEB34 3C01801E */  lui   $at, %hi(D_801E5D0C) # $at, 0x801e
/* 1F6AB8 801DEB38 C4245D0C */  lwc1  $f4, %lo(D_801E5D0C)($at)
/* 1F6ABC 801DEB3C 02706021 */  addu  $t4, $s3, $s0
/* 1F6AC0 801DEB40 8D8D0000 */  lw    $t5, ($t4)
/* 1F6AC4 801DEB44 46045202 */  mul.s $f8, $f10, $f4
/* 1F6AC8 801DEB48 3C01801E */  lui   $at, %hi(D_801E5D10) # $at, 0x801e
/* 1F6ACC 801DEB4C 8DAE0004 */  lw    $t6, 4($t5)
/* 1F6AD0 801DEB50 4600A006 */  mov.s $f0, $f20
/* 1F6AD4 801DEB54 E5C80034 */  swc1  $f8, 0x34($t6)
/* 1F6AD8 801DEB58 8E380000 */  lw    $t8, ($s1)
/* 1F6ADC 801DEB5C C4265D10 */  lwc1  $f6, %lo(D_801E5D10)($at)
/* 1F6AE0 801DEB60 8F080000 */  lw    $t0, ($t8)
/* 1F6AE4 801DEB64 00084880 */  sll   $t1, $t0, 2
/* 1F6AE8 801DEB68 02695021 */  addu  $t2, $s3, $t1
/* 1F6AEC 801DEB6C 8D4F0000 */  lw    $t7, ($t2)
/* 1F6AF0 801DEB70 8DF90008 */  lw    $t9, 8($t7)
/* 1F6AF4 801DEB74 45000011 */  bc1f  .L801DEBBC_ovl13
/* 1F6AF8 801DEB78 E7260030 */   swc1  $f6, 0x30($t9)
/* 1F6AFC 801DEB7C 8FAB003C */  lw    $t3, 0x3c($sp)
.L801DEB80_ovl13:
/* 1F6B00 801DEB80 24040001 */  li    $a0, 1
/* 1F6B04 801DEB84 8D6C0080 */  lw    $t4, 0x80($t3)
/* 1F6B08 801DEB88 E5800010 */  swc1  $f0, 0x10($t4)
/* 1F6B0C 801DEB8C 0C002DAF */  jal   func_8000B6BC
/* 1F6B10 801DEB90 E7A00034 */   swc1  $f0, 0x34($sp)
/* 1F6B14 801DEB94 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1F6B18 801DEB98 44811000 */  mtc1  $at, $f2
/* 1F6B1C 801DEB9C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F6B20 801DEBA0 44819000 */  mtc1  $at, $f18
/* 1F6B24 801DEBA4 C7A00034 */  lwc1  $f0, 0x34($sp)
/* 1F6B28 801DEBA8 46120000 */  add.s $f0, $f0, $f18
/* 1F6B2C 801DEBAC 4602003C */  c.lt.s $f0, $f2
/* 1F6B30 801DEBB0 00000000 */  nop   
/* 1F6B34 801DEBB4 4503FFF2 */  bc1tl .L801DEB80_ovl13
/* 1F6B38 801DEBB8 8FAB003C */   lw    $t3, 0x3c($sp)
.L801DEBBC_ovl13:
/* 1F6B3C 801DEBBC 8FAD003C */  lw    $t5, 0x3c($sp)
/* 1F6B40 801DEBC0 3C040001 */  lui   $a0, (0x00010419 >> 16) # lui $a0, 1
/* 1F6B44 801DEBC4 34840419 */  ori   $a0, (0x00010419 & 0xFFFF) # ori $a0, $a0, 0x419
/* 1F6B48 801DEBC8 8DAE0080 */  lw    $t6, 0x80($t5)
/* 1F6B4C 801DEBCC 0C02A806 */  jal   func_800AA018_ovl13
/* 1F6B50 801DEBD0 E5C20010 */   swc1  $f2, 0x10($t6)
/* 1F6B54 801DEBD4 8E230000 */  lw    $v1, ($s1)
/* 1F6B58 801DEBD8 3C02800E */  lui   $v0, %hi(D_800E6690) # $v0, 0x800e
/* 1F6B5C 801DEBDC 24426690 */  addiu $v0, %lo(D_800E6690) # addiu $v0, $v0, 0x6690
/* 1F6B60 801DEBE0 8C780000 */  lw    $t8, ($v1)
/* 1F6B64 801DEBE4 3C01800E */  lui   $at, 0x800e
/* 1F6B68 801DEBE8 24040187 */  li    $a0, 391
/* 1F6B6C 801DEBEC 00184080 */  sll   $t0, $t8, 2
/* 1F6B70 801DEBF0 00484821 */  addu  $t1, $v0, $t0
/* 1F6B74 801DEBF4 E5340000 */  swc1  $f20, ($t1)
/* 1F6B78 801DEBF8 8C700000 */  lw    $s0, ($v1)
/* 1F6B7C 801DEBFC 00108080 */  sll   $s0, $s0, 2
/* 1F6B80 801DEC00 00505021 */  addu  $t2, $v0, $s0
/* 1F6B84 801DEC04 C5500000 */  lwc1  $f16, ($t2)
/* 1F6B88 801DEC08 00300821 */  addu  $at, $at, $s0
/* 1F6B8C 801DEC0C E43064D0 */  swc1  $f16, 0x64d0($at)
/* 1F6B90 801DEC10 8C6F0000 */  lw    $t7, ($v1)
/* 1F6B94 801DEC14 3C01801E */  lui   $at, %hi(D_801E5D14) # $at, 0x801e
/* 1F6B98 801DEC18 C42A5D14 */  lwc1  $f10, %lo(D_801E5D14)($at)
/* 1F6B9C 801DEC1C 3C01800E */  lui   $at, 0x800e
/* 1F6BA0 801DEC20 000FC880 */  sll   $t9, $t7, 2
/* 1F6BA4 801DEC24 00390821 */  addu  $at, $at, $t9
/* 1F6BA8 801DEC28 E42A6850 */  swc1  $f10, 0x6850($at)
/* 1F6BAC 801DEC2C 8C6B0000 */  lw    $t3, ($v1)
/* 1F6BB0 801DEC30 3C01C140 */  li    $at, 0xC1400000 # -12.000000
/* 1F6BB4 801DEC34 44812000 */  mtc1  $at, $f4
/* 1F6BB8 801DEC38 3C01800E */  lui   $at, 0x800e
/* 1F6BBC 801DEC3C 000B6080 */  sll   $t4, $t3, 2
/* 1F6BC0 801DEC40 002C0821 */  addu  $at, $at, $t4
/* 1F6BC4 801DEC44 E4243210 */  swc1  $f4, 0x3210($at)
/* 1F6BC8 801DEC48 8C6D0000 */  lw    $t5, ($v1)
/* 1F6BCC 801DEC4C 3C01800E */  lui   $at, 0x800e
/* 1F6BD0 801DEC50 000D7080 */  sll   $t6, $t5, 2
/* 1F6BD4 801DEC54 002E0821 */  addu  $at, $at, $t6
/* 1F6BD8 801DEC58 0C029D9E */  jal   func_800A7678
/* 1F6BDC 801DEC5C E4343750 */   swc1  $f20, 0x3750($at)
/* 1F6BE0 801DEC60 8E380000 */  lw    $t8, ($s1)
/* 1F6BE4 801DEC64 3C08800F */  lui   $t0, 0x800f
/* 1F6BE8 801DEC68 8F100000 */  lw    $s0, ($t8)
/* 1F6BEC 801DEC6C 00108080 */  sll   $s0, $s0, 2
/* 1F6BF0 801DEC70 01104021 */  addu  $t0, $t0, $s0
/* 1F6BF4 801DEC74 8D088920 */  lw    $t0, -0x76e0($t0)
/* 1F6BF8 801DEC78 1500000B */  bnez  $t0, .L801DECA8_ovl13
/* 1F6BFC 801DEC7C 00000000 */   nop   
.L801DEC80_ovl13:
/* 1F6C00 801DEC80 0C002DAF */  jal   func_8000B6BC
/* 1F6C04 801DEC84 24040001 */   li    $a0, 1
/* 1F6C08 801DEC88 8E290000 */  lw    $t1, ($s1)
/* 1F6C0C 801DEC8C 3C0A800F */  lui   $t2, 0x800f
/* 1F6C10 801DEC90 8D300000 */  lw    $s0, ($t1)
/* 1F6C14 801DEC94 00108080 */  sll   $s0, $s0, 2
/* 1F6C18 801DEC98 01505021 */  addu  $t2, $t2, $s0
/* 1F6C1C 801DEC9C 8D4A8920 */  lw    $t2, -0x76e0($t2)
/* 1F6C20 801DECA0 1140FFF7 */  beqz  $t2, .L801DEC80_ovl13
/* 1F6C24 801DECA4 00000000 */   nop   
.L801DECA8_ovl13:
/* 1F6C28 801DECA8 3C01800F */  lui   $at, 0x800f
/* 1F6C2C 801DECAC 00300821 */  addu  $at, $at, $s0
/* 1F6C30 801DECB0 240F0001 */  li    $t7, 1
/* 1F6C34 801DECB4 3C040001 */  lui   $a0, (0x0001041A >> 16) # lui $a0, 1
/* 1F6C38 801DECB8 AC2F9FE0 */  sw    $t7, -0x6020($at)
/* 1F6C3C 801DECBC 3484041A */  ori   $a0, (0x0001041A & 0xFFFF) # ori $a0, $a0, 0x41a
/* 1F6C40 801DECC0 0C02A7E6 */  jal   func_800A9F98_ovl13
/* 1F6C44 801DECC4 3C054080 */   lui   $a1, 0x4080
/* 1F6C48 801DECC8 8E2B0000 */  lw    $t3, ($s1)
/* 1F6C4C 801DECCC 3C19801E */  lui   $t9, %hi(func_801DF588) # $t9, 0x801e
/* 1F6C50 801DECD0 3C01800E */  lui   $at, 0x800e
/* 1F6C54 801DECD4 8D6C0000 */  lw    $t4, ($t3)
/* 1F6C58 801DECD8 2739F588 */  addiu $t9, %lo(func_801DF588) # addiu $t9, $t9, -0xa78
/* 1F6C5C 801DECDC 000C6880 */  sll   $t5, $t4, 2
/* 1F6C60 801DECE0 002D0821 */  addu  $at, $at, $t5
/* 1F6C64 801DECE4 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F6C68 801DECE8 AC39F310 */   sw    $t9, -0xcf0($at)
/* 1F6C6C 801DECEC 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F6C70 801DECF0 24040001 */   li    $a0, 1
/* 1F6C74 801DECF4 0C029D9E */  jal   func_800A7678
/* 1F6C78 801DECF8 24040185 */   li    $a0, 389
/* 1F6C7C 801DECFC 00002025 */  move  $a0, $zero
/* 1F6C80 801DED00 0C02ED1A */  jal   func_800BB468_ovl13
/* 1F6C84 801DED04 00002825 */   move  $a1, $zero
/* 1F6C88 801DED08 2404001C */  li    $a0, 28
/* 1F6C8C 801DED0C 0C06B30D */  jal   func_801ACC34_ovl13
/* 1F6C90 801DED10 00002825 */   move  $a1, $zero
/* 1F6C94 801DED14 2404001C */  li    $a0, 28
/* 1F6C98 801DED18 0C06B30D */  jal   func_801ACC34_ovl13
/* 1F6C9C 801DED1C 24050001 */   li    $a1, 1
/* 1F6CA0 801DED20 8E230000 */  lw    $v1, ($s1)
/* 1F6CA4 801DED24 3C0E800F */  lui   $t6, 0x800f
/* 1F6CA8 801DED28 8C700000 */  lw    $s0, ($v1)
/* 1F6CAC 801DED2C 00108080 */  sll   $s0, $s0, 2
/* 1F6CB0 801DED30 01D07021 */  addu  $t6, $t6, $s0
/* 1F6CB4 801DED34 8DCE9FE0 */  lw    $t6, -0x6020($t6)
/* 1F6CB8 801DED38 51C0000C */  beql  $t6, $zero, .L801DED6C_ovl13
/* 1F6CBC 801DED3C 3C0141A0 */   lui   $at, 0x41a0
.L801DED40_ovl13:
/* 1F6CC0 801DED40 0C002DAF */  jal   func_8000B6BC
/* 1F6CC4 801DED44 24040001 */   li    $a0, 1
/* 1F6CC8 801DED48 8E230000 */  lw    $v1, ($s1)
/* 1F6CCC 801DED4C 3C18800F */  lui   $t8, 0x800f
/* 1F6CD0 801DED50 8C700000 */  lw    $s0, ($v1)
/* 1F6CD4 801DED54 00108080 */  sll   $s0, $s0, 2
/* 1F6CD8 801DED58 0310C021 */  addu  $t8, $t8, $s0
/* 1F6CDC 801DED5C 8F189FE0 */  lw    $t8, -0x6020($t8)
/* 1F6CE0 801DED60 1700FFF7 */  bnez  $t8, .L801DED40_ovl13
/* 1F6CE4 801DED64 00000000 */   nop   
/* 1F6CE8 801DED68 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
.L801DED6C_ovl13:
/* 1F6CEC 801DED6C 44810000 */  mtc1  $at, $f0
/* 1F6CF0 801DED70 3C01800F */  lui   $at, 0x800f
/* 1F6CF4 801DED74 00300821 */  addu  $at, $at, $s0
/* 1F6CF8 801DED78 AC208920 */  sw    $zero, -0x76e0($at)
/* 1F6CFC 801DED7C 8C700000 */  lw    $s0, ($v1)
/* 1F6D00 801DED80 3C01800F */  lui   $at, 0x800f
/* 1F6D04 801DED84 24040014 */  li    $a0, 20
/* 1F6D08 801DED88 00108080 */  sll   $s0, $s0, 2
/* 1F6D0C 801DED8C 02704021 */  addu  $t0, $s3, $s0
/* 1F6D10 801DED90 8D090000 */  lw    $t1, ($t0)
/* 1F6D14 801DED94 00300821 */  addu  $at, $at, $s0
/* 1F6D18 801DED98 8D2A0004 */  lw    $t2, 4($t1)
/* 1F6D1C 801DED9C C5480034 */  lwc1  $f8, 0x34($t2)
/* 1F6D20 801DEDA0 46004183 */  div.s $f6, $f8, $f0
/* 1F6D24 801DEDA4 46003487 */  neg.s $f18, $f6
/* 1F6D28 801DEDA8 E432AC20 */  swc1  $f18, -0x53e0($at)
/* 1F6D2C 801DEDAC 8C700000 */  lw    $s0, ($v1)
/* 1F6D30 801DEDB0 3C01800F */  lui   $at, 0x800f
/* 1F6D34 801DEDB4 00108080 */  sll   $s0, $s0, 2
/* 1F6D38 801DEDB8 02707821 */  addu  $t7, $s3, $s0
/* 1F6D3C 801DEDBC 8DEB0000 */  lw    $t3, ($t7)
/* 1F6D40 801DEDC0 00300821 */  addu  $at, $at, $s0
/* 1F6D44 801DEDC4 8D6C0008 */  lw    $t4, 8($t3)
/* 1F6D48 801DEDC8 C5900030 */  lwc1  $f16, 0x30($t4)
/* 1F6D4C 801DEDCC 46008283 */  div.s $f10, $f16, $f0
/* 1F6D50 801DEDD0 46005107 */  neg.s $f4, $f10
/* 1F6D54 801DEDD4 E424ADE0 */  swc1  $f4, -0x5220($at)
/* 1F6D58 801DEDD8 8C790000 */  lw    $t9, ($v1)
/* 1F6D5C 801DEDDC 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 1F6D60 801DEDE0 44814000 */  mtc1  $at, $f8
/* 1F6D64 801DEDE4 3C01800E */  lui   $at, 0x800e
/* 1F6D68 801DEDE8 00196880 */  sll   $t5, $t9, 2
/* 1F6D6C 801DEDEC 002D0821 */  addu  $at, $at, $t5
/* 1F6D70 801DEDF0 E4283210 */  swc1  $f8, 0x3210($at)
/* 1F6D74 801DEDF4 8C700000 */  lw    $s0, ($v1)
/* 1F6D78 801DEDF8 3C01800E */  lui   $at, 0x800e
/* 1F6D7C 801DEDFC 00108080 */  sll   $s0, $s0, 2
/* 1F6D80 801DEE00 00300821 */  addu  $at, $at, $s0
/* 1F6D84 801DEE04 C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 1F6D88 801DEE08 3C01801E */  lui   $at, %hi(D_801E5D18) # $at, 0x801e
/* 1F6D8C 801DEE0C C4325D18 */  lwc1  $f18, %lo(D_801E5D18)($at)
/* 1F6D90 801DEE10 3C01800E */  lui   $at, 0x800e
/* 1F6D94 801DEE14 00300821 */  addu  $at, $at, $s0
/* 1F6D98 801DEE18 46123402 */  mul.s $f16, $f6, $f18
/* 1F6D9C 801DEE1C E4306690 */  swc1  $f16, 0x6690($at)
/* 1F6DA0 801DEE20 8C6E0000 */  lw    $t6, ($v1)
/* 1F6DA4 801DEE24 3C01801E */  lui   $at, %hi(D_801E5D1C) # $at, 0x801e
/* 1F6DA8 801DEE28 C42A5D1C */  lwc1  $f10, %lo(D_801E5D1C)($at)
/* 1F6DAC 801DEE2C 3C01800E */  lui   $at, 0x800e
/* 1F6DB0 801DEE30 000EC080 */  sll   $t8, $t6, 2
/* 1F6DB4 801DEE34 00380821 */  addu  $at, $at, $t8
/* 1F6DB8 801DEE38 0C002DAF */  jal   func_8000B6BC
/* 1F6DBC 801DEE3C E42A3750 */   swc1  $f10, 0x3750($at)
/* 1F6DC0 801DEE40 8E230000 */  lw    $v1, ($s1)
/* 1F6DC4 801DEE44 3C01800F */  lui   $at, 0x800f
/* 1F6DC8 801DEE48 8C680000 */  lw    $t0, ($v1)
/* 1F6DCC 801DEE4C 00084880 */  sll   $t1, $t0, 2
/* 1F6DD0 801DEE50 00290821 */  addu  $at, $at, $t1
/* 1F6DD4 801DEE54 E434ADE0 */  swc1  $f20, -0x5220($at)
/* 1F6DD8 801DEE58 8C700000 */  lw    $s0, ($v1)
/* 1F6DDC 801DEE5C 3C01800F */  lui   $at, 0x800f
/* 1F6DE0 801DEE60 00108080 */  sll   $s0, $s0, 2
/* 1F6DE4 801DEE64 00300821 */  addu  $at, $at, $s0
/* 1F6DE8 801DEE68 C420ADE0 */  lwc1  $f0, -0x5220($at)
/* 1F6DEC 801DEE6C 3C01800F */  lui   $at, 0x800f
/* 1F6DF0 801DEE70 00300821 */  addu  $at, $at, $s0
/* 1F6DF4 801DEE74 E420AC20 */  swc1  $f0, -0x53e0($at)
/* 1F6DF8 801DEE78 8C6A0000 */  lw    $t2, ($v1)
/* 1F6DFC 801DEE7C 3C01800E */  lui   $at, 0x800e
/* 1F6E00 801DEE80 000A7880 */  sll   $t7, $t2, 2
/* 1F6E04 801DEE84 026F5821 */  addu  $t3, $s3, $t7
/* 1F6E08 801DEE88 8D6C0000 */  lw    $t4, ($t3)
/* 1F6E0C 801DEE8C 8D990004 */  lw    $t9, 4($t4)
/* 1F6E10 801DEE90 E7200034 */  swc1  $f0, 0x34($t9)
/* 1F6E14 801DEE94 8E2D0000 */  lw    $t5, ($s1)
/* 1F6E18 801DEE98 8DAE0000 */  lw    $t6, ($t5)
/* 1F6E1C 801DEE9C 000EC080 */  sll   $t8, $t6, 2
/* 1F6E20 801DEEA0 02784021 */  addu  $t0, $s3, $t8
/* 1F6E24 801DEEA4 8D090000 */  lw    $t1, ($t0)
/* 1F6E28 801DEEA8 8D2A0008 */  lw    $t2, 8($t1)
/* 1F6E2C 801DEEAC E5400030 */  swc1  $f0, 0x30($t2)
/* 1F6E30 801DEEB0 8E230000 */  lw    $v1, ($s1)
/* 1F6E34 801DEEB4 8C700000 */  lw    $s0, ($v1)
/* 1F6E38 801DEEB8 00108080 */  sll   $s0, $s0, 2
/* 1F6E3C 801DEEBC 00300821 */  addu  $at, $at, $s0
/* 1F6E40 801DEEC0 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1F6E44 801DEEC4 3C01C080 */  li    $at, 0xC0800000 # -4.000000
/* 1F6E48 801DEEC8 44814000 */  mtc1  $at, $f8
/* 1F6E4C 801DEECC 3C01800E */  lui   $at, 0x800e
/* 1F6E50 801DEED0 00300821 */  addu  $at, $at, $s0
/* 1F6E54 801DEED4 46082182 */  mul.s $f6, $f4, $f8
/* 1F6E58 801DEED8 E42664D0 */  swc1  $f6, 0x64d0($at)
/* 1F6E5C 801DEEDC 8C6F0000 */  lw    $t7, ($v1)
/* 1F6E60 801DEEE0 3C01800E */  lui   $at, 0x800e
/* 1F6E64 801DEEE4 000F5880 */  sll   $t3, $t7, 2
/* 1F6E68 801DEEE8 002B0821 */  addu  $at, $at, $t3
/* 1F6E6C 801DEEEC E4343210 */  swc1  $f20, 0x3210($at)
/* 1F6E70 801DEEF0 8C6C0000 */  lw    $t4, ($v1)
/* 1F6E74 801DEEF4 3C01800E */  lui   $at, 0x800e
/* 1F6E78 801DEEF8 000CC880 */  sll   $t9, $t4, 2
/* 1F6E7C 801DEEFC 00390821 */  addu  $at, $at, $t9
/* 1F6E80 801DEF00 E4346690 */  swc1  $f20, 0x6690($at)
/* 1F6E84 801DEF04 8C6D0000 */  lw    $t5, ($v1)
/* 1F6E88 801DEF08 3C01800E */  lui   $at, 0x800e
/* 1F6E8C 801DEF0C 000D7080 */  sll   $t6, $t5, 2
/* 1F6E90 801DEF10 002E0821 */  addu  $at, $at, $t6
/* 1F6E94 801DEF14 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F6E98 801DEF18 E4343750 */   swc1  $f20, 0x3750($at)
/* 1F6E9C 801DEF1C 3C040001 */  lui   $a0, (0x00010427 >> 16) # lui $a0, 1
/* 1F6EA0 801DEF20 0C02A806 */  jal   func_800AA018_ovl13
/* 1F6EA4 801DEF24 34840427 */   ori   $a0, (0x00010427 & 0xFFFF) # ori $a0, $a0, 0x427
/* 1F6EA8 801DEF28 8E380000 */  lw    $t8, ($s1)
/* 1F6EAC 801DEF2C 8F080000 */  lw    $t0, ($t8)
/* 1F6EB0 801DEF30 00084880 */  sll   $t1, $t0, 2
/* 1F6EB4 801DEF34 02495021 */  addu  $t2, $s2, $t1
/* 1F6EB8 801DEF38 0C06769C */  jal   func_8019DA70_ovl13
/* 1F6EBC 801DEF3C 8D440000 */   lw    $a0, ($t2)
/* 1F6EC0 801DEF40 44809000 */  mtc1  $zero, $f18
/* 1F6EC4 801DEF44 00000000 */  nop   
/* 1F6EC8 801DEF48 4612003C */  c.lt.s $f0, $f18
/* 1F6ECC 801DEF4C 00000000 */  nop   
/* 1F6ED0 801DEF50 4502000A */  bc1fl .L801DEF7C_ovl13
/* 1F6ED4 801DEF54 8E2D0000 */   lw    $t5, ($s1)
/* 1F6ED8 801DEF58 8E2F0000 */  lw    $t7, ($s1)
/* 1F6EDC 801DEF5C 8DEB0000 */  lw    $t3, ($t7)
/* 1F6EE0 801DEF60 000B6080 */  sll   $t4, $t3, 2
/* 1F6EE4 801DEF64 024CC821 */  addu  $t9, $s2, $t4
/* 1F6EE8 801DEF68 0C06769C */  jal   func_8019DA70_ovl13
/* 1F6EEC 801DEF6C 8F240000 */   lw    $a0, ($t9)
/* 1F6EF0 801DEF70 10000008 */  b     .L801DEF94_ovl13
/* 1F6EF4 801DEF74 46000087 */   neg.s $f2, $f0
/* 1F6EF8 801DEF78 8E2D0000 */  lw    $t5, ($s1)
.L801DEF7C_ovl13:
/* 1F6EFC 801DEF7C 8DAE0000 */  lw    $t6, ($t5)
/* 1F6F00 801DEF80 000EC080 */  sll   $t8, $t6, 2
/* 1F6F04 801DEF84 02584021 */  addu  $t0, $s2, $t8
/* 1F6F08 801DEF88 0C06769C */  jal   func_8019DA70_ovl13
/* 1F6F0C 801DEF8C 8D040000 */   lw    $a0, ($t0)
/* 1F6F10 801DEF90 46000086 */  mov.s $f2, $f0
.L801DEF94_ovl13:
/* 1F6F14 801DEF94 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 1F6F18 801DEF98 44818000 */  mtc1  $at, $f16
/* 1F6F1C 801DEF9C 00000000 */  nop   
/* 1F6F20 801DEFA0 4610103C */  c.lt.s $f2, $f16
/* 1F6F24 801DEFA4 00000000 */  nop   
/* 1F6F28 801DEFA8 45020026 */  bc1fl .L801DF044_ovl13
/* 1F6F2C 801DEFAC 8E2F0000 */   lw    $t7, ($s1)
.L801DEFB0_ovl13:
/* 1F6F30 801DEFB0 0C002DAF */  jal   func_8000B6BC
/* 1F6F34 801DEFB4 24040001 */   li    $a0, 1
/* 1F6F38 801DEFB8 8E290000 */  lw    $t1, ($s1)
/* 1F6F3C 801DEFBC 8D2A0000 */  lw    $t2, ($t1)
/* 1F6F40 801DEFC0 000A7880 */  sll   $t7, $t2, 2
/* 1F6F44 801DEFC4 024F5821 */  addu  $t3, $s2, $t7
/* 1F6F48 801DEFC8 0C06769C */  jal   func_8019DA70_ovl13
/* 1F6F4C 801DEFCC 8D640000 */   lw    $a0, ($t3)
/* 1F6F50 801DEFD0 44805000 */  mtc1  $zero, $f10
/* 1F6F54 801DEFD4 00000000 */  nop   
/* 1F6F58 801DEFD8 460A003C */  c.lt.s $f0, $f10
/* 1F6F5C 801DEFDC 00000000 */  nop   
/* 1F6F60 801DEFE0 4502000A */  bc1fl .L801DF00C_ovl13
/* 1F6F64 801DEFE4 8E380000 */   lw    $t8, ($s1)
/* 1F6F68 801DEFE8 8E2C0000 */  lw    $t4, ($s1)
/* 1F6F6C 801DEFEC 8D990000 */  lw    $t9, ($t4)
/* 1F6F70 801DEFF0 00196880 */  sll   $t5, $t9, 2
/* 1F6F74 801DEFF4 024D7021 */  addu  $t6, $s2, $t5
/* 1F6F78 801DEFF8 0C06769C */  jal   func_8019DA70_ovl13
/* 1F6F7C 801DEFFC 8DC40000 */   lw    $a0, ($t6)
/* 1F6F80 801DF000 10000008 */  b     .L801DF024_ovl13
/* 1F6F84 801DF004 46000087 */   neg.s $f2, $f0
/* 1F6F88 801DF008 8E380000 */  lw    $t8, ($s1)
.L801DF00C_ovl13:
/* 1F6F8C 801DF00C 8F080000 */  lw    $t0, ($t8)
/* 1F6F90 801DF010 00084880 */  sll   $t1, $t0, 2
/* 1F6F94 801DF014 02495021 */  addu  $t2, $s2, $t1
/* 1F6F98 801DF018 0C06769C */  jal   func_8019DA70_ovl13
/* 1F6F9C 801DF01C 8D440000 */   lw    $a0, ($t2)
/* 1F6FA0 801DF020 46000086 */  mov.s $f2, $f0
.L801DF024_ovl13:
/* 1F6FA4 801DF024 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 1F6FA8 801DF028 44812000 */  mtc1  $at, $f4
/* 1F6FAC 801DF02C 00000000 */  nop   
/* 1F6FB0 801DF030 4604103C */  c.lt.s $f2, $f4
/* 1F6FB4 801DF034 00000000 */  nop   
/* 1F6FB8 801DF038 4501FFDD */  bc1t  .L801DEFB0_ovl13
/* 1F6FBC 801DF03C 00000000 */   nop   
/* 1F6FC0 801DF040 8E2F0000 */  lw    $t7, ($s1)
.L801DF044_ovl13:
/* 1F6FC4 801DF044 3C01800E */  lui   $at, 0x800e
/* 1F6FC8 801DF048 2404000A */  li    $a0, 10
/* 1F6FCC 801DF04C 8DF00000 */  lw    $s0, ($t7)
/* 1F6FD0 801DF050 00108080 */  sll   $s0, $s0, 2
/* 1F6FD4 801DF054 00300821 */  addu  $at, $at, $s0
/* 1F6FD8 801DF058 C42864D0 */  lwc1  $f8, 0x64d0($at)
/* 1F6FDC 801DF05C 3C01801E */  lui   $at, %hi(D_801E5D20) # $at, 0x801e
/* 1F6FE0 801DF060 C4265D20 */  lwc1  $f6, %lo(D_801E5D20)($at)
/* 1F6FE4 801DF064 3C01800E */  lui   $at, 0x800e
/* 1F6FE8 801DF068 00300821 */  addu  $at, $at, $s0
/* 1F6FEC 801DF06C 46064482 */  mul.s $f18, $f8, $f6
/* 1F6FF0 801DF070 0C002DAF */  jal   func_8000B6BC
/* 1F6FF4 801DF074 E4326690 */   swc1  $f18, 0x6690($at)
/* 1F6FF8 801DF078 0C02CD48 */  jal   func_800B3520_ovl13
/* 1F6FFC 801DF07C 00000000 */   nop   
/* 1F7000 801DF080 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F7004 801DF084 00000000 */   nop   
/* 1F7008 801DF088 8E2B0000 */  lw    $t3, ($s1)
/* 1F700C 801DF08C 3C01800F */  lui   $at, 0x800f
/* 1F7010 801DF090 8D6C0000 */  lw    $t4, ($t3)
/* 1F7014 801DF094 000CC880 */  sll   $t9, $t4, 2
/* 1F7018 801DF098 02796821 */  addu  $t5, $s3, $t9
/* 1F701C 801DF09C 8DAE0000 */  lw    $t6, ($t5)
/* 1F7020 801DF0A0 8DD80004 */  lw    $t8, 4($t6)
/* 1F7024 801DF0A4 E7140024 */  swc1  $f20, 0x24($t8)
/* 1F7028 801DF0A8 8E280000 */  lw    $t0, ($s1)
/* 1F702C 801DF0AC 8D090000 */  lw    $t1, ($t0)
/* 1F7030 801DF0B0 00095080 */  sll   $t2, $t1, 2
/* 1F7034 801DF0B4 026A7821 */  addu  $t7, $s3, $t2
/* 1F7038 801DF0B8 8DEB0000 */  lw    $t3, ($t7)
/* 1F703C 801DF0BC 8D620004 */  lw    $v0, 4($t3)
/* 1F7040 801DF0C0 C4420024 */  lwc1  $f2, 0x24($v0)
/* 1F7044 801DF0C4 E4420020 */  swc1  $f2, 0x20($v0)
/* 1F7048 801DF0C8 8E2C0000 */  lw    $t4, ($s1)
/* 1F704C 801DF0CC 8D990000 */  lw    $t9, ($t4)
/* 1F7050 801DF0D0 00196880 */  sll   $t5, $t9, 2
/* 1F7054 801DF0D4 026D7021 */  addu  $t6, $s3, $t5
/* 1F7058 801DF0D8 8DD80000 */  lw    $t8, ($t6)
/* 1F705C 801DF0DC 8F080004 */  lw    $t0, 4($t8)
/* 1F7060 801DF0E0 E502001C */  swc1  $f2, 0x1c($t0)
/* 1F7064 801DF0E4 8E290000 */  lw    $t1, ($s1)
/* 1F7068 801DF0E8 8D2A0000 */  lw    $t2, ($t1)
/* 1F706C 801DF0EC 000A7880 */  sll   $t7, $t2, 2
/* 1F7070 801DF0F0 026F5821 */  addu  $t3, $s3, $t7
/* 1F7074 801DF0F4 8D6C0000 */  lw    $t4, ($t3)
/* 1F7078 801DF0F8 8D990008 */  lw    $t9, 8($t4)
/* 1F707C 801DF0FC E7340024 */  swc1  $f20, 0x24($t9)
/* 1F7080 801DF100 8E2D0000 */  lw    $t5, ($s1)
/* 1F7084 801DF104 8DAE0000 */  lw    $t6, ($t5)
/* 1F7088 801DF108 000EC080 */  sll   $t8, $t6, 2
/* 1F708C 801DF10C 02784021 */  addu  $t0, $s3, $t8
/* 1F7090 801DF110 8D090000 */  lw    $t1, ($t0)
/* 1F7094 801DF114 8D240008 */  lw    $a0, 8($t1)
/* 1F7098 801DF118 C4820024 */  lwc1  $f2, 0x24($a0)
/* 1F709C 801DF11C E4820020 */  swc1  $f2, 0x20($a0)
/* 1F70A0 801DF120 8E2A0000 */  lw    $t2, ($s1)
/* 1F70A4 801DF124 8D4F0000 */  lw    $t7, ($t2)
/* 1F70A8 801DF128 000F5880 */  sll   $t3, $t7, 2
/* 1F70AC 801DF12C 026B6021 */  addu  $t4, $s3, $t3
/* 1F70B0 801DF130 8D990000 */  lw    $t9, ($t4)
/* 1F70B4 801DF134 8F2D0008 */  lw    $t5, 8($t9)
/* 1F70B8 801DF138 E5A2001C */  swc1  $f2, 0x1c($t5)
/* 1F70BC 801DF13C 8E2E0000 */  lw    $t6, ($s1)
/* 1F70C0 801DF140 8DD80000 */  lw    $t8, ($t6)
/* 1F70C4 801DF144 00184080 */  sll   $t0, $t8, 2
/* 1F70C8 801DF148 02684821 */  addu  $t1, $s3, $t0
/* 1F70CC 801DF14C 8D2A0000 */  lw    $t2, ($t1)
/* 1F70D0 801DF150 8D4F0004 */  lw    $t7, 4($t2)
/* 1F70D4 801DF154 E5F40038 */  swc1  $f20, 0x38($t7)
/* 1F70D8 801DF158 8E2B0000 */  lw    $t3, ($s1)
/* 1F70DC 801DF15C 8D6C0000 */  lw    $t4, ($t3)
/* 1F70E0 801DF160 000CC880 */  sll   $t9, $t4, 2
/* 1F70E4 801DF164 02796821 */  addu  $t5, $s3, $t9
/* 1F70E8 801DF168 8DAE0000 */  lw    $t6, ($t5)
/* 1F70EC 801DF16C 8DC20004 */  lw    $v0, 4($t6)
/* 1F70F0 801DF170 C4420038 */  lwc1  $f2, 0x38($v0)
/* 1F70F4 801DF174 E4420034 */  swc1  $f2, 0x34($v0)
/* 1F70F8 801DF178 8E380000 */  lw    $t8, ($s1)
/* 1F70FC 801DF17C 8F080000 */  lw    $t0, ($t8)
/* 1F7100 801DF180 00084880 */  sll   $t1, $t0, 2
/* 1F7104 801DF184 02695021 */  addu  $t2, $s3, $t1
/* 1F7108 801DF188 8D4F0000 */  lw    $t7, ($t2)
/* 1F710C 801DF18C 8DEB0004 */  lw    $t3, 4($t7)
/* 1F7110 801DF190 E5620030 */  swc1  $f2, 0x30($t3)
/* 1F7114 801DF194 8E2C0000 */  lw    $t4, ($s1)
/* 1F7118 801DF198 8D990000 */  lw    $t9, ($t4)
/* 1F711C 801DF19C 00196880 */  sll   $t5, $t9, 2
/* 1F7120 801DF1A0 026D7021 */  addu  $t6, $s3, $t5
/* 1F7124 801DF1A4 8DD80000 */  lw    $t8, ($t6)
/* 1F7128 801DF1A8 8F080008 */  lw    $t0, 8($t8)
/* 1F712C 801DF1AC E5140038 */  swc1  $f20, 0x38($t0)
/* 1F7130 801DF1B0 8E290000 */  lw    $t1, ($s1)
/* 1F7134 801DF1B4 8D2A0000 */  lw    $t2, ($t1)
/* 1F7138 801DF1B8 000A7880 */  sll   $t7, $t2, 2
/* 1F713C 801DF1BC 026F5821 */  addu  $t3, $s3, $t7
/* 1F7140 801DF1C0 8D6C0000 */  lw    $t4, ($t3)
/* 1F7144 801DF1C4 8D840008 */  lw    $a0, 8($t4)
/* 1F7148 801DF1C8 C4820038 */  lwc1  $f2, 0x38($a0)
/* 1F714C 801DF1CC E4820034 */  swc1  $f2, 0x34($a0)
/* 1F7150 801DF1D0 8E390000 */  lw    $t9, ($s1)
/* 1F7154 801DF1D4 8F2D0000 */  lw    $t5, ($t9)
/* 1F7158 801DF1D8 000D7080 */  sll   $t6, $t5, 2
/* 1F715C 801DF1DC 026EC021 */  addu  $t8, $s3, $t6
/* 1F7160 801DF1E0 8F080000 */  lw    $t0, ($t8)
/* 1F7164 801DF1E4 8D090008 */  lw    $t1, 8($t0)
/* 1F7168 801DF1E8 24080001 */  li    $t0, 1
/* 1F716C 801DF1EC E5220030 */  swc1  $f2, 0x30($t1)
/* 1F7170 801DF1F0 8E230000 */  lw    $v1, ($s1)
/* 1F7174 801DF1F4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1F7178 801DF1F8 8FB10020 */  lw    $s1, 0x20($sp)
/* 1F717C 801DF1FC 8C6A0000 */  lw    $t2, ($v1)
/* 1F7180 801DF200 8FB30028 */  lw    $s3, 0x28($sp)
/* 1F7184 801DF204 8FB20024 */  lw    $s2, 0x24($sp)
/* 1F7188 801DF208 000A7880 */  sll   $t7, $t2, 2
/* 1F718C 801DF20C 002F0821 */  addu  $at, $at, $t7
/* 1F7190 801DF210 E434AFA0 */  swc1  $f20, -0x5060($at)
/* 1F7194 801DF214 8C700000 */  lw    $s0, ($v1)
/* 1F7198 801DF218 3C01800F */  lui   $at, 0x800f
/* 1F719C 801DF21C D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1F71A0 801DF220 00108080 */  sll   $s0, $s0, 2
/* 1F71A4 801DF224 00300821 */  addu  $at, $at, $s0
/* 1F71A8 801DF228 C420AFA0 */  lwc1  $f0, -0x5060($at)
/* 1F71AC 801DF22C 3C01800F */  lui   $at, 0x800f
/* 1F71B0 801DF230 00300821 */  addu  $at, $at, $s0
/* 1F71B4 801DF234 E420ADE0 */  swc1  $f0, -0x5220($at)
/* 1F71B8 801DF238 8C6B0000 */  lw    $t3, ($v1)
/* 1F71BC 801DF23C 3C01800F */  lui   $at, 0x800f
/* 1F71C0 801DF240 8FB0001C */  lw    $s0, 0x1c($sp)
/* 1F71C4 801DF244 000B6080 */  sll   $t4, $t3, 2
/* 1F71C8 801DF248 002C0821 */  addu  $at, $at, $t4
/* 1F71CC 801DF24C E420AC20 */  swc1  $f0, -0x53e0($at)
/* 1F71D0 801DF250 8C790000 */  lw    $t9, ($v1)
/* 1F71D4 801DF254 3C01800F */  lui   $at, 0x800f
/* 1F71D8 801DF258 00196880 */  sll   $t5, $t9, 2
/* 1F71DC 801DF25C 002D0821 */  addu  $at, $at, $t5
/* 1F71E0 801DF260 E420AA60 */  swc1  $f0, -0x55a0($at)
/* 1F71E4 801DF264 8C6E0000 */  lw    $t6, ($v1)
/* 1F71E8 801DF268 3C01800F */  lui   $at, 0x800f
/* 1F71EC 801DF26C 000EC080 */  sll   $t8, $t6, 2
/* 1F71F0 801DF270 00380821 */  addu  $at, $at, $t8
/* 1F71F4 801DF274 E420A8A0 */  swc1  $f0, -0x5760($at)
/* 1F71F8 801DF278 8C690000 */  lw    $t1, ($v1)
/* 1F71FC 801DF27C 3C01800E */  lui   $at, 0x800e
/* 1F7200 801DF280 27BD0040 */  addiu $sp, $sp, 0x40
/* 1F7204 801DF284 00095080 */  sll   $t2, $t1, 2
/* 1F7208 801DF288 002A0821 */  addu  $at, $at, $t2
/* 1F720C 801DF28C 03E00008 */  jr    $ra
/* 1F7210 801DF290 AC28DC50 */   sw    $t0, -0x23b0($at)

/* 1F7214 801DF294 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F7218 801DF298 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1F721C 801DF29C 8D070000 */  lw    $a3, ($t0)
/* 1F7220 801DF2A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F7224 801DF2A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F7228 801DF2A8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F722C 801DF2AC 8CE60000 */  lw    $a2, ($a3)
/* 1F7230 801DF2B0 3C0E800F */  lui   $t6, %hi(D_800EA8A0) # $t6, 0x800f
/* 1F7234 801DF2B4 25CEA8A0 */  addiu $t6, %lo(D_800EA8A0) # addiu $t6, $t6, -0x5760
/* 1F7238 801DF2B8 00063080 */  sll   $a2, $a2, 2
/* 1F723C 801DF2BC 3C01800F */  lui   $at, 0x800f
/* 1F7240 801DF2C0 00260821 */  addu  $at, $at, $a2
/* 1F7244 801DF2C4 00CE2821 */  addu  $a1, $a2, $t6
/* 1F7248 801DF2C8 C4A40000 */  lwc1  $f4, ($a1)
/* 1F724C 801DF2CC C426AA60 */  lwc1  $f6, -0x55a0($at)
/* 1F7250 801DF2D0 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 1F7254 801DF2D4 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 1F7258 801DF2D8 46062000 */  add.s $f0, $f4, $f6
/* 1F725C 801DF2DC 3C01800F */  lui   $at, 0x800f
/* 1F7260 801DF2E0 E4A00000 */  swc1  $f0, ($a1)
/* 1F7264 801DF2E4 8CEF0000 */  lw    $t7, ($a3)
/* 1F7268 801DF2E8 000FC080 */  sll   $t8, $t7, 2
/* 1F726C 801DF2EC 0138C821 */  addu  $t9, $t1, $t8
/* 1F7270 801DF2F0 8F2A0000 */  lw    $t2, ($t9)
/* 1F7274 801DF2F4 8D420004 */  lw    $v0, 4($t2)
/* 1F7278 801DF2F8 C448001C */  lwc1  $f8, 0x1c($v0)
/* 1F727C 801DF2FC 46004280 */  add.s $f10, $f8, $f0
/* 1F7280 801DF300 E44A001C */  swc1  $f10, 0x1c($v0)
/* 1F7284 801DF304 8D0B0000 */  lw    $t3, ($t0)
/* 1F7288 801DF308 8D660000 */  lw    $a2, ($t3)
/* 1F728C 801DF30C 00063080 */  sll   $a2, $a2, 2
/* 1F7290 801DF310 01266021 */  addu  $t4, $t1, $a2
/* 1F7294 801DF314 8D8D0000 */  lw    $t5, ($t4)
/* 1F7298 801DF318 00260821 */  addu  $at, $at, $a2
/* 1F729C 801DF31C C432AC20 */  lwc1  $f18, -0x53e0($at)
/* 1F72A0 801DF320 8DA20004 */  lw    $v0, 4($t5)
/* 1F72A4 801DF324 3C01800F */  lui   $at, 0x800f
/* 1F72A8 801DF328 C4500034 */  lwc1  $f16, 0x34($v0)
/* 1F72AC 801DF32C 46128100 */  add.s $f4, $f16, $f18
/* 1F72B0 801DF330 E4440034 */  swc1  $f4, 0x34($v0)
/* 1F72B4 801DF334 8D0E0000 */  lw    $t6, ($t0)
/* 1F72B8 801DF338 8DC60000 */  lw    $a2, ($t6)
/* 1F72BC 801DF33C 00063080 */  sll   $a2, $a2, 2
/* 1F72C0 801DF340 01267821 */  addu  $t7, $t1, $a2
/* 1F72C4 801DF344 8DF80000 */  lw    $t8, ($t7)
/* 1F72C8 801DF348 00260821 */  addu  $at, $at, $a2
/* 1F72CC 801DF34C C428ADE0 */  lwc1  $f8, -0x5220($at)
/* 1F72D0 801DF350 8F030008 */  lw    $v1, 8($t8)
/* 1F72D4 801DF354 3C01800F */  lui   $at, 0x800f
/* 1F72D8 801DF358 C4660030 */  lwc1  $f6, 0x30($v1)
/* 1F72DC 801DF35C 46083280 */  add.s $f10, $f6, $f8
/* 1F72E0 801DF360 E46A0030 */  swc1  $f10, 0x30($v1)
/* 1F72E4 801DF364 8D190000 */  lw    $t9, ($t0)
/* 1F72E8 801DF368 8F260000 */  lw    $a2, ($t9)
/* 1F72EC 801DF36C 00063080 */  sll   $a2, $a2, 2
/* 1F72F0 801DF370 01265021 */  addu  $t2, $t1, $a2
/* 1F72F4 801DF374 8D4B0000 */  lw    $t3, ($t2)
/* 1F72F8 801DF378 00260821 */  addu  $at, $at, $a2
/* 1F72FC 801DF37C C432AFA0 */  lwc1  $f18, -0x5060($at)
/* 1F7300 801DF380 8D630008 */  lw    $v1, 8($t3)
/* 1F7304 801DF384 3C01800F */  lui   $at, 0x800f
/* 1F7308 801DF388 C4700038 */  lwc1  $f16, 0x38($v1)
/* 1F730C 801DF38C 46128100 */  add.s $f4, $f16, $f18
/* 1F7310 801DF390 E4640038 */  swc1  $f4, 0x38($v1)
/* 1F7314 801DF394 8D0C0000 */  lw    $t4, ($t0)
/* 1F7318 801DF398 8FA40018 */  lw    $a0, 0x18($sp)
/* 1F731C 801DF39C 8D8D0000 */  lw    $t5, ($t4)
/* 1F7320 801DF3A0 000D7080 */  sll   $t6, $t5, 2
/* 1F7324 801DF3A4 002E0821 */  addu  $at, $at, $t6
/* 1F7328 801DF3A8 0C06835D */  jal   func_801A0D74_ovl13
/* 1F732C 801DF3AC AC208920 */   sw    $zero, -0x76e0($at)
/* 1F7330 801DF3B0 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F7334 801DF3B4 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1F7338 801DF3B8 8D070000 */  lw    $a3, ($t0)
/* 1F733C 801DF3BC 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 1F7340 801DF3C0 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 1F7344 801DF3C4 8CE60000 */  lw    $a2, ($a3)
/* 1F7348 801DF3C8 44803000 */  mtc1  $zero, $f6
/* 1F734C 801DF3CC 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 1F7350 801DF3D0 00063080 */  sll   $a2, $a2, 2
/* 1F7354 801DF3D4 01267821 */  addu  $t7, $t1, $a2
/* 1F7358 801DF3D8 8DE20000 */  lw    $v0, ($t7)
/* 1F735C 801DF3DC 44814000 */  mtc1  $at, $f8
/* 1F7360 801DF3E0 8C580004 */  lw    $t8, 4($v0)
/* 1F7364 801DF3E4 C702001C */  lwc1  $f2, 0x1c($t8)
/* 1F7368 801DF3E8 4606103C */  c.lt.s $f2, $f6
/* 1F736C 801DF3EC 00000000 */  nop   
/* 1F7370 801DF3F0 45020004 */  bc1fl .L801DF404_ovl13
/* 1F7374 801DF3F4 46001006 */   mov.s $f0, $f2
/* 1F7378 801DF3F8 10000002 */  b     .L801DF404_ovl13
/* 1F737C 801DF3FC 46001007 */   neg.s $f0, $f2
/* 1F7380 801DF400 46001006 */  mov.s $f0, $f2
.L801DF404_ovl13:
/* 1F7384 801DF404 4608003C */  c.lt.s $f0, $f8
/* 1F7388 801DF408 00000000 */  nop   
/* 1F738C 801DF40C 4500000C */  bc1f  .L801DF440_ovl13
/* 1F7390 801DF410 00000000 */   nop   
/* 1F7394 801DF414 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F7398 801DF418 8C450010 */  lw    $a1, 0x10($v0)
/* 1F739C 801DF41C 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F73A0 801DF420 8C460018 */   lw    $a2, 0x18($v0)
/* 1F73A4 801DF424 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F73A8 801DF428 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1F73AC 801DF42C 8D070000 */  lw    $a3, ($t0)
/* 1F73B0 801DF430 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 1F73B4 801DF434 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 1F73B8 801DF438 8CE60000 */  lw    $a2, ($a3)
/* 1F73BC 801DF43C 00063080 */  sll   $a2, $a2, 2
.L801DF440_ovl13:
/* 1F73C0 801DF440 3C19800F */  lui   $t9, 0x800f
/* 1F73C4 801DF444 0326C821 */  addu  $t9, $t9, $a2
/* 1F73C8 801DF448 8F3983E0 */  lw    $t9, -0x7c20($t9)
/* 1F73CC 801DF44C 24010001 */  li    $at, 1
/* 1F73D0 801DF450 3C02800E */  lui   $v0, 0x800e
/* 1F73D4 801DF454 17210046 */  bne   $t9, $at, .L801DF570_ovl13
/* 1F73D8 801DF458 00461021 */   addu  $v0, $v0, $a2
/* 1F73DC 801DF45C 8C42FF50 */  lw    $v0, -0xb0($v0)
/* 1F73E0 801DF460 3C010001 */  lui   $at, (0x00010425 >> 16) # lui $at, 1
/* 1F73E4 801DF464 34210425 */  ori   $at, (0x00010425 & 0xFFFF) # ori $at, $at, 0x425
/* 1F73E8 801DF468 10410004 */  beq   $v0, $at, .L801DF47C_ovl13
/* 1F73EC 801DF46C 3C04800E */   lui   $a0, 0x800e
/* 1F73F0 801DF470 3C010001 */  lui   $at, (0x00010424 >> 16) # lui $at, 1
/* 1F73F4 801DF474 34210424 */  ori   $at, (0x00010424 & 0xFFFF) # ori $at, $at, 0x424
/* 1F73F8 801DF478 14410032 */  bne   $v0, $at, .L801DF544_ovl13
.L801DF47C_ovl13:
/* 1F73FC 801DF47C 01265021 */   addu  $t2, $t1, $a2
/* 1F7400 801DF480 8D420000 */  lw    $v0, ($t2)
/* 1F7404 801DF484 44802000 */  mtc1  $zero, $f4
/* 1F7408 801DF488 8C4B000C */  lw    $t3, 0xc($v0)
/* 1F740C 801DF48C 8C4C0008 */  lw    $t4, 8($v0)
/* 1F7410 801DF490 C56A0030 */  lwc1  $f10, 0x30($t3)
/* 1F7414 801DF494 E58A0030 */  swc1  $f10, 0x30($t4)
/* 1F7418 801DF498 8D0D0000 */  lw    $t5, ($t0)
/* 1F741C 801DF49C 8DAE0000 */  lw    $t6, ($t5)
/* 1F7420 801DF4A0 000E7880 */  sll   $t7, $t6, 2
/* 1F7424 801DF4A4 012FC021 */  addu  $t8, $t1, $t7
/* 1F7428 801DF4A8 8F020000 */  lw    $v0, ($t8)
/* 1F742C 801DF4AC 8C59000C */  lw    $t9, 0xc($v0)
/* 1F7430 801DF4B0 8C4A0004 */  lw    $t2, 4($v0)
/* 1F7434 801DF4B4 C7300034 */  lwc1  $f16, 0x34($t9)
/* 1F7438 801DF4B8 E5500034 */  swc1  $f16, 0x34($t2)
/* 1F743C 801DF4BC 8D0B0000 */  lw    $t3, ($t0)
/* 1F7440 801DF4C0 8D6C0000 */  lw    $t4, ($t3)
/* 1F7444 801DF4C4 000C6880 */  sll   $t5, $t4, 2
/* 1F7448 801DF4C8 012D7021 */  addu  $t6, $t1, $t5
/* 1F744C 801DF4CC 8DC20000 */  lw    $v0, ($t6)
/* 1F7450 801DF4D0 8C4F000C */  lw    $t7, 0xc($v0)
/* 1F7454 801DF4D4 8C580008 */  lw    $t8, 8($v0)
/* 1F7458 801DF4D8 C5F20038 */  lwc1  $f18, 0x38($t7)
/* 1F745C 801DF4DC E7120038 */  swc1  $f18, 0x38($t8)
/* 1F7460 801DF4E0 8D190000 */  lw    $t9, ($t0)
/* 1F7464 801DF4E4 8F2A0000 */  lw    $t2, ($t9)
/* 1F7468 801DF4E8 000A5880 */  sll   $t3, $t2, 2
/* 1F746C 801DF4EC 012B6021 */  addu  $t4, $t1, $t3
/* 1F7470 801DF4F0 8D8D0000 */  lw    $t5, ($t4)
/* 1F7474 801DF4F4 8DAE000C */  lw    $t6, 0xc($t5)
/* 1F7478 801DF4F8 E5C40038 */  swc1  $f4, 0x38($t6)
/* 1F747C 801DF4FC 8D0F0000 */  lw    $t7, ($t0)
/* 1F7480 801DF500 8DF80000 */  lw    $t8, ($t7)
/* 1F7484 801DF504 0018C880 */  sll   $t9, $t8, 2
/* 1F7488 801DF508 01395021 */  addu  $t2, $t1, $t9
/* 1F748C 801DF50C 8D4B0000 */  lw    $t3, ($t2)
/* 1F7490 801DF510 8D63000C */  lw    $v1, 0xc($t3)
/* 1F7494 801DF514 C4600038 */  lwc1  $f0, 0x38($v1)
/* 1F7498 801DF518 E4600034 */  swc1  $f0, 0x34($v1)
/* 1F749C 801DF51C 8D0C0000 */  lw    $t4, ($t0)
/* 1F74A0 801DF520 8D8D0000 */  lw    $t5, ($t4)
/* 1F74A4 801DF524 000D7080 */  sll   $t6, $t5, 2
/* 1F74A8 801DF528 012E7821 */  addu  $t7, $t1, $t6
/* 1F74AC 801DF52C 8DF80000 */  lw    $t8, ($t7)
/* 1F74B0 801DF530 8F19000C */  lw    $t9, 0xc($t8)
/* 1F74B4 801DF534 E7200030 */  swc1  $f0, 0x30($t9)
/* 1F74B8 801DF538 8D070000 */  lw    $a3, ($t0)
/* 1F74BC 801DF53C 8CE60000 */  lw    $a2, ($a3)
/* 1F74C0 801DF540 00063080 */  sll   $a2, $a2, 2
.L801DF544_ovl13:
/* 1F74C4 801DF544 3C01800E */  lui   $at, 0x800e
/* 1F74C8 801DF548 00260821 */  addu  $at, $at, $a2
/* 1F74CC 801DF54C 240A0007 */  li    $t2, 7
/* 1F74D0 801DF550 AC2ADC50 */  sw    $t2, -0x23b0($at)
/* 1F74D4 801DF554 8CEB0000 */  lw    $t3, ($a3)
/* 1F74D8 801DF558 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F74DC 801DF55C 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F74E0 801DF560 000B6080 */  sll   $t4, $t3, 2
/* 1F74E4 801DF564 008C2021 */  addu  $a0, $a0, $t4
/* 1F74E8 801DF568 0C02C7B2 */  jal   func_800B1EC8
/* 1F74EC 801DF56C 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801DF570_ovl13:
/* 1F74F0 801DF570 0C078E56 */  jal   func_801E3958_ovl13
/* 1F74F4 801DF574 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F74F8 801DF578 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F74FC 801DF57C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F7500 801DF580 03E00008 */  jr    $ra
/* 1F7504 801DF584 00000000 */   nop   

/* 1F7508 801DF588 44866000 */  mtc1  $a2, $f12
/* 1F750C 801DF58C 14A0000E */  bnez  $a1, .L801DF5C8_ovl13
/* 1F7510 801DF590 AFA40000 */   sw    $a0, ($sp)
/* 1F7514 801DF594 4600610D */  trunc.w.s $f4, $f12
/* 1F7518 801DF598 24010001 */  li    $at, 1
/* 1F751C 801DF59C 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1F7520 801DF5A0 440F2000 */  mfc1  $t7, $f4
/* 1F7524 801DF5A4 00000000 */  nop   
/* 1F7528 801DF5A8 15E10007 */  bne   $t7, $at, .L801DF5C8_ovl13
/* 1F752C 801DF5AC 00000000 */   nop   
/* 1F7530 801DF5B0 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1F7534 801DF5B4 3C01800F */  lui   $at, 0x800f
/* 1F7538 801DF5B8 8F190000 */  lw    $t9, ($t8)
/* 1F753C 801DF5BC 00194080 */  sll   $t0, $t9, 2
/* 1F7540 801DF5C0 00280821 */  addu  $at, $at, $t0
/* 1F7544 801DF5C4 AC209FE0 */  sw    $zero, -0x6020($at)
.L801DF5C8_ovl13:
/* 1F7548 801DF5C8 03E00008 */  jr    $ra
/* 1F754C 801DF5CC 00000000 */   nop   

/* 1F7550 801DF5D0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 1F7554 801DF5D4 AFB00014 */  sw    $s0, 0x14($sp)
/* 1F7558 801DF5D8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1F755C 801DF5DC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1F7560 801DF5E0 8E050000 */  lw    $a1, ($s0)
/* 1F7564 801DF5E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1F7568 801DF5E8 AFB10018 */  sw    $s1, 0x18($sp)
/* 1F756C 801DF5EC AFA40070 */  sw    $a0, 0x70($sp)
/* 1F7570 801DF5F0 8CAF0000 */  lw    $t7, ($a1)
/* 1F7574 801DF5F4 3C01800E */  lui   $at, 0x800e
/* 1F7578 801DF5F8 240E0006 */  li    $t6, 6
/* 1F757C 801DF5FC 000FC080 */  sll   $t8, $t7, 2
/* 1F7580 801DF600 00380821 */  addu  $at, $at, $t8
/* 1F7584 801DF604 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1F7588 801DF608 8CA80000 */  lw    $t0, ($a1)
/* 1F758C 801DF60C 3C11800E */  lui   $s1, %hi(D_800E1B50) # $s1, 0x800e
/* 1F7590 801DF610 26311B50 */  addiu $s1, %lo(D_800E1B50) # addiu $s1, $s1, 0x1b50
/* 1F7594 801DF614 00084880 */  sll   $t1, $t0, 2
/* 1F7598 801DF618 02295021 */  addu  $t2, $s1, $t1
/* 1F759C 801DF61C 8D4B0000 */  lw    $t3, ($t2)
/* 1F75A0 801DF620 3C19801E */  lui   $t9, %hi(D_801D93CC) # $t9, 0x801e
/* 1F75A4 801DF624 273993CC */  addiu $t9, %lo(D_801D93CC) # addiu $t9, $t9, -0x6c34
/* 1F75A8 801DF628 AD79008C */  sw    $t9, 0x8c($t3)
/* 1F75AC 801DF62C 8E0C0000 */  lw    $t4, ($s0)
/* 1F75B0 801DF630 3C04801E */  lui   $a0, %hi(D_801DAAF0) # $a0, 0x801e
/* 1F75B4 801DF634 3C01800E */  lui   $at, 0x800e
/* 1F75B8 801DF638 8D8D0000 */  lw    $t5, ($t4)
/* 1F75BC 801DF63C 2484AAF0 */  addiu $a0, %lo(D_801DAAF0) # addiu $a0, $a0, -0x5510
/* 1F75C0 801DF640 000D7880 */  sll   $t7, $t5, 2
/* 1F75C4 801DF644 002F0821 */  addu  $at, $at, $t7
/* 1F75C8 801DF648 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F75CC 801DF64C AC240490 */   sw    $a0, 0x490($at)
/* 1F75D0 801DF650 8E180000 */  lw    $t8, ($s0)
/* 1F75D4 801DF654 3C0E801E */  lui   $t6, %hi(D_801DAD8C) # $t6, 0x801e
/* 1F75D8 801DF658 25CEAD8C */  addiu $t6, %lo(D_801DAD8C) # addiu $t6, $t6, -0x5274
/* 1F75DC 801DF65C 8F080000 */  lw    $t0, ($t8)
/* 1F75E0 801DF660 3C01800F */  lui   $at, 0x800f
/* 1F75E4 801DF664 00084880 */  sll   $t1, $t0, 2
/* 1F75E8 801DF668 02295021 */  addu  $t2, $s1, $t1
/* 1F75EC 801DF66C 8D590000 */  lw    $t9, ($t2)
/* 1F75F0 801DF670 AF2E0098 */  sw    $t6, 0x98($t9)
/* 1F75F4 801DF674 8E0B0000 */  lw    $t3, ($s0)
/* 1F75F8 801DF678 8D6C0000 */  lw    $t4, ($t3)
/* 1F75FC 801DF67C 000C6880 */  sll   $t5, $t4, 2
/* 1F7600 801DF680 002D0821 */  addu  $at, $at, $t5
/* 1F7604 801DF684 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F7608 801DF688 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F760C 801DF68C 3C040001 */  lui   $a0, (0x0001042A >> 16) # lui $a0, 1
/* 1F7610 801DF690 0C02A806 */  jal   func_800AA018_ovl13
/* 1F7614 801DF694 3484042A */   ori   $a0, (0x0001042A & 0xFFFF) # ori $a0, $a0, 0x42a
/* 1F7618 801DF698 8E050000 */  lw    $a1, ($s0)
/* 1F761C 801DF69C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1F7620 801DF6A0 44818000 */  mtc1  $at, $f16
/* 1F7624 801DF6A4 8CAF0000 */  lw    $t7, ($a1)
/* 1F7628 801DF6A8 3C01800E */  lui   $at, 0x800e
/* 1F762C 801DF6AC 3C11800F */  lui   $s1, %hi(D_800EBBE0) # $s1, 0x800f
/* 1F7630 801DF6B0 000FC080 */  sll   $t8, $t7, 2
/* 1F7634 801DF6B4 00380821 */  addu  $at, $at, $t8
/* 1F7638 801DF6B8 E4303C90 */  swc1  $f16, 0x3c90($at)
/* 1F763C 801DF6BC 8CA30000 */  lw    $v1, ($a1)
/* 1F7640 801DF6C0 2631BBE0 */  addiu $s1, %lo(D_800EBBE0) # addiu $s1, $s1, -0x4420
/* 1F7644 801DF6C4 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1F7648 801DF6C8 00031880 */  sll   $v1, $v1, 2
/* 1F764C 801DF6CC 02234821 */  addu  $t1, $s1, $v1
/* 1F7650 801DF6D0 8D2A0000 */  lw    $t2, ($t1)
/* 1F7654 801DF6D4 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1F7658 801DF6D8 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1F765C 801DF6DC 000A7080 */  sll   $t6, $t2, 2
/* 1F7660 801DF6E0 004EC821 */  addu  $t9, $v0, $t6
/* 1F7664 801DF6E4 C7240000 */  lwc1  $f4, ($t9)
/* 1F7668 801DF6E8 44813000 */  mtc1  $at, $f6
/* 1F766C 801DF6EC 00434021 */  addu  $t0, $v0, $v1
/* 1F7670 801DF6F0 C5000000 */  lwc1  $f0, ($t0)
/* 1F7674 801DF6F4 46062300 */  add.s $f12, $f4, $f6
/* 1F7678 801DF6F8 44809000 */  mtc1  $zero, $f18
/* 1F767C 801DF6FC 3C014210 */  li    $at, 0x42100000 # 36.000000
/* 1F7680 801DF700 44814000 */  mtc1  $at, $f8
/* 1F7684 801DF704 460C0381 */  sub.s $f14, $f0, $f12
/* 1F7688 801DF708 4612703C */  c.lt.s $f14, $f18
/* 1F768C 801DF70C 00000000 */  nop   
/* 1F7690 801DF710 45020004 */  bc1fl .L801DF724_ovl13
/* 1F7694 801DF714 46007086 */   mov.s $f2, $f14
/* 1F7698 801DF718 10000002 */  b     .L801DF724_ovl13
/* 1F769C 801DF71C 46007087 */   neg.s $f2, $f14
/* 1F76A0 801DF720 46007086 */  mov.s $f2, $f14
.L801DF724_ovl13:
/* 1F76A4 801DF724 4602403C */  c.lt.s $f8, $f2
/* 1F76A8 801DF728 00000000 */  nop   
/* 1F76AC 801DF72C 45020067 */  bc1fl .L801DF8CC_ovl13
/* 1F76B0 801DF730 4600603C */   c.lt.s $f12, $f0
/* 1F76B4 801DF734 44805000 */  mtc1  $zero, $f10
/* 1F76B8 801DF738 00005825 */  move  $t3, $zero
/* 1F76BC 801DF73C 3C01801E */  lui   $at, 0x801e
/* 1F76C0 801DF740 460E503C */  c.lt.s $f10, $f14
/* 1F76C4 801DF744 00000000 */  nop   
/* 1F76C8 801DF748 45020003 */  bc1fl .L801DF758_ovl13
/* 1F76CC 801DF74C 448B2000 */   mtc1  $t3, $f4
/* 1F76D0 801DF750 240B0001 */  li    $t3, 1
/* 1F76D4 801DF754 448B2000 */  mtc1  $t3, $f4
.L801DF758_ovl13:
/* 1F76D8 801DF758 00000000 */  nop   
/* 1F76DC 801DF75C 468021A0 */  cvt.s.w $f6, $f4
/* 1F76E0 801DF760 46103202 */  mul.s $f8, $f6, $f16
/* 1F76E4 801DF764 46089032 */  c.eq.s $f18, $f8
/* 1F76E8 801DF768 00000000 */  nop   
/* 1F76EC 801DF76C 45010007 */  bc1t  .L801DF78C_ovl13
/* 1F76F0 801DF770 00000000 */   nop   
/* 1F76F4 801DF774 3C01801E */  lui   $at, %hi(D_801E5D24) # $at, 0x801e
/* 1F76F8 801DF778 C42A5D24 */  lwc1  $f10, %lo(D_801E5D24)($at)
/* 1F76FC 801DF77C 3C01800E */  lui   $at, 0x800e
/* 1F7700 801DF780 00230821 */  addu  $at, $at, $v1
/* 1F7704 801DF784 10000005 */  b     .L801DF79C_ovl13
/* 1F7708 801DF788 E42A3750 */   swc1  $f10, 0x3750($at)
.L801DF78C_ovl13:
/* 1F770C 801DF78C C4245D28 */  lwc1  $f4, 0x5d28($at)
/* 1F7710 801DF790 3C01800E */  lui   $at, 0x800e
/* 1F7714 801DF794 00230821 */  addu  $at, $at, $v1
/* 1F7718 801DF798 E4243750 */  swc1  $f4, 0x3750($at)
.L801DF79C_ovl13:
/* 1F771C 801DF79C 0C002DAF */  jal   func_8000B6BC
/* 1F7720 801DF7A0 2404000A */   li    $a0, 10
/* 1F7724 801DF7A4 8E0C0000 */  lw    $t4, ($s0)
/* 1F7728 801DF7A8 3C0D800E */  lui   $t5, %hi(D_800E2790) # $t5, 0x800e
/* 1F772C 801DF7AC 25AD2790 */  addiu $t5, %lo(D_800E2790) # addiu $t5, $t5, 0x2790
/* 1F7730 801DF7B0 8D830000 */  lw    $v1, ($t4)
/* 1F7734 801DF7B4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1F7738 801DF7B8 44814000 */  mtc1  $at, $f8
/* 1F773C 801DF7BC 00031880 */  sll   $v1, $v1, 2
/* 1F7740 801DF7C0 0223C021 */  addu  $t8, $s1, $v1
/* 1F7744 801DF7C4 8F080000 */  lw    $t0, ($t8)
/* 1F7748 801DF7C8 006D7821 */  addu  $t7, $v1, $t5
/* 1F774C 801DF7CC C5E00000 */  lwc1  $f0, ($t7)
/* 1F7750 801DF7D0 00084880 */  sll   $t1, $t0, 2
/* 1F7754 801DF7D4 012D5021 */  addu  $t2, $t1, $t5
/* 1F7758 801DF7D8 C5460000 */  lwc1  $f6, ($t2)
/* 1F775C 801DF7DC 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 1F7760 801DF7E0 44815000 */  mtc1  $at, $f10
/* 1F7764 801DF7E4 46083300 */  add.s $f12, $f6, $f8
/* 1F7768 801DF7E8 460C003C */  c.lt.s $f0, $f12
/* 1F776C 801DF7EC 00000000 */  nop   
/* 1F7770 801DF7F0 45020005 */  bc1fl .L801DF808_ovl13
/* 1F7774 801DF7F4 460C0081 */   sub.s $f2, $f0, $f12
/* 1F7778 801DF7F8 460C0081 */  sub.s $f2, $f0, $f12
/* 1F777C 801DF7FC 10000002 */  b     .L801DF808_ovl13
/* 1F7780 801DF800 46001087 */   neg.s $f2, $f2
/* 1F7784 801DF804 460C0081 */  sub.s $f2, $f0, $f12
.L801DF808_ovl13:
/* 1F7788 801DF808 4602503C */  c.lt.s $f10, $f2
/* 1F778C 801DF80C 00000000 */  nop   
/* 1F7790 801DF810 45000020 */  bc1f  .L801DF894_ovl13
/* 1F7794 801DF814 00000000 */   nop   
.L801DF818_ovl13:
/* 1F7798 801DF818 0C002DAF */  jal   func_8000B6BC
/* 1F779C 801DF81C 24040001 */   li    $a0, 1
/* 1F77A0 801DF820 8E0E0000 */  lw    $t6, ($s0)
/* 1F77A4 801DF824 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1F77A8 801DF828 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1F77AC 801DF82C 8DC30000 */  lw    $v1, ($t6)
/* 1F77B0 801DF830 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1F77B4 801DF834 44813000 */  mtc1  $at, $f6
/* 1F77B8 801DF838 00031880 */  sll   $v1, $v1, 2
/* 1F77BC 801DF83C 02235821 */  addu  $t3, $s1, $v1
/* 1F77C0 801DF840 8D6C0000 */  lw    $t4, ($t3)
/* 1F77C4 801DF844 0043C821 */  addu  $t9, $v0, $v1
/* 1F77C8 801DF848 C7200000 */  lwc1  $f0, ($t9)
/* 1F77CC 801DF84C 000C7880 */  sll   $t7, $t4, 2
/* 1F77D0 801DF850 004FC021 */  addu  $t8, $v0, $t7
/* 1F77D4 801DF854 C7040000 */  lwc1  $f4, ($t8)
/* 1F77D8 801DF858 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 1F77DC 801DF85C 44814000 */  mtc1  $at, $f8
/* 1F77E0 801DF860 46062300 */  add.s $f12, $f4, $f6
/* 1F77E4 801DF864 460C003C */  c.lt.s $f0, $f12
/* 1F77E8 801DF868 00000000 */  nop   
/* 1F77EC 801DF86C 45020005 */  bc1fl .L801DF884_ovl13
/* 1F77F0 801DF870 460C0081 */   sub.s $f2, $f0, $f12
/* 1F77F4 801DF874 460C0081 */  sub.s $f2, $f0, $f12
/* 1F77F8 801DF878 10000002 */  b     .L801DF884_ovl13
/* 1F77FC 801DF87C 46001087 */   neg.s $f2, $f2
/* 1F7800 801DF880 460C0081 */  sub.s $f2, $f0, $f12
.L801DF884_ovl13:
/* 1F7804 801DF884 4602403C */  c.lt.s $f8, $f2
/* 1F7808 801DF888 00000000 */  nop   
/* 1F780C 801DF88C 4501FFE2 */  bc1t  .L801DF818_ovl13
/* 1F7810 801DF890 00000000 */   nop   
.L801DF894_ovl13:
/* 1F7814 801DF894 3C01800E */  lui   $at, 0x800e
/* 1F7818 801DF898 00230821 */  addu  $at, $at, $v1
/* 1F781C 801DF89C C42A3210 */  lwc1  $f10, 0x3210($at)
/* 1F7820 801DF8A0 3C01801E */  lui   $at, %hi(func_801E5D2C) # $at, 0x801e
/* 1F7824 801DF8A4 C4245D2C */  lwc1  $f4, %lo(func_801E5D2C)($at)
/* 1F7828 801DF8A8 3C01800E */  lui   $at, 0x800e
/* 1F782C 801DF8AC 00230821 */  addu  $at, $at, $v1
/* 1F7830 801DF8B0 46045182 */  mul.s $f6, $f10, $f4
/* 1F7834 801DF8B4 2404000A */  li    $a0, 10
/* 1F7838 801DF8B8 0C002DAF */  jal   func_8000B6BC
/* 1F783C 801DF8BC E4263750 */   swc1  $f6, 0x3750($at)
/* 1F7840 801DF8C0 1000001B */  b     .L801DF930_ovl13
/* 1F7844 801DF8C4 8E050000 */   lw    $a1, ($s0)
/* 1F7848 801DF8C8 4600603C */  c.lt.s $f12, $f0
.L801DF8CC_ovl13:
/* 1F784C 801DF8CC 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F7850 801DF8D0 45020008 */  bc1fl .L801DF8F4_ovl13
/* 1F7854 801DF8D4 44815000 */   mtc1  $at, $f10
/* 1F7858 801DF8D8 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1F785C 801DF8DC 44814000 */  mtc1  $at, $f8
/* 1F7860 801DF8E0 3C01800E */  li    $at, 0x800E0000 # -0.000000
/* 1F7864 801DF8E4 00230821 */  addu  $at, $at, $v1
/* 1F7868 801DF8E8 10000005 */  b     .L801DF900_ovl13
/* 1F786C 801DF8EC E4283210 */   swc1  $f8, 0x3210($at)
/* 1F7870 801DF8F0 44815000 */  mtc1  $at, $f10
.L801DF8F4_ovl13:
/* 1F7874 801DF8F4 3C01800E */  lui   $at, 0x800e
/* 1F7878 801DF8F8 00230821 */  addu  $at, $at, $v1
/* 1F787C 801DF8FC E42A3210 */  swc1  $f10, 0x3210($at)
.L801DF900_ovl13:
/* 1F7880 801DF900 4612703C */  c.lt.s $f14, $f18
/* 1F7884 801DF904 00000000 */  nop   
/* 1F7888 801DF908 45020004 */  bc1fl .L801DF91C_ovl13
/* 1F788C 801DF90C 46007086 */   mov.s $f2, $f14
/* 1F7890 801DF910 10000002 */  b     .L801DF91C_ovl13
/* 1F7894 801DF914 46007087 */   neg.s $f2, $f14
/* 1F7898 801DF918 46007086 */  mov.s $f2, $f14
.L801DF91C_ovl13:
/* 1F789C 801DF91C 4600110D */  trunc.w.s $f4, $f2
/* 1F78A0 801DF920 44042000 */  mfc1  $a0, $f4
/* 1F78A4 801DF924 0C002DAF */  jal   func_8000B6BC
/* 1F78A8 801DF928 00000000 */   nop   
/* 1F78AC 801DF92C 8E050000 */  lw    $a1, ($s0)
.L801DF930_ovl13:
/* 1F78B0 801DF930 44803000 */  mtc1  $zero, $f6
/* 1F78B4 801DF934 3C02800E */  lui   $v0, %hi(D_800E3750) # $v0, 0x800e
/* 1F78B8 801DF938 8CA90000 */  lw    $t1, ($a1)
/* 1F78BC 801DF93C 24423750 */  addiu $v0, %lo(D_800E3750) # addiu $v0, $v0, 0x3750
/* 1F78C0 801DF940 3C01800E */  lui   $at, 0x800e
/* 1F78C4 801DF944 00096880 */  sll   $t5, $t1, 2
/* 1F78C8 801DF948 004D5021 */  addu  $t2, $v0, $t5
/* 1F78CC 801DF94C E5460000 */  swc1  $f6, ($t2)
/* 1F78D0 801DF950 8CA30000 */  lw    $v1, ($a1)
/* 1F78D4 801DF954 00031880 */  sll   $v1, $v1, 2
/* 1F78D8 801DF958 00437021 */  addu  $t6, $v0, $v1
/* 1F78DC 801DF95C C5C80000 */  lwc1  $f8, ($t6)
/* 1F78E0 801DF960 00230821 */  addu  $at, $at, $v1
/* 1F78E4 801DF964 E4283210 */  swc1  $f8, 0x3210($at)
/* 1F78E8 801DF968 8CB90000 */  lw    $t9, ($a1)
/* 1F78EC 801DF96C 3C01801E */  lui   $at, %hi(D_801E5D30) # $at, 0x801e
/* 1F78F0 801DF970 C42A5D30 */  lwc1  $f10, %lo(D_801E5D30)($at)
/* 1F78F4 801DF974 3C01800E */  lui   $at, 0x800e
/* 1F78F8 801DF978 00195880 */  sll   $t3, $t9, 2
/* 1F78FC 801DF97C 002B0821 */  addu  $at, $at, $t3
/* 1F7900 801DF980 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F7904 801DF984 E42A3C90 */   swc1  $f10, 0x3c90($at)
/* 1F7908 801DF988 8E050000 */  lw    $a1, ($s0)
/* 1F790C 801DF98C 44802000 */  mtc1  $zero, $f4
/* 1F7910 801DF990 3C02800F */  lui   $v0, %hi(D_800EA6E0) # $v0, 0x800f
/* 1F7914 801DF994 8CAC0000 */  lw    $t4, ($a1)
/* 1F7918 801DF998 2442A6E0 */  addiu $v0, %lo(D_800EA6E0) # addiu $v0, $v0, -0x5920
/* 1F791C 801DF99C 3C01800F */  lui   $at, 0x800f
/* 1F7920 801DF9A0 000C7880 */  sll   $t7, $t4, 2
/* 1F7924 801DF9A4 004FC021 */  addu  $t8, $v0, $t7
/* 1F7928 801DF9A8 E7040000 */  swc1  $f4, ($t8)
/* 1F792C 801DF9AC 8CA30000 */  lw    $v1, ($a1)
/* 1F7930 801DF9B0 3C0A800E */  lui   $t2, 0x800e
/* 1F7934 801DF9B4 3C040001 */  lui   $a0, (0x0001042B >> 16) # lui $a0, 1
/* 1F7938 801DF9B8 00031880 */  sll   $v1, $v1, 2
/* 1F793C 801DF9BC 00434021 */  addu  $t0, $v0, $v1
/* 1F7940 801DF9C0 C5020000 */  lwc1  $f2, ($t0)
/* 1F7944 801DF9C4 00230821 */  addu  $at, $at, $v1
/* 1F7948 801DF9C8 3484042B */  ori   $a0, (0x0001042B & 0xFFFF) # ori $a0, $a0, 0x42b
/* 1F794C 801DF9CC E422B320 */  swc1  $f2, -0x4ce0($at)
/* 1F7950 801DF9D0 8CA90000 */  lw    $t1, ($a1)
/* 1F7954 801DF9D4 3C01800F */  lui   $at, 0x800f
/* 1F7958 801DF9D8 00096880 */  sll   $t5, $t1, 2
/* 1F795C 801DF9DC 002D0821 */  addu  $at, $at, $t5
/* 1F7960 801DF9E0 E422B160 */  swc1  $f2, -0x4ea0($at)
/* 1F7964 801DF9E4 8CA30000 */  lw    $v1, ($a1)
/* 1F7968 801DF9E8 3C01800E */  lui   $at, 0x800e
/* 1F796C 801DF9EC 00031880 */  sll   $v1, $v1, 2
/* 1F7970 801DF9F0 00230821 */  addu  $at, $at, $v1
/* 1F7974 801DF9F4 C4266BD0 */  lwc1  $f6, 0x6bd0($at)
/* 1F7978 801DF9F8 3C01800E */  lui   $at, 0x800e
/* 1F797C 801DF9FC 01435021 */  addu  $t2, $t2, $v1
/* 1F7980 801DFA00 00230821 */  addu  $at, $at, $v1
/* 1F7984 801DFA04 8D4A5F90 */  lw    $t2, 0x5f90($t2)
/* 1F7988 801DFA08 C4282790 */  lwc1  $f8, 0x2790($at)
/* 1F798C 801DFA0C E7A60068 */  swc1  $f6, 0x68($sp)
/* 1F7990 801DFA10 AFAA0060 */  sw    $t2, 0x60($sp)
/* 1F7994 801DFA14 0C02A855 */  jal   func_800AA154_ovl13
/* 1F7998 801DFA18 E7A80064 */   swc1  $f8, 0x64($sp)
/* 1F799C 801DFA1C 8E0E0000 */  lw    $t6, ($s0)
/* 1F79A0 801DFA20 3C0C800E */  lui   $t4, 0x800e
/* 1F79A4 801DFA24 27A40054 */  addiu $a0, $sp, 0x54
/* 1F79A8 801DFA28 8DD90000 */  lw    $t9, ($t6)
/* 1F79AC 801DFA2C 00195880 */  sll   $t3, $t9, 2
/* 1F79B0 801DFA30 018B6021 */  addu  $t4, $t4, $t3
/* 1F79B4 801DFA34 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 1F79B8 801DFA38 0C0291E5 */  jal   func_800A4794_ovl13
/* 1F79BC 801DFA3C 8D850004 */   lw    $a1, 4($t4)
/* 1F79C0 801DFA40 8E0F0000 */  lw    $t7, ($s0)
/* 1F79C4 801DFA44 3C09800E */  lui   $t1, 0x800e
/* 1F79C8 801DFA48 3C01800E */  lui   $at, 0x800e
/* 1F79CC 801DFA4C 8DE30000 */  lw    $v1, ($t7)
/* 1F79D0 801DFA50 3C18800E */  lui   $t8, %hi(D_800E5F90) # $t8, 0x800e
/* 1F79D4 801DFA54 3C08800E */  lui   $t0, %hi(D_800E6BD0) # $t0, 0x800e
/* 1F79D8 801DFA58 00031880 */  sll   $v1, $v1, 2
/* 1F79DC 801DFA5C 01234821 */  addu  $t1, $t1, $v1
/* 1F79E0 801DFA60 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 1F79E4 801DFA64 00230821 */  addu  $at, $at, $v1
/* 1F79E8 801DFA68 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 1F79EC 801DFA6C 8D2D0004 */  lw    $t5, 4($t1)
/* 1F79F0 801DFA70 25086BD0 */  addiu $t0, %lo(D_800E6BD0) # addiu $t0, $t0, 0x6bd0
/* 1F79F4 801DFA74 27185F90 */  addiu $t8, %lo(D_800E5F90) # addiu $t8, $t8, 0x5f90
/* 1F79F8 801DFA78 C5A40024 */  lwc1  $f4, 0x24($t5)
/* 1F79FC 801DFA7C 00782021 */  addu  $a0, $v1, $t8
/* 1F7A00 801DFA80 00682821 */  addu  $a1, $v1, $t0
/* 1F7A04 801DFA84 46045182 */  mul.s $f6, $f10, $f4
/* 1F7A08 801DFA88 44063000 */  mfc1  $a2, $f6
/* 1F7A0C 801DFA8C 0C03E65D */  jal   func_800F9974_ovl13
/* 1F7A10 801DFA90 00000000 */   nop   
/* 1F7A14 801DFA94 8E050000 */  lw    $a1, ($s0)
/* 1F7A18 801DFA98 C7A80058 */  lwc1  $f8, 0x58($sp)
/* 1F7A1C 801DFA9C 3C01800E */  lui   $at, 0x800e
/* 1F7A20 801DFAA0 8CAA0000 */  lw    $t2, ($a1)
/* 1F7A24 801DFAA4 000A7080 */  sll   $t6, $t2, 2
/* 1F7A28 801DFAA8 002E0821 */  addu  $at, $at, $t6
/* 1F7A2C 801DFAAC E4282790 */  swc1  $f8, 0x2790($at)
/* 1F7A30 801DFAB0 8CA30000 */  lw    $v1, ($a1)
/* 1F7A34 801DFAB4 3C01800F */  lui   $at, 0x800f
/* 1F7A38 801DFAB8 00031880 */  sll   $v1, $v1, 2
/* 1F7A3C 801DFABC 00230821 */  addu  $at, $at, $v1
/* 1F7A40 801DFAC0 C420B320 */  lwc1  $f0, -0x4ce0($at)
/* 1F7A44 801DFAC4 3C01800F */  lui   $at, 0x800f
/* 1F7A48 801DFAC8 00230821 */  addu  $at, $at, $v1
/* 1F7A4C 801DFACC C42CA6E0 */  lwc1  $f12, -0x5920($at)
/* 1F7A50 801DFAD0 460C003C */  c.lt.s $f0, $f12
/* 1F7A54 801DFAD4 00000000 */  nop   
/* 1F7A58 801DFAD8 45020009 */  bc1fl .L801DFB00_ovl13
/* 1F7A5C 801DFADC 460C0201 */   sub.s $f8, $f0, $f12
/* 1F7A60 801DFAE0 460C0281 */  sub.s $f10, $f0, $f12
/* 1F7A64 801DFAE4 3C01800E */  lui   $at, 0x800e
/* 1F7A68 801DFAE8 00230821 */  addu  $at, $at, $v1
/* 1F7A6C 801DFAEC 46005107 */  neg.s $f4, $f10
/* 1F7A70 801DFAF0 46002187 */  neg.s $f6, $f4
/* 1F7A74 801DFAF4 10000006 */  b     .L801DFB10_ovl13
/* 1F7A78 801DFAF8 E4263210 */   swc1  $f6, 0x3210($at)
/* 1F7A7C 801DFAFC 460C0201 */  sub.s $f8, $f0, $f12
.L801DFB00_ovl13:
/* 1F7A80 801DFB00 3C01800E */  lui   $at, 0x800e
/* 1F7A84 801DFB04 00230821 */  addu  $at, $at, $v1
/* 1F7A88 801DFB08 46004287 */  neg.s $f10, $f8
/* 1F7A8C 801DFB0C E42A3210 */  swc1  $f10, 0x3210($at)
.L801DFB10_ovl13:
/* 1F7A90 801DFB10 8CA30000 */  lw    $v1, ($a1)
/* 1F7A94 801DFB14 3C01800F */  lui   $at, 0x800f
/* 1F7A98 801DFB18 00031880 */  sll   $v1, $v1, 2
/* 1F7A9C 801DFB1C 00230821 */  addu  $at, $at, $v1
/* 1F7AA0 801DFB20 C420B320 */  lwc1  $f0, -0x4ce0($at)
/* 1F7AA4 801DFB24 3C01800F */  lui   $at, 0x800f
/* 1F7AA8 801DFB28 00230821 */  addu  $at, $at, $v1
/* 1F7AAC 801DFB2C C42CA6E0 */  lwc1  $f12, -0x5920($at)
/* 1F7AB0 801DFB30 3C01800F */  lui   $at, 0x800f
/* 1F7AB4 801DFB34 00230821 */  addu  $at, $at, $v1
/* 1F7AB8 801DFB38 460C003C */  c.lt.s $f0, $f12
/* 1F7ABC 801DFB3C 00000000 */  nop   
/* 1F7AC0 801DFB40 45020006 */  bc1fl .L801DFB5C_ovl13
/* 1F7AC4 801DFB44 460C0381 */   sub.s $f14, $f0, $f12
/* 1F7AC8 801DFB48 460C0381 */  sub.s $f14, $f0, $f12
/* 1F7ACC 801DFB4C 46007107 */  neg.s $f4, $f14
/* 1F7AD0 801DFB50 10000003 */  b     .L801DFB60_ovl13
/* 1F7AD4 801DFB54 E7A4004C */   swc1  $f4, 0x4c($sp)
/* 1F7AD8 801DFB58 460C0381 */  sub.s $f14, $f0, $f12
.L801DFB5C_ovl13:
/* 1F7ADC 801DFB5C E7AE004C */  swc1  $f14, 0x4c($sp)
.L801DFB60_ovl13:
/* 1F7AE0 801DFB60 C430B160 */  lwc1  $f16, -0x4ea0($at)
/* 1F7AE4 801DFB64 C7A6004C */  lwc1  $f6, 0x4c($sp)
/* 1F7AE8 801DFB68 4600803C */  c.lt.s $f16, $f0
/* 1F7AEC 801DFB6C 00000000 */  nop   
/* 1F7AF0 801DFB70 45020005 */  bc1fl .L801DFB88_ovl13
/* 1F7AF4 801DFB74 46008481 */   sub.s $f18, $f16, $f0
/* 1F7AF8 801DFB78 46008481 */  sub.s $f18, $f16, $f0
/* 1F7AFC 801DFB7C 10000003 */  b     .L801DFB8C_ovl13
/* 1F7B00 801DFB80 46009087 */   neg.s $f2, $f18
/* 1F7B04 801DFB84 46008481 */  sub.s $f18, $f16, $f0
.L801DFB88_ovl13:
/* 1F7B08 801DFB88 46009086 */  mov.s $f2, $f18
.L801DFB8C_ovl13:
/* 1F7B0C 801DFB8C 4602303C */  c.lt.s $f6, $f2
/* 1F7B10 801DFB90 00000000 */  nop   
/* 1F7B14 801DFB94 45020017 */  bc1fl .L801DFBF4_ovl13
/* 1F7B18 801DFB98 460C003C */   c.lt.s $f0, $f12
/* 1F7B1C 801DFB9C 460C003C */  c.lt.s $f0, $f12
/* 1F7B20 801DFBA0 00000000 */  nop   
/* 1F7B24 801DFBA4 45020004 */  bc1fl .L801DFBB8_ovl13
/* 1F7B28 801DFBA8 46007086 */   mov.s $f2, $f14
/* 1F7B2C 801DFBAC 10000002 */  b     .L801DFBB8_ovl13
/* 1F7B30 801DFBB0 46007087 */   neg.s $f2, $f14
/* 1F7B34 801DFBB4 46007086 */  mov.s $f2, $f14
.L801DFBB8_ovl13:
/* 1F7B38 801DFBB8 4600803C */  c.lt.s $f16, $f0
/* 1F7B3C 801DFBBC 00000000 */  nop   
/* 1F7B40 801DFBC0 45020004 */  bc1fl .L801DFBD4_ovl13
/* 1F7B44 801DFBC4 46009006 */   mov.s $f0, $f18
/* 1F7B48 801DFBC8 10000002 */  b     .L801DFBD4_ovl13
/* 1F7B4C 801DFBCC 46009007 */   neg.s $f0, $f18
/* 1F7B50 801DFBD0 46009006 */  mov.s $f0, $f18
.L801DFBD4_ovl13:
/* 1F7B54 801DFBD4 46001201 */  sub.s $f8, $f2, $f0
/* 1F7B58 801DFBD8 3C01800E */  lui   $at, 0x800e
/* 1F7B5C 801DFBDC 00230821 */  addu  $at, $at, $v1
/* 1F7B60 801DFBE0 46004287 */  neg.s $f10, $f8
/* 1F7B64 801DFBE4 46005107 */  neg.s $f4, $f10
/* 1F7B68 801DFBE8 10000014 */  b     .L801DFC3C_ovl13
/* 1F7B6C 801DFBEC E4243750 */   swc1  $f4, 0x3750($at)
/* 1F7B70 801DFBF0 460C003C */  c.lt.s $f0, $f12
.L801DFBF4_ovl13:
/* 1F7B74 801DFBF4 00000000 */  nop   
/* 1F7B78 801DFBF8 45020004 */  bc1fl .L801DFC0C_ovl13
/* 1F7B7C 801DFBFC 46007086 */   mov.s $f2, $f14
/* 1F7B80 801DFC00 10000002 */  b     .L801DFC0C_ovl13
/* 1F7B84 801DFC04 46007087 */   neg.s $f2, $f14
/* 1F7B88 801DFC08 46007086 */  mov.s $f2, $f14
.L801DFC0C_ovl13:
/* 1F7B8C 801DFC0C 4600803C */  c.lt.s $f16, $f0
/* 1F7B90 801DFC10 00000000 */  nop   
/* 1F7B94 801DFC14 45020004 */  bc1fl .L801DFC28_ovl13
/* 1F7B98 801DFC18 46009006 */   mov.s $f0, $f18
/* 1F7B9C 801DFC1C 10000002 */  b     .L801DFC28_ovl13
/* 1F7BA0 801DFC20 46009007 */   neg.s $f0, $f18
/* 1F7BA4 801DFC24 46009006 */  mov.s $f0, $f18
.L801DFC28_ovl13:
/* 1F7BA8 801DFC28 46001181 */  sub.s $f6, $f2, $f0
/* 1F7BAC 801DFC2C 3C01800E */  lui   $at, 0x800e
/* 1F7BB0 801DFC30 00230821 */  addu  $at, $at, $v1
/* 1F7BB4 801DFC34 46003207 */  neg.s $f8, $f6
/* 1F7BB8 801DFC38 E4283750 */  swc1  $f8, 0x3750($at)
.L801DFC3C_ovl13:
/* 1F7BBC 801DFC3C 8CB90000 */  lw    $t9, ($a1)
/* 1F7BC0 801DFC40 3C03800E */  lui   $v1, %hi(D_800DFBD0) # $v1, 0x800e
/* 1F7BC4 801DFC44 2463FBD0 */  addiu $v1, %lo(D_800DFBD0) # addiu $v1, $v1, -0x430
/* 1F7BC8 801DFC48 00195880 */  sll   $t3, $t9, 2
/* 1F7BCC 801DFC4C 006B6021 */  addu  $t4, $v1, $t3
/* 1F7BD0 801DFC50 8D8F0000 */  lw    $t7, ($t4)
/* 1F7BD4 801DFC54 44805000 */  mtc1  $zero, $f10
/* 1F7BD8 801DFC58 3C01800F */  lui   $at, 0x800f
/* 1F7BDC 801DFC5C 8DF80004 */  lw    $t8, 4($t7)
/* 1F7BE0 801DFC60 E70A0024 */  swc1  $f10, 0x24($t8)
/* 1F7BE4 801DFC64 8E080000 */  lw    $t0, ($s0)
/* 1F7BE8 801DFC68 8D090000 */  lw    $t1, ($t0)
/* 1F7BEC 801DFC6C 00096880 */  sll   $t5, $t1, 2
/* 1F7BF0 801DFC70 006D5021 */  addu  $t2, $v1, $t5
/* 1F7BF4 801DFC74 8D4E0000 */  lw    $t6, ($t2)
/* 1F7BF8 801DFC78 8DC20004 */  lw    $v0, 4($t6)
/* 1F7BFC 801DFC7C C4420024 */  lwc1  $f2, 0x24($v0)
/* 1F7C00 801DFC80 E4420020 */  swc1  $f2, 0x20($v0)
/* 1F7C04 801DFC84 8E190000 */  lw    $t9, ($s0)
/* 1F7C08 801DFC88 8F2B0000 */  lw    $t3, ($t9)
/* 1F7C0C 801DFC8C 3C19800F */  lui   $t9, 0x800f
/* 1F7C10 801DFC90 000B6080 */  sll   $t4, $t3, 2
/* 1F7C14 801DFC94 006C7821 */  addu  $t7, $v1, $t4
/* 1F7C18 801DFC98 8DF80000 */  lw    $t8, ($t7)
/* 1F7C1C 801DFC9C 8F080004 */  lw    $t0, 4($t8)
/* 1F7C20 801DFCA0 E502001C */  swc1  $f2, 0x1c($t0)
/* 1F7C24 801DFCA4 8E050000 */  lw    $a1, ($s0)
/* 1F7C28 801DFCA8 8CA90000 */  lw    $t1, ($a1)
/* 1F7C2C 801DFCAC 00096880 */  sll   $t5, $t1, 2
/* 1F7C30 801DFCB0 002D0821 */  addu  $at, $at, $t5
/* 1F7C34 801DFCB4 AC208920 */  sw    $zero, -0x76e0($at)
/* 1F7C38 801DFCB8 8CAA0000 */  lw    $t2, ($a1)
/* 1F7C3C 801DFCBC 000A7080 */  sll   $t6, $t2, 2
/* 1F7C40 801DFCC0 032EC821 */  addu  $t9, $t9, $t6
/* 1F7C44 801DFCC4 8F398920 */  lw    $t9, -0x76e0($t9)
/* 1F7C48 801DFCC8 1720000B */  bnez  $t9, .L801DFCF8_ovl13
/* 1F7C4C 801DFCCC 00000000 */   nop   
.L801DFCD0_ovl13:
/* 1F7C50 801DFCD0 0C002DAF */  jal   func_8000B6BC
/* 1F7C54 801DFCD4 24040001 */   li    $a0, 1
/* 1F7C58 801DFCD8 8E0B0000 */  lw    $t3, ($s0)
/* 1F7C5C 801DFCDC 3C18800F */  lui   $t8, 0x800f
/* 1F7C60 801DFCE0 8D6C0000 */  lw    $t4, ($t3)
/* 1F7C64 801DFCE4 000C7880 */  sll   $t7, $t4, 2
/* 1F7C68 801DFCE8 030FC021 */  addu  $t8, $t8, $t7
/* 1F7C6C 801DFCEC 8F188920 */  lw    $t8, -0x76e0($t8)
/* 1F7C70 801DFCF0 1300FFF7 */  beqz  $t8, .L801DFCD0_ovl13
/* 1F7C74 801DFCF4 00000000 */   nop   
.L801DFCF8_ovl13:
/* 1F7C78 801DFCF8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F7C7C 801DFCFC 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1F7C80 801DFD00 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1F7C84 801DFD04 3C040001 */  lui   $a0, (0x0001041C >> 16) # lui $a0, 1
/* 1F7C88 801DFD08 3484041C */  ori   $a0, (0x0001041C & 0xFFFF) # ori $a0, $a0, 0x41c
/* 1F7C8C 801DFD0C 0C02A7E6 */  jal   func_800A9F98_ovl13
/* 1F7C90 801DFD10 3C054040 */   lui   $a1, 0x4040
/* 1F7C94 801DFD14 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F7C98 801DFD18 00000000 */   nop   
/* 1F7C9C 801DFD1C 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F7CA0 801DFD20 24040001 */   li    $a0, 1
/* 1F7CA4 801DFD24 0C029D9E */  jal   func_800A7678
/* 1F7CA8 801DFD28 24040185 */   li    $a0, 389
/* 1F7CAC 801DFD2C 00002025 */  move  $a0, $zero
/* 1F7CB0 801DFD30 0C02ED1A */  jal   func_800BB468_ovl13
/* 1F7CB4 801DFD34 00002825 */   move  $a1, $zero
/* 1F7CB8 801DFD38 2404001C */  li    $a0, 28
/* 1F7CBC 801DFD3C 0C06B30D */  jal   func_801ACC34_ovl13
/* 1F7CC0 801DFD40 00002825 */   move  $a1, $zero
/* 1F7CC4 801DFD44 2404001C */  li    $a0, 28
/* 1F7CC8 801DFD48 0C06B30D */  jal   func_801ACC34_ovl13
/* 1F7CCC 801DFD4C 24050001 */   li    $a1, 1
/* 1F7CD0 801DFD50 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F7CD4 801DFD54 00000000 */   nop   
/* 1F7CD8 801DFD58 8E080000 */  lw    $t0, ($s0)
/* 1F7CDC 801DFD5C 3C01800F */  lui   $at, 0x800f
/* 1F7CE0 801DFD60 3C040001 */  lui   $a0, (0x00010429 >> 16) # lui $a0, 1
/* 1F7CE4 801DFD64 8D090000 */  lw    $t1, ($t0)
/* 1F7CE8 801DFD68 34840429 */  ori   $a0, (0x00010429 & 0xFFFF) # ori $a0, $a0, 0x429
/* 1F7CEC 801DFD6C 00096880 */  sll   $t5, $t1, 2
/* 1F7CF0 801DFD70 002D0821 */  addu  $at, $at, $t5
/* 1F7CF4 801DFD74 0C02A855 */  jal   func_800AA154_ovl13
/* 1F7CF8 801DFD78 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F7CFC 801DFD7C 3C040001 */  lui   $a0, (0x0001042A >> 16) # lui $a0, 1
/* 1F7D00 801DFD80 0C02A806 */  jal   func_800AA018_ovl13
/* 1F7D04 801DFD84 3484042A */   ori   $a0, (0x0001042A & 0xFFFF) # ori $a0, $a0, 0x42a
/* 1F7D08 801DFD88 0C002DAF */  jal   func_8000B6BC
/* 1F7D0C 801DFD8C 24040012 */   li    $a0, 18
/* 1F7D10 801DFD90 8E050000 */  lw    $a1, ($s0)
/* 1F7D14 801DFD94 3C01801E */  lui   $at, %hi(D_801E5D34) # $at, 0x801e
/* 1F7D18 801DFD98 C4245D34 */  lwc1  $f4, %lo(D_801E5D34)($at)
/* 1F7D1C 801DFD9C 8CAA0000 */  lw    $t2, ($a1)
/* 1F7D20 801DFDA0 3C01800F */  lui   $at, 0x800f
/* 1F7D24 801DFDA4 24040003 */  li    $a0, 3
/* 1F7D28 801DFDA8 000A7080 */  sll   $t6, $t2, 2
/* 1F7D2C 801DFDAC 002E0821 */  addu  $at, $at, $t6
/* 1F7D30 801DFDB0 E424ADE0 */  swc1  $f4, -0x5220($at)
/* 1F7D34 801DFDB4 8CB90000 */  lw    $t9, ($a1)
/* 1F7D38 801DFDB8 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 1F7D3C 801DFDBC 44813000 */  mtc1  $at, $f6
/* 1F7D40 801DFDC0 3C01800E */  lui   $at, 0x800e
/* 1F7D44 801DFDC4 00195880 */  sll   $t3, $t9, 2
/* 1F7D48 801DFDC8 002B0821 */  addu  $at, $at, $t3
/* 1F7D4C 801DFDCC E4263210 */  swc1  $f6, 0x3210($at)
/* 1F7D50 801DFDD0 8CA30000 */  lw    $v1, ($a1)
/* 1F7D54 801DFDD4 3C01800E */  lui   $at, 0x800e
/* 1F7D58 801DFDD8 00031880 */  sll   $v1, $v1, 2
/* 1F7D5C 801DFDDC 00230821 */  addu  $at, $at, $v1
/* 1F7D60 801DFDE0 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 1F7D64 801DFDE4 3C01801E */  lui   $at, %hi(D_801E5D38) # $at, 0x801e
/* 1F7D68 801DFDE8 C42A5D38 */  lwc1  $f10, %lo(D_801E5D38)($at)
/* 1F7D6C 801DFDEC 3C01800E */  lui   $at, 0x800e
/* 1F7D70 801DFDF0 00230821 */  addu  $at, $at, $v1
/* 1F7D74 801DFDF4 460A4102 */  mul.s $f4, $f8, $f10
/* 1F7D78 801DFDF8 E4246690 */  swc1  $f4, 0x6690($at)
/* 1F7D7C 801DFDFC 8CAC0000 */  lw    $t4, ($a1)
/* 1F7D80 801DFE00 3C01801E */  lui   $at, %hi(D_801E5D3C) # $at, 0x801e
/* 1F7D84 801DFE04 C4265D3C */  lwc1  $f6, %lo(D_801E5D3C)($at)
/* 1F7D88 801DFE08 3C01800E */  lui   $at, 0x800e
/* 1F7D8C 801DFE0C 000C7880 */  sll   $t7, $t4, 2
/* 1F7D90 801DFE10 002F0821 */  addu  $at, $at, $t7
/* 1F7D94 801DFE14 0C002DAF */  jal   func_8000B6BC
/* 1F7D98 801DFE18 E4263750 */   swc1  $f6, 0x3750($at)
/* 1F7D9C 801DFE1C 8E180000 */  lw    $t8, ($s0)
/* 1F7DA0 801DFE20 44804000 */  mtc1  $zero, $f8
/* 1F7DA4 801DFE24 3C01800F */  lui   $at, 0x800f
/* 1F7DA8 801DFE28 8F080000 */  lw    $t0, ($t8)
/* 1F7DAC 801DFE2C 24040007 */  li    $a0, 7
/* 1F7DB0 801DFE30 00084880 */  sll   $t1, $t0, 2
/* 1F7DB4 801DFE34 00290821 */  addu  $at, $at, $t1
/* 1F7DB8 801DFE38 0C002DAF */  jal   func_8000B6BC
/* 1F7DBC 801DFE3C E428ADE0 */   swc1  $f8, -0x5220($at)
/* 1F7DC0 801DFE40 8E0D0000 */  lw    $t5, ($s0)
/* 1F7DC4 801DFE44 3C01801E */  lui   $at, %hi(D_801E5D40) # $at, 0x801e
/* 1F7DC8 801DFE48 C42A5D40 */  lwc1  $f10, %lo(D_801E5D40)($at)
/* 1F7DCC 801DFE4C 8DAA0000 */  lw    $t2, ($t5)
/* 1F7DD0 801DFE50 3C01800F */  lui   $at, 0x800f
/* 1F7DD4 801DFE54 2404000A */  li    $a0, 10
/* 1F7DD8 801DFE58 000A7080 */  sll   $t6, $t2, 2
/* 1F7DDC 801DFE5C 002E0821 */  addu  $at, $at, $t6
/* 1F7DE0 801DFE60 0C002DAF */  jal   func_8000B6BC
/* 1F7DE4 801DFE64 E42AADE0 */   swc1  $f10, -0x5220($at)
/* 1F7DE8 801DFE68 8E050000 */  lw    $a1, ($s0)
/* 1F7DEC 801DFE6C 44800000 */  mtc1  $zero, $f0
/* 1F7DF0 801DFE70 3C02800F */  lui   $v0, %hi(D_800EADE0) # $v0, 0x800f
/* 1F7DF4 801DFE74 8CB90000 */  lw    $t9, ($a1)
/* 1F7DF8 801DFE78 2442ADE0 */  addiu $v0, %lo(D_800EADE0) # addiu $v0, $v0, -0x5220
/* 1F7DFC 801DFE7C 3C18800E */  lui   $t8, 0x800e
/* 1F7E00 801DFE80 00195880 */  sll   $t3, $t9, 2
/* 1F7E04 801DFE84 004B6021 */  addu  $t4, $v0, $t3
/* 1F7E08 801DFE88 E5800000 */  swc1  $f0, ($t4)
/* 1F7E0C 801DFE8C 8CA30000 */  lw    $v1, ($a1)
/* 1F7E10 801DFE90 3C01800E */  lui   $at, 0x800e
/* 1F7E14 801DFE94 24040002 */  li    $a0, 2
/* 1F7E18 801DFE98 00031880 */  sll   $v1, $v1, 2
/* 1F7E1C 801DFE9C 0303C021 */  addu  $t8, $t8, $v1
/* 1F7E20 801DFEA0 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 1F7E24 801DFEA4 00437821 */  addu  $t7, $v0, $v1
/* 1F7E28 801DFEA8 C5E40000 */  lwc1  $f4, ($t7)
/* 1F7E2C 801DFEAC 8F080008 */  lw    $t0, 8($t8)
/* 1F7E30 801DFEB0 E5040030 */  swc1  $f4, 0x30($t0)
/* 1F7E34 801DFEB4 8E050000 */  lw    $a1, ($s0)
/* 1F7E38 801DFEB8 8CA90000 */  lw    $t1, ($a1)
/* 1F7E3C 801DFEBC 00096880 */  sll   $t5, $t1, 2
/* 1F7E40 801DFEC0 002D0821 */  addu  $at, $at, $t5
/* 1F7E44 801DFEC4 E4203750 */  swc1  $f0, 0x3750($at)
/* 1F7E48 801DFEC8 8CA30000 */  lw    $v1, ($a1)
/* 1F7E4C 801DFECC 3C01800E */  lui   $at, 0x800e
/* 1F7E50 801DFED0 00031880 */  sll   $v1, $v1, 2
/* 1F7E54 801DFED4 00230821 */  addu  $at, $at, $v1
/* 1F7E58 801DFED8 C4263750 */  lwc1  $f6, 0x3750($at)
/* 1F7E5C 801DFEDC 3C01800E */  lui   $at, 0x800e
/* 1F7E60 801DFEE0 00230821 */  addu  $at, $at, $v1
/* 1F7E64 801DFEE4 E4263210 */  swc1  $f6, 0x3210($at)
/* 1F7E68 801DFEE8 8CAA0000 */  lw    $t2, ($a1)
/* 1F7E6C 801DFEEC 3C01801E */  lui   $at, %hi(D_801E5D44) # $at, 0x801e
/* 1F7E70 801DFEF0 C4285D44 */  lwc1  $f8, %lo(D_801E5D44)($at)
/* 1F7E74 801DFEF4 3C01800E */  lui   $at, 0x800e
/* 1F7E78 801DFEF8 000A7080 */  sll   $t6, $t2, 2
/* 1F7E7C 801DFEFC 002E0821 */  addu  $at, $at, $t6
/* 1F7E80 801DFF00 E4283C90 */  swc1  $f8, 0x3c90($at)
/* 1F7E84 801DFF04 8CA30000 */  lw    $v1, ($a1)
/* 1F7E88 801DFF08 3C01800E */  lui   $at, 0x800e
/* 1F7E8C 801DFF0C 00031880 */  sll   $v1, $v1, 2
/* 1F7E90 801DFF10 00230821 */  addu  $at, $at, $v1
/* 1F7E94 801DFF14 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 1F7E98 801DFF18 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 1F7E9C 801DFF1C 44812000 */  mtc1  $at, $f4
/* 1F7EA0 801DFF20 3C01800E */  lui   $at, 0x800e
/* 1F7EA4 801DFF24 00230821 */  addu  $at, $at, $v1
/* 1F7EA8 801DFF28 46045182 */  mul.s $f6, $f10, $f4
/* 1F7EAC 801DFF2C E42664D0 */  swc1  $f6, 0x64d0($at)
/* 1F7EB0 801DFF30 8CB90000 */  lw    $t9, ($a1)
/* 1F7EB4 801DFF34 3C01800E */  lui   $at, 0x800e
/* 1F7EB8 801DFF38 00195880 */  sll   $t3, $t9, 2
/* 1F7EBC 801DFF3C 002B0821 */  addu  $at, $at, $t3
/* 1F7EC0 801DFF40 0C02BBFF */  jal   func_800AEFFC_ovl13
/* 1F7EC4 801DFF44 E4206690 */   swc1  $f0, 0x6690($at)
/* 1F7EC8 801DFF48 8E050000 */  lw    $a1, ($s0)
/* 1F7ECC 801DFF4C 44804000 */  mtc1  $zero, $f8
/* 1F7ED0 801DFF50 3C01800F */  lui   $at, 0x800f
/* 1F7ED4 801DFF54 8CAC0000 */  lw    $t4, ($a1)
/* 1F7ED8 801DFF58 44805000 */  mtc1  $zero, $f10
/* 1F7EDC 801DFF5C 3C02800E */  lui   $v0, %hi(D_800E6690) # $v0, 0x800e
/* 1F7EE0 801DFF60 000C7880 */  sll   $t7, $t4, 2
/* 1F7EE4 801DFF64 002F0821 */  addu  $at, $at, $t7
/* 1F7EE8 801DFF68 E428A6E0 */  swc1  $f8, -0x5920($at)
/* 1F7EEC 801DFF6C 8CA30000 */  lw    $v1, ($a1)
/* 1F7EF0 801DFF70 3C01800F */  lui   $at, 0x800f
/* 1F7EF4 801DFF74 24426690 */  addiu $v0, %lo(D_800E6690) # addiu $v0, $v0, 0x6690
/* 1F7EF8 801DFF78 00031880 */  sll   $v1, $v1, 2
/* 1F7EFC 801DFF7C 00230821 */  addu  $at, $at, $v1
/* 1F7F00 801DFF80 C422A6E0 */  lwc1  $f2, -0x5920($at)
/* 1F7F04 801DFF84 3C01800F */  lui   $at, 0x800f
/* 1F7F08 801DFF88 00230821 */  addu  $at, $at, $v1
/* 1F7F0C 801DFF8C E422B320 */  swc1  $f2, -0x4ce0($at)
/* 1F7F10 801DFF90 8CB80000 */  lw    $t8, ($a1)
/* 1F7F14 801DFF94 3C01800F */  lui   $at, 0x800f
/* 1F7F18 801DFF98 3C040001 */  lui   $a0, (0x0001042D >> 16) # lui $a0, 1
/* 1F7F1C 801DFF9C 00184080 */  sll   $t0, $t8, 2
/* 1F7F20 801DFFA0 00280821 */  addu  $at, $at, $t0
/* 1F7F24 801DFFA4 E422B160 */  swc1  $f2, -0x4ea0($at)
/* 1F7F28 801DFFA8 8CA90000 */  lw    $t1, ($a1)
/* 1F7F2C 801DFFAC 3C01800E */  lui   $at, 0x800e
/* 1F7F30 801DFFB0 3484042D */  ori   $a0, (0x0001042D & 0xFFFF) # ori $a0, $a0, 0x42d
/* 1F7F34 801DFFB4 00096880 */  sll   $t5, $t1, 2
/* 1F7F38 801DFFB8 004D5021 */  addu  $t2, $v0, $t5
/* 1F7F3C 801DFFBC E54A0000 */  swc1  $f10, ($t2)
/* 1F7F40 801DFFC0 8CA30000 */  lw    $v1, ($a1)
/* 1F7F44 801DFFC4 8FAC0060 */  lw    $t4, 0x60($sp)
/* 1F7F48 801DFFC8 C7A80068 */  lwc1  $f8, 0x68($sp)
/* 1F7F4C 801DFFCC 00031880 */  sll   $v1, $v1, 2
/* 1F7F50 801DFFD0 00437021 */  addu  $t6, $v0, $v1
/* 1F7F54 801DFFD4 C5C40000 */  lwc1  $f4, ($t6)
/* 1F7F58 801DFFD8 00230821 */  addu  $at, $at, $v1
/* 1F7F5C 801DFFDC C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 1F7F60 801DFFE0 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 1F7F64 801DFFE4 8CB90000 */  lw    $t9, ($a1)
/* 1F7F68 801DFFE8 3C01801E */  lui   $at, %hi(D_801E5D48) # $at, 0x801e
/* 1F7F6C 801DFFEC C4265D48 */  lwc1  $f6, %lo(D_801E5D48)($at)
/* 1F7F70 801DFFF0 3C01800E */  lui   $at, 0x800e
/* 1F7F74 801DFFF4 00195880 */  sll   $t3, $t9, 2
/* 1F7F78 801DFFF8 002B0821 */  addu  $at, $at, $t3
/* 1F7F7C 801DFFFC E4266850 */  swc1  $f6, 0x6850($at)
/* 1F7F80 801E0000 8CAF0000 */  lw    $t7, ($a1)
/* 1F7F84 801E0004 3C01800E */  lui   $at, 0x800e
/* 1F7F88 801E0008 000FC080 */  sll   $t8, $t7, 2
/* 1F7F8C 801E000C 00380821 */  addu  $at, $at, $t8
/* 1F7F90 801E0010 AC2C5F90 */  sw    $t4, 0x5f90($at)
/* 1F7F94 801E0014 8CA80000 */  lw    $t0, ($a1)
/* 1F7F98 801E0018 3C01800E */  lui   $at, 0x800e
/* 1F7F9C 801E001C 00084880 */  sll   $t1, $t0, 2
/* 1F7FA0 801E0020 00290821 */  addu  $at, $at, $t1
/* 1F7FA4 801E0024 E4286BD0 */  swc1  $f8, 0x6bd0($at)
/* 1F7FA8 801E0028 8CAD0000 */  lw    $t5, ($a1)
/* 1F7FAC 801E002C 3C01800E */  lui   $at, 0x800e
/* 1F7FB0 801E0030 000D5080 */  sll   $t2, $t5, 2
/* 1F7FB4 801E0034 002A0821 */  addu  $at, $at, $t2
/* 1F7FB8 801E0038 0C02A855 */  jal   func_800AA154_ovl13
/* 1F7FBC 801E003C E42A2790 */   swc1  $f10, 0x2790($at)
/* 1F7FC0 801E0040 8E0E0000 */  lw    $t6, ($s0)
/* 1F7FC4 801E0044 3C0F800E */  lui   $t7, 0x800e
/* 1F7FC8 801E0048 27A40054 */  addiu $a0, $sp, 0x54
/* 1F7FCC 801E004C 8DD90000 */  lw    $t9, ($t6)
/* 1F7FD0 801E0050 00195880 */  sll   $t3, $t9, 2
/* 1F7FD4 801E0054 01EB7821 */  addu  $t7, $t7, $t3
/* 1F7FD8 801E0058 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1F7FDC 801E005C 0C0291E5 */  jal   func_800A4794_ovl13
/* 1F7FE0 801E0060 8DE50004 */   lw    $a1, 4($t7)
/* 1F7FE4 801E0064 8E0C0000 */  lw    $t4, ($s0)
/* 1F7FE8 801E0068 3C09800E */  lui   $t1, 0x800e
/* 1F7FEC 801E006C 3C01800E */  lui   $at, 0x800e
/* 1F7FF0 801E0070 8D830000 */  lw    $v1, ($t4)
/* 1F7FF4 801E0074 3C18800E */  lui   $t8, %hi(D_800E5F90) # $t8, 0x800e
/* 1F7FF8 801E0078 3C08800E */  lui   $t0, %hi(D_800E6BD0) # $t0, 0x800e
/* 1F7FFC 801E007C 00031880 */  sll   $v1, $v1, 2
/* 1F8000 801E0080 01234821 */  addu  $t1, $t1, $v1
/* 1F8004 801E0084 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 1F8008 801E0088 00230821 */  addu  $at, $at, $v1
/* 1F800C 801E008C C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1F8010 801E0090 8D2D0004 */  lw    $t5, 4($t1)
/* 1F8014 801E0094 25086BD0 */  addiu $t0, %lo(D_800E6BD0) # addiu $t0, $t0, 0x6bd0
/* 1F8018 801E0098 27185F90 */  addiu $t8, %lo(D_800E5F90) # addiu $t8, $t8, 0x5f90
/* 1F801C 801E009C C5A60024 */  lwc1  $f6, 0x24($t5)
/* 1F8020 801E00A0 00782021 */  addu  $a0, $v1, $t8
/* 1F8024 801E00A4 00682821 */  addu  $a1, $v1, $t0
/* 1F8028 801E00A8 46062202 */  mul.s $f8, $f4, $f6
/* 1F802C 801E00AC 44064000 */  mfc1  $a2, $f8
/* 1F8030 801E00B0 0C03E65D */  jal   func_800F9974_ovl13
/* 1F8034 801E00B4 00000000 */   nop   
/* 1F8038 801E00B8 8E050000 */  lw    $a1, ($s0)
/* 1F803C 801E00BC C7AA0058 */  lwc1  $f10, 0x58($sp)
/* 1F8040 801E00C0 3C01800E */  lui   $at, 0x800e
/* 1F8044 801E00C4 8CAA0000 */  lw    $t2, ($a1)
/* 1F8048 801E00C8 000A7080 */  sll   $t6, $t2, 2
/* 1F804C 801E00CC 002E0821 */  addu  $at, $at, $t6
/* 1F8050 801E00D0 E42A2790 */  swc1  $f10, 0x2790($at)
/* 1F8054 801E00D4 8CA30000 */  lw    $v1, ($a1)
/* 1F8058 801E00D8 3C01800F */  lui   $at, 0x800f
/* 1F805C 801E00DC 00031880 */  sll   $v1, $v1, 2
/* 1F8060 801E00E0 00230821 */  addu  $at, $at, $v1
/* 1F8064 801E00E4 C430B160 */  lwc1  $f16, -0x4ea0($at)
/* 1F8068 801E00E8 3C01800F */  lui   $at, 0x800f
/* 1F806C 801E00EC 00230821 */  addu  $at, $at, $v1
/* 1F8070 801E00F0 C420B320 */  lwc1  $f0, -0x4ce0($at)
/* 1F8074 801E00F4 4600803C */  c.lt.s $f16, $f0
/* 1F8078 801E00F8 00000000 */  nop   
/* 1F807C 801E00FC 45020009 */  bc1fl .L801E0124_ovl13
/* 1F8080 801E0100 46008281 */   sub.s $f10, $f16, $f0
/* 1F8084 801E0104 46008101 */  sub.s $f4, $f16, $f0
/* 1F8088 801E0108 3C01800E */  lui   $at, 0x800e
/* 1F808C 801E010C 00230821 */  addu  $at, $at, $v1
/* 1F8090 801E0110 46002187 */  neg.s $f6, $f4
/* 1F8094 801E0114 46003207 */  neg.s $f8, $f6
/* 1F8098 801E0118 10000006 */  b     .L801E0134_ovl13
/* 1F809C 801E011C E4283210 */   swc1  $f8, 0x3210($at)
/* 1F80A0 801E0120 46008281 */  sub.s $f10, $f16, $f0
.L801E0124_ovl13:
/* 1F80A4 801E0124 3C01800E */  lui   $at, 0x800e
/* 1F80A8 801E0128 00230821 */  addu  $at, $at, $v1
/* 1F80AC 801E012C 46005107 */  neg.s $f4, $f10
/* 1F80B0 801E0130 E4243210 */  swc1  $f4, 0x3210($at)
.L801E0134_ovl13:
/* 1F80B4 801E0134 8CA30000 */  lw    $v1, ($a1)
/* 1F80B8 801E0138 3C01800F */  lui   $at, 0x800f
/* 1F80BC 801E013C 00031880 */  sll   $v1, $v1, 2
/* 1F80C0 801E0140 00230821 */  addu  $at, $at, $v1
/* 1F80C4 801E0144 C420B320 */  lwc1  $f0, -0x4ce0($at)
/* 1F80C8 801E0148 3C01800F */  lui   $at, 0x800f
/* 1F80CC 801E014C 00230821 */  addu  $at, $at, $v1
/* 1F80D0 801E0150 C42CA6E0 */  lwc1  $f12, -0x5920($at)
/* 1F80D4 801E0154 3C01800F */  lui   $at, 0x800f
/* 1F80D8 801E0158 00230821 */  addu  $at, $at, $v1
/* 1F80DC 801E015C 460C003C */  c.lt.s $f0, $f12
/* 1F80E0 801E0160 00000000 */  nop   
/* 1F80E4 801E0164 45020006 */  bc1fl .L801E0180_ovl13
/* 1F80E8 801E0168 460C0381 */   sub.s $f14, $f0, $f12
/* 1F80EC 801E016C 460C0381 */  sub.s $f14, $f0, $f12
/* 1F80F0 801E0170 46007187 */  neg.s $f6, $f14
/* 1F80F4 801E0174 10000003 */  b     .L801E0184_ovl13
/* 1F80F8 801E0178 E7A6004C */   swc1  $f6, 0x4c($sp)
/* 1F80FC 801E017C 460C0381 */  sub.s $f14, $f0, $f12
.L801E0180_ovl13:
/* 1F8100 801E0180 E7AE004C */  swc1  $f14, 0x4c($sp)
.L801E0184_ovl13:
/* 1F8104 801E0184 C430B160 */  lwc1  $f16, -0x4ea0($at)
/* 1F8108 801E0188 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 1F810C 801E018C 4600803C */  c.lt.s $f16, $f0
/* 1F8110 801E0190 00000000 */  nop   
/* 1F8114 801E0194 45020005 */  bc1fl .L801E01AC_ovl13
/* 1F8118 801E0198 46008481 */   sub.s $f18, $f16, $f0
/* 1F811C 801E019C 46008481 */  sub.s $f18, $f16, $f0
/* 1F8120 801E01A0 10000003 */  b     .L801E01B0_ovl13
/* 1F8124 801E01A4 46009087 */   neg.s $f2, $f18
/* 1F8128 801E01A8 46008481 */  sub.s $f18, $f16, $f0
.L801E01AC_ovl13:
/* 1F812C 801E01AC 46009086 */  mov.s $f2, $f18
.L801E01B0_ovl13:
/* 1F8130 801E01B0 4602403C */  c.lt.s $f8, $f2
/* 1F8134 801E01B4 00000000 */  nop   
/* 1F8138 801E01B8 45020017 */  bc1fl .L801E0218_ovl13
/* 1F813C 801E01BC 460C003C */   c.lt.s $f0, $f12
/* 1F8140 801E01C0 460C003C */  c.lt.s $f0, $f12
/* 1F8144 801E01C4 00000000 */  nop   
/* 1F8148 801E01C8 45020004 */  bc1fl .L801E01DC_ovl13
/* 1F814C 801E01CC 46007086 */   mov.s $f2, $f14
/* 1F8150 801E01D0 10000002 */  b     .L801E01DC_ovl13
/* 1F8154 801E01D4 46007087 */   neg.s $f2, $f14
/* 1F8158 801E01D8 46007086 */  mov.s $f2, $f14
.L801E01DC_ovl13:
/* 1F815C 801E01DC 4600803C */  c.lt.s $f16, $f0
/* 1F8160 801E01E0 00000000 */  nop   
/* 1F8164 801E01E4 45020004 */  bc1fl .L801E01F8_ovl13
/* 1F8168 801E01E8 46009006 */   mov.s $f0, $f18
/* 1F816C 801E01EC 10000002 */  b     .L801E01F8_ovl13
/* 1F8170 801E01F0 46009007 */   neg.s $f0, $f18
/* 1F8174 801E01F4 46009006 */  mov.s $f0, $f18
.L801E01F8_ovl13:
/* 1F8178 801E01F8 46001281 */  sub.s $f10, $f2, $f0
/* 1F817C 801E01FC 3C01800E */  lui   $at, 0x800e
/* 1F8180 801E0200 00230821 */  addu  $at, $at, $v1
/* 1F8184 801E0204 46005107 */  neg.s $f4, $f10
/* 1F8188 801E0208 46002187 */  neg.s $f6, $f4
/* 1F818C 801E020C 10000014 */  b     .L801E0260_ovl13
/* 1F8190 801E0210 E4263750 */   swc1  $f6, 0x3750($at)
/* 1F8194 801E0214 460C003C */  c.lt.s $f0, $f12
.L801E0218_ovl13:
/* 1F8198 801E0218 00000000 */  nop   
/* 1F819C 801E021C 45020004 */  bc1fl .L801E0230_ovl13
/* 1F81A0 801E0220 46007086 */   mov.s $f2, $f14
/* 1F81A4 801E0224 10000002 */  b     .L801E0230_ovl13
/* 1F81A8 801E0228 46007087 */   neg.s $f2, $f14
/* 1F81AC 801E022C 46007086 */  mov.s $f2, $f14
.L801E0230_ovl13:
/* 1F81B0 801E0230 4600803C */  c.lt.s $f16, $f0
/* 1F81B4 801E0234 00000000 */  nop   
/* 1F81B8 801E0238 45020004 */  bc1fl .L801E024C_ovl13
/* 1F81BC 801E023C 46009006 */   mov.s $f0, $f18
/* 1F81C0 801E0240 10000002 */  b     .L801E024C_ovl13
/* 1F81C4 801E0244 46009007 */   neg.s $f0, $f18
/* 1F81C8 801E0248 46009006 */  mov.s $f0, $f18
.L801E024C_ovl13:
/* 1F81CC 801E024C 46001201 */  sub.s $f8, $f2, $f0
/* 1F81D0 801E0250 3C01800E */  lui   $at, 0x800e
/* 1F81D4 801E0254 00230821 */  addu  $at, $at, $v1
/* 1F81D8 801E0258 46004287 */  neg.s $f10, $f8
/* 1F81DC 801E025C E42A3750 */  swc1  $f10, 0x3750($at)
.L801E0260_ovl13:
/* 1F81E0 801E0260 8CB90000 */  lw    $t9, ($a1)
/* 1F81E4 801E0264 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 1F81E8 801E0268 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 1F81EC 801E026C 00195880 */  sll   $t3, $t9, 2
/* 1F81F0 801E0270 00CB7821 */  addu  $t7, $a2, $t3
/* 1F81F4 801E0274 8DEC0000 */  lw    $t4, ($t7)
/* 1F81F8 801E0278 44802000 */  mtc1  $zero, $f4
/* 1F81FC 801E027C 3C01800F */  lui   $at, 0x800f
/* 1F8200 801E0280 8D980004 */  lw    $t8, 4($t4)
/* 1F8204 801E0284 E7040024 */  swc1  $f4, 0x24($t8)
/* 1F8208 801E0288 8E080000 */  lw    $t0, ($s0)
/* 1F820C 801E028C 8D090000 */  lw    $t1, ($t0)
/* 1F8210 801E0290 00096880 */  sll   $t5, $t1, 2
/* 1F8214 801E0294 00CD5021 */  addu  $t2, $a2, $t5
/* 1F8218 801E0298 8D4E0000 */  lw    $t6, ($t2)
/* 1F821C 801E029C 3C0A800F */  lui   $t2, 0x800f
/* 1F8220 801E02A0 8DC20004 */  lw    $v0, 4($t6)
/* 1F8224 801E02A4 C4420024 */  lwc1  $f2, 0x24($v0)
/* 1F8228 801E02A8 E4420020 */  swc1  $f2, 0x20($v0)
/* 1F822C 801E02AC 8E190000 */  lw    $t9, ($s0)
/* 1F8230 801E02B0 8F2B0000 */  lw    $t3, ($t9)
/* 1F8234 801E02B4 000B7880 */  sll   $t7, $t3, 2
/* 1F8238 801E02B8 00CF6021 */  addu  $t4, $a2, $t7
/* 1F823C 801E02BC 8D980000 */  lw    $t8, ($t4)
/* 1F8240 801E02C0 8F080004 */  lw    $t0, 4($t8)
/* 1F8244 801E02C4 E502001C */  swc1  $f2, 0x1c($t0)
/* 1F8248 801E02C8 8E050000 */  lw    $a1, ($s0)
/* 1F824C 801E02CC 8CA90000 */  lw    $t1, ($a1)
/* 1F8250 801E02D0 00096880 */  sll   $t5, $t1, 2
/* 1F8254 801E02D4 002D0821 */  addu  $at, $at, $t5
/* 1F8258 801E02D8 AC208920 */  sw    $zero, -0x76e0($at)
/* 1F825C 801E02DC 8CA30000 */  lw    $v1, ($a1)
/* 1F8260 801E02E0 00031880 */  sll   $v1, $v1, 2
/* 1F8264 801E02E4 01435021 */  addu  $t2, $t2, $v1
/* 1F8268 801E02E8 8D4A8920 */  lw    $t2, -0x76e0($t2)
/* 1F826C 801E02EC 5540000E */  bnezl $t2, .L801E0328_ovl13
/* 1F8270 801E02F0 00C35821 */   addu  $t3, $a2, $v1
.L801E02F4_ovl13:
/* 1F8274 801E02F4 0C002DAF */  jal   func_8000B6BC
/* 1F8278 801E02F8 24040001 */   li    $a0, 1
/* 1F827C 801E02FC 8E0E0000 */  lw    $t6, ($s0)
/* 1F8280 801E0300 3C19800F */  lui   $t9, 0x800f
/* 1F8284 801E0304 8DC30000 */  lw    $v1, ($t6)
/* 1F8288 801E0308 00031880 */  sll   $v1, $v1, 2
/* 1F828C 801E030C 0323C821 */  addu  $t9, $t9, $v1
/* 1F8290 801E0310 8F398920 */  lw    $t9, -0x76e0($t9)
/* 1F8294 801E0314 1320FFF7 */  beqz  $t9, .L801E02F4_ovl13
/* 1F8298 801E0318 00000000 */   nop   
/* 1F829C 801E031C 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 1F82A0 801E0320 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 1F82A4 801E0324 00C35821 */  addu  $t3, $a2, $v1
.L801E0328_ovl13:
/* 1F82A8 801E0328 8D6F0000 */  lw    $t7, ($t3)
/* 1F82AC 801E032C 44803000 */  mtc1  $zero, $f6
/* 1F82B0 801E0330 44804000 */  mtc1  $zero, $f8
/* 1F82B4 801E0334 8DEC0004 */  lw    $t4, 4($t7)
/* 1F82B8 801E0338 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F82BC 801E033C E5860038 */  swc1  $f6, 0x38($t4)
/* 1F82C0 801E0340 8E180000 */  lw    $t8, ($s0)
/* 1F82C4 801E0344 8F080000 */  lw    $t0, ($t8)
/* 1F82C8 801E0348 00084880 */  sll   $t1, $t0, 2
/* 1F82CC 801E034C 00C96821 */  addu  $t5, $a2, $t1
/* 1F82D0 801E0350 8DAA0000 */  lw    $t2, ($t5)
/* 1F82D4 801E0354 8D420004 */  lw    $v0, 4($t2)
/* 1F82D8 801E0358 C4420038 */  lwc1  $f2, 0x38($v0)
/* 1F82DC 801E035C E4420034 */  swc1  $f2, 0x34($v0)
/* 1F82E0 801E0360 8E0E0000 */  lw    $t6, ($s0)
/* 1F82E4 801E0364 8DD90000 */  lw    $t9, ($t6)
/* 1F82E8 801E0368 00195880 */  sll   $t3, $t9, 2
/* 1F82EC 801E036C 00CB7821 */  addu  $t7, $a2, $t3
/* 1F82F0 801E0370 8DEC0000 */  lw    $t4, ($t7)
/* 1F82F4 801E0374 8D980004 */  lw    $t8, 4($t4)
/* 1F82F8 801E0378 E7020030 */  swc1  $f2, 0x30($t8)
/* 1F82FC 801E037C 8E080000 */  lw    $t0, ($s0)
/* 1F8300 801E0380 8D090000 */  lw    $t1, ($t0)
/* 1F8304 801E0384 00096880 */  sll   $t5, $t1, 2
/* 1F8308 801E0388 00CD5021 */  addu  $t2, $a2, $t5
/* 1F830C 801E038C 8D4E0000 */  lw    $t6, ($t2)
/* 1F8310 801E0390 8DD90008 */  lw    $t9, 8($t6)
/* 1F8314 801E0394 E7280038 */  swc1  $f8, 0x38($t9)
/* 1F8318 801E0398 8E0B0000 */  lw    $t3, ($s0)
/* 1F831C 801E039C 8D6F0000 */  lw    $t7, ($t3)
/* 1F8320 801E03A0 000F6080 */  sll   $t4, $t7, 2
/* 1F8324 801E03A4 00CCC021 */  addu  $t8, $a2, $t4
/* 1F8328 801E03A8 8F080000 */  lw    $t0, ($t8)
/* 1F832C 801E03AC 8D040008 */  lw    $a0, 8($t0)
/* 1F8330 801E03B0 3C08800E */  lui   $t0, %hi(D_800E6A10) # $t0, 0x800e
/* 1F8334 801E03B4 25086A10 */  addiu $t0, %lo(D_800E6A10) # addiu $t0, $t0, 0x6a10
/* 1F8338 801E03B8 C4820038 */  lwc1  $f2, 0x38($a0)
/* 1F833C 801E03BC E4820034 */  swc1  $f2, 0x34($a0)
/* 1F8340 801E03C0 8E090000 */  lw    $t1, ($s0)
/* 1F8344 801E03C4 8D2D0000 */  lw    $t5, ($t1)
/* 1F8348 801E03C8 000D5080 */  sll   $t2, $t5, 2
/* 1F834C 801E03CC 00CA7021 */  addu  $t6, $a2, $t2
/* 1F8350 801E03D0 8DD90000 */  lw    $t9, ($t6)
/* 1F8354 801E03D4 8F2B0008 */  lw    $t3, 8($t9)
/* 1F8358 801E03D8 E5620030 */  swc1  $f2, 0x30($t3)
/* 1F835C 801E03DC 8E0F0000 */  lw    $t7, ($s0)
/* 1F8360 801E03E0 8DEC0000 */  lw    $t4, ($t7)
/* 1F8364 801E03E4 000CC080 */  sll   $t8, $t4, 2
/* 1F8368 801E03E8 03082821 */  addu  $a1, $t8, $t0
/* 1F836C 801E03EC C4AA0000 */  lwc1  $f10, ($a1)
/* 1F8370 801E03F0 46005107 */  neg.s $f4, $f10
/* 1F8374 801E03F4 E4A40000 */  swc1  $f4, ($a1)
/* 1F8378 801E03F8 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1F837C 801E03FC C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1F8380 801E0400 3C040001 */  lui   $a0, (0x0001041C >> 16) # lui $a0, 1
/* 1F8384 801E0404 3484041C */  ori   $a0, (0x0001041C & 0xFFFF) # ori $a0, $a0, 0x41c
/* 1F8388 801E0408 0C02A7E6 */  jal   func_800A9F98_ovl13
/* 1F838C 801E040C 3C054040 */   lui   $a1, 0x4040
/* 1F8390 801E0410 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F8394 801E0414 00000000 */   nop   
/* 1F8398 801E0418 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F839C 801E041C 24040001 */   li    $a0, 1
/* 1F83A0 801E0420 0C029D9E */  jal   func_800A7678
/* 1F83A4 801E0424 24040185 */   li    $a0, 389
/* 1F83A8 801E0428 00002025 */  move  $a0, $zero
/* 1F83AC 801E042C 0C02ED1A */  jal   func_800BB468_ovl13
/* 1F83B0 801E0430 00002825 */   move  $a1, $zero
/* 1F83B4 801E0434 2404001C */  li    $a0, 28
/* 1F83B8 801E0438 0C06B30D */  jal   func_801ACC34_ovl13
/* 1F83BC 801E043C 00002825 */   move  $a1, $zero
/* 1F83C0 801E0440 2404001C */  li    $a0, 28
/* 1F83C4 801E0444 0C06B30D */  jal   func_801ACC34_ovl13
/* 1F83C8 801E0448 24050001 */   li    $a1, 1
/* 1F83CC 801E044C 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F83D0 801E0450 00000000 */   nop   
/* 1F83D4 801E0454 8E090000 */  lw    $t1, ($s0)
/* 1F83D8 801E0458 3C01800F */  lui   $at, 0x800f
/* 1F83DC 801E045C 3C040001 */  lui   $a0, (0x00010429 >> 16) # lui $a0, 1
/* 1F83E0 801E0460 8D2D0000 */  lw    $t5, ($t1)
/* 1F83E4 801E0464 34840429 */  ori   $a0, (0x00010429 & 0xFFFF) # ori $a0, $a0, 0x429
/* 1F83E8 801E0468 000D5080 */  sll   $t2, $t5, 2
/* 1F83EC 801E046C 002A0821 */  addu  $at, $at, $t2
/* 1F83F0 801E0470 0C02A855 */  jal   func_800AA154_ovl13
/* 1F83F4 801E0474 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F83F8 801E0478 3C040001 */  lui   $a0, (0x0001042A >> 16) # lui $a0, 1
/* 1F83FC 801E047C 0C02A806 */  jal   func_800AA018_ovl13
/* 1F8400 801E0480 3484042A */   ori   $a0, (0x0001042A & 0xFFFF) # ori $a0, $a0, 0x42a
/* 1F8404 801E0484 0C002DAF */  jal   func_8000B6BC
/* 1F8408 801E0488 24040012 */   li    $a0, 18
/* 1F840C 801E048C 8E050000 */  lw    $a1, ($s0)
/* 1F8410 801E0490 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 1F8414 801E0494 44813000 */  mtc1  $at, $f6
/* 1F8418 801E0498 8CAE0000 */  lw    $t6, ($a1)
/* 1F841C 801E049C 3C01800E */  lui   $at, 0x800e
/* 1F8420 801E04A0 24040014 */  li    $a0, 20
/* 1F8424 801E04A4 000EC880 */  sll   $t9, $t6, 2
/* 1F8428 801E04A8 00390821 */  addu  $at, $at, $t9
/* 1F842C 801E04AC E4263210 */  swc1  $f6, 0x3210($at)
/* 1F8430 801E04B0 8CA30000 */  lw    $v1, ($a1)
/* 1F8434 801E04B4 3C01800E */  lui   $at, 0x800e
/* 1F8438 801E04B8 00031880 */  sll   $v1, $v1, 2
/* 1F843C 801E04BC 00230821 */  addu  $at, $at, $v1
/* 1F8440 801E04C0 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 1F8444 801E04C4 3C01801E */  lui   $at, 0x801e
/* 1F8448 801E04C8 D4245D50 */  ldc1  $f4, 0x5d50($at)
/* 1F844C 801E04CC 460042A1 */  cvt.d.s $f10, $f8
/* 1F8450 801E04D0 3C01800E */  lui   $at, 0x800e
/* 1F8454 801E04D4 46245182 */  mul.d $f6, $f10, $f4
/* 1F8458 801E04D8 00230821 */  addu  $at, $at, $v1
/* 1F845C 801E04DC 46203220 */  cvt.s.d $f8, $f6
/* 1F8460 801E04E0 E4286690 */  swc1  $f8, 0x6690($at)
/* 1F8464 801E04E4 8CAB0000 */  lw    $t3, ($a1)
/* 1F8468 801E04E8 3C01801E */  lui   $at, %hi(D_801E5D58) # $at, 0x801e
/* 1F846C 801E04EC C42A5D58 */  lwc1  $f10, %lo(D_801E5D58)($at)
/* 1F8470 801E04F0 3C01800E */  lui   $at, 0x800e
/* 1F8474 801E04F4 000B7880 */  sll   $t7, $t3, 2
/* 1F8478 801E04F8 002F0821 */  addu  $at, $at, $t7
/* 1F847C 801E04FC 0C002DAF */  jal   func_8000B6BC
/* 1F8480 801E0500 E42A3750 */   swc1  $f10, 0x3750($at)
/* 1F8484 801E0504 8E050000 */  lw    $a1, ($s0)
/* 1F8488 801E0508 3C01800E */  lui   $at, 0x800e
/* 1F848C 801E050C 44805000 */  mtc1  $zero, $f10
/* 1F8490 801E0510 8CA30000 */  lw    $v1, ($a1)
/* 1F8494 801E0514 00031880 */  sll   $v1, $v1, 2
/* 1F8498 801E0518 00230821 */  addu  $at, $at, $v1
/* 1F849C 801E051C C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1F84A0 801E0520 3C01C080 */  li    $at, 0xC0800000 # -4.000000
/* 1F84A4 801E0524 44813000 */  mtc1  $at, $f6
/* 1F84A8 801E0528 3C01800E */  lui   $at, 0x800e
/* 1F84AC 801E052C 00230821 */  addu  $at, $at, $v1
/* 1F84B0 801E0530 46062202 */  mul.s $f8, $f4, $f6
/* 1F84B4 801E0534 44802000 */  mtc1  $zero, $f4
/* 1F84B8 801E0538 44803000 */  mtc1  $zero, $f6
/* 1F84BC 801E053C E42864D0 */  swc1  $f8, 0x64d0($at)
/* 1F84C0 801E0540 8CAC0000 */  lw    $t4, ($a1)
/* 1F84C4 801E0544 3C01800E */  lui   $at, 0x800e
/* 1F84C8 801E0548 000CC080 */  sll   $t8, $t4, 2
/* 1F84CC 801E054C 00380821 */  addu  $at, $at, $t8
/* 1F84D0 801E0550 E42A3210 */  swc1  $f10, 0x3210($at)
/* 1F84D4 801E0554 8CA80000 */  lw    $t0, ($a1)
/* 1F84D8 801E0558 3C01800E */  lui   $at, 0x800e
/* 1F84DC 801E055C 00084880 */  sll   $t1, $t0, 2
/* 1F84E0 801E0560 00290821 */  addu  $at, $at, $t1
/* 1F84E4 801E0564 E4246690 */  swc1  $f4, 0x6690($at)
/* 1F84E8 801E0568 8CAD0000 */  lw    $t5, ($a1)
/* 1F84EC 801E056C 3C01800E */  lui   $at, 0x800e
/* 1F84F0 801E0570 000D5080 */  sll   $t2, $t5, 2
/* 1F84F4 801E0574 002A0821 */  addu  $at, $at, $t2
/* 1F84F8 801E0578 E4263750 */  swc1  $f6, 0x3750($at)
/* 1F84FC 801E057C 8CAE0000 */  lw    $t6, ($a1)
/* 1F8500 801E0580 000EC880 */  sll   $t9, $t6, 2
/* 1F8504 801E0584 02395821 */  addu  $t3, $s1, $t9
/* 1F8508 801E0588 0C06769C */  jal   func_8019DA70_ovl13
/* 1F850C 801E058C 8D640000 */   lw    $a0, ($t3)
/* 1F8510 801E0590 44804000 */  mtc1  $zero, $f8
/* 1F8514 801E0594 00000000 */  nop   
/* 1F8518 801E0598 4608003C */  c.lt.s $f0, $f8
/* 1F851C 801E059C 00000000 */  nop   
/* 1F8520 801E05A0 4502000A */  bc1fl .L801E05CC_ovl13
/* 1F8524 801E05A4 8E090000 */   lw    $t1, ($s0)
/* 1F8528 801E05A8 8E0F0000 */  lw    $t7, ($s0)
/* 1F852C 801E05AC 8DEC0000 */  lw    $t4, ($t7)
/* 1F8530 801E05B0 000CC080 */  sll   $t8, $t4, 2
/* 1F8534 801E05B4 02384021 */  addu  $t0, $s1, $t8
/* 1F8538 801E05B8 0C06769C */  jal   func_8019DA70_ovl13
/* 1F853C 801E05BC 8D040000 */   lw    $a0, ($t0)
/* 1F8540 801E05C0 10000008 */  b     .L801E05E4_ovl13
/* 1F8544 801E05C4 46000087 */   neg.s $f2, $f0
/* 1F8548 801E05C8 8E090000 */  lw    $t1, ($s0)
.L801E05CC_ovl13:
/* 1F854C 801E05CC 8D2D0000 */  lw    $t5, ($t1)
/* 1F8550 801E05D0 000D5080 */  sll   $t2, $t5, 2
/* 1F8554 801E05D4 022A7021 */  addu  $t6, $s1, $t2
/* 1F8558 801E05D8 0C06769C */  jal   func_8019DA70_ovl13
/* 1F855C 801E05DC 8DC40000 */   lw    $a0, ($t6)
/* 1F8560 801E05E0 46000086 */  mov.s $f2, $f0
.L801E05E4_ovl13:
/* 1F8564 801E05E4 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 1F8568 801E05E8 44815000 */  mtc1  $at, $f10
/* 1F856C 801E05EC 00000000 */  nop   
/* 1F8570 801E05F0 460A103C */  c.lt.s $f2, $f10
/* 1F8574 801E05F4 00000000 */  nop   
/* 1F8578 801E05F8 45020026 */  bc1fl .L801E0694_ovl13
/* 1F857C 801E05FC 8E0F0000 */   lw    $t7, ($s0)
.L801E0600_ovl13:
/* 1F8580 801E0600 0C002DAF */  jal   func_8000B6BC
/* 1F8584 801E0604 24040001 */   li    $a0, 1
/* 1F8588 801E0608 8E190000 */  lw    $t9, ($s0)
/* 1F858C 801E060C 8F2B0000 */  lw    $t3, ($t9)
/* 1F8590 801E0610 000B7880 */  sll   $t7, $t3, 2
/* 1F8594 801E0614 022F6021 */  addu  $t4, $s1, $t7
/* 1F8598 801E0618 0C06769C */  jal   func_8019DA70_ovl13
/* 1F859C 801E061C 8D840000 */   lw    $a0, ($t4)
/* 1F85A0 801E0620 44802000 */  mtc1  $zero, $f4
/* 1F85A4 801E0624 00000000 */  nop   
/* 1F85A8 801E0628 4604003C */  c.lt.s $f0, $f4
/* 1F85AC 801E062C 00000000 */  nop   
/* 1F85B0 801E0630 4502000A */  bc1fl .L801E065C_ovl13
/* 1F85B4 801E0634 8E0A0000 */   lw    $t2, ($s0)
/* 1F85B8 801E0638 8E180000 */  lw    $t8, ($s0)
/* 1F85BC 801E063C 8F080000 */  lw    $t0, ($t8)
/* 1F85C0 801E0640 00084880 */  sll   $t1, $t0, 2
/* 1F85C4 801E0644 02296821 */  addu  $t5, $s1, $t1
/* 1F85C8 801E0648 0C06769C */  jal   func_8019DA70_ovl13
/* 1F85CC 801E064C 8DA40000 */   lw    $a0, ($t5)
/* 1F85D0 801E0650 10000008 */  b     .L801E0674_ovl13
/* 1F85D4 801E0654 46000087 */   neg.s $f2, $f0
/* 1F85D8 801E0658 8E0A0000 */  lw    $t2, ($s0)
.L801E065C_ovl13:
/* 1F85DC 801E065C 8D4E0000 */  lw    $t6, ($t2)
/* 1F85E0 801E0660 000EC880 */  sll   $t9, $t6, 2
/* 1F85E4 801E0664 02395821 */  addu  $t3, $s1, $t9
/* 1F85E8 801E0668 0C06769C */  jal   func_8019DA70_ovl13
/* 1F85EC 801E066C 8D640000 */   lw    $a0, ($t3)
/* 1F85F0 801E0670 46000086 */  mov.s $f2, $f0
.L801E0674_ovl13:
/* 1F85F4 801E0674 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 1F85F8 801E0678 44813000 */  mtc1  $at, $f6
/* 1F85FC 801E067C 00000000 */  nop   
/* 1F8600 801E0680 4606103C */  c.lt.s $f2, $f6
/* 1F8604 801E0684 00000000 */  nop   
/* 1F8608 801E0688 4501FFDD */  bc1t  .L801E0600_ovl13
/* 1F860C 801E068C 00000000 */   nop   
/* 1F8610 801E0690 8E0F0000 */  lw    $t7, ($s0)
.L801E0694_ovl13:
/* 1F8614 801E0694 3C01800E */  lui   $at, 0x800e
/* 1F8618 801E0698 2404000A */  li    $a0, 10
/* 1F861C 801E069C 8DE30000 */  lw    $v1, ($t7)
/* 1F8620 801E06A0 00031880 */  sll   $v1, $v1, 2
/* 1F8624 801E06A4 00230821 */  addu  $at, $at, $v1
/* 1F8628 801E06A8 C42864D0 */  lwc1  $f8, 0x64d0($at)
/* 1F862C 801E06AC 3C01801E */  lui   $at, %hi(D_801E5D5C) # $at, 0x801e
/* 1F8630 801E06B0 C42A5D5C */  lwc1  $f10, %lo(D_801E5D5C)($at)
/* 1F8634 801E06B4 3C01800E */  lui   $at, 0x800e
/* 1F8638 801E06B8 00230821 */  addu  $at, $at, $v1
/* 1F863C 801E06BC 460A4102 */  mul.s $f4, $f8, $f10
/* 1F8640 801E06C0 0C002DAF */  jal   func_8000B6BC
/* 1F8644 801E06C4 E4246690 */   swc1  $f4, 0x6690($at)
/* 1F8648 801E06C8 0C02CD48 */  jal   func_800B3520_ovl13
/* 1F864C 801E06CC 00000000 */   nop   
/* 1F8650 801E06D0 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F8654 801E06D4 00000000 */   nop   
/* 1F8658 801E06D8 3C040001 */  lui   $a0, (0x00010423 >> 16) # lui $a0, 1
/* 1F865C 801E06DC 0C02A855 */  jal   func_800AA154_ovl13
/* 1F8660 801E06E0 34840423 */   ori   $a0, (0x00010423 & 0xFFFF) # ori $a0, $a0, 0x423
/* 1F8664 801E06E4 8E0C0000 */  lw    $t4, ($s0)
/* 1F8668 801E06E8 3C09800E */  lui   $t1, 0x800e
/* 1F866C 801E06EC 44803000 */  mtc1  $zero, $f6
/* 1F8670 801E06F0 8D980000 */  lw    $t8, ($t4)
/* 1F8674 801E06F4 3C0B800E */  lui   $t3, 0x800e
/* 1F8678 801E06F8 44804000 */  mtc1  $zero, $f8
/* 1F867C 801E06FC 00184080 */  sll   $t0, $t8, 2
/* 1F8680 801E0700 01284821 */  addu  $t1, $t1, $t0
/* 1F8684 801E0704 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 1F8688 801E0708 3C08800E */  lui   $t0, 0x800e
/* 1F868C 801E070C 44805000 */  mtc1  $zero, $f10
/* 1F8690 801E0710 8D2D0004 */  lw    $t5, 4($t1)
/* 1F8694 801E0714 44802000 */  mtc1  $zero, $f4
/* 1F8698 801E0718 3C06800F */  lui   $a2, %hi(D_800EAFA0) # $a2, 0x800f
/* 1F869C 801E071C E5A60024 */  swc1  $f6, 0x24($t5)
/* 1F86A0 801E0720 8E0A0000 */  lw    $t2, ($s0)
/* 1F86A4 801E0724 44803000 */  mtc1  $zero, $f6
/* 1F86A8 801E0728 24C6AFA0 */  addiu $a2, %lo(D_800EAFA0) # addiu $a2, $a2, -0x5060
/* 1F86AC 801E072C 8D4E0000 */  lw    $t6, ($t2)
/* 1F86B0 801E0730 3C01800F */  lui   $at, 0x800f
/* 1F86B4 801E0734 000EC880 */  sll   $t9, $t6, 2
/* 1F86B8 801E0738 01795821 */  addu  $t3, $t3, $t9
/* 1F86BC 801E073C 8D6BFBD0 */  lw    $t3, -0x430($t3)
/* 1F86C0 801E0740 3C19800E */  lui   $t9, 0x800e
/* 1F86C4 801E0744 8D620004 */  lw    $v0, 4($t3)
/* 1F86C8 801E0748 C4420024 */  lwc1  $f2, 0x24($v0)
/* 1F86CC 801E074C E4420020 */  swc1  $f2, 0x20($v0)
/* 1F86D0 801E0750 8E0F0000 */  lw    $t7, ($s0)
/* 1F86D4 801E0754 8DEC0000 */  lw    $t4, ($t7)
/* 1F86D8 801E0758 000CC080 */  sll   $t8, $t4, 2
/* 1F86DC 801E075C 01184021 */  addu  $t0, $t0, $t8
/* 1F86E0 801E0760 8D08FBD0 */  lw    $t0, -0x430($t0)
/* 1F86E4 801E0764 8D090004 */  lw    $t1, 4($t0)
/* 1F86E8 801E0768 3C08800E */  lui   $t0, 0x800e
/* 1F86EC 801E076C E522001C */  swc1  $f2, 0x1c($t1)
/* 1F86F0 801E0770 8E0D0000 */  lw    $t5, ($s0)
/* 1F86F4 801E0774 8DAA0000 */  lw    $t2, ($t5)
/* 1F86F8 801E0778 000A7080 */  sll   $t6, $t2, 2
/* 1F86FC 801E077C 032EC821 */  addu  $t9, $t9, $t6
/* 1F8700 801E0780 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 1F8704 801E0784 3C0E800E */  lui   $t6, 0x800e
/* 1F8708 801E0788 8F2B0008 */  lw    $t3, 8($t9)
/* 1F870C 801E078C E5680024 */  swc1  $f8, 0x24($t3)
/* 1F8710 801E0790 8E0F0000 */  lw    $t7, ($s0)
/* 1F8714 801E0794 8DEC0000 */  lw    $t4, ($t7)
/* 1F8718 801E0798 000CC080 */  sll   $t8, $t4, 2
/* 1F871C 801E079C 01184021 */  addu  $t0, $t0, $t8
/* 1F8720 801E07A0 8D08FBD0 */  lw    $t0, -0x430($t0)
/* 1F8724 801E07A4 3C18800E */  lui   $t8, 0x800e
/* 1F8728 801E07A8 8D040008 */  lw    $a0, 8($t0)
/* 1F872C 801E07AC C4820024 */  lwc1  $f2, 0x24($a0)
/* 1F8730 801E07B0 E4820020 */  swc1  $f2, 0x20($a0)
/* 1F8734 801E07B4 8E090000 */  lw    $t1, ($s0)
/* 1F8738 801E07B8 8D2D0000 */  lw    $t5, ($t1)
/* 1F873C 801E07BC 000D5080 */  sll   $t2, $t5, 2
/* 1F8740 801E07C0 01CA7021 */  addu  $t6, $t6, $t2
/* 1F8744 801E07C4 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 1F8748 801E07C8 8DD90008 */  lw    $t9, 8($t6)
/* 1F874C 801E07CC 3C0E800E */  lui   $t6, 0x800e
/* 1F8750 801E07D0 E722001C */  swc1  $f2, 0x1c($t9)
/* 1F8754 801E07D4 8E0B0000 */  lw    $t3, ($s0)
/* 1F8758 801E07D8 8D6F0000 */  lw    $t7, ($t3)
/* 1F875C 801E07DC 000F6080 */  sll   $t4, $t7, 2
/* 1F8760 801E07E0 030CC021 */  addu  $t8, $t8, $t4
/* 1F8764 801E07E4 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 1F8768 801E07E8 3C0C800E */  lui   $t4, 0x800e
/* 1F876C 801E07EC 8F080004 */  lw    $t0, 4($t8)
/* 1F8770 801E07F0 E50A0038 */  swc1  $f10, 0x38($t0)
/* 1F8774 801E07F4 8E090000 */  lw    $t1, ($s0)
/* 1F8778 801E07F8 8D2D0000 */  lw    $t5, ($t1)
/* 1F877C 801E07FC 000D5080 */  sll   $t2, $t5, 2
/* 1F8780 801E0800 01CA7021 */  addu  $t6, $t6, $t2
/* 1F8784 801E0804 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 1F8788 801E0808 3C0A800E */  lui   $t2, 0x800e
/* 1F878C 801E080C 8DC20004 */  lw    $v0, 4($t6)
/* 1F8790 801E0810 C4420038 */  lwc1  $f2, 0x38($v0)
/* 1F8794 801E0814 E4420034 */  swc1  $f2, 0x34($v0)
/* 1F8798 801E0818 8E190000 */  lw    $t9, ($s0)
/* 1F879C 801E081C 8F2B0000 */  lw    $t3, ($t9)
/* 1F87A0 801E0820 000B7880 */  sll   $t7, $t3, 2
/* 1F87A4 801E0824 018F6021 */  addu  $t4, $t4, $t7
/* 1F87A8 801E0828 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 1F87AC 801E082C 8D980004 */  lw    $t8, 4($t4)
/* 1F87B0 801E0830 3C0C800E */  lui   $t4, 0x800e
/* 1F87B4 801E0834 E7020030 */  swc1  $f2, 0x30($t8)
/* 1F87B8 801E0838 8E080000 */  lw    $t0, ($s0)
/* 1F87BC 801E083C 8D090000 */  lw    $t1, ($t0)
/* 1F87C0 801E0840 00096880 */  sll   $t5, $t1, 2
/* 1F87C4 801E0844 014D5021 */  addu  $t2, $t2, $t5
/* 1F87C8 801E0848 8D4AFBD0 */  lw    $t2, -0x430($t2)
/* 1F87CC 801E084C 3C0D800E */  lui   $t5, 0x800e
/* 1F87D0 801E0850 8D4E0008 */  lw    $t6, 8($t2)
/* 1F87D4 801E0854 E5C40038 */  swc1  $f4, 0x38($t6)
/* 1F87D8 801E0858 8E190000 */  lw    $t9, ($s0)
/* 1F87DC 801E085C 8F2B0000 */  lw    $t3, ($t9)
/* 1F87E0 801E0860 000B7880 */  sll   $t7, $t3, 2
/* 1F87E4 801E0864 018F6021 */  addu  $t4, $t4, $t7
/* 1F87E8 801E0868 8D8CFBD0 */  lw    $t4, -0x430($t4)
/* 1F87EC 801E086C 8D840008 */  lw    $a0, 8($t4)
/* 1F87F0 801E0870 C4820038 */  lwc1  $f2, 0x38($a0)
/* 1F87F4 801E0874 E4820034 */  swc1  $f2, 0x34($a0)
/* 1F87F8 801E0878 8E180000 */  lw    $t8, ($s0)
/* 1F87FC 801E087C 8F080000 */  lw    $t0, ($t8)
/* 1F8800 801E0880 00084880 */  sll   $t1, $t0, 2
/* 1F8804 801E0884 01A96821 */  addu  $t5, $t5, $t1
/* 1F8808 801E0888 8DADFBD0 */  lw    $t5, -0x430($t5)
/* 1F880C 801E088C 8DAA0008 */  lw    $t2, 8($t5)
/* 1F8810 801E0890 E5420030 */  swc1  $f2, 0x30($t2)
/* 1F8814 801E0894 8E050000 */  lw    $a1, ($s0)
/* 1F8818 801E0898 8CAE0000 */  lw    $t6, ($a1)
/* 1F881C 801E089C 000EC880 */  sll   $t9, $t6, 2
/* 1F8820 801E08A0 00D95821 */  addu  $t3, $a2, $t9
/* 1F8824 801E08A4 E5660000 */  swc1  $f6, ($t3)
/* 1F8828 801E08A8 8CA30000 */  lw    $v1, ($a1)
/* 1F882C 801E08AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1F8830 801E08B0 240E0001 */  li    $t6, 1
/* 1F8834 801E08B4 00031880 */  sll   $v1, $v1, 2
/* 1F8838 801E08B8 00C37821 */  addu  $t7, $a2, $v1
/* 1F883C 801E08BC C5E00000 */  lwc1  $f0, ($t7)
/* 1F8840 801E08C0 00230821 */  addu  $at, $at, $v1
/* 1F8844 801E08C4 8FB10018 */  lw    $s1, 0x18($sp)
/* 1F8848 801E08C8 E420ADE0 */  swc1  $f0, -0x5220($at)
/* 1F884C 801E08CC 8CAC0000 */  lw    $t4, ($a1)
/* 1F8850 801E08D0 3C01800F */  lui   $at, 0x800f
/* 1F8854 801E08D4 8FB00014 */  lw    $s0, 0x14($sp)
/* 1F8858 801E08D8 000CC080 */  sll   $t8, $t4, 2
/* 1F885C 801E08DC 00380821 */  addu  $at, $at, $t8
/* 1F8860 801E08E0 E420AC20 */  swc1  $f0, -0x53e0($at)
/* 1F8864 801E08E4 8CA80000 */  lw    $t0, ($a1)
/* 1F8868 801E08E8 3C01800F */  lui   $at, 0x800f
/* 1F886C 801E08EC 00084880 */  sll   $t1, $t0, 2
/* 1F8870 801E08F0 00290821 */  addu  $at, $at, $t1
/* 1F8874 801E08F4 E420AA60 */  swc1  $f0, -0x55a0($at)
/* 1F8878 801E08F8 8CAD0000 */  lw    $t5, ($a1)
/* 1F887C 801E08FC 3C01800F */  lui   $at, 0x800f
/* 1F8880 801E0900 000D5080 */  sll   $t2, $t5, 2
/* 1F8884 801E0904 002A0821 */  addu  $at, $at, $t2
/* 1F8888 801E0908 E420A8A0 */  swc1  $f0, -0x5760($at)
/* 1F888C 801E090C 8CB90000 */  lw    $t9, ($a1)
/* 1F8890 801E0910 3C01800E */  lui   $at, 0x800e
/* 1F8894 801E0914 27BD0070 */  addiu $sp, $sp, 0x70
/* 1F8898 801E0918 00195880 */  sll   $t3, $t9, 2
/* 1F889C 801E091C 002B0821 */  addu  $at, $at, $t3
/* 1F88A0 801E0920 03E00008 */  jr    $ra
/* 1F88A4 801E0924 AC2EDC50 */   sw    $t6, -0x23b0($at)

/* 1F88A8 801E0928 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1F88AC 801E092C 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1F88B0 801E0930 8CC30000 */  lw    $v1, ($a2)
/* 1F88B4 801E0934 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F88B8 801E0938 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F88BC 801E093C AFA40018 */  sw    $a0, 0x18($sp)
/* 1F88C0 801E0940 8C620000 */  lw    $v0, ($v1)
/* 1F88C4 801E0944 3C07800F */  lui   $a3, %hi(D_800EB320) # $a3, 0x800f
/* 1F88C8 801E0948 24E7B320 */  addiu $a3, %lo(D_800EB320) # addiu $a3, $a3, -0x4ce0
/* 1F88CC 801E094C 00021080 */  sll   $v0, $v0, 2
/* 1F88D0 801E0950 00E27021 */  addu  $t6, $a3, $v0
/* 1F88D4 801E0954 C5C40000 */  lwc1  $f4, ($t6)
/* 1F88D8 801E0958 3C01800F */  lui   $at, 0x800f
/* 1F88DC 801E095C 00220821 */  addu  $at, $at, $v0
/* 1F88E0 801E0960 E424A6E0 */  swc1  $f4, -0x5920($at)
/* 1F88E4 801E0964 8C620000 */  lw    $v0, ($v1)
/* 1F88E8 801E0968 3C08800F */  lui   $t0, %hi(D_800EB160) # $t0, 0x800f
/* 1F88EC 801E096C 2508B160 */  addiu $t0, %lo(D_800EB160) # addiu $t0, $t0, -0x4ea0
/* 1F88F0 801E0970 00021080 */  sll   $v0, $v0, 2
/* 1F88F4 801E0974 01027821 */  addu  $t7, $t0, $v0
/* 1F88F8 801E0978 C5E60000 */  lwc1  $f6, ($t7)
/* 1F88FC 801E097C 00E2C021 */  addu  $t8, $a3, $v0
/* 1F8900 801E0980 3C09800E */  lui   $t1, %hi(D_800DFBD0) # $t1, 0x800e
/* 1F8904 801E0984 E7060000 */  swc1  $f6, ($t8)
/* 1F8908 801E0988 8C620000 */  lw    $v0, ($v1)
/* 1F890C 801E098C 2529FBD0 */  addiu $t1, %lo(D_800DFBD0) # addiu $t1, $t1, -0x430
/* 1F8910 801E0990 3C01800F */  lui   $at, 0x800f
/* 1F8914 801E0994 00021080 */  sll   $v0, $v0, 2
/* 1F8918 801E0998 0122C821 */  addu  $t9, $t1, $v0
/* 1F891C 801E099C 8F2A0000 */  lw    $t2, ($t9)
/* 1F8920 801E09A0 01026021 */  addu  $t4, $t0, $v0
/* 1F8924 801E09A4 8D4B0004 */  lw    $t3, 4($t2)
/* 1F8928 801E09A8 C5680020 */  lwc1  $f8, 0x20($t3)
/* 1F892C 801E09AC E5880000 */  swc1  $f8, ($t4)
/* 1F8930 801E09B0 8C620000 */  lw    $v0, ($v1)
/* 1F8934 801E09B4 00021080 */  sll   $v0, $v0, 2
/* 1F8938 801E09B8 01226821 */  addu  $t5, $t1, $v0
/* 1F893C 801E09BC 8DAE0000 */  lw    $t6, ($t5)
/* 1F8940 801E09C0 00220821 */  addu  $at, $at, $v0
/* 1F8944 801E09C4 C430ADE0 */  lwc1  $f16, -0x5220($at)
/* 1F8948 801E09C8 8DC50008 */  lw    $a1, 8($t6)
/* 1F894C 801E09CC 3C01800F */  lui   $at, 0x800f
/* 1F8950 801E09D0 C4AA0030 */  lwc1  $f10, 0x30($a1)
/* 1F8954 801E09D4 46105480 */  add.s $f18, $f10, $f16
/* 1F8958 801E09D8 E4B20030 */  swc1  $f18, 0x30($a1)
/* 1F895C 801E09DC 8CCF0000 */  lw    $t7, ($a2)
/* 1F8960 801E09E0 8FA40018 */  lw    $a0, 0x18($sp)
/* 1F8964 801E09E4 8DF80000 */  lw    $t8, ($t7)
/* 1F8968 801E09E8 0018C880 */  sll   $t9, $t8, 2
/* 1F896C 801E09EC 00390821 */  addu  $at, $at, $t9
/* 1F8970 801E09F0 0C06835D */  jal   func_801A0D74_ovl13
/* 1F8974 801E09F4 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F8978 801E09F8 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1F897C 801E09FC 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1F8980 801E0A00 3C02800E */  lui   $v0, 0x800e
/* 1F8984 801E0A04 8D4B0000 */  lw    $t3, ($t2)
/* 1F8988 801E0A08 000B6080 */  sll   $t4, $t3, 2
/* 1F898C 801E0A0C 004C1021 */  addu  $v0, $v0, $t4
/* 1F8990 801E0A10 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1F8994 801E0A14 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F8998 801E0A18 8C450010 */  lw    $a1, 0x10($v0)
/* 1F899C 801E0A1C 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F89A0 801E0A20 8C460018 */   lw    $a2, 0x18($v0)
/* 1F89A4 801E0A24 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1F89A8 801E0A28 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1F89AC 801E0A2C 3C0D800F */  lui   $t5, 0x800f
/* 1F89B0 801E0A30 24010001 */  li    $at, 1
/* 1F89B4 801E0A34 8C620000 */  lw    $v0, ($v1)
/* 1F89B8 801E0A38 240E0007 */  li    $t6, 7
/* 1F89BC 801E0A3C 3C04800E */  lui   $a0, 0x800e
/* 1F89C0 801E0A40 00021080 */  sll   $v0, $v0, 2
/* 1F89C4 801E0A44 01A26821 */  addu  $t5, $t5, $v0
/* 1F89C8 801E0A48 8DAD83E0 */  lw    $t5, -0x7c20($t5)
/* 1F89CC 801E0A4C 15A1000A */  bne   $t5, $at, .L801E0A78_ovl13
/* 1F89D0 801E0A50 3C01800E */   lui   $at, 0x800e
/* 1F89D4 801E0A54 00220821 */  addu  $at, $at, $v0
/* 1F89D8 801E0A58 AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 1F89DC 801E0A5C 8C6F0000 */  lw    $t7, ($v1)
/* 1F89E0 801E0A60 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F89E4 801E0A64 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F89E8 801E0A68 000FC080 */  sll   $t8, $t7, 2
/* 1F89EC 801E0A6C 00982021 */  addu  $a0, $a0, $t8
/* 1F89F0 801E0A70 0C02C7B2 */  jal   func_800B1EC8
/* 1F89F4 801E0A74 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801E0A78_ovl13:
/* 1F89F8 801E0A78 0C078E56 */  jal   func_801E3958_ovl13
/* 1F89FC 801E0A7C 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F8A00 801E0A80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F8A04 801E0A84 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F8A08 801E0A88 03E00008 */  jr    $ra
/* 1F8A0C 801E0A8C 00000000 */   nop   

/* 1F8A10 801E0A90 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1F8A14 801E0A94 AFB10020 */  sw    $s1, 0x20($sp)
/* 1F8A18 801E0A98 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1F8A1C 801E0A9C 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1F8A20 801E0AA0 8E2E0000 */  lw    $t6, ($s1)
/* 1F8A24 801E0AA4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 1F8A28 801E0AA8 AFB50030 */  sw    $s5, 0x30($sp)
/* 1F8A2C 801E0AAC AFB4002C */  sw    $s4, 0x2c($sp)
/* 1F8A30 801E0AB0 AFB30028 */  sw    $s3, 0x28($sp)
/* 1F8A34 801E0AB4 AFB20024 */  sw    $s2, 0x24($sp)
/* 1F8A38 801E0AB8 AFB0001C */  sw    $s0, 0x1c($sp)
/* 1F8A3C 801E0ABC F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1F8A40 801E0AC0 AFA40058 */  sw    $a0, 0x58($sp)
/* 1F8A44 801E0AC4 8DCF0000 */  lw    $t7, ($t6)
/* 1F8A48 801E0AC8 3C14800E */  lui   $s4, 0x800e
/* 1F8A4C 801E0ACC 24040002 */  li    $a0, 2
/* 1F8A50 801E0AD0 000FC080 */  sll   $t8, $t7, 2
/* 1F8A54 801E0AD4 0298A021 */  addu  $s4, $s4, $t8
/* 1F8A58 801E0AD8 8E941B50 */  lw    $s4, 0x1b50($s4)
/* 1F8A5C 801E0ADC 0C06783A */  jal   func_8019E0E8_ovl13
/* 1F8A60 801E0AE0 24050005 */   li    $a1, 5
/* 1F8A64 801E0AE4 8E300000 */  lw    $s0, ($s1)
/* 1F8A68 801E0AE8 3C12800F */  lui   $s2, %hi(D_800EBF60) # $s2, 0x800f
/* 1F8A6C 801E0AEC 2652BF60 */  addiu $s2, %lo(D_800EBF60) # addiu $s2, $s2, -0x40a0
/* 1F8A70 801E0AF0 8E190000 */  lw    $t9, ($s0)
/* 1F8A74 801E0AF4 3C15800F */  lui   $s5, %hi(D_800E98E0) # $s5, 0x800f
/* 1F8A78 801E0AF8 26B598E0 */  addiu $s5, %lo(D_800E98E0) # addiu $s5, $s5, -0x6720
/* 1F8A7C 801E0AFC 00194080 */  sll   $t0, $t9, 2
/* 1F8A80 801E0B00 02484821 */  addu  $t1, $s2, $t0
/* 1F8A84 801E0B04 AD220000 */  sw    $v0, ($t1)
/* 1F8A88 801E0B08 8E0B0000 */  lw    $t3, ($s0)
/* 1F8A8C 801E0B0C 240A0001 */  li    $t2, 1
/* 1F8A90 801E0B10 3C01800D */  lui   $at, %hi(D_800D709C) # $at, 0x800d
/* 1F8A94 801E0B14 000B6080 */  sll   $t4, $t3, 2
/* 1F8A98 801E0B18 024C6821 */  addu  $t5, $s2, $t4
/* 1F8A9C 801E0B1C 8DAE0000 */  lw    $t6, ($t5)
/* 1F8AA0 801E0B20 3C19800B */  lui   $t9, %hi(D_800B7790) # $t9, 0x800b
/* 1F8AA4 801E0B24 27397790 */  addiu $t9, %lo(D_800B7790) # addiu $t9, $t9, 0x7790
/* 1F8AA8 801E0B28 000E7880 */  sll   $t7, $t6, 2
/* 1F8AAC 801E0B2C 02AFC021 */  addu  $t8, $s5, $t7
/* 1F8AB0 801E0B30 AF0A0000 */  sw    $t2, ($t8)
/* 1F8AB4 801E0B34 AC20709C */  sw    $zero, %lo(D_800D709C)($at)
/* 1F8AB8 801E0B38 8E080000 */  lw    $t0, ($s0)
/* 1F8ABC 801E0B3C 3C01800E */  lui   $at, 0x800e
/* 1F8AC0 801E0B40 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 1F8AC4 801E0B44 00084880 */  sll   $t1, $t0, 2
/* 1F8AC8 801E0B48 00290821 */  addu  $at, $at, $t1
/* 1F8ACC 801E0B4C AC39EF90 */  sw    $t9, -0x1070($at)
/* 1F8AD0 801E0B50 8E0B0000 */  lw    $t3, ($s0)
/* 1F8AD4 801E0B54 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 1F8AD8 801E0B58 27A40044 */  addiu $a0, $sp, 0x44
/* 1F8ADC 801E0B5C 000B6080 */  sll   $t4, $t3, 2
/* 1F8AE0 801E0B60 00CC6821 */  addu  $t5, $a2, $t4
/* 1F8AE4 801E0B64 8DAE0000 */  lw    $t6, ($t5)
/* 1F8AE8 801E0B68 0C0291E5 */  jal   func_800A4794_ovl13
/* 1F8AEC 801E0B6C 8DC50004 */   lw    $a1, 4($t6)
/* 1F8AF0 801E0B70 8E300000 */  lw    $s0, ($s1)
/* 1F8AF4 801E0B74 C7A40044 */  lwc1  $f4, 0x44($sp)
/* 1F8AF8 801E0B78 3C01800E */  lui   $at, 0x800e
/* 1F8AFC 801E0B7C 8E0F0000 */  lw    $t7, ($s0)
/* 1F8B00 801E0B80 C7A60048 */  lwc1  $f6, 0x48($sp)
/* 1F8B04 801E0B84 3C13800E */  lui   $s3, %hi(D_800E2790) # $s3, 0x800e
/* 1F8B08 801E0B88 000F5080 */  sll   $t2, $t7, 2
/* 1F8B0C 801E0B8C 002A0821 */  addu  $at, $at, $t2
/* 1F8B10 801E0B90 E42425D0 */  swc1  $f4, 0x25d0($at)
/* 1F8B14 801E0B94 8E180000 */  lw    $t8, ($s0)
/* 1F8B18 801E0B98 26732790 */  addiu $s3, %lo(D_800E2790) # addiu $s3, $s3, 0x2790
/* 1F8B1C 801E0B9C 3C01800E */  lui   $at, 0x800e
/* 1F8B20 801E0BA0 00184080 */  sll   $t0, $t8, 2
/* 1F8B24 801E0BA4 0268C821 */  addu  $t9, $s3, $t0
/* 1F8B28 801E0BA8 E7260000 */  swc1  $f6, ($t9)
/* 1F8B2C 801E0BAC 8E090000 */  lw    $t1, ($s0)
/* 1F8B30 801E0BB0 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 1F8B34 801E0BB4 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 1F8B38 801E0BB8 00095880 */  sll   $t3, $t1, 2
/* 1F8B3C 801E0BBC 002B0821 */  addu  $at, $at, $t3
/* 1F8B40 801E0BC0 E4282950 */  swc1  $f8, 0x2950($at)
/* 1F8B44 801E0BC4 8E0C0000 */  lw    $t4, ($s0)
/* 1F8B48 801E0BC8 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 1F8B4C 801E0BCC 4480A000 */  mtc1  $zero, $f20
/* 1F8B50 801E0BD0 000C6880 */  sll   $t5, $t4, 2
/* 1F8B54 801E0BD4 00CD7021 */  addu  $t6, $a2, $t5
/* 1F8B58 801E0BD8 8DCF0000 */  lw    $t7, ($t6)
/* 1F8B5C 801E0BDC 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 1F8B60 801E0BE0 44815000 */  mtc1  $at, $f10
/* 1F8B64 801E0BE4 8DEA0004 */  lw    $t2, 4($t7)
/* 1F8B68 801E0BE8 4600A306 */  mov.s $f12, $f20
/* 1F8B6C 801E0BEC E5540024 */  swc1  $f20, 0x24($t2)
/* 1F8B70 801E0BF0 8E380000 */  lw    $t8, ($s1)
/* 1F8B74 801E0BF4 8F080000 */  lw    $t0, ($t8)
/* 1F8B78 801E0BF8 0008C880 */  sll   $t9, $t0, 2
/* 1F8B7C 801E0BFC 00D94821 */  addu  $t1, $a2, $t9
/* 1F8B80 801E0C00 8D2B0000 */  lw    $t3, ($t1)
/* 1F8B84 801E0C04 8D620004 */  lw    $v0, 4($t3)
/* 1F8B88 801E0C08 C4400024 */  lwc1  $f0, 0x24($v0)
/* 1F8B8C 801E0C0C E4400020 */  swc1  $f0, 0x20($v0)
/* 1F8B90 801E0C10 8E2C0000 */  lw    $t4, ($s1)
/* 1F8B94 801E0C14 8D8D0000 */  lw    $t5, ($t4)
/* 1F8B98 801E0C18 000D7080 */  sll   $t6, $t5, 2
/* 1F8B9C 801E0C1C 00CE7821 */  addu  $t7, $a2, $t6
/* 1F8BA0 801E0C20 8DEA0000 */  lw    $t2, ($t7)
/* 1F8BA4 801E0C24 8D580004 */  lw    $t8, 4($t2)
/* 1F8BA8 801E0C28 E700001C */  swc1  $f0, 0x1c($t8)
/* 1F8BAC 801E0C2C 8E280000 */  lw    $t0, ($s1)
/* 1F8BB0 801E0C30 8D190000 */  lw    $t9, ($t0)
/* 1F8BB4 801E0C34 00194880 */  sll   $t1, $t9, 2
/* 1F8BB8 801E0C38 00C95821 */  addu  $t3, $a2, $t1
/* 1F8BBC 801E0C3C 8D6C0000 */  lw    $t4, ($t3)
/* 1F8BC0 801E0C40 8D8D0008 */  lw    $t5, 8($t4)
/* 1F8BC4 801E0C44 E5B40024 */  swc1  $f20, 0x24($t5)
/* 1F8BC8 801E0C48 8E2E0000 */  lw    $t6, ($s1)
/* 1F8BCC 801E0C4C 8DCF0000 */  lw    $t7, ($t6)
/* 1F8BD0 801E0C50 000F5080 */  sll   $t2, $t7, 2
/* 1F8BD4 801E0C54 00CAC021 */  addu  $t8, $a2, $t2
/* 1F8BD8 801E0C58 8F080000 */  lw    $t0, ($t8)
/* 1F8BDC 801E0C5C 8D030008 */  lw    $v1, 8($t0)
/* 1F8BE0 801E0C60 C4600024 */  lwc1  $f0, 0x24($v1)
/* 1F8BE4 801E0C64 E4600020 */  swc1  $f0, 0x20($v1)
/* 1F8BE8 801E0C68 8E390000 */  lw    $t9, ($s1)
/* 1F8BEC 801E0C6C 8F290000 */  lw    $t1, ($t9)
/* 1F8BF0 801E0C70 00095880 */  sll   $t3, $t1, 2
/* 1F8BF4 801E0C74 00CB6021 */  addu  $t4, $a2, $t3
/* 1F8BF8 801E0C78 8D8D0000 */  lw    $t5, ($t4)
/* 1F8BFC 801E0C7C 8DAE0008 */  lw    $t6, 8($t5)
/* 1F8C00 801E0C80 E5C0001C */  swc1  $f0, 0x1c($t6)
/* 1F8C04 801E0C84 8E8F0080 */  lw    $t7, 0x80($s4)
/* 1F8C08 801E0C88 0C02BB48 */  jal   func_800AED20_ovl13
/* 1F8C0C 801E0C8C E5EA0010 */   swc1  $f10, 0x10($t7)
/* 1F8C10 801E0C90 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F8C14 801E0C94 C4306B10 */  lwc1  $f16, %lo(D_800D6B10)($at)
/* 1F8C18 801E0C98 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1F8C1C 801E0C9C 44819000 */  mtc1  $at, $f18
/* 1F8C20 801E0CA0 00000000 */  nop   
/* 1F8C24 801E0CA4 46128302 */  mul.s $f12, $f16, $f18
/* 1F8C28 801E0CA8 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1F8C2C 801E0CAC 00000000 */   nop   
/* 1F8C30 801E0CB0 8E300000 */  lw    $s0, ($s1)
/* 1F8C34 801E0CB4 3C01800E */  lui   $at, 0x800e
/* 1F8C38 801E0CB8 240A0007 */  li    $t2, 7
/* 1F8C3C 801E0CBC 8E180000 */  lw    $t8, ($s0)
/* 1F8C40 801E0CC0 3C0C800E */  lui   $t4, 0x800e
/* 1F8C44 801E0CC4 3C19801E */  lui   $t9, %hi(D_801D93F0) # $t9, 0x801e
/* 1F8C48 801E0CC8 00184080 */  sll   $t0, $t8, 2
/* 1F8C4C 801E0CCC 00280821 */  addu  $at, $at, $t0
/* 1F8C50 801E0CD0 AC2ADFD0 */  sw    $t2, -0x2030($at)
/* 1F8C54 801E0CD4 8E090000 */  lw    $t1, ($s0)
/* 1F8C58 801E0CD8 273993F0 */  addiu $t9, %lo(D_801D93F0) # addiu $t9, $t9, -0x6c10
/* 1F8C5C 801E0CDC 3C04801E */  lui   $a0, %hi(D_801DAB18) # $a0, 0x801e
/* 1F8C60 801E0CE0 00095880 */  sll   $t3, $t1, 2
/* 1F8C64 801E0CE4 018B6021 */  addu  $t4, $t4, $t3
/* 1F8C68 801E0CE8 8D8C1B50 */  lw    $t4, 0x1b50($t4)
/* 1F8C6C 801E0CEC 3C01800E */  lui   $at, 0x800e
/* 1F8C70 801E0CF0 2484AB18 */  addiu $a0, %lo(D_801DAB18) # addiu $a0, $a0, -0x54e8
/* 1F8C74 801E0CF4 AD99008C */  sw    $t9, 0x8c($t4)
/* 1F8C78 801E0CF8 8E2D0000 */  lw    $t5, ($s1)
/* 1F8C7C 801E0CFC 8DAE0000 */  lw    $t6, ($t5)
/* 1F8C80 801E0D00 000E7880 */  sll   $t7, $t6, 2
/* 1F8C84 801E0D04 002F0821 */  addu  $at, $at, $t7
/* 1F8C88 801E0D08 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F8C8C 801E0D0C AC240490 */   sw    $a0, 0x490($at)
/* 1F8C90 801E0D10 8E2A0000 */  lw    $t2, ($s1)
/* 1F8C94 801E0D14 3C0B800E */  lui   $t3, 0x800e
/* 1F8C98 801E0D18 3C01801E */  lui   $at, %hi(D_801E5D60) # $at, 0x801e
/* 1F8C9C 801E0D1C 8D480000 */  lw    $t0, ($t2)
/* 1F8CA0 801E0D20 3C18801E */  lui   $t8, %hi(D_801DAE1C) # $t8, 0x801e
/* 1F8CA4 801E0D24 C4205D60 */  lwc1  $f0, %lo(D_801E5D60)($at)
/* 1F8CA8 801E0D28 00084880 */  sll   $t1, $t0, 2
/* 1F8CAC 801E0D2C 01695821 */  addu  $t3, $t3, $t1
/* 1F8CB0 801E0D30 8D6B1B50 */  lw    $t3, 0x1b50($t3)
/* 1F8CB4 801E0D34 2718AE1C */  addiu $t8, %lo(D_801DAE1C) # addiu $t8, $t8, -0x51e4
/* 1F8CB8 801E0D38 3C14800F */  lui   $s4, %hi(D_800E8920) # $s4, 0x800f
/* 1F8CBC 801E0D3C AD780098 */  sw    $t8, 0x98($t3)
/* 1F8CC0 801E0D40 8E300000 */  lw    $s0, ($s1)
/* 1F8CC4 801E0D44 26948920 */  addiu $s4, %lo(D_800E8920) # addiu $s4, $s4, -0x76e0
/* 1F8CC8 801E0D48 3C01800E */  lui   $at, 0x800e
/* 1F8CCC 801E0D4C 8E190000 */  lw    $t9, ($s0)
/* 1F8CD0 801E0D50 3C02800E */  lui   $v0, %hi(D_800E3590) # $v0, 0x800e
/* 1F8CD4 801E0D54 24423590 */  addiu $v0, %lo(D_800E3590) # addiu $v0, $v0, 0x3590
/* 1F8CD8 801E0D58 00196080 */  sll   $t4, $t9, 2
/* 1F8CDC 801E0D5C 028C6821 */  addu  $t5, $s4, $t4
/* 1F8CE0 801E0D60 ADA00000 */  sw    $zero, ($t5)
/* 1F8CE4 801E0D64 8E0E0000 */  lw    $t6, ($s0)
/* 1F8CE8 801E0D68 44804000 */  mtc1  $zero, $f8
/* 1F8CEC 801E0D6C 000E7880 */  sll   $t7, $t6, 2
/* 1F8CF0 801E0D70 002F0821 */  addu  $at, $at, $t7
/* 1F8CF4 801E0D74 E4346690 */  swc1  $f20, 0x6690($at)
/* 1F8CF8 801E0D78 8E030000 */  lw    $v1, ($s0)
/* 1F8CFC 801E0D7C 3C01800E */  lui   $at, 0x800e
/* 1F8D00 801E0D80 00031880 */  sll   $v1, $v1, 2
/* 1F8D04 801E0D84 00230821 */  addu  $at, $at, $v1
/* 1F8D08 801E0D88 C4246690 */  lwc1  $f4, 0x6690($at)
/* 1F8D0C 801E0D8C 3C01800E */  lui   $at, 0x800e
/* 1F8D10 801E0D90 00230821 */  addu  $at, $at, $v1
/* 1F8D14 801E0D94 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 1F8D18 801E0D98 8E0A0000 */  lw    $t2, ($s0)
/* 1F8D1C 801E0D9C 3C01800E */  lui   $at, 0x800e
/* 1F8D20 801E0DA0 000A4080 */  sll   $t0, $t2, 2
/* 1F8D24 801E0DA4 00280821 */  addu  $at, $at, $t0
/* 1F8D28 801E0DA8 E4206850 */  swc1  $f0, 0x6850($at)
/* 1F8D2C 801E0DAC 8E090000 */  lw    $t1, ($s0)
/* 1F8D30 801E0DB0 3C01800E */  lui   $at, 0x800e
/* 1F8D34 801E0DB4 0009C080 */  sll   $t8, $t1, 2
/* 1F8D38 801E0DB8 00585821 */  addu  $t3, $v0, $t8
/* 1F8D3C 801E0DBC E5740000 */  swc1  $f20, ($t3)
/* 1F8D40 801E0DC0 8E030000 */  lw    $v1, ($s0)
/* 1F8D44 801E0DC4 00031880 */  sll   $v1, $v1, 2
/* 1F8D48 801E0DC8 0043C821 */  addu  $t9, $v0, $v1
/* 1F8D4C 801E0DCC C7260000 */  lwc1  $f6, ($t9)
/* 1F8D50 801E0DD0 00230821 */  addu  $at, $at, $v1
/* 1F8D54 801E0DD4 E4263050 */  swc1  $f6, 0x3050($at)
/* 1F8D58 801E0DD8 8E0C0000 */  lw    $t4, ($s0)
/* 1F8D5C 801E0DDC 3C01800E */  lui   $at, 0x800e
/* 1F8D60 801E0DE0 000C6880 */  sll   $t5, $t4, 2
/* 1F8D64 801E0DE4 002D0821 */  addu  $at, $at, $t5
/* 1F8D68 801E0DE8 E4203AD0 */  swc1  $f0, 0x3ad0($at)
/* 1F8D6C 801E0DEC 8E0E0000 */  lw    $t6, ($s0)
/* 1F8D70 801E0DF0 3C01800E */  lui   $at, 0x800e
/* 1F8D74 801E0DF4 000E7880 */  sll   $t7, $t6, 2
/* 1F8D78 801E0DF8 002F0821 */  addu  $at, $at, $t7
/* 1F8D7C 801E0DFC E43433D0 */  swc1  $f20, 0x33d0($at)
/* 1F8D80 801E0E00 8E0A0000 */  lw    $t2, ($s0)
/* 1F8D84 801E0E04 3C01800E */  lui   $at, 0x800e
/* 1F8D88 801E0E08 000A4080 */  sll   $t0, $t2, 2
/* 1F8D8C 801E0E0C 00280821 */  addu  $at, $at, $t0
/* 1F8D90 801E0E10 E4343910 */  swc1  $f20, 0x3910($at)
/* 1F8D94 801E0E14 8E090000 */  lw    $t1, ($s0)
/* 1F8D98 801E0E18 3C01800E */  lui   $at, 0x800e
/* 1F8D9C 801E0E1C 0009C080 */  sll   $t8, $t1, 2
/* 1F8DA0 801E0E20 00380821 */  addu  $at, $at, $t8
/* 1F8DA4 801E0E24 E4203E50 */  swc1  $f0, 0x3e50($at)
/* 1F8DA8 801E0E28 8E0B0000 */  lw    $t3, ($s0)
/* 1F8DAC 801E0E2C 3C01800E */  lui   $at, 0x800e
/* 1F8DB0 801E0E30 000BC880 */  sll   $t9, $t3, 2
/* 1F8DB4 801E0E34 00390821 */  addu  $at, $at, $t9
/* 1F8DB8 801E0E38 E4343750 */  swc1  $f20, 0x3750($at)
/* 1F8DBC 801E0E3C 8E0C0000 */  lw    $t4, ($s0)
/* 1F8DC0 801E0E40 3C01800E */  lui   $at, 0x800e
/* 1F8DC4 801E0E44 000C6880 */  sll   $t5, $t4, 2
/* 1F8DC8 801E0E48 002D0821 */  addu  $at, $at, $t5
/* 1F8DCC 801E0E4C E4203C90 */  swc1  $f0, 0x3c90($at)
/* 1F8DD0 801E0E50 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 1F8DD4 801E0E54 C42A6E5C */  lwc1  $f10, %lo(D_800D6E5C)($at)
/* 1F8DD8 801E0E58 460A4032 */  c.eq.s $f8, $f10
/* 1F8DDC 801E0E5C 00000000 */  nop   
/* 1F8DE0 801E0E60 45010007 */  bc1t  .L801E0E80_ovl13
/* 1F8DE4 801E0E64 00000000 */   nop   
/* 1F8DE8 801E0E68 8E0E0000 */  lw    $t6, ($s0)
/* 1F8DEC 801E0E6C 3C01800E */  lui   $at, 0x800e
/* 1F8DF0 801E0E70 000E7880 */  sll   $t7, $t6, 2
/* 1F8DF4 801E0E74 002F0821 */  addu  $at, $at, $t7
/* 1F8DF8 801E0E78 0C02F047 */  jal   func_800BC11C_ovl13
/* 1F8DFC 801E0E7C C42C7B20 */   lwc1  $f12, 0x7b20($at)
.L801E0E80_ovl13:
/* 1F8E00 801E0E80 0C029D9E */  jal   func_800A7678
/* 1F8E04 801E0E84 240401E7 */   li    $a0, 487
/* 1F8E08 801E0E88 24040002 */  li    $a0, 2
/* 1F8E0C 801E0E8C 0C02ED1A */  jal   func_800BB468_ovl13
/* 1F8E10 801E0E90 00002825 */   move  $a1, $zero
/* 1F8E14 801E0E94 8E2A0000 */  lw    $t2, ($s1)
/* 1F8E18 801E0E98 3C05800E */  lui   $a1, 0x800e
/* 1F8E1C 801E0E9C 3C07800E */  lui   $a3, 0x800e
/* 1F8E20 801E0EA0 8D430000 */  lw    $v1, ($t2)
/* 1F8E24 801E0EA4 24040002 */  li    $a0, 2
/* 1F8E28 801E0EA8 00031880 */  sll   $v1, $v1, 2
/* 1F8E2C 801E0EAC 00A32821 */  addu  $a1, $a1, $v1
/* 1F8E30 801E0EB0 02634021 */  addu  $t0, $s3, $v1
/* 1F8E34 801E0EB4 00E33821 */  addu  $a3, $a3, $v1
/* 1F8E38 801E0EB8 8CE72950 */  lw    $a3, 0x2950($a3)
/* 1F8E3C 801E0EBC 8D060000 */  lw    $a2, ($t0)
/* 1F8E40 801E0EC0 0C03F5D5 */  jal   func_800FD754_ovl13
/* 1F8E44 801E0EC4 8CA525D0 */   lw    $a1, 0x25d0($a1)
/* 1F8E48 801E0EC8 8E290000 */  lw    $t1, ($s1)
/* 1F8E4C 801E0ECC 3C05800E */  lui   $a1, 0x800e
/* 1F8E50 801E0ED0 3C07800E */  lui   $a3, 0x800e
/* 1F8E54 801E0ED4 8D230000 */  lw    $v1, ($t1)
/* 1F8E58 801E0ED8 24040004 */  li    $a0, 4
/* 1F8E5C 801E0EDC 00031880 */  sll   $v1, $v1, 2
/* 1F8E60 801E0EE0 00A32821 */  addu  $a1, $a1, $v1
/* 1F8E64 801E0EE4 0263C021 */  addu  $t8, $s3, $v1
/* 1F8E68 801E0EE8 00E33821 */  addu  $a3, $a3, $v1
/* 1F8E6C 801E0EEC 8CE72950 */  lw    $a3, 0x2950($a3)
/* 1F8E70 801E0EF0 8F060000 */  lw    $a2, ($t8)
/* 1F8E74 801E0EF4 0C03F5D5 */  jal   func_800FD754_ovl13
/* 1F8E78 801E0EF8 8CA525D0 */   lw    $a1, 0x25d0($a1)
/* 1F8E7C 801E0EFC 0C078DFA */  jal   func_801E37E8_ovl13
/* 1F8E80 801E0F00 8FA40058 */   lw    $a0, 0x58($sp)
/* 1F8E84 801E0F04 3C01800D */  lui   $at, %hi(D_800D7154) # $at, 0x800d
/* 1F8E88 801E0F08 AC207154 */  sw    $zero, %lo(D_800D7154)($at)
/* 1F8E8C 801E0F0C 8E300000 */  lw    $s0, ($s1)
/* 1F8E90 801E0F10 3C02800F */  lui   $v0, %hi(D_800EAFA0) # $v0, 0x800f
/* 1F8E94 801E0F14 2442AFA0 */  addiu $v0, %lo(D_800EAFA0) # addiu $v0, $v0, -0x5060
/* 1F8E98 801E0F18 8E0B0000 */  lw    $t3, ($s0)
/* 1F8E9C 801E0F1C 3C01800F */  lui   $at, 0x800f
/* 1F8EA0 801E0F20 3C040001 */  lui   $a0, (0x00010427 >> 16) # lui $a0, 1
/* 1F8EA4 801E0F24 000BC880 */  sll   $t9, $t3, 2
/* 1F8EA8 801E0F28 00596021 */  addu  $t4, $v0, $t9
/* 1F8EAC 801E0F2C E5940000 */  swc1  $f20, ($t4)
/* 1F8EB0 801E0F30 8E030000 */  lw    $v1, ($s0)
/* 1F8EB4 801E0F34 34840427 */  ori   $a0, (0x00010427 & 0xFFFF) # ori $a0, $a0, 0x427
/* 1F8EB8 801E0F38 00031880 */  sll   $v1, $v1, 2
/* 1F8EBC 801E0F3C 00436821 */  addu  $t5, $v0, $v1
/* 1F8EC0 801E0F40 C5A00000 */  lwc1  $f0, ($t5)
/* 1F8EC4 801E0F44 00230821 */  addu  $at, $at, $v1
/* 1F8EC8 801E0F48 E420ADE0 */  swc1  $f0, -0x5220($at)
/* 1F8ECC 801E0F4C 8E0E0000 */  lw    $t6, ($s0)
/* 1F8ED0 801E0F50 3C01800F */  lui   $at, 0x800f
/* 1F8ED4 801E0F54 000E7880 */  sll   $t7, $t6, 2
/* 1F8ED8 801E0F58 002F0821 */  addu  $at, $at, $t7
/* 1F8EDC 801E0F5C 0C02A806 */  jal   func_800AA018_ovl13
/* 1F8EE0 801E0F60 E420AC20 */   swc1  $f0, -0x53e0($at)
/* 1F8EE4 801E0F64 8E300000 */  lw    $s0, ($s1)
/* 1F8EE8 801E0F68 3C01801E */  lui   $at, %hi(D_801E5D68) # $at, 0x801e
/* 1F8EEC 801E0F6C C4305D68 */  lwc1  $f16, %lo(D_801E5D68)($at)
/* 1F8EF0 801E0F70 8E0A0000 */  lw    $t2, ($s0)
/* 1F8EF4 801E0F74 3C02800E */  lui   $v0, %hi(D_800E3750) # $v0, 0x800e
/* 1F8EF8 801E0F78 24423750 */  addiu $v0, %lo(D_800E3750) # addiu $v0, $v0, 0x3750
/* 1F8EFC 801E0F7C 000A4080 */  sll   $t0, $t2, 2
/* 1F8F00 801E0F80 00484821 */  addu  $t1, $v0, $t0
/* 1F8F04 801E0F84 E5300000 */  swc1  $f16, ($t1)
/* 1F8F08 801E0F88 8E180000 */  lw    $t8, ($s0)
/* 1F8F0C 801E0F8C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F8F10 801E0F90 44819000 */  mtc1  $at, $f18
/* 1F8F14 801E0F94 3C01800E */  lui   $at, 0x800e
/* 1F8F18 801E0F98 00185880 */  sll   $t3, $t8, 2
/* 1F8F1C 801E0F9C 002B0821 */  addu  $at, $at, $t3
/* 1F8F20 801E0FA0 E4323C90 */  swc1  $f18, 0x3c90($at)
/* 1F8F24 801E0FA4 8E190000 */  lw    $t9, ($s0)
/* 1F8F28 801E0FA8 3C01800E */  lui   $at, 0x800e
/* 1F8F2C 801E0FAC 00196080 */  sll   $t4, $t9, 2
/* 1F8F30 801E0FB0 002C0821 */  addu  $at, $at, $t4
/* 1F8F34 801E0FB4 E4346690 */  swc1  $f20, 0x6690($at)
/* 1F8F38 801E0FB8 8E030000 */  lw    $v1, ($s0)
/* 1F8F3C 801E0FBC 3C01800E */  lui   $at, 0x800e
/* 1F8F40 801E0FC0 00031880 */  sll   $v1, $v1, 2
/* 1F8F44 801E0FC4 00230821 */  addu  $at, $at, $v1
/* 1F8F48 801E0FC8 C4246690 */  lwc1  $f4, 0x6690($at)
/* 1F8F4C 801E0FCC 3C01800E */  lui   $at, 0x800e
/* 1F8F50 801E0FD0 00230821 */  addu  $at, $at, $v1
/* 1F8F54 801E0FD4 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 1F8F58 801E0FD8 8E0D0000 */  lw    $t5, ($s0)
/* 1F8F5C 801E0FDC 3C01801E */  lui   $at, %hi(D_801E5D6C) # $at, 0x801e
/* 1F8F60 801E0FE0 C4265D6C */  lwc1  $f6, %lo(D_801E5D6C)($at)
/* 1F8F64 801E0FE4 3C01800E */  lui   $at, 0x800e
/* 1F8F68 801E0FE8 000D7080 */  sll   $t6, $t5, 2
/* 1F8F6C 801E0FEC 002E0821 */  addu  $at, $at, $t6
/* 1F8F70 801E0FF0 E4266850 */  swc1  $f6, 0x6850($at)
/* 1F8F74 801E0FF4 8E0F0000 */  lw    $t7, ($s0)
/* 1F8F78 801E0FF8 3C01801E */  lui   $at, %hi(D_801E5D70) # $at, 0x801e
/* 1F8F7C 801E0FFC C4285D70 */  lwc1  $f8, %lo(D_801E5D70)($at)
/* 1F8F80 801E1000 3C01800F */  lui   $at, 0x800f
/* 1F8F84 801E1004 000F5080 */  sll   $t2, $t7, 2
/* 1F8F88 801E1008 002A0821 */  addu  $at, $at, $t2
/* 1F8F8C 801E100C E428AFA0 */  swc1  $f8, -0x5060($at)
/* 1F8F90 801E1010 8E030000 */  lw    $v1, ($s0)
/* 1F8F94 801E1014 00031880 */  sll   $v1, $v1, 2
/* 1F8F98 801E1018 02834021 */  addu  $t0, $s4, $v1
/* 1F8F9C 801E101C 8D090000 */  lw    $t1, ($t0)
/* 1F8FA0 801E1020 5520000D */  bnezl $t1, .L801E1058_ovl13
/* 1F8FA4 801E1024 0043C821 */   addu  $t9, $v0, $v1
.L801E1028_ovl13:
/* 1F8FA8 801E1028 0C002DAF */  jal   func_8000B6BC
/* 1F8FAC 801E102C 24040001 */   li    $a0, 1
/* 1F8FB0 801E1030 8E300000 */  lw    $s0, ($s1)
/* 1F8FB4 801E1034 8E030000 */  lw    $v1, ($s0)
/* 1F8FB8 801E1038 00031880 */  sll   $v1, $v1, 2
/* 1F8FBC 801E103C 0283C021 */  addu  $t8, $s4, $v1
/* 1F8FC0 801E1040 8F0B0000 */  lw    $t3, ($t8)
/* 1F8FC4 801E1044 1160FFF8 */  beqz  $t3, .L801E1028_ovl13
/* 1F8FC8 801E1048 00000000 */   nop   
/* 1F8FCC 801E104C 3C02800E */  lui   $v0, %hi(D_800E3750) # $v0, 0x800e
/* 1F8FD0 801E1050 24423750 */  addiu $v0, %lo(D_800E3750) # addiu $v0, $v0, 0x3750
/* 1F8FD4 801E1054 0043C821 */  addu  $t9, $v0, $v1
.L801E1058_ovl13:
/* 1F8FD8 801E1058 E7340000 */  swc1  $f20, ($t9)
/* 1F8FDC 801E105C 8E030000 */  lw    $v1, ($s0)
/* 1F8FE0 801E1060 3C01800E */  lui   $at, 0x800e
/* 1F8FE4 801E1064 24040002 */  li    $a0, 2
/* 1F8FE8 801E1068 00031880 */  sll   $v1, $v1, 2
/* 1F8FEC 801E106C 00436021 */  addu  $t4, $v0, $v1
/* 1F8FF0 801E1070 C58A0000 */  lwc1  $f10, ($t4)
/* 1F8FF4 801E1074 00230821 */  addu  $at, $at, $v1
/* 1F8FF8 801E1078 E42A3210 */  swc1  $f10, 0x3210($at)
/* 1F8FFC 801E107C 8E0D0000 */  lw    $t5, ($s0)
/* 1F9000 801E1080 3C01801E */  lui   $at, %hi(D_801E5D74) # $at, 0x801e
/* 1F9004 801E1084 C4305D74 */  lwc1  $f16, %lo(D_801E5D74)($at)
/* 1F9008 801E1088 3C01800E */  lui   $at, 0x800e
/* 1F900C 801E108C 000D7080 */  sll   $t6, $t5, 2
/* 1F9010 801E1090 002E0821 */  addu  $at, $at, $t6
/* 1F9014 801E1094 0C03EE45 */  jal   func_800FB914_ovl13
/* 1F9018 801E1098 E4303C90 */   swc1  $f16, 0x3c90($at)
/* 1F901C 801E109C 8E300000 */  lw    $s0, ($s1)
/* 1F9020 801E10A0 3C01800F */  lui   $at, 0x800f
/* 1F9024 801E10A4 3C03800D */  lui   $v1, %hi(D_800D70D8) # $v1, 0x800d
/* 1F9028 801E10A8 8E0F0000 */  lw    $t7, ($s0)
/* 1F902C 801E10AC 246370D8 */  addiu $v1, %lo(D_800D70D8) # addiu $v1, $v1, 0x70d8
/* 1F9030 801E10B0 24190001 */  li    $t9, 1
/* 1F9034 801E10B4 000F5080 */  sll   $t2, $t7, 2
/* 1F9038 801E10B8 002A0821 */  addu  $at, $at, $t2
/* 1F903C 801E10BC E434AFA0 */  swc1  $f20, -0x5060($at)
/* 1F9040 801E10C0 8E080000 */  lw    $t0, ($s0)
/* 1F9044 801E10C4 3C01800E */  lui   $at, 0x800e
/* 1F9048 801E10C8 24040014 */  li    $a0, 20
/* 1F904C 801E10CC 00084880 */  sll   $t1, $t0, 2
/* 1F9050 801E10D0 00290821 */  addu  $at, $at, $t1
/* 1F9054 801E10D4 C43225D0 */  lwc1  $f18, 0x25d0($at)
/* 1F9058 801E10D8 3C01800E */  lui   $at, 0x800e
/* 1F905C 801E10DC E4720004 */  swc1  $f18, 4($v1)
/* 1F9060 801E10E0 8E180000 */  lw    $t8, ($s0)
/* 1F9064 801E10E4 00185880 */  sll   $t3, $t8, 2
/* 1F9068 801E10E8 002B0821 */  addu  $at, $at, $t3
/* 1F906C 801E10EC C4242950 */  lwc1  $f4, 0x2950($at)
/* 1F9070 801E10F0 3C01800D */  lui   $at, %hi(D_800D709C) # $at, 0x800d
/* 1F9074 801E10F4 E4640008 */  swc1  $f4, 8($v1)
/* 1F9078 801E10F8 0C002DAF */  jal   func_8000B6BC
/* 1F907C 801E10FC AC39709C */   sw    $t9, %lo(D_800D709C)($at)
/* 1F9080 801E1100 8E300000 */  lw    $s0, ($s1)
/* 1F9084 801E1104 3C0F800E */  lui   $t7, 0x800e
/* 1F9088 801E1108 240C0002 */  li    $t4, 2
/* 1F908C 801E110C 8E0D0000 */  lw    $t5, ($s0)
/* 1F9090 801E1110 000D7080 */  sll   $t6, $t5, 2
/* 1F9094 801E1114 01EE7821 */  addu  $t7, $t7, $t6
/* 1F9098 801E1118 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 1F909C 801E111C 000F5080 */  sll   $t2, $t7, 2
/* 1F90A0 801E1120 02AA4021 */  addu  $t0, $s5, $t2
/* 1F90A4 801E1124 AD0C0000 */  sw    $t4, ($t0)
/* 1F90A8 801E1128 8E090000 */  lw    $t1, ($s0)
/* 1F90AC 801E112C 0009C080 */  sll   $t8, $t1, 2
/* 1F90B0 801E1130 02585821 */  addu  $t3, $s2, $t8
/* 1F90B4 801E1134 8D790000 */  lw    $t9, ($t3)
/* 1F90B8 801E1138 00196880 */  sll   $t5, $t9, 2
/* 1F90BC 801E113C 02AD7021 */  addu  $t6, $s5, $t5
/* 1F90C0 801E1140 8DCF0000 */  lw    $t7, ($t6)
/* 1F90C4 801E1144 11E00016 */  beqz  $t7, .L801E11A0_ovl13
/* 1F90C8 801E1148 00000000 */   nop   
.L801E114C_ovl13:
/* 1F90CC 801E114C 0C002DAF */  jal   func_8000B6BC
/* 1F90D0 801E1150 24040001 */   li    $a0, 1
/* 1F90D4 801E1154 8E300000 */  lw    $s0, ($s1)
/* 1F90D8 801E1158 8E030000 */  lw    $v1, ($s0)
/* 1F90DC 801E115C 00031880 */  sll   $v1, $v1, 2
/* 1F90E0 801E1160 02435021 */  addu  $t2, $s2, $v1
/* 1F90E4 801E1164 8D4C0000 */  lw    $t4, ($t2)
/* 1F90E8 801E1168 0263C021 */  addu  $t8, $s3, $v1
/* 1F90EC 801E116C 000C4080 */  sll   $t0, $t4, 2
/* 1F90F0 801E1170 02684821 */  addu  $t1, $s3, $t0
/* 1F90F4 801E1174 C5260000 */  lwc1  $f6, ($t1)
/* 1F90F8 801E1178 E7060000 */  swc1  $f6, ($t8)
/* 1F90FC 801E117C 8E0B0000 */  lw    $t3, ($s0)
/* 1F9100 801E1180 000BC880 */  sll   $t9, $t3, 2
/* 1F9104 801E1184 02596821 */  addu  $t5, $s2, $t9
/* 1F9108 801E1188 8DAE0000 */  lw    $t6, ($t5)
/* 1F910C 801E118C 000E7880 */  sll   $t7, $t6, 2
/* 1F9110 801E1190 02AF5021 */  addu  $t2, $s5, $t7
/* 1F9114 801E1194 8D4C0000 */  lw    $t4, ($t2)
/* 1F9118 801E1198 1580FFEC */  bnez  $t4, .L801E114C_ovl13
/* 1F911C 801E119C 00000000 */   nop   
.L801E11A0_ovl13:
/* 1F9120 801E11A0 0C02BE85 */  jal   func_800AFA14_ovl13
/* 1F9124 801E11A4 00000000 */   nop   
/* 1F9128 801E11A8 8FBF0034 */  lw    $ra, 0x34($sp)
/* 1F912C 801E11AC D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1F9130 801E11B0 8FB0001C */  lw    $s0, 0x1c($sp)
/* 1F9134 801E11B4 8FB10020 */  lw    $s1, 0x20($sp)
/* 1F9138 801E11B8 8FB20024 */  lw    $s2, 0x24($sp)
/* 1F913C 801E11BC 8FB30028 */  lw    $s3, 0x28($sp)
/* 1F9140 801E11C0 8FB4002C */  lw    $s4, 0x2c($sp)
/* 1F9144 801E11C4 8FB50030 */  lw    $s5, 0x30($sp)
/* 1F9148 801E11C8 03E00008 */  jr    $ra
/* 1F914C 801E11CC 27BD0058 */   addiu $sp, $sp, 0x58

/* 1F9150 801E11D0 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9154 801E11D4 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9158 801E11D8 8CEE0000 */  lw    $t6, ($a3)
/* 1F915C 801E11DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F9160 801E11E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F9164 801E11E4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F9168 801E11E8 8DC20000 */  lw    $v0, ($t6)
/* 1F916C 801E11EC 3C08800E */  lui   $t0, %hi(D_800DFBD0) # $t0, 0x800e
/* 1F9170 801E11F0 2508FBD0 */  addiu $t0, %lo(D_800DFBD0) # addiu $t0, $t0, -0x430
/* 1F9174 801E11F4 00021080 */  sll   $v0, $v0, 2
/* 1F9178 801E11F8 01027821 */  addu  $t7, $t0, $v0
/* 1F917C 801E11FC 8DF80000 */  lw    $t8, ($t7)
/* 1F9180 801E1200 3C01800F */  lui   $at, 0x800f
/* 1F9184 801E1204 00220821 */  addu  $at, $at, $v0
/* 1F9188 801E1208 8F030008 */  lw    $v1, 8($t8)
/* 1F918C 801E120C C426ADE0 */  lwc1  $f6, -0x5220($at)
/* 1F9190 801E1210 3C01800F */  lui   $at, 0x800f
/* 1F9194 801E1214 C4640030 */  lwc1  $f4, 0x30($v1)
/* 1F9198 801E1218 46062200 */  add.s $f8, $f4, $f6
/* 1F919C 801E121C E4680030 */  swc1  $f8, 0x30($v1)
/* 1F91A0 801E1220 8CF90000 */  lw    $t9, ($a3)
/* 1F91A4 801E1224 8F220000 */  lw    $v0, ($t9)
/* 1F91A8 801E1228 00021080 */  sll   $v0, $v0, 2
/* 1F91AC 801E122C 01024821 */  addu  $t1, $t0, $v0
/* 1F91B0 801E1230 8D2A0000 */  lw    $t2, ($t1)
/* 1F91B4 801E1234 00220821 */  addu  $at, $at, $v0
/* 1F91B8 801E1238 C430AC20 */  lwc1  $f16, -0x53e0($at)
/* 1F91BC 801E123C 8D450004 */  lw    $a1, 4($t2)
/* 1F91C0 801E1240 3C01800F */  lui   $at, 0x800f
/* 1F91C4 801E1244 C4AA0034 */  lwc1  $f10, 0x34($a1)
/* 1F91C8 801E1248 46105480 */  add.s $f18, $f10, $f16
/* 1F91CC 801E124C E4B20034 */  swc1  $f18, 0x34($a1)
/* 1F91D0 801E1250 8CEB0000 */  lw    $t3, ($a3)
/* 1F91D4 801E1254 8D620000 */  lw    $v0, ($t3)
/* 1F91D8 801E1258 00021080 */  sll   $v0, $v0, 2
/* 1F91DC 801E125C 01026021 */  addu  $t4, $t0, $v0
/* 1F91E0 801E1260 8D8D0000 */  lw    $t5, ($t4)
/* 1F91E4 801E1264 00220821 */  addu  $at, $at, $v0
/* 1F91E8 801E1268 C426AFA0 */  lwc1  $f6, -0x5060($at)
/* 1F91EC 801E126C 8DA30008 */  lw    $v1, 8($t5)
/* 1F91F0 801E1270 3C01800F */  lui   $at, 0x800f
/* 1F91F4 801E1274 C4640038 */  lwc1  $f4, 0x38($v1)
/* 1F91F8 801E1278 46062200 */  add.s $f8, $f4, $f6
/* 1F91FC 801E127C E4680038 */  swc1  $f8, 0x38($v1)
/* 1F9200 801E1280 8CEE0000 */  lw    $t6, ($a3)
/* 1F9204 801E1284 8FA40018 */  lw    $a0, 0x18($sp)
/* 1F9208 801E1288 8DCF0000 */  lw    $t7, ($t6)
/* 1F920C 801E128C 000FC080 */  sll   $t8, $t7, 2
/* 1F9210 801E1290 00380821 */  addu  $at, $at, $t8
/* 1F9214 801E1294 0C06835D */  jal   func_801A0D74_ovl13
/* 1F9218 801E1298 AC208920 */   sw    $zero, -0x76e0($at)
/* 1F921C 801E129C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9220 801E12A0 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9224 801E12A4 8CF90000 */  lw    $t9, ($a3)
/* 1F9228 801E12A8 3C01800E */  lui   $at, 0x800e
/* 1F922C 801E12AC 44805000 */  mtc1  $zero, $f10
/* 1F9230 801E12B0 8F220000 */  lw    $v0, ($t9)
/* 1F9234 801E12B4 3C08800E */  lui   $t0, %hi(D_800DFBD0) # $t0, 0x800e
/* 1F9238 801E12B8 2508FBD0 */  addiu $t0, %lo(D_800DFBD0) # addiu $t0, $t0, -0x430
/* 1F923C 801E12BC 00021080 */  sll   $v0, $v0, 2
/* 1F9240 801E12C0 00220821 */  addu  $at, $at, $v0
/* 1F9244 801E12C4 C4303210 */  lwc1  $f16, 0x3210($at)
/* 1F9248 801E12C8 01024821 */  addu  $t1, $t0, $v0
/* 1F924C 801E12CC 46105032 */  c.eq.s $f10, $f16
/* 1F9250 801E12D0 00000000 */  nop   
/* 1F9254 801E12D4 45010006 */  bc1t  .L801E12F0_ovl13
/* 1F9258 801E12D8 00000000 */   nop   
/* 1F925C 801E12DC 8D230000 */  lw    $v1, ($t1)
/* 1F9260 801E12E0 8C64005C */  lw    $a0, 0x5c($v1)
/* 1F9264 801E12E4 8C650010 */  lw    $a1, 0x10($v1)
/* 1F9268 801E12E8 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F926C 801E12EC 8C660018 */   lw    $a2, 0x18($v1)
.L801E12F0_ovl13:
/* 1F9270 801E12F0 0C078E56 */  jal   func_801E3958_ovl13
/* 1F9274 801E12F4 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F9278 801E12F8 3C0A800D */  lui   $t2, %hi(D_800D709C) # $t2, 0x800d
/* 1F927C 801E12FC 8D4A709C */  lw    $t2, %lo(D_800D709C)($t2)
/* 1F9280 801E1300 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9284 801E1304 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9288 801E1308 51400011 */  beql  $t2, $zero, .L801E1350_ovl13
/* 1F928C 801E130C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1F9290 801E1310 8CE20000 */  lw    $v0, ($a3)
/* 1F9294 801E1314 3C03800D */  lui   $v1, %hi(D_800D70D8) # $v1, 0x800d
/* 1F9298 801E1318 246370D8 */  addiu $v1, %lo(D_800D70D8) # addiu $v1, $v1, 0x70d8
/* 1F929C 801E131C 8C4B0000 */  lw    $t3, ($v0)
/* 1F92A0 801E1320 C4720004 */  lwc1  $f18, 4($v1)
/* 1F92A4 801E1324 3C01800E */  lui   $at, 0x800e
/* 1F92A8 801E1328 000B6080 */  sll   $t4, $t3, 2
/* 1F92AC 801E132C 002C0821 */  addu  $at, $at, $t4
/* 1F92B0 801E1330 E43225D0 */  swc1  $f18, 0x25d0($at)
/* 1F92B4 801E1334 8C4D0000 */  lw    $t5, ($v0)
/* 1F92B8 801E1338 C4640008 */  lwc1  $f4, 8($v1)
/* 1F92BC 801E133C 3C01800E */  lui   $at, 0x800e
/* 1F92C0 801E1340 000D7080 */  sll   $t6, $t5, 2
/* 1F92C4 801E1344 002E0821 */  addu  $at, $at, $t6
/* 1F92C8 801E1348 E4242950 */  swc1  $f4, 0x2950($at)
/* 1F92CC 801E134C 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E1350_ovl13:
/* 1F92D0 801E1350 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F92D4 801E1354 03E00008 */  jr    $ra
/* 1F92D8 801E1358 00000000 */   nop   

/* 1F92DC 801E135C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1F92E0 801E1360 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1F92E4 801E1364 44806000 */  mtc1  $zero, $f12
/* 1F92E8 801E1368 AFB30020 */  sw    $s3, 0x20($sp)
/* 1F92EC 801E136C AFB2001C */  sw    $s2, 0x1c($sp)
/* 1F92F0 801E1370 AFB10018 */  sw    $s1, 0x18($sp)
/* 1F92F4 801E1374 AFB00014 */  sw    $s0, 0x14($sp)
/* 1F92F8 801E1378 0C02BB48 */  jal   func_800AED20_ovl13
/* 1F92FC 801E137C AFA40028 */   sw    $a0, 0x28($sp)
/* 1F9300 801E1380 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1F9304 801E1384 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1F9308 801E1388 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1F930C 801E138C 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1F9310 801E1390 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1F9314 801E1394 8E630000 */  lw    $v1, ($s3)
/* 1F9318 801E1398 3C01800E */  lui   $at, 0x800e
/* 1F931C 801E139C 240E0008 */  li    $t6, 8
/* 1F9320 801E13A0 8C6F0000 */  lw    $t7, ($v1)
/* 1F9324 801E13A4 3C02800E */  lui   $v0, %hi(D_800E1B50) # $v0, 0x800e
/* 1F9328 801E13A8 24421B50 */  addiu $v0, %lo(D_800E1B50) # addiu $v0, $v0, 0x1b50
/* 1F932C 801E13AC 000FC080 */  sll   $t8, $t7, 2
/* 1F9330 801E13B0 00380821 */  addu  $at, $at, $t8
/* 1F9334 801E13B4 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1F9338 801E13B8 8C680000 */  lw    $t0, ($v1)
/* 1F933C 801E13BC 3C19801E */  lui   $t9, %hi(D_801D9384) # $t9, 0x801e
/* 1F9340 801E13C0 27399384 */  addiu $t9, %lo(D_801D9384) # addiu $t9, $t9, -0x6c7c
/* 1F9344 801E13C4 00084880 */  sll   $t1, $t0, 2
/* 1F9348 801E13C8 00495021 */  addu  $t2, $v0, $t1
/* 1F934C 801E13CC 8D4B0000 */  lw    $t3, ($t2)
/* 1F9350 801E13D0 3C0C801E */  lui   $t4, %hi(D_801DAE1C) # $t4, 0x801e
/* 1F9354 801E13D4 258CAE1C */  addiu $t4, %lo(D_801DAE1C) # addiu $t4, $t4, -0x51e4
/* 1F9358 801E13D8 AD79008C */  sw    $t9, 0x8c($t3)
/* 1F935C 801E13DC 8E6D0000 */  lw    $t5, ($s3)
/* 1F9360 801E13E0 8DAF0000 */  lw    $t7, ($t5)
/* 1F9364 801E13E4 000F7080 */  sll   $t6, $t7, 2
/* 1F9368 801E13E8 004EC021 */  addu  $t8, $v0, $t6
/* 1F936C 801E13EC 8F080000 */  lw    $t0, ($t8)
/* 1F9370 801E13F0 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1F9374 801E13F4 AD0C0098 */   sw    $t4, 0x98($t0)
/* 1F9378 801E13F8 8E690000 */  lw    $t1, ($s3)
/* 1F937C 801E13FC 3C02800E */  lui   $v0, %hi(D_800DFBD0) # $v0, 0x800e
/* 1F9380 801E1400 2442FBD0 */  addiu $v0, %lo(D_800DFBD0) # addiu $v0, $v0, -0x430
/* 1F9384 801E1404 8D2A0000 */  lw    $t2, ($t1)
/* 1F9388 801E1408 44800000 */  mtc1  $zero, $f0
/* 1F938C 801E140C 3C01801E */  lui   $at, %hi(D_801E5D78) # $at, 0x801e
/* 1F9390 801E1410 000AC880 */  sll   $t9, $t2, 2
/* 1F9394 801E1414 00595821 */  addu  $t3, $v0, $t9
/* 1F9398 801E1418 8D6D0000 */  lw    $t5, ($t3)
/* 1F939C 801E141C 3C040001 */  lui   $a0, (0x00010412 >> 16) # lui $a0, 1
/* 1F93A0 801E1420 34840412 */  ori   $a0, (0x00010412 & 0xFFFF) # ori $a0, $a0, 0x412
/* 1F93A4 801E1424 8DAF0004 */  lw    $t7, 4($t5)
/* 1F93A8 801E1428 3C054040 */  lui   $a1, 0x4040
/* 1F93AC 801E142C E5E00024 */  swc1  $f0, 0x24($t7)
/* 1F93B0 801E1430 8E6E0000 */  lw    $t6, ($s3)
/* 1F93B4 801E1434 C4245D78 */  lwc1  $f4, %lo(D_801E5D78)($at)
/* 1F93B8 801E1438 3C01801E */  lui   $at, %hi(D_801E5D7C) # $at, 0x801e
/* 1F93BC 801E143C 8DD80000 */  lw    $t8, ($t6)
/* 1F93C0 801E1440 00186080 */  sll   $t4, $t8, 2
/* 1F93C4 801E1444 004C4021 */  addu  $t0, $v0, $t4
/* 1F93C8 801E1448 8D090000 */  lw    $t1, ($t0)
/* 1F93CC 801E144C 8D2A0008 */  lw    $t2, 8($t1)
/* 1F93D0 801E1450 E5440030 */  swc1  $f4, 0x30($t2)
/* 1F93D4 801E1454 8E790000 */  lw    $t9, ($s3)
/* 1F93D8 801E1458 C4265D7C */  lwc1  $f6, %lo(D_801E5D7C)($at)
/* 1F93DC 801E145C 8F2B0000 */  lw    $t3, ($t9)
/* 1F93E0 801E1460 000B6880 */  sll   $t5, $t3, 2
/* 1F93E4 801E1464 004D7821 */  addu  $t7, $v0, $t5
/* 1F93E8 801E1468 8DEE0000 */  lw    $t6, ($t7)
/* 1F93EC 801E146C 8DD80004 */  lw    $t8, 4($t6)
/* 1F93F0 801E1470 E7060034 */  swc1  $f6, 0x34($t8)
/* 1F93F4 801E1474 8E6C0000 */  lw    $t4, ($s3)
/* 1F93F8 801E1478 8D880000 */  lw    $t0, ($t4)
/* 1F93FC 801E147C 00084880 */  sll   $t1, $t0, 2
/* 1F9400 801E1480 00495021 */  addu  $t2, $v0, $t1
/* 1F9404 801E1484 8D590000 */  lw    $t9, ($t2)
/* 1F9408 801E1488 8F2B0008 */  lw    $t3, 8($t9)
/* 1F940C 801E148C 0C02A7E6 */  jal   func_800A9F98_ovl13
/* 1F9410 801E1490 E5600038 */   swc1  $f0, 0x38($t3)
/* 1F9414 801E1494 3C040001 */  lui   $a0, (0x00010426 >> 16) # lui $a0, 1
/* 1F9418 801E1498 0C02A806 */  jal   func_800AA018_ovl13
/* 1F941C 801E149C 34840426 */   ori   $a0, (0x00010426 & 0xFFFF) # ori $a0, $a0, 0x426
/* 1F9420 801E14A0 0C002DAF */  jal   func_8000B6BC
/* 1F9424 801E14A4 2404001E */   li    $a0, 30
/* 1F9428 801E14A8 8E6D0000 */  lw    $t5, ($s3)
/* 1F942C 801E14AC 3C01800E */  lui   $at, 0x800e
/* 1F9430 801E14B0 8DAF0000 */  lw    $t7, ($t5)
/* 1F9434 801E14B4 000F7080 */  sll   $t6, $t7, 2
/* 1F9438 801E14B8 002E0821 */  addu  $at, $at, $t6
/* 1F943C 801E14BC C4287B20 */  lwc1  $f8, 0x7b20($at)
/* 1F9440 801E14C0 4600428D */  trunc.w.s $f10, $f8
/* 1F9444 801E14C4 44045000 */  mfc1  $a0, $f10
/* 1F9448 801E14C8 0C02F07F */  jal   func_800BC1FC_ovl13
/* 1F944C 801E14CC 00000000 */   nop   
/* 1F9450 801E14D0 0C002DAF */  jal   func_8000B6BC
/* 1F9454 801E14D4 24040030 */   li    $a0, 48
/* 1F9458 801E14D8 8E6C0000 */  lw    $t4, ($s3)
/* 1F945C 801E14DC 3C12800E */  lui   $s2, %hi(D_800E0D50) # $s2, 0x800e
/* 1F9460 801E14E0 26520D50 */  addiu $s2, %lo(D_800E0D50) # addiu $s2, $s2, 0xd50
/* 1F9464 801E14E4 8D880000 */  lw    $t0, ($t4)
/* 1F9468 801E14E8 3C11800F */  lui   $s1, %hi(D_800E98E0) # $s1, 0x800f
/* 1F946C 801E14EC 263198E0 */  addiu $s1, %lo(D_800E98E0) # addiu $s1, $s1, -0x6720
/* 1F9470 801E14F0 00084880 */  sll   $t1, $t0, 2
/* 1F9474 801E14F4 02495021 */  addu  $t2, $s2, $t1
/* 1F9478 801E14F8 8D590000 */  lw    $t9, ($t2)
/* 1F947C 801E14FC 24100003 */  li    $s0, 3
/* 1F9480 801E1500 00195880 */  sll   $t3, $t9, 2
/* 1F9484 801E1504 022B6821 */  addu  $t5, $s1, $t3
/* 1F9488 801E1508 8DAF0000 */  lw    $t7, ($t5)
/* 1F948C 801E150C 160F000D */  bne   $s0, $t7, .L801E1544_ovl13
/* 1F9490 801E1510 00000000 */   nop   
.L801E1514_ovl13:
/* 1F9494 801E1514 0C002DAF */  jal   func_8000B6BC
/* 1F9498 801E1518 24040001 */   li    $a0, 1
/* 1F949C 801E151C 8E6E0000 */  lw    $t6, ($s3)
/* 1F94A0 801E1520 8DD80000 */  lw    $t8, ($t6)
/* 1F94A4 801E1524 00186080 */  sll   $t4, $t8, 2
/* 1F94A8 801E1528 024C4021 */  addu  $t0, $s2, $t4
/* 1F94AC 801E152C 8D090000 */  lw    $t1, ($t0)
/* 1F94B0 801E1530 00095080 */  sll   $t2, $t1, 2
/* 1F94B4 801E1534 022AC821 */  addu  $t9, $s1, $t2
/* 1F94B8 801E1538 8F2B0000 */  lw    $t3, ($t9)
/* 1F94BC 801E153C 120BFFF5 */  beq   $s0, $t3, .L801E1514_ovl13
/* 1F94C0 801E1540 00000000 */   nop   
.L801E1544_ovl13:
/* 1F94C4 801E1544 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F94C8 801E1548 00000000 */   nop   
/* 1F94CC 801E154C 8E630000 */  lw    $v1, ($s3)
/* 1F94D0 801E1550 3C04800E */  lui   $a0, %hi(D_800E6A10) # $a0, 0x800e
/* 1F94D4 801E1554 24846A10 */  addiu $a0, %lo(D_800E6A10) # addiu $a0, $a0, 0x6a10
/* 1F94D8 801E1558 8C620000 */  lw    $v0, ($v1)
/* 1F94DC 801E155C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1F94E0 801E1560 44819000 */  mtc1  $at, $f18
/* 1F94E4 801E1564 00021080 */  sll   $v0, $v0, 2
/* 1F94E8 801E1568 00826821 */  addu  $t5, $a0, $v0
/* 1F94EC 801E156C C5B00000 */  lwc1  $f16, ($t5)
/* 1F94F0 801E1570 3C01800E */  lui   $at, 0x800e
/* 1F94F4 801E1574 00220821 */  addu  $at, $at, $v0
/* 1F94F8 801E1578 46128102 */  mul.s $f4, $f16, $f18
/* 1F94FC 801E157C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1F9500 801E1580 240E000A */  li    $t6, 10
/* 1F9504 801E1584 8FB30020 */  lw    $s3, 0x20($sp)
/* 1F9508 801E1588 8FB00014 */  lw    $s0, 0x14($sp)
/* 1F950C 801E158C 8FB10018 */  lw    $s1, 0x18($sp)
/* 1F9510 801E1590 8FB2001C */  lw    $s2, 0x1c($sp)
/* 1F9514 801E1594 E42464D0 */  swc1  $f4, 0x64d0($at)
/* 1F9518 801E1598 8C620000 */  lw    $v0, ($v1)
/* 1F951C 801E159C 3C01801E */  lui   $at, %hi(D_801E5D80) # $at, 0x801e
/* 1F9520 801E15A0 C4285D80 */  lwc1  $f8, %lo(D_801E5D80)($at)
/* 1F9524 801E15A4 00021080 */  sll   $v0, $v0, 2
/* 1F9528 801E15A8 00827821 */  addu  $t7, $a0, $v0
/* 1F952C 801E15AC C5E60000 */  lwc1  $f6, ($t7)
/* 1F9530 801E15B0 3C01800E */  lui   $at, 0x800e
/* 1F9534 801E15B4 00220821 */  addu  $at, $at, $v0
/* 1F9538 801E15B8 46083282 */  mul.s $f10, $f6, $f8
/* 1F953C 801E15BC E42A6690 */  swc1  $f10, 0x6690($at)
/* 1F9540 801E15C0 8C780000 */  lw    $t8, ($v1)
/* 1F9544 801E15C4 3C01800E */  lui   $at, 0x800e
/* 1F9548 801E15C8 27BD0028 */  addiu $sp, $sp, 0x28
/* 1F954C 801E15CC 00186080 */  sll   $t4, $t8, 2
/* 1F9550 801E15D0 002C0821 */  addu  $at, $at, $t4
/* 1F9554 801E15D4 03E00008 */  jr    $ra
/* 1F9558 801E15D8 AC2EDC50 */   sw    $t6, -0x23b0($at)

/* 1F955C 801E15DC 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1F9560 801E15E0 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1F9564 801E15E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F9568 801E15E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F956C 801E15EC AFA40018 */  sw    $a0, 0x18($sp)
/* 1F9570 801E15F0 8DCF0000 */  lw    $t7, ($t6)
/* 1F9574 801E15F4 3C02800E */  lui   $v0, 0x800e
/* 1F9578 801E15F8 000FC080 */  sll   $t8, $t7, 2
/* 1F957C 801E15FC 00581021 */  addu  $v0, $v0, $t8
/* 1F9580 801E1600 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1F9584 801E1604 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F9588 801E1608 8C450010 */  lw    $a1, 0x10($v0)
/* 1F958C 801E160C 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F9590 801E1610 8C460018 */   lw    $a2, 0x18($v0)
/* 1F9594 801E1614 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F9598 801E1618 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1F959C 801E161C 3C19800F */  lui   $t9, 0x800f
/* 1F95A0 801E1620 24010001 */  li    $at, 1
/* 1F95A4 801E1624 8C430000 */  lw    $v1, ($v0)
/* 1F95A8 801E1628 2408000E */  li    $t0, 14
/* 1F95AC 801E162C 3C04800E */  lui   $a0, 0x800e
/* 1F95B0 801E1630 00031880 */  sll   $v1, $v1, 2
/* 1F95B4 801E1634 0323C821 */  addu  $t9, $t9, $v1
/* 1F95B8 801E1638 8F3983E0 */  lw    $t9, -0x7c20($t9)
/* 1F95BC 801E163C 1721000A */  bne   $t9, $at, .L801E1668_ovl13
/* 1F95C0 801E1640 3C01800E */   lui   $at, 0x800e
/* 1F95C4 801E1644 00230821 */  addu  $at, $at, $v1
/* 1F95C8 801E1648 AC28DC50 */  sw    $t0, -0x23b0($at)
/* 1F95CC 801E164C 8C490000 */  lw    $t1, ($v0)
/* 1F95D0 801E1650 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F95D4 801E1654 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F95D8 801E1658 00095080 */  sll   $t2, $t1, 2
/* 1F95DC 801E165C 008A2021 */  addu  $a0, $a0, $t2
/* 1F95E0 801E1660 0C02C7B2 */  jal   func_800B1EC8
/* 1F95E4 801E1664 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801E1668_ovl13:
/* 1F95E8 801E1668 0C078E56 */  jal   func_801E3958_ovl13
/* 1F95EC 801E166C 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F95F0 801E1670 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F95F4 801E1674 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F95F8 801E1678 03E00008 */  jr    $ra
/* 1F95FC 801E167C 00000000 */   nop   

/* 1F9600 801E1680 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1F9604 801E1684 24A5A7C4 */  addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 1F9608 801E1688 8CA30000 */  lw    $v1, ($a1)
/* 1F960C 801E168C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F9610 801E1690 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F9614 801E1694 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F9618 801E1698 8C620000 */  lw    $v0, ($v1)
/* 1F961C 801E169C 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 1F9620 801E16A0 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 1F9624 801E16A4 00021080 */  sll   $v0, $v0, 2
/* 1F9628 801E16A8 00E27021 */  addu  $t6, $a3, $v0
/* 1F962C 801E16AC 8DCF0000 */  lw    $t7, ($t6)
/* 1F9630 801E16B0 3C06800E */  lui   $a2, %hi(D_800E6BD0) # $a2, 0x800e
/* 1F9634 801E16B4 24C66BD0 */  addiu $a2, %lo(D_800E6BD0) # addiu $a2, $a2, 0x6bd0
/* 1F9638 801E16B8 000FC080 */  sll   $t8, $t7, 2
/* 1F963C 801E16BC 00D8C821 */  addu  $t9, $a2, $t8
/* 1F9640 801E16C0 C7240000 */  lwc1  $f4, ($t9)
/* 1F9644 801E16C4 00C24821 */  addu  $t1, $a2, $v0
/* 1F9648 801E16C8 3C08800E */  lui   $t0, %hi(D_800E5F90) # $t0, 0x800e
/* 1F964C 801E16CC E5240000 */  swc1  $f4, ($t1)
/* 1F9650 801E16D0 8C620000 */  lw    $v0, ($v1)
/* 1F9654 801E16D4 25085F90 */  addiu $t0, %lo(D_800E5F90) # addiu $t0, $t0, 0x5f90
/* 1F9658 801E16D8 24040002 */  li    $a0, 2
/* 1F965C 801E16DC 00021080 */  sll   $v0, $v0, 2
/* 1F9660 801E16E0 00E25021 */  addu  $t2, $a3, $v0
/* 1F9664 801E16E4 8D4B0000 */  lw    $t3, ($t2)
/* 1F9668 801E16E8 01027821 */  addu  $t7, $t0, $v0
/* 1F966C 801E16EC 000B6080 */  sll   $t4, $t3, 2
/* 1F9670 801E16F0 010C6821 */  addu  $t5, $t0, $t4
/* 1F9674 801E16F4 8DAE0000 */  lw    $t6, ($t5)
/* 1F9678 801E16F8 0C006291 */  jal   random_soft_s32_range
/* 1F967C 801E16FC ADEE0000 */   sw    $t6, ($t7)
/* 1F9680 801E1700 3C058005 */  lui   $a1, %hi(D_8004A7C4) # $a1, 0x8005
/* 1F9684 801E1704 1040000B */  beqz  $v0, .L801E1734_ovl13
/* 1F9688 801E1708 24A5A7C4 */   addiu $a1, %lo(D_8004A7C4) # addiu $a1, $a1, -0x583c
/* 1F968C 801E170C 8CA30000 */  lw    $v1, ($a1)
/* 1F9690 801E1710 3C06800E */  lui   $a2, %hi(D_800E6A10) # $a2, 0x800e
/* 1F9694 801E1714 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1F9698 801E1718 8C780000 */  lw    $t8, ($v1)
/* 1F969C 801E171C 44813000 */  mtc1  $at, $f6
/* 1F96A0 801E1720 24C66A10 */  addiu $a2, %lo(D_800E6A10) # addiu $a2, $a2, 0x6a10
/* 1F96A4 801E1724 0018C880 */  sll   $t9, $t8, 2
/* 1F96A8 801E1728 00D94821 */  addu  $t1, $a2, $t9
/* 1F96AC 801E172C 1000000A */  b     .L801E1758_ovl13
/* 1F96B0 801E1730 E5260000 */   swc1  $f6, ($t1)
.L801E1734_ovl13:
/* 1F96B4 801E1734 8CA30000 */  lw    $v1, ($a1)
/* 1F96B8 801E1738 3C01BF80 */  li    $at, 0xBF800000 # -1.000000
/* 1F96BC 801E173C 44814000 */  mtc1  $at, $f8
/* 1F96C0 801E1740 8C6A0000 */  lw    $t2, ($v1)
/* 1F96C4 801E1744 3C06800E */  lui   $a2, %hi(D_800E6A10) # $a2, 0x800e
/* 1F96C8 801E1748 24C66A10 */  addiu $a2, %lo(D_800E6A10) # addiu $a2, $a2, 0x6a10
/* 1F96CC 801E174C 000A5880 */  sll   $t3, $t2, 2
/* 1F96D0 801E1750 00CB6021 */  addu  $t4, $a2, $t3
/* 1F96D4 801E1754 E5880000 */  swc1  $f8, ($t4)
.L801E1758_ovl13:
/* 1F96D8 801E1758 8C6D0000 */  lw    $t5, ($v1)
/* 1F96DC 801E175C 44805000 */  mtc1  $zero, $f10
/* 1F96E0 801E1760 3C07800F */  lui   $a3, %hi(D_800EAC20) # $a3, 0x800f
/* 1F96E4 801E1764 24E7AC20 */  addiu $a3, %lo(D_800EAC20) # addiu $a3, $a3, -0x53e0
/* 1F96E8 801E1768 000D7080 */  sll   $t6, $t5, 2
/* 1F96EC 801E176C 00EE7821 */  addu  $t7, $a3, $t6
/* 1F96F0 801E1770 E5EA0000 */  swc1  $f10, ($t7)
/* 1F96F4 801E1774 8C620000 */  lw    $v0, ($v1)
/* 1F96F8 801E1778 3C04800E */  lui   $a0, %hi(D_800DFBD0) # $a0, 0x800e
/* 1F96FC 801E177C 2484FBD0 */  addiu $a0, %lo(D_800DFBD0) # addiu $a0, $a0, -0x430
/* 1F9700 801E1780 00021080 */  sll   $v0, $v0, 2
/* 1F9704 801E1784 0082C821 */  addu  $t9, $a0, $v0
/* 1F9708 801E1788 8F290000 */  lw    $t1, ($t9)
/* 1F970C 801E178C 00E2C021 */  addu  $t8, $a3, $v0
/* 1F9710 801E1790 C7100000 */  lwc1  $f16, ($t8)
/* 1F9714 801E1794 8D2A0004 */  lw    $t2, 4($t1)
/* 1F9718 801E1798 3C01801E */  lui   $at, %hi(D_801E5D84) # $at, 0x801e
/* 1F971C 801E179C E5500024 */  swc1  $f16, 0x24($t2)
/* 1F9720 801E17A0 8CAB0000 */  lw    $t3, ($a1)
/* 1F9724 801E17A4 C4325D84 */  lwc1  $f18, %lo(D_801E5D84)($at)
/* 1F9728 801E17A8 3C01801E */  lui   $at, %hi(D_801E5D88) # $at, 0x801e
/* 1F972C 801E17AC 8D6C0000 */  lw    $t4, ($t3)
/* 1F9730 801E17B0 000C6880 */  sll   $t5, $t4, 2
/* 1F9734 801E17B4 008D7021 */  addu  $t6, $a0, $t5
/* 1F9738 801E17B8 8DCF0000 */  lw    $t7, ($t6)
/* 1F973C 801E17BC 8DF80004 */  lw    $t8, 4($t7)
/* 1F9740 801E17C0 E7120034 */  swc1  $f18, 0x34($t8)
/* 1F9744 801E17C4 8CB90000 */  lw    $t9, ($a1)
/* 1F9748 801E17C8 C4245D88 */  lwc1  $f4, %lo(D_801E5D88)($at)
/* 1F974C 801E17CC 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1F9750 801E17D0 8F290000 */  lw    $t1, ($t9)
/* 1F9754 801E17D4 44814000 */  mtc1  $at, $f8
/* 1F9758 801E17D8 3C01800E */  lui   $at, 0x800e
/* 1F975C 801E17DC 00095080 */  sll   $t2, $t1, 2
/* 1F9760 801E17E0 008A5821 */  addu  $t3, $a0, $t2
/* 1F9764 801E17E4 8D6C0000 */  lw    $t4, ($t3)
/* 1F9768 801E17E8 2418000A */  li    $t8, 10
/* 1F976C 801E17EC 8D8D0008 */  lw    $t5, 8($t4)
/* 1F9770 801E17F0 E5A40030 */  swc1  $f4, 0x30($t5)
/* 1F9774 801E17F4 8CA30000 */  lw    $v1, ($a1)
/* 1F9778 801E17F8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F977C 801E17FC 8C620000 */  lw    $v0, ($v1)
/* 1F9780 801E1800 00021080 */  sll   $v0, $v0, 2
/* 1F9784 801E1804 00C27021 */  addu  $t6, $a2, $v0
/* 1F9788 801E1808 C5C60000 */  lwc1  $f6, ($t6)
/* 1F978C 801E180C 00220821 */  addu  $at, $at, $v0
/* 1F9790 801E1810 46083282 */  mul.s $f10, $f6, $f8
/* 1F9794 801E1814 E42A64D0 */  swc1  $f10, 0x64d0($at)
/* 1F9798 801E1818 8C620000 */  lw    $v0, ($v1)
/* 1F979C 801E181C 3C01801E */  lui   $at, %hi(D_801E5D8C) # $at, 0x801e
/* 1F97A0 801E1820 C4325D8C */  lwc1  $f18, %lo(D_801E5D8C)($at)
/* 1F97A4 801E1824 00021080 */  sll   $v0, $v0, 2
/* 1F97A8 801E1828 00C27821 */  addu  $t7, $a2, $v0
/* 1F97AC 801E182C C5F00000 */  lwc1  $f16, ($t7)
/* 1F97B0 801E1830 3C01800E */  lui   $at, 0x800e
/* 1F97B4 801E1834 00220821 */  addu  $at, $at, $v0
/* 1F97B8 801E1838 46128102 */  mul.s $f4, $f16, $f18
/* 1F97BC 801E183C E4246690 */  swc1  $f4, 0x6690($at)
/* 1F97C0 801E1840 8C790000 */  lw    $t9, ($v1)
/* 1F97C4 801E1844 3C01800E */  lui   $at, 0x800e
/* 1F97C8 801E1848 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F97CC 801E184C 00194880 */  sll   $t1, $t9, 2
/* 1F97D0 801E1850 00290821 */  addu  $at, $at, $t1
/* 1F97D4 801E1854 03E00008 */  jr    $ra
/* 1F97D8 801E1858 AC38DC50 */   sw    $t8, -0x23b0($at)

/* 1F97DC 801E185C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1F97E0 801E1860 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F97E4 801E1864 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 1F97E8 801E1868 AFB00018 */  sw    $s0, 0x18($sp)
/* 1F97EC 801E186C 8C500000 */  lw    $s0, ($v0)
/* 1F97F0 801E1870 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1F97F4 801E1874 AFA40020 */  sw    $a0, 0x20($sp)
/* 1F97F8 801E1878 8E0F0000 */  lw    $t7, ($s0)
/* 1F97FC 801E187C 3C01800E */  lui   $at, 0x800e
/* 1F9800 801E1880 240E0009 */  li    $t6, 9
/* 1F9804 801E1884 000FC080 */  sll   $t8, $t7, 2
/* 1F9808 801E1888 00380821 */  addu  $at, $at, $t8
/* 1F980C 801E188C AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1F9810 801E1890 8E080000 */  lw    $t0, ($s0)
/* 1F9814 801E1894 3C0A800E */  lui   $t2, 0x800e
/* 1F9818 801E1898 3C19801E */  lui   $t9, %hi(D_801D93A8) # $t9, 0x801e
/* 1F981C 801E189C 00084880 */  sll   $t1, $t0, 2
/* 1F9820 801E18A0 01495021 */  addu  $t2, $t2, $t1
/* 1F9824 801E18A4 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 1F9828 801E18A8 273993A8 */  addiu $t9, %lo(D_801D93A8) # addiu $t9, $t9, -0x6c58
/* 1F982C 801E18AC 3C04801E */  lui   $a0, %hi(D_801DAB04) # $a0, 0x801e
/* 1F9830 801E18B0 AD59008C */  sw    $t9, 0x8c($t2)
/* 1F9834 801E18B4 8C4B0000 */  lw    $t3, ($v0)
/* 1F9838 801E18B8 3C01800E */  lui   $at, 0x800e
/* 1F983C 801E18BC 2484AB04 */  addiu $a0, %lo(D_801DAB04) # addiu $a0, $a0, -0x54fc
/* 1F9840 801E18C0 8D6C0000 */  lw    $t4, ($t3)
/* 1F9844 801E18C4 000C6880 */  sll   $t5, $t4, 2
/* 1F9848 801E18C8 002D0821 */  addu  $at, $at, $t5
/* 1F984C 801E18CC 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1F9850 801E18D0 AC240490 */   sw    $a0, 0x490($at)
/* 1F9854 801E18D4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F9858 801E18D8 2442A7C4 */  addiu $v0, %lo(D_8004A7C4) # addiu $v0, $v0, -0x583c
/* 1F985C 801E18DC 8C4E0000 */  lw    $t6, ($v0)
/* 1F9860 801E18E0 3C09800E */  lui   $t1, 0x800e
/* 1F9864 801E18E4 3C0F801E */  lui   $t7, %hi(D_801DAE40) # $t7, 0x801e
/* 1F9868 801E18E8 8DD80000 */  lw    $t8, ($t6)
/* 1F986C 801E18EC 25EFAE40 */  addiu $t7, %lo(D_801DAE40) # addiu $t7, $t7, -0x51c0
/* 1F9870 801E18F0 3C01800F */  lui   $at, 0x800f
/* 1F9874 801E18F4 00184080 */  sll   $t0, $t8, 2
/* 1F9878 801E18F8 01284821 */  addu  $t1, $t1, $t0
/* 1F987C 801E18FC 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 1F9880 801E1900 3C040001 */  lui   $a0, (0x00010426 >> 16) # lui $a0, 1
/* 1F9884 801E1904 34840426 */  ori   $a0, (0x00010426 & 0xFFFF) # ori $a0, $a0, 0x426
/* 1F9888 801E1908 AD2F0098 */  sw    $t7, 0x98($t1)
/* 1F988C 801E190C 8C500000 */  lw    $s0, ($v0)
/* 1F9890 801E1910 8E190000 */  lw    $t9, ($s0)
/* 1F9894 801E1914 00195080 */  sll   $t2, $t9, 2
/* 1F9898 801E1918 002A0821 */  addu  $at, $at, $t2
/* 1F989C 801E191C AC209E20 */  sw    $zero, -0x61e0($at)
/* 1F98A0 801E1920 8E0B0000 */  lw    $t3, ($s0)
/* 1F98A4 801E1924 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1F98A8 801E1928 44812000 */  mtc1  $at, $f4
/* 1F98AC 801E192C 3C01800E */  lui   $at, 0x800e
/* 1F98B0 801E1930 000B6080 */  sll   $t4, $t3, 2
/* 1F98B4 801E1934 002C0821 */  addu  $at, $at, $t4
/* 1F98B8 801E1938 E4246850 */  swc1  $f4, 0x6850($at)
/* 1F98BC 801E193C 8E0D0000 */  lw    $t5, ($s0)
/* 1F98C0 801E1940 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1F98C4 801E1944 44813000 */  mtc1  $at, $f6
/* 1F98C8 801E1948 3C01800E */  lui   $at, 0x800e
/* 1F98CC 801E194C 000D7080 */  sll   $t6, $t5, 2
/* 1F98D0 801E1950 002E0821 */  addu  $at, $at, $t6
/* 1F98D4 801E1954 0C02A806 */  jal   func_800AA018_ovl13
/* 1F98D8 801E1958 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 1F98DC 801E195C 2410003C */  li    $s0, 60
.L801E1960_ovl13:
/* 1F98E0 801E1960 0C002DAF */  jal   func_8000B6BC
/* 1F98E4 801E1964 24040001 */   li    $a0, 1
/* 1F98E8 801E1968 2610FFFF */  addiu $s0, $s0, -1
/* 1F98EC 801E196C 1600FFFC */  bnez  $s0, .L801E1960_ovl13
/* 1F98F0 801E1970 00000000 */   nop   
/* 1F98F4 801E1974 0C02BC9F */  jal   func_800AF27C_ovl13
/* 1F98F8 801E1978 00000000 */   nop   
/* 1F98FC 801E197C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F9900 801E1980 8D08A7C4 */  lw    $t0, %lo(D_8004A7C4)($t0)
/* 1F9904 801E1984 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1F9908 801E1988 3C01800E */  lui   $at, 0x800e
/* 1F990C 801E198C 8D0F0000 */  lw    $t7, ($t0)
/* 1F9910 801E1990 2418000B */  li    $t8, 11
/* 1F9914 801E1994 8FB00018 */  lw    $s0, 0x18($sp)
/* 1F9918 801E1998 000F4880 */  sll   $t1, $t7, 2
/* 1F991C 801E199C 00290821 */  addu  $at, $at, $t1
/* 1F9920 801E19A0 AC38DC50 */  sw    $t8, -0x23b0($at)
/* 1F9924 801E19A4 03E00008 */  jr    $ra
/* 1F9928 801E19A8 27BD0020 */   addiu $sp, $sp, 0x20

/* 1F992C 801E19AC 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9930 801E19B0 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9934 801E19B4 8CE60000 */  lw    $a2, ($a3)
/* 1F9938 801E19B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F993C 801E19BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F9940 801E19C0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F9944 801E19C4 8CC30000 */  lw    $v1, ($a2)
/* 1F9948 801E19C8 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 1F994C 801E19CC 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 1F9950 801E19D0 00031880 */  sll   $v1, $v1, 2
/* 1F9954 801E19D4 00A37021 */  addu  $t6, $a1, $v1
/* 1F9958 801E19D8 44806000 */  mtc1  $zero, $f12
/* 1F995C 801E19DC C5C00000 */  lwc1  $f0, ($t6)
/* 1F9960 801E19E0 3C08800E */  lui   $t0, %hi(D_800E6690) # $t0, 0x800e
/* 1F9964 801E19E4 3C0B800F */  lui   $t3, %hi(D_800E9E20) # $t3, 0x800f
/* 1F9968 801E19E8 46006032 */  c.eq.s $f12, $f0
/* 1F996C 801E19EC 3C0F800E */  lui   $t7, 0x800e
/* 1F9970 801E19F0 25086690 */  addiu $t0, %lo(D_800E6690) # addiu $t0, $t0, 0x6690
/* 1F9974 801E19F4 256B9E20 */  addiu $t3, %lo(D_800E9E20) # addiu $t3, $t3, -0x61e0
/* 1F9978 801E19F8 45030014 */  bc1tl .L801E1A4C_ovl13
/* 1F997C 801E19FC 01E37821 */   addu  $t7, $t7, $v1
/* 1F9980 801E1A00 4600603C */  c.lt.s $f12, $f0
/* 1F9984 801E1A04 3C01C334 */  li    $at, 0xC3340000 # -180.000000
/* 1F9988 801E1A08 45020006 */  bc1fl .L801E1A24_ovl13
/* 1F998C 801E1A0C 44811000 */   mtc1  $at, $f2
/* 1F9990 801E1A10 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1F9994 801E1A14 44811000 */  mtc1  $at, $f2
/* 1F9998 801E1A18 10000003 */  b     .L801E1A28_ovl13
/* 1F999C 801E1A1C 00000000 */   nop   
/* 1F99A0 801E1A20 44811000 */  mtc1  $at, $f2
.L801E1A24_ovl13:
/* 1F99A4 801E1A24 00000000 */  nop   
.L801E1A28_ovl13:
/* 1F99A8 801E1A28 3C01801E */  lui   $at, %hi(D_801E5D90) # $at, 0x801e
/* 1F99AC 801E1A2C C4245D90 */  lwc1  $f4, %lo(D_801E5D90)($at)
/* 1F99B0 801E1A30 3C01800F */  lui   $at, 0x800f
/* 1F99B4 801E1A34 00230821 */  addu  $at, $at, $v1
/* 1F99B8 801E1A38 46022183 */  div.s $f6, $f4, $f2
/* 1F99BC 801E1A3C E426AC20 */  swc1  $f6, -0x53e0($at)
/* 1F99C0 801E1A40 8CC30000 */  lw    $v1, ($a2)
/* 1F99C4 801E1A44 00031880 */  sll   $v1, $v1, 2
/* 1F99C8 801E1A48 01E37821 */  addu  $t7, $t7, $v1
.L801E1A4C_ovl13:
/* 1F99CC 801E1A4C 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1F99D0 801E1A50 3C01801E */  lui   $at, %hi(D_801E5D94) # $at, 0x801e
/* 1F99D4 801E1A54 C4225D94 */  lwc1  $f2, %lo(D_801E5D94)($at)
/* 1F99D8 801E1A58 8DE20004 */  lw    $v0, 4($t7)
/* 1F99DC 801E1A5C 3C01800F */  lui   $at, 0x800f
/* 1F99E0 801E1A60 00230821 */  addu  $at, $at, $v1
/* 1F99E4 801E1A64 C42AAC20 */  lwc1  $f10, -0x53e0($at)
/* 1F99E8 801E1A68 C4480034 */  lwc1  $f8, 0x34($v0)
/* 1F99EC 801E1A6C 3C18800E */  lui   $t8, 0x800e
/* 1F99F0 801E1A70 3C01801E */  lui   $at, %hi(func_801E5D98) # $at, 0x801e
/* 1F99F4 801E1A74 460A4400 */  add.s $f16, $f8, $f10
/* 1F99F8 801E1A78 E4500034 */  swc1  $f16, 0x34($v0)
/* 1F99FC 801E1A7C 8CE60000 */  lw    $a2, ($a3)
/* 1F9A00 801E1A80 8CC30000 */  lw    $v1, ($a2)
/* 1F9A04 801E1A84 00031880 */  sll   $v1, $v1, 2
/* 1F9A08 801E1A88 0303C021 */  addu  $t8, $t8, $v1
/* 1F9A0C 801E1A8C 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 1F9A10 801E1A90 8F020004 */  lw    $v0, 4($t8)
/* 1F9A14 801E1A94 C4400034 */  lwc1  $f0, 0x34($v0)
/* 1F9A18 801E1A98 4600103C */  c.lt.s $f2, $f0
/* 1F9A1C 801E1A9C 00000000 */  nop   
/* 1F9A20 801E1AA0 4500000A */  bc1f  .L801E1ACC_ovl13
/* 1F9A24 801E1AA4 00000000 */   nop   
/* 1F9A28 801E1AA8 E4420034 */  swc1  $f2, 0x34($v0)
/* 1F9A2C 801E1AAC 8CE60000 */  lw    $a2, ($a3)
/* 1F9A30 801E1AB0 3C19800E */  lui   $t9, 0x800e
/* 1F9A34 801E1AB4 8CC30000 */  lw    $v1, ($a2)
/* 1F9A38 801E1AB8 00031880 */  sll   $v1, $v1, 2
/* 1F9A3C 801E1ABC 0323C821 */  addu  $t9, $t9, $v1
/* 1F9A40 801E1AC0 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 1F9A44 801E1AC4 8F220004 */  lw    $v0, 4($t9)
/* 1F9A48 801E1AC8 C4400034 */  lwc1  $f0, 0x34($v0)
.L801E1ACC_ovl13:
/* 1F9A4C 801E1ACC C4225D98 */  lwc1  $f2, %lo(func_801E5D98)($at)
/* 1F9A50 801E1AD0 4602003C */  c.lt.s $f0, $f2
/* 1F9A54 801E1AD4 00000000 */  nop   
/* 1F9A58 801E1AD8 45020006 */  bc1fl .L801E1AF4_ovl13
/* 1F9A5C 801E1ADC 00681021 */   addu  $v0, $v1, $t0
/* 1F9A60 801E1AE0 E4420034 */  swc1  $f2, 0x34($v0)
/* 1F9A64 801E1AE4 8CE60000 */  lw    $a2, ($a3)
/* 1F9A68 801E1AE8 8CC30000 */  lw    $v1, ($a2)
/* 1F9A6C 801E1AEC 00031880 */  sll   $v1, $v1, 2
/* 1F9A70 801E1AF0 00681021 */  addu  $v0, $v1, $t0
.L801E1AF4_ovl13:
/* 1F9A74 801E1AF4 C4400000 */  lwc1  $f0, ($v0)
/* 1F9A78 801E1AF8 00A35021 */  addu  $t2, $a1, $v1
/* 1F9A7C 801E1AFC 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1F9A80 801E1B00 460C003C */  c.lt.s $f0, $f12
/* 1F9A84 801E1B04 00000000 */  nop   
/* 1F9A88 801E1B08 4502001A */  bc1fl .L801E1B74_ovl13
/* 1F9A8C 801E1B0C C54A0000 */   lwc1  $f10, ($t2)
/* 1F9A90 801E1B10 3C01C080 */  li    $at, 0xC0800000 # -4.000000
/* 1F9A94 801E1B14 00A34821 */  addu  $t1, $a1, $v1
/* 1F9A98 801E1B18 C5240000 */  lwc1  $f4, ($t1)
/* 1F9A9C 801E1B1C 44819000 */  mtc1  $at, $f18
/* 1F9AA0 801E1B20 00000000 */  nop   
/* 1F9AA4 801E1B24 4612203E */  c.le.s $f4, $f18
/* 1F9AA8 801E1B28 00000000 */  nop   
/* 1F9AAC 801E1B2C 45020028 */  bc1fl .L801E1BD0_ovl13
/* 1F9AB0 801E1B30 006B2021 */   addu  $a0, $v1, $t3
/* 1F9AB4 801E1B34 44803000 */  mtc1  $zero, $f6
/* 1F9AB8 801E1B38 00000000 */  nop   
/* 1F9ABC 801E1B3C 4606003C */  c.lt.s $f0, $f6
/* 1F9AC0 801E1B40 00000000 */  nop   
/* 1F9AC4 801E1B44 45020007 */  bc1fl .L801E1B64_ovl13
/* 1F9AC8 801E1B48 E4400000 */   swc1  $f0, ($v0)
/* 1F9ACC 801E1B4C 46000207 */  neg.s $f8, $f0
/* 1F9AD0 801E1B50 E4480000 */  swc1  $f8, ($v0)
/* 1F9AD4 801E1B54 8CC30000 */  lw    $v1, ($a2)
/* 1F9AD8 801E1B58 1000001C */  b     .L801E1BCC_ovl13
/* 1F9ADC 801E1B5C 00031880 */   sll   $v1, $v1, 2
/* 1F9AE0 801E1B60 E4400000 */  swc1  $f0, ($v0)
.L801E1B64_ovl13:
/* 1F9AE4 801E1B64 8CC30000 */  lw    $v1, ($a2)
/* 1F9AE8 801E1B68 10000018 */  b     .L801E1BCC_ovl13
/* 1F9AEC 801E1B6C 00031880 */   sll   $v1, $v1, 2
/* 1F9AF0 801E1B70 C54A0000 */  lwc1  $f10, ($t2)
.L801E1B74_ovl13:
/* 1F9AF4 801E1B74 44818000 */  mtc1  $at, $f16
/* 1F9AF8 801E1B78 00000000 */  nop   
/* 1F9AFC 801E1B7C 460A803E */  c.le.s $f16, $f10
/* 1F9B00 801E1B80 00000000 */  nop   
/* 1F9B04 801E1B84 45020012 */  bc1fl .L801E1BD0_ovl13
/* 1F9B08 801E1B88 006B2021 */   addu  $a0, $v1, $t3
/* 1F9B0C 801E1B8C 44809000 */  mtc1  $zero, $f18
/* 1F9B10 801E1B90 00000000 */  nop   
/* 1F9B14 801E1B94 4612003C */  c.lt.s $f0, $f18
/* 1F9B18 801E1B98 00000000 */  nop   
/* 1F9B1C 801E1B9C 45020008 */  bc1fl .L801E1BC0_ovl13
/* 1F9B20 801E1BA0 46000207 */   neg.s $f8, $f0
/* 1F9B24 801E1BA4 46000107 */  neg.s $f4, $f0
/* 1F9B28 801E1BA8 46002187 */  neg.s $f6, $f4
/* 1F9B2C 801E1BAC E4460000 */  swc1  $f6, ($v0)
/* 1F9B30 801E1BB0 8CC30000 */  lw    $v1, ($a2)
/* 1F9B34 801E1BB4 10000005 */  b     .L801E1BCC_ovl13
/* 1F9B38 801E1BB8 00031880 */   sll   $v1, $v1, 2
/* 1F9B3C 801E1BBC 46000207 */  neg.s $f8, $f0
.L801E1BC0_ovl13:
/* 1F9B40 801E1BC0 E4480000 */  swc1  $f8, ($v0)
/* 1F9B44 801E1BC4 8CC30000 */  lw    $v1, ($a2)
/* 1F9B48 801E1BC8 00031880 */  sll   $v1, $v1, 2
.L801E1BCC_ovl13:
/* 1F9B4C 801E1BCC 006B2021 */  addu  $a0, $v1, $t3
.L801E1BD0_ovl13:
/* 1F9B50 801E1BD0 8C820000 */  lw    $v0, ($a0)
/* 1F9B54 801E1BD4 18400007 */  blez  $v0, .L801E1BF4_ovl13
/* 1F9B58 801E1BD8 244CFFFF */   addiu $t4, $v0, -1
/* 1F9B5C 801E1BDC AC8C0000 */  sw    $t4, ($a0)
/* 1F9B60 801E1BE0 8CC30000 */  lw    $v1, ($a2)
/* 1F9B64 801E1BE4 3C02800F */  lui   $v0, 0x800f
/* 1F9B68 801E1BE8 00031880 */  sll   $v1, $v1, 2
/* 1F9B6C 801E1BEC 00431021 */  addu  $v0, $v0, $v1
/* 1F9B70 801E1BF0 8C429E20 */  lw    $v0, -0x61e0($v0)
.L801E1BF4_ovl13:
/* 1F9B74 801E1BF4 1C40001C */  bgtz  $v0, .L801E1C68_ovl13
/* 1F9B78 801E1BF8 00000000 */   nop   
/* 1F9B7C 801E1BFC 0C006291 */  jal   random_soft_s32_range
/* 1F9B80 801E1C00 24040008 */   li    $a0, 8
/* 1F9B84 801E1C04 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9B88 801E1C08 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9B8C 801E1C0C 8CEE0000 */  lw    $t6, ($a3)
/* 1F9B90 801E1C10 00026880 */  sll   $t5, $v0, 2
/* 1F9B94 801E1C14 3C01801E */  lui   $at, 0x801e
/* 1F9B98 801E1C18 8DCF0000 */  lw    $t7, ($t6)
/* 1F9B9C 801E1C1C 002D0821 */  addu  $at, $at, $t5
/* 1F9BA0 801E1C20 C42A5B58 */  lwc1  $f10, 0x5b58($at)
/* 1F9BA4 801E1C24 3C01800E */  lui   $at, 0x800e
/* 1F9BA8 801E1C28 000FC080 */  sll   $t8, $t7, 2
/* 1F9BAC 801E1C2C 00380821 */  addu  $at, $at, $t8
/* 1F9BB0 801E1C30 2404001F */  li    $a0, 31
/* 1F9BB4 801E1C34 0C006291 */  jal   random_soft_s32_range
/* 1F9BB8 801E1C38 E42A3750 */   swc1  $f10, 0x3750($at)
/* 1F9BBC 801E1C3C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9BC0 801E1C40 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9BC4 801E1C44 8CE60000 */  lw    $a2, ($a3)
/* 1F9BC8 801E1C48 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 1F9BCC 801E1C4C 2459000F */  addiu $t9, $v0, 0xf
/* 1F9BD0 801E1C50 8CC80000 */  lw    $t0, ($a2)
/* 1F9BD4 801E1C54 00084880 */  sll   $t1, $t0, 2
/* 1F9BD8 801E1C58 00290821 */  addu  $at, $at, $t1
/* 1F9BDC 801E1C5C AC399E20 */  sw    $t9, -0x61e0($at)
/* 1F9BE0 801E1C60 8CC30000 */  lw    $v1, ($a2)
/* 1F9BE4 801E1C64 00031880 */  sll   $v1, $v1, 2
.L801E1C68_ovl13:
/* 1F9BE8 801E1C68 3C0A800F */  lui   $t2, 0x800f
/* 1F9BEC 801E1C6C 01435021 */  addu  $t2, $t2, $v1
/* 1F9BF0 801E1C70 8D4ABBE0 */  lw    $t2, -0x4420($t2)
/* 1F9BF4 801E1C74 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1F9BF8 801E1C78 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1F9BFC 801E1C7C 000A5880 */  sll   $t3, $t2, 2
/* 1F9C00 801E1C80 004B6021 */  addu  $t4, $v0, $t3
/* 1F9C04 801E1C84 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1F9C08 801E1C88 44818000 */  mtc1  $at, $f16
/* 1F9C0C 801E1C8C C5800000 */  lwc1  $f0, ($t4)
/* 1F9C10 801E1C90 00436821 */  addu  $t5, $v0, $v1
/* 1F9C14 801E1C94 C5A20000 */  lwc1  $f2, ($t5)
/* 1F9C18 801E1C98 46100480 */  add.s $f18, $f0, $f16
/* 1F9C1C 801E1C9C 3C0E800E */  lui   $t6, %hi(D_800E3750) # $t6, 0x800e
/* 1F9C20 801E1CA0 25CE3750 */  addiu $t6, %lo(D_800E3750) # addiu $t6, $t6, 0x3750
/* 1F9C24 801E1CA4 006E1021 */  addu  $v0, $v1, $t6
/* 1F9C28 801E1CA8 4602903C */  c.lt.s $f18, $f2
/* 1F9C2C 801E1CAC 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 1F9C30 801E1CB0 3C04800E */  lui   $a0, 0x800e
/* 1F9C34 801E1CB4 45020012 */  bc1fl .L801E1D00_ovl13
/* 1F9C38 801E1CB8 44818000 */   mtc1  $at, $f16
/* 1F9C3C 801E1CBC C4400000 */  lwc1  $f0, ($v0)
/* 1F9C40 801E1CC0 44802000 */  mtc1  $zero, $f4
/* 1F9C44 801E1CC4 00000000 */  nop   
/* 1F9C48 801E1CC8 4604003C */  c.lt.s $f0, $f4
/* 1F9C4C 801E1CCC 00000000 */  nop   
/* 1F9C50 801E1CD0 45020006 */  bc1fl .L801E1CEC_ovl13
/* 1F9C54 801E1CD4 46000287 */   neg.s $f10, $f0
/* 1F9C58 801E1CD8 46000187 */  neg.s $f6, $f0
/* 1F9C5C 801E1CDC 46003207 */  neg.s $f8, $f6
/* 1F9C60 801E1CE0 10000003 */  b     .L801E1CF0_ovl13
/* 1F9C64 801E1CE4 E4480000 */   swc1  $f8, ($v0)
/* 1F9C68 801E1CE8 46000287 */  neg.s $f10, $f0
.L801E1CEC_ovl13:
/* 1F9C6C 801E1CEC E44A0000 */  swc1  $f10, ($v0)
.L801E1CF0_ovl13:
/* 1F9C70 801E1CF0 8CC30000 */  lw    $v1, ($a2)
/* 1F9C74 801E1CF4 10000019 */  b     .L801E1D5C_ovl13
/* 1F9C78 801E1CF8 00031880 */   sll   $v1, $v1, 2
/* 1F9C7C 801E1CFC 44818000 */  mtc1  $at, $f16
.L801E1D00_ovl13:
/* 1F9C80 801E1D00 3C0F800E */  lui   $t7, %hi(D_800E3750) # $t7, 0x800e
/* 1F9C84 801E1D04 25EF3750 */  addiu $t7, %lo(D_800E3750) # addiu $t7, $t7, 0x3750
/* 1F9C88 801E1D08 46100481 */  sub.s $f18, $f0, $f16
/* 1F9C8C 801E1D0C 006F1021 */  addu  $v0, $v1, $t7
/* 1F9C90 801E1D10 4612103C */  c.lt.s $f2, $f18
/* 1F9C94 801E1D14 00000000 */  nop   
/* 1F9C98 801E1D18 45020011 */  bc1fl .L801E1D60_ovl13
/* 1F9C9C 801E1D1C 00832021 */   addu  $a0, $a0, $v1
/* 1F9CA0 801E1D20 C4400000 */  lwc1  $f0, ($v0)
/* 1F9CA4 801E1D24 44802000 */  mtc1  $zero, $f4
/* 1F9CA8 801E1D28 00000000 */  nop   
/* 1F9CAC 801E1D2C 4604003C */  c.lt.s $f0, $f4
/* 1F9CB0 801E1D30 00000000 */  nop   
/* 1F9CB4 801E1D34 45020007 */  bc1fl .L801E1D54_ovl13
/* 1F9CB8 801E1D38 E4400000 */   swc1  $f0, ($v0)
/* 1F9CBC 801E1D3C 46000187 */  neg.s $f6, $f0
/* 1F9CC0 801E1D40 E4460000 */  swc1  $f6, ($v0)
/* 1F9CC4 801E1D44 8CC30000 */  lw    $v1, ($a2)
/* 1F9CC8 801E1D48 10000004 */  b     .L801E1D5C_ovl13
/* 1F9CCC 801E1D4C 00031880 */   sll   $v1, $v1, 2
/* 1F9CD0 801E1D50 E4400000 */  swc1  $f0, ($v0)
.L801E1D54_ovl13:
/* 1F9CD4 801E1D54 8CC30000 */  lw    $v1, ($a2)
/* 1F9CD8 801E1D58 00031880 */  sll   $v1, $v1, 2
.L801E1D5C_ovl13:
/* 1F9CDC 801E1D5C 00832021 */  addu  $a0, $a0, $v1
.L801E1D60_ovl13:
/* 1F9CE0 801E1D60 0C06769C */  jal   func_8019DA70_ovl13
/* 1F9CE4 801E1D64 8C840D50 */   lw    $a0, 0xd50($a0)
/* 1F9CE8 801E1D68 44806000 */  mtc1  $zero, $f12
/* 1F9CEC 801E1D6C 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 1F9CF0 801E1D70 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9CF4 801E1D74 460C003C */  c.lt.s $f0, $f12
/* 1F9CF8 801E1D78 44814000 */  mtc1  $at, $f8
/* 1F9CFC 801E1D7C 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9D00 801E1D80 45020004 */  bc1fl .L801E1D94_ovl13
/* 1F9D04 801E1D84 46000086 */   mov.s $f2, $f0
/* 1F9D08 801E1D88 10000002 */  b     .L801E1D94_ovl13
/* 1F9D0C 801E1D8C 46000087 */   neg.s $f2, $f0
/* 1F9D10 801E1D90 46000086 */  mov.s $f2, $f0
.L801E1D94_ovl13:
/* 1F9D14 801E1D94 4602403C */  c.lt.s $f8, $f2
/* 1F9D18 801E1D98 00000000 */  nop   
/* 1F9D1C 801E1D9C 45020029 */  bc1fl .L801E1E44_ovl13
/* 1F9D20 801E1DA0 8CEE0000 */   lw    $t6, ($a3)
/* 1F9D24 801E1DA4 44805000 */  mtc1  $zero, $f10
/* 1F9D28 801E1DA8 00000000 */  nop   
/* 1F9D2C 801E1DAC 4600503C */  c.lt.s $f10, $f0
/* 1F9D30 801E1DB0 00000000 */  nop   
/* 1F9D34 801E1DB4 45020012 */  bc1fl .L801E1E00_ovl13
/* 1F9D38 801E1DB8 8CEA0000 */   lw    $t2, ($a3)
/* 1F9D3C 801E1DBC 8CF80000 */  lw    $t8, ($a3)
/* 1F9D40 801E1DC0 3C09800E */  lui   $t1, %hi(D_800E6690) # $t1, 0x800e
/* 1F9D44 801E1DC4 25296690 */  addiu $t1, %lo(D_800E6690) # addiu $t1, $t1, 0x6690
/* 1F9D48 801E1DC8 8F080000 */  lw    $t0, ($t8)
/* 1F9D4C 801E1DCC 0008C880 */  sll   $t9, $t0, 2
/* 1F9D50 801E1DD0 03291021 */  addu  $v0, $t9, $t1
/* 1F9D54 801E1DD4 C4400000 */  lwc1  $f0, ($v0)
/* 1F9D58 801E1DD8 460C003C */  c.lt.s $f0, $f12
/* 1F9D5C 801E1DDC 00000000 */  nop   
/* 1F9D60 801E1DE0 45000004 */  bc1f  .L801E1DF4_ovl13
/* 1F9D64 801E1DE4 00000000 */   nop   
/* 1F9D68 801E1DE8 46000407 */  neg.s $f16, $f0
/* 1F9D6C 801E1DEC 10000014 */  b     .L801E1E40_ovl13
/* 1F9D70 801E1DF0 E4500000 */   swc1  $f16, ($v0)
.L801E1DF4_ovl13:
/* 1F9D74 801E1DF4 10000012 */  b     .L801E1E40_ovl13
/* 1F9D78 801E1DF8 E4400000 */   swc1  $f0, ($v0)
/* 1F9D7C 801E1DFC 8CEA0000 */  lw    $t2, ($a3)
.L801E1E00_ovl13:
/* 1F9D80 801E1E00 3C0D800E */  lui   $t5, %hi(D_800E6690) # $t5, 0x800e
/* 1F9D84 801E1E04 25AD6690 */  addiu $t5, %lo(D_800E6690) # addiu $t5, $t5, 0x6690
/* 1F9D88 801E1E08 8D4B0000 */  lw    $t3, ($t2)
/* 1F9D8C 801E1E0C 000B6080 */  sll   $t4, $t3, 2
/* 1F9D90 801E1E10 018D1021 */  addu  $v0, $t4, $t5
/* 1F9D94 801E1E14 C4400000 */  lwc1  $f0, ($v0)
/* 1F9D98 801E1E18 460C003C */  c.lt.s $f0, $f12
/* 1F9D9C 801E1E1C 00000000 */  nop   
/* 1F9DA0 801E1E20 45020006 */  bc1fl .L801E1E3C_ovl13
/* 1F9DA4 801E1E24 46000187 */   neg.s $f6, $f0
/* 1F9DA8 801E1E28 46000487 */  neg.s $f18, $f0
/* 1F9DAC 801E1E2C 46009107 */  neg.s $f4, $f18
/* 1F9DB0 801E1E30 10000003 */  b     .L801E1E40_ovl13
/* 1F9DB4 801E1E34 E4440000 */   swc1  $f4, ($v0)
/* 1F9DB8 801E1E38 46000187 */  neg.s $f6, $f0
.L801E1E3C_ovl13:
/* 1F9DBC 801E1E3C E4460000 */  swc1  $f6, ($v0)
.L801E1E40_ovl13:
/* 1F9DC0 801E1E40 8CEE0000 */  lw    $t6, ($a3)
.L801E1E44_ovl13:
/* 1F9DC4 801E1E44 3C02800E */  lui   $v0, 0x800e
/* 1F9DC8 801E1E48 8DCF0000 */  lw    $t7, ($t6)
/* 1F9DCC 801E1E4C 000FC080 */  sll   $t8, $t7, 2
/* 1F9DD0 801E1E50 00581021 */  addu  $v0, $v0, $t8
/* 1F9DD4 801E1E54 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1F9DD8 801E1E58 8C44005C */  lw    $a0, 0x5c($v0)
/* 1F9DDC 801E1E5C 8C450010 */  lw    $a1, 0x10($v0)
/* 1F9DE0 801E1E60 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1F9DE4 801E1E64 8C460018 */   lw    $a2, 0x18($v0)
/* 1F9DE8 801E1E68 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1F9DEC 801E1E6C 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1F9DF0 801E1E70 8CE60000 */  lw    $a2, ($a3)
/* 1F9DF4 801E1E74 3C08800F */  lui   $t0, 0x800f
/* 1F9DF8 801E1E78 24010001 */  li    $at, 1
/* 1F9DFC 801E1E7C 8CC30000 */  lw    $v1, ($a2)
/* 1F9E00 801E1E80 2419000E */  li    $t9, 14
/* 1F9E04 801E1E84 3C04800E */  lui   $a0, 0x800e
/* 1F9E08 801E1E88 00031880 */  sll   $v1, $v1, 2
/* 1F9E0C 801E1E8C 01034021 */  addu  $t0, $t0, $v1
/* 1F9E10 801E1E90 8D0883E0 */  lw    $t0, -0x7c20($t0)
/* 1F9E14 801E1E94 1501000A */  bne   $t0, $at, .L801E1EC0_ovl13
/* 1F9E18 801E1E98 3C01800E */   lui   $at, 0x800e
/* 1F9E1C 801E1E9C 00230821 */  addu  $at, $at, $v1
/* 1F9E20 801E1EA0 AC39DC50 */  sw    $t9, -0x23b0($at)
/* 1F9E24 801E1EA4 8CC90000 */  lw    $t1, ($a2)
/* 1F9E28 801E1EA8 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1F9E2C 801E1EAC 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1F9E30 801E1EB0 00095080 */  sll   $t2, $t1, 2
/* 1F9E34 801E1EB4 008A2021 */  addu  $a0, $a0, $t2
/* 1F9E38 801E1EB8 0C02C7B2 */  jal   func_800B1EC8
/* 1F9E3C 801E1EBC 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801E1EC0_ovl13:
/* 1F9E40 801E1EC0 0C078E56 */  jal   func_801E3958_ovl13
/* 1F9E44 801E1EC4 8FA40018 */   lw    $a0, 0x18($sp)
/* 1F9E48 801E1EC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F9E4C 801E1ECC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F9E50 801E1ED0 03E00008 */  jr    $ra
/* 1F9E54 801E1ED4 00000000 */   nop   

/* 1F9E58 801E1ED8 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1F9E5C 801E1EDC 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1F9E60 801E1EE0 AFA40000 */  sw    $a0, ($sp)
/* 1F9E64 801E1EE4 3C01800F */  lui   $at, 0x800f
/* 1F9E68 801E1EE8 8C4E0000 */  lw    $t6, ($v0)
/* 1F9E6C 801E1EEC 3C08800E */  lui   $t0, %hi(D_800E64D0) # $t0, 0x800e
/* 1F9E70 801E1EF0 250864D0 */  addiu $t0, %lo(D_800E64D0) # addiu $t0, $t0, 0x64d0
/* 1F9E74 801E1EF4 000E7880 */  sll   $t7, $t6, 2
/* 1F9E78 801E1EF8 002F0821 */  addu  $at, $at, $t7
/* 1F9E7C 801E1EFC AC208920 */  sw    $zero, -0x76e0($at)
/* 1F9E80 801E1F00 8C580000 */  lw    $t8, ($v0)
/* 1F9E84 801E1F04 0018C880 */  sll   $t9, $t8, 2
/* 1F9E88 801E1F08 03281821 */  addu  $v1, $t9, $t0
/* 1F9E8C 801E1F0C C4640000 */  lwc1  $f4, ($v1)
/* 1F9E90 801E1F10 46002187 */  neg.s $f6, $f4
/* 1F9E94 801E1F14 03E00008 */  jr    $ra
/* 1F9E98 801E1F18 E4660000 */   swc1  $f6, ($v1)

/* 1F9E9C 801E1F1C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F9EA0 801E1F20 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1F9EA4 801E1F24 8D020000 */  lw    $v0, ($t0)
/* 1F9EA8 801E1F28 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1F9EAC 801E1F2C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1F9EB0 801E1F30 AFA40018 */  sw    $a0, 0x18($sp)
/* 1F9EB4 801E1F34 8C430000 */  lw    $v1, ($v0)
/* 1F9EB8 801E1F38 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1F9EBC 801E1F3C 24E79AA0 */  addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1F9EC0 801E1F40 00031880 */  sll   $v1, $v1, 2
/* 1F9EC4 801E1F44 00E32821 */  addu  $a1, $a3, $v1
/* 1F9EC8 801E1F48 8CA60000 */  lw    $a2, ($a1)
/* 1F9ECC 801E1F4C 24010001 */  li    $at, 1
/* 1F9ED0 801E1F50 240E0001 */  li    $t6, 1
/* 1F9ED4 801E1F54 50C00008 */  beql  $a2, $zero, .L801E1F78_ovl13
/* 1F9ED8 801E1F58 ACAE0000 */   sw    $t6, ($a1)
/* 1F9EDC 801E1F5C 10C1000C */  beq   $a2, $at, .L801E1F90_ovl13
/* 1F9EE0 801E1F60 24010002 */   li    $at, 2
/* 1F9EE4 801E1F64 50C10024 */  beql  $a2, $at, .L801E1FF8_ovl13
/* 1F9EE8 801E1F68 ACA00000 */   sw    $zero, ($a1)
/* 1F9EEC 801E1F6C 10000028 */  b     .L801E2010_ovl13
/* 1F9EF0 801E1F70 00066880 */   sll   $t5, $a2, 2
/* 1F9EF4 801E1F74 ACAE0000 */  sw    $t6, ($a1)
.L801E1F78_ovl13:
/* 1F9EF8 801E1F78 8C430000 */  lw    $v1, ($v0)
/* 1F9EFC 801E1F7C 3C06800F */  lui   $a2, 0x800f
/* 1F9F00 801E1F80 00031880 */  sll   $v1, $v1, 2
/* 1F9F04 801E1F84 00C33021 */  addu  $a2, $a2, $v1
/* 1F9F08 801E1F88 10000020 */  b     .L801E200C_ovl13
/* 1F9F0C 801E1F8C 8CC69AA0 */   lw    $a2, -0x6560($a2)
.L801E1F90_ovl13:
/* 1F9F10 801E1F90 0C006291 */  jal   random_soft_s32_range
/* 1F9F14 801E1F94 24040002 */   li    $a0, 2
/* 1F9F18 801E1F98 3C07800F */  lui   $a3, %hi(D_800E9AA0) # $a3, 0x800f
/* 1F9F1C 801E1F9C 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1F9F20 801E1FA0 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1F9F24 801E1FA4 14400007 */  bnez  $v0, .L801E1FC4_ovl13
/* 1F9F28 801E1FA8 24E79AA0 */   addiu $a3, %lo(D_800E9AA0) # addiu $a3, $a3, -0x6560
/* 1F9F2C 801E1FAC 8D020000 */  lw    $v0, ($t0)
/* 1F9F30 801E1FB0 8C4F0000 */  lw    $t7, ($v0)
/* 1F9F34 801E1FB4 000FC080 */  sll   $t8, $t7, 2
/* 1F9F38 801E1FB8 00F8C821 */  addu  $t9, $a3, $t8
/* 1F9F3C 801E1FBC 10000007 */  b     .L801E1FDC_ovl13
/* 1F9F40 801E1FC0 AF200000 */   sw    $zero, ($t9)
.L801E1FC4_ovl13:
/* 1F9F44 801E1FC4 8D020000 */  lw    $v0, ($t0)
/* 1F9F48 801E1FC8 24090002 */  li    $t1, 2
/* 1F9F4C 801E1FCC 8C4A0000 */  lw    $t2, ($v0)
/* 1F9F50 801E1FD0 000A5880 */  sll   $t3, $t2, 2
/* 1F9F54 801E1FD4 00EB6021 */  addu  $t4, $a3, $t3
/* 1F9F58 801E1FD8 AD890000 */  sw    $t1, ($t4)
.L801E1FDC_ovl13:
/* 1F9F5C 801E1FDC 8C430000 */  lw    $v1, ($v0)
/* 1F9F60 801E1FE0 3C06800F */  lui   $a2, 0x800f
/* 1F9F64 801E1FE4 00031880 */  sll   $v1, $v1, 2
/* 1F9F68 801E1FE8 00C33021 */  addu  $a2, $a2, $v1
/* 1F9F6C 801E1FEC 10000007 */  b     .L801E200C_ovl13
/* 1F9F70 801E1FF0 8CC69AA0 */   lw    $a2, -0x6560($a2)
/* 1F9F74 801E1FF4 ACA00000 */  sw    $zero, ($a1)
.L801E1FF8_ovl13:
/* 1F9F78 801E1FF8 8C430000 */  lw    $v1, ($v0)
/* 1F9F7C 801E1FFC 3C06800F */  lui   $a2, 0x800f
/* 1F9F80 801E2000 00031880 */  sll   $v1, $v1, 2
/* 1F9F84 801E2004 00C33021 */  addu  $a2, $a2, $v1
/* 1F9F88 801E2008 8CC69AA0 */  lw    $a2, -0x6560($a2)
.L801E200C_ovl13:
/* 1F9F8C 801E200C 00066880 */  sll   $t5, $a2, 2
.L801E2010_ovl13:
/* 1F9F90 801E2010 3C0E801E */  lui   $t6, 0x801e
/* 1F9F94 801E2014 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1F9F98 801E2018 01CD7021 */  addu  $t6, $t6, $t5
/* 1F9F9C 801E201C 8DCE5BF0 */  lw    $t6, 0x5bf0($t6)
/* 1F9FA0 801E2020 3C01800E */  lui   $at, 0x800e
/* 1F9FA4 801E2024 00230821 */  addu  $at, $at, $v1
/* 1F9FA8 801E2028 27BD0018 */  addiu $sp, $sp, 0x18
/* 1F9FAC 801E202C 03E00008 */  jr    $ra
/* 1F9FB0 801E2030 AC2EDC50 */   sw    $t6, -0x23b0($at)

/* 1F9FB4 801E2034 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 1F9FB8 801E2038 AFB10020 */  sw    $s1, 0x20($sp)
/* 1F9FBC 801E203C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1F9FC0 801E2040 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1F9FC4 801E2044 8E230000 */  lw    $v1, ($s1)
/* 1F9FC8 801E2048 AFBF002C */  sw    $ra, 0x2c($sp)
/* 1F9FCC 801E204C AFB30028 */  sw    $s3, 0x28($sp)
/* 1F9FD0 801E2050 AFB20024 */  sw    $s2, 0x24($sp)
/* 1F9FD4 801E2054 AFB0001C */  sw    $s0, 0x1c($sp)
/* 1F9FD8 801E2058 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1F9FDC 801E205C AFA40030 */  sw    $a0, 0x30($sp)
/* 1F9FE0 801E2060 8C6F0000 */  lw    $t7, ($v1)
/* 1F9FE4 801E2064 3C01800E */  lui   $at, 0x800e
/* 1F9FE8 801E2068 240E000A */  li    $t6, 10
/* 1F9FEC 801E206C 000FC080 */  sll   $t8, $t7, 2
/* 1F9FF0 801E2070 00380821 */  addu  $at, $at, $t8
/* 1F9FF4 801E2074 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1F9FF8 801E2078 8C680000 */  lw    $t0, ($v1)
/* 1F9FFC 801E207C 3C10800E */  lui   $s0, %hi(D_800E1B50) # $s0, 0x800e
/* 1FA000 801E2080 26101B50 */  addiu $s0, %lo(D_800E1B50) # addiu $s0, $s0, 0x1b50
/* 1FA004 801E2084 00084880 */  sll   $t1, $t0, 2
/* 1FA008 801E2088 02095021 */  addu  $t2, $s0, $t1
/* 1FA00C 801E208C 8D4B0000 */  lw    $t3, ($t2)
/* 1FA010 801E2090 3C19801E */  lui   $t9, %hi(D_801D93A8) # $t9, 0x801e
/* 1FA014 801E2094 273993A8 */  addiu $t9, %lo(D_801D93A8) # addiu $t9, $t9, -0x6c58
/* 1FA018 801E2098 AD79008C */  sw    $t9, 0x8c($t3)
/* 1FA01C 801E209C 8E2C0000 */  lw    $t4, ($s1)
/* 1FA020 801E20A0 3C04801E */  lui   $a0, %hi(D_801DAB04) # $a0, 0x801e
/* 1FA024 801E20A4 3C01800E */  lui   $at, 0x800e
/* 1FA028 801E20A8 8D8D0000 */  lw    $t5, ($t4)
/* 1FA02C 801E20AC 2484AB04 */  addiu $a0, %lo(D_801DAB04) # addiu $a0, $a0, -0x54fc
/* 1FA030 801E20B0 000D7880 */  sll   $t7, $t5, 2
/* 1FA034 801E20B4 002F0821 */  addu  $at, $at, $t7
/* 1FA038 801E20B8 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1FA03C 801E20BC AC240490 */   sw    $a0, 0x490($at)
/* 1FA040 801E20C0 8E380000 */  lw    $t8, ($s1)
/* 1FA044 801E20C4 3C0E801E */  lui   $t6, %hi(D_801DAE1C) # $t6, 0x801e
/* 1FA048 801E20C8 25CEAE1C */  addiu $t6, %lo(D_801DAE1C) # addiu $t6, $t6, -0x51e4
/* 1FA04C 801E20CC 8F080000 */  lw    $t0, ($t8)
/* 1FA050 801E20D0 3C01800F */  lui   $at, 0x800f
/* 1FA054 801E20D4 240B0001 */  li    $t3, 1
/* 1FA058 801E20D8 00084880 */  sll   $t1, $t0, 2
/* 1FA05C 801E20DC 02095021 */  addu  $t2, $s0, $t1
/* 1FA060 801E20E0 8D590000 */  lw    $t9, ($t2)
/* 1FA064 801E20E4 3C040001 */  lui   $a0, (0x00010426 >> 16) # lui $a0, 1
/* 1FA068 801E20E8 34840426 */  ori   $a0, (0x00010426 & 0xFFFF) # ori $a0, $a0, 0x426
/* 1FA06C 801E20EC AF2E0098 */  sw    $t6, 0x98($t9)
/* 1FA070 801E20F0 8E2C0000 */  lw    $t4, ($s1)
/* 1FA074 801E20F4 8D8D0000 */  lw    $t5, ($t4)
/* 1FA078 801E20F8 000D7880 */  sll   $t7, $t5, 2
/* 1FA07C 801E20FC 002F0821 */  addu  $at, $at, $t7
/* 1FA080 801E2100 0C02A806 */  jal   func_800AA018_ovl13
/* 1FA084 801E2104 AC2BA360 */   sw    $t3, -0x5ca0($at)
/* 1FA088 801E2108 8E230000 */  lw    $v1, ($s1)
/* 1FA08C 801E210C 3C01801E */  lui   $at, %hi(D_801E5D9C) # $at, 0x801e
/* 1FA090 801E2110 C4205D9C */  lwc1  $f0, %lo(D_801E5D9C)($at)
/* 1FA094 801E2114 8C780000 */  lw    $t8, ($v1)
/* 1FA098 801E2118 3C01800E */  lui   $at, 0x800e
/* 1FA09C 801E211C 3C13800E */  lui   $s3, %hi(D_800E6690) # $s3, 0x800e
/* 1FA0A0 801E2120 00184080 */  sll   $t0, $t8, 2
/* 1FA0A4 801E2124 00280821 */  addu  $at, $at, $t0
/* 1FA0A8 801E2128 E4203750 */  swc1  $f0, 0x3750($at)
/* 1FA0AC 801E212C 8C690000 */  lw    $t1, ($v1)
/* 1FA0B0 801E2130 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 1FA0B4 801E2134 44812000 */  mtc1  $at, $f4
/* 1FA0B8 801E2138 3C01800E */  lui   $at, 0x800e
/* 1FA0BC 801E213C 00095080 */  sll   $t2, $t1, 2
/* 1FA0C0 801E2140 002A0821 */  addu  $at, $at, $t2
/* 1FA0C4 801E2144 E4243C90 */  swc1  $f4, 0x3c90($at)
/* 1FA0C8 801E2148 8C620000 */  lw    $v0, ($v1)
/* 1FA0CC 801E214C 3C01800E */  lui   $at, 0x800e
/* 1FA0D0 801E2150 26736690 */  addiu $s3, %lo(D_800E6690) # addiu $s3, $s3, 0x6690
/* 1FA0D4 801E2154 00021080 */  sll   $v0, $v0, 2
/* 1FA0D8 801E2158 00220821 */  addu  $at, $at, $v0
/* 1FA0DC 801E215C C42664D0 */  lwc1  $f6, 0x64d0($at)
/* 1FA0E0 801E2160 02627021 */  addu  $t6, $s3, $v0
/* 1FA0E4 801E2164 2404000A */  li    $a0, 10
/* 1FA0E8 801E2168 46003202 */  mul.s $f8, $f6, $f0
/* 1FA0EC 801E216C 0C002DAF */  jal   func_8000B6BC
/* 1FA0F0 801E2170 E5C80000 */   swc1  $f8, ($t6)
/* 1FA0F4 801E2174 8E230000 */  lw    $v1, ($s1)
/* 1FA0F8 801E2178 44805000 */  mtc1  $zero, $f10
/* 1FA0FC 801E217C 3C014382 */  li    $at, 0x43820000 # 260.000000
/* 1FA100 801E2180 8C790000 */  lw    $t9, ($v1)
/* 1FA104 801E2184 4481A000 */  mtc1  $at, $f20
/* 1FA108 801E2188 3C01800E */  lui   $at, 0x800e
/* 1FA10C 801E218C 00196080 */  sll   $t4, $t9, 2
/* 1FA110 801E2190 026C6821 */  addu  $t5, $s3, $t4
/* 1FA114 801E2194 E5AA0000 */  swc1  $f10, ($t5)
/* 1FA118 801E2198 8C620000 */  lw    $v0, ($v1)
/* 1FA11C 801E219C 3C12800F */  lui   $s2, %hi(D_800EBBE0) # $s2, 0x800f
/* 1FA120 801E21A0 2652BBE0 */  addiu $s2, %lo(D_800EBBE0) # addiu $s2, $s2, -0x4420
/* 1FA124 801E21A4 00021080 */  sll   $v0, $v0, 2
/* 1FA128 801E21A8 02625821 */  addu  $t3, $s3, $v0
/* 1FA12C 801E21AC C5700000 */  lwc1  $f16, ($t3)
/* 1FA130 801E21B0 00220821 */  addu  $at, $at, $v0
/* 1FA134 801E21B4 3C10800E */  lui   $s0, %hi(D_800E2790) # $s0, 0x800e
/* 1FA138 801E21B8 E43064D0 */  swc1  $f16, 0x64d0($at)
/* 1FA13C 801E21BC 8C6F0000 */  lw    $t7, ($v1)
/* 1FA140 801E21C0 3C01801E */  lui   $at, %hi(D_801E5DA0) # $at, 0x801e
/* 1FA144 801E21C4 C4325DA0 */  lwc1  $f18, %lo(D_801E5DA0)($at)
/* 1FA148 801E21C8 3C01800E */  lui   $at, 0x800e
/* 1FA14C 801E21CC 000FC080 */  sll   $t8, $t7, 2
/* 1FA150 801E21D0 00380821 */  addu  $at, $at, $t8
/* 1FA154 801E21D4 E4326850 */  swc1  $f18, 0x6850($at)
/* 1FA158 801E21D8 8C620000 */  lw    $v0, ($v1)
/* 1FA15C 801E21DC 26102790 */  addiu $s0, %lo(D_800E2790) # addiu $s0, $s0, 0x2790
/* 1FA160 801E21E0 00021080 */  sll   $v0, $v0, 2
/* 1FA164 801E21E4 02424021 */  addu  $t0, $s2, $v0
/* 1FA168 801E21E8 8D090000 */  lw    $t1, ($t0)
/* 1FA16C 801E21EC 0202C821 */  addu  $t9, $s0, $v0
/* 1FA170 801E21F0 C7280000 */  lwc1  $f8, ($t9)
/* 1FA174 801E21F4 00095080 */  sll   $t2, $t1, 2
/* 1FA178 801E21F8 020A7021 */  addu  $t6, $s0, $t2
/* 1FA17C 801E21FC C5C40000 */  lwc1  $f4, ($t6)
/* 1FA180 801E2200 46142181 */  sub.s $f6, $f4, $f20
/* 1FA184 801E2204 4608303C */  c.lt.s $f6, $f8
/* 1FA188 801E2208 00000000 */  nop   
/* 1FA18C 801E220C 45000012 */  bc1f  .L801E2258_ovl13
/* 1FA190 801E2210 00000000 */   nop   
.L801E2214_ovl13:
/* 1FA194 801E2214 0C002DAF */  jal   func_8000B6BC
/* 1FA198 801E2218 24040001 */   li    $a0, 1
/* 1FA19C 801E221C 8E2C0000 */  lw    $t4, ($s1)
/* 1FA1A0 801E2220 8D820000 */  lw    $v0, ($t4)
/* 1FA1A4 801E2224 00021080 */  sll   $v0, $v0, 2
/* 1FA1A8 801E2228 02426821 */  addu  $t5, $s2, $v0
/* 1FA1AC 801E222C 8DAB0000 */  lw    $t3, ($t5)
/* 1FA1B0 801E2230 02024021 */  addu  $t0, $s0, $v0
/* 1FA1B4 801E2234 C5120000 */  lwc1  $f18, ($t0)
/* 1FA1B8 801E2238 000B7880 */  sll   $t7, $t3, 2
/* 1FA1BC 801E223C 020FC021 */  addu  $t8, $s0, $t7
/* 1FA1C0 801E2240 C70A0000 */  lwc1  $f10, ($t8)
/* 1FA1C4 801E2244 46145401 */  sub.s $f16, $f10, $f20
/* 1FA1C8 801E2248 4612803C */  c.lt.s $f16, $f18
/* 1FA1CC 801E224C 00000000 */  nop   
/* 1FA1D0 801E2250 4501FFF0 */  bc1t  .L801E2214_ovl13
/* 1FA1D4 801E2254 00000000 */   nop   
.L801E2258_ovl13:
/* 1FA1D8 801E2258 0C029D9E */  jal   func_800A7678
/* 1FA1DC 801E225C 240401A1 */   li    $a0, 417
/* 1FA1E0 801E2260 8E230000 */  lw    $v1, ($s1)
/* 1FA1E4 801E2264 3C01800F */  lui   $at, 0x800f
/* 1FA1E8 801E2268 3C13800E */  lui   $s3, %hi(D_800DFBD0) # $s3, 0x800e
/* 1FA1EC 801E226C 8C690000 */  lw    $t1, ($v1)
/* 1FA1F0 801E2270 2673FBD0 */  addiu $s3, %lo(D_800DFBD0) # addiu $s3, $s3, -0x430
/* 1FA1F4 801E2274 24040002 */  li    $a0, 2
/* 1FA1F8 801E2278 00095080 */  sll   $t2, $t1, 2
/* 1FA1FC 801E227C 002A0821 */  addu  $at, $at, $t2
/* 1FA200 801E2280 AC20A360 */  sw    $zero, -0x5ca0($at)
/* 1FA204 801E2284 8C6E0000 */  lw    $t6, ($v1)
/* 1FA208 801E2288 3C01801E */  lui   $at, %hi(D_801E5DA4) # $at, 0x801e
/* 1FA20C 801E228C C4245DA4 */  lwc1  $f4, %lo(D_801E5DA4)($at)
/* 1FA210 801E2290 000EC880 */  sll   $t9, $t6, 2
/* 1FA214 801E2294 02796021 */  addu  $t4, $s3, $t9
/* 1FA218 801E2298 8D8D0000 */  lw    $t5, ($t4)
/* 1FA21C 801E229C 8DAB0004 */  lw    $t3, 4($t5)
/* 1FA220 801E22A0 0C006291 */  jal   random_soft_s32_range
/* 1FA224 801E22A4 E5640034 */   swc1  $f4, 0x34($t3)
/* 1FA228 801E22A8 10400005 */  beqz  $v0, .L801E22C0_ovl13
/* 1FA22C 801E22AC 3C01C190 */   lui   $at, 0xc190
/* 1FA230 801E22B0 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 1FA234 801E22B4 44810000 */  mtc1  $at, $f0
/* 1FA238 801E22B8 10000004 */  b     .L801E22CC_ovl13
/* 1FA23C 801E22BC 3C014120 */   li    $at, 0x41200000 # 10.000000
.L801E22C0_ovl13:
/* 1FA240 801E22C0 44810000 */  mtc1  $at, $f0
/* 1FA244 801E22C4 00000000 */  nop   
/* 1FA248 801E22C8 3C014120 */  li    $at, 0x41200000 # 10.000000
.L801E22CC_ovl13:
/* 1FA24C 801E22CC 44811000 */  mtc1  $at, $f2
/* 1FA250 801E22D0 3C0143FA */  li    $at, 0x43FA0000 # 500.000000
/* 1FA254 801E22D4 4481A000 */  mtc1  $at, $f20
/* 1FA258 801E22D8 3C01801E */  lui   $at, %hi(D_801E5DA8) # $at, 0x801e
/* 1FA25C 801E22DC C4265DA8 */  lwc1  $f6, %lo(D_801E5DA8)($at)
/* 1FA260 801E22E0 8E230000 */  lw    $v1, ($s1)
/* 1FA264 801E22E4 3C01800F */  lui   $at, 0x800f
/* 1FA268 801E22E8 46003203 */  div.s $f8, $f6, $f0
/* 1FA26C 801E22EC 8C6F0000 */  lw    $t7, ($v1)
/* 1FA270 801E22F0 44805000 */  mtc1  $zero, $f10
/* 1FA274 801E22F4 44808000 */  mtc1  $zero, $f16
/* 1FA278 801E22F8 000FC080 */  sll   $t8, $t7, 2
/* 1FA27C 801E22FC 00380821 */  addu  $at, $at, $t8
/* 1FA280 801E2300 E428AC20 */  swc1  $f8, -0x53e0($at)
/* 1FA284 801E2304 8C680000 */  lw    $t0, ($v1)
/* 1FA288 801E2308 3C01800E */  lui   $at, 0x800e
/* 1FA28C 801E230C 00084880 */  sll   $t1, $t0, 2
/* 1FA290 801E2310 00290821 */  addu  $at, $at, $t1
/* 1FA294 801E2314 E4223210 */  swc1  $f2, 0x3210($at)
/* 1FA298 801E2318 8C6A0000 */  lw    $t2, ($v1)
/* 1FA29C 801E231C 3C01800E */  lui   $at, 0x800e
/* 1FA2A0 801E2320 000A7080 */  sll   $t6, $t2, 2
/* 1FA2A4 801E2324 002E0821 */  addu  $at, $at, $t6
/* 1FA2A8 801E2328 E42A3750 */  swc1  $f10, 0x3750($at)
/* 1FA2AC 801E232C 8C790000 */  lw    $t9, ($v1)
/* 1FA2B0 801E2330 3C01800E */  lui   $at, 0x800e
/* 1FA2B4 801E2334 00196080 */  sll   $t4, $t9, 2
/* 1FA2B8 801E2338 002C0821 */  addu  $at, $at, $t4
/* 1FA2BC 801E233C E4223C90 */  swc1  $f2, 0x3c90($at)
/* 1FA2C0 801E2340 8C6D0000 */  lw    $t5, ($v1)
/* 1FA2C4 801E2344 3C01801E */  lui   $at, %hi(D_801E5DAC) # $at, 0x801e
/* 1FA2C8 801E2348 000D5880 */  sll   $t3, $t5, 2
/* 1FA2CC 801E234C 026B7821 */  addu  $t7, $s3, $t3
/* 1FA2D0 801E2350 8DF80000 */  lw    $t8, ($t7)
/* 1FA2D4 801E2354 8F080004 */  lw    $t0, 4($t8)
/* 1FA2D8 801E2358 E5100024 */  swc1  $f16, 0x24($t0)
/* 1FA2DC 801E235C 8E290000 */  lw    $t1, ($s1)
/* 1FA2E0 801E2360 C4325DAC */  lwc1  $f18, %lo(D_801E5DAC)($at)
/* 1FA2E4 801E2364 8D2A0000 */  lw    $t2, ($t1)
/* 1FA2E8 801E2368 000A7080 */  sll   $t6, $t2, 2
/* 1FA2EC 801E236C 026EC821 */  addu  $t9, $s3, $t6
/* 1FA2F0 801E2370 8F2C0000 */  lw    $t4, ($t9)
/* 1FA2F4 801E2374 8D8D0008 */  lw    $t5, 8($t4)
/* 1FA2F8 801E2378 E5B20030 */  swc1  $f18, 0x30($t5)
/* 1FA2FC 801E237C 8E230000 */  lw    $v1, ($s1)
/* 1FA300 801E2380 8C620000 */  lw    $v0, ($v1)
/* 1FA304 801E2384 00021080 */  sll   $v0, $v0, 2
/* 1FA308 801E2388 02427821 */  addu  $t7, $s2, $v0
/* 1FA30C 801E238C 8DF80000 */  lw    $t8, ($t7)
/* 1FA310 801E2390 02025821 */  addu  $t3, $s0, $v0
/* 1FA314 801E2394 C5640000 */  lwc1  $f4, ($t3)
/* 1FA318 801E2398 00184080 */  sll   $t0, $t8, 2
/* 1FA31C 801E239C 02084821 */  addu  $t1, $s0, $t0
/* 1FA320 801E23A0 C5260000 */  lwc1  $f6, ($t1)
/* 1FA324 801E23A4 46143200 */  add.s $f8, $f6, $f20
/* 1FA328 801E23A8 4608203C */  c.lt.s $f4, $f8
/* 1FA32C 801E23AC 00000000 */  nop   
/* 1FA330 801E23B0 45020013 */  bc1fl .L801E2400_ovl13
/* 1FA334 801E23B4 3C01442A */   lui   $at, 0x442a
.L801E23B8_ovl13:
/* 1FA338 801E23B8 0C002DAF */  jal   func_8000B6BC
/* 1FA33C 801E23BC 24040001 */   li    $a0, 1
/* 1FA340 801E23C0 8E230000 */  lw    $v1, ($s1)
/* 1FA344 801E23C4 8C620000 */  lw    $v0, ($v1)
/* 1FA348 801E23C8 00021080 */  sll   $v0, $v0, 2
/* 1FA34C 801E23CC 02427021 */  addu  $t6, $s2, $v0
/* 1FA350 801E23D0 8DD90000 */  lw    $t9, ($t6)
/* 1FA354 801E23D4 02025021 */  addu  $t2, $s0, $v0
/* 1FA358 801E23D8 C54A0000 */  lwc1  $f10, ($t2)
/* 1FA35C 801E23DC 00196080 */  sll   $t4, $t9, 2
/* 1FA360 801E23E0 020C6821 */  addu  $t5, $s0, $t4
/* 1FA364 801E23E4 C5B00000 */  lwc1  $f16, ($t5)
/* 1FA368 801E23E8 46148480 */  add.s $f18, $f16, $f20
/* 1FA36C 801E23EC 4612503C */  c.lt.s $f10, $f18
/* 1FA370 801E23F0 00000000 */  nop   
/* 1FA374 801E23F4 4501FFF0 */  bc1t  .L801E23B8_ovl13
/* 1FA378 801E23F8 00000000 */   nop   
/* 1FA37C 801E23FC 3C01442A */  li    $at, 0x442A0000 # 680.000000
.L801E2400_ovl13:
/* 1FA380 801E2400 4481A000 */  mtc1  $at, $f20
/* 1FA384 801E2404 3C01800F */  lui   $at, 0x800f
/* 1FA388 801E2408 00220821 */  addu  $at, $at, $v0
/* 1FA38C 801E240C 240B0001 */  li    $t3, 1
/* 1FA390 801E2410 AC2BA360 */  sw    $t3, -0x5ca0($at)
/* 1FA394 801E2414 8C6F0000 */  lw    $t7, ($v1)
/* 1FA398 801E2418 3C01C47A */  li    $at, 0xC47A0000 # -1000.000000
/* 1FA39C 801E241C 44813000 */  mtc1  $at, $f6
/* 1FA3A0 801E2420 000FC080 */  sll   $t8, $t7, 2
/* 1FA3A4 801E2424 02784021 */  addu  $t0, $s3, $t8
/* 1FA3A8 801E2428 8D090000 */  lw    $t1, ($t0)
/* 1FA3AC 801E242C 3C01801E */  lui   $at, %hi(D_801E5DB0) # $at, 0x801e
/* 1FA3B0 801E2430 44808000 */  mtc1  $zero, $f16
/* 1FA3B4 801E2434 8D2A0004 */  lw    $t2, 4($t1)
/* 1FA3B8 801E2438 44809000 */  mtc1  $zero, $f18
/* 1FA3BC 801E243C E5460024 */  swc1  $f6, 0x24($t2)
/* 1FA3C0 801E2440 8E2E0000 */  lw    $t6, ($s1)
/* 1FA3C4 801E2444 C4245DB0 */  lwc1  $f4, %lo(D_801E5DB0)($at)
/* 1FA3C8 801E2448 3C01801E */  lui   $at, %hi(D_801E5DB4) # $at, 0x801e
/* 1FA3CC 801E244C 8DD90000 */  lw    $t9, ($t6)
/* 1FA3D0 801E2450 00196080 */  sll   $t4, $t9, 2
/* 1FA3D4 801E2454 026C6821 */  addu  $t5, $s3, $t4
/* 1FA3D8 801E2458 8DAB0000 */  lw    $t3, ($t5)
/* 1FA3DC 801E245C 8D6F0008 */  lw    $t7, 8($t3)
/* 1FA3E0 801E2460 E5E40030 */  swc1  $f4, 0x30($t7)
/* 1FA3E4 801E2464 8E380000 */  lw    $t8, ($s1)
/* 1FA3E8 801E2468 C4285DB4 */  lwc1  $f8, %lo(D_801E5DB4)($at)
/* 1FA3EC 801E246C 3C01800F */  lui   $at, 0x800f
/* 1FA3F0 801E2470 8F080000 */  lw    $t0, ($t8)
/* 1FA3F4 801E2474 00084880 */  sll   $t1, $t0, 2
/* 1FA3F8 801E2478 02695021 */  addu  $t2, $s3, $t1
/* 1FA3FC 801E247C 8D4E0000 */  lw    $t6, ($t2)
/* 1FA400 801E2480 8DD90004 */  lw    $t9, 4($t6)
/* 1FA404 801E2484 E7280034 */  swc1  $f8, 0x34($t9)
/* 1FA408 801E2488 8E230000 */  lw    $v1, ($s1)
/* 1FA40C 801E248C 8C6C0000 */  lw    $t4, ($v1)
/* 1FA410 801E2490 000C6880 */  sll   $t5, $t4, 2
/* 1FA414 801E2494 002D0821 */  addu  $at, $at, $t5
/* 1FA418 801E2498 E430AC20 */  swc1  $f16, -0x53e0($at)
/* 1FA41C 801E249C 8C6B0000 */  lw    $t3, ($v1)
/* 1FA420 801E24A0 3C01C180 */  li    $at, 0xC1800000 # -16.000000
/* 1FA424 801E24A4 44815000 */  mtc1  $at, $f10
/* 1FA428 801E24A8 3C01800E */  lui   $at, 0x800e
/* 1FA42C 801E24AC 000B7880 */  sll   $t7, $t3, 2
/* 1FA430 801E24B0 002F0821 */  addu  $at, $at, $t7
/* 1FA434 801E24B4 E42A3210 */  swc1  $f10, 0x3210($at)
/* 1FA438 801E24B8 8C780000 */  lw    $t8, ($v1)
/* 1FA43C 801E24BC 3C01800E */  lui   $at, 0x800e
/* 1FA440 801E24C0 00184080 */  sll   $t0, $t8, 2
/* 1FA444 801E24C4 00280821 */  addu  $at, $at, $t0
/* 1FA448 801E24C8 E4323750 */  swc1  $f18, 0x3750($at)
/* 1FA44C 801E24CC 8C690000 */  lw    $t1, ($v1)
/* 1FA450 801E24D0 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 1FA454 801E24D4 44813000 */  mtc1  $at, $f6
/* 1FA458 801E24D8 3C01800E */  lui   $at, 0x800e
/* 1FA45C 801E24DC 00095080 */  sll   $t2, $t1, 2
/* 1FA460 801E24E0 002A0821 */  addu  $at, $at, $t2
/* 1FA464 801E24E4 E4263C90 */  swc1  $f6, 0x3c90($at)
/* 1FA468 801E24E8 8C620000 */  lw    $v0, ($v1)
/* 1FA46C 801E24EC 00021080 */  sll   $v0, $v0, 2
/* 1FA470 801E24F0 02427021 */  addu  $t6, $s2, $v0
/* 1FA474 801E24F4 8DD90000 */  lw    $t9, ($t6)
/* 1FA478 801E24F8 02025821 */  addu  $t3, $s0, $v0
/* 1FA47C 801E24FC C5700000 */  lwc1  $f16, ($t3)
/* 1FA480 801E2500 00196080 */  sll   $t4, $t9, 2
/* 1FA484 801E2504 020C6821 */  addu  $t5, $s0, $t4
/* 1FA488 801E2508 C5A40000 */  lwc1  $f4, ($t5)
/* 1FA48C 801E250C 46142201 */  sub.s $f8, $f4, $f20
/* 1FA490 801E2510 4610403C */  c.lt.s $f8, $f16
/* 1FA494 801E2514 00000000 */  nop   
/* 1FA498 801E2518 45000012 */  bc1f  .L801E2564_ovl13
/* 1FA49C 801E251C 00000000 */   nop   
.L801E2520_ovl13:
/* 1FA4A0 801E2520 0C002DAF */  jal   func_8000B6BC
/* 1FA4A4 801E2524 24040001 */   li    $a0, 1
/* 1FA4A8 801E2528 8E2F0000 */  lw    $t7, ($s1)
/* 1FA4AC 801E252C 8DE20000 */  lw    $v0, ($t7)
/* 1FA4B0 801E2530 00021080 */  sll   $v0, $v0, 2
/* 1FA4B4 801E2534 0242C021 */  addu  $t8, $s2, $v0
/* 1FA4B8 801E2538 8F080000 */  lw    $t0, ($t8)
/* 1FA4BC 801E253C 02027021 */  addu  $t6, $s0, $v0
/* 1FA4C0 801E2540 C5C60000 */  lwc1  $f6, ($t6)
/* 1FA4C4 801E2544 00084880 */  sll   $t1, $t0, 2
/* 1FA4C8 801E2548 02095021 */  addu  $t2, $s0, $t1
/* 1FA4CC 801E254C C54A0000 */  lwc1  $f10, ($t2)
/* 1FA4D0 801E2550 46145481 */  sub.s $f18, $f10, $f20
/* 1FA4D4 801E2554 4606903C */  c.lt.s $f18, $f6
/* 1FA4D8 801E2558 00000000 */  nop   
/* 1FA4DC 801E255C 4501FFF0 */  bc1t  .L801E2520_ovl13
/* 1FA4E0 801E2560 00000000 */   nop   
.L801E2564_ovl13:
/* 1FA4E4 801E2564 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1FA4E8 801E2568 00000000 */   nop   
/* 1FA4EC 801E256C 8E230000 */  lw    $v1, ($s1)
/* 1FA4F0 801E2570 3C0143DC */  li    $at, 0x43DC0000 # 440.000000
/* 1FA4F4 801E2574 44814000 */  mtc1  $at, $f8
/* 1FA4F8 801E2578 8C790000 */  lw    $t9, ($v1)
/* 1FA4FC 801E257C 44805000 */  mtc1  $zero, $f10
/* 1FA500 801E2580 3C01801E */  lui   $at, %hi(D_801E5DB8) # $at, 0x801e
/* 1FA504 801E2584 00196080 */  sll   $t4, $t9, 2
/* 1FA508 801E2588 020C1021 */  addu  $v0, $s0, $t4
/* 1FA50C 801E258C C4440000 */  lwc1  $f4, ($v0)
/* 1FA510 801E2590 46082400 */  add.s $f16, $f4, $f8
/* 1FA514 801E2594 E4500000 */  swc1  $f16, ($v0)
/* 1FA518 801E2598 8C6D0000 */  lw    $t5, ($v1)
/* 1FA51C 801E259C 000D5880 */  sll   $t3, $t5, 2
/* 1FA520 801E25A0 026B7821 */  addu  $t7, $s3, $t3
/* 1FA524 801E25A4 8DF80000 */  lw    $t8, ($t7)
/* 1FA528 801E25A8 8F080004 */  lw    $t0, 4($t8)
/* 1FA52C 801E25AC E50A0024 */  swc1  $f10, 0x24($t0)
/* 1FA530 801E25B0 8E290000 */  lw    $t1, ($s1)
/* 1FA534 801E25B4 C4325DB8 */  lwc1  $f18, %lo(D_801E5DB8)($at)
/* 1FA538 801E25B8 3C01801E */  lui   $at, %hi(D_801E5DBC) # $at, 0x801e
/* 1FA53C 801E25BC 8D2A0000 */  lw    $t2, ($t1)
/* 1FA540 801E25C0 000A7080 */  sll   $t6, $t2, 2
/* 1FA544 801E25C4 026EC821 */  addu  $t9, $s3, $t6
/* 1FA548 801E25C8 8F2C0000 */  lw    $t4, ($t9)
/* 1FA54C 801E25CC 240E0009 */  li    $t6, 9
/* 1FA550 801E25D0 8D8D0004 */  lw    $t5, 4($t4)
/* 1FA554 801E25D4 E5B20034 */  swc1  $f18, 0x34($t5)
/* 1FA558 801E25D8 8E2B0000 */  lw    $t3, ($s1)
/* 1FA55C 801E25DC C4265DBC */  lwc1  $f6, %lo(D_801E5DBC)($at)
/* 1FA560 801E25E0 3C01800E */  lui   $at, 0x800e
/* 1FA564 801E25E4 8D6F0000 */  lw    $t7, ($t3)
/* 1FA568 801E25E8 000FC080 */  sll   $t8, $t7, 2
/* 1FA56C 801E25EC 02784021 */  addu  $t0, $s3, $t8
/* 1FA570 801E25F0 8D090000 */  lw    $t1, ($t0)
/* 1FA574 801E25F4 8D2A0008 */  lw    $t2, 8($t1)
/* 1FA578 801E25F8 E5460030 */  swc1  $f6, 0x30($t2)
/* 1FA57C 801E25FC 8E390000 */  lw    $t9, ($s1)
/* 1FA580 801E2600 8FBF002C */  lw    $ra, 0x2c($sp)
/* 1FA584 801E2604 8FB10020 */  lw    $s1, 0x20($sp)
/* 1FA588 801E2608 8F2C0000 */  lw    $t4, ($t9)
/* 1FA58C 801E260C 8FB30028 */  lw    $s3, 0x28($sp)
/* 1FA590 801E2610 8FB20024 */  lw    $s2, 0x24($sp)
/* 1FA594 801E2614 000C6880 */  sll   $t5, $t4, 2
/* 1FA598 801E2618 002D0821 */  addu  $at, $at, $t5
/* 1FA59C 801E261C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 1FA5A0 801E2620 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1FA5A4 801E2624 AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 1FA5A8 801E2628 03E00008 */  jr    $ra
/* 1FA5AC 801E262C 27BD0030 */   addiu $sp, $sp, 0x30

/* 1FA5B0 801E2630 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1FA5B4 801E2634 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1FA5B8 801E2638 8D060000 */  lw    $a2, ($t0)
/* 1FA5BC 801E263C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FA5C0 801E2640 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FA5C4 801E2644 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FA5C8 801E2648 8CC30000 */  lw    $v1, ($a2)
/* 1FA5CC 801E264C 3C0E800F */  lui   $t6, 0x800f
/* 1FA5D0 801E2650 3C04800E */  lui   $a0, %hi(D_800DFBD0) # $a0, 0x800e
/* 1FA5D4 801E2654 00031880 */  sll   $v1, $v1, 2
/* 1FA5D8 801E2658 01C37021 */  addu  $t6, $t6, $v1
/* 1FA5DC 801E265C 8DCEA360 */  lw    $t6, -0x5ca0($t6)
/* 1FA5E0 801E2660 2484FBD0 */  addiu $a0, %lo(D_800DFBD0) # addiu $a0, $a0, -0x430
/* 1FA5E4 801E2664 00837821 */  addu  $t7, $a0, $v1
/* 1FA5E8 801E2668 51C00052 */  beql  $t6, $zero, .L801E27B4_ovl13
/* 1FA5EC 801E266C 8DF80000 */   lw    $t8, ($t7)
/* 1FA5F0 801E2670 3C04800E */  lui   $a0, %hi(D_800DFBD0) # $a0, 0x800e
/* 1FA5F4 801E2674 2484FBD0 */  addiu $a0, %lo(D_800DFBD0) # addiu $a0, $a0, -0x430
/* 1FA5F8 801E2678 00837821 */  addu  $t7, $a0, $v1
/* 1FA5FC 801E267C 8DF80000 */  lw    $t8, ($t7)
/* 1FA600 801E2680 3C01801E */  li    $at, 0x801E0000 # -0.000000
/* 1FA604 801E2684 C4225DC0 */  lwc1  $f2, %lo(D_801E5DC0)($at)
/* 1FA608 801E2688 8F190004 */  lw    $t9, 4($t8)
/* 1FA60C 801E268C 3C05800F */  lui   $a1, 0x800f
/* 1FA610 801E2690 C7200034 */  lwc1  $f0, 0x34($t9)
/* 1FA614 801E2694 46001032 */  c.eq.s $f2, $f0
/* 1FA618 801E2698 00000000 */  nop   
/* 1FA61C 801E269C 45030012 */  bc1tl .L801E26E8_ovl13
/* 1FA620 801E26A0 44803000 */   mtc1  $zero, $f6
/* 1FA624 801E26A4 4600103C */  c.lt.s $f2, $f0
/* 1FA628 801E26A8 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1FA62C 801E26AC 45020006 */  bc1fl .L801E26C8_ovl13
/* 1FA630 801E26B0 44810000 */   mtc1  $at, $f0
/* 1FA634 801E26B4 3C01C334 */  li    $at, 0xC3340000 # -180.000000
/* 1FA638 801E26B8 44810000 */  mtc1  $at, $f0
/* 1FA63C 801E26BC 10000004 */  b     .L801E26D0_ovl13
/* 1FA640 801E26C0 46001103 */   div.s $f4, $f2, $f0
/* 1FA644 801E26C4 44810000 */  mtc1  $at, $f0
.L801E26C8_ovl13:
/* 1FA648 801E26C8 00000000 */  nop   
/* 1FA64C 801E26CC 46001103 */  div.s $f4, $f2, $f0
.L801E26D0_ovl13:
/* 1FA650 801E26D0 3C05800F */  lui   $a1, %hi(D_800EAC20) # $a1, 0x800f
/* 1FA654 801E26D4 24A5AC20 */  addiu $a1, %lo(D_800EAC20) # addiu $a1, $a1, -0x53e0
/* 1FA658 801E26D8 00A34821 */  addu  $t1, $a1, $v1
/* 1FA65C 801E26DC 10000005 */  b     .L801E26F4_ovl13
/* 1FA660 801E26E0 E5240000 */   swc1  $f4, ($t1)
/* 1FA664 801E26E4 44803000 */  mtc1  $zero, $f6
.L801E26E8_ovl13:
/* 1FA668 801E26E8 24A5AC20 */  addiu $a1, $a1, -0x53e0
/* 1FA66C 801E26EC 00A35021 */  addu  $t2, $a1, $v1
/* 1FA670 801E26F0 E5460000 */  swc1  $f6, ($t2)
.L801E26F4_ovl13:
/* 1FA674 801E26F4 8CC30000 */  lw    $v1, ($a2)
/* 1FA678 801E26F8 3C01801E */  lui   $at, %hi(D_801E5DC4) # $at, 0x801e
/* 1FA67C 801E26FC C4225DC4 */  lwc1  $f2, %lo(D_801E5DC4)($at)
/* 1FA680 801E2700 00031880 */  sll   $v1, $v1, 2
/* 1FA684 801E2704 00835821 */  addu  $t3, $a0, $v1
/* 1FA688 801E2708 8D6C0000 */  lw    $t4, ($t3)
/* 1FA68C 801E270C 00A36821 */  addu  $t5, $a1, $v1
/* 1FA690 801E2710 C5AA0000 */  lwc1  $f10, ($t5)
/* 1FA694 801E2714 8D820004 */  lw    $v0, 4($t4)
/* 1FA698 801E2718 3C01801E */  lui   $at, %hi(func_801E5DC8) # $at, 0x801e
/* 1FA69C 801E271C C4480034 */  lwc1  $f8, 0x34($v0)
/* 1FA6A0 801E2720 460A4400 */  add.s $f16, $f8, $f10
/* 1FA6A4 801E2724 E4500034 */  swc1  $f16, 0x34($v0)
/* 1FA6A8 801E2728 8D0E0000 */  lw    $t6, ($t0)
/* 1FA6AC 801E272C 8DCF0000 */  lw    $t7, ($t6)
/* 1FA6B0 801E2730 000FC080 */  sll   $t8, $t7, 2
/* 1FA6B4 801E2734 0098C821 */  addu  $t9, $a0, $t8
/* 1FA6B8 801E2738 8F270000 */  lw    $a3, ($t9)
/* 1FA6BC 801E273C 8CE20004 */  lw    $v0, 4($a3)
/* 1FA6C0 801E2740 C4400034 */  lwc1  $f0, 0x34($v0)
/* 1FA6C4 801E2744 4600103C */  c.lt.s $f2, $f0
/* 1FA6C8 801E2748 00000000 */  nop   
/* 1FA6CC 801E274C 4500000A */  bc1f  .L801E2778_ovl13
/* 1FA6D0 801E2750 00000000 */   nop   
/* 1FA6D4 801E2754 E4420034 */  swc1  $f2, 0x34($v0)
/* 1FA6D8 801E2758 8D090000 */  lw    $t1, ($t0)
/* 1FA6DC 801E275C 3C07800E */  lui   $a3, 0x800e
/* 1FA6E0 801E2760 8D2A0000 */  lw    $t2, ($t1)
/* 1FA6E4 801E2764 000A5880 */  sll   $t3, $t2, 2
/* 1FA6E8 801E2768 00EB3821 */  addu  $a3, $a3, $t3
/* 1FA6EC 801E276C 8CE7FBD0 */  lw    $a3, -0x430($a3)
/* 1FA6F0 801E2770 8CE20004 */  lw    $v0, 4($a3)
/* 1FA6F4 801E2774 C4400034 */  lwc1  $f0, 0x34($v0)
.L801E2778_ovl13:
/* 1FA6F8 801E2778 C4225DC8 */  lwc1  $f2, %lo(func_801E5DC8)($at)
/* 1FA6FC 801E277C 4602003C */  c.lt.s $f0, $f2
/* 1FA700 801E2780 00000000 */  nop   
/* 1FA704 801E2784 4502001A */  bc1fl .L801E27F0_ovl13
/* 1FA708 801E2788 C4420024 */   lwc1  $f2, 0x24($v0)
/* 1FA70C 801E278C E4420034 */  swc1  $f2, 0x34($v0)
/* 1FA710 801E2790 8D0C0000 */  lw    $t4, ($t0)
/* 1FA714 801E2794 3C07800E */  lui   $a3, 0x800e
/* 1FA718 801E2798 8D8D0000 */  lw    $t5, ($t4)
/* 1FA71C 801E279C 000D7080 */  sll   $t6, $t5, 2
/* 1FA720 801E27A0 00EE3821 */  addu  $a3, $a3, $t6
/* 1FA724 801E27A4 8CE7FBD0 */  lw    $a3, -0x430($a3)
/* 1FA728 801E27A8 10000010 */  b     .L801E27EC_ovl13
/* 1FA72C 801E27AC 8CE20004 */   lw    $v0, 4($a3)
/* 1FA730 801E27B0 8DF80000 */  lw    $t8, ($t7)
.L801E27B4_ovl13:
/* 1FA734 801E27B4 3C05800F */  lui   $a1, %hi(D_800EAC20) # $a1, 0x800f
/* 1FA738 801E27B8 24A5AC20 */  addiu $a1, %lo(D_800EAC20) # addiu $a1, $a1, -0x53e0
/* 1FA73C 801E27BC 8F020004 */  lw    $v0, 4($t8)
/* 1FA740 801E27C0 00A3C821 */  addu  $t9, $a1, $v1
/* 1FA744 801E27C4 C7240000 */  lwc1  $f4, ($t9)
/* 1FA748 801E27C8 C4520034 */  lwc1  $f18, 0x34($v0)
/* 1FA74C 801E27CC 46049180 */  add.s $f6, $f18, $f4
/* 1FA750 801E27D0 E4460034 */  swc1  $f6, 0x34($v0)
/* 1FA754 801E27D4 8D090000 */  lw    $t1, ($t0)
/* 1FA758 801E27D8 8D2A0000 */  lw    $t2, ($t1)
/* 1FA75C 801E27DC 000A5880 */  sll   $t3, $t2, 2
/* 1FA760 801E27E0 008B6021 */  addu  $t4, $a0, $t3
/* 1FA764 801E27E4 8D870000 */  lw    $a3, ($t4)
/* 1FA768 801E27E8 8CE20004 */  lw    $v0, 4($a3)
.L801E27EC_ovl13:
/* 1FA76C 801E27EC C4420024 */  lwc1  $f2, 0x24($v0)
.L801E27F0_ovl13:
/* 1FA770 801E27F0 44804000 */  mtc1  $zero, $f8
/* 1FA774 801E27F4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1FA778 801E27F8 44815000 */  mtc1  $at, $f10
/* 1FA77C 801E27FC 4608103C */  c.lt.s $f2, $f8
/* 1FA780 801E2800 00000000 */  nop   
/* 1FA784 801E2804 45020004 */  bc1fl .L801E2818_ovl13
/* 1FA788 801E2808 46001006 */   mov.s $f0, $f2
/* 1FA78C 801E280C 10000002 */  b     .L801E2818_ovl13
/* 1FA790 801E2810 46001007 */   neg.s $f0, $f2
/* 1FA794 801E2814 46001006 */  mov.s $f0, $f2
.L801E2818_ovl13:
/* 1FA798 801E2818 460A003C */  c.lt.s $f0, $f10
/* 1FA79C 801E281C 00000000 */  nop   
/* 1FA7A0 801E2820 4500001B */  bc1f  .L801E2890_ovl13
/* 1FA7A4 801E2824 00000000 */   nop   
/* 1FA7A8 801E2828 8CE4005C */  lw    $a0, 0x5c($a3)
/* 1FA7AC 801E282C 8CE50010 */  lw    $a1, 0x10($a3)
/* 1FA7B0 801E2830 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1FA7B4 801E2834 8CE60018 */   lw    $a2, 0x18($a3)
/* 1FA7B8 801E2838 3C088005 */  lui   $t0, %hi(D_8004A7C4) # $t0, 0x8005
/* 1FA7BC 801E283C 2508A7C4 */  addiu $t0, %lo(D_8004A7C4) # addiu $t0, $t0, -0x583c
/* 1FA7C0 801E2840 8D060000 */  lw    $a2, ($t0)
/* 1FA7C4 801E2844 3C0D800F */  lui   $t5, 0x800f
/* 1FA7C8 801E2848 24010001 */  li    $at, 1
/* 1FA7CC 801E284C 8CC30000 */  lw    $v1, ($a2)
/* 1FA7D0 801E2850 240E000E */  li    $t6, 14
/* 1FA7D4 801E2854 3C04800E */  lui   $a0, 0x800e
/* 1FA7D8 801E2858 00031880 */  sll   $v1, $v1, 2
/* 1FA7DC 801E285C 01A36821 */  addu  $t5, $t5, $v1
/* 1FA7E0 801E2860 8DAD83E0 */  lw    $t5, -0x7c20($t5)
/* 1FA7E4 801E2864 15A1000A */  bne   $t5, $at, .L801E2890_ovl13
/* 1FA7E8 801E2868 3C01800E */   lui   $at, 0x800e
/* 1FA7EC 801E286C 00230821 */  addu  $at, $at, $v1
/* 1FA7F0 801E2870 AC2EDC50 */  sw    $t6, -0x23b0($at)
/* 1FA7F4 801E2874 8CCF0000 */  lw    $t7, ($a2)
/* 1FA7F8 801E2878 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1FA7FC 801E287C 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1FA800 801E2880 000FC080 */  sll   $t8, $t7, 2
/* 1FA804 801E2884 00982021 */  addu  $a0, $a0, $t8
/* 1FA808 801E2888 0C02C7B2 */  jal   func_800B1EC8
/* 1FA80C 801E288C 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801E2890_ovl13:
/* 1FA810 801E2890 0C078E56 */  jal   func_801E3958_ovl13
/* 1FA814 801E2894 8FA40018 */   lw    $a0, 0x18($sp)
/* 1FA818 801E2898 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FA81C 801E289C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FA820 801E28A0 03E00008 */  jr    $ra
/* 1FA824 801E28A4 00000000 */   nop   

/* 1FA828 801E28A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1FA82C 801E28AC AFB00018 */  sw    $s0, 0x18($sp)
/* 1FA830 801E28B0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FA834 801E28B4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FA838 801E28B8 8E020000 */  lw    $v0, ($s0)
/* 1FA83C 801E28BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 1FA840 801E28C0 AFA40020 */  sw    $a0, 0x20($sp)
/* 1FA844 801E28C4 8C4F0000 */  lw    $t7, ($v0)
/* 1FA848 801E28C8 3C01800E */  lui   $at, 0x800e
/* 1FA84C 801E28CC 240E000B */  li    $t6, 11
/* 1FA850 801E28D0 000FC080 */  sll   $t8, $t7, 2
/* 1FA854 801E28D4 00380821 */  addu  $at, $at, $t8
/* 1FA858 801E28D8 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1FA85C 801E28DC 8C480000 */  lw    $t0, ($v0)
/* 1FA860 801E28E0 3C0A800E */  lui   $t2, 0x800e
/* 1FA864 801E28E4 3C19801E */  lui   $t9, %hi(D_801D93A8) # $t9, 0x801e
/* 1FA868 801E28E8 00084880 */  sll   $t1, $t0, 2
/* 1FA86C 801E28EC 01495021 */  addu  $t2, $t2, $t1
/* 1FA870 801E28F0 8D4A1B50 */  lw    $t2, 0x1b50($t2)
/* 1FA874 801E28F4 273993A8 */  addiu $t9, %lo(D_801D93A8) # addiu $t9, $t9, -0x6c58
/* 1FA878 801E28F8 3C04801E */  lui   $a0, %hi(D_801DAB04) # $a0, 0x801e
/* 1FA87C 801E28FC AD59008C */  sw    $t9, 0x8c($t2)
/* 1FA880 801E2900 8E0B0000 */  lw    $t3, ($s0)
/* 1FA884 801E2904 3C01800E */  lui   $at, 0x800e
/* 1FA888 801E2908 2484AB04 */  addiu $a0, %lo(D_801DAB04) # addiu $a0, $a0, -0x54fc
/* 1FA88C 801E290C 8D6C0000 */  lw    $t4, ($t3)
/* 1FA890 801E2910 000C6880 */  sll   $t5, $t4, 2
/* 1FA894 801E2914 002D0821 */  addu  $at, $at, $t5
/* 1FA898 801E2918 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1FA89C 801E291C AC240490 */   sw    $a0, 0x490($at)
/* 1FA8A0 801E2920 8E0E0000 */  lw    $t6, ($s0)
/* 1FA8A4 801E2924 3C09800E */  lui   $t1, 0x800e
/* 1FA8A8 801E2928 3C0F801E */  lui   $t7, %hi(D_801DAE40) # $t7, 0x801e
/* 1FA8AC 801E292C 8DD80000 */  lw    $t8, ($t6)
/* 1FA8B0 801E2930 25EFAE40 */  addiu $t7, %lo(D_801DAE40) # addiu $t7, $t7, -0x51c0
/* 1FA8B4 801E2934 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1FA8B8 801E2938 00184080 */  sll   $t0, $t8, 2
/* 1FA8BC 801E293C 01284821 */  addu  $t1, $t1, $t0
/* 1FA8C0 801E2940 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 1FA8C4 801E2944 44812000 */  mtc1  $at, $f4
/* 1FA8C8 801E2948 3C01800E */  lui   $at, 0x800e
/* 1FA8CC 801E294C AD2F0098 */  sw    $t7, 0x98($t1)
/* 1FA8D0 801E2950 8E020000 */  lw    $v0, ($s0)
/* 1FA8D4 801E2954 3C040001 */  lui   $a0, (0x0001041E >> 16) # lui $a0, 1
/* 1FA8D8 801E2958 3484041E */  ori   $a0, (0x0001041E & 0xFFFF) # ori $a0, $a0, 0x41e
/* 1FA8DC 801E295C 8C590000 */  lw    $t9, ($v0)
/* 1FA8E0 801E2960 00195080 */  sll   $t2, $t9, 2
/* 1FA8E4 801E2964 002A0821 */  addu  $at, $at, $t2
/* 1FA8E8 801E2968 E4246850 */  swc1  $f4, 0x6850($at)
/* 1FA8EC 801E296C 8C4B0000 */  lw    $t3, ($v0)
/* 1FA8F0 801E2970 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 1FA8F4 801E2974 44813000 */  mtc1  $at, $f6
/* 1FA8F8 801E2978 3C01800E */  lui   $at, 0x800e
/* 1FA8FC 801E297C 000B6080 */  sll   $t4, $t3, 2
/* 1FA900 801E2980 002C0821 */  addu  $at, $at, $t4
/* 1FA904 801E2984 0C02A806 */  jal   func_800AA018_ovl13
/* 1FA908 801E2988 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 1FA90C 801E298C 8E0E0000 */  lw    $t6, ($s0)
/* 1FA910 801E2990 3C0D801E */  lui   $t5, %hi(D_801E2F0C) # $t5, 0x801e
/* 1FA914 801E2994 3C01800E */  lui   $at, 0x800e
/* 1FA918 801E2998 8DD80000 */  lw    $t8, ($t6)
/* 1FA91C 801E299C 25AD2F0C */  addiu $t5, %lo(D_801E2F0C) # addiu $t5, $t5, 0x2f0c
/* 1FA920 801E29A0 24040003 */  li    $a0, 3
/* 1FA924 801E29A4 00184080 */  sll   $t0, $t8, 2
/* 1FA928 801E29A8 00280821 */  addu  $at, $at, $t0
/* 1FA92C 801E29AC 0C02BBFF */  jal   func_800AEFFC_ovl13
/* 1FA930 801E29B0 AC2DF310 */   sw    $t5, -0xcf0($at)
/* 1FA934 801E29B4 8E090000 */  lw    $t1, ($s0)
/* 1FA938 801E29B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1FA93C 801E29BC 3C01800E */  lui   $at, 0x800e
/* 1FA940 801E29C0 8D390000 */  lw    $t9, ($t1)
/* 1FA944 801E29C4 240F000A */  li    $t7, 10
/* 1FA948 801E29C8 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FA94C 801E29CC 00195080 */  sll   $t2, $t9, 2
/* 1FA950 801E29D0 002A0821 */  addu  $at, $at, $t2
/* 1FA954 801E29D4 AC2FDC50 */  sw    $t7, -0x23b0($at)
/* 1FA958 801E29D8 03E00008 */  jr    $ra
/* 1FA95C 801E29DC 27BD0020 */   addiu $sp, $sp, 0x20

/* 1FA960 801E29E0 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1FA964 801E29E4 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1FA968 801E29E8 8CE60000 */  lw    $a2, ($a3)
/* 1FA96C 801E29EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FA970 801E29F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FA974 801E29F4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FA978 801E29F8 8CC30000 */  lw    $v1, ($a2)
/* 1FA97C 801E29FC 3C05800E */  lui   $a1, %hi(D_800E64D0) # $a1, 0x800e
/* 1FA980 801E2A00 24A564D0 */  addiu $a1, %lo(D_800E64D0) # addiu $a1, $a1, 0x64d0
/* 1FA984 801E2A04 00031880 */  sll   $v1, $v1, 2
/* 1FA988 801E2A08 00A37021 */  addu  $t6, $a1, $v1
/* 1FA98C 801E2A0C 44806000 */  mtc1  $zero, $f12
/* 1FA990 801E2A10 C5C00000 */  lwc1  $f0, ($t6)
/* 1FA994 801E2A14 3C08800E */  lui   $t0, %hi(D_800E6690) # $t0, 0x800e
/* 1FA998 801E2A18 3C0B800F */  lui   $t3, %hi(D_800E9E20) # $t3, 0x800f
/* 1FA99C 801E2A1C 46006032 */  c.eq.s $f12, $f0
/* 1FA9A0 801E2A20 3C0F800E */  lui   $t7, 0x800e
/* 1FA9A4 801E2A24 25086690 */  addiu $t0, %lo(D_800E6690) # addiu $t0, $t0, 0x6690
/* 1FA9A8 801E2A28 256B9E20 */  addiu $t3, %lo(D_800E9E20) # addiu $t3, $t3, -0x61e0
/* 1FA9AC 801E2A2C 45030014 */  bc1tl .L801E2A80_ovl13
/* 1FA9B0 801E2A30 01E37821 */   addu  $t7, $t7, $v1
/* 1FA9B4 801E2A34 4600603C */  c.lt.s $f12, $f0
/* 1FA9B8 801E2A38 3C01C334 */  li    $at, 0xC3340000 # -180.000000
/* 1FA9BC 801E2A3C 45020006 */  bc1fl .L801E2A58_ovl13
/* 1FA9C0 801E2A40 44811000 */   mtc1  $at, $f2
/* 1FA9C4 801E2A44 3C014334 */  li    $at, 0x43340000 # 180.000000
/* 1FA9C8 801E2A48 44811000 */  mtc1  $at, $f2
/* 1FA9CC 801E2A4C 10000003 */  b     .L801E2A5C_ovl13
/* 1FA9D0 801E2A50 00000000 */   nop   
/* 1FA9D4 801E2A54 44811000 */  mtc1  $at, $f2
.L801E2A58_ovl13:
/* 1FA9D8 801E2A58 00000000 */  nop   
.L801E2A5C_ovl13:
/* 1FA9DC 801E2A5C 3C01801E */  lui   $at, %hi(D_801E5DCC) # $at, 0x801e
/* 1FA9E0 801E2A60 C4245DCC */  lwc1  $f4, %lo(D_801E5DCC)($at)
/* 1FA9E4 801E2A64 3C01800F */  lui   $at, 0x800f
/* 1FA9E8 801E2A68 00230821 */  addu  $at, $at, $v1
/* 1FA9EC 801E2A6C 46022183 */  div.s $f6, $f4, $f2
/* 1FA9F0 801E2A70 E426AC20 */  swc1  $f6, -0x53e0($at)
/* 1FA9F4 801E2A74 8CC30000 */  lw    $v1, ($a2)
/* 1FA9F8 801E2A78 00031880 */  sll   $v1, $v1, 2
/* 1FA9FC 801E2A7C 01E37821 */  addu  $t7, $t7, $v1
.L801E2A80_ovl13:
/* 1FAA00 801E2A80 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1FAA04 801E2A84 3C01801E */  lui   $at, %hi(D_801E5DD0) # $at, 0x801e
/* 1FAA08 801E2A88 C4225DD0 */  lwc1  $f2, %lo(D_801E5DD0)($at)
/* 1FAA0C 801E2A8C 8DE20004 */  lw    $v0, 4($t7)
/* 1FAA10 801E2A90 3C01800F */  lui   $at, 0x800f
/* 1FAA14 801E2A94 00230821 */  addu  $at, $at, $v1
/* 1FAA18 801E2A98 C42AAC20 */  lwc1  $f10, -0x53e0($at)
/* 1FAA1C 801E2A9C C4480034 */  lwc1  $f8, 0x34($v0)
/* 1FAA20 801E2AA0 3C18800E */  lui   $t8, 0x800e
/* 1FAA24 801E2AA4 3C01801E */  lui   $at, %hi(D_801E5DD4) # $at, 0x801e
/* 1FAA28 801E2AA8 460A4400 */  add.s $f16, $f8, $f10
/* 1FAA2C 801E2AAC E4500034 */  swc1  $f16, 0x34($v0)
/* 1FAA30 801E2AB0 8CE60000 */  lw    $a2, ($a3)
/* 1FAA34 801E2AB4 8CC30000 */  lw    $v1, ($a2)
/* 1FAA38 801E2AB8 00031880 */  sll   $v1, $v1, 2
/* 1FAA3C 801E2ABC 0303C021 */  addu  $t8, $t8, $v1
/* 1FAA40 801E2AC0 8F18FBD0 */  lw    $t8, -0x430($t8)
/* 1FAA44 801E2AC4 8F020004 */  lw    $v0, 4($t8)
/* 1FAA48 801E2AC8 C4400034 */  lwc1  $f0, 0x34($v0)
/* 1FAA4C 801E2ACC 4600103C */  c.lt.s $f2, $f0
/* 1FAA50 801E2AD0 00000000 */  nop   
/* 1FAA54 801E2AD4 4500000A */  bc1f  .L801E2B00_ovl13
/* 1FAA58 801E2AD8 00000000 */   nop   
/* 1FAA5C 801E2ADC E4420034 */  swc1  $f2, 0x34($v0)
/* 1FAA60 801E2AE0 8CE60000 */  lw    $a2, ($a3)
/* 1FAA64 801E2AE4 3C19800E */  lui   $t9, 0x800e
/* 1FAA68 801E2AE8 8CC30000 */  lw    $v1, ($a2)
/* 1FAA6C 801E2AEC 00031880 */  sll   $v1, $v1, 2
/* 1FAA70 801E2AF0 0323C821 */  addu  $t9, $t9, $v1
/* 1FAA74 801E2AF4 8F39FBD0 */  lw    $t9, -0x430($t9)
/* 1FAA78 801E2AF8 8F220004 */  lw    $v0, 4($t9)
/* 1FAA7C 801E2AFC C4400034 */  lwc1  $f0, 0x34($v0)
.L801E2B00_ovl13:
/* 1FAA80 801E2B00 C4225DD4 */  lwc1  $f2, %lo(D_801E5DD4)($at)
/* 1FAA84 801E2B04 4602003C */  c.lt.s $f0, $f2
/* 1FAA88 801E2B08 00000000 */  nop   
/* 1FAA8C 801E2B0C 45020006 */  bc1fl .L801E2B28_ovl13
/* 1FAA90 801E2B10 00681021 */   addu  $v0, $v1, $t0
/* 1FAA94 801E2B14 E4420034 */  swc1  $f2, 0x34($v0)
/* 1FAA98 801E2B18 8CE60000 */  lw    $a2, ($a3)
/* 1FAA9C 801E2B1C 8CC30000 */  lw    $v1, ($a2)
/* 1FAAA0 801E2B20 00031880 */  sll   $v1, $v1, 2
/* 1FAAA4 801E2B24 00681021 */  addu  $v0, $v1, $t0
.L801E2B28_ovl13:
/* 1FAAA8 801E2B28 C4400000 */  lwc1  $f0, ($v0)
/* 1FAAAC 801E2B2C 00A35021 */  addu  $t2, $a1, $v1
/* 1FAAB0 801E2B30 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1FAAB4 801E2B34 460C003C */  c.lt.s $f0, $f12
/* 1FAAB8 801E2B38 00000000 */  nop   
/* 1FAABC 801E2B3C 4502001A */  bc1fl .L801E2BA8_ovl13
/* 1FAAC0 801E2B40 C54A0000 */   lwc1  $f10, ($t2)
/* 1FAAC4 801E2B44 3C01C080 */  li    $at, 0xC0800000 # -4.000000
/* 1FAAC8 801E2B48 00A34821 */  addu  $t1, $a1, $v1
/* 1FAACC 801E2B4C C5240000 */  lwc1  $f4, ($t1)
/* 1FAAD0 801E2B50 44819000 */  mtc1  $at, $f18
/* 1FAAD4 801E2B54 00000000 */  nop   
/* 1FAAD8 801E2B58 4612203E */  c.le.s $f4, $f18
/* 1FAADC 801E2B5C 00000000 */  nop   
/* 1FAAE0 801E2B60 45020028 */  bc1fl .L801E2C04_ovl13
/* 1FAAE4 801E2B64 006B2021 */   addu  $a0, $v1, $t3
/* 1FAAE8 801E2B68 44803000 */  mtc1  $zero, $f6
/* 1FAAEC 801E2B6C 00000000 */  nop   
/* 1FAAF0 801E2B70 4606003C */  c.lt.s $f0, $f6
/* 1FAAF4 801E2B74 00000000 */  nop   
/* 1FAAF8 801E2B78 45020007 */  bc1fl .L801E2B98_ovl13
/* 1FAAFC 801E2B7C E4400000 */   swc1  $f0, ($v0)
/* 1FAB00 801E2B80 46000207 */  neg.s $f8, $f0
/* 1FAB04 801E2B84 E4480000 */  swc1  $f8, ($v0)
/* 1FAB08 801E2B88 8CC30000 */  lw    $v1, ($a2)
/* 1FAB0C 801E2B8C 1000001C */  b     .L801E2C00_ovl13
/* 1FAB10 801E2B90 00031880 */   sll   $v1, $v1, 2
/* 1FAB14 801E2B94 E4400000 */  swc1  $f0, ($v0)
.L801E2B98_ovl13:
/* 1FAB18 801E2B98 8CC30000 */  lw    $v1, ($a2)
/* 1FAB1C 801E2B9C 10000018 */  b     .L801E2C00_ovl13
/* 1FAB20 801E2BA0 00031880 */   sll   $v1, $v1, 2
/* 1FAB24 801E2BA4 C54A0000 */  lwc1  $f10, ($t2)
.L801E2BA8_ovl13:
/* 1FAB28 801E2BA8 44818000 */  mtc1  $at, $f16
/* 1FAB2C 801E2BAC 00000000 */  nop   
/* 1FAB30 801E2BB0 460A803E */  c.le.s $f16, $f10
/* 1FAB34 801E2BB4 00000000 */  nop   
/* 1FAB38 801E2BB8 45020012 */  bc1fl .L801E2C04_ovl13
/* 1FAB3C 801E2BBC 006B2021 */   addu  $a0, $v1, $t3
/* 1FAB40 801E2BC0 44809000 */  mtc1  $zero, $f18
/* 1FAB44 801E2BC4 00000000 */  nop   
/* 1FAB48 801E2BC8 4612003C */  c.lt.s $f0, $f18
/* 1FAB4C 801E2BCC 00000000 */  nop   
/* 1FAB50 801E2BD0 45020008 */  bc1fl .L801E2BF4_ovl13
/* 1FAB54 801E2BD4 46000207 */   neg.s $f8, $f0
/* 1FAB58 801E2BD8 46000107 */  neg.s $f4, $f0
/* 1FAB5C 801E2BDC 46002187 */  neg.s $f6, $f4
/* 1FAB60 801E2BE0 E4460000 */  swc1  $f6, ($v0)
/* 1FAB64 801E2BE4 8CC30000 */  lw    $v1, ($a2)
/* 1FAB68 801E2BE8 10000005 */  b     .L801E2C00_ovl13
/* 1FAB6C 801E2BEC 00031880 */   sll   $v1, $v1, 2
/* 1FAB70 801E2BF0 46000207 */  neg.s $f8, $f0
.L801E2BF4_ovl13:
/* 1FAB74 801E2BF4 E4480000 */  swc1  $f8, ($v0)
/* 1FAB78 801E2BF8 8CC30000 */  lw    $v1, ($a2)
/* 1FAB7C 801E2BFC 00031880 */  sll   $v1, $v1, 2
.L801E2C00_ovl13:
/* 1FAB80 801E2C00 006B2021 */  addu  $a0, $v1, $t3
.L801E2C04_ovl13:
/* 1FAB84 801E2C04 8C820000 */  lw    $v0, ($a0)
/* 1FAB88 801E2C08 18400007 */  blez  $v0, .L801E2C28_ovl13
/* 1FAB8C 801E2C0C 244CFFFF */   addiu $t4, $v0, -1
/* 1FAB90 801E2C10 AC8C0000 */  sw    $t4, ($a0)
/* 1FAB94 801E2C14 8CC30000 */  lw    $v1, ($a2)
/* 1FAB98 801E2C18 3C02800F */  lui   $v0, 0x800f
/* 1FAB9C 801E2C1C 00031880 */  sll   $v1, $v1, 2
/* 1FABA0 801E2C20 00431021 */  addu  $v0, $v0, $v1
/* 1FABA4 801E2C24 8C429E20 */  lw    $v0, -0x61e0($v0)
.L801E2C28_ovl13:
/* 1FABA8 801E2C28 1C40001C */  bgtz  $v0, .L801E2C9C_ovl13
/* 1FABAC 801E2C2C 00000000 */   nop   
/* 1FABB0 801E2C30 0C006291 */  jal   random_soft_s32_range
/* 1FABB4 801E2C34 24040008 */   li    $a0, 8
/* 1FABB8 801E2C38 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1FABBC 801E2C3C 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1FABC0 801E2C40 8CEE0000 */  lw    $t6, ($a3)
/* 1FABC4 801E2C44 00026880 */  sll   $t5, $v0, 2
/* 1FABC8 801E2C48 3C01801E */  lui   $at, 0x801e
/* 1FABCC 801E2C4C 8DCF0000 */  lw    $t7, ($t6)
/* 1FABD0 801E2C50 002D0821 */  addu  $at, $at, $t5
/* 1FABD4 801E2C54 C42A5B58 */  lwc1  $f10, 0x5b58($at)
/* 1FABD8 801E2C58 3C01800E */  lui   $at, 0x800e
/* 1FABDC 801E2C5C 000FC080 */  sll   $t8, $t7, 2
/* 1FABE0 801E2C60 00380821 */  addu  $at, $at, $t8
/* 1FABE4 801E2C64 2404001F */  li    $a0, 31
/* 1FABE8 801E2C68 0C006291 */  jal   random_soft_s32_range
/* 1FABEC 801E2C6C E42A3750 */   swc1  $f10, 0x3750($at)
/* 1FABF0 801E2C70 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1FABF4 801E2C74 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1FABF8 801E2C78 8CE60000 */  lw    $a2, ($a3)
/* 1FABFC 801E2C7C 3C01800F */  li    $at, 0x800F0000 # -0.000000
/* 1FAC00 801E2C80 2459000F */  addiu $t9, $v0, 0xf
/* 1FAC04 801E2C84 8CC80000 */  lw    $t0, ($a2)
/* 1FAC08 801E2C88 00084880 */  sll   $t1, $t0, 2
/* 1FAC0C 801E2C8C 00290821 */  addu  $at, $at, $t1
/* 1FAC10 801E2C90 AC399E20 */  sw    $t9, -0x61e0($at)
/* 1FAC14 801E2C94 8CC30000 */  lw    $v1, ($a2)
/* 1FAC18 801E2C98 00031880 */  sll   $v1, $v1, 2
.L801E2C9C_ovl13:
/* 1FAC1C 801E2C9C 3C0A800F */  lui   $t2, 0x800f
/* 1FAC20 801E2CA0 01435021 */  addu  $t2, $t2, $v1
/* 1FAC24 801E2CA4 8D4ABBE0 */  lw    $t2, -0x4420($t2)
/* 1FAC28 801E2CA8 3C02800E */  lui   $v0, %hi(D_800E2790) # $v0, 0x800e
/* 1FAC2C 801E2CAC 24422790 */  addiu $v0, %lo(D_800E2790) # addiu $v0, $v0, 0x2790
/* 1FAC30 801E2CB0 000A5880 */  sll   $t3, $t2, 2
/* 1FAC34 801E2CB4 004B6021 */  addu  $t4, $v0, $t3
/* 1FAC38 801E2CB8 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1FAC3C 801E2CBC 44818000 */  mtc1  $at, $f16
/* 1FAC40 801E2CC0 C5800000 */  lwc1  $f0, ($t4)
/* 1FAC44 801E2CC4 00436821 */  addu  $t5, $v0, $v1
/* 1FAC48 801E2CC8 C5A20000 */  lwc1  $f2, ($t5)
/* 1FAC4C 801E2CCC 46100480 */  add.s $f18, $f0, $f16
/* 1FAC50 801E2CD0 3C0E800E */  lui   $t6, %hi(D_800E3750) # $t6, 0x800e
/* 1FAC54 801E2CD4 25CE3750 */  addiu $t6, %lo(D_800E3750) # addiu $t6, $t6, 0x3750
/* 1FAC58 801E2CD8 006E1021 */  addu  $v0, $v1, $t6
/* 1FAC5C 801E2CDC 4602903C */  c.lt.s $f18, $f2
/* 1FAC60 801E2CE0 3C0142A0 */  li    $at, 0x42A00000 # 80.000000
/* 1FAC64 801E2CE4 3C04800E */  lui   $a0, 0x800e
/* 1FAC68 801E2CE8 45020012 */  bc1fl .L801E2D34_ovl13
/* 1FAC6C 801E2CEC 44818000 */   mtc1  $at, $f16
/* 1FAC70 801E2CF0 C4400000 */  lwc1  $f0, ($v0)
/* 1FAC74 801E2CF4 44802000 */  mtc1  $zero, $f4
/* 1FAC78 801E2CF8 00000000 */  nop   
/* 1FAC7C 801E2CFC 4604003C */  c.lt.s $f0, $f4
/* 1FAC80 801E2D00 00000000 */  nop   
/* 1FAC84 801E2D04 45020006 */  bc1fl .L801E2D20_ovl13
/* 1FAC88 801E2D08 46000287 */   neg.s $f10, $f0
/* 1FAC8C 801E2D0C 46000187 */  neg.s $f6, $f0
/* 1FAC90 801E2D10 46003207 */  neg.s $f8, $f6
/* 1FAC94 801E2D14 10000003 */  b     .L801E2D24_ovl13
/* 1FAC98 801E2D18 E4480000 */   swc1  $f8, ($v0)
/* 1FAC9C 801E2D1C 46000287 */  neg.s $f10, $f0
.L801E2D20_ovl13:
/* 1FACA0 801E2D20 E44A0000 */  swc1  $f10, ($v0)
.L801E2D24_ovl13:
/* 1FACA4 801E2D24 8CC30000 */  lw    $v1, ($a2)
/* 1FACA8 801E2D28 10000019 */  b     .L801E2D90_ovl13
/* 1FACAC 801E2D2C 00031880 */   sll   $v1, $v1, 2
/* 1FACB0 801E2D30 44818000 */  mtc1  $at, $f16
.L801E2D34_ovl13:
/* 1FACB4 801E2D34 3C0F800E */  lui   $t7, %hi(D_800E3750) # $t7, 0x800e
/* 1FACB8 801E2D38 25EF3750 */  addiu $t7, %lo(D_800E3750) # addiu $t7, $t7, 0x3750
/* 1FACBC 801E2D3C 46100481 */  sub.s $f18, $f0, $f16
/* 1FACC0 801E2D40 006F1021 */  addu  $v0, $v1, $t7
/* 1FACC4 801E2D44 4612103C */  c.lt.s $f2, $f18
/* 1FACC8 801E2D48 00000000 */  nop   
/* 1FACCC 801E2D4C 45020011 */  bc1fl .L801E2D94_ovl13
/* 1FACD0 801E2D50 00832021 */   addu  $a0, $a0, $v1
/* 1FACD4 801E2D54 C4400000 */  lwc1  $f0, ($v0)
/* 1FACD8 801E2D58 44802000 */  mtc1  $zero, $f4
/* 1FACDC 801E2D5C 00000000 */  nop   
/* 1FACE0 801E2D60 4604003C */  c.lt.s $f0, $f4
/* 1FACE4 801E2D64 00000000 */  nop   
/* 1FACE8 801E2D68 45020007 */  bc1fl .L801E2D88_ovl13
/* 1FACEC 801E2D6C E4400000 */   swc1  $f0, ($v0)
/* 1FACF0 801E2D70 46000187 */  neg.s $f6, $f0
/* 1FACF4 801E2D74 E4460000 */  swc1  $f6, ($v0)
/* 1FACF8 801E2D78 8CC30000 */  lw    $v1, ($a2)
/* 1FACFC 801E2D7C 10000004 */  b     .L801E2D90_ovl13
/* 1FAD00 801E2D80 00031880 */   sll   $v1, $v1, 2
/* 1FAD04 801E2D84 E4400000 */  swc1  $f0, ($v0)
.L801E2D88_ovl13:
/* 1FAD08 801E2D88 8CC30000 */  lw    $v1, ($a2)
/* 1FAD0C 801E2D8C 00031880 */  sll   $v1, $v1, 2
.L801E2D90_ovl13:
/* 1FAD10 801E2D90 00832021 */  addu  $a0, $a0, $v1
.L801E2D94_ovl13:
/* 1FAD14 801E2D94 0C06769C */  jal   func_8019DA70_ovl13
/* 1FAD18 801E2D98 8C840D50 */   lw    $a0, 0xd50($a0)
/* 1FAD1C 801E2D9C 44806000 */  mtc1  $zero, $f12
/* 1FAD20 801E2DA0 3C0142F0 */  li    $at, 0x42F00000 # 120.000000
/* 1FAD24 801E2DA4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1FAD28 801E2DA8 460C003C */  c.lt.s $f0, $f12
/* 1FAD2C 801E2DAC 44814000 */  mtc1  $at, $f8
/* 1FAD30 801E2DB0 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1FAD34 801E2DB4 45020004 */  bc1fl .L801E2DC8_ovl13
/* 1FAD38 801E2DB8 46000086 */   mov.s $f2, $f0
/* 1FAD3C 801E2DBC 10000002 */  b     .L801E2DC8_ovl13
/* 1FAD40 801E2DC0 46000087 */   neg.s $f2, $f0
/* 1FAD44 801E2DC4 46000086 */  mov.s $f2, $f0
.L801E2DC8_ovl13:
/* 1FAD48 801E2DC8 4602403C */  c.lt.s $f8, $f2
/* 1FAD4C 801E2DCC 00000000 */  nop   
/* 1FAD50 801E2DD0 45020029 */  bc1fl .L801E2E78_ovl13
/* 1FAD54 801E2DD4 8CEE0000 */   lw    $t6, ($a3)
/* 1FAD58 801E2DD8 44805000 */  mtc1  $zero, $f10
/* 1FAD5C 801E2DDC 00000000 */  nop   
/* 1FAD60 801E2DE0 4600503C */  c.lt.s $f10, $f0
/* 1FAD64 801E2DE4 00000000 */  nop   
/* 1FAD68 801E2DE8 45020012 */  bc1fl .L801E2E34_ovl13
/* 1FAD6C 801E2DEC 8CEA0000 */   lw    $t2, ($a3)
/* 1FAD70 801E2DF0 8CF80000 */  lw    $t8, ($a3)
/* 1FAD74 801E2DF4 3C09800E */  lui   $t1, %hi(D_800E6690) # $t1, 0x800e
/* 1FAD78 801E2DF8 25296690 */  addiu $t1, %lo(D_800E6690) # addiu $t1, $t1, 0x6690
/* 1FAD7C 801E2DFC 8F080000 */  lw    $t0, ($t8)
/* 1FAD80 801E2E00 0008C880 */  sll   $t9, $t0, 2
/* 1FAD84 801E2E04 03291021 */  addu  $v0, $t9, $t1
/* 1FAD88 801E2E08 C4400000 */  lwc1  $f0, ($v0)
/* 1FAD8C 801E2E0C 460C003C */  c.lt.s $f0, $f12
/* 1FAD90 801E2E10 00000000 */  nop   
/* 1FAD94 801E2E14 45000004 */  bc1f  .L801E2E28_ovl13
/* 1FAD98 801E2E18 00000000 */   nop   
/* 1FAD9C 801E2E1C 46000407 */  neg.s $f16, $f0
/* 1FADA0 801E2E20 10000014 */  b     .L801E2E74_ovl13
/* 1FADA4 801E2E24 E4500000 */   swc1  $f16, ($v0)
.L801E2E28_ovl13:
/* 1FADA8 801E2E28 10000012 */  b     .L801E2E74_ovl13
/* 1FADAC 801E2E2C E4400000 */   swc1  $f0, ($v0)
/* 1FADB0 801E2E30 8CEA0000 */  lw    $t2, ($a3)
.L801E2E34_ovl13:
/* 1FADB4 801E2E34 3C0D800E */  lui   $t5, %hi(D_800E6690) # $t5, 0x800e
/* 1FADB8 801E2E38 25AD6690 */  addiu $t5, %lo(D_800E6690) # addiu $t5, $t5, 0x6690
/* 1FADBC 801E2E3C 8D4B0000 */  lw    $t3, ($t2)
/* 1FADC0 801E2E40 000B6080 */  sll   $t4, $t3, 2
/* 1FADC4 801E2E44 018D1021 */  addu  $v0, $t4, $t5
/* 1FADC8 801E2E48 C4400000 */  lwc1  $f0, ($v0)
/* 1FADCC 801E2E4C 460C003C */  c.lt.s $f0, $f12
/* 1FADD0 801E2E50 00000000 */  nop   
/* 1FADD4 801E2E54 45020006 */  bc1fl .L801E2E70_ovl13
/* 1FADD8 801E2E58 46000187 */   neg.s $f6, $f0
/* 1FADDC 801E2E5C 46000487 */  neg.s $f18, $f0
/* 1FADE0 801E2E60 46009107 */  neg.s $f4, $f18
/* 1FADE4 801E2E64 10000003 */  b     .L801E2E74_ovl13
/* 1FADE8 801E2E68 E4440000 */   swc1  $f4, ($v0)
/* 1FADEC 801E2E6C 46000187 */  neg.s $f6, $f0
.L801E2E70_ovl13:
/* 1FADF0 801E2E70 E4460000 */  swc1  $f6, ($v0)
.L801E2E74_ovl13:
/* 1FADF4 801E2E74 8CEE0000 */  lw    $t6, ($a3)
.L801E2E78_ovl13:
/* 1FADF8 801E2E78 3C02800E */  lui   $v0, 0x800e
/* 1FADFC 801E2E7C 8DCF0000 */  lw    $t7, ($t6)
/* 1FAE00 801E2E80 000FC080 */  sll   $t8, $t7, 2
/* 1FAE04 801E2E84 00581021 */  addu  $v0, $v0, $t8
/* 1FAE08 801E2E88 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1FAE0C 801E2E8C 8C44005C */  lw    $a0, 0x5c($v0)
/* 1FAE10 801E2E90 8C450010 */  lw    $a1, 0x10($v0)
/* 1FAE14 801E2E94 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1FAE18 801E2E98 8C460018 */   lw    $a2, 0x18($v0)
/* 1FAE1C 801E2E9C 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1FAE20 801E2EA0 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1FAE24 801E2EA4 8CE60000 */  lw    $a2, ($a3)
/* 1FAE28 801E2EA8 3C08800F */  lui   $t0, 0x800f
/* 1FAE2C 801E2EAC 24010001 */  li    $at, 1
/* 1FAE30 801E2EB0 8CC30000 */  lw    $v1, ($a2)
/* 1FAE34 801E2EB4 2419000E */  li    $t9, 14
/* 1FAE38 801E2EB8 3C04800E */  lui   $a0, 0x800e
/* 1FAE3C 801E2EBC 00031880 */  sll   $v1, $v1, 2
/* 1FAE40 801E2EC0 01034021 */  addu  $t0, $t0, $v1
/* 1FAE44 801E2EC4 8D0883E0 */  lw    $t0, -0x7c20($t0)
/* 1FAE48 801E2EC8 1501000A */  bne   $t0, $at, .L801E2EF4_ovl13
/* 1FAE4C 801E2ECC 3C01800E */   lui   $at, 0x800e
/* 1FAE50 801E2ED0 00230821 */  addu  $at, $at, $v1
/* 1FAE54 801E2ED4 AC39DC50 */  sw    $t9, -0x23b0($at)
/* 1FAE58 801E2ED8 8CC90000 */  lw    $t1, ($a2)
/* 1FAE5C 801E2EDC 3C05801E */  lui   $a1, %hi(D_801DB2D8) # $a1, 0x801e
/* 1FAE60 801E2EE0 24A5B2D8 */  addiu $a1, %lo(D_801DB2D8) # addiu $a1, $a1, -0x4d28
/* 1FAE64 801E2EE4 00095080 */  sll   $t2, $t1, 2
/* 1FAE68 801E2EE8 008A2021 */  addu  $a0, $a0, $t2
/* 1FAE6C 801E2EEC 0C02C7B2 */  jal   func_800B1EC8
/* 1FAE70 801E2EF0 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801E2EF4_ovl13:
/* 1FAE74 801E2EF4 0C078E56 */  jal   func_801E3958_ovl13
/* 1FAE78 801E2EF8 8FA40018 */   lw    $a0, 0x18($sp)
/* 1FAE7C 801E2EFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FAE80 801E2F00 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FAE84 801E2F04 03E00008 */  jr    $ra
/* 1FAE88 801E2F08 00000000 */   nop   

/* 1FAE8C 801E2F0C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FAE90 801E2F10 44866000 */  mtc1  $a2, $f12
/* 1FAE94 801E2F14 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FAE98 801E2F18 14A0003F */  bnez  $a1, .L801E3018_ovl13
/* 1FAE9C 801E2F1C AFA40018 */   sw    $a0, 0x18($sp)
/* 1FAEA0 801E2F20 4600610D */  trunc.w.s $f4, $f12
/* 1FAEA4 801E2F24 24010002 */  li    $at, 2
/* 1FAEA8 801E2F28 440F2000 */  mfc1  $t7, $f4
/* 1FAEAC 801E2F2C 00000000 */  nop   
/* 1FAEB0 801E2F30 55E1003A */  bnel  $t7, $at, .L801E301C_ovl13
/* 1FAEB4 801E2F34 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1FAEB8 801E2F38 0C06E8CB */  jal   func_801BA32C_ovl13
/* 1FAEBC 801E2F3C 00000000 */   nop   
/* 1FAEC0 801E2F40 2401FFFF */  li    $at, -1
/* 1FAEC4 801E2F44 10410034 */  beq   $v0, $at, .L801E3018_ovl13
/* 1FAEC8 801E2F48 24060001 */   li    $a2, 1
/* 1FAECC 801E2F4C 3C01800E */  lui   $at, 0x800e
/* 1FAED0 801E2F50 00220821 */  addu  $at, $at, $v0
/* 1FAED4 801E2F54 241800FF */  li    $t8, 255
/* 1FAED8 801E2F58 A03876C0 */  sb    $t8, 0x76c0($at)
/* 1FAEDC 801E2F5C 3C01800E */  lui   $at, 0x800e
/* 1FAEE0 801E2F60 00220821 */  addu  $at, $at, $v0
/* 1FAEE4 801E2F64 A0207730 */  sb    $zero, 0x7730($at)
/* 1FAEE8 801E2F68 3C01800E */  lui   $at, 0x800e
/* 1FAEEC 801E2F6C 00024040 */  sll   $t0, $v0, 1
/* 1FAEF0 801E2F70 00280821 */  addu  $at, $at, $t0
/* 1FAEF4 801E2F74 24190025 */  li    $t9, 37
/* 1FAEF8 801E2F78 A43977A0 */  sh    $t9, 0x77a0($at)
/* 1FAEFC 801E2F7C 3C01800E */  lui   $at, 0x800e
/* 1FAF00 801E2F80 00220821 */  addu  $at, $at, $v0
/* 1FAF04 801E2F84 24090001 */  li    $t1, 1
/* 1FAF08 801E2F88 44803000 */  mtc1  $zero, $f6
/* 1FAF0C 801E2F8C A0297880 */  sb    $t1, 0x7880($at)
/* 1FAF10 801E2F90 3C01800E */  lui   $at, 0x800e
/* 1FAF14 801E2F94 00021080 */  sll   $v0, $v0, 2
/* 1FAF18 801E2F98 00220821 */  addu  $at, $at, $v0
/* 1FAF1C 801E2F9C 3C0A8005 */  lui   $t2, %hi(D_8004A7C4) # $t2, 0x8005
/* 1FAF20 801E2FA0 E4264390 */  swc1  $f6, 0x4390($at)
/* 1FAF24 801E2FA4 8D4AA7C4 */  lw    $t2, %lo(D_8004A7C4)($t2)
/* 1FAF28 801E2FA8 3C01800E */  lui   $at, 0x800e
/* 1FAF2C 801E2FAC 00220821 */  addu  $at, $at, $v0
/* 1FAF30 801E2FB0 AC26DC50 */  sw    $a2, -0x23b0($at)
/* 1FAF34 801E2FB4 8D4B0000 */  lw    $t3, ($t2)
/* 1FAF38 801E2FB8 3C07800E */  lui   $a3, %hi(D_800E2790) # $a3, 0x800e
/* 1FAF3C 801E2FBC 24E72790 */  addiu $a3, %lo(D_800E2790) # addiu $a3, $a3, 0x2790
/* 1FAF40 801E2FC0 000B6080 */  sll   $t4, $t3, 2
/* 1FAF44 801E2FC4 00EC6821 */  addu  $t5, $a3, $t4
/* 1FAF48 801E2FC8 3C0141F0 */  li    $at, 0x41F00000 # 30.000000
/* 1FAF4C 801E2FCC 44815000 */  mtc1  $at, $f10
/* 1FAF50 801E2FD0 C5A80000 */  lwc1  $f8, ($t5)
/* 1FAF54 801E2FD4 00E27021 */  addu  $t6, $a3, $v0
/* 1FAF58 801E2FD8 3C01800F */  lui   $at, 0x800f
/* 1FAF5C 801E2FDC 460A4400 */  add.s $f16, $f8, $f10
/* 1FAF60 801E2FE0 3C0F800F */  lui   $t7, %hi(D_800E8AE0) # $t7, 0x800f
/* 1FAF64 801E2FE4 00220821 */  addu  $at, $at, $v0
/* 1FAF68 801E2FE8 25EF8AE0 */  addiu $t7, %lo(D_800E8AE0) # addiu $t7, $t7, -0x7520
/* 1FAF6C 801E2FEC E5D00000 */  swc1  $f16, ($t6)
/* 1FAF70 801E2FF0 AC208E60 */  sw    $zero, -0x71a0($at)
/* 1FAF74 801E2FF4 004F2821 */  addu  $a1, $v0, $t7
/* 1FAF78 801E2FF8 8CB80000 */  lw    $t8, ($a1)
/* 1FAF7C 801E2FFC 3C01800F */  lui   $at, 0x800f
/* 1FAF80 801E3000 00220821 */  addu  $at, $at, $v0
/* 1FAF84 801E3004 37190001 */  ori   $t9, $t8, 1
/* 1FAF88 801E3008 ACB90000 */  sw    $t9, ($a1)
/* 1FAF8C 801E300C AC269E20 */  sw    $a2, -0x61e0($at)
/* 1FAF90 801E3010 0C029D9E */  jal   func_800A7678
/* 1FAF94 801E3014 24040188 */   li    $a0, 392
.L801E3018_ovl13:
/* 1FAF98 801E3018 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E301C_ovl13:
/* 1FAF9C 801E301C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FAFA0 801E3020 03E00008 */  jr    $ra
/* 1FAFA4 801E3024 00000000 */   nop   

/* 1FAFA8 801E3028 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1FAFAC 801E302C AFB20038 */  sw    $s2, 0x38($sp)
/* 1FAFB0 801E3030 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 1FAFB4 801E3034 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 1FAFB8 801E3038 8E4E0000 */  lw    $t6, ($s2)
/* 1FAFBC 801E303C AFBF003C */  sw    $ra, 0x3c($sp)
/* 1FAFC0 801E3040 AFB10034 */  sw    $s1, 0x34($sp)
/* 1FAFC4 801E3044 AFB00030 */  sw    $s0, 0x30($sp)
/* 1FAFC8 801E3048 F7B60028 */  sdc1  $f22, 0x28($sp)
/* 1FAFCC 801E304C F7B40020 */  sdc1  $f20, 0x20($sp)
/* 1FAFD0 801E3050 AFA40040 */  sw    $a0, 0x40($sp)
/* 1FAFD4 801E3054 8DCF0000 */  lw    $t7, ($t6)
/* 1FAFD8 801E3058 3C10800E */  lui   $s0, %hi(D_800E1B50) # $s0, 0x800e
/* 1FAFDC 801E305C 4480B000 */  mtc1  $zero, $f22
/* 1FAFE0 801E3060 26101B50 */  addiu $s0, %lo(D_800E1B50) # addiu $s0, $s0, 0x1b50
/* 1FAFE4 801E3064 000FC080 */  sll   $t8, $t7, 2
/* 1FAFE8 801E3068 0218C821 */  addu  $t9, $s0, $t8
/* 1FAFEC 801E306C 8F310000 */  lw    $s1, ($t9)
/* 1FAFF0 801E3070 0C02BB48 */  jal   func_800AED20_ovl13
/* 1FAFF4 801E3074 4600B306 */   mov.s $f12, $f22
/* 1FAFF8 801E3078 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FAFFC 801E307C 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FB000 801E3080 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1FB004 801E3084 8E430000 */  lw    $v1, ($s2)
/* 1FB008 801E3088 3C01800E */  lui   $at, 0x800e
/* 1FB00C 801E308C 2408000C */  li    $t0, 12
/* 1FB010 801E3090 8C690000 */  lw    $t1, ($v1)
/* 1FB014 801E3094 3C0B801E */  lui   $t3, %hi(D_801D93F0) # $t3, 0x801e
/* 1FB018 801E3098 256B93F0 */  addiu $t3, %lo(D_801D93F0) # addiu $t3, $t3, -0x6c10
/* 1FB01C 801E309C 00095080 */  sll   $t2, $t1, 2
/* 1FB020 801E30A0 002A0821 */  addu  $at, $at, $t2
/* 1FB024 801E30A4 AC28DFD0 */  sw    $t0, -0x2030($at)
/* 1FB028 801E30A8 8C6C0000 */  lw    $t4, ($v1)
/* 1FB02C 801E30AC 3C04801E */  lui   $a0, %hi(D_801DAB04) # $a0, 0x801e
/* 1FB030 801E30B0 3C01800E */  lui   $at, 0x800e
/* 1FB034 801E30B4 000C6880 */  sll   $t5, $t4, 2
/* 1FB038 801E30B8 020D7021 */  addu  $t6, $s0, $t5
/* 1FB03C 801E30BC 8DCF0000 */  lw    $t7, ($t6)
/* 1FB040 801E30C0 2484AB04 */  addiu $a0, %lo(D_801DAB04) # addiu $a0, $a0, -0x54fc
/* 1FB044 801E30C4 ADEB008C */  sw    $t3, 0x8c($t7)
/* 1FB048 801E30C8 8E580000 */  lw    $t8, ($s2)
/* 1FB04C 801E30CC 8F190000 */  lw    $t9, ($t8)
/* 1FB050 801E30D0 00194880 */  sll   $t1, $t9, 2
/* 1FB054 801E30D4 00290821 */  addu  $at, $at, $t1
/* 1FB058 801E30D8 0C068AB7 */  jal   func_801A2ADC_ovl13
/* 1FB05C 801E30DC AC240490 */   sw    $a0, 0x490($at)
/* 1FB060 801E30E0 8E4A0000 */  lw    $t2, ($s2)
/* 1FB064 801E30E4 3C08801E */  lui   $t0, %hi(D_801DAE1C) # $t0, 0x801e
/* 1FB068 801E30E8 2508AE1C */  addiu $t0, %lo(D_801DAE1C) # addiu $t0, $t0, -0x51e4
/* 1FB06C 801E30EC 8D4C0000 */  lw    $t4, ($t2)
/* 1FB070 801E30F0 3C01800F */  lui   $at, 0x800f
/* 1FB074 801E30F4 3C04800E */  lui   $a0, %hi(D_800E3910) # $a0, 0x800e
/* 1FB078 801E30F8 000C6880 */  sll   $t5, $t4, 2
/* 1FB07C 801E30FC 020D7021 */  addu  $t6, $s0, $t5
/* 1FB080 801E3100 8DCB0000 */  lw    $t3, ($t6)
/* 1FB084 801E3104 24843910 */  addiu $a0, %lo(D_800E3910) # addiu $a0, $a0, 0x3910
/* 1FB088 801E3108 3C05800E */  lui   $a1, %hi(D_800E3590) # $a1, 0x800e
/* 1FB08C 801E310C AD680098 */  sw    $t0, 0x98($t3)
/* 1FB090 801E3110 8E430000 */  lw    $v1, ($s2)
/* 1FB094 801E3114 24A53590 */  addiu $a1, %lo(D_800E3590) # addiu $a1, $a1, 0x3590
/* 1FB098 801E3118 3C06800E */  lui   $a2, %hi(D_800E3E50) # $a2, 0x800e
/* 1FB09C 801E311C 8C6F0000 */  lw    $t7, ($v1)
/* 1FB0A0 801E3120 24C63E50 */  addiu $a2, %lo(D_800E3E50) # addiu $a2, $a2, 0x3e50
/* 1FB0A4 801E3124 44804000 */  mtc1  $zero, $f8
/* 1FB0A8 801E3128 000FC080 */  sll   $t8, $t7, 2
/* 1FB0AC 801E312C 00380821 */  addu  $at, $at, $t8
/* 1FB0B0 801E3130 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FB0B4 801E3134 8C790000 */  lw    $t9, ($v1)
/* 1FB0B8 801E3138 3C01800E */  lui   $at, 0x800e
/* 1FB0BC 801E313C 00194880 */  sll   $t1, $t9, 2
/* 1FB0C0 801E3140 00895021 */  addu  $t2, $a0, $t1
/* 1FB0C4 801E3144 E5560000 */  swc1  $f22, ($t2)
/* 1FB0C8 801E3148 8C620000 */  lw    $v0, ($v1)
/* 1FB0CC 801E314C 00021080 */  sll   $v0, $v0, 2
/* 1FB0D0 801E3150 00826021 */  addu  $t4, $a0, $v0
/* 1FB0D4 801E3154 C5800000 */  lwc1  $f0, ($t4)
/* 1FB0D8 801E3158 00A26821 */  addu  $t5, $a1, $v0
/* 1FB0DC 801E315C E5A00000 */  swc1  $f0, ($t5)
/* 1FB0E0 801E3160 8C6E0000 */  lw    $t6, ($v1)
/* 1FB0E4 801E3164 000E4080 */  sll   $t0, $t6, 2
/* 1FB0E8 801E3168 00280821 */  addu  $at, $at, $t0
/* 1FB0EC 801E316C E42033D0 */  swc1  $f0, 0x33d0($at)
/* 1FB0F0 801E3170 8C6B0000 */  lw    $t3, ($v1)
/* 1FB0F4 801E3174 3C01800E */  lui   $at, 0x800e
/* 1FB0F8 801E3178 000B7880 */  sll   $t7, $t3, 2
/* 1FB0FC 801E317C 002F0821 */  addu  $at, $at, $t7
/* 1FB100 801E3180 E4203050 */  swc1  $f0, 0x3050($at)
/* 1FB104 801E3184 8C780000 */  lw    $t8, ($v1)
/* 1FB108 801E3188 3C01801E */  lui   $at, %hi(D_801E5DD8) # $at, 0x801e
/* 1FB10C 801E318C C4245DD8 */  lwc1  $f4, %lo(D_801E5DD8)($at)
/* 1FB110 801E3190 0018C880 */  sll   $t9, $t8, 2
/* 1FB114 801E3194 00D94821 */  addu  $t1, $a2, $t9
/* 1FB118 801E3198 E5240000 */  swc1  $f4, ($t1)
/* 1FB11C 801E319C 8C620000 */  lw    $v0, ($v1)
/* 1FB120 801E31A0 3C01800E */  lui   $at, 0x800e
/* 1FB124 801E31A4 00021080 */  sll   $v0, $v0, 2
/* 1FB128 801E31A8 00C25021 */  addu  $t2, $a2, $v0
/* 1FB12C 801E31AC C5460000 */  lwc1  $f6, ($t2)
/* 1FB130 801E31B0 00220821 */  addu  $at, $at, $v0
/* 1FB134 801E31B4 E4263AD0 */  swc1  $f6, 0x3ad0($at)
/* 1FB138 801E31B8 8C6C0000 */  lw    $t4, ($v1)
/* 1FB13C 801E31BC 3C01800E */  lui   $at, 0x800e
/* 1FB140 801E31C0 000C6880 */  sll   $t5, $t4, 2
/* 1FB144 801E31C4 002D0821 */  addu  $at, $at, $t5
/* 1FB148 801E31C8 E4366690 */  swc1  $f22, 0x6690($at)
/* 1FB14C 801E31CC 8C620000 */  lw    $v0, ($v1)
/* 1FB150 801E31D0 3C01800E */  lui   $at, 0x800e
/* 1FB154 801E31D4 00021080 */  sll   $v0, $v0, 2
/* 1FB158 801E31D8 00220821 */  addu  $at, $at, $v0
/* 1FB15C 801E31DC C4206690 */  lwc1  $f0, 0x6690($at)
/* 1FB160 801E31E0 00827021 */  addu  $t6, $a0, $v0
/* 1FB164 801E31E4 3C01800E */  lui   $at, 0x800e
/* 1FB168 801E31E8 E5C00000 */  swc1  $f0, ($t6)
/* 1FB16C 801E31EC 8C680000 */  lw    $t0, ($v1)
/* 1FB170 801E31F0 00085880 */  sll   $t3, $t0, 2
/* 1FB174 801E31F4 002B0821 */  addu  $at, $at, $t3
/* 1FB178 801E31F8 E4203750 */  swc1  $f0, 0x3750($at)
/* 1FB17C 801E31FC 8C6F0000 */  lw    $t7, ($v1)
/* 1FB180 801E3200 3C01800D */  lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 1FB184 801E3204 000FC080 */  sll   $t8, $t7, 2
/* 1FB188 801E3208 00B8C821 */  addu  $t9, $a1, $t8
/* 1FB18C 801E320C E7200000 */  swc1  $f0, ($t9)
/* 1FB190 801E3210 C42A6E5C */  lwc1  $f10, %lo(D_800D6E5C)($at)
/* 1FB194 801E3214 460A4032 */  c.eq.s $f8, $f10
/* 1FB198 801E3218 00000000 */  nop   
/* 1FB19C 801E321C 45010007 */  bc1t  .L801E323C_ovl13
/* 1FB1A0 801E3220 00000000 */   nop   
/* 1FB1A4 801E3224 8C690000 */  lw    $t1, ($v1)
/* 1FB1A8 801E3228 3C01800E */  lui   $at, 0x800e
/* 1FB1AC 801E322C 00095080 */  sll   $t2, $t1, 2
/* 1FB1B0 801E3230 002A0821 */  addu  $at, $at, $t2
/* 1FB1B4 801E3234 0C02F047 */  jal   func_800BC11C_ovl13
/* 1FB1B8 801E3238 C42C7B20 */   lwc1  $f12, 0x7b20($at)
.L801E323C_ovl13:
/* 1FB1BC 801E323C 3C0C800D */  lui   $t4, %hi(D_800D6B54) # $t4, 0x800d
/* 1FB1C0 801E3240 8D8C6B54 */  lw    $t4, %lo(D_800D6B54)($t4)
/* 1FB1C4 801E3244 15800003 */  bnez  $t4, .L801E3254_ovl13
/* 1FB1C8 801E3248 00000000 */   nop   
/* 1FB1CC 801E324C 0C067C7B */  jal   func_8019F1EC_ovl13
/* 1FB1D0 801E3250 00000000 */   nop   
.L801E3254_ovl13:
/* 1FB1D4 801E3254 0C029D9E */  jal   func_800A7678
/* 1FB1D8 801E3258 240401E6 */   li    $a0, 486
/* 1FB1DC 801E325C 24040003 */  li    $a0, 3
/* 1FB1E0 801E3260 0C02ED1A */  jal   func_800BB468_ovl13
/* 1FB1E4 801E3264 00002825 */   move  $a1, $zero
/* 1FB1E8 801E3268 8E2D0088 */  lw    $t5, 0x88($s1)
/* 1FB1EC 801E326C 4406B000 */  mfc1  $a2, $f22
/* 1FB1F0 801E3270 00002025 */  move  $a0, $zero
/* 1FB1F4 801E3274 8DAE0010 */  lw    $t6, 0x10($t5)
/* 1FB1F8 801E3278 24050002 */  li    $a1, 2
/* 1FB1FC 801E327C 8DC70000 */  lw    $a3, ($t6)
/* 1FB200 801E3280 0C03F55C */  jal   func_800FD570_ovl13
/* 1FB204 801E3284 E7B60010 */   swc1  $f22, 0x10($sp)
/* 1FB208 801E3288 8E280088 */  lw    $t0, 0x88($s1)
/* 1FB20C 801E328C 4406B000 */  mfc1  $a2, $f22
/* 1FB210 801E3290 00002025 */  move  $a0, $zero
/* 1FB214 801E3294 8D0B0010 */  lw    $t3, 0x10($t0)
/* 1FB218 801E3298 24050004 */  li    $a1, 4
/* 1FB21C 801E329C 8D670000 */  lw    $a3, ($t3)
/* 1FB220 801E32A0 0C03F55C */  jal   func_800FD570_ovl13
/* 1FB224 801E32A4 E7B60010 */   swc1  $f22, 0x10($sp)
/* 1FB228 801E32A8 8E430000 */  lw    $v1, ($s2)
/* 1FB22C 801E32AC 3C01801E */  lui   $at, %hi(D_801E5DDC) # $at, 0x801e
/* 1FB230 801E32B0 C4205DDC */  lwc1  $f0, %lo(D_801E5DDC)($at)
/* 1FB234 801E32B4 8C6F0000 */  lw    $t7, ($v1)
/* 1FB238 801E32B8 3C01800F */  lui   $at, 0x800f
/* 1FB23C 801E32BC 000FC080 */  sll   $t8, $t7, 2
/* 1FB240 801E32C0 00380821 */  addu  $at, $at, $t8
/* 1FB244 801E32C4 E420AC20 */  swc1  $f0, -0x53e0($at)
/* 1FB248 801E32C8 8C790000 */  lw    $t9, ($v1)
/* 1FB24C 801E32CC 3C01800F */  lui   $at, 0x800f
/* 1FB250 801E32D0 00194880 */  sll   $t1, $t9, 2
/* 1FB254 801E32D4 00290821 */  addu  $at, $at, $t1
/* 1FB258 801E32D8 E420AFA0 */  swc1  $f0, -0x5060($at)
/* 1FB25C 801E32DC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FB260 801E32E0 C4306B10 */  lwc1  $f16, %lo(D_800D6B10)($at)
/* 1FB264 801E32E4 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1FB268 801E32E8 44819000 */  mtc1  $at, $f18
/* 1FB26C 801E32EC 00000000 */  nop   
/* 1FB270 801E32F0 46128302 */  mul.s $f12, $f16, $f18
/* 1FB274 801E32F4 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FB278 801E32F8 00000000 */   nop   
/* 1FB27C 801E32FC 3C040001 */  lui   $a0, (0x00010427 >> 16) # lui $a0, 1
/* 1FB280 801E3300 0C02A806 */  jal   func_800AA018_ovl13
/* 1FB284 801E3304 34840427 */   ori   $a0, (0x00010427 & 0xFFFF) # ori $a0, $a0, 0x427
/* 1FB288 801E3308 8E430000 */  lw    $v1, ($s2)
/* 1FB28C 801E330C 3C01801E */  lui   $at, %hi(func_801E5DE0) # $at, 0x801e
/* 1FB290 801E3310 C4245DE0 */  lwc1  $f4, %lo(func_801E5DE0)($at)
/* 1FB294 801E3314 8C6A0000 */  lw    $t2, ($v1)
/* 1FB298 801E3318 3C01800E */  lui   $at, 0x800e
/* 1FB29C 801E331C 8FA40040 */  lw    $a0, 0x40($sp)
/* 1FB2A0 801E3320 000A6080 */  sll   $t4, $t2, 2
/* 1FB2A4 801E3324 002C0821 */  addu  $at, $at, $t4
/* 1FB2A8 801E3328 E4243750 */  swc1  $f4, 0x3750($at)
/* 1FB2AC 801E332C 8C6D0000 */  lw    $t5, ($v1)
/* 1FB2B0 801E3330 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 1FB2B4 801E3334 44813000 */  mtc1  $at, $f6
/* 1FB2B8 801E3338 3C01800E */  lui   $at, 0x800e
/* 1FB2BC 801E333C 000D7080 */  sll   $t6, $t5, 2
/* 1FB2C0 801E3340 002E0821 */  addu  $at, $at, $t6
/* 1FB2C4 801E3344 0C078DFA */  jal   func_801E37E8_ovl13
/* 1FB2C8 801E3348 E4263C90 */   swc1  $f6, 0x3c90($at)
/* 1FB2CC 801E334C 8E430000 */  lw    $v1, ($s2)
/* 1FB2D0 801E3350 3C10800D */  lui   $s0, %hi(D_800D7118) # $s0, 0x800d
/* 1FB2D4 801E3354 26107118 */  addiu $s0, %lo(D_800D7118) # addiu $s0, $s0, 0x7118
/* 1FB2D8 801E3358 AE00003C */  sw    $zero, 0x3c($s0)
/* 1FB2DC 801E335C 8C680000 */  lw    $t0, ($v1)
/* 1FB2E0 801E3360 3C01800E */  lui   $at, 0x800e
/* 1FB2E4 801E3364 24040002 */  li    $a0, 2
/* 1FB2E8 801E3368 00085880 */  sll   $t3, $t0, 2
/* 1FB2EC 801E336C 002B0821 */  addu  $at, $at, $t3
/* 1FB2F0 801E3370 E4367B20 */  swc1  $f22, 0x7b20($at)
/* 1FB2F4 801E3374 8C620000 */  lw    $v0, ($v1)
/* 1FB2F8 801E3378 3C01800E */  lui   $at, 0x800e
/* 1FB2FC 801E337C 00021080 */  sll   $v0, $v0, 2
/* 1FB300 801E3380 00220821 */  addu  $at, $at, $v0
/* 1FB304 801E3384 C42864D0 */  lwc1  $f8, 0x64d0($at)
/* 1FB308 801E3388 3C01801E */  lui   $at, %hi(D_801E5DE4) # $at, 0x801e
/* 1FB30C 801E338C C42A5DE4 */  lwc1  $f10, %lo(D_801E5DE4)($at)
/* 1FB310 801E3390 3C01800E */  lui   $at, 0x800e
/* 1FB314 801E3394 00220821 */  addu  $at, $at, $v0
/* 1FB318 801E3398 460A4402 */  mul.s $f16, $f8, $f10
/* 1FB31C 801E339C 0C002DAF */  jal   func_8000B6BC
/* 1FB320 801E33A0 E4306690 */   swc1  $f16, 0x6690($at)
/* 1FB324 801E33A4 0C078DFA */  jal   func_801E37E8_ovl13
/* 1FB328 801E33A8 8FA40040 */   lw    $a0, 0x40($sp)
/* 1FB32C 801E33AC AE00003C */  sw    $zero, 0x3c($s0)
/* 1FB330 801E33B0 0C002DAF */  jal   func_8000B6BC
/* 1FB334 801E33B4 24040012 */   li    $a0, 18
/* 1FB338 801E33B8 8E430000 */  lw    $v1, ($s2)
/* 1FB33C 801E33BC 3C01438C */  li    $at, 0x438C0000 # 280.000000
/* 1FB340 801E33C0 4481A000 */  mtc1  $at, $f20
/* 1FB344 801E33C4 8C6F0000 */  lw    $t7, ($v1)
/* 1FB348 801E33C8 3C01800E */  lui   $at, 0x800e
/* 1FB34C 801E33CC 3C11800F */  lui   $s1, %hi(D_800EBBE0) # $s1, 0x800f
/* 1FB350 801E33D0 000FC080 */  sll   $t8, $t7, 2
/* 1FB354 801E33D4 00380821 */  addu  $at, $at, $t8
/* 1FB358 801E33D8 E4366690 */  swc1  $f22, 0x6690($at)
/* 1FB35C 801E33DC 8C620000 */  lw    $v0, ($v1)
/* 1FB360 801E33E0 3C01800E */  lui   $at, 0x800e
/* 1FB364 801E33E4 2631BBE0 */  addiu $s1, %lo(D_800EBBE0) # addiu $s1, $s1, -0x4420
/* 1FB368 801E33E8 00021080 */  sll   $v0, $v0, 2
/* 1FB36C 801E33EC 00220821 */  addu  $at, $at, $v0
/* 1FB370 801E33F0 C4326690 */  lwc1  $f18, 0x6690($at)
/* 1FB374 801E33F4 3C01800E */  lui   $at, 0x800e
/* 1FB378 801E33F8 00220821 */  addu  $at, $at, $v0
/* 1FB37C 801E33FC E43264D0 */  swc1  $f18, 0x64d0($at)
/* 1FB380 801E3400 8C790000 */  lw    $t9, ($v1)
/* 1FB384 801E3404 3C01801E */  lui   $at, %hi(D_801E5DE8) # $at, 0x801e
/* 1FB388 801E3408 C4245DE8 */  lwc1  $f4, %lo(D_801E5DE8)($at)
/* 1FB38C 801E340C 3C01800E */  lui   $at, 0x800e
/* 1FB390 801E3410 00194880 */  sll   $t1, $t9, 2
/* 1FB394 801E3414 00290821 */  addu  $at, $at, $t1
/* 1FB398 801E3418 E4246850 */  swc1  $f4, 0x6850($at)
/* 1FB39C 801E341C 8C620000 */  lw    $v0, ($v1)
/* 1FB3A0 801E3420 3C10800E */  lui   $s0, %hi(D_800E2790) # $s0, 0x800e
/* 1FB3A4 801E3424 26102790 */  addiu $s0, %lo(D_800E2790) # addiu $s0, $s0, 0x2790
/* 1FB3A8 801E3428 00021080 */  sll   $v0, $v0, 2
/* 1FB3AC 801E342C 02225021 */  addu  $t2, $s1, $v0
/* 1FB3B0 801E3430 8D4C0000 */  lw    $t4, ($t2)
/* 1FB3B4 801E3434 02024021 */  addu  $t0, $s0, $v0
/* 1FB3B8 801E3438 C50A0000 */  lwc1  $f10, ($t0)
/* 1FB3BC 801E343C 000C6880 */  sll   $t5, $t4, 2
/* 1FB3C0 801E3440 020D7021 */  addu  $t6, $s0, $t5
/* 1FB3C4 801E3444 C5C60000 */  lwc1  $f6, ($t6)
/* 1FB3C8 801E3448 46143201 */  sub.s $f8, $f6, $f20
/* 1FB3CC 801E344C 460A403C */  c.lt.s $f8, $f10
/* 1FB3D0 801E3450 00000000 */  nop   
/* 1FB3D4 801E3454 45000012 */  bc1f  .L801E34A0_ovl13
/* 1FB3D8 801E3458 00000000 */   nop   
.L801E345C_ovl13:
/* 1FB3DC 801E345C 0C002DAF */  jal   func_8000B6BC
/* 1FB3E0 801E3460 24040001 */   li    $a0, 1
/* 1FB3E4 801E3464 8E430000 */  lw    $v1, ($s2)
/* 1FB3E8 801E3468 8C620000 */  lw    $v0, ($v1)
/* 1FB3EC 801E346C 00021080 */  sll   $v0, $v0, 2
/* 1FB3F0 801E3470 02225821 */  addu  $t3, $s1, $v0
/* 1FB3F4 801E3474 8D6F0000 */  lw    $t7, ($t3)
/* 1FB3F8 801E3478 02024821 */  addu  $t1, $s0, $v0
/* 1FB3FC 801E347C C5240000 */  lwc1  $f4, ($t1)
/* 1FB400 801E3480 000FC080 */  sll   $t8, $t7, 2
/* 1FB404 801E3484 0218C821 */  addu  $t9, $s0, $t8
/* 1FB408 801E3488 C7300000 */  lwc1  $f16, ($t9)
/* 1FB40C 801E348C 46148481 */  sub.s $f18, $f16, $f20
/* 1FB410 801E3490 4604903C */  c.lt.s $f18, $f4
/* 1FB414 801E3494 00000000 */  nop   
/* 1FB418 801E3498 4501FFF0 */  bc1t  .L801E345C_ovl13
/* 1FB41C 801E349C 00000000 */   nop   
.L801E34A0_ovl13:
/* 1FB420 801E34A0 3C0C800E */  lui   $t4, 0x800e
/* 1FB424 801E34A4 01826021 */  addu  $t4, $t4, $v0
/* 1FB428 801E34A8 8D8C0D50 */  lw    $t4, 0xd50($t4)
/* 1FB42C 801E34AC 3C01800F */  lui   $at, 0x800f
/* 1FB430 801E34B0 240A0005 */  li    $t2, 5
/* 1FB434 801E34B4 000C6880 */  sll   $t5, $t4, 2
/* 1FB438 801E34B8 002D0821 */  addu  $at, $at, $t5
/* 1FB43C 801E34BC AC2A98E0 */  sw    $t2, -0x6720($at)
/* 1FB440 801E34C0 8C6E0000 */  lw    $t6, ($v1)
/* 1FB444 801E34C4 3C05800F */  lui   $a1, %hi(D_800EAFA0) # $a1, 0x800f
/* 1FB448 801E34C8 24A5AFA0 */  addiu $a1, %lo(D_800EAFA0) # addiu $a1, $a1, -0x5060
/* 1FB44C 801E34CC 000E4080 */  sll   $t0, $t6, 2
/* 1FB450 801E34D0 00A85821 */  addu  $t3, $a1, $t0
/* 1FB454 801E34D4 E5760000 */  swc1  $f22, ($t3)
/* 1FB458 801E34D8 8C620000 */  lw    $v0, ($v1)
/* 1FB45C 801E34DC 3C01800F */  lui   $at, 0x800f
/* 1FB460 801E34E0 24040002 */  li    $a0, 2
/* 1FB464 801E34E4 00021080 */  sll   $v0, $v0, 2
/* 1FB468 801E34E8 00A27821 */  addu  $t7, $a1, $v0
/* 1FB46C 801E34EC C5E60000 */  lwc1  $f6, ($t7)
/* 1FB470 801E34F0 00220821 */  addu  $at, $at, $v0
/* 1FB474 801E34F4 E426AC20 */  swc1  $f6, -0x53e0($at)
/* 1FB478 801E34F8 8C780000 */  lw    $t8, ($v1)
/* 1FB47C 801E34FC 3C01438C */  li    $at, 0x438C0000 # 280.000000
/* 1FB480 801E3500 44815000 */  mtc1  $at, $f10
/* 1FB484 801E3504 0018C880 */  sll   $t9, $t8, 2
/* 1FB488 801E3508 02394821 */  addu  $t1, $s1, $t9
/* 1FB48C 801E350C 8D2C0000 */  lw    $t4, ($t1)
/* 1FB490 801E3510 3C01800D */  lui   $at, %hi(D_800D70D8) # $at, 0x800d
/* 1FB494 801E3514 000C5080 */  sll   $t2, $t4, 2
/* 1FB498 801E3518 020A6821 */  addu  $t5, $s0, $t2
/* 1FB49C 801E351C C5A80000 */  lwc1  $f8, ($t5)
/* 1FB4A0 801E3520 460A4400 */  add.s $f16, $f8, $f10
/* 1FB4A4 801E3524 0C06F1E5 */  jal   func_801BC794_ovl13
/* 1FB4A8 801E3528 E43070D8 */   swc1  $f16, %lo(D_800D70D8)($at)
/* 1FB4AC 801E352C 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 1FB4B0 801E3530 2401FFFF */  li    $at, -1
/* 1FB4B4 801E3534 10410025 */  beq   $v0, $at, .L801E35CC_ovl13
/* 1FB4B8 801E3538 24E70D50 */   addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 1FB4BC 801E353C 8E430000 */  lw    $v1, ($s2)
/* 1FB4C0 801E3540 3C05800E */  lui   $a1, %hi(D_800E5F90) # $a1, 0x800e
/* 1FB4C4 801E3544 24A55F90 */  addiu $a1, %lo(D_800E5F90) # addiu $a1, $a1, 0x5f90
/* 1FB4C8 801E3548 8C6E0000 */  lw    $t6, ($v1)
/* 1FB4CC 801E354C 00022080 */  sll   $a0, $v0, 2
/* 1FB4D0 801E3550 00A46021 */  addu  $t4, $a1, $a0
/* 1FB4D4 801E3554 000E4080 */  sll   $t0, $t6, 2
/* 1FB4D8 801E3558 00E85821 */  addu  $t3, $a3, $t0
/* 1FB4DC 801E355C 8D6F0000 */  lw    $t7, ($t3)
/* 1FB4E0 801E3560 3C06800E */  lui   $a2, %hi(D_800E6BD0) # $a2, 0x800e
/* 1FB4E4 801E3564 24C66BD0 */  addiu $a2, %lo(D_800E6BD0) # addiu $a2, $a2, 0x6bd0
/* 1FB4E8 801E3568 000FC080 */  sll   $t8, $t7, 2
/* 1FB4EC 801E356C 00B8C821 */  addu  $t9, $a1, $t8
/* 1FB4F0 801E3570 8F290000 */  lw    $t1, ($t9)
/* 1FB4F4 801E3574 00C4C021 */  addu  $t8, $a2, $a0
/* 1FB4F8 801E3578 3C014320 */  li    $at, 0x43200000 # 160.000000
/* 1FB4FC 801E357C AD890000 */  sw    $t1, ($t4)
/* 1FB500 801E3580 8C6A0000 */  lw    $t2, ($v1)
/* 1FB504 801E3584 44813000 */  mtc1  $at, $f6
/* 1FB508 801E3588 000A6880 */  sll   $t5, $t2, 2
/* 1FB50C 801E358C 00ED7021 */  addu  $t6, $a3, $t5
/* 1FB510 801E3590 8DC80000 */  lw    $t0, ($t6)
/* 1FB514 801E3594 00085880 */  sll   $t3, $t0, 2
/* 1FB518 801E3598 00CB7821 */  addu  $t7, $a2, $t3
/* 1FB51C 801E359C C5F20000 */  lwc1  $f18, ($t7)
/* 1FB520 801E35A0 02044021 */  addu  $t0, $s0, $a0
/* 1FB524 801E35A4 E7120000 */  swc1  $f18, ($t8)
/* 1FB528 801E35A8 8C790000 */  lw    $t9, ($v1)
/* 1FB52C 801E35AC 00194880 */  sll   $t1, $t9, 2
/* 1FB530 801E35B0 02296021 */  addu  $t4, $s1, $t1
/* 1FB534 801E35B4 8D8A0000 */  lw    $t2, ($t4)
/* 1FB538 801E35B8 000A6880 */  sll   $t5, $t2, 2
/* 1FB53C 801E35BC 020D7021 */  addu  $t6, $s0, $t5
/* 1FB540 801E35C0 C5C40000 */  lwc1  $f4, ($t6)
/* 1FB544 801E35C4 46062201 */  sub.s $f8, $f4, $f6
/* 1FB548 801E35C8 E5080000 */  swc1  $f8, ($t0)
.L801E35CC_ovl13:
/* 1FB54C 801E35CC 0C02BE85 */  jal   func_800AFA14_ovl13
/* 1FB550 801E35D0 00000000 */   nop   
/* 1FB554 801E35D4 8FBF003C */  lw    $ra, 0x3c($sp)
/* 1FB558 801E35D8 D7B40020 */  ldc1  $f20, 0x20($sp)
/* 1FB55C 801E35DC D7B60028 */  ldc1  $f22, 0x28($sp)
/* 1FB560 801E35E0 8FB00030 */  lw    $s0, 0x30($sp)
/* 1FB564 801E35E4 8FB10034 */  lw    $s1, 0x34($sp)
/* 1FB568 801E35E8 8FB20038 */  lw    $s2, 0x38($sp)
/* 1FB56C 801E35EC 03E00008 */  jr    $ra
/* 1FB570 801E35F0 27BD0040 */   addiu $sp, $sp, 0x40

/* 1FB574 801E35F4 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1FB578 801E35F8 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1FB57C 801E35FC 8CEE0000 */  lw    $t6, ($a3)
/* 1FB580 801E3600 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FB584 801E3604 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FB588 801E3608 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FB58C 801E360C 8DC20000 */  lw    $v0, ($t6)
/* 1FB590 801E3610 3C06800E */  lui   $a2, %hi(D_800DFBD0) # $a2, 0x800e
/* 1FB594 801E3614 24C6FBD0 */  addiu $a2, %lo(D_800DFBD0) # addiu $a2, $a2, -0x430
/* 1FB598 801E3618 00021080 */  sll   $v0, $v0, 2
/* 1FB59C 801E361C 00C27821 */  addu  $t7, $a2, $v0
/* 1FB5A0 801E3620 8DF80000 */  lw    $t8, ($t7)
/* 1FB5A4 801E3624 3C01800F */  lui   $at, 0x800f
/* 1FB5A8 801E3628 00220821 */  addu  $at, $at, $v0
/* 1FB5AC 801E362C 8F030004 */  lw    $v1, 4($t8)
/* 1FB5B0 801E3630 C426AC20 */  lwc1  $f6, -0x53e0($at)
/* 1FB5B4 801E3634 3C01800F */  lui   $at, 0x800f
/* 1FB5B8 801E3638 C4640034 */  lwc1  $f4, 0x34($v1)
/* 1FB5BC 801E363C 46062200 */  add.s $f8, $f4, $f6
/* 1FB5C0 801E3640 E4680034 */  swc1  $f8, 0x34($v1)
/* 1FB5C4 801E3644 8CF90000 */  lw    $t9, ($a3)
/* 1FB5C8 801E3648 8F220000 */  lw    $v0, ($t9)
/* 1FB5CC 801E364C 00021080 */  sll   $v0, $v0, 2
/* 1FB5D0 801E3650 00C24021 */  addu  $t0, $a2, $v0
/* 1FB5D4 801E3654 8D090000 */  lw    $t1, ($t0)
/* 1FB5D8 801E3658 00220821 */  addu  $at, $at, $v0
/* 1FB5DC 801E365C C430AFA0 */  lwc1  $f16, -0x5060($at)
/* 1FB5E0 801E3660 8D250008 */  lw    $a1, 8($t1)
/* 1FB5E4 801E3664 3C01800F */  lui   $at, 0x800f
/* 1FB5E8 801E3668 C4AA0038 */  lwc1  $f10, 0x38($a1)
/* 1FB5EC 801E366C 46105480 */  add.s $f18, $f10, $f16
/* 1FB5F0 801E3670 E4B20038 */  swc1  $f18, 0x38($a1)
/* 1FB5F4 801E3674 8CEA0000 */  lw    $t2, ($a3)
/* 1FB5F8 801E3678 8FA40018 */  lw    $a0, 0x18($sp)
/* 1FB5FC 801E367C 8D4B0000 */  lw    $t3, ($t2)
/* 1FB600 801E3680 000B6080 */  sll   $t4, $t3, 2
/* 1FB604 801E3684 002C0821 */  addu  $at, $at, $t4
/* 1FB608 801E3688 0C06835D */  jal   func_801A0D74_ovl13
/* 1FB60C 801E368C AC208920 */   sw    $zero, -0x76e0($at)
/* 1FB610 801E3690 3C078005 */  lui   $a3, %hi(D_8004A7C4) # $a3, 0x8005
/* 1FB614 801E3694 24E7A7C4 */  addiu $a3, %lo(D_8004A7C4) # addiu $a3, $a3, -0x583c
/* 1FB618 801E3698 8CED0000 */  lw    $t5, ($a3)
/* 1FB61C 801E369C 3C02800E */  lui   $v0, 0x800e
/* 1FB620 801E36A0 8DAE0000 */  lw    $t6, ($t5)
/* 1FB624 801E36A4 000E7880 */  sll   $t7, $t6, 2
/* 1FB628 801E36A8 004F1021 */  addu  $v0, $v0, $t7
/* 1FB62C 801E36AC 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1FB630 801E36B0 8C44005C */  lw    $a0, 0x5c($v0)
/* 1FB634 801E36B4 8C450010 */  lw    $a1, 0x10($v0)
/* 1FB638 801E36B8 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1FB63C 801E36BC 8C460018 */   lw    $a2, 0x18($v0)
/* 1FB640 801E36C0 0C078E56 */  jal   func_801E3958_ovl13
/* 1FB644 801E36C4 8FA40018 */   lw    $a0, 0x18($sp)
/* 1FB648 801E36C8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FB64C 801E36CC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FB650 801E36D0 03E00008 */  jr    $ra
/* 1FB654 801E36D4 00000000 */   nop   

/* 1FB658 801E36D8 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FB65C 801E36DC 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 1FB660 801E36E0 8C620000 */  lw    $v0, ($v1)
/* 1FB664 801E36E4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FB668 801E36E8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FB66C 801E36EC AFA40018 */  sw    $a0, 0x18($sp)
/* 1FB670 801E36F0 8C4F0000 */  lw    $t7, ($v0)
/* 1FB674 801E36F4 3C01800E */  lui   $at, 0x800e
/* 1FB678 801E36F8 240E000E */  li    $t6, 14
/* 1FB67C 801E36FC 000FC080 */  sll   $t8, $t7, 2
/* 1FB680 801E3700 00380821 */  addu  $at, $at, $t8
/* 1FB684 801E3704 AC2EDFD0 */  sw    $t6, -0x2030($at)
/* 1FB688 801E3708 8C480000 */  lw    $t0, ($v0)
/* 1FB68C 801E370C 3C04800E */  lui   $a0, %hi(D_800E1B50) # $a0, 0x800e
/* 1FB690 801E3710 24841B50 */  addiu $a0, %lo(D_800E1B50) # addiu $a0, $a0, 0x1b50
/* 1FB694 801E3714 00084880 */  sll   $t1, $t0, 2
/* 1FB698 801E3718 00895021 */  addu  $t2, $a0, $t1
/* 1FB69C 801E371C 8D4B0000 */  lw    $t3, ($t2)
/* 1FB6A0 801E3720 3C19801E */  lui   $t9, %hi(D_801D93F0) # $t9, 0x801e
/* 1FB6A4 801E3724 273993F0 */  addiu $t9, %lo(D_801D93F0) # addiu $t9, $t9, -0x6c10
/* 1FB6A8 801E3728 AD79008C */  sw    $t9, 0x8c($t3)
/* 1FB6AC 801E372C 8C6D0000 */  lw    $t5, ($v1)
/* 1FB6B0 801E3730 3C0C801E */  lui   $t4, %hi(D_801DAE1C) # $t4, 0x801e
/* 1FB6B4 801E3734 258CAE1C */  addiu $t4, %lo(D_801DAE1C) # addiu $t4, $t4, -0x51e4
/* 1FB6B8 801E3738 8DAF0000 */  lw    $t7, ($t5)
/* 1FB6BC 801E373C 000F7080 */  sll   $t6, $t7, 2
/* 1FB6C0 801E3740 008EC021 */  addu  $t8, $a0, $t6
/* 1FB6C4 801E3744 8F080000 */  lw    $t0, ($t8)
/* 1FB6C8 801E3748 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1FB6CC 801E374C AD0C0098 */   sw    $t4, 0x98($t0)
/* 1FB6D0 801E3750 0C002DAF */  jal   func_8000B6BC
/* 1FB6D4 801E3754 2404001E */   li    $a0, 30
/* 1FB6D8 801E3758 0C03DB1E */  jal   func_800F6C78_ovl13
/* 1FB6DC 801E375C 00000000 */   nop   
/* 1FB6E0 801E3760 0C02BE85 */  jal   func_800AFA14_ovl13
/* 1FB6E4 801E3764 00000000 */   nop   
/* 1FB6E8 801E3768 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FB6EC 801E376C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FB6F0 801E3770 03E00008 */  jr    $ra
/* 1FB6F4 801E3774 00000000 */   nop   

/* 1FB6F8 801E3778 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1FB6FC 801E377C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1FB700 801E3780 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FB704 801E3784 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FB708 801E3788 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FB70C 801E378C 8DCF0000 */  lw    $t7, ($t6)
/* 1FB710 801E3790 3C01800F */  lui   $at, 0x800f
/* 1FB714 801E3794 000FC080 */  sll   $t8, $t7, 2
/* 1FB718 801E3798 00380821 */  addu  $at, $at, $t8
/* 1FB71C 801E379C 0C06835D */  jal   func_801A0D74_ovl13
/* 1FB720 801E37A0 AC208920 */   sw    $zero, -0x76e0($at)
/* 1FB724 801E37A4 3C198005 */  lui   $t9, %hi(D_8004A7C4) # $t9, 0x8005
/* 1FB728 801E37A8 8F39A7C4 */  lw    $t9, %lo(D_8004A7C4)($t9)
/* 1FB72C 801E37AC 3C02800E */  lui   $v0, 0x800e
/* 1FB730 801E37B0 8F280000 */  lw    $t0, ($t9)
/* 1FB734 801E37B4 00084880 */  sll   $t1, $t0, 2
/* 1FB738 801E37B8 00491021 */  addu  $v0, $v0, $t1
/* 1FB73C 801E37BC 8C42FBD0 */  lw    $v0, -0x430($v0)
/* 1FB740 801E37C0 8C44005C */  lw    $a0, 0x5c($v0)
/* 1FB744 801E37C4 8C450010 */  lw    $a1, 0x10($v0)
/* 1FB748 801E37C8 0C078EA1 */  jal   func_801E3A84_ovl13
/* 1FB74C 801E37CC 8C460018 */   lw    $a2, 0x18($v0)
/* 1FB750 801E37D0 0C078E56 */  jal   func_801E3958_ovl13
/* 1FB754 801E37D4 8FA40018 */   lw    $a0, 0x18($sp)
/* 1FB758 801E37D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FB75C 801E37DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FB760 801E37E0 03E00008 */  jr    $ra
/* 1FB764 801E37E4 00000000 */   nop   

/* 1FB768 801E37E8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 1FB76C 801E37EC F7B60020 */  sdc1  $f22, 0x20($sp)
/* 1FB770 801E37F0 3C01801E */  lui   $at, %hi(D_801E5DEC) # $at, 0x801e
/* 1FB774 801E37F4 AFB70044 */  sw    $s7, 0x44($sp)
/* 1FB778 801E37F8 AFB40038 */  sw    $s4, 0x38($sp)
/* 1FB77C 801E37FC AFB20030 */  sw    $s2, 0x30($sp)
/* 1FB780 801E3800 C4365DEC */  lwc1  $f22, %lo(D_801E5DEC)($at)
/* 1FB784 801E3804 AFBE0048 */  sw    $fp, 0x48($sp)
/* 1FB788 801E3808 AFB60040 */  sw    $s6, 0x40($sp)
/* 1FB78C 801E380C AFB5003C */  sw    $s5, 0x3c($sp)
/* 1FB790 801E3810 AFB30034 */  sw    $s3, 0x34($sp)
/* 1FB794 801E3814 AFB1002C */  sw    $s1, 0x2c($sp)
/* 1FB798 801E3818 AFB00028 */  sw    $s0, 0x28($sp)
/* 1FB79C 801E381C F7B40018 */  sdc1  $f20, 0x18($sp)
/* 1FB7A0 801E3820 3C01801E */  lui   $at, %hi(D_801E5DF0) # $at, 0x801e
/* 1FB7A4 801E3824 3C12800E */  lui   $s2, %hi(D_800DD748) # $s2, 0x800e
/* 1FB7A8 801E3828 3C14800E */  lui   $s4, %hi(D_800E7730) # $s4, 0x800e
/* 1FB7AC 801E382C 3C17800E */  lui   $s7, %hi(D_800E77A0) # $s7, 0x800e
/* 1FB7B0 801E3830 AFBF004C */  sw    $ra, 0x4c($sp)
/* 1FB7B4 801E3834 AFA40050 */  sw    $a0, 0x50($sp)
/* 1FB7B8 801E3838 26F777A0 */  addiu $s7, %lo(D_800E77A0) # addiu $s7, $s7, 0x77a0
/* 1FB7BC 801E383C 26947730 */  addiu $s4, %lo(D_800E7730) # addiu $s4, $s4, 0x7730
/* 1FB7C0 801E3840 2652D748 */  addiu $s2, %lo(D_800DD748) # addiu $s2, $s2, -0x28b8
/* 1FB7C4 801E3844 C4345DF0 */  lwc1  $f20, %lo(D_801E5DF0)($at)
/* 1FB7C8 801E3848 24100038 */  li    $s0, 56
/* 1FB7CC 801E384C 2411000E */  li    $s1, 14
/* 1FB7D0 801E3850 2413FFFF */  li    $s3, -1
/* 1FB7D4 801E3854 24150004 */  li    $s5, 4
/* 1FB7D8 801E3858 24160039 */  li    $s6, 57
/* 1FB7DC 801E385C 241E003A */  li    $fp, 58
.L801E3860_ovl13:
/* 1FB7E0 801E3860 8E4E0000 */  lw    $t6, ($s2)
/* 1FB7E4 801E3864 02917821 */  addu  $t7, $s4, $s1
/* 1FB7E8 801E3868 526E0029 */  beql  $s3, $t6, .L801E3910_ovl13
/* 1FB7EC 801E386C 26310001 */   addiu $s1, $s1, 1
/* 1FB7F0 801E3870 91E20000 */  lbu   $v0, ($t7)
/* 1FB7F4 801E3874 0011C040 */  sll   $t8, $s1, 1
/* 1FB7F8 801E3878 02F8C821 */  addu  $t9, $s7, $t8
/* 1FB7FC 801E387C 50400004 */  beql  $v0, $zero, .L801E3890_ovl13
/* 1FB800 801E3880 97220000 */   lhu   $v0, ($t9)
/* 1FB804 801E3884 56A20022 */  bnel  $s5, $v0, .L801E3910_ovl13
/* 1FB808 801E3888 26310001 */   addiu $s1, $s1, 1
/* 1FB80C 801E388C 97220000 */  lhu   $v0, ($t9)
.L801E3890_ovl13:
/* 1FB810 801E3890 52C2001F */  beql  $s6, $v0, .L801E3910_ovl13
/* 1FB814 801E3894 26310001 */   addiu $s1, $s1, 1
/* 1FB818 801E3898 13C2001C */  beq   $fp, $v0, .L801E390C_ovl13
/* 1FB81C 801E389C 3C01800E */   lui   $at, 0x800e
/* 1FB820 801E38A0 00300821 */  addu  $at, $at, $s0
/* 1FB824 801E38A4 C4207B20 */  lwc1  $f0, 0x7b20($at)
/* 1FB828 801E38A8 4600A03C */  c.lt.s $f20, $f0
/* 1FB82C 801E38AC 00000000 */  nop   
/* 1FB830 801E38B0 45020017 */  bc1fl .L801E3910_ovl13
/* 1FB834 801E38B4 26310001 */   addiu $s1, $s1, 1
/* 1FB838 801E38B8 4616003C */  c.lt.s $f0, $f22
/* 1FB83C 801E38BC 3C08800F */  lui   $t0, 0x800f
/* 1FB840 801E38C0 01104021 */  addu  $t0, $t0, $s0
/* 1FB844 801E38C4 45020012 */  bc1fl .L801E3910_ovl13
/* 1FB848 801E38C8 26310001 */   addiu $s1, $s1, 1
/* 1FB84C 801E38CC 8D0883E0 */  lw    $t0, -0x7c20($t0)
/* 1FB850 801E38D0 24010001 */  li    $at, 1
/* 1FB854 801E38D4 3C09800E */  lui   $t1, 0x800e
/* 1FB858 801E38D8 1101000C */  beq   $t0, $at, .L801E390C_ovl13
/* 1FB85C 801E38DC 01304821 */   addu  $t1, $t1, $s0
/* 1FB860 801E38E0 8D290D50 */  lw    $t1, 0xd50($t1)
/* 1FB864 801E38E4 3C01800E */  lui   $at, 0x800e
/* 1FB868 801E38E8 00300821 */  addu  $at, $at, $s0
/* 1FB86C 801E38EC 11200007 */  beqz  $t1, .L801E390C_ovl13
/* 1FB870 801E38F0 3C04800E */   lui   $a0, 0x800e
/* 1FB874 801E38F4 00902021 */  addu  $a0, $a0, $s0
/* 1FB878 801E38F8 3C05801A */  lui   $a1, %hi(D_801A3E80) # $a1, 0x801a
/* 1FB87C 801E38FC AC33DC50 */  sw    $s3, -0x23b0($at)
/* 1FB880 801E3900 24A53E80 */  addiu $a1, %lo(D_801A3E80) # addiu $a1, $a1, 0x3e80
/* 1FB884 801E3904 0C02C7B2 */  jal   func_800B1EC8
/* 1FB888 801E3908 8C84E510 */   lw    $a0, -0x1af0($a0)
.L801E390C_ovl13:
/* 1FB88C 801E390C 26310001 */  addiu $s1, $s1, 1
.L801E3910_ovl13:
/* 1FB890 801E3910 2401003C */  li    $at, 60
/* 1FB894 801E3914 26100004 */  addiu $s0, $s0, 4
/* 1FB898 801E3918 1621FFD1 */  bne   $s1, $at, .L801E3860_ovl13
/* 1FB89C 801E391C 26520004 */   addiu $s2, $s2, 4
/* 1FB8A0 801E3920 8FBF004C */  lw    $ra, 0x4c($sp)
/* 1FB8A4 801E3924 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 1FB8A8 801E3928 D7B60020 */  ldc1  $f22, 0x20($sp)
/* 1FB8AC 801E392C 8FB00028 */  lw    $s0, 0x28($sp)
/* 1FB8B0 801E3930 8FB1002C */  lw    $s1, 0x2c($sp)
/* 1FB8B4 801E3934 8FB20030 */  lw    $s2, 0x30($sp)
/* 1FB8B8 801E3938 8FB30034 */  lw    $s3, 0x34($sp)
/* 1FB8BC 801E393C 8FB40038 */  lw    $s4, 0x38($sp)
/* 1FB8C0 801E3940 8FB5003C */  lw    $s5, 0x3c($sp)
/* 1FB8C4 801E3944 8FB60040 */  lw    $s6, 0x40($sp)
/* 1FB8C8 801E3948 8FB70044 */  lw    $s7, 0x44($sp)
/* 1FB8CC 801E394C 8FBE0048 */  lw    $fp, 0x48($sp)
/* 1FB8D0 801E3950 03E00008 */  jr    $ra
/* 1FB8D4 801E3954 27BD0050 */   addiu $sp, $sp, 0x50

/* 1FB8D8 801E3958 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FB8DC 801E395C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FB8E0 801E3960 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FB8E4 801E3964 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FB8E8 801E3968 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FB8EC 801E396C 8C6E0000 */  lw    $t6, ($v1)
/* 1FB8F0 801E3970 3C04800F */  lui   $a0, %hi(D_800E9C60) # $a0, 0x800f
/* 1FB8F4 801E3974 24849C60 */  addiu $a0, %lo(D_800E9C60) # addiu $a0, $a0, -0x63a0
/* 1FB8F8 801E3978 000E7880 */  sll   $t7, $t6, 2
/* 1FB8FC 801E397C 008F1021 */  addu  $v0, $a0, $t7
/* 1FB900 801E3980 8C580000 */  lw    $t8, ($v0)
/* 1FB904 801E3984 24010006 */  li    $at, 6
/* 1FB908 801E3988 3C0F800E */  lui   $t7, 0x800e
/* 1FB90C 801E398C 27190001 */  addiu $t9, $t8, 1
/* 1FB910 801E3990 AC590000 */  sw    $t9, ($v0)
/* 1FB914 801E3994 8C690000 */  lw    $t1, ($v1)
/* 1FB918 801E3998 24050002 */  li    $a1, 2
/* 1FB91C 801E399C 00095080 */  sll   $t2, $t1, 2
/* 1FB920 801E39A0 008A1021 */  addu  $v0, $a0, $t2
/* 1FB924 801E39A4 8C4B0000 */  lw    $t3, ($v0)
/* 1FB928 801E39A8 0161001A */  div   $zero, $t3, $at
/* 1FB92C 801E39AC 00006010 */  mfhi  $t4
/* 1FB930 801E39B0 AC4C0000 */  sw    $t4, ($v0)
/* 1FB934 801E39B4 8C680000 */  lw    $t0, ($v1)
/* 1FB938 801E39B8 00084080 */  sll   $t0, $t0, 2
/* 1FB93C 801E39BC 00886821 */  addu  $t5, $a0, $t0
/* 1FB940 801E39C0 8DAE0000 */  lw    $t6, ($t5)
/* 1FB944 801E39C4 24040006 */  li    $a0, 6
/* 1FB948 801E39C8 01E87821 */  addu  $t7, $t7, $t0
/* 1FB94C 801E39CC 55C0002A */  bnezl $t6, .L801E3A78_ovl13
/* 1FB950 801E39D0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1FB954 801E39D4 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1FB958 801E39D8 00003025 */  move  $a2, $zero
/* 1FB95C 801E39DC 0C02A040 */  jal   func_800A8100_ovl13
/* 1FB960 801E39E0 8DE70030 */   lw    $a3, 0x30($t7)
/* 1FB964 801E39E4 3C188005 */  lui   $t8, %hi(D_8004A7C4) # $t8, 0x8005
/* 1FB968 801E39E8 8F18A7C4 */  lw    $t8, %lo(D_8004A7C4)($t8)
/* 1FB96C 801E39EC 3C0A800E */  lui   $t2, 0x800e
/* 1FB970 801E39F0 24040006 */  li    $a0, 6
/* 1FB974 801E39F4 8F190000 */  lw    $t9, ($t8)
/* 1FB978 801E39F8 24050002 */  li    $a1, 2
/* 1FB97C 801E39FC 00003025 */  move  $a2, $zero
/* 1FB980 801E3A00 00194880 */  sll   $t1, $t9, 2
/* 1FB984 801E3A04 01495021 */  addu  $t2, $t2, $t1
/* 1FB988 801E3A08 8D4AFBD0 */  lw    $t2, -0x430($t2)
/* 1FB98C 801E3A0C 0C02A040 */  jal   func_800A8100_ovl13
/* 1FB990 801E3A10 8D470038 */   lw    $a3, 0x38($t2)
/* 1FB994 801E3A14 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 1FB998 801E3A18 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 1FB99C 801E3A1C 3C0E800E */  lui   $t6, 0x800e
/* 1FB9A0 801E3A20 24040006 */  li    $a0, 6
/* 1FB9A4 801E3A24 8D6C0000 */  lw    $t4, ($t3)
/* 1FB9A8 801E3A28 24050002 */  li    $a1, 2
/* 1FB9AC 801E3A2C 00003025 */  move  $a2, $zero
/* 1FB9B0 801E3A30 000C6880 */  sll   $t5, $t4, 2
/* 1FB9B4 801E3A34 01CD7021 */  addu  $t6, $t6, $t5
/* 1FB9B8 801E3A38 8DCEFBD0 */  lw    $t6, -0x430($t6)
/* 1FB9BC 801E3A3C 0C02A040 */  jal   func_800A8100_ovl13
/* 1FB9C0 801E3A40 8DC70040 */   lw    $a3, 0x40($t6)
/* 1FB9C4 801E3A44 3C0F8005 */  lui   $t7, %hi(D_8004A7C4) # $t7, 0x8005
/* 1FB9C8 801E3A48 8DEFA7C4 */  lw    $t7, %lo(D_8004A7C4)($t7)
/* 1FB9CC 801E3A4C 3C09800E */  lui   $t1, 0x800e
/* 1FB9D0 801E3A50 24040006 */  li    $a0, 6
/* 1FB9D4 801E3A54 8DF80000 */  lw    $t8, ($t7)
/* 1FB9D8 801E3A58 24050002 */  li    $a1, 2
/* 1FB9DC 801E3A5C 00003025 */  move  $a2, $zero
/* 1FB9E0 801E3A60 0018C880 */  sll   $t9, $t8, 2
/* 1FB9E4 801E3A64 01394821 */  addu  $t1, $t1, $t9
/* 1FB9E8 801E3A68 8D29FBD0 */  lw    $t1, -0x430($t1)
/* 1FB9EC 801E3A6C 0C02A040 */  jal   func_800A8100_ovl13
/* 1FB9F0 801E3A70 8D270020 */   lw    $a3, 0x20($t1)
/* 1FB9F4 801E3A74 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E3A78_ovl13:
/* 1FB9F8 801E3A78 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FB9FC 801E3A7C 03E00008 */  jr    $ra
/* 1FBA00 801E3A80 00000000 */   nop   

/* 1FBA04 801E3A84 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 1FBA08 801E3A88 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1FBA0C 801E3A8C 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1FBA10 801E3A90 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FBA14 801E3A94 AFA40058 */  sw    $a0, 0x58($sp)
/* 1FBA18 801E3A98 AFA5005C */  sw    $a1, 0x5c($sp)
/* 1FBA1C 801E3A9C AFA60060 */  sw    $a2, 0x60($sp)
/* 1FBA20 801E3AA0 8DC30000 */  lw    $v1, ($t6)
/* 1FBA24 801E3AA4 3C08800E */  lui   $t0, 0x800e
/* 1FBA28 801E3AA8 3C04800F */  lui   $a0, 0x800f
/* 1FBA2C 801E3AAC 00033880 */  sll   $a3, $v1, 2
/* 1FBA30 801E3AB0 01074021 */  addu  $t0, $t0, $a3
/* 1FBA34 801E3AB4 8D081B50 */  lw    $t0, 0x1b50($t0)
/* 1FBA38 801E3AB8 00005025 */  move  $t2, $zero
/* 1FBA3C 801E3ABC 00872021 */  addu  $a0, $a0, $a3
/* 1FBA40 801E3AC0 8D020088 */  lw    $v0, 0x88($t0)
/* 1FBA44 801E3AC4 01004825 */  move  $t1, $t0
/* 1FBA48 801E3AC8 14400003 */  bnez  $v0, .L801E3AD8_ovl13
/* 1FBA4C 801E3ACC 00000000 */   nop   
/* 1FBA50 801E3AD0 100000B6 */  b     .L801E3DAC_ovl13
/* 1FBA54 801E3AD4 00001025 */   move  $v0, $zero
.L801E3AD8_ovl13:
/* 1FBA58 801E3AD8 8C84BDA0 */  lw    $a0, -0x4260($a0)
/* 1FBA5C 801E3ADC 2405FFFF */  li    $a1, -1
/* 1FBA60 801E3AE0 3C0F800E */  lui   $t7, 0x800e
/* 1FBA64 801E3AE4 10A40015 */  beq   $a1, $a0, .L801E3B3C_ovl13
/* 1FBA68 801E3AE8 00041080 */   sll   $v0, $a0, 2
/* 1FBA6C 801E3AEC 01E27821 */  addu  $t7, $t7, $v0
/* 1FBA70 801E3AF0 8DEF0D50 */  lw    $t7, 0xd50($t7)
/* 1FBA74 801E3AF4 3C18800E */  lui   $t8, 0x800e
/* 1FBA78 801E3AF8 0302C021 */  addu  $t8, $t8, $v0
/* 1FBA7C 801E3AFC 546F0010 */  bnel  $v1, $t7, .L801E3B40_ovl13
/* 1FBA80 801E3B00 00602025 */   move  $a0, $v1
/* 1FBA84 801E3B04 8F18D710 */  lw    $t8, -0x28f0($t8)
/* 1FBA88 801E3B08 3C19800F */  lui   $t9, 0x800f
/* 1FBA8C 801E3B0C 0322C821 */  addu  $t9, $t9, $v0
/* 1FBA90 801E3B10 50B8000B */  beql  $a1, $t8, .L801E3B40_ovl13
/* 1FBA94 801E3B14 00602025 */   move  $a0, $v1
/* 1FBA98 801E3B18 8F3998E0 */  lw    $t9, -0x6720($t9)
/* 1FBA9C 801E3B1C 3C0B801E */  lui   $t3, %hi(D_801D9384) # $t3, 0x801e
/* 1FBAA0 801E3B20 256B9384 */  addiu $t3, %lo(D_801D9384) # addiu $t3, $t3, -0x6c7c
/* 1FBAA4 801E3B24 13200005 */  beqz  $t9, .L801E3B3C_ovl13
/* 1FBAA8 801E3B28 3C0C8005 */   lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1FBAAC 801E3B2C 8D0A008C */  lw    $t2, 0x8c($t0)
/* 1FBAB0 801E3B30 AD0B008C */  sw    $t3, 0x8c($t0)
/* 1FBAB4 801E3B34 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1FBAB8 801E3B38 8D830000 */  lw    $v1, ($t4)
.L801E3B3C_ovl13:
/* 1FBABC 801E3B3C 00602025 */  move  $a0, $v1
.L801E3B40_ovl13:
/* 1FBAC0 801E3B40 AFA90030 */  sw    $t1, 0x30($sp)
/* 1FBAC4 801E3B44 0C044554 */  jal   func_80111550_ovl13
/* 1FBAC8 801E3B48 AFAA0028 */   sw    $t2, 0x28($sp)
/* 1FBACC 801E3B4C 3C0D8005 */  lui   $t5, %hi(D_8004A7C4) # $t5, 0x8005
/* 1FBAD0 801E3B50 8FA90030 */  lw    $t1, 0x30($sp)
/* 1FBAD4 801E3B54 8DADA7C4 */  lw    $t5, %lo(D_8004A7C4)($t5)
/* 1FBAD8 801E3B58 8D24008C */  lw    $a0, 0x8c($t1)
/* 1FBADC 801E3B5C 0C044722 */  jal   func_80111C88_ovl13
/* 1FBAE0 801E3B60 8DA50000 */   lw    $a1, ($t5)
/* 1FBAE4 801E3B64 8FA90030 */  lw    $t1, 0x30($sp)
/* 1FBAE8 801E3B68 10400013 */  beqz  $v0, .L801E3BB8_ovl13
/* 1FBAEC 801E3B6C 00402025 */   move  $a0, $v0
/* 1FBAF0 801E3B70 8FA30058 */  lw    $v1, 0x58($sp)
/* 1FBAF4 801E3B74 50600004 */  beql  $v1, $zero, .L801E3B88_ovl13
/* 1FBAF8 801E3B78 8FA3005C */   lw    $v1, 0x5c($sp)
/* 1FBAFC 801E3B7C 8C4E0024 */  lw    $t6, 0x24($v0)
/* 1FBB00 801E3B80 ADC30008 */  sw    $v1, 8($t6)
/* 1FBB04 801E3B84 8FA3005C */  lw    $v1, 0x5c($sp)
.L801E3B88_ovl13:
/* 1FBB08 801E3B88 50600004 */  beql  $v1, $zero, .L801E3B9C_ovl13
/* 1FBB0C 801E3B8C 8FA30060 */   lw    $v1, 0x60($sp)
/* 1FBB10 801E3B90 8C4F0024 */  lw    $t7, 0x24($v0)
/* 1FBB14 801E3B94 ADE30030 */  sw    $v1, 0x30($t7)
/* 1FBB18 801E3B98 8FA30060 */  lw    $v1, 0x60($sp)
.L801E3B9C_ovl13:
/* 1FBB1C 801E3B9C 10600003 */  beqz  $v1, .L801E3BAC_ovl13
/* 1FBB20 801E3BA0 00000000 */   nop   
/* 1FBB24 801E3BA4 8C580024 */  lw    $t8, 0x24($v0)
/* 1FBB28 801E3BA8 AF030058 */  sw    $v1, 0x58($t8)
.L801E3BAC_ovl13:
/* 1FBB2C 801E3BAC 0C0447B3 */  jal   func_80111ECC_ovl13
/* 1FBB30 801E3BB0 AFA90030 */   sw    $t1, 0x30($sp)
/* 1FBB34 801E3BB4 8FA90030 */  lw    $t1, 0x30($sp)
.L801E3BB8_ovl13:
/* 1FBB38 801E3BB8 27A40038 */  addiu $a0, $sp, 0x38
/* 1FBB3C 801E3BBC 0C044054 */  jal   func_80110150_ovl13
/* 1FBB40 801E3BC0 AFA90030 */   sw    $t1, 0x30($sp)
/* 1FBB44 801E3BC4 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1FBB48 801E3BC8 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1FBB4C 801E3BCC 1040000B */  beqz  $v0, .L801E3BFC_ovl13
/* 1FBB50 801E3BD0 8FA90030 */   lw    $t1, 0x30($sp)
/* 1FBB54 801E3BD4 8CCB0000 */  lw    $t3, ($a2)
/* 1FBB58 801E3BD8 93B9003A */  lbu   $t9, 0x3a($sp)
/* 1FBB5C 801E3BDC 3C01800F */  lui   $at, 0x800f
/* 1FBB60 801E3BE0 8D6C0000 */  lw    $t4, ($t3)
/* 1FBB64 801E3BE4 93AE003B */  lbu   $t6, 0x3b($sp)
/* 1FBB68 801E3BE8 000C6880 */  sll   $t5, $t4, 2
/* 1FBB6C 801E3BEC 002D0821 */  addu  $at, $at, $t5
/* 1FBB70 801E3BF0 AC3983E0 */  sw    $t9, -0x7c20($at)
/* 1FBB74 801E3BF4 10000035 */  b     .L801E3CCC_ovl13
/* 1FBB78 801E3BF8 A12E0043 */   sb    $t6, 0x43($t1)
.L801E3BFC_ovl13:
/* 1FBB7C 801E3BFC 27A40038 */  addiu $a0, $sp, 0x38
/* 1FBB80 801E3C00 0C0442C0 */  jal   func_80110B00_ovl13
/* 1FBB84 801E3C04 AFA90030 */   sw    $t1, 0x30($sp)
/* 1FBB88 801E3C08 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1FBB8C 801E3C0C 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1FBB90 801E3C10 1040000B */  beqz  $v0, .L801E3C40_ovl13
/* 1FBB94 801E3C14 8FA90030 */   lw    $t1, 0x30($sp)
/* 1FBB98 801E3C18 8CD80000 */  lw    $t8, ($a2)
/* 1FBB9C 801E3C1C 93AF003A */  lbu   $t7, 0x3a($sp)
/* 1FBBA0 801E3C20 3C01800F */  lui   $at, 0x800f
/* 1FBBA4 801E3C24 8F0B0000 */  lw    $t3, ($t8)
/* 1FBBA8 801E3C28 93B9003B */  lbu   $t9, 0x3b($sp)
/* 1FBBAC 801E3C2C 000B6080 */  sll   $t4, $t3, 2
/* 1FBBB0 801E3C30 002C0821 */  addu  $at, $at, $t4
/* 1FBBB4 801E3C34 AC2F83E0 */  sw    $t7, -0x7c20($at)
/* 1FBBB8 801E3C38 10000024 */  b     .L801E3CCC_ovl13
/* 1FBBBC 801E3C3C A1390043 */   sb    $t9, 0x43($t1)
.L801E3C40_ovl13:
/* 1FBBC0 801E3C40 27A40038 */  addiu $a0, $sp, 0x38
/* 1FBBC4 801E3C44 0C0443F5 */  jal   func_80110FD4_ovl13
/* 1FBBC8 801E3C48 AFA90030 */   sw    $t1, 0x30($sp)
/* 1FBBCC 801E3C4C 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1FBBD0 801E3C50 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1FBBD4 801E3C54 10400016 */  beqz  $v0, .L801E3CB0_ovl13
/* 1FBBD8 801E3C58 8FA90030 */   lw    $t1, 0x30($sp)
/* 1FBBDC 801E3C5C 93A2003A */  lbu   $v0, 0x3a($sp)
/* 1FBBE0 801E3C60 2401000A */  li    $at, 10
/* 1FBBE4 801E3C64 5441000A */  bnel  $v0, $at, .L801E3C90_ovl13
/* 1FBBE8 801E3C68 8CCB0000 */   lw    $t3, ($a2)
/* 1FBBEC 801E3C6C 8CCD0000 */  lw    $t5, ($a2)
/* 1FBBF0 801E3C70 3C01800F */  lui   $at, 0x800f
/* 1FBBF4 801E3C74 8DAE0000 */  lw    $t6, ($t5)
/* 1FBBF8 801E3C78 000EC080 */  sll   $t8, $t6, 2
/* 1FBBFC 801E3C7C 00380821 */  addu  $at, $at, $t8
/* 1FBC00 801E3C80 AC2083E0 */  sw    $zero, -0x7c20($at)
/* 1FBC04 801E3C84 10000011 */  b     .L801E3CCC_ovl13
/* 1FBC08 801E3C88 A1200043 */   sb    $zero, 0x43($t1)
/* 1FBC0C 801E3C8C 8CCB0000 */  lw    $t3, ($a2)
.L801E3C90_ovl13:
/* 1FBC10 801E3C90 3C01800F */  lui   $at, 0x800f
/* 1FBC14 801E3C94 93B9003B */  lbu   $t9, 0x3b($sp)
/* 1FBC18 801E3C98 8D6F0000 */  lw    $t7, ($t3)
/* 1FBC1C 801E3C9C 000F6080 */  sll   $t4, $t7, 2
/* 1FBC20 801E3CA0 002C0821 */  addu  $at, $at, $t4
/* 1FBC24 801E3CA4 AC2283E0 */  sw    $v0, -0x7c20($at)
/* 1FBC28 801E3CA8 10000008 */  b     .L801E3CCC_ovl13
/* 1FBC2C 801E3CAC A1390043 */   sb    $t9, 0x43($t1)
.L801E3CB0_ovl13:
/* 1FBC30 801E3CB0 8CCD0000 */  lw    $t5, ($a2)
/* 1FBC34 801E3CB4 3C01800F */  lui   $at, 0x800f
/* 1FBC38 801E3CB8 8DAE0000 */  lw    $t6, ($t5)
/* 1FBC3C 801E3CBC 000EC080 */  sll   $t8, $t6, 2
/* 1FBC40 801E3CC0 00380821 */  addu  $at, $at, $t8
/* 1FBC44 801E3CC4 AC2083E0 */  sw    $zero, -0x7c20($at)
/* 1FBC48 801E3CC8 A1200043 */  sb    $zero, 0x43($t1)
.L801E3CCC_ovl13:
/* 1FBC4C 801E3CCC 8CCB0000 */  lw    $t3, ($a2)
/* 1FBC50 801E3CD0 3C0F800F */  lui   $t7, 0x800f
/* 1FBC54 801E3CD4 24010002 */  li    $at, 2
/* 1FBC58 801E3CD8 8D670000 */  lw    $a3, ($t3)
/* 1FBC5C 801E3CDC 24040002 */  li    $a0, 2
/* 1FBC60 801E3CE0 00073880 */  sll   $a3, $a3, 2
/* 1FBC64 801E3CE4 01E77821 */  addu  $t7, $t7, $a3
/* 1FBC68 801E3CE8 8DEF83E0 */  lw    $t7, -0x7c20($t7)
/* 1FBC6C 801E3CEC 55E10022 */  bnel  $t7, $at, .L801E3D78_ovl13
/* 1FBC70 801E3CF0 8FA20028 */   lw    $v0, 0x28($sp)
/* 1FBC74 801E3CF4 0C06783A */  jal   func_8019E0E8_ovl13
/* 1FBC78 801E3CF8 24050002 */   li    $a1, 2
/* 1FBC7C 801E3CFC 3C068005 */  lui   $a2, %hi(D_8004A7C4) # $a2, 0x8005
/* 1FBC80 801E3D00 24C6A7C4 */  addiu $a2, %lo(D_8004A7C4) # addiu $a2, $a2, -0x583c
/* 1FBC84 801E3D04 8CC30000 */  lw    $v1, ($a2)
/* 1FBC88 801E3D08 3C04800F */  lui   $a0, %hi(D_800EBDA0) # $a0, 0x800f
/* 1FBC8C 801E3D0C 2484BDA0 */  addiu $a0, %lo(D_800EBDA0) # addiu $a0, $a0, -0x4260
/* 1FBC90 801E3D10 8C6C0000 */  lw    $t4, ($v1)
/* 1FBC94 801E3D14 2401FFFF */  li    $at, -1
/* 1FBC98 801E3D18 000CC880 */  sll   $t9, $t4, 2
/* 1FBC9C 801E3D1C 00996821 */  addu  $t5, $a0, $t9
/* 1FBCA0 801E3D20 ADA20000 */  sw    $v0, ($t5)
/* 1FBCA4 801E3D24 8C670000 */  lw    $a3, ($v1)
/* 1FBCA8 801E3D28 00073880 */  sll   $a3, $a3, 2
/* 1FBCAC 801E3D2C 00877021 */  addu  $t6, $a0, $a3
/* 1FBCB0 801E3D30 8DD80000 */  lw    $t8, ($t6)
/* 1FBCB4 801E3D34 1301000F */  beq   $t8, $at, .L801E3D74_ovl13
/* 1FBCB8 801E3D38 3C01800D */   lui   $at, %hi(D_800D6E5C) # $at, 0x800d
/* 1FBCBC 801E3D3C C4266E5C */  lwc1  $f6, %lo(D_800D6E5C)($at)
/* 1FBCC0 801E3D40 44802000 */  mtc1  $zero, $f4
/* 1FBCC4 801E3D44 3C01800E */  lui   $at, 0x800e
/* 1FBCC8 801E3D48 00270821 */  addu  $at, $at, $a3
/* 1FBCCC 801E3D4C 46062032 */  c.eq.s $f4, $f6
/* 1FBCD0 801E3D50 00000000 */  nop   
/* 1FBCD4 801E3D54 45030008 */  bc1tl .L801E3D78_ovl13
/* 1FBCD8 801E3D58 8FA20028 */   lw    $v0, 0x28($sp)
/* 1FBCDC 801E3D5C 0C02F047 */  jal   func_800BC11C_ovl13
/* 1FBCE0 801E3D60 C42C7B20 */   lwc1  $f12, 0x7b20($at)
/* 1FBCE4 801E3D64 3C0B8005 */  lui   $t3, %hi(D_8004A7C4) # $t3, 0x8005
/* 1FBCE8 801E3D68 8D6BA7C4 */  lw    $t3, %lo(D_8004A7C4)($t3)
/* 1FBCEC 801E3D6C 8D670000 */  lw    $a3, ($t3)
/* 1FBCF0 801E3D70 00073880 */  sll   $a3, $a3, 2
.L801E3D74_ovl13:
/* 1FBCF4 801E3D74 8FA20028 */  lw    $v0, 0x28($sp)
.L801E3D78_ovl13:
/* 1FBCF8 801E3D78 3C0F800E */  lui   $t7, 0x800e
/* 1FBCFC 801E3D7C 01E77821 */  addu  $t7, $t7, $a3
/* 1FBD00 801E3D80 10400007 */  beqz  $v0, .L801E3DA0_ovl13
/* 1FBD04 801E3D84 00000000 */   nop   
/* 1FBD08 801E3D88 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 1FBD0C 801E3D8C 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1FBD10 801E3D90 ADE2008C */  sw    $v0, 0x8c($t7)
/* 1FBD14 801E3D94 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1FBD18 801E3D98 8D870000 */  lw    $a3, ($t4)
/* 1FBD1C 801E3D9C 00073880 */  sll   $a3, $a3, 2
.L801E3DA0_ovl13:
/* 1FBD20 801E3DA0 3C02800F */  lui   $v0, 0x800f
/* 1FBD24 801E3DA4 00471021 */  addu  $v0, $v0, $a3
/* 1FBD28 801E3DA8 8C4283E0 */  lw    $v0, -0x7c20($v0)
.L801E3DAC_ovl13:
/* 1FBD2C 801E3DAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FBD30 801E3DB0 27BD0058 */  addiu $sp, $sp, 0x58
/* 1FBD34 801E3DB4 03E00008 */  jr    $ra
/* 1FBD38 801E3DB8 00000000 */   nop   

/* 1FBD3C 801E3DBC 00000000 */  nop   
/* 1FBD40 801E3DC0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1FBD44 801E3DC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 1FBD48 801E3DC8 AFB10018 */  sw    $s1, 0x18($sp)
/* 1FBD4C 801E3DCC AFB00014 */  sw    $s0, 0x14($sp)
/* 1FBD50 801E3DD0 0C068CA0 */  jal   func_801A3280_ovl13
/* 1FBD54 801E3DD4 AFA40028 */   sw    $a0, 0x28($sp)
/* 1FBD58 801E3DD8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FBD5C 801E3DDC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FBD60 801E3DE0 8E020000 */  lw    $v0, ($s0)
/* 1FBD64 801E3DE4 3C0E800B */  lui   $t6, %hi(D_800B6E84) # $t6, 0x800b
/* 1FBD68 801E3DE8 3C01800E */  lui   $at, 0x800e
/* 1FBD6C 801E3DEC 8C4F0000 */  lw    $t7, ($v0)
/* 1FBD70 801E3DF0 25CE6E84 */  addiu $t6, %lo(D_800B6E84) # addiu $t6, $t6, 0x6e84
/* 1FBD74 801E3DF4 3C19801E */  lui   $t9, %hi(D_801E426C) # $t9, 0x801e
/* 1FBD78 801E3DF8 000FC080 */  sll   $t8, $t7, 2
/* 1FBD7C 801E3DFC 00380821 */  addu  $at, $at, $t8
/* 1FBD80 801E3E00 AC2EEF90 */  sw    $t6, -0x1070($at)
/* 1FBD84 801E3E04 8C480000 */  lw    $t0, ($v0)
/* 1FBD88 801E3E08 3C01800E */  lui   $at, 0x800e
/* 1FBD8C 801E3E0C 2739426C */  addiu $t9, %lo(D_801E426C) # addiu $t9, $t9, 0x426c
/* 1FBD90 801E3E10 00084880 */  sll   $t1, $t0, 2
/* 1FBD94 801E3E14 00290821 */  addu  $at, $at, $t1
/* 1FBD98 801E3E18 AC39F150 */  sw    $t9, -0xeb0($at)
/* 1FBD9C 801E3E1C 8C4B0000 */  lw    $t3, ($v0)
/* 1FBDA0 801E3E20 3C03800E */  lui   $v1, %hi(D_800E1B50) # $v1, 0x800e
/* 1FBDA4 801E3E24 24631B50 */  addiu $v1, %lo(D_800E1B50) # addiu $v1, $v1, 0x1b50
/* 1FBDA8 801E3E28 000B6080 */  sll   $t4, $t3, 2
/* 1FBDAC 801E3E2C 006C6821 */  addu  $t5, $v1, $t4
/* 1FBDB0 801E3E30 8DAF0000 */  lw    $t7, ($t5)
/* 1FBDB4 801E3E34 3C0A801E */  lui   $t2, %hi(D_801DAF60) # $t2, 0x801e
/* 1FBDB8 801E3E38 254AAF60 */  addiu $t2, %lo(D_801DAF60) # addiu $t2, $t2, -0x50a0
/* 1FBDBC 801E3E3C ADEA0098 */  sw    $t2, 0x98($t7)
/* 1FBDC0 801E3E40 8E180000 */  lw    $t8, ($s0)
/* 1FBDC4 801E3E44 240EFFFF */  li    $t6, -1
/* 1FBDC8 801E3E48 8F080000 */  lw    $t0, ($t8)
/* 1FBDCC 801E3E4C 0008C880 */  sll   $t9, $t0, 2
/* 1FBDD0 801E3E50 00794821 */  addu  $t1, $v1, $t9
/* 1FBDD4 801E3E54 8D2B0000 */  lw    $t3, ($t1)
/* 1FBDD8 801E3E58 0C066E6C */  jal   func_8019B9B0_ovl13
/* 1FBDDC 801E3E5C A16E0039 */   sb    $t6, 0x39($t3)
/* 1FBDE0 801E3E60 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FBDE4 801E3E64 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FBDE8 801E3E68 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1FBDEC 801E3E6C 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FBDF0 801E3E70 0C02BB48 */  jal   func_800AED20_ovl13
/* 1FBDF4 801E3E74 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1FBDF8 801E3E78 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1FBDFC 801E3E7C 00000000 */   nop   
/* 1FBE00 801E3E80 8E020000 */  lw    $v0, ($s0)
/* 1FBE04 801E3E84 3C11800F */  lui   $s1, %hi(D_800E8920) # $s1, 0x800f
/* 1FBE08 801E3E88 26318920 */  addiu $s1, %lo(D_800E8920) # addiu $s1, $s1, -0x76e0
/* 1FBE0C 801E3E8C 8C4C0000 */  lw    $t4, ($v0)
/* 1FBE10 801E3E90 3C04800E */  lui   $a0, 0x800e
/* 1FBE14 801E3E94 000C6880 */  sll   $t5, $t4, 2
/* 1FBE18 801E3E98 022D5021 */  addu  $t2, $s1, $t5
/* 1FBE1C 801E3E9C AD400000 */  sw    $zero, ($t2)
/* 1FBE20 801E3EA0 8C430000 */  lw    $v1, ($v0)
/* 1FBE24 801E3EA4 00832021 */  addu  $a0, $a0, $v1
/* 1FBE28 801E3EA8 90847880 */  lbu   $a0, 0x7880($a0)
/* 1FBE2C 801E3EAC 30840001 */  andi  $a0, $a0, 1
/* 1FBE30 801E3EB0 10800007 */  beqz  $a0, .L801E3ED0_ovl13
/* 1FBE34 801E3EB4 3C01BF80 */   li    $at, 0xBF800000 # -1.000000
/* 1FBE38 801E3EB8 44812000 */  mtc1  $at, $f4
/* 1FBE3C 801E3EBC 3C01800E */  lui   $at, 0x800e
/* 1FBE40 801E3EC0 00037880 */  sll   $t7, $v1, 2
/* 1FBE44 801E3EC4 002F0821 */  addu  $at, $at, $t7
/* 1FBE48 801E3EC8 10000007 */  b     .L801E3EE8_ovl13
/* 1FBE4C 801E3ECC E4246A10 */   swc1  $f4, 0x6a10($at)
.L801E3ED0_ovl13:
/* 1FBE50 801E3ED0 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1FBE54 801E3ED4 44813000 */  mtc1  $at, $f6
/* 1FBE58 801E3ED8 3C01800E */  lui   $at, 0x800e
/* 1FBE5C 801E3EDC 0003C080 */  sll   $t8, $v1, 2
/* 1FBE60 801E3EE0 00380821 */  addu  $at, $at, $t8
/* 1FBE64 801E3EE4 E4266A10 */  swc1  $f6, 0x6a10($at)
.L801E3EE8_ovl13:
/* 1FBE68 801E3EE8 10800003 */  beqz  $a0, .L801E3EF8_ovl13
/* 1FBE6C 801E3EEC 3C01800D */   lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FBE70 801E3EF0 10000004 */  b     .L801E3F04_ovl13
/* 1FBE74 801E3EF4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
.L801E3EF8_ovl13:
/* 1FBE78 801E3EF8 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FBE7C 801E3EFC C42C6B10 */  lwc1  $f12, %lo(D_800D6B10)($at)
/* 1FBE80 801E3F00 46006307 */  neg.s $f12, $f12
.L801E3F04_ovl13:
/* 1FBE84 801E3F04 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FBE88 801E3F08 AFA40020 */   sw    $a0, 0x20($sp)
/* 1FBE8C 801E3F0C 8FA40020 */  lw    $a0, 0x20($sp)
/* 1FBE90 801E3F10 10800003 */  beqz  $a0, .L801E3F20_ovl13
/* 1FBE94 801E3F14 3C01800D */   lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FBE98 801E3F18 10000004 */  b     .L801E3F2C_ovl13
/* 1FBE9C 801E3F1C C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
.L801E3F20_ovl13:
/* 1FBEA0 801E3F20 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FBEA4 801E3F24 C42C6B10 */  lwc1  $f12, %lo(D_800D6B10)($at)
/* 1FBEA8 801E3F28 46006307 */  neg.s $f12, $f12
.L801E3F2C_ovl13:
/* 1FBEAC 801E3F2C 0C02BB48 */  jal   func_800AED20_ovl13
/* 1FBEB0 801E3F30 00000000 */   nop   
/* 1FBEB4 801E3F34 8E020000 */  lw    $v0, ($s0)
/* 1FBEB8 801E3F38 3C01800F */  lui   $at, 0x800f
/* 1FBEBC 801E3F3C 3C040001 */  lui   $a0, (0x0001009F >> 16) # lui $a0, 1
/* 1FBEC0 801E3F40 8C480000 */  lw    $t0, ($v0)
/* 1FBEC4 801E3F44 3484009F */  ori   $a0, (0x0001009F & 0xFFFF) # ori $a0, $a0, 0x9f
/* 1FBEC8 801E3F48 24050023 */  li    $a1, 35
/* 1FBECC 801E3F4C 0008C880 */  sll   $t9, $t0, 2
/* 1FBED0 801E3F50 00390821 */  addu  $at, $at, $t9
/* 1FBED4 801E3F54 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1FBED8 801E3F58 8C490000 */  lw    $t1, ($v0)
/* 1FBEDC 801E3F5C 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 1FBEE0 801E3F60 44814000 */  mtc1  $at, $f8
/* 1FBEE4 801E3F64 3C01800F */  lui   $at, 0x800f
/* 1FBEE8 801E3F68 00097080 */  sll   $t6, $t1, 2
/* 1FBEEC 801E3F6C 002E0821 */  addu  $at, $at, $t6
/* 1FBEF0 801E3F70 24060010 */  li    $a2, 16
/* 1FBEF4 801E3F74 0C02A619 */  jal   func_800A9864_ovl13
/* 1FBEF8 801E3F78 E428A6E0 */   swc1  $f8, -0x5920($at)
/* 1FBEFC 801E3F7C 3C040001 */  lui   $a0, (0x00010558 >> 16) # lui $a0, 1
/* 1FBF00 801E3F80 0C02A806 */  jal   func_800AA018_ovl13
/* 1FBF04 801E3F84 34840558 */   ori   $a0, (0x00010558 & 0xFFFF) # ori $a0, $a0, 0x558
/* 1FBF08 801E3F88 8E020000 */  lw    $v0, ($s0)
/* 1FBF0C 801E3F8C 3C01800E */  lui   $at, 0x800e
/* 1FBF10 801E3F90 24040001 */  li    $a0, 1
/* 1FBF14 801E3F94 8C450000 */  lw    $a1, ($v0)
/* 1FBF18 801E3F98 00052880 */  sll   $a1, $a1, 2
/* 1FBF1C 801E3F9C 00250821 */  addu  $at, $at, $a1
/* 1FBF20 801E3FA0 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 1FBF24 801E3FA4 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1FBF28 801E3FA8 44818000 */  mtc1  $at, $f16
/* 1FBF2C 801E3FAC 3C01800E */  lui   $at, 0x800e
/* 1FBF30 801E3FB0 00250821 */  addu  $at, $at, $a1
/* 1FBF34 801E3FB4 46105482 */  mul.s $f18, $f10, $f16
/* 1FBF38 801E3FB8 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 1FBF3C 801E3FBC 8C4B0000 */  lw    $t3, ($v0)
/* 1FBF40 801E3FC0 3C01C220 */  li    $at, 0xC2200000 # -40.000000
/* 1FBF44 801E3FC4 44812000 */  mtc1  $at, $f4
/* 1FBF48 801E3FC8 3C01800E */  lui   $at, 0x800e
/* 1FBF4C 801E3FCC 000B6080 */  sll   $t4, $t3, 2
/* 1FBF50 801E3FD0 002C0821 */  addu  $at, $at, $t4
/* 1FBF54 801E3FD4 0C002DAF */  jal   func_8000B6BC
/* 1FBF58 801E3FD8 E4243210 */   swc1  $f4, 0x3210($at)
/* 1FBF5C 801E3FDC 8E020000 */  lw    $v0, ($s0)
/* 1FBF60 801E3FE0 3C0140E0 */  li    $at, 0x40E00000 # 7.000000
/* 1FBF64 801E3FE4 44810000 */  mtc1  $at, $f0
/* 1FBF68 801E3FE8 8C4D0000 */  lw    $t5, ($v0)
/* 1FBF6C 801E3FEC 3C01801E */  lui   $at, %hi(D_801E5E00) # $at, 0x801e
/* 1FBF70 801E3FF0 C4225E00 */  lwc1  $f2, %lo(D_801E5E00)($at)
/* 1FBF74 801E3FF4 3C01800E */  lui   $at, 0x800e
/* 1FBF78 801E3FF8 000D5080 */  sll   $t2, $t5, 2
/* 1FBF7C 801E3FFC 002A0821 */  addu  $at, $at, $t2
/* 1FBF80 801E4000 E4206850 */  swc1  $f0, 0x6850($at)
/* 1FBF84 801E4004 8C4F0000 */  lw    $t7, ($v0)
/* 1FBF88 801E4008 3C01800E */  lui   $at, 0x800e
/* 1FBF8C 801E400C 24040005 */  li    $a0, 5
/* 1FBF90 801E4010 000FC080 */  sll   $t8, $t7, 2
/* 1FBF94 801E4014 00380821 */  addu  $at, $at, $t8
/* 1FBF98 801E4018 E4203C90 */  swc1  $f0, 0x3c90($at)
/* 1FBF9C 801E401C 8C450000 */  lw    $a1, ($v0)
/* 1FBFA0 801E4020 3C01800E */  lui   $at, 0x800e
/* 1FBFA4 801E4024 00052880 */  sll   $a1, $a1, 2
/* 1FBFA8 801E4028 00250821 */  addu  $at, $at, $a1
/* 1FBFAC 801E402C C4266A10 */  lwc1  $f6, 0x6a10($at)
/* 1FBFB0 801E4030 3C01800E */  lui   $at, 0x800e
/* 1FBFB4 801E4034 00250821 */  addu  $at, $at, $a1
/* 1FBFB8 801E4038 46003202 */  mul.s $f8, $f6, $f0
/* 1FBFBC 801E403C E42864D0 */  swc1  $f8, 0x64d0($at)
/* 1FBFC0 801E4040 8C480000 */  lw    $t0, ($v0)
/* 1FBFC4 801E4044 3C01800E */  lui   $at, 0x800e
/* 1FBFC8 801E4048 0008C880 */  sll   $t9, $t0, 2
/* 1FBFCC 801E404C 00390821 */  addu  $at, $at, $t9
/* 1FBFD0 801E4050 E4203210 */  swc1  $f0, 0x3210($at)
/* 1FBFD4 801E4054 8C450000 */  lw    $a1, ($v0)
/* 1FBFD8 801E4058 3C01800E */  lui   $at, 0x800e
/* 1FBFDC 801E405C 00052880 */  sll   $a1, $a1, 2
/* 1FBFE0 801E4060 00250821 */  addu  $at, $at, $a1
/* 1FBFE4 801E4064 C42A6A10 */  lwc1  $f10, 0x6a10($at)
/* 1FBFE8 801E4068 3C01800E */  lui   $at, 0x800e
/* 1FBFEC 801E406C 00250821 */  addu  $at, $at, $a1
/* 1FBFF0 801E4070 46025402 */  mul.s $f16, $f10, $f2
/* 1FBFF4 801E4074 E4306690 */  swc1  $f16, 0x6690($at)
/* 1FBFF8 801E4078 8C490000 */  lw    $t1, ($v0)
/* 1FBFFC 801E407C 3C01800E */  lui   $at, 0x800e
/* 1FC000 801E4080 00097080 */  sll   $t6, $t1, 2
/* 1FC004 801E4084 002E0821 */  addu  $at, $at, $t6
/* 1FC008 801E4088 0C002DAF */  jal   func_8000B6BC
/* 1FC00C 801E408C E4223750 */   swc1  $f2, 0x3750($at)
/* 1FC010 801E4090 8E020000 */  lw    $v0, ($s0)
/* 1FC014 801E4094 3C01801E */  lui   $at, %hi(D_801E5E04) # $at, 0x801e
/* 1FC018 801E4098 C4325E04 */  lwc1  $f18, %lo(D_801E5E04)($at)
/* 1FC01C 801E409C 8C4B0000 */  lw    $t3, ($v0)
/* 1FC020 801E40A0 3C01800E */  lui   $at, 0x800e
/* 1FC024 801E40A4 24040014 */  li    $a0, 20
/* 1FC028 801E40A8 000B6080 */  sll   $t4, $t3, 2
/* 1FC02C 801E40AC 002C0821 */  addu  $at, $at, $t4
/* 1FC030 801E40B0 E4323750 */  swc1  $f18, 0x3750($at)
/* 1FC034 801E40B4 8C4D0000 */  lw    $t5, ($v0)
/* 1FC038 801E40B8 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1FC03C 801E40BC 44812000 */  mtc1  $at, $f4
/* 1FC040 801E40C0 3C01800E */  lui   $at, 0x800e
/* 1FC044 801E40C4 000D5080 */  sll   $t2, $t5, 2
/* 1FC048 801E40C8 002A0821 */  addu  $at, $at, $t2
/* 1FC04C 801E40CC E4243C90 */  swc1  $f4, 0x3c90($at)
/* 1FC050 801E40D0 8C450000 */  lw    $a1, ($v0)
/* 1FC054 801E40D4 3C01800E */  lui   $at, 0x800e
/* 1FC058 801E40D8 00052880 */  sll   $a1, $a1, 2
/* 1FC05C 801E40DC 00250821 */  addu  $at, $at, $a1
/* 1FC060 801E40E0 C42664D0 */  lwc1  $f6, 0x64d0($at)
/* 1FC064 801E40E4 3C01801E */  lui   $at, %hi(D_801E5E08) # $at, 0x801e
/* 1FC068 801E40E8 C4285E08 */  lwc1  $f8, %lo(D_801E5E08)($at)
/* 1FC06C 801E40EC 3C01800E */  lui   $at, 0x800e
/* 1FC070 801E40F0 00250821 */  addu  $at, $at, $a1
/* 1FC074 801E40F4 46083282 */  mul.s $f10, $f6, $f8
/* 1FC078 801E40F8 0C002DAF */  jal   func_8000B6BC
/* 1FC07C 801E40FC E42A6690 */   swc1  $f10, 0x6690($at)
/* 1FC080 801E4100 8E020000 */  lw    $v0, ($s0)
/* 1FC084 801E4104 44808000 */  mtc1  $zero, $f16
/* 1FC088 801E4108 3C04800E */  lui   $a0, %hi(D_800E6690) # $a0, 0x800e
/* 1FC08C 801E410C 8C4F0000 */  lw    $t7, ($v0)
/* 1FC090 801E4110 24846690 */  addiu $a0, %lo(D_800E6690) # addiu $a0, $a0, 0x6690
/* 1FC094 801E4114 3C01800E */  lui   $at, 0x800e
/* 1FC098 801E4118 000FC080 */  sll   $t8, $t7, 2
/* 1FC09C 801E411C 00984021 */  addu  $t0, $a0, $t8
/* 1FC0A0 801E4120 E5100000 */  swc1  $f16, ($t0)
/* 1FC0A4 801E4124 8C450000 */  lw    $a1, ($v0)
/* 1FC0A8 801E4128 00052880 */  sll   $a1, $a1, 2
/* 1FC0AC 801E412C 0085C821 */  addu  $t9, $a0, $a1
/* 1FC0B0 801E4130 C7320000 */  lwc1  $f18, ($t9)
/* 1FC0B4 801E4134 00250821 */  addu  $at, $at, $a1
/* 1FC0B8 801E4138 E43264D0 */  swc1  $f18, 0x64d0($at)
/* 1FC0BC 801E413C 8C490000 */  lw    $t1, ($v0)
/* 1FC0C0 801E4140 3C01801E */  lui   $at, %hi(D_801E5E0C) # $at, 0x801e
/* 1FC0C4 801E4144 C4245E0C */  lwc1  $f4, %lo(D_801E5E0C)($at)
/* 1FC0C8 801E4148 3C01800E */  lui   $at, 0x800e
/* 1FC0CC 801E414C 00097080 */  sll   $t6, $t1, 2
/* 1FC0D0 801E4150 002E0821 */  addu  $at, $at, $t6
/* 1FC0D4 801E4154 E4246850 */  swc1  $f4, 0x6850($at)
/* 1FC0D8 801E4158 8C4B0000 */  lw    $t3, ($v0)
/* 1FC0DC 801E415C 000B6080 */  sll   $t4, $t3, 2
/* 1FC0E0 801E4160 022C1821 */  addu  $v1, $s1, $t4
/* 1FC0E4 801E4164 8C6D0000 */  lw    $t5, ($v1)
/* 1FC0E8 801E4168 55A0000B */  bnezl $t5, .L801E4198_ovl13
/* 1FC0EC 801E416C AC600000 */   sw    $zero, ($v1)
.L801E4170_ovl13:
/* 1FC0F0 801E4170 0C002DAF */  jal   func_8000B6BC
/* 1FC0F4 801E4174 24040001 */   li    $a0, 1
/* 1FC0F8 801E4178 8E020000 */  lw    $v0, ($s0)
/* 1FC0FC 801E417C 8C4A0000 */  lw    $t2, ($v0)
/* 1FC100 801E4180 000A7880 */  sll   $t7, $t2, 2
/* 1FC104 801E4184 022F1821 */  addu  $v1, $s1, $t7
/* 1FC108 801E4188 8C780000 */  lw    $t8, ($v1)
/* 1FC10C 801E418C 1300FFF8 */  beqz  $t8, .L801E4170_ovl13
/* 1FC110 801E4190 00000000 */   nop   
/* 1FC114 801E4194 AC600000 */  sw    $zero, ($v1)
.L801E4198_ovl13:
/* 1FC118 801E4198 8C480000 */  lw    $t0, ($v0)
/* 1FC11C 801E419C 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1FC120 801E41A0 44813000 */  mtc1  $at, $f6
/* 1FC124 801E41A4 3C01800E */  lui   $at, 0x800e
/* 1FC128 801E41A8 0008C880 */  sll   $t9, $t0, 2
/* 1FC12C 801E41AC 00390821 */  addu  $at, $at, $t9
/* 1FC130 801E41B0 E4263210 */  swc1  $f6, 0x3210($at)
/* 1FC134 801E41B4 8C490000 */  lw    $t1, ($v0)
/* 1FC138 801E41B8 3C01801E */  lui   $at, %hi(D_801E5E10) # $at, 0x801e
/* 1FC13C 801E41BC C4285E10 */  lwc1  $f8, %lo(D_801E5E10)($at)
/* 1FC140 801E41C0 3C01800E */  lui   $at, 0x800e
/* 1FC144 801E41C4 00097080 */  sll   $t6, $t1, 2
/* 1FC148 801E41C8 002E0821 */  addu  $at, $at, $t6
/* 1FC14C 801E41CC E4283750 */  swc1  $f8, 0x3750($at)
/* 1FC150 801E41D0 8C4B0000 */  lw    $t3, ($v0)
/* 1FC154 801E41D4 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 1FC158 801E41D8 44815000 */  mtc1  $at, $f10
/* 1FC15C 801E41DC 3C01800E */  lui   $at, 0x800e
/* 1FC160 801E41E0 000B6080 */  sll   $t4, $t3, 2
/* 1FC164 801E41E4 002C0821 */  addu  $at, $at, $t4
/* 1FC168 801E41E8 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 1FC16C 801E41EC 8C4D0000 */  lw    $t5, ($v0)
/* 1FC170 801E41F0 000D5080 */  sll   $t2, $t5, 2
/* 1FC174 801E41F4 022A7821 */  addu  $t7, $s1, $t2
/* 1FC178 801E41F8 8DF80000 */  lw    $t8, ($t7)
/* 1FC17C 801E41FC 5700000B */  bnezl $t8, .L801E422C_ovl13
/* 1FC180 801E4200 44806000 */   mtc1  $zero, $f12
.L801E4204_ovl13:
/* 1FC184 801E4204 0C002DAF */  jal   func_8000B6BC
/* 1FC188 801E4208 24040001 */   li    $a0, 1
/* 1FC18C 801E420C 8E080000 */  lw    $t0, ($s0)
/* 1FC190 801E4210 8D190000 */  lw    $t9, ($t0)
/* 1FC194 801E4214 00194880 */  sll   $t1, $t9, 2
/* 1FC198 801E4218 02297021 */  addu  $t6, $s1, $t1
/* 1FC19C 801E421C 8DCB0000 */  lw    $t3, ($t6)
/* 1FC1A0 801E4220 1160FFF8 */  beqz  $t3, .L801E4204_ovl13
/* 1FC1A4 801E4224 00000000 */   nop   
/* 1FC1A8 801E4228 44806000 */  mtc1  $zero, $f12
.L801E422C_ovl13:
/* 1FC1AC 801E422C 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FC1B0 801E4230 00000000 */   nop   
/* 1FC1B4 801E4234 44806000 */  mtc1  $zero, $f12
/* 1FC1B8 801E4238 0C02BB48 */  jal   func_800AED20_ovl13
/* 1FC1BC 801E423C 00000000 */   nop   
/* 1FC1C0 801E4240 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1FC1C4 801E4244 00000000 */   nop   
/* 1FC1C8 801E4248 0C002DAF */  jal   func_8000B6BC
/* 1FC1CC 801E424C 2404001E */   li    $a0, 30
/* 1FC1D0 801E4250 0C06B3E1 */  jal   D_801ACF84_ovl13
/* 1FC1D4 801E4254 8FA40028 */   lw    $a0, 0x28($sp)
/* 1FC1D8 801E4258 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1FC1DC 801E425C 8FB00014 */  lw    $s0, 0x14($sp)
/* 1FC1E0 801E4260 8FB10018 */  lw    $s1, 0x18($sp)
/* 1FC1E4 801E4264 03E00008 */  jr    $ra
/* 1FC1E8 801E4268 27BD0028 */   addiu $sp, $sp, 0x28

/* 1FC1EC 801E426C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FC1F0 801E4270 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FC1F4 801E4274 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FC1F8 801E4278 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FC1FC 801E427C AFA40018 */  sw    $a0, 0x18($sp)
/* 1FC200 801E4280 8C6E0000 */  lw    $t6, ($v1)
/* 1FC204 801E4284 3C09800F */  lui   $t1, %hi(D_800EA6E0) # $t1, 0x800f
/* 1FC208 801E4288 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1FC20C 801E428C 44810000 */  mtc1  $at, $f0
/* 1FC210 801E4290 2529A6E0 */  addiu $t1, %lo(D_800EA6E0) # addiu $t1, $t1, -0x5920
/* 1FC214 801E4294 000E7880 */  sll   $t7, $t6, 2
/* 1FC218 801E4298 012F1021 */  addu  $v0, $t1, $t7
/* 1FC21C 801E429C 3C01801E */  lui   $at, %hi(D_801E5E14) # $at, 0x801e
/* 1FC220 801E42A0 C4265E14 */  lwc1  $f6, %lo(D_801E5E14)($at)
/* 1FC224 801E42A4 C4440000 */  lwc1  $f4, ($v0)
/* 1FC228 801E42A8 3C01800E */  lui   $at, 0x800e
/* 1FC22C 801E42AC 24050002 */  li    $a1, 2
/* 1FC230 801E42B0 46062200 */  add.s $f8, $f4, $f6
/* 1FC234 801E42B4 00003025 */  move  $a2, $zero
/* 1FC238 801E42B8 E4480000 */  swc1  $f8, ($v0)
/* 1FC23C 801E42BC 8C680000 */  lw    $t0, ($v1)
/* 1FC240 801E42C0 00084080 */  sll   $t0, $t0, 2
/* 1FC244 801E42C4 01281021 */  addu  $v0, $t1, $t0
/* 1FC248 801E42C8 C4420000 */  lwc1  $f2, ($v0)
/* 1FC24C 801E42CC 4602003C */  c.lt.s $f0, $f2
/* 1FC250 801E42D0 00000000 */  nop   
/* 1FC254 801E42D4 45020007 */  bc1fl .L801E42F4_ovl13
/* 1FC258 801E42D8 00280821 */   addu  $at, $at, $t0
/* 1FC25C 801E42DC E4400000 */  swc1  $f0, ($v0)
/* 1FC260 801E42E0 8C680000 */  lw    $t0, ($v1)
/* 1FC264 801E42E4 00084080 */  sll   $t0, $t0, 2
/* 1FC268 801E42E8 0128C021 */  addu  $t8, $t1, $t0
/* 1FC26C 801E42EC C7020000 */  lwc1  $f2, ($t8)
/* 1FC270 801E42F0 00280821 */  addu  $at, $at, $t0
.L801E42F4_ovl13:
/* 1FC274 801E42F4 E42248D0 */  swc1  $f2, 0x48d0($at)
/* 1FC278 801E42F8 8C790000 */  lw    $t9, ($v1)
/* 1FC27C 801E42FC 3C01800E */  lui   $at, 0x800e
/* 1FC280 801E4300 3C04800F */  lui   $a0, %hi(D_800E98E0) # $a0, 0x800f
/* 1FC284 801E4304 00195080 */  sll   $t2, $t9, 2
/* 1FC288 801E4308 002A0821 */  addu  $at, $at, $t2
/* 1FC28C 801E430C E4224710 */  swc1  $f2, 0x4710($at)
/* 1FC290 801E4310 8C6B0000 */  lw    $t3, ($v1)
/* 1FC294 801E4314 3C01800E */  lui   $at, 0x800e
/* 1FC298 801E4318 248498E0 */  addiu $a0, %lo(D_800E98E0) # addiu $a0, $a0, -0x6720
/* 1FC29C 801E431C 000B6080 */  sll   $t4, $t3, 2
/* 1FC2A0 801E4320 002C0821 */  addu  $at, $at, $t4
/* 1FC2A4 801E4324 E4224550 */  swc1  $f2, 0x4550($at)
/* 1FC2A8 801E4328 8C6D0000 */  lw    $t5, ($v1)
/* 1FC2AC 801E432C 24010006 */  li    $at, 6
/* 1FC2B0 801E4330 000D7080 */  sll   $t6, $t5, 2
/* 1FC2B4 801E4334 008E1021 */  addu  $v0, $a0, $t6
/* 1FC2B8 801E4338 8C4F0000 */  lw    $t7, ($v0)
/* 1FC2BC 801E433C 25F80001 */  addiu $t8, $t7, 1
/* 1FC2C0 801E4340 AC580000 */  sw    $t8, ($v0)
/* 1FC2C4 801E4344 8C790000 */  lw    $t9, ($v1)
/* 1FC2C8 801E4348 3C0F800E */  lui   $t7, 0x800e
/* 1FC2CC 801E434C 00195080 */  sll   $t2, $t9, 2
/* 1FC2D0 801E4350 008A1021 */  addu  $v0, $a0, $t2
/* 1FC2D4 801E4354 8C4B0000 */  lw    $t3, ($v0)
/* 1FC2D8 801E4358 0161001A */  div   $zero, $t3, $at
/* 1FC2DC 801E435C 00006010 */  mfhi  $t4
/* 1FC2E0 801E4360 AC4C0000 */  sw    $t4, ($v0)
/* 1FC2E4 801E4364 8C680000 */  lw    $t0, ($v1)
/* 1FC2E8 801E4368 00084080 */  sll   $t0, $t0, 2
/* 1FC2EC 801E436C 00886821 */  addu  $t5, $a0, $t0
/* 1FC2F0 801E4370 8DAE0000 */  lw    $t6, ($t5)
/* 1FC2F4 801E4374 01E87821 */  addu  $t7, $t7, $t0
/* 1FC2F8 801E4378 15C0000B */  bnez  $t6, .L801E43A8_ovl13
/* 1FC2FC 801E437C 00000000 */   nop   
/* 1FC300 801E4380 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1FC304 801E4384 24040006 */  li    $a0, 6
/* 1FC308 801E4388 0C02A040 */  jal   func_800A8100_ovl13
/* 1FC30C 801E438C 8DE70008 */   lw    $a3, 8($t7)
/* 1FC310 801E4390 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FC314 801E4394 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FC318 801E4398 3C09800F */  lui   $t1, %hi(D_800EA6E0) # $t1, 0x800f
/* 1FC31C 801E439C 2529A6E0 */  addiu $t1, %lo(D_800EA6E0) # addiu $t1, $t1, -0x5920
/* 1FC320 801E43A0 8C680000 */  lw    $t0, ($v1)
/* 1FC324 801E43A4 00084080 */  sll   $t0, $t0, 2
.L801E43A8_ovl13:
/* 1FC328 801E43A8 3C04800F */  lui   $a0, %hi(D_800E8920) # $a0, 0x800f
/* 1FC32C 801E43AC 24848920 */  addiu $a0, %lo(D_800E8920) # addiu $a0, $a0, -0x76e0
/* 1FC330 801E43B0 0088C021 */  addu  $t8, $a0, $t0
/* 1FC334 801E43B4 AF000000 */  sw    $zero, ($t8)
/* 1FC338 801E43B8 8C680000 */  lw    $t0, ($v1)
/* 1FC33C 801E43BC 3C19800E */  lui   $t9, %hi(D_800E2790) # $t9, 0x800e
/* 1FC340 801E43C0 27392790 */  addiu $t9, %lo(D_800E2790) # addiu $t9, $t9, 0x2790
/* 1FC344 801E43C4 00084080 */  sll   $t0, $t0, 2
/* 1FC348 801E43C8 3C014180 */  li    $at, 0x41800000 # 16.000000
/* 1FC34C 801E43CC 01191021 */  addu  $v0, $t0, $t9
/* 1FC350 801E43D0 44810000 */  mtc1  $at, $f0
/* 1FC354 801E43D4 C44A0000 */  lwc1  $f10, ($v0)
/* 1FC358 801E43D8 4600503C */  c.lt.s $f10, $f0
/* 1FC35C 801E43DC 00000000 */  nop   
/* 1FC360 801E43E0 4502000A */  bc1fl .L801E440C_ovl13
/* 1FC364 801E43E4 01287021 */   addu  $t6, $t1, $t0
/* 1FC368 801E43E8 E4400000 */  swc1  $f0, ($v0)
/* 1FC36C 801E43EC 8C6B0000 */  lw    $t3, ($v1)
/* 1FC370 801E43F0 240A0001 */  li    $t2, 1
/* 1FC374 801E43F4 000B6080 */  sll   $t4, $t3, 2
/* 1FC378 801E43F8 008C6821 */  addu  $t5, $a0, $t4
/* 1FC37C 801E43FC ADAA0000 */  sw    $t2, ($t5)
/* 1FC380 801E4400 8C680000 */  lw    $t0, ($v1)
/* 1FC384 801E4404 00084080 */  sll   $t0, $t0, 2
/* 1FC388 801E4408 01287021 */  addu  $t6, $t1, $t0
.L801E440C_ovl13:
/* 1FC38C 801E440C 0C079109 */  jal   func_801E4424_ovl13
/* 1FC390 801E4410 C5CC0000 */   lwc1  $f12, ($t6)
/* 1FC394 801E4414 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FC398 801E4418 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FC39C 801E441C 03E00008 */  jr    $ra
/* 1FC3A0 801E4420 00000000 */   nop   

/* 1FC3A4 801E4424 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1FC3A8 801E4428 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1FC3AC 801E442C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FC3B0 801E4430 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FC3B4 801E4434 E7AC0018 */  swc1  $f12, 0x18($sp)
/* 1FC3B8 801E4438 8DCF0000 */  lw    $t7, ($t6)
/* 1FC3BC 801E443C 3C02800E */  lui   $v0, 0x800e
/* 1FC3C0 801E4440 000FC080 */  sll   $t8, $t7, 2
/* 1FC3C4 801E4444 00581021 */  addu  $v0, $v0, $t8
/* 1FC3C8 801E4448 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 1FC3CC 801E444C 8C59008C */  lw    $t9, 0x8c($v0)
/* 1FC3D0 801E4450 17200003 */  bnez  $t9, .L801E4460_ovl13
/* 1FC3D4 801E4454 00000000 */   nop   
/* 1FC3D8 801E4458 1000000C */  b     .L801E448C_ovl13
/* 1FC3DC 801E445C 00001025 */   move  $v0, $zero
.L801E4460_ovl13:
/* 1FC3E0 801E4460 0C068119 */  jal   func_801A0464_ovl13
/* 1FC3E4 801E4464 00000000 */   nop   
/* 1FC3E8 801E4468 8C430024 */  lw    $v1, 0x24($v0)
/* 1FC3EC 801E446C C7A60018 */  lwc1  $f6, 0x18($sp)
/* 1FC3F0 801E4470 00402025 */  move  $a0, $v0
/* 1FC3F4 801E4474 C4640018 */  lwc1  $f4, 0x18($v1)
/* 1FC3F8 801E4478 46062202 */  mul.s $f8, $f4, $f6
/* 1FC3FC 801E447C 0C0447B3 */  jal   func_80111ECC_ovl13
/* 1FC400 801E4480 E4680018 */   swc1  $f8, 0x18($v1)
/* 1FC404 801E4484 0C06812E */  jal   func_801A04B8_ovl13
/* 1FC408 801E4488 00000000 */   nop   
.L801E448C_ovl13:
/* 1FC40C 801E448C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FC410 801E4490 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FC414 801E4494 03E00008 */  jr    $ra
/* 1FC418 801E4498 00000000 */   nop   

/* 1FC41C 801E449C 00000000 */  nop   
/* 1FC420 801E44A0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1FC424 801E44A4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1FC428 801E44A8 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FC42C 801E44AC 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FC430 801E44B0 8E0E0000 */  lw    $t6, ($s0)
/* 1FC434 801E44B4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1FC438 801E44B8 AFB20020 */  sw    $s2, 0x20($sp)
/* 1FC43C 801E44BC AFB1001C */  sw    $s1, 0x1c($sp)
/* 1FC440 801E44C0 AFA40028 */  sw    $a0, 0x28($sp)
/* 1FC444 801E44C4 8DCF0000 */  lw    $t7, ($t6)
/* 1FC448 801E44C8 3C02800E */  lui   $v0, 0x800e
/* 1FC44C 801E44CC 3C01C448 */  li    $at, 0xC4480000 # -800.000000
/* 1FC450 801E44D0 000FC080 */  sll   $t8, $t7, 2
/* 1FC454 801E44D4 00581021 */  addu  $v0, $v0, $t8
/* 1FC458 801E44D8 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 1FC45C 801E44DC 44812000 */  mtc1  $at, $f4
/* 1FC460 801E44E0 3C01800E */  lui   $at, 0x800e
/* 1FC464 801E44E4 8C590080 */  lw    $t9, 0x80($v0)
/* 1FC468 801E44E8 3C08800B */  lui   $t0, %hi(D_800B6E84) # $t0, 0x800b
/* 1FC46C 801E44EC 25086E84 */  addiu $t0, %lo(D_800B6E84) # addiu $t0, $t0, 0x6e84
/* 1FC470 801E44F0 E7240018 */  swc1  $f4, 0x18($t9)
/* 1FC474 801E44F4 8E110000 */  lw    $s1, ($s0)
/* 1FC478 801E44F8 3C0B801E */  lui   $t3, %hi(D_801E47B0) # $t3, 0x801e
/* 1FC47C 801E44FC 256B47B0 */  addiu $t3, %lo(D_801E47B0) # addiu $t3, $t3, 0x47b0
/* 1FC480 801E4500 8E290000 */  lw    $t1, ($s1)
/* 1FC484 801E4504 3C04801E */  lui   $a0, %hi(D_801E45B8) # $a0, 0x801e
/* 1FC488 801E4508 248445B8 */  addiu $a0, %lo(D_801E45B8) # addiu $a0, $a0, 0x45b8
/* 1FC48C 801E450C 00095080 */  sll   $t2, $t1, 2
/* 1FC490 801E4510 002A0821 */  addu  $at, $at, $t2
/* 1FC494 801E4514 AC28EF90 */  sw    $t0, -0x1070($at)
/* 1FC498 801E4518 8E2C0000 */  lw    $t4, ($s1)
/* 1FC49C 801E451C 3C01800E */  lui   $at, 0x800e
/* 1FC4A0 801E4520 000C6880 */  sll   $t5, $t4, 2
/* 1FC4A4 801E4524 002D0821 */  addu  $at, $at, $t5
/* 1FC4A8 801E4528 0C068354 */  jal   func_801A0D50_ovl13
/* 1FC4AC 801E452C AC2BF150 */   sw    $t3, -0xeb0($at)
/* 1FC4B0 801E4530 8E110000 */  lw    $s1, ($s0)
/* 1FC4B4 801E4534 3C01800F */  lui   $at, 0x800f
/* 1FC4B8 801E4538 3C04800E */  lui   $a0, 0x800e
/* 1FC4BC 801E453C 8E2E0000 */  lw    $t6, ($s1)
/* 1FC4C0 801E4540 3C06801E */  lui   $a2, %hi(D_801E5C00) # $a2, 0x801e
/* 1FC4C4 801E4544 24C65C00 */  addiu $a2, %lo(D_801E5C00) # addiu $a2, $a2, 0x5c00
/* 1FC4C8 801E4548 000E7880 */  sll   $t7, $t6, 2
/* 1FC4CC 801E454C 002F0821 */  addu  $at, $at, $t7
/* 1FC4D0 801E4550 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FC4D4 801E4554 8E380000 */  lw    $t8, ($s1)
/* 1FC4D8 801E4558 24050001 */  li    $a1, 1
/* 1FC4DC 801E455C 00982021 */  addu  $a0, $a0, $t8
/* 1FC4E0 801E4560 0C02911F */  jal   func_800A447C_ovl13
/* 1FC4E4 801E4564 90847880 */   lbu   $a0, 0x7880($a0)
/* 1FC4E8 801E4568 3C12801E */  lui   $s2, %hi(D_801E5C04) # $s2, 0x801e
/* 1FC4EC 801E456C 3C11800E */  lui   $s1, %hi(D_800DDC50) # $s1, 0x800e
/* 1FC4F0 801E4570 2631DC50 */  addiu $s1, %lo(D_800DDC50) # addiu $s1, $s1, -0x23b0
/* 1FC4F4 801E4574 26525C04 */  addiu $s2, %lo(D_801E5C04) # addiu $s2, $s2, 0x5c04
/* 1FC4F8 801E4578 8E190000 */  lw    $t9, ($s0)
.L801E457C_ovl13:
/* 1FC4FC 801E457C 24050001 */  li    $a1, 1
/* 1FC500 801E4580 02403025 */  move  $a2, $s2
/* 1FC504 801E4584 8F290000 */  lw    $t1, ($t9)
/* 1FC508 801E4588 00094080 */  sll   $t0, $t1, 2
/* 1FC50C 801E458C 02285021 */  addu  $t2, $s1, $t0
/* 1FC510 801E4590 0C02911F */  jal   func_800A447C_ovl13
/* 1FC514 801E4594 8D440000 */   lw    $a0, ($t2)
/* 1FC518 801E4598 1000FFF8 */  b     .L801E457C_ovl13
/* 1FC51C 801E459C 8E190000 */   lw    $t9, ($s0)
/* 1FC520 801E45A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1FC524 801E45A4 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FC528 801E45A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1FC52C 801E45AC 8FB20020 */  lw    $s2, 0x20($sp)
/* 1FC530 801E45B0 03E00008 */  jr    $ra
/* 1FC534 801E45B4 27BD0028 */   addiu $sp, $sp, 0x28

/* 1FC538 801E45B8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1FC53C 801E45BC AFB20020 */  sw    $s2, 0x20($sp)
/* 1FC540 801E45C0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1FC544 801E45C4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1FC548 801E45C8 3C10800E */  lui   $s0, %hi(D_800DDC50) # $s0, 0x800e
/* 1FC54C 801E45CC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1FC550 801E45D0 3C12801E */  lui   $s2, %hi(D_801E5C04) # $s2, 0x801e
/* 1FC554 801E45D4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1FC558 801E45D8 AFA40028 */  sw    $a0, 0x28($sp)
/* 1FC55C 801E45DC 26525C04 */  addiu $s2, %lo(D_801E5C04) # addiu $s2, $s2, 0x5c04
/* 1FC560 801E45E0 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1FC564 801E45E4 2610DC50 */  addiu $s0, %lo(D_800DDC50) # addiu $s0, $s0, -0x23b0
/* 1FC568 801E45E8 8E2E0000 */  lw    $t6, ($s1)
.L801E45EC_ovl13:
/* 1FC56C 801E45EC 24050001 */  li    $a1, 1
/* 1FC570 801E45F0 02403025 */  move  $a2, $s2
/* 1FC574 801E45F4 8DCF0000 */  lw    $t7, ($t6)
/* 1FC578 801E45F8 000FC080 */  sll   $t8, $t7, 2
/* 1FC57C 801E45FC 0218C821 */  addu  $t9, $s0, $t8
/* 1FC580 801E4600 0C02911F */  jal   func_800A447C_ovl13
/* 1FC584 801E4604 8F240000 */   lw    $a0, ($t9)
/* 1FC588 801E4608 1000FFF8 */  b     .L801E45EC_ovl13
/* 1FC58C 801E460C 8E2E0000 */   lw    $t6, ($s1)
/* 1FC590 801E4610 00000000 */  nop   
/* 1FC594 801E4614 00000000 */  nop   
/* 1FC598 801E4618 00000000 */  nop   
/* 1FC59C 801E461C 00000000 */  nop   
/* 1FC5A0 801E4620 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1FC5A4 801E4624 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FC5A8 801E4628 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1FC5AC 801E462C 8FB20020 */  lw    $s2, 0x20($sp)
/* 1FC5B0 801E4630 03E00008 */  jr    $ra
/* 1FC5B4 801E4634 27BD0028 */   addiu $sp, $sp, 0x28

/* 1FC5B8 801E4638 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1FC5BC 801E463C AFB00018 */  sw    $s0, 0x18($sp)
/* 1FC5C0 801E4640 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FC5C4 801E4644 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FC5C8 801E4648 8E0E0000 */  lw    $t6, ($s0)
/* 1FC5CC 801E464C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1FC5D0 801E4650 AFA40020 */  sw    $a0, 0x20($sp)
/* 1FC5D4 801E4654 24040070 */  li    $a0, 112
/* 1FC5D8 801E4658 0C02C67D */  jal   func_800B19F4
/* 1FC5DC 801E465C 8DC50000 */   lw    $a1, ($t6)
/* 1FC5E0 801E4660 00002025 */  move  $a0, $zero
/* 1FC5E4 801E4664 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1FC5E8 801E4668 8E050000 */   lw    $a1, ($s0)
/* 1FC5EC 801E466C 0C002DAF */  jal   func_8000B6BC
/* 1FC5F0 801E4670 24040004 */   li    $a0, 4
/* 1FC5F4 801E4674 8E0F0000 */  lw    $t7, ($s0)
/* 1FC5F8 801E4678 24040030 */  li    $a0, 48
/* 1FC5FC 801E467C 0C02C67D */  jal   func_800B19F4
/* 1FC600 801E4680 8DE50000 */   lw    $a1, ($t7)
/* 1FC604 801E4684 24040001 */  li    $a0, 1
/* 1FC608 801E4688 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1FC60C 801E468C 8E050000 */   lw    $a1, ($s0)
/* 1FC610 801E4690 8E030000 */  lw    $v1, ($s0)
/* 1FC614 801E4694 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 1FC618 801E4698 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 1FC61C 801E469C 8C620000 */  lw    $v0, ($v1)
/* 1FC620 801E46A0 3C08800E */  lui   $t0, %hi(D_800E6A10) # $t0, 0x800e
/* 1FC624 801E46A4 25086A10 */  addiu $t0, %lo(D_800E6A10) # addiu $t0, $t0, 0x6a10
/* 1FC628 801E46A8 00021080 */  sll   $v0, $v0, 2
/* 1FC62C 801E46AC 00E2C021 */  addu  $t8, $a3, $v0
/* 1FC630 801E46B0 8F190000 */  lw    $t9, ($t8)
/* 1FC634 801E46B4 01027021 */  addu  $t6, $t0, $v0
/* 1FC638 801E46B8 3C09800E */  lui   $t1, %hi(D_800E5F90) # $t1, 0x800e
/* 1FC63C 801E46BC 00196080 */  sll   $t4, $t9, 2
/* 1FC640 801E46C0 010C6821 */  addu  $t5, $t0, $t4
/* 1FC644 801E46C4 C5A40000 */  lwc1  $f4, ($t5)
/* 1FC648 801E46C8 25295F90 */  addiu $t1, %lo(D_800E5F90) # addiu $t1, $t1, 0x5f90
/* 1FC64C 801E46CC 3C0A800E */  lui   $t2, %hi(D_800E6BD0) # $t2, 0x800e
/* 1FC650 801E46D0 E5C40000 */  swc1  $f4, ($t6)
/* 1FC654 801E46D4 8C620000 */  lw    $v0, ($v1)
/* 1FC658 801E46D8 254A6BD0 */  addiu $t2, %lo(D_800E6BD0) # addiu $t2, $t2, 0x6bd0
/* 1FC65C 801E46DC 3C0B800E */  lui   $t3, %hi(D_800E2790) # $t3, 0x800e
/* 1FC660 801E46E0 00021080 */  sll   $v0, $v0, 2
/* 1FC664 801E46E4 00E27821 */  addu  $t7, $a3, $v0
/* 1FC668 801E46E8 8DF80000 */  lw    $t8, ($t7)
/* 1FC66C 801E46EC 01227021 */  addu  $t6, $t1, $v0
/* 1FC670 801E46F0 256B2790 */  addiu $t3, %lo(D_800E2790) # addiu $t3, $t3, 0x2790
/* 1FC674 801E46F4 0018C880 */  sll   $t9, $t8, 2
/* 1FC678 801E46F8 01396021 */  addu  $t4, $t1, $t9
/* 1FC67C 801E46FC 8D8D0000 */  lw    $t5, ($t4)
/* 1FC680 801E4700 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1FC684 801E4704 44815000 */  mtc1  $at, $f10
/* 1FC688 801E4708 ADCD0000 */  sw    $t5, ($t6)
/* 1FC68C 801E470C 8C620000 */  lw    $v0, ($v1)
/* 1FC690 801E4710 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1FC694 801E4714 44812000 */  mtc1  $at, $f4
/* 1FC698 801E4718 00021080 */  sll   $v0, $v0, 2
/* 1FC69C 801E471C 00E27821 */  addu  $t7, $a3, $v0
/* 1FC6A0 801E4720 8DF80000 */  lw    $t8, ($t7)
/* 1FC6A4 801E4724 01426821 */  addu  $t5, $t2, $v0
/* 1FC6A8 801E4728 0018C880 */  sll   $t9, $t8, 2
/* 1FC6AC 801E472C 01596021 */  addu  $t4, $t2, $t9
/* 1FC6B0 801E4730 C5860000 */  lwc1  $f6, ($t4)
/* 1FC6B4 801E4734 E5A60000 */  swc1  $f6, ($t5)
/* 1FC6B8 801E4738 8C620000 */  lw    $v0, ($v1)
/* 1FC6BC 801E473C 00021080 */  sll   $v0, $v0, 2
/* 1FC6C0 801E4740 00E27021 */  addu  $t6, $a3, $v0
/* 1FC6C4 801E4744 8DCF0000 */  lw    $t7, ($t6)
/* 1FC6C8 801E4748 01626021 */  addu  $t4, $t3, $v0
/* 1FC6CC 801E474C 000FC080 */  sll   $t8, $t7, 2
/* 1FC6D0 801E4750 0178C821 */  addu  $t9, $t3, $t8
/* 1FC6D4 801E4754 C7280000 */  lwc1  $f8, ($t9)
/* 1FC6D8 801E4758 460A4401 */  sub.s $f16, $f8, $f10
/* 1FC6DC 801E475C E5900000 */  swc1  $f16, ($t4)
/* 1FC6E0 801E4760 8C620000 */  lw    $v0, ($v1)
/* 1FC6E4 801E4764 00021080 */  sll   $v0, $v0, 2
/* 1FC6E8 801E4768 01026821 */  addu  $t5, $t0, $v0
/* 1FC6EC 801E476C C5B20000 */  lwc1  $f18, ($t5)
/* 1FC6F0 801E4770 01222021 */  addu  $a0, $t1, $v0
/* 1FC6F4 801E4774 01422821 */  addu  $a1, $t2, $v0
/* 1FC6F8 801E4778 46049182 */  mul.s $f6, $f18, $f4
/* 1FC6FC 801E477C 44063000 */  mfc1  $a2, $f6
/* 1FC700 801E4780 0C03E65D */  jal   func_800F9974_ovl13
/* 1FC704 801E4784 00000000 */   nop   
/* 1FC708 801E4788 8E0E0000 */  lw    $t6, ($s0)
/* 1FC70C 801E478C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1FC710 801E4790 3C01800E */  lui   $at, 0x800e
/* 1FC714 801E4794 8DCF0000 */  lw    $t7, ($t6)
/* 1FC718 801E4798 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FC71C 801E479C 27BD0020 */  addiu $sp, $sp, 0x20
/* 1FC720 801E47A0 000FC080 */  sll   $t8, $t7, 2
/* 1FC724 801E47A4 00380821 */  addu  $at, $at, $t8
/* 1FC728 801E47A8 03E00008 */  jr    $ra
/* 1FC72C 801E47AC AC20DC50 */   sw    $zero, -0x23b0($at)

/* 1FC730 801E47B0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1FC734 801E47B4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1FC738 801E47B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FC73C 801E47BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FC740 801E47C0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FC744 801E47C4 8DCF0000 */  lw    $t7, ($t6)
/* 1FC748 801E47C8 3C04800E */  lui   $a0, 0x800e
/* 1FC74C 801E47CC 3C06801E */  lui   $a2, %hi(D_801E5C08) # $a2, 0x801e
/* 1FC750 801E47D0 000FC080 */  sll   $t8, $t7, 2
/* 1FC754 801E47D4 00982021 */  addu  $a0, $a0, $t8
/* 1FC758 801E47D8 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 1FC75C 801E47DC 24C65C08 */  addiu $a2, %lo(D_801E5C08) # addiu $a2, $a2, 0x5c08
/* 1FC760 801E47E0 0C02911F */  jal   func_800A447C_ovl13
/* 1FC764 801E47E4 24050001 */   li    $a1, 1
/* 1FC768 801E47E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FC76C 801E47EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FC770 801E47F0 03E00008 */  jr    $ra
/* 1FC774 801E47F4 00000000 */   nop   

/* 1FC778 801E47F8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 1FC77C 801E47FC AFB2003C */  sw    $s2, 0x3c($sp)
/* 1FC780 801E4800 3C128005 */  lui   $s2, %hi(D_8004A7C4) # $s2, 0x8005
/* 1FC784 801E4804 2652A7C4 */  addiu $s2, %lo(D_8004A7C4) # addiu $s2, $s2, -0x583c
/* 1FC788 801E4808 8E420000 */  lw    $v0, ($s2)
/* 1FC78C 801E480C AFBF0044 */  sw    $ra, 0x44($sp)
/* 1FC790 801E4810 AFB30040 */  sw    $s3, 0x40($sp)
/* 1FC794 801E4814 AFB10038 */  sw    $s1, 0x38($sp)
/* 1FC798 801E4818 AFB00034 */  sw    $s0, 0x34($sp)
/* 1FC79C 801E481C F7BA0028 */  sdc1  $f26, 0x28($sp)
/* 1FC7A0 801E4820 F7B80020 */  sdc1  $f24, 0x20($sp)
/* 1FC7A4 801E4824 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 1FC7A8 801E4828 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1FC7AC 801E482C AFA40048 */  sw    $a0, 0x48($sp)
/* 1FC7B0 801E4830 8C4E0000 */  lw    $t6, ($v0)
/* 1FC7B4 801E4834 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1FC7B8 801E4838 4481A000 */  mtc1  $at, $f20
/* 1FC7BC 801E483C 3C01800E */  lui   $at, 0x800e
/* 1FC7C0 801E4840 000E7880 */  sll   $t7, $t6, 2
/* 1FC7C4 801E4844 002F0821 */  addu  $at, $at, $t7
/* 1FC7C8 801E4848 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 1FC7CC 801E484C 8C590000 */  lw    $t9, ($v0)
/* 1FC7D0 801E4850 3C11800E */  lui   $s1, %hi(D_800E1B50) # $s1, 0x800e
/* 1FC7D4 801E4854 26311B50 */  addiu $s1, %lo(D_800E1B50) # addiu $s1, $s1, 0x1b50
/* 1FC7D8 801E4858 00194080 */  sll   $t0, $t9, 2
/* 1FC7DC 801E485C 02284821 */  addu  $t1, $s1, $t0
/* 1FC7E0 801E4860 8D2A0000 */  lw    $t2, ($t1)
/* 1FC7E4 801E4864 3C18801E */  lui   $t8, %hi(D_801DAD20) # $t8, 0x801e
/* 1FC7E8 801E4868 3C10800D */  lui   $s0, %hi(D_800D6B10) # $s0, 0x800d
/* 1FC7EC 801E486C 2718AD20 */  addiu $t8, %lo(D_801DAD20) # addiu $t8, $t8, -0x52e0
/* 1FC7F0 801E4870 26106B10 */  addiu $s0, %lo(D_800D6B10) # addiu $s0, $s0, 0x6b10
/* 1FC7F4 801E4874 AD580098 */  sw    $t8, 0x98($t2)
/* 1FC7F8 801E4878 C6040000 */  lwc1  $f4, ($s0)
/* 1FC7FC 801E487C 46142302 */  mul.s $f12, $f4, $f20
/* 1FC800 801E4880 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FC804 801E4884 00000000 */   nop   
/* 1FC808 801E4888 C6060000 */  lwc1  $f6, ($s0)
/* 1FC80C 801E488C 46143302 */  mul.s $f12, $f6, $f20
/* 1FC810 801E4890 0C02BB48 */  jal   func_800AED20_ovl13
/* 1FC814 801E4894 00000000 */   nop   
/* 1FC818 801E4898 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1FC81C 801E489C 00000000 */   nop   
/* 1FC820 801E48A0 8E420000 */  lw    $v0, ($s2)
/* 1FC824 801E48A4 3C01800F */  lui   $at, 0x800f
/* 1FC828 801E48A8 240DFFFF */  li    $t5, -1
/* 1FC82C 801E48AC 8C4B0000 */  lw    $t3, ($v0)
/* 1FC830 801E48B0 3C10800F */  lui   $s0, %hi(D_800E9AA0) # $s0, 0x800f
/* 1FC834 801E48B4 26109AA0 */  addiu $s0, %lo(D_800E9AA0) # addiu $s0, $s0, -0x6560
/* 1FC838 801E48B8 000B6080 */  sll   $t4, $t3, 2
/* 1FC83C 801E48BC 002C0821 */  addu  $at, $at, $t4
/* 1FC840 801E48C0 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FC844 801E48C4 8C4E0000 */  lw    $t6, ($v0)
/* 1FC848 801E48C8 3C01800F */  lui   $at, 0x800f
/* 1FC84C 801E48CC 240A00F0 */  li    $t2, 240
/* 1FC850 801E48D0 000E7880 */  sll   $t7, $t6, 2
/* 1FC854 801E48D4 022FC821 */  addu  $t9, $s1, $t7
/* 1FC858 801E48D8 8F280000 */  lw    $t0, ($t9)
/* 1FC85C 801E48DC 3C040001 */  lui   $a0, (0x00010158 >> 16) # lui $a0, 1
/* 1FC860 801E48E0 34840158 */  ori   $a0, (0x00010158 & 0xFFFF) # ori $a0, $a0, 0x158
/* 1FC864 801E48E4 A10D0039 */  sb    $t5, 0x39($t0)
/* 1FC868 801E48E8 8E420000 */  lw    $v0, ($s2)
/* 1FC86C 801E48EC 8C490000 */  lw    $t1, ($v0)
/* 1FC870 801E48F0 0009C080 */  sll   $t8, $t1, 2
/* 1FC874 801E48F4 00380821 */  addu  $at, $at, $t8
/* 1FC878 801E48F8 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1FC87C 801E48FC 8C4B0000 */  lw    $t3, ($v0)
/* 1FC880 801E4900 000B6080 */  sll   $t4, $t3, 2
/* 1FC884 801E4904 020C7021 */  addu  $t6, $s0, $t4
/* 1FC888 801E4908 0C02A806 */  jal   func_800AA018_ovl13
/* 1FC88C 801E490C ADCA0000 */   sw    $t2, ($t6)
/* 1FC890 801E4910 3C040001 */  lui   $a0, (0x00010159 >> 16) # lui $a0, 1
/* 1FC894 801E4914 0C02A806 */  jal   func_800AA018_ovl13
/* 1FC898 801E4918 34840159 */   ori   $a0, (0x00010159 & 0xFFFF) # ori $a0, $a0, 0x159
/* 1FC89C 801E491C 8E4F0000 */  lw    $t7, ($s2)
/* 1FC8A0 801E4920 3C01800E */  lui   $at, 0x800e
/* 1FC8A4 801E4924 24040008 */  li    $a0, 8
/* 1FC8A8 801E4928 8DE30000 */  lw    $v1, ($t7)
/* 1FC8AC 801E492C 00031880 */  sll   $v1, $v1, 2
/* 1FC8B0 801E4930 00230821 */  addu  $at, $at, $v1
/* 1FC8B4 801E4934 C4286A10 */  lwc1  $f8, 0x6a10($at)
/* 1FC8B8 801E4938 3C0140C0 */  li    $at, 0x40C00000 # 6.000000
/* 1FC8BC 801E493C 44815000 */  mtc1  $at, $f10
/* 1FC8C0 801E4940 3C01800E */  lui   $at, 0x800e
/* 1FC8C4 801E4944 00230821 */  addu  $at, $at, $v1
/* 1FC8C8 801E4948 460A4402 */  mul.s $f16, $f8, $f10
/* 1FC8CC 801E494C 0C002DAF */  jal   func_8000B6BC
/* 1FC8D0 801E4950 E43064D0 */   swc1  $f16, 0x64d0($at)
/* 1FC8D4 801E4954 8E420000 */  lw    $v0, ($s2)
/* 1FC8D8 801E4958 3C014100 */  li    $at, 0x41000000 # 8.000000
/* 1FC8DC 801E495C 4481D000 */  mtc1  $at, $f26
/* 1FC8E0 801E4960 8C590000 */  lw    $t9, ($v0)
/* 1FC8E4 801E4964 3C11800E */  lui   $s1, %hi(D_800E3210) # $s1, 0x800e
/* 1FC8E8 801E4968 26313210 */  addiu $s1, %lo(D_800E3210) # addiu $s1, $s1, 0x3210
/* 1FC8EC 801E496C 00196880 */  sll   $t5, $t9, 2
/* 1FC8F0 801E4970 022D4021 */  addu  $t0, $s1, $t5
/* 1FC8F4 801E4974 E51A0000 */  swc1  $f26, ($t0)
/* 1FC8F8 801E4978 8C490000 */  lw    $t1, ($v0)
/* 1FC8FC 801E497C 3C01801E */  lui   $at, %hi(D_801E5E20) # $at, 0x801e
/* 1FC900 801E4980 C4325E20 */  lwc1  $f18, %lo(D_801E5E20)($at)
/* 1FC904 801E4984 3C13800E */  lui   $s3, %hi(D_800E3750) # $s3, 0x800e
/* 1FC908 801E4988 26733750 */  addiu $s3, %lo(D_800E3750) # addiu $s3, $s3, 0x3750
/* 1FC90C 801E498C 0009C080 */  sll   $t8, $t1, 2
/* 1FC910 801E4990 02785821 */  addu  $t3, $s3, $t8
/* 1FC914 801E4994 E5720000 */  swc1  $f18, ($t3)
/* 1FC918 801E4998 8C4C0000 */  lw    $t4, ($v0)
/* 1FC91C 801E499C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1FC920 801E49A0 44812000 */  mtc1  $at, $f4
/* 1FC924 801E49A4 3C01800E */  lui   $at, 0x800e
/* 1FC928 801E49A8 000C5080 */  sll   $t2, $t4, 2
/* 1FC92C 801E49AC 002A0821 */  addu  $at, $at, $t2
/* 1FC930 801E49B0 E4243C90 */  swc1  $f4, 0x3c90($at)
/* 1FC934 801E49B4 8C4E0000 */  lw    $t6, ($v0)
/* 1FC938 801E49B8 3C01C100 */  li    $at, 0xC1000000 # -8.000000
/* 1FC93C 801E49BC 000E7880 */  sll   $t7, $t6, 2
/* 1FC940 801E49C0 020F2021 */  addu  $a0, $s0, $t7
/* 1FC944 801E49C4 8C990000 */  lw    $t9, ($a0)
/* 1FC948 801E49C8 272DFFFF */  addiu $t5, $t9, -1
/* 1FC94C 801E49CC AC8D0000 */  sw    $t5, ($a0)
/* 1FC950 801E49D0 8C430000 */  lw    $v1, ($v0)
/* 1FC954 801E49D4 00031880 */  sll   $v1, $v1, 2
/* 1FC958 801E49D8 02034021 */  addu  $t0, $s0, $v1
/* 1FC95C 801E49DC 8D090000 */  lw    $t1, ($t0)
/* 1FC960 801E49E0 19200039 */  blez  $t1, .L801E4AC8_ovl13
/* 1FC964 801E49E4 00000000 */   nop   
/* 1FC968 801E49E8 4481C000 */  mtc1  $at, $f24
/* 1FC96C 801E49EC 4480B000 */  mtc1  $zero, $f22
/* 1FC970 801E49F0 4480A000 */  mtc1  $zero, $f20
/* 1FC974 801E49F4 00000000 */  nop   
/* 1FC978 801E49F8 02631021 */  addu  $v0, $s3, $v1
.L801E49FC_ovl13:
/* 1FC97C 801E49FC C4400000 */  lwc1  $f0, ($v0)
/* 1FC980 801E4A00 0223C021 */  addu  $t8, $s1, $v1
/* 1FC984 801E4A04 02235821 */  addu  $t3, $s1, $v1
/* 1FC988 801E4A08 4616003C */  c.lt.s $f0, $f22
/* 1FC98C 801E4A0C 00000000 */  nop   
/* 1FC990 801E4A10 45020010 */  bc1fl .L801E4A54_ovl13
/* 1FC994 801E4A14 C56A0000 */   lwc1  $f10, ($t3)
/* 1FC998 801E4A18 C7060000 */  lwc1  $f6, ($t8)
/* 1FC99C 801E4A1C 4618303C */  c.lt.s $f6, $f24
/* 1FC9A0 801E4A20 00000000 */  nop   
/* 1FC9A4 801E4A24 45000019 */  bc1f  .L801E4A8C_ovl13
/* 1FC9A8 801E4A28 00000000 */   nop   
/* 1FC9AC 801E4A2C 4614003C */  c.lt.s $f0, $f20
/* 1FC9B0 801E4A30 00000000 */  nop   
/* 1FC9B4 801E4A34 45000004 */  bc1f  .L801E4A48_ovl13
/* 1FC9B8 801E4A38 00000000 */   nop   
/* 1FC9BC 801E4A3C 46000207 */  neg.s $f8, $f0
/* 1FC9C0 801E4A40 10000012 */  b     .L801E4A8C_ovl13
/* 1FC9C4 801E4A44 E4480000 */   swc1  $f8, ($v0)
.L801E4A48_ovl13:
/* 1FC9C8 801E4A48 10000010 */  b     .L801E4A8C_ovl13
/* 1FC9CC 801E4A4C E4400000 */   swc1  $f0, ($v0)
/* 1FC9D0 801E4A50 C56A0000 */  lwc1  $f10, ($t3)
.L801E4A54_ovl13:
/* 1FC9D4 801E4A54 460AD03C */  c.lt.s $f26, $f10
/* 1FC9D8 801E4A58 00000000 */  nop   
/* 1FC9DC 801E4A5C 4500000B */  bc1f  .L801E4A8C_ovl13
/* 1FC9E0 801E4A60 00000000 */   nop   
/* 1FC9E4 801E4A64 4614003C */  c.lt.s $f0, $f20
/* 1FC9E8 801E4A68 00000000 */  nop   
/* 1FC9EC 801E4A6C 45020006 */  bc1fl .L801E4A88_ovl13
/* 1FC9F0 801E4A70 46000107 */   neg.s $f4, $f0
/* 1FC9F4 801E4A74 46000407 */  neg.s $f16, $f0
/* 1FC9F8 801E4A78 46008487 */  neg.s $f18, $f16
/* 1FC9FC 801E4A7C 10000003 */  b     .L801E4A8C_ovl13
/* 1FCA00 801E4A80 E4520000 */   swc1  $f18, ($v0)
/* 1FCA04 801E4A84 46000107 */  neg.s $f4, $f0
.L801E4A88_ovl13:
/* 1FCA08 801E4A88 E4440000 */  swc1  $f4, ($v0)
.L801E4A8C_ovl13:
/* 1FCA0C 801E4A8C 0C002DAF */  jal   func_8000B6BC
/* 1FCA10 801E4A90 24040001 */   li    $a0, 1
/* 1FCA14 801E4A94 8E420000 */  lw    $v0, ($s2)
/* 1FCA18 801E4A98 8C4C0000 */  lw    $t4, ($v0)
/* 1FCA1C 801E4A9C 000C5080 */  sll   $t2, $t4, 2
/* 1FCA20 801E4AA0 020A2021 */  addu  $a0, $s0, $t2
/* 1FCA24 801E4AA4 8C8E0000 */  lw    $t6, ($a0)
/* 1FCA28 801E4AA8 25CFFFFF */  addiu $t7, $t6, -1
/* 1FCA2C 801E4AAC AC8F0000 */  sw    $t7, ($a0)
/* 1FCA30 801E4AB0 8C430000 */  lw    $v1, ($v0)
/* 1FCA34 801E4AB4 00031880 */  sll   $v1, $v1, 2
/* 1FCA38 801E4AB8 0203C821 */  addu  $t9, $s0, $v1
/* 1FCA3C 801E4ABC 8F2D0000 */  lw    $t5, ($t9)
/* 1FCA40 801E4AC0 5DA0FFCE */  bgtzl $t5, .L801E49FC_ovl13
/* 1FCA44 801E4AC4 02631021 */   addu  $v0, $s3, $v1
.L801E4AC8_ovl13:
/* 1FCA48 801E4AC8 3C01800E */  lui   $at, 0x800e
/* 1FCA4C 801E4ACC 00230821 */  addu  $at, $at, $v1
/* 1FCA50 801E4AD0 2408FFFF */  li    $t0, -1
/* 1FCA54 801E4AD4 AC28DC50 */  sw    $t0, -0x23b0($at)
/* 1FCA58 801E4AD8 0C068FA0 */  jal   D_801A3E80_ovl13
/* 1FCA5C 801E4ADC 8FA40048 */   lw    $a0, 0x48($sp)
/* 1FCA60 801E4AE0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 1FCA64 801E4AE4 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1FCA68 801E4AE8 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 1FCA6C 801E4AEC D7B80020 */  ldc1  $f24, 0x20($sp)
/* 1FCA70 801E4AF0 D7BA0028 */  ldc1  $f26, 0x28($sp)
/* 1FCA74 801E4AF4 8FB00034 */  lw    $s0, 0x34($sp)
/* 1FCA78 801E4AF8 8FB10038 */  lw    $s1, 0x38($sp)
/* 1FCA7C 801E4AFC 8FB2003C */  lw    $s2, 0x3c($sp)
/* 1FCA80 801E4B00 8FB30040 */  lw    $s3, 0x40($sp)
/* 1FCA84 801E4B04 03E00008 */  jr    $ra
/* 1FCA88 801E4B08 27BD0048 */   addiu $sp, $sp, 0x48

/* 1FCA8C 801E4B0C 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FCA90 801E4B10 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FCA94 801E4B14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FCA98 801E4B18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FCA9C 801E4B1C AFA40018 */  sw    $a0, 0x18($sp)
/* 1FCAA0 801E4B20 8C6E0000 */  lw    $t6, ($v1)
/* 1FCAA4 801E4B24 3C05800F */  lui   $a1, %hi(D_800E98E0) # $a1, 0x800f
/* 1FCAA8 801E4B28 24A598E0 */  addiu $a1, %lo(D_800E98E0) # addiu $a1, $a1, -0x6720
/* 1FCAAC 801E4B2C 000E7880 */  sll   $t7, $t6, 2
/* 1FCAB0 801E4B30 00AF1021 */  addu  $v0, $a1, $t7
/* 1FCAB4 801E4B34 8C580000 */  lw    $t8, ($v0)
/* 1FCAB8 801E4B38 24010006 */  li    $at, 6
/* 1FCABC 801E4B3C 3C0F800E */  lui   $t7, 0x800e
/* 1FCAC0 801E4B40 27190001 */  addiu $t9, $t8, 1
/* 1FCAC4 801E4B44 AC590000 */  sw    $t9, ($v0)
/* 1FCAC8 801E4B48 8C690000 */  lw    $t1, ($v1)
/* 1FCACC 801E4B4C 24040006 */  li    $a0, 6
/* 1FCAD0 801E4B50 00095080 */  sll   $t2, $t1, 2
/* 1FCAD4 801E4B54 00AA1021 */  addu  $v0, $a1, $t2
/* 1FCAD8 801E4B58 8C4B0000 */  lw    $t3, ($v0)
/* 1FCADC 801E4B5C 0161001A */  div   $zero, $t3, $at
/* 1FCAE0 801E4B60 00006010 */  mfhi  $t4
/* 1FCAE4 801E4B64 AC4C0000 */  sw    $t4, ($v0)
/* 1FCAE8 801E4B68 8C680000 */  lw    $t0, ($v1)
/* 1FCAEC 801E4B6C 00084080 */  sll   $t0, $t0, 2
/* 1FCAF0 801E4B70 00A86821 */  addu  $t5, $a1, $t0
/* 1FCAF4 801E4B74 8DAE0000 */  lw    $t6, ($t5)
/* 1FCAF8 801E4B78 24050002 */  li    $a1, 2
/* 1FCAFC 801E4B7C 01E87821 */  addu  $t7, $t7, $t0
/* 1FCB00 801E4B80 15C00009 */  bnez  $t6, .L801E4BA8_ovl13
/* 1FCB04 801E4B84 00000000 */   nop   
/* 1FCB08 801E4B88 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1FCB0C 801E4B8C 00003025 */  move  $a2, $zero
/* 1FCB10 801E4B90 0C02A040 */  jal   func_800A8100_ovl13
/* 1FCB14 801E4B94 8DE70000 */   lw    $a3, ($t7)
/* 1FCB18 801E4B98 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FCB1C 801E4B9C 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FCB20 801E4BA0 8C680000 */  lw    $t0, ($v1)
/* 1FCB24 801E4BA4 00084080 */  sll   $t0, $t0, 2
.L801E4BA8_ovl13:
/* 1FCB28 801E4BA8 3C18800E */  lui   $t8, %hi(D_800E2790) # $t8, 0x800e
/* 1FCB2C 801E4BAC 27182790 */  addiu $t8, %lo(D_800E2790) # addiu $t8, $t8, 0x2790
/* 1FCB30 801E4BB0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1FCB34 801E4BB4 01181021 */  addu  $v0, $t0, $t8
/* 1FCB38 801E4BB8 44810000 */  mtc1  $at, $f0
/* 1FCB3C 801E4BBC C4440000 */  lwc1  $f4, ($v0)
/* 1FCB40 801E4BC0 4600203C */  c.lt.s $f4, $f0
/* 1FCB44 801E4BC4 00000000 */  nop   
/* 1FCB48 801E4BC8 45020017 */  bc1fl .L801E4C28_ovl13
/* 1FCB4C 801E4BCC 8FAE0018 */   lw    $t6, 0x18($sp)
/* 1FCB50 801E4BD0 E4400000 */  swc1  $f0, ($v0)
/* 1FCB54 801E4BD4 8C790000 */  lw    $t9, ($v1)
/* 1FCB58 801E4BD8 44803000 */  mtc1  $zero, $f6
/* 1FCB5C 801E4BDC 3C01800E */  lui   $at, 0x800e
/* 1FCB60 801E4BE0 00194880 */  sll   $t1, $t9, 2
/* 1FCB64 801E4BE4 00290821 */  addu  $at, $at, $t1
/* 1FCB68 801E4BE8 E4263210 */  swc1  $f6, 0x3210($at)
/* 1FCB6C 801E4BEC 8C6A0000 */  lw    $t2, ($v1)
/* 1FCB70 801E4BF0 3C01801E */  lui   $at, %hi(D_801E5E24) # $at, 0x801e
/* 1FCB74 801E4BF4 C4285E24 */  lwc1  $f8, %lo(D_801E5E24)($at)
/* 1FCB78 801E4BF8 3C01800E */  lui   $at, 0x800e
/* 1FCB7C 801E4BFC 000A5880 */  sll   $t3, $t2, 2
/* 1FCB80 801E4C00 002B0821 */  addu  $at, $at, $t3
/* 1FCB84 801E4C04 E4283750 */  swc1  $f8, 0x3750($at)
/* 1FCB88 801E4C08 8C6C0000 */  lw    $t4, ($v1)
/* 1FCB8C 801E4C0C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1FCB90 801E4C10 44815000 */  mtc1  $at, $f10
/* 1FCB94 801E4C14 3C01800E */  lui   $at, 0x800e
/* 1FCB98 801E4C18 000C6880 */  sll   $t5, $t4, 2
/* 1FCB9C 801E4C1C 002D0821 */  addu  $at, $at, $t5
/* 1FCBA0 801E4C20 E42A3C90 */  swc1  $f10, 0x3c90($at)
/* 1FCBA4 801E4C24 8FAE0018 */  lw    $t6, 0x18($sp)
.L801E4C28_ovl13:
/* 1FCBA8 801E4C28 8DCF0044 */  lw    $t7, 0x44($t6)
/* 1FCBAC 801E4C2C 31F80001 */  andi  $t8, $t7, 1
/* 1FCBB0 801E4C30 57000004 */  bnezl $t8, .L801E4C44_ovl13
/* 1FCBB4 801E4C34 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1FCBB8 801E4C38 0C067CEC */  jal   func_8019F3B0_ovl13
/* 1FCBBC 801E4C3C 00000000 */   nop   
/* 1FCBC0 801E4C40 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E4C44_ovl13:
/* 1FCBC4 801E4C44 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FCBC8 801E4C48 03E00008 */  jr    $ra
/* 1FCBCC 801E4C4C 00000000 */   nop   

/* 1FCBD0 801E4C50 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1FCBD4 801E4C54 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1FCBD8 801E4C58 AFA40000 */  sw    $a0, ($sp)
/* 1FCBDC 801E4C5C 3C01800F */  lui   $at, 0x800f
/* 1FCBE0 801E4C60 8C4E0000 */  lw    $t6, ($v0)
/* 1FCBE4 801E4C64 44802000 */  mtc1  $zero, $f4
/* 1FCBE8 801E4C68 000E7880 */  sll   $t7, $t6, 2
/* 1FCBEC 801E4C6C 002F0821 */  addu  $at, $at, $t7
/* 1FCBF0 801E4C70 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FCBF4 801E4C74 8C580000 */  lw    $t8, ($v0)
/* 1FCBF8 801E4C78 3C01800E */  lui   $at, 0x800e
/* 1FCBFC 801E4C7C 0018C880 */  sll   $t9, $t8, 2
/* 1FCC00 801E4C80 00390821 */  addu  $at, $at, $t9
/* 1FCC04 801E4C84 E4243210 */  swc1  $f4, 0x3210($at)
/* 1FCC08 801E4C88 8C480000 */  lw    $t0, ($v0)
/* 1FCC0C 801E4C8C 3C01801E */  lui   $at, %hi(D_801E5E28) # $at, 0x801e
/* 1FCC10 801E4C90 C4265E28 */  lwc1  $f6, %lo(D_801E5E28)($at)
/* 1FCC14 801E4C94 3C01800E */  lui   $at, 0x800e
/* 1FCC18 801E4C98 00084880 */  sll   $t1, $t0, 2
/* 1FCC1C 801E4C9C 00290821 */  addu  $at, $at, $t1
/* 1FCC20 801E4CA0 E4263750 */  swc1  $f6, 0x3750($at)
/* 1FCC24 801E4CA4 8C4A0000 */  lw    $t2, ($v0)
/* 1FCC28 801E4CA8 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1FCC2C 801E4CAC 44814000 */  mtc1  $at, $f8
/* 1FCC30 801E4CB0 3C01800E */  lui   $at, 0x800e
/* 1FCC34 801E4CB4 000A5880 */  sll   $t3, $t2, 2
/* 1FCC38 801E4CB8 002B0821 */  addu  $at, $at, $t3
/* 1FCC3C 801E4CBC 03E00008 */  jr    $ra
/* 1FCC40 801E4CC0 E4283C90 */   swc1  $f8, 0x3c90($at)

/* 1FCC44 801E4CC4 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1FCC48 801E4CC8 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1FCC4C 801E4CCC AFA40000 */  sw    $a0, ($sp)
/* 1FCC50 801E4CD0 3C01800F */  lui   $at, 0x800f
/* 1FCC54 801E4CD4 8C4E0000 */  lw    $t6, ($v0)
/* 1FCC58 801E4CD8 44802000 */  mtc1  $zero, $f4
/* 1FCC5C 801E4CDC 000E7880 */  sll   $t7, $t6, 2
/* 1FCC60 801E4CE0 002F0821 */  addu  $at, $at, $t7
/* 1FCC64 801E4CE4 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FCC68 801E4CE8 8C580000 */  lw    $t8, ($v0)
/* 1FCC6C 801E4CEC 3C01800E */  lui   $at, 0x800e
/* 1FCC70 801E4CF0 0018C880 */  sll   $t9, $t8, 2
/* 1FCC74 801E4CF4 00390821 */  addu  $at, $at, $t9
/* 1FCC78 801E4CF8 E4243210 */  swc1  $f4, 0x3210($at)
/* 1FCC7C 801E4CFC 8C480000 */  lw    $t0, ($v0)
/* 1FCC80 801E4D00 3C01801E */  lui   $at, %hi(D_801E5E2C) # $at, 0x801e
/* 1FCC84 801E4D04 C4265E2C */  lwc1  $f6, %lo(D_801E5E2C)($at)
/* 1FCC88 801E4D08 3C01800E */  lui   $at, 0x800e
/* 1FCC8C 801E4D0C 00084880 */  sll   $t1, $t0, 2
/* 1FCC90 801E4D10 00290821 */  addu  $at, $at, $t1
/* 1FCC94 801E4D14 E4263750 */  swc1  $f6, 0x3750($at)
/* 1FCC98 801E4D18 8C4A0000 */  lw    $t2, ($v0)
/* 1FCC9C 801E4D1C 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 1FCCA0 801E4D20 44814000 */  mtc1  $at, $f8
/* 1FCCA4 801E4D24 3C01800E */  lui   $at, 0x800e
/* 1FCCA8 801E4D28 000A5880 */  sll   $t3, $t2, 2
/* 1FCCAC 801E4D2C 002B0821 */  addu  $at, $at, $t3
/* 1FCCB0 801E4D30 03E00008 */  jr    $ra
/* 1FCCB4 801E4D34 E4283C90 */   swc1  $f8, 0x3c90($at)

/* 1FCCB8 801E4D38 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1FCCBC 801E4D3C AFB00018 */  sw    $s0, 0x18($sp)
/* 1FCCC0 801E4D40 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FCCC4 801E4D44 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FCCC8 801E4D48 8E0E0000 */  lw    $t6, ($s0)
/* 1FCCCC 801E4D4C AFBF0024 */  sw    $ra, 0x24($sp)
/* 1FCCD0 801E4D50 AFB20020 */  sw    $s2, 0x20($sp)
/* 1FCCD4 801E4D54 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1FCCD8 801E4D58 AFA40028 */  sw    $a0, 0x28($sp)
/* 1FCCDC 801E4D5C 8DCF0000 */  lw    $t7, ($t6)
/* 1FCCE0 801E4D60 3C02800E */  lui   $v0, 0x800e
/* 1FCCE4 801E4D64 3C01C448 */  li    $at, 0xC4480000 # -800.000000
/* 1FCCE8 801E4D68 000FC080 */  sll   $t8, $t7, 2
/* 1FCCEC 801E4D6C 00581021 */  addu  $v0, $v0, $t8
/* 1FCCF0 801E4D70 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 1FCCF4 801E4D74 44812000 */  mtc1  $at, $f4
/* 1FCCF8 801E4D78 3C01800E */  lui   $at, 0x800e
/* 1FCCFC 801E4D7C 8C590080 */  lw    $t9, 0x80($v0)
/* 1FCD00 801E4D80 3C08800B */  lui   $t0, %hi(D_800B6E84) # $t0, 0x800b
/* 1FCD04 801E4D84 25086E84 */  addiu $t0, %lo(D_800B6E84) # addiu $t0, $t0, 0x6e84
/* 1FCD08 801E4D88 E7240018 */  swc1  $f4, 0x18($t9)
/* 1FCD0C 801E4D8C 8E110000 */  lw    $s1, ($s0)
/* 1FCD10 801E4D90 3C0B801E */  lui   $t3, %hi(D_801E5050) # $t3, 0x801e
/* 1FCD14 801E4D94 256B5050 */  addiu $t3, %lo(D_801E5050) # addiu $t3, $t3, 0x5050
/* 1FCD18 801E4D98 8E290000 */  lw    $t1, ($s1)
/* 1FCD1C 801E4D9C 3C04801E */  lui   $a0, %hi(D_801E4E58) # $a0, 0x801e
/* 1FCD20 801E4DA0 24844E58 */  addiu $a0, %lo(D_801E4E58) # addiu $a0, $a0, 0x4e58
/* 1FCD24 801E4DA4 00095080 */  sll   $t2, $t1, 2
/* 1FCD28 801E4DA8 002A0821 */  addu  $at, $at, $t2
/* 1FCD2C 801E4DAC AC28EF90 */  sw    $t0, -0x1070($at)
/* 1FCD30 801E4DB0 8E2C0000 */  lw    $t4, ($s1)
/* 1FCD34 801E4DB4 3C01800E */  lui   $at, 0x800e
/* 1FCD38 801E4DB8 000C6880 */  sll   $t5, $t4, 2
/* 1FCD3C 801E4DBC 002D0821 */  addu  $at, $at, $t5
/* 1FCD40 801E4DC0 0C068354 */  jal   func_801A0D50_ovl13
/* 1FCD44 801E4DC4 AC2BF150 */   sw    $t3, -0xeb0($at)
/* 1FCD48 801E4DC8 8E110000 */  lw    $s1, ($s0)
/* 1FCD4C 801E4DCC 3C01800F */  lui   $at, 0x800f
/* 1FCD50 801E4DD0 3C04800E */  lui   $a0, 0x800e
/* 1FCD54 801E4DD4 8E2E0000 */  lw    $t6, ($s1)
/* 1FCD58 801E4DD8 3C06801E */  lui   $a2, %hi(D_801E5C0C) # $a2, 0x801e
/* 1FCD5C 801E4DDC 24C65C0C */  addiu $a2, %lo(D_801E5C0C) # addiu $a2, $a2, 0x5c0c
/* 1FCD60 801E4DE0 000E7880 */  sll   $t7, $t6, 2
/* 1FCD64 801E4DE4 002F0821 */  addu  $at, $at, $t7
/* 1FCD68 801E4DE8 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FCD6C 801E4DEC 8E380000 */  lw    $t8, ($s1)
/* 1FCD70 801E4DF0 24050001 */  li    $a1, 1
/* 1FCD74 801E4DF4 00982021 */  addu  $a0, $a0, $t8
/* 1FCD78 801E4DF8 0C02911F */  jal   func_800A447C_ovl13
/* 1FCD7C 801E4DFC 90847880 */   lbu   $a0, 0x7880($a0)
/* 1FCD80 801E4E00 3C12801E */  lui   $s2, %hi(D_801E5C10) # $s2, 0x801e
/* 1FCD84 801E4E04 3C11800E */  lui   $s1, %hi(D_800DDC50) # $s1, 0x800e
/* 1FCD88 801E4E08 2631DC50 */  addiu $s1, %lo(D_800DDC50) # addiu $s1, $s1, -0x23b0
/* 1FCD8C 801E4E0C 26525C10 */  addiu $s2, %lo(D_801E5C10) # addiu $s2, $s2, 0x5c10
/* 1FCD90 801E4E10 8E190000 */  lw    $t9, ($s0)
.L801E4E14_ovl13:
/* 1FCD94 801E4E14 24050001 */  li    $a1, 1
/* 1FCD98 801E4E18 02403025 */  move  $a2, $s2
/* 1FCD9C 801E4E1C 8F290000 */  lw    $t1, ($t9)
/* 1FCDA0 801E4E20 00094080 */  sll   $t0, $t1, 2
/* 1FCDA4 801E4E24 02285021 */  addu  $t2, $s1, $t0
/* 1FCDA8 801E4E28 0C02911F */  jal   func_800A447C_ovl13
/* 1FCDAC 801E4E2C 8D440000 */   lw    $a0, ($t2)
/* 1FCDB0 801E4E30 1000FFF8 */  b     .L801E4E14_ovl13
/* 1FCDB4 801E4E34 8E190000 */   lw    $t9, ($s0)
/* 1FCDB8 801E4E38 00000000 */  nop   
/* 1FCDBC 801E4E3C 00000000 */  nop   
/* 1FCDC0 801E4E40 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1FCDC4 801E4E44 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FCDC8 801E4E48 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1FCDCC 801E4E4C 8FB20020 */  lw    $s2, 0x20($sp)
/* 1FCDD0 801E4E50 03E00008 */  jr    $ra
/* 1FCDD4 801E4E54 27BD0028 */   addiu $sp, $sp, 0x28

/* 1FCDD8 801E4E58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1FCDDC 801E4E5C AFB20020 */  sw    $s2, 0x20($sp)
/* 1FCDE0 801E4E60 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1FCDE4 801E4E64 AFB00018 */  sw    $s0, 0x18($sp)
/* 1FCDE8 801E4E68 3C10800E */  lui   $s0, %hi(D_800DDC50) # $s0, 0x800e
/* 1FCDEC 801E4E6C 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1FCDF0 801E4E70 3C12801E */  lui   $s2, %hi(D_801E5C10) # $s2, 0x801e
/* 1FCDF4 801E4E74 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1FCDF8 801E4E78 AFA40028 */  sw    $a0, 0x28($sp)
/* 1FCDFC 801E4E7C 26525C10 */  addiu $s2, %lo(D_801E5C10) # addiu $s2, $s2, 0x5c10
/* 1FCE00 801E4E80 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1FCE04 801E4E84 2610DC50 */  addiu $s0, %lo(D_800DDC50) # addiu $s0, $s0, -0x23b0
/* 1FCE08 801E4E88 8E2E0000 */  lw    $t6, ($s1)
.L801E4E8C_ovl13:
/* 1FCE0C 801E4E8C 24050001 */  li    $a1, 1
/* 1FCE10 801E4E90 02403025 */  move  $a2, $s2
/* 1FCE14 801E4E94 8DCF0000 */  lw    $t7, ($t6)
/* 1FCE18 801E4E98 000FC080 */  sll   $t8, $t7, 2
/* 1FCE1C 801E4E9C 0218C821 */  addu  $t9, $s0, $t8
/* 1FCE20 801E4EA0 0C02911F */  jal   func_800A447C_ovl13
/* 1FCE24 801E4EA4 8F240000 */   lw    $a0, ($t9)
/* 1FCE28 801E4EA8 1000FFF8 */  b     .L801E4E8C_ovl13
/* 1FCE2C 801E4EAC 8E2E0000 */   lw    $t6, ($s1)
/* 1FCE30 801E4EB0 00000000 */  nop   
/* 1FCE34 801E4EB4 00000000 */  nop   
/* 1FCE38 801E4EB8 00000000 */  nop   
/* 1FCE3C 801E4EBC 00000000 */  nop   
/* 1FCE40 801E4EC0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1FCE44 801E4EC4 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FCE48 801E4EC8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1FCE4C 801E4ECC 8FB20020 */  lw    $s2, 0x20($sp)
/* 1FCE50 801E4ED0 03E00008 */  jr    $ra
/* 1FCE54 801E4ED4 27BD0028 */   addiu $sp, $sp, 0x28

/* 1FCE58 801E4ED8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1FCE5C 801E4EDC AFB00018 */  sw    $s0, 0x18($sp)
/* 1FCE60 801E4EE0 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FCE64 801E4EE4 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FCE68 801E4EE8 8E0E0000 */  lw    $t6, ($s0)
/* 1FCE6C 801E4EEC AFBF001C */  sw    $ra, 0x1c($sp)
/* 1FCE70 801E4EF0 AFA40020 */  sw    $a0, 0x20($sp)
/* 1FCE74 801E4EF4 24040070 */  li    $a0, 112
/* 1FCE78 801E4EF8 0C02C67D */  jal   func_800B19F4
/* 1FCE7C 801E4EFC 8DC50000 */   lw    $a1, ($t6)
/* 1FCE80 801E4F00 00002025 */  move  $a0, $zero
/* 1FCE84 801E4F04 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1FCE88 801E4F08 8E050000 */   lw    $a1, ($s0)
/* 1FCE8C 801E4F0C 0C002DAF */  jal   func_8000B6BC
/* 1FCE90 801E4F10 24040004 */   li    $a0, 4
/* 1FCE94 801E4F14 8E0F0000 */  lw    $t7, ($s0)
/* 1FCE98 801E4F18 24040030 */  li    $a0, 48
/* 1FCE9C 801E4F1C 0C02C67D */  jal   func_800B19F4
/* 1FCEA0 801E4F20 8DE50000 */   lw    $a1, ($t7)
/* 1FCEA4 801E4F24 24040001 */  li    $a0, 1
/* 1FCEA8 801E4F28 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1FCEAC 801E4F2C 8E050000 */   lw    $a1, ($s0)
/* 1FCEB0 801E4F30 8E030000 */  lw    $v1, ($s0)
/* 1FCEB4 801E4F34 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 1FCEB8 801E4F38 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 1FCEBC 801E4F3C 8C620000 */  lw    $v0, ($v1)
/* 1FCEC0 801E4F40 3C08800E */  lui   $t0, %hi(D_800E6A10) # $t0, 0x800e
/* 1FCEC4 801E4F44 25086A10 */  addiu $t0, %lo(D_800E6A10) # addiu $t0, $t0, 0x6a10
/* 1FCEC8 801E4F48 00021080 */  sll   $v0, $v0, 2
/* 1FCECC 801E4F4C 00E2C021 */  addu  $t8, $a3, $v0
/* 1FCED0 801E4F50 8F190000 */  lw    $t9, ($t8)
/* 1FCED4 801E4F54 01027021 */  addu  $t6, $t0, $v0
/* 1FCED8 801E4F58 3C09800E */  lui   $t1, %hi(D_800E5F90) # $t1, 0x800e
/* 1FCEDC 801E4F5C 00196080 */  sll   $t4, $t9, 2
/* 1FCEE0 801E4F60 010C6821 */  addu  $t5, $t0, $t4
/* 1FCEE4 801E4F64 C5A40000 */  lwc1  $f4, ($t5)
/* 1FCEE8 801E4F68 25295F90 */  addiu $t1, %lo(D_800E5F90) # addiu $t1, $t1, 0x5f90
/* 1FCEEC 801E4F6C 3C0A800E */  lui   $t2, %hi(D_800E6BD0) # $t2, 0x800e
/* 1FCEF0 801E4F70 E5C40000 */  swc1  $f4, ($t6)
/* 1FCEF4 801E4F74 8C620000 */  lw    $v0, ($v1)
/* 1FCEF8 801E4F78 254A6BD0 */  addiu $t2, %lo(D_800E6BD0) # addiu $t2, $t2, 0x6bd0
/* 1FCEFC 801E4F7C 3C0B800E */  lui   $t3, %hi(D_800E2790) # $t3, 0x800e
/* 1FCF00 801E4F80 00021080 */  sll   $v0, $v0, 2
/* 1FCF04 801E4F84 00E27821 */  addu  $t7, $a3, $v0
/* 1FCF08 801E4F88 8DF80000 */  lw    $t8, ($t7)
/* 1FCF0C 801E4F8C 01227021 */  addu  $t6, $t1, $v0
/* 1FCF10 801E4F90 256B2790 */  addiu $t3, %lo(D_800E2790) # addiu $t3, $t3, 0x2790
/* 1FCF14 801E4F94 0018C880 */  sll   $t9, $t8, 2
/* 1FCF18 801E4F98 01396021 */  addu  $t4, $t1, $t9
/* 1FCF1C 801E4F9C 8D8D0000 */  lw    $t5, ($t4)
/* 1FCF20 801E4FA0 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1FCF24 801E4FA4 44815000 */  mtc1  $at, $f10
/* 1FCF28 801E4FA8 ADCD0000 */  sw    $t5, ($t6)
/* 1FCF2C 801E4FAC 8C620000 */  lw    $v0, ($v1)
/* 1FCF30 801E4FB0 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1FCF34 801E4FB4 44812000 */  mtc1  $at, $f4
/* 1FCF38 801E4FB8 00021080 */  sll   $v0, $v0, 2
/* 1FCF3C 801E4FBC 00E27821 */  addu  $t7, $a3, $v0
/* 1FCF40 801E4FC0 8DF80000 */  lw    $t8, ($t7)
/* 1FCF44 801E4FC4 01426821 */  addu  $t5, $t2, $v0
/* 1FCF48 801E4FC8 0018C880 */  sll   $t9, $t8, 2
/* 1FCF4C 801E4FCC 01596021 */  addu  $t4, $t2, $t9
/* 1FCF50 801E4FD0 C5860000 */  lwc1  $f6, ($t4)
/* 1FCF54 801E4FD4 E5A60000 */  swc1  $f6, ($t5)
/* 1FCF58 801E4FD8 8C620000 */  lw    $v0, ($v1)
/* 1FCF5C 801E4FDC 00021080 */  sll   $v0, $v0, 2
/* 1FCF60 801E4FE0 00E27021 */  addu  $t6, $a3, $v0
/* 1FCF64 801E4FE4 8DCF0000 */  lw    $t7, ($t6)
/* 1FCF68 801E4FE8 01626021 */  addu  $t4, $t3, $v0
/* 1FCF6C 801E4FEC 000FC080 */  sll   $t8, $t7, 2
/* 1FCF70 801E4FF0 0178C821 */  addu  $t9, $t3, $t8
/* 1FCF74 801E4FF4 C7280000 */  lwc1  $f8, ($t9)
/* 1FCF78 801E4FF8 460A4401 */  sub.s $f16, $f8, $f10
/* 1FCF7C 801E4FFC E5900000 */  swc1  $f16, ($t4)
/* 1FCF80 801E5000 8C620000 */  lw    $v0, ($v1)
/* 1FCF84 801E5004 00021080 */  sll   $v0, $v0, 2
/* 1FCF88 801E5008 01026821 */  addu  $t5, $t0, $v0
/* 1FCF8C 801E500C C5B20000 */  lwc1  $f18, ($t5)
/* 1FCF90 801E5010 01222021 */  addu  $a0, $t1, $v0
/* 1FCF94 801E5014 01422821 */  addu  $a1, $t2, $v0
/* 1FCF98 801E5018 46049182 */  mul.s $f6, $f18, $f4
/* 1FCF9C 801E501C 44063000 */  mfc1  $a2, $f6
/* 1FCFA0 801E5020 0C03E65D */  jal   func_800F9974_ovl13
/* 1FCFA4 801E5024 00000000 */   nop   
/* 1FCFA8 801E5028 8E0E0000 */  lw    $t6, ($s0)
/* 1FCFAC 801E502C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1FCFB0 801E5030 3C01800E */  lui   $at, 0x800e
/* 1FCFB4 801E5034 8DCF0000 */  lw    $t7, ($t6)
/* 1FCFB8 801E5038 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FCFBC 801E503C 27BD0020 */  addiu $sp, $sp, 0x20
/* 1FCFC0 801E5040 000FC080 */  sll   $t8, $t7, 2
/* 1FCFC4 801E5044 00380821 */  addu  $at, $at, $t8
/* 1FCFC8 801E5048 03E00008 */  jr    $ra
/* 1FCFCC 801E504C AC20DC50 */   sw    $zero, -0x23b0($at)

/* 1FCFD0 801E5050 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1FCFD4 801E5054 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1FCFD8 801E5058 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FCFDC 801E505C AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FCFE0 801E5060 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FCFE4 801E5064 8DCF0000 */  lw    $t7, ($t6)
/* 1FCFE8 801E5068 3C04800E */  lui   $a0, 0x800e
/* 1FCFEC 801E506C 3C06801E */  lui   $a2, %hi(D_801E5C14) # $a2, 0x801e
/* 1FCFF0 801E5070 000FC080 */  sll   $t8, $t7, 2
/* 1FCFF4 801E5074 00982021 */  addu  $a0, $a0, $t8
/* 1FCFF8 801E5078 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 1FCFFC 801E507C 24C65C14 */  addiu $a2, %lo(D_801E5C14) # addiu $a2, $a2, 0x5c14
/* 1FD000 801E5080 0C02911F */  jal   func_800A447C_ovl13
/* 1FD004 801E5084 24050001 */   li    $a1, 1
/* 1FD008 801E5088 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FD00C 801E508C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FD010 801E5090 03E00008 */  jr    $ra
/* 1FD014 801E5094 00000000 */   nop   

/* 1FD018 801E5098 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1FD01C 801E509C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1FD020 801E50A0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FD024 801E50A4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FD028 801E50A8 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FD02C 801E50AC 8C4E0000 */  lw    $t6, ($v0)
/* 1FD030 801E50B0 3C01800E */  lui   $at, 0x800e
/* 1FD034 801E50B4 3C09800E */  lui   $t1, 0x800e
/* 1FD038 801E50B8 000E7880 */  sll   $t7, $t6, 2
/* 1FD03C 801E50BC 002F0821 */  addu  $at, $at, $t7
/* 1FD040 801E50C0 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 1FD044 801E50C4 8C590000 */  lw    $t9, ($v0)
/* 1FD048 801E50C8 3C18801E */  lui   $t8, %hi(D_801DAD44) # $t8, 0x801e
/* 1FD04C 801E50CC 2718AD44 */  addiu $t8, %lo(D_801DAD44) # addiu $t8, $t8, -0x52bc
/* 1FD050 801E50D0 00194080 */  sll   $t0, $t9, 2
/* 1FD054 801E50D4 01284821 */  addu  $t1, $t1, $t0
/* 1FD058 801E50D8 8D291B50 */  lw    $t1, 0x1b50($t1)
/* 1FD05C 801E50DC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FD060 801E50E0 AD380098 */  sw    $t8, 0x98($t1)
/* 1FD064 801E50E4 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FD068 801E50E8 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1FD06C 801E50EC 3C01800D */  lui   $at, %hi(D_800D6B10) # $at, 0x800d
/* 1FD070 801E50F0 0C02BB48 */  jal   func_800AED20_ovl13
/* 1FD074 801E50F4 C42C6B10 */   lwc1  $f12, %lo(D_800D6B10)($at)
/* 1FD078 801E50F8 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1FD07C 801E50FC 00000000 */   nop   
/* 1FD080 801E5100 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FD084 801E5104 2463A7C4 */  addiu $v1, %lo(D_8004A7C4) # addiu $v1, $v1, -0x583c
/* 1FD088 801E5108 8C620000 */  lw    $v0, ($v1)
/* 1FD08C 801E510C 3C01800F */  lui   $at, 0x800f
/* 1FD090 801E5110 3C0F800E */  lui   $t7, 0x800e
/* 1FD094 801E5114 8C4A0000 */  lw    $t2, ($v0)
/* 1FD098 801E5118 240CFFFF */  li    $t4, -1
/* 1FD09C 801E511C 24180168 */  li    $t8, 360
/* 1FD0A0 801E5120 000A5880 */  sll   $t3, $t2, 2
/* 1FD0A4 801E5124 002B0821 */  addu  $at, $at, $t3
/* 1FD0A8 801E5128 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FD0AC 801E512C 8C4D0000 */  lw    $t5, ($v0)
/* 1FD0B0 801E5130 3C01800F */  lui   $at, 0x800f
/* 1FD0B4 801E5134 3C040001 */  lui   $a0, (0x0001055C >> 16) # lui $a0, 1
/* 1FD0B8 801E5138 000D7080 */  sll   $t6, $t5, 2
/* 1FD0BC 801E513C 01EE7821 */  addu  $t7, $t7, $t6
/* 1FD0C0 801E5140 8DEF1B50 */  lw    $t7, 0x1b50($t7)
/* 1FD0C4 801E5144 3484055C */  ori   $a0, (0x0001055C & 0xFFFF) # ori $a0, $a0, 0x55c
/* 1FD0C8 801E5148 A1EC0039 */  sb    $t4, 0x39($t7)
/* 1FD0CC 801E514C 8C620000 */  lw    $v0, ($v1)
/* 1FD0D0 801E5150 8C590000 */  lw    $t9, ($v0)
/* 1FD0D4 801E5154 00194080 */  sll   $t0, $t9, 2
/* 1FD0D8 801E5158 00280821 */  addu  $at, $at, $t0
/* 1FD0DC 801E515C AC2098E0 */  sw    $zero, -0x6720($at)
/* 1FD0E0 801E5160 8C490000 */  lw    $t1, ($v0)
/* 1FD0E4 801E5164 3C01800F */  lui   $at, 0x800f
/* 1FD0E8 801E5168 00095080 */  sll   $t2, $t1, 2
/* 1FD0EC 801E516C 002A0821 */  addu  $at, $at, $t2
/* 1FD0F0 801E5170 0C02A806 */  jal   func_800AA018_ovl13
/* 1FD0F4 801E5174 AC389AA0 */   sw    $t8, -0x6560($at)
/* 1FD0F8 801E5178 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1FD0FC 801E517C 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1FD100 801E5180 3C01800E */  lui   $at, 0x800e
/* 1FD104 801E5184 3C04800F */  lui   $a0, 0x800f
/* 1FD108 801E5188 8C430000 */  lw    $v1, ($v0)
/* 1FD10C 801E518C 00031880 */  sll   $v1, $v1, 2
/* 1FD110 801E5190 00230821 */  addu  $at, $at, $v1
/* 1FD114 801E5194 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1FD118 801E5198 3C014080 */  li    $at, 0x40800000 # 4.000000
/* 1FD11C 801E519C 44813000 */  mtc1  $at, $f6
/* 1FD120 801E51A0 3C01800E */  lui   $at, 0x800e
/* 1FD124 801E51A4 00230821 */  addu  $at, $at, $v1
/* 1FD128 801E51A8 46062202 */  mul.s $f8, $f4, $f6
/* 1FD12C 801E51AC E42864D0 */  swc1  $f8, 0x64d0($at)
/* 1FD130 801E51B0 8C4B0000 */  lw    $t3, ($v0)
/* 1FD134 801E51B4 000B6880 */  sll   $t5, $t3, 2
/* 1FD138 801E51B8 008D2021 */  addu  $a0, $a0, $t5
/* 1FD13C 801E51BC 0C002DAF */  jal   func_8000B6BC
/* 1FD140 801E51C0 8C849AA0 */   lw    $a0, -0x6560($a0)
/* 1FD144 801E51C4 3C0C8005 */  lui   $t4, %hi(D_8004A7C4) # $t4, 0x8005
/* 1FD148 801E51C8 8D8CA7C4 */  lw    $t4, %lo(D_8004A7C4)($t4)
/* 1FD14C 801E51CC 3C01800E */  lui   $at, 0x800e
/* 1FD150 801E51D0 240EFFFF */  li    $t6, -1
/* 1FD154 801E51D4 8D8F0000 */  lw    $t7, ($t4)
/* 1FD158 801E51D8 8FA40018 */  lw    $a0, 0x18($sp)
/* 1FD15C 801E51DC 000FC880 */  sll   $t9, $t7, 2
/* 1FD160 801E51E0 00390821 */  addu  $at, $at, $t9
/* 1FD164 801E51E4 0C068FA0 */  jal   D_801A3E80_ovl13
/* 1FD168 801E51E8 AC2EDC50 */   sw    $t6, -0x23b0($at)
/* 1FD16C 801E51EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FD170 801E51F0 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FD174 801E51F4 03E00008 */  jr    $ra
/* 1FD178 801E51F8 00000000 */   nop   

/* 1FD17C 801E51FC 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FD180 801E5200 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FD184 801E5204 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FD188 801E5208 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FD18C 801E520C AFA40018 */  sw    $a0, 0x18($sp)
/* 1FD190 801E5210 8C6E0000 */  lw    $t6, ($v1)
/* 1FD194 801E5214 3C05800F */  lui   $a1, %hi(D_800E98E0) # $a1, 0x800f
/* 1FD198 801E5218 24A598E0 */  addiu $a1, %lo(D_800E98E0) # addiu $a1, $a1, -0x6720
/* 1FD19C 801E521C 000E7880 */  sll   $t7, $t6, 2
/* 1FD1A0 801E5220 00AF1021 */  addu  $v0, $a1, $t7
/* 1FD1A4 801E5224 8C580000 */  lw    $t8, ($v0)
/* 1FD1A8 801E5228 24010005 */  li    $at, 5
/* 1FD1AC 801E522C 3C0F800E */  lui   $t7, 0x800e
/* 1FD1B0 801E5230 27190001 */  addiu $t9, $t8, 1
/* 1FD1B4 801E5234 AC590000 */  sw    $t9, ($v0)
/* 1FD1B8 801E5238 8C690000 */  lw    $t1, ($v1)
/* 1FD1BC 801E523C 24040006 */  li    $a0, 6
/* 1FD1C0 801E5240 00095080 */  sll   $t2, $t1, 2
/* 1FD1C4 801E5244 00AA1021 */  addu  $v0, $a1, $t2
/* 1FD1C8 801E5248 8C4B0000 */  lw    $t3, ($v0)
/* 1FD1CC 801E524C 0161001A */  div   $zero, $t3, $at
/* 1FD1D0 801E5250 00006010 */  mfhi  $t4
/* 1FD1D4 801E5254 AC4C0000 */  sw    $t4, ($v0)
/* 1FD1D8 801E5258 8C680000 */  lw    $t0, ($v1)
/* 1FD1DC 801E525C 00084080 */  sll   $t0, $t0, 2
/* 1FD1E0 801E5260 00A86821 */  addu  $t5, $a1, $t0
/* 1FD1E4 801E5264 8DAE0000 */  lw    $t6, ($t5)
/* 1FD1E8 801E5268 24050002 */  li    $a1, 2
/* 1FD1EC 801E526C 01E87821 */  addu  $t7, $t7, $t0
/* 1FD1F0 801E5270 55C00006 */  bnezl $t6, .L801E528C_ovl13
/* 1FD1F4 801E5274 8FB80018 */   lw    $t8, 0x18($sp)
/* 1FD1F8 801E5278 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1FD1FC 801E527C 00003025 */  move  $a2, $zero
/* 1FD200 801E5280 0C02A040 */  jal   func_800A8100_ovl13
/* 1FD204 801E5284 8DE70004 */   lw    $a3, 4($t7)
/* 1FD208 801E5288 8FB80018 */  lw    $t8, 0x18($sp)
.L801E528C_ovl13:
/* 1FD20C 801E528C 8F190044 */  lw    $t9, 0x44($t8)
/* 1FD210 801E5290 33290001 */  andi  $t1, $t9, 1
/* 1FD214 801E5294 55200004 */  bnezl $t1, .L801E52A8_ovl13
/* 1FD218 801E5298 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1FD21C 801E529C 0C067CEC */  jal   func_8019F3B0_ovl13
/* 1FD220 801E52A0 00000000 */   nop   
/* 1FD224 801E52A4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E52A8_ovl13:
/* 1FD228 801E52A8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FD22C 801E52AC 03E00008 */  jr    $ra
/* 1FD230 801E52B0 00000000 */   nop   

/* 1FD234 801E52B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1FD238 801E52B8 AFB00018 */  sw    $s0, 0x18($sp)
/* 1FD23C 801E52BC 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FD240 801E52C0 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FD244 801E52C4 8E0E0000 */  lw    $t6, ($s0)
/* 1FD248 801E52C8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1FD24C 801E52CC AFB20020 */  sw    $s2, 0x20($sp)
/* 1FD250 801E52D0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1FD254 801E52D4 AFA40028 */  sw    $a0, 0x28($sp)
/* 1FD258 801E52D8 8DCF0000 */  lw    $t7, ($t6)
/* 1FD25C 801E52DC 3C02800E */  lui   $v0, 0x800e
/* 1FD260 801E52E0 3C01C448 */  li    $at, 0xC4480000 # -800.000000
/* 1FD264 801E52E4 000FC080 */  sll   $t8, $t7, 2
/* 1FD268 801E52E8 00581021 */  addu  $v0, $v0, $t8
/* 1FD26C 801E52EC 8C421B50 */  lw    $v0, 0x1b50($v0)
/* 1FD270 801E52F0 44812000 */  mtc1  $at, $f4
/* 1FD274 801E52F4 3C01800E */  lui   $at, 0x800e
/* 1FD278 801E52F8 8C590080 */  lw    $t9, 0x80($v0)
/* 1FD27C 801E52FC 3C08800B */  lui   $t0, %hi(D_800B6FD8) # $t0, 0x800b
/* 1FD280 801E5300 25086FD8 */  addiu $t0, %lo(D_800B6FD8) # addiu $t0, $t0, 0x6fd8
/* 1FD284 801E5304 E7240018 */  swc1  $f4, 0x18($t9)
/* 1FD288 801E5308 8E110000 */  lw    $s1, ($s0)
/* 1FD28C 801E530C 3C0B801E */  lui   $t3, %hi(D_801E55D0) # $t3, 0x801e
/* 1FD290 801E5310 256B55D0 */  addiu $t3, %lo(D_801E55D0) # addiu $t3, $t3, 0x55d0
/* 1FD294 801E5314 8E290000 */  lw    $t1, ($s1)
/* 1FD298 801E5318 3C04801E */  lui   $a0, %hi(D_801E53D8) # $a0, 0x801e
/* 1FD29C 801E531C 248453D8 */  addiu $a0, %lo(D_801E53D8) # addiu $a0, $a0, 0x53d8
/* 1FD2A0 801E5320 00095080 */  sll   $t2, $t1, 2
/* 1FD2A4 801E5324 002A0821 */  addu  $at, $at, $t2
/* 1FD2A8 801E5328 AC28EF90 */  sw    $t0, -0x1070($at)
/* 1FD2AC 801E532C 8E2C0000 */  lw    $t4, ($s1)
/* 1FD2B0 801E5330 3C01800E */  lui   $at, 0x800e
/* 1FD2B4 801E5334 000C6880 */  sll   $t5, $t4, 2
/* 1FD2B8 801E5338 002D0821 */  addu  $at, $at, $t5
/* 1FD2BC 801E533C 0C068354 */  jal   func_801A0D50_ovl13
/* 1FD2C0 801E5340 AC2BF150 */   sw    $t3, -0xeb0($at)
/* 1FD2C4 801E5344 8E110000 */  lw    $s1, ($s0)
/* 1FD2C8 801E5348 3C01800F */  lui   $at, 0x800f
/* 1FD2CC 801E534C 3C04800E */  lui   $a0, 0x800e
/* 1FD2D0 801E5350 8E2E0000 */  lw    $t6, ($s1)
/* 1FD2D4 801E5354 3C06801E */  lui   $a2, %hi(D_801E5C18) # $a2, 0x801e
/* 1FD2D8 801E5358 24C65C18 */  addiu $a2, %lo(D_801E5C18) # addiu $a2, $a2, 0x5c18
/* 1FD2DC 801E535C 000E7880 */  sll   $t7, $t6, 2
/* 1FD2E0 801E5360 002F0821 */  addu  $at, $at, $t7
/* 1FD2E4 801E5364 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FD2E8 801E5368 8E380000 */  lw    $t8, ($s1)
/* 1FD2EC 801E536C 24050001 */  li    $a1, 1
/* 1FD2F0 801E5370 00982021 */  addu  $a0, $a0, $t8
/* 1FD2F4 801E5374 0C02911F */  jal   func_800A447C_ovl13
/* 1FD2F8 801E5378 90847880 */   lbu   $a0, 0x7880($a0)
/* 1FD2FC 801E537C 3C12801E */  lui   $s2, %hi(D_801E5C1C) # $s2, 0x801e
/* 1FD300 801E5380 3C11800E */  lui   $s1, %hi(D_800DDC50) # $s1, 0x800e
/* 1FD304 801E5384 2631DC50 */  addiu $s1, %lo(D_800DDC50) # addiu $s1, $s1, -0x23b0
/* 1FD308 801E5388 26525C1C */  addiu $s2, %lo(D_801E5C1C) # addiu $s2, $s2, 0x5c1c
/* 1FD30C 801E538C 8E190000 */  lw    $t9, ($s0)
.L801E5390_ovl13:
/* 1FD310 801E5390 24050001 */  li    $a1, 1
/* 1FD314 801E5394 02403025 */  move  $a2, $s2
/* 1FD318 801E5398 8F290000 */  lw    $t1, ($t9)
/* 1FD31C 801E539C 00094080 */  sll   $t0, $t1, 2
/* 1FD320 801E53A0 02285021 */  addu  $t2, $s1, $t0
/* 1FD324 801E53A4 0C02911F */  jal   func_800A447C_ovl13
/* 1FD328 801E53A8 8D440000 */   lw    $a0, ($t2)
/* 1FD32C 801E53AC 1000FFF8 */  b     .L801E5390_ovl13
/* 1FD330 801E53B0 8E190000 */   lw    $t9, ($s0)
/* 1FD334 801E53B4 00000000 */  nop   
/* 1FD338 801E53B8 00000000 */  nop   
/* 1FD33C 801E53BC 00000000 */  nop   
/* 1FD340 801E53C0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1FD344 801E53C4 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FD348 801E53C8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1FD34C 801E53CC 8FB20020 */  lw    $s2, 0x20($sp)
/* 1FD350 801E53D0 03E00008 */  jr    $ra
/* 1FD354 801E53D4 27BD0028 */   addiu $sp, $sp, 0x28

/* 1FD358 801E53D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 1FD35C 801E53DC AFB20020 */  sw    $s2, 0x20($sp)
/* 1FD360 801E53E0 AFB1001C */  sw    $s1, 0x1c($sp)
/* 1FD364 801E53E4 AFB00018 */  sw    $s0, 0x18($sp)
/* 1FD368 801E53E8 3C10800E */  lui   $s0, %hi(D_800DDC50) # $s0, 0x800e
/* 1FD36C 801E53EC 3C118005 */  lui   $s1, %hi(D_8004A7C4) # $s1, 0x8005
/* 1FD370 801E53F0 3C12801E */  lui   $s2, %hi(D_801E5C1C) # $s2, 0x801e
/* 1FD374 801E53F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1FD378 801E53F8 AFA40028 */  sw    $a0, 0x28($sp)
/* 1FD37C 801E53FC 26525C1C */  addiu $s2, %lo(D_801E5C1C) # addiu $s2, $s2, 0x5c1c
/* 1FD380 801E5400 2631A7C4 */  addiu $s1, %lo(D_8004A7C4) # addiu $s1, $s1, -0x583c
/* 1FD384 801E5404 2610DC50 */  addiu $s0, %lo(D_800DDC50) # addiu $s0, $s0, -0x23b0
/* 1FD388 801E5408 8E2E0000 */  lw    $t6, ($s1)
.L801E540C_ovl13:
/* 1FD38C 801E540C 24050001 */  li    $a1, 1
/* 1FD390 801E5410 02403025 */  move  $a2, $s2
/* 1FD394 801E5414 8DCF0000 */  lw    $t7, ($t6)
/* 1FD398 801E5418 000FC080 */  sll   $t8, $t7, 2
/* 1FD39C 801E541C 0218C821 */  addu  $t9, $s0, $t8
/* 1FD3A0 801E5420 0C02911F */  jal   func_800A447C_ovl13
/* 1FD3A4 801E5424 8F240000 */   lw    $a0, ($t9)
/* 1FD3A8 801E5428 1000FFF8 */  b     .L801E540C_ovl13
/* 1FD3AC 801E542C 8E2E0000 */   lw    $t6, ($s1)
/* 1FD3B0 801E5430 00000000 */  nop   
/* 1FD3B4 801E5434 00000000 */  nop   
/* 1FD3B8 801E5438 00000000 */  nop   
/* 1FD3BC 801E543C 00000000 */  nop   
/* 1FD3C0 801E5440 8FBF0024 */  lw    $ra, 0x24($sp)
/* 1FD3C4 801E5444 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FD3C8 801E5448 8FB1001C */  lw    $s1, 0x1c($sp)
/* 1FD3CC 801E544C 8FB20020 */  lw    $s2, 0x20($sp)
/* 1FD3D0 801E5450 03E00008 */  jr    $ra
/* 1FD3D4 801E5454 27BD0028 */   addiu $sp, $sp, 0x28

/* 1FD3D8 801E5458 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 1FD3DC 801E545C AFB00018 */  sw    $s0, 0x18($sp)
/* 1FD3E0 801E5460 3C108005 */  lui   $s0, %hi(D_8004A7C4) # $s0, 0x8005
/* 1FD3E4 801E5464 2610A7C4 */  addiu $s0, %lo(D_8004A7C4) # addiu $s0, $s0, -0x583c
/* 1FD3E8 801E5468 8E0E0000 */  lw    $t6, ($s0)
/* 1FD3EC 801E546C AFBF001C */  sw    $ra, 0x1c($sp)
/* 1FD3F0 801E5470 AFA40020 */  sw    $a0, 0x20($sp)
/* 1FD3F4 801E5474 24040070 */  li    $a0, 112
/* 1FD3F8 801E5478 0C02C67D */  jal   func_800B19F4
/* 1FD3FC 801E547C 8DC50000 */   lw    $a1, ($t6)
/* 1FD400 801E5480 00002025 */  move  $a0, $zero
/* 1FD404 801E5484 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1FD408 801E5488 8E050000 */   lw    $a1, ($s0)
/* 1FD40C 801E548C 0C002DAF */  jal   func_8000B6BC
/* 1FD410 801E5490 24040004 */   li    $a0, 4
/* 1FD414 801E5494 8E0F0000 */  lw    $t7, ($s0)
/* 1FD418 801E5498 24040030 */  li    $a0, 48
/* 1FD41C 801E549C 0C02C67D */  jal   func_800B19F4
/* 1FD420 801E54A0 8DE50000 */   lw    $a1, ($t7)
/* 1FD424 801E54A4 24040001 */  li    $a0, 1
/* 1FD428 801E54A8 0C02BEED */  jal   func_800AFBB4_ovl13
/* 1FD42C 801E54AC 8E050000 */   lw    $a1, ($s0)
/* 1FD430 801E54B0 8E030000 */  lw    $v1, ($s0)
/* 1FD434 801E54B4 3C07800E */  lui   $a3, %hi(D_800E0D50) # $a3, 0x800e
/* 1FD438 801E54B8 24E70D50 */  addiu $a3, %lo(D_800E0D50) # addiu $a3, $a3, 0xd50
/* 1FD43C 801E54BC 8C620000 */  lw    $v0, ($v1)
/* 1FD440 801E54C0 3C08800E */  lui   $t0, %hi(D_800E6A10) # $t0, 0x800e
/* 1FD444 801E54C4 25086A10 */  addiu $t0, %lo(D_800E6A10) # addiu $t0, $t0, 0x6a10
/* 1FD448 801E54C8 00021080 */  sll   $v0, $v0, 2
/* 1FD44C 801E54CC 00E2C021 */  addu  $t8, $a3, $v0
/* 1FD450 801E54D0 8F190000 */  lw    $t9, ($t8)
/* 1FD454 801E54D4 01027021 */  addu  $t6, $t0, $v0
/* 1FD458 801E54D8 3C09800E */  lui   $t1, %hi(D_800E5F90) # $t1, 0x800e
/* 1FD45C 801E54DC 00196080 */  sll   $t4, $t9, 2
/* 1FD460 801E54E0 010C6821 */  addu  $t5, $t0, $t4
/* 1FD464 801E54E4 C5A40000 */  lwc1  $f4, ($t5)
/* 1FD468 801E54E8 25295F90 */  addiu $t1, %lo(D_800E5F90) # addiu $t1, $t1, 0x5f90
/* 1FD46C 801E54EC 3C0A800E */  lui   $t2, %hi(D_800E6BD0) # $t2, 0x800e
/* 1FD470 801E54F0 E5C40000 */  swc1  $f4, ($t6)
/* 1FD474 801E54F4 8C620000 */  lw    $v0, ($v1)
/* 1FD478 801E54F8 254A6BD0 */  addiu $t2, %lo(D_800E6BD0) # addiu $t2, $t2, 0x6bd0
/* 1FD47C 801E54FC 3C0B800E */  lui   $t3, %hi(D_800E2790) # $t3, 0x800e
/* 1FD480 801E5500 00021080 */  sll   $v0, $v0, 2
/* 1FD484 801E5504 00E27821 */  addu  $t7, $a3, $v0
/* 1FD488 801E5508 8DF80000 */  lw    $t8, ($t7)
/* 1FD48C 801E550C 01227021 */  addu  $t6, $t1, $v0
/* 1FD490 801E5510 256B2790 */  addiu $t3, %lo(D_800E2790) # addiu $t3, $t3, 0x2790
/* 1FD494 801E5514 0018C880 */  sll   $t9, $t8, 2
/* 1FD498 801E5518 01396021 */  addu  $t4, $t1, $t9
/* 1FD49C 801E551C 8D8D0000 */  lw    $t5, ($t4)
/* 1FD4A0 801E5520 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 1FD4A4 801E5524 44815000 */  mtc1  $at, $f10
/* 1FD4A8 801E5528 ADCD0000 */  sw    $t5, ($t6)
/* 1FD4AC 801E552C 8C620000 */  lw    $v0, ($v1)
/* 1FD4B0 801E5530 3C014220 */  li    $at, 0x42200000 # 40.000000
/* 1FD4B4 801E5534 44812000 */  mtc1  $at, $f4
/* 1FD4B8 801E5538 00021080 */  sll   $v0, $v0, 2
/* 1FD4BC 801E553C 00E27821 */  addu  $t7, $a3, $v0
/* 1FD4C0 801E5540 8DF80000 */  lw    $t8, ($t7)
/* 1FD4C4 801E5544 01426821 */  addu  $t5, $t2, $v0
/* 1FD4C8 801E5548 0018C880 */  sll   $t9, $t8, 2
/* 1FD4CC 801E554C 01596021 */  addu  $t4, $t2, $t9
/* 1FD4D0 801E5550 C5860000 */  lwc1  $f6, ($t4)
/* 1FD4D4 801E5554 E5A60000 */  swc1  $f6, ($t5)
/* 1FD4D8 801E5558 8C620000 */  lw    $v0, ($v1)
/* 1FD4DC 801E555C 00021080 */  sll   $v0, $v0, 2
/* 1FD4E0 801E5560 00E27021 */  addu  $t6, $a3, $v0
/* 1FD4E4 801E5564 8DCF0000 */  lw    $t7, ($t6)
/* 1FD4E8 801E5568 01626021 */  addu  $t4, $t3, $v0
/* 1FD4EC 801E556C 000FC080 */  sll   $t8, $t7, 2
/* 1FD4F0 801E5570 0178C821 */  addu  $t9, $t3, $t8
/* 1FD4F4 801E5574 C7280000 */  lwc1  $f8, ($t9)
/* 1FD4F8 801E5578 460A4401 */  sub.s $f16, $f8, $f10
/* 1FD4FC 801E557C E5900000 */  swc1  $f16, ($t4)
/* 1FD500 801E5580 8C620000 */  lw    $v0, ($v1)
/* 1FD504 801E5584 00021080 */  sll   $v0, $v0, 2
/* 1FD508 801E5588 01026821 */  addu  $t5, $t0, $v0
/* 1FD50C 801E558C C5B20000 */  lwc1  $f18, ($t5)
/* 1FD510 801E5590 01222021 */  addu  $a0, $t1, $v0
/* 1FD514 801E5594 01422821 */  addu  $a1, $t2, $v0
/* 1FD518 801E5598 46049182 */  mul.s $f6, $f18, $f4
/* 1FD51C 801E559C 44063000 */  mfc1  $a2, $f6
/* 1FD520 801E55A0 0C03E65D */  jal   func_800F9974_ovl13
/* 1FD524 801E55A4 00000000 */   nop   
/* 1FD528 801E55A8 8E0E0000 */  lw    $t6, ($s0)
/* 1FD52C 801E55AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1FD530 801E55B0 3C01800E */  lui   $at, 0x800e
/* 1FD534 801E55B4 8DCF0000 */  lw    $t7, ($t6)
/* 1FD538 801E55B8 8FB00018 */  lw    $s0, 0x18($sp)
/* 1FD53C 801E55BC 27BD0020 */  addiu $sp, $sp, 0x20
/* 1FD540 801E55C0 000FC080 */  sll   $t8, $t7, 2
/* 1FD544 801E55C4 00380821 */  addu  $at, $at, $t8
/* 1FD548 801E55C8 03E00008 */  jr    $ra
/* 1FD54C 801E55CC AC20DC50 */   sw    $zero, -0x23b0($at)

/* 1FD550 801E55D0 3C0E8005 */  lui   $t6, %hi(D_8004A7C4) # $t6, 0x8005
/* 1FD554 801E55D4 8DCEA7C4 */  lw    $t6, %lo(D_8004A7C4)($t6)
/* 1FD558 801E55D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FD55C 801E55DC AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FD560 801E55E0 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FD564 801E55E4 8DCF0000 */  lw    $t7, ($t6)
/* 1FD568 801E55E8 3C04800E */  lui   $a0, 0x800e
/* 1FD56C 801E55EC 3C06801E */  lui   $a2, %hi(D_801E5C20) # $a2, 0x801e
/* 1FD570 801E55F0 000FC080 */  sll   $t8, $t7, 2
/* 1FD574 801E55F4 00982021 */  addu  $a0, $a0, $t8
/* 1FD578 801E55F8 8C84DFD0 */  lw    $a0, -0x2030($a0)
/* 1FD57C 801E55FC 24C65C20 */  addiu $a2, %lo(D_801E5C20) # addiu $a2, $a2, 0x5c20
/* 1FD580 801E5600 0C02911F */  jal   func_800A447C_ovl13
/* 1FD584 801E5604 24050001 */   li    $a1, 1
/* 1FD588 801E5608 8FBF0014 */  lw    $ra, 0x14($sp)
/* 1FD58C 801E560C 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FD590 801E5610 03E00008 */  jr    $ra
/* 1FD594 801E5614 00000000 */   nop   

/* 1FD598 801E5618 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 1FD59C 801E561C AFB30038 */  sw    $s3, 0x38($sp)
/* 1FD5A0 801E5620 3C138005 */  lui   $s3, %hi(D_8004A7C4) # $s3, 0x8005
/* 1FD5A4 801E5624 2673A7C4 */  addiu $s3, %lo(D_8004A7C4) # addiu $s3, $s3, -0x583c
/* 1FD5A8 801E5628 8E620000 */  lw    $v0, ($s3)
/* 1FD5AC 801E562C AFBF003C */  sw    $ra, 0x3c($sp)
/* 1FD5B0 801E5630 AFB20034 */  sw    $s2, 0x34($sp)
/* 1FD5B4 801E5634 AFB10030 */  sw    $s1, 0x30($sp)
/* 1FD5B8 801E5638 AFB0002C */  sw    $s0, 0x2c($sp)
/* 1FD5BC 801E563C F7B80020 */  sdc1  $f24, 0x20($sp)
/* 1FD5C0 801E5640 F7B60018 */  sdc1  $f22, 0x18($sp)
/* 1FD5C4 801E5644 F7B40010 */  sdc1  $f20, 0x10($sp)
/* 1FD5C8 801E5648 AFA40040 */  sw    $a0, 0x40($sp)
/* 1FD5CC 801E564C 8C4E0000 */  lw    $t6, ($v0)
/* 1FD5D0 801E5650 3C01800E */  lui   $at, 0x800e
/* 1FD5D4 801E5654 3C10800E */  lui   $s0, %hi(D_800E1B50) # $s0, 0x800e
/* 1FD5D8 801E5658 000E7880 */  sll   $t7, $t6, 2
/* 1FD5DC 801E565C 002F0821 */  addu  $at, $at, $t7
/* 1FD5E0 801E5660 AC20DFD0 */  sw    $zero, -0x2030($at)
/* 1FD5E4 801E5664 8C590000 */  lw    $t9, ($v0)
/* 1FD5E8 801E5668 26101B50 */  addiu $s0, %lo(D_800E1B50) # addiu $s0, $s0, 0x1b50
/* 1FD5EC 801E566C 3C18801E */  lui   $t8, %hi(D_801DAD68) # $t8, 0x801e
/* 1FD5F0 801E5670 00194080 */  sll   $t0, $t9, 2
/* 1FD5F4 801E5674 02084821 */  addu  $t1, $s0, $t0
/* 1FD5F8 801E5678 8D2A0000 */  lw    $t2, ($t1)
/* 1FD5FC 801E567C 3C11800D */  lui   $s1, %hi(D_800D6B10) # $s1, 0x800d
/* 1FD600 801E5680 2718AD68 */  addiu $t8, %lo(D_801DAD68) # addiu $t8, $t8, -0x5298
/* 1FD604 801E5684 26316B10 */  addiu $s1, %lo(D_800D6B10) # addiu $s1, $s1, 0x6b10
/* 1FD608 801E5688 AD580098 */  sw    $t8, 0x98($t2)
/* 1FD60C 801E568C 0C02BB30 */  jal   func_800AECC0_ovl13
/* 1FD610 801E5690 C62C0000 */   lwc1  $f12, ($s1)
/* 1FD614 801E5694 0C02BB48 */  jal   func_800AED20_ovl13
/* 1FD618 801E5698 C62C0000 */   lwc1  $f12, ($s1)
/* 1FD61C 801E569C 0C02CCFD */  jal   func_800B33F4_ovl13
/* 1FD620 801E56A0 00000000 */   nop   
/* 1FD624 801E56A4 8E620000 */  lw    $v0, ($s3)
/* 1FD628 801E56A8 3C01800F */  lui   $at, 0x800f
/* 1FD62C 801E56AC 240DFFFF */  li    $t5, -1
/* 1FD630 801E56B0 8C4B0000 */  lw    $t3, ($v0)
/* 1FD634 801E56B4 240A01E0 */  li    $t2, 480
/* 1FD638 801E56B8 3C040001 */  lui   $a0, (0x0001001F >> 16) # lui $a0, 1
/* 1FD63C 801E56BC 000B6080 */  sll   $t4, $t3, 2
/* 1FD640 801E56C0 002C0821 */  addu  $at, $at, $t4
/* 1FD644 801E56C4 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FD648 801E56C8 8C4E0000 */  lw    $t6, ($v0)
/* 1FD64C 801E56CC 3C01800F */  lui   $at, 0x800f
/* 1FD650 801E56D0 3484001F */  ori   $a0, (0x0001001F & 0xFFFF) # ori $a0, $a0, 0x1f
/* 1FD654 801E56D4 000E7880 */  sll   $t7, $t6, 2
/* 1FD658 801E56D8 020FC821 */  addu  $t9, $s0, $t7
/* 1FD65C 801E56DC 8F280000 */  lw    $t0, ($t9)
/* 1FD660 801E56E0 A10D0039 */  sb    $t5, 0x39($t0)
/* 1FD664 801E56E4 8E620000 */  lw    $v0, ($s3)
/* 1FD668 801E56E8 8C490000 */  lw    $t1, ($v0)
/* 1FD66C 801E56EC 0009C080 */  sll   $t8, $t1, 2
/* 1FD670 801E56F0 00380821 */  addu  $at, $at, $t8
/* 1FD674 801E56F4 AC2098E0 */  sw    $zero, -0x6720($at)
/* 1FD678 801E56F8 8C4B0000 */  lw    $t3, ($v0)
/* 1FD67C 801E56FC 3C01800F */  lui   $at, 0x800f
/* 1FD680 801E5700 000B6080 */  sll   $t4, $t3, 2
/* 1FD684 801E5704 002C0821 */  addu  $at, $at, $t4
/* 1FD688 801E5708 0C02A806 */  jal   func_800AA018_ovl13
/* 1FD68C 801E570C AC2A9AA0 */   sw    $t2, -0x6560($at)
/* 1FD690 801E5710 8E620000 */  lw    $v0, ($s3)
/* 1FD694 801E5714 3C01801E */  lui   $at, %hi(D_801E5E30) # $at, 0x801e
/* 1FD698 801E5718 C4345E30 */  lwc1  $f20, %lo(D_801E5E30)($at)
/* 1FD69C 801E571C 8C430000 */  lw    $v1, ($v0)
/* 1FD6A0 801E5720 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 1FD6A4 801E5724 4481C000 */  mtc1  $at, $f24
/* 1FD6A8 801E5728 3C01800E */  lui   $at, 0x800e
/* 1FD6AC 801E572C 00031880 */  sll   $v1, $v1, 2
/* 1FD6B0 801E5730 00230821 */  addu  $at, $at, $v1
/* 1FD6B4 801E5734 C4246A10 */  lwc1  $f4, 0x6a10($at)
/* 1FD6B8 801E5738 3C014020 */  li    $at, 0x40200000 # 2.500000
/* 1FD6BC 801E573C 44813000 */  mtc1  $at, $f6
/* 1FD6C0 801E5740 4618A03C */  c.lt.s $f20, $f24
/* 1FD6C4 801E5744 3C01800E */  lui   $at, 0x800e
/* 1FD6C8 801E5748 46062202 */  mul.s $f8, $f4, $f6
/* 1FD6CC 801E574C 00230821 */  addu  $at, $at, $v1
/* 1FD6D0 801E5750 3C12800E */  lui   $s2, %hi(D_800E4710) # $s2, 0x800e
/* 1FD6D4 801E5754 3C11800E */  lui   $s1, %hi(D_800E4550) # $s1, 0x800e
/* 1FD6D8 801E5758 26314550 */  addiu $s1, %lo(D_800E4550) # addiu $s1, $s1, 0x4550
/* 1FD6DC 801E575C 26524710 */  addiu $s2, %lo(D_800E4710) # addiu $s2, $s2, 0x4710
/* 1FD6E0 801E5760 4500001C */  bc1f  .L801E57D4_ovl13
/* 1FD6E4 801E5764 E42864D0 */   swc1  $f8, 0x64d0($at)
/* 1FD6E8 801E5768 3C01801E */  lui   $at, %hi(D_801E5E34) # $at, 0x801e
/* 1FD6EC 801E576C 3C10800E */  lui   $s0, %hi(D_800E48D0) # $s0, 0x800e
/* 1FD6F0 801E5770 261048D0 */  addiu $s0, %lo(D_800E48D0) # addiu $s0, $s0, 0x48d0
/* 1FD6F4 801E5774 C4365E34 */  lwc1  $f22, %lo(D_801E5E34)($at)
/* 1FD6F8 801E5778 8E620000 */  lw    $v0, ($s3)
.L801E577C_ovl13:
/* 1FD6FC 801E577C 24040001 */  li    $a0, 1
/* 1FD700 801E5780 8C4E0000 */  lw    $t6, ($v0)
/* 1FD704 801E5784 000E7880 */  sll   $t7, $t6, 2
/* 1FD708 801E5788 020FC821 */  addu  $t9, $s0, $t7
/* 1FD70C 801E578C E7340000 */  swc1  $f20, ($t9)
/* 1FD710 801E5790 8C430000 */  lw    $v1, ($v0)
/* 1FD714 801E5794 00031880 */  sll   $v1, $v1, 2
/* 1FD718 801E5798 02036821 */  addu  $t5, $s0, $v1
/* 1FD71C 801E579C C5A00000 */  lwc1  $f0, ($t5)
/* 1FD720 801E57A0 02434021 */  addu  $t0, $s2, $v1
/* 1FD724 801E57A4 E5000000 */  swc1  $f0, ($t0)
/* 1FD728 801E57A8 8C490000 */  lw    $t1, ($v0)
/* 1FD72C 801E57AC 0009C080 */  sll   $t8, $t1, 2
/* 1FD730 801E57B0 02385821 */  addu  $t3, $s1, $t8
/* 1FD734 801E57B4 0C002DAF */  jal   func_8000B6BC
/* 1FD738 801E57B8 E5600000 */   swc1  $f0, ($t3)
/* 1FD73C 801E57BC 4616A500 */  add.s $f20, $f20, $f22
/* 1FD740 801E57C0 4618A03C */  c.lt.s $f20, $f24
/* 1FD744 801E57C4 00000000 */  nop   
/* 1FD748 801E57C8 4503FFEC */  bc1tl .L801E577C_ovl13
/* 1FD74C 801E57CC 8E620000 */   lw    $v0, ($s3)
/* 1FD750 801E57D0 8E620000 */  lw    $v0, ($s3)
.L801E57D4_ovl13:
/* 1FD754 801E57D4 8C4A0000 */  lw    $t2, ($v0)
/* 1FD758 801E57D8 3C11800E */  lui   $s1, %hi(D_800E4550) # $s1, 0x800e
/* 1FD75C 801E57DC 26314550 */  addiu $s1, %lo(D_800E4550) # addiu $s1, $s1, 0x4550
/* 1FD760 801E57E0 000A6080 */  sll   $t4, $t2, 2
/* 1FD764 801E57E4 022C7021 */  addu  $t6, $s1, $t4
/* 1FD768 801E57E8 E5D80000 */  swc1  $f24, ($t6)
/* 1FD76C 801E57EC 8C4F0000 */  lw    $t7, ($v0)
/* 1FD770 801E57F0 44805000 */  mtc1  $zero, $f10
/* 1FD774 801E57F4 3C01800E */  lui   $at, 0x800e
/* 1FD778 801E57F8 000FC880 */  sll   $t9, $t7, 2
/* 1FD77C 801E57FC 02391821 */  addu  $v1, $s1, $t9
/* 1FD780 801E5800 C4600000 */  lwc1  $f0, ($v1)
/* 1FD784 801E5804 3C04800F */  lui   $a0, 0x800f
/* 1FD788 801E5808 E4600000 */  swc1  $f0, ($v1)
/* 1FD78C 801E580C 8C4D0000 */  lw    $t5, ($v0)
/* 1FD790 801E5810 000D4080 */  sll   $t0, $t5, 2
/* 1FD794 801E5814 02284821 */  addu  $t1, $s1, $t0
/* 1FD798 801E5818 E5200000 */  swc1  $f0, ($t1)
/* 1FD79C 801E581C 8C580000 */  lw    $t8, ($v0)
/* 1FD7A0 801E5820 00185880 */  sll   $t3, $t8, 2
/* 1FD7A4 801E5824 002B0821 */  addu  $at, $at, $t3
/* 1FD7A8 801E5828 E42A3210 */  swc1  $f10, 0x3210($at)
/* 1FD7AC 801E582C 8C4A0000 */  lw    $t2, ($v0)
/* 1FD7B0 801E5830 3C01801E */  lui   $at, %hi(D_801E5E38) # $at, 0x801e
/* 1FD7B4 801E5834 C4305E38 */  lwc1  $f16, %lo(D_801E5E38)($at)
/* 1FD7B8 801E5838 3C01800E */  lui   $at, 0x800e
/* 1FD7BC 801E583C 000A6080 */  sll   $t4, $t2, 2
/* 1FD7C0 801E5840 002C0821 */  addu  $at, $at, $t4
/* 1FD7C4 801E5844 E4303750 */  swc1  $f16, 0x3750($at)
/* 1FD7C8 801E5848 8C4E0000 */  lw    $t6, ($v0)
/* 1FD7CC 801E584C 3C0140B0 */  li    $at, 0x40B00000 # 5.500000
/* 1FD7D0 801E5850 44819000 */  mtc1  $at, $f18
/* 1FD7D4 801E5854 3C01800E */  lui   $at, 0x800e
/* 1FD7D8 801E5858 000E7880 */  sll   $t7, $t6, 2
/* 1FD7DC 801E585C 002F0821 */  addu  $at, $at, $t7
/* 1FD7E0 801E5860 E4323C90 */  swc1  $f18, 0x3c90($at)
/* 1FD7E4 801E5864 8C590000 */  lw    $t9, ($v0)
/* 1FD7E8 801E5868 00196880 */  sll   $t5, $t9, 2
/* 1FD7EC 801E586C 008D2021 */  addu  $a0, $a0, $t5
/* 1FD7F0 801E5870 0C002DAF */  jal   func_8000B6BC
/* 1FD7F4 801E5874 8C849AA0 */   lw    $a0, -0x6560($a0)
/* 1FD7F8 801E5878 8E690000 */  lw    $t1, ($s3)
/* 1FD7FC 801E587C 3C01800E */  lui   $at, 0x800e
/* 1FD800 801E5880 2408FFFF */  li    $t0, -1
/* 1FD804 801E5884 8D380000 */  lw    $t8, ($t1)
/* 1FD808 801E5888 8FA40040 */  lw    $a0, 0x40($sp)
/* 1FD80C 801E588C 00185880 */  sll   $t3, $t8, 2
/* 1FD810 801E5890 002B0821 */  addu  $at, $at, $t3
/* 1FD814 801E5894 0C068FA0 */  jal   D_801A3E80_ovl13
/* 1FD818 801E5898 AC28DC50 */   sw    $t0, -0x23b0($at)
/* 1FD81C 801E589C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 1FD820 801E58A0 D7B40010 */  ldc1  $f20, 0x10($sp)
/* 1FD824 801E58A4 D7B60018 */  ldc1  $f22, 0x18($sp)
/* 1FD828 801E58A8 D7B80020 */  ldc1  $f24, 0x20($sp)
/* 1FD82C 801E58AC 8FB0002C */  lw    $s0, 0x2c($sp)
/* 1FD830 801E58B0 8FB10030 */  lw    $s1, 0x30($sp)
/* 1FD834 801E58B4 8FB20034 */  lw    $s2, 0x34($sp)
/* 1FD838 801E58B8 8FB30038 */  lw    $s3, 0x38($sp)
/* 1FD83C 801E58BC 03E00008 */  jr    $ra
/* 1FD840 801E58C0 27BD0040 */   addiu $sp, $sp, 0x40

/* 1FD844 801E58C4 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FD848 801E58C8 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FD84C 801E58CC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 1FD850 801E58D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 1FD854 801E58D4 AFA40018 */  sw    $a0, 0x18($sp)
/* 1FD858 801E58D8 8C6E0000 */  lw    $t6, ($v1)
/* 1FD85C 801E58DC 3C05800F */  lui   $a1, %hi(D_800E98E0) # $a1, 0x800f
/* 1FD860 801E58E0 24A598E0 */  addiu $a1, %lo(D_800E98E0) # addiu $a1, $a1, -0x6720
/* 1FD864 801E58E4 000E7880 */  sll   $t7, $t6, 2
/* 1FD868 801E58E8 00AF1021 */  addu  $v0, $a1, $t7
/* 1FD86C 801E58EC 8C580000 */  lw    $t8, ($v0)
/* 1FD870 801E58F0 24010005 */  li    $at, 5
/* 1FD874 801E58F4 3C0F800E */  lui   $t7, 0x800e
/* 1FD878 801E58F8 27190001 */  addiu $t9, $t8, 1
/* 1FD87C 801E58FC AC590000 */  sw    $t9, ($v0)
/* 1FD880 801E5900 8C690000 */  lw    $t1, ($v1)
/* 1FD884 801E5904 24040006 */  li    $a0, 6
/* 1FD888 801E5908 00095080 */  sll   $t2, $t1, 2
/* 1FD88C 801E590C 00AA1021 */  addu  $v0, $a1, $t2
/* 1FD890 801E5910 8C4B0000 */  lw    $t3, ($v0)
/* 1FD894 801E5914 0161001A */  div   $zero, $t3, $at
/* 1FD898 801E5918 00006010 */  mfhi  $t4
/* 1FD89C 801E591C AC4C0000 */  sw    $t4, ($v0)
/* 1FD8A0 801E5920 8C680000 */  lw    $t0, ($v1)
/* 1FD8A4 801E5924 00084080 */  sll   $t0, $t0, 2
/* 1FD8A8 801E5928 00A86821 */  addu  $t5, $a1, $t0
/* 1FD8AC 801E592C 8DAE0000 */  lw    $t6, ($t5)
/* 1FD8B0 801E5930 24050002 */  li    $a1, 2
/* 1FD8B4 801E5934 01E87821 */  addu  $t7, $t7, $t0
/* 1FD8B8 801E5938 15C00009 */  bnez  $t6, .L801E5960_ovl13
/* 1FD8BC 801E593C 00000000 */   nop   
/* 1FD8C0 801E5940 8DEFFBD0 */  lw    $t7, -0x430($t7)
/* 1FD8C4 801E5944 00003025 */  move  $a2, $zero
/* 1FD8C8 801E5948 0C02A040 */  jal   func_800A8100_ovl13
/* 1FD8CC 801E594C 8DE70000 */   lw    $a3, ($t7)
/* 1FD8D0 801E5950 3C038005 */  lui   $v1, %hi(D_8004A7C4) # $v1, 0x8005
/* 1FD8D4 801E5954 8C63A7C4 */  lw    $v1, %lo(D_8004A7C4)($v1)
/* 1FD8D8 801E5958 8C680000 */  lw    $t0, ($v1)
/* 1FD8DC 801E595C 00084080 */  sll   $t0, $t0, 2
.L801E5960_ovl13:
/* 1FD8E0 801E5960 3C18800E */  lui   $t8, %hi(D_800E2790) # $t8, 0x800e
/* 1FD8E4 801E5964 27182790 */  addiu $t8, %lo(D_800E2790) # addiu $t8, $t8, 0x2790
/* 1FD8E8 801E5968 3C014190 */  li    $at, 0x41900000 # 18.000000
/* 1FD8EC 801E596C 01181021 */  addu  $v0, $t0, $t8
/* 1FD8F0 801E5970 44811000 */  mtc1  $at, $f2
/* 1FD8F4 801E5974 C4440000 */  lwc1  $f4, ($v0)
/* 1FD8F8 801E5978 3C0140B0 */  li    $at, 0x40B00000 # 5.500000
/* 1FD8FC 801E597C 4602203C */  c.lt.s $f4, $f2
/* 1FD900 801E5980 00000000 */  nop   
/* 1FD904 801E5984 45020015 */  bc1fl .L801E59DC_ovl13
/* 1FD908 801E5988 8FAE0018 */   lw    $t6, 0x18($sp)
/* 1FD90C 801E598C E4420000 */  swc1  $f2, ($v0)
/* 1FD910 801E5990 8C790000 */  lw    $t9, ($v1)
/* 1FD914 801E5994 44810000 */  mtc1  $at, $f0
/* 1FD918 801E5998 3C01800E */  lui   $at, 0x800e
/* 1FD91C 801E599C 00194880 */  sll   $t1, $t9, 2
/* 1FD920 801E59A0 00290821 */  addu  $at, $at, $t1
/* 1FD924 801E59A4 E4203210 */  swc1  $f0, 0x3210($at)
/* 1FD928 801E59A8 8C6A0000 */  lw    $t2, ($v1)
/* 1FD92C 801E59AC 3C01801E */  lui   $at, %hi(D_801E5E3C) # $at, 0x801e
/* 1FD930 801E59B0 C4265E3C */  lwc1  $f6, %lo(D_801E5E3C)($at)
/* 1FD934 801E59B4 3C01800E */  lui   $at, 0x800e
/* 1FD938 801E59B8 000A5880 */  sll   $t3, $t2, 2
/* 1FD93C 801E59BC 002B0821 */  addu  $at, $at, $t3
/* 1FD940 801E59C0 E4263750 */  swc1  $f6, 0x3750($at)
/* 1FD944 801E59C4 8C6C0000 */  lw    $t4, ($v1)
/* 1FD948 801E59C8 3C01800E */  lui   $at, 0x800e
/* 1FD94C 801E59CC 000C6880 */  sll   $t5, $t4, 2
/* 1FD950 801E59D0 002D0821 */  addu  $at, $at, $t5
/* 1FD954 801E59D4 E4203C90 */  swc1  $f0, 0x3c90($at)
/* 1FD958 801E59D8 8FAE0018 */  lw    $t6, 0x18($sp)
.L801E59DC_ovl13:
/* 1FD95C 801E59DC 8DCF0044 */  lw    $t7, 0x44($t6)
/* 1FD960 801E59E0 31F80001 */  andi  $t8, $t7, 1
/* 1FD964 801E59E4 57000004 */  bnezl $t8, .L801E59F8_ovl13
/* 1FD968 801E59E8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 1FD96C 801E59EC 0C067CEC */  jal   func_8019F3B0_ovl13
/* 1FD970 801E59F0 00000000 */   nop   
/* 1FD974 801E59F4 8FBF0014 */  lw    $ra, 0x14($sp)
.L801E59F8_ovl13:
/* 1FD978 801E59F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 1FD97C 801E59FC 03E00008 */  jr    $ra
/* 1FD980 801E5A00 00000000 */   nop   

/* 1FD984 801E5A04 3C028005 */  lui   $v0, %hi(D_8004A7C4) # $v0, 0x8005
/* 1FD988 801E5A08 8C42A7C4 */  lw    $v0, %lo(D_8004A7C4)($v0)
/* 1FD98C 801E5A0C AFA40000 */  sw    $a0, ($sp)
/* 1FD990 801E5A10 3C0140B0 */  li    $at, 0x40B00000 # 5.500000
/* 1FD994 801E5A14 8C4E0000 */  lw    $t6, ($v0)
/* 1FD998 801E5A18 44810000 */  mtc1  $at, $f0
/* 1FD99C 801E5A1C 3C01800F */  lui   $at, 0x800f
/* 1FD9A0 801E5A20 000E7880 */  sll   $t7, $t6, 2
/* 1FD9A4 801E5A24 002F0821 */  addu  $at, $at, $t7
/* 1FD9A8 801E5A28 AC208920 */  sw    $zero, -0x76e0($at)
/* 1FD9AC 801E5A2C 8C580000 */  lw    $t8, ($v0)
/* 1FD9B0 801E5A30 3C01800E */  lui   $at, 0x800e
/* 1FD9B4 801E5A34 0018C880 */  sll   $t9, $t8, 2
/* 1FD9B8 801E5A38 00390821 */  addu  $at, $at, $t9
/* 1FD9BC 801E5A3C E4203210 */  swc1  $f0, 0x3210($at)
/* 1FD9C0 801E5A40 8C480000 */  lw    $t0, ($v0)
/* 1FD9C4 801E5A44 3C01801E */  lui   $at, %hi(D_801E5E40) # $at, 0x801e
/* 1FD9C8 801E5A48 C4245E40 */  lwc1  $f4, %lo(D_801E5E40)($at)
/* 1FD9CC 801E5A4C 3C01800E */  lui   $at, 0x800e
/* 1FD9D0 801E5A50 00084880 */  sll   $t1, $t0, 2
/* 1FD9D4 801E5A54 00290821 */  addu  $at, $at, $t1
/* 1FD9D8 801E5A58 E4243750 */  swc1  $f4, 0x3750($at)
/* 1FD9DC 801E5A5C 8C4A0000 */  lw    $t2, ($v0)
/* 1FD9E0 801E5A60 3C01800E */  lui   $at, 0x800e
/* 1FD9E4 801E5A64 000A5880 */  sll   $t3, $t2, 2
/* 1FD9E8 801E5A68 002B0821 */  addu  $at, $at, $t3
/* 1FD9EC 801E5A6C 03E00008 */  jr    $ra
/* 1FD9F0 801E5A70 E4203C90 */   swc1  $f0, 0x3c90($at)

/* 1FD9F4 801E5A74 00000000 */  nop   
/* 1FD9F8 801E5A78 00000000 */  nop   
/* 1FD9FC 801E5A7C 00000000 */  nop   
# Unknown region 1FDA00-1FDDD0 [3D0]
.incbin "bin/kirby.u.1FDA00.bin"
