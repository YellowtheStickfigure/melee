.include "macros.inc"

.section .text

.global it_802E02E8
it_802E02E8:
/* 802E02E8 002DCEC8  7C 08 02 A6 */	mflr r0
/* 802E02EC 002DCECC  90 01 00 04 */	stw r0, 4(r1)
/* 802E02F0 002DCED0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E02F4 002DCED4  4B FF DD 4D */	bl it_802DE040
/* 802E02F8 002DCED8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E02FC 002DCEDC  38 21 00 08 */	addi r1, r1, 8
/* 802E0300 002DCEE0  7C 08 03 A6 */	mtlr r0
/* 802E0304 002DCEE4  4E 80 00 20 */	blr

.global it_802E0308
it_802E0308:
/* 802E0308 002DCEE8  7C 08 02 A6 */	mflr r0
/* 802E030C 002DCEEC  90 01 00 04 */	stw r0, 4(r1)
/* 802E0310 002DCEF0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0314 002DCEF4  4B FF E1 21 */	bl it_802DE434
/* 802E0318 002DCEF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E031C 002DCEFC  38 21 00 08 */	addi r1, r1, 8
/* 802E0320 002DCF00  7C 08 03 A6 */	mtlr r0
/* 802E0324 002DCF04  4E 80 00 20 */	blr

.global it_802E0328
it_802E0328:
/* 802E0328 002DCF08  7C 08 02 A6 */	mflr r0
/* 802E032C 002DCF0C  90 01 00 04 */	stw r0, 4(r1)
/* 802E0330 002DCF10  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0334 002DCF14  4B FF E1 C9 */	bl it_802DE4FC
/* 802E0338 002DCF18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E033C 002DCF1C  38 21 00 08 */	addi r1, r1, 8
/* 802E0340 002DCF20  7C 08 03 A6 */	mtlr r0
/* 802E0344 002DCF24  4E 80 00 20 */	blr

.global it_802E0348
it_802E0348:
/* 802E0348 002DCF28  7C 08 02 A6 */	mflr r0
/* 802E034C 002DCF2C  90 01 00 04 */	stw r0, 4(r1)
/* 802E0350 002DCF30  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0354 002DCF34  4B FF E2 F5 */	bl it_802DE648
/* 802E0358 002DCF38  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E035C 002DCF3C  38 21 00 08 */	addi r1, r1, 8
/* 802E0360 002DCF40  7C 08 03 A6 */	mtlr r0
/* 802E0364 002DCF44  4E 80 00 20 */	blr

.global it_802E0368
it_802E0368:
/* 802E0368 002DCF48  7C 08 02 A6 */	mflr r0
/* 802E036C 002DCF4C  90 01 00 04 */	stw r0, 4(r1)
/* 802E0370 002DCF50  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0374 002DCF54  4B FF EB 81 */	bl it_802DEEF4
/* 802E0378 002DCF58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E037C 002DCF5C  38 21 00 08 */	addi r1, r1, 8
/* 802E0380 002DCF60  7C 08 03 A6 */	mtlr r0
/* 802E0384 002DCF64  4E 80 00 20 */	blr

.global it_802E0388
it_802E0388:
/* 802E0388 002DCF68  7C 08 02 A6 */	mflr r0
/* 802E038C 002DCF6C  90 01 00 04 */	stw r0, 4(r1)
/* 802E0390 002DCF70  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0394 002DCF74  4B EE A9 25 */	bl grZakoGenerator_801CACB8
/* 802E0398 002DCF78  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E039C 002DCF7C  38 21 00 08 */	addi r1, r1, 8
/* 802E03A0 002DCF80  7C 08 03 A6 */	mtlr r0
/* 802E03A4 002DCF84  4E 80 00 20 */	blr

.global it_802E03A8
it_802E03A8:
/* 802E03A8 002DCF88  7C 08 02 A6 */	mflr r0
/* 802E03AC 002DCF8C  90 01 00 04 */	stw r0, 4(r1)
/* 802E03B0 002DCF90  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E03B4 002DCF94  4B FF F8 81 */	bl it_802DFC34
/* 802E03B8 002DCF98  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E03BC 002DCF9C  38 21 00 08 */	addi r1, r1, 8
/* 802E03C0 002DCFA0  7C 08 03 A6 */	mtlr r0
/* 802E03C4 002DCFA4  4E 80 00 20 */	blr

.global it_802E03C8
it_802E03C8:
/* 802E03C8 002DCFA8  7C 08 02 A6 */	mflr r0
/* 802E03CC 002DCFAC  90 01 00 04 */	stw r0, 4(r1)
/* 802E03D0 002DCFB0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E03D4 002DCFB4  4B FF F8 85 */	bl it_802DFC58
/* 802E03D8 002DCFB8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E03DC 002DCFBC  38 21 00 08 */	addi r1, r1, 8
/* 802E03E0 002DCFC0  7C 08 03 A6 */	mtlr r0
/* 802E03E4 002DCFC4  4E 80 00 20 */	blr

.global it_802E03E8
it_802E03E8:
/* 802E03E8 002DCFC8  7C 08 02 A6 */	mflr r0
/* 802E03EC 002DCFCC  90 01 00 04 */	stw r0, 4(r1)
/* 802E03F0 002DCFD0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E03F4 002DCFD4  4B FF F8 9D */	bl it_802DFC90
/* 802E03F8 002DCFD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E03FC 002DCFDC  38 21 00 08 */	addi r1, r1, 8
/* 802E0400 002DCFE0  7C 08 03 A6 */	mtlr r0
/* 802E0404 002DCFE4  4E 80 00 20 */	blr

.global it_802E0408
it_802E0408:
/* 802E0408 002DCFE8  7C 08 02 A6 */	mflr r0
/* 802E040C 002DCFEC  90 01 00 04 */	stw r0, 4(r1)
/* 802E0410 002DCFF0  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0414 002DCFF4  4B FF F8 9D */	bl it_802DFCB0
/* 802E0418 002DCFF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E041C 002DCFFC  38 21 00 08 */	addi r1, r1, 8
/* 802E0420 002DD000  7C 08 03 A6 */	mtlr r0
/* 802E0424 002DD004  4E 80 00 20 */	blr

.global it_802E0428
it_802E0428:
/* 802E0428 002DD008  7C 08 02 A6 */	mflr r0
/* 802E042C 002DD00C  90 01 00 04 */	stw r0, 4(r1)
/* 802E0430 002DD010  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0434 002DD014  4B FF F9 2D */	bl it_802DFD60
/* 802E0438 002DD018  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E043C 002DD01C  38 21 00 08 */	addi r1, r1, 8
/* 802E0440 002DD020  7C 08 03 A6 */	mtlr r0
/* 802E0444 002DD024  4E 80 00 20 */	blr

.global it_802E0448
it_802E0448:
/* 802E0448 002DD028  7C 08 02 A6 */	mflr r0
/* 802E044C 002DD02C  90 01 00 04 */	stw r0, 4(r1)
/* 802E0450 002DD030  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0454 002DD034  4B FF F9 ED */	bl it_802DFE40
/* 802E0458 002DD038  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E045C 002DD03C  38 21 00 08 */	addi r1, r1, 8
/* 802E0460 002DD040  7C 08 03 A6 */	mtlr r0
/* 802E0464 002DD044  4E 80 00 20 */	blr

.global it_802E0468
it_802E0468:
/* 802E0468 002DD048  7C 08 02 A6 */	mflr r0
/* 802E046C 002DD04C  90 01 00 04 */	stw r0, 4(r1)
/* 802E0470 002DD050  94 21 FF F8 */	stwu r1, -8(r1)
/* 802E0474 002DD054  4B F8 B4 21 */	bl it_8026B894
/* 802E0478 002DD058  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802E047C 002DD05C  38 21 00 08 */	addi r1, r1, 8
/* 802E0480 002DD060  7C 08 03 A6 */	mtlr r0
/* 802E0484 002DD064  4E 80 00 20 */	blr

.global it_802E0488
it_802E0488:
/* 802E0488 002DD068  7C 08 02 A6 */	mflr r0
/* 802E048C 002DD06C  3C C0 80 3C */	lis r6, it_803B86F8@ha
/* 802E0490 002DD070  90 01 00 04 */	stw r0, 4(r1)
/* 802E0494 002DD074  38 E6 86 F8 */	addi r7, r6, it_803B86F8@l
/* 802E0498 002DD078  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802E049C 002DD07C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 802E04A0 002DD080  93 C1 00 38 */	stw r30, 0x38(r1)
/* 802E04A4 002DD084  3B C5 00 00 */	addi r30, r5, 0
/* 802E04A8 002DD088  38 A0 00 00 */	li r5, 0
/* 802E04AC 002DD08C  93 A1 00 34 */	stw r29, 0x34(r1)
/* 802E04B0 002DD090  3B A3 00 00 */	addi r29, r3, 0
/* 802E04B4 002DD094  38 60 00 DC */	li r3, 0xdc
/* 802E04B8 002DD098  80 C7 00 00 */	lwz r6, 0(r7)
/* 802E04BC 002DD09C  80 07 00 04 */	lwz r0, 4(r7)
/* 802E04C0 002DD0A0  90 C1 00 18 */	stw r6, 0x18(r1)
/* 802E04C4 002DD0A4  38 C1 00 18 */	addi r6, r1, 0x18
/* 802E04C8 002DD0A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802E04CC 002DD0AC  80 07 00 08 */	lwz r0, 8(r7)
/* 802E04D0 002DD0B0  38 E0 00 01 */	li r7, 1
/* 802E04D4 002DD0B4  90 01 00 20 */	stw r0, 0x20(r1)
/* 802E04D8 002DD0B8  4B F9 B0 D9 */	bl it_8027B5B0
/* 802E04DC 002DD0BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E04E0 002DD0C0  41 82 00 A0 */	beq .L_802E0580
/* 802E04E4 002DD0C4  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 802E04E8 002DD0C8  C8 22 DC E0 */	lfd f1, it_804DD6C0@sda21(r2)
/* 802E04EC 002DD0CC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802E04F0 002DD0D0  3C 00 43 30 */	lis r0, 0x4330
/* 802E04F4 002DD0D4  83 DF 00 2C */	lwz r30, 0x2c(r31)
/* 802E04F8 002DD0D8  7F E3 FB 78 */	mr r3, r31
/* 802E04FC 002DD0DC  90 01 00 28 */	stw r0, 0x28(r1)
/* 802E0500 002DD0E0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802E0504 002DD0E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802E0508 002DD0E8  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 802E050C 002DD0EC  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 802E0510 002DD0F0  4B F9 C0 5D */	bl it_8027C56C
/* 802E0514 002DD0F4  93 BE 0E 10 */	stw r29, 0xe10(r30)
/* 802E0518 002DD0F8  38 7F 00 00 */	addi r3, r31, 0
/* 802E051C 002DD0FC  38 80 00 0C */	li r4, 0xc
/* 802E0520 002DD100  38 A0 00 02 */	li r5, 2
/* 802E0524 002DD104  4B F8 89 39 */	bl Item_80268E5C
/* 802E0528 002DD108  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 802E052C 002DD10C  48 09 03 FD */	bl HSD_JObjAnimAll
/* 802E0530 002DD110  7F E3 FB 78 */	mr r3, r31
/* 802E0534 002DD114  4B FF D5 51 */	bl it_802DDA84
/* 802E0538 002DD118  2C 03 00 00 */	cmpwi r3, 0
/* 802E053C 002DD11C  41 82 00 34 */	beq .L_802E0570
/* 802E0540 002DD120  7F C3 F3 78 */	mr r3, r30
/* 802E0544 002DD124  4B F9 5D 6D */	bl it_802762B0
/* 802E0548 002DD128  7F E3 FB 78 */	mr r3, r31
/* 802E054C 002DD12C  4B F9 6A F5 */	bl it_80277040
/* 802E0550 002DD130  2C 03 00 00 */	cmpwi r3, 0
/* 802E0554 002DD134  40 82 00 10 */	bne .L_802E0564
/* 802E0558 002DD138  7F E3 FB 78 */	mr r3, r31
/* 802E055C 002DD13C  4B FF DB 95 */	bl it_802DE0F0
/* 802E0560 002DD140  48 00 00 20 */	b .L_802E0580
.L_802E0564:
/* 802E0564 002DD144  7F E3 FB 78 */	mr r3, r31
/* 802E0568 002DD148  4B FF E9 8D */	bl it_802DEEF4
/* 802E056C 002DD14C  48 00 00 14 */	b .L_802E0580
.L_802E0570:
/* 802E0570 002DD150  7F C3 F3 78 */	mr r3, r30
/* 802E0574 002DD154  4B F9 5D 49 */	bl it_802762BC
/* 802E0578 002DD158  7F E3 FB 78 */	mr r3, r31
/* 802E057C 002DD15C  4B FF DD A5 */	bl it_802DE320
.L_802E0580:
/* 802E0580 002DD160  7F E3 FB 78 */	mr r3, r31
/* 802E0584 002DD164  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802E0588 002DD168  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 802E058C 002DD16C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 802E0590 002DD170  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 802E0594 002DD174  38 21 00 40 */	addi r1, r1, 0x40
/* 802E0598 002DD178  7C 08 03 A6 */	mtlr r0
/* 802E059C 002DD17C  4E 80 00 20 */	blr


.section .data
    .balign 8
.global it_803F87F0
it_803F87F0:
    .4byte 0
    .4byte it_802DE190
    .4byte it_802DE198
    .4byte it_802DE1FC
    .4byte 0
    .4byte it_802DE35C
    .4byte it_802DE3D8
    .4byte it_802DE408
    .4byte 0
    .4byte it_802DE490
    .4byte it_802DE498
    .4byte NULL
    .4byte 1
    .4byte it_802DE544
    .4byte it_802DE5EC
    .4byte it_802DE61C
    .4byte 1
    .4byte it_802DE670
    .4byte it_802DE694
    .4byte it_802DE6C4
    .4byte 1
    .4byte it_802DE884
    .4byte it_802DEA0C
    .4byte it_802DEB44
    .4byte 0
    .4byte it_802DE884
    .4byte it_802DEA0C
    .4byte it_802DEB44
    .4byte 1
    .4byte it_802DEE04
    .4byte it_802DEE98
    .4byte it_802DEEC8
    .4byte 0
    .4byte it_802DEE04
    .4byte it_802DEE98
    .4byte it_802DEEC8
    .4byte 0
    .4byte it_802DEF78
    .4byte it_802DEF80
    .4byte it_802DF104
    .4byte 2
    .4byte it_802DFA68
    .4byte it_802DFB90
    .4byte it_802DFBAC
    .4byte 3
    .4byte it_802DF724
    .4byte it_802DF93C
    .4byte it_802DF970
    .4byte 4
    .4byte NULL
    .4byte NULL
    .4byte NULL


.section .rodata
    .balign 8
.global it_803B86F8
it_803B86F8:
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000
    .4byte 0x00000000


.section .sdata2
    .balign 8
.global it_804DD6C0
it_804DD6C0:
    .4byte 0x43300000
    .4byte 0x80000000
