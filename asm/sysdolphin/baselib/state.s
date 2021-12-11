.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global HSD_SetupChannelMode
HSD_SetupChannelMode:
/* 803615D0 0035E1B0  7C 08 02 A6 */	mflr r0
/* 803615D4 0035E1B4  90 01 00 04 */	stw r0, 4(r1)
/* 803615D8 0035E1B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803615DC 0035E1BC  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 803615E0 0035E1C0  54 7B 07 39 */	rlwinm. r27, r3, 0, 0x1c, 0x1c
/* 803615E4 0035E1C4  3B 23 00 00 */	addi r25, r3, 0
/* 803615E8 0035E1C8  3C 60 80 40 */	lis r3, lbl_80405A38@ha
/* 803615EC 0035E1CC  3B E3 5A 38 */	addi r31, r3, lbl_80405A38@l
/* 803615F0 0035E1D0  41 82 00 0C */	beq lbl_803615FC
/* 803615F4 0035E1D4  38 60 00 02 */	li r3, 2
/* 803615F8 0035E1D8  48 00 00 08 */	b lbl_80361600
lbl_803615FC:
/* 803615FC 0035E1DC  38 60 00 01 */	li r3, 1
lbl_80361600:
/* 80361600 0035E1E0  48 00 0D D1 */	bl HSD_StateSetNumChans
/* 80361604 0035E1E4  28 1B 00 00 */	cmplwi r27, 0
/* 80361608 0035E1E8  41 82 00 74 */	beq lbl_8036167C
/* 8036160C 0035E1EC  48 00 3D F1 */	bl func_803653FC
/* 80361610 0035E1F0  90 7F 00 20 */	stw r3, 0x20(r31)
/* 80361614 0035E1F4  7F E3 FB 78 */	mr r3, r31
/* 80361618 0035E1F8  48 00 0A 8D */	bl HSD_SetupChannel
/* 8036161C 0035E1FC  48 00 3D E9 */	bl func_80365404
/* 80361620 0035E200  3C 80 80 4C */	lis r4, lbl_804C07E0@ha
/* 80361624 0035E204  3B A3 00 00 */	addi r29, r3, 0
/* 80361628 0035E208  3B C4 07 E0 */	addi r30, r4, lbl_804C07E0@l
/* 8036162C 0035E20C  3B 81 00 0C */	addi r28, r1, 0xc
/* 80361630 0035E210  3B 40 00 00 */	li r26, 0
/* 80361634 0035E214  48 00 00 40 */	b lbl_80361674
lbl_80361638:
/* 80361638 0035E218  7F 43 D3 78 */	mr r3, r26
/* 8036163C 0035E21C  48 00 3E 1D */	bl func_80365458
/* 80361640 0035E220  28 03 00 00 */	cmplwi r3, 0
/* 80361644 0035E224  41 82 00 2C */	beq lbl_80361670
/* 80361648 0035E228  28 1B 00 00 */	cmplwi r27, 0
/* 8036164C 0035E22C  41 82 00 0C */	beq lbl_80361658
/* 80361650 0035E230  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80361654 0035E234  48 00 00 08 */	b lbl_8036165C
lbl_80361658:
/* 80361658 0035E238  C0 03 00 38 */	lfs f0, 0x38(r3)
lbl_8036165C:
/* 8036165C 0035E23C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80361660 0035E240  FC 20 00 90 */	fmr f1, f0
/* 80361664 0035E244  7F 84 E3 78 */	mr r4, r28
/* 80361668 0035E248  90 01 00 0C */	stw r0, 0xc(r1)
/* 8036166C 0035E24C  48 00 41 B5 */	bl func_80365820
lbl_80361670:
/* 80361670 0035E250  3B 5A 00 01 */	addi r26, r26, 1
lbl_80361674:
/* 80361674 0035E254  7C 1A E8 00 */	cmpw r26, r29
/* 80361678 0035E258  41 80 FF C0 */	blt lbl_80361638
lbl_8036167C:
/* 8036167C 0035E25C  57 20 07 7E */	clrlwi r0, r25, 0x1d
/* 80361680 0035E260  2C 00 00 03 */	cmpwi r0, 3
/* 80361684 0035E264  41 82 00 D8 */	beq lbl_8036175C
/* 80361688 0035E268  40 80 00 10 */	bge lbl_80361698
/* 8036168C 0035E26C  2C 00 00 02 */	cmpwi r0, 2
/* 80361690 0035E270  40 80 00 14 */	bge lbl_803616A4
/* 80361694 0035E274  48 00 00 C8 */	b lbl_8036175C
lbl_80361698:
/* 80361698 0035E278  2C 00 00 05 */	cmpwi r0, 5
/* 8036169C 0035E27C  40 80 00 C0 */	bge lbl_8036175C
/* 803616A0 0035E280  48 00 00 10 */	b lbl_803616B0
lbl_803616A4:
/* 803616A4 0035E284  38 7F 00 30 */	addi r3, r31, 0x30
/* 803616A8 0035E288  48 00 09 FD */	bl HSD_SetupChannel
/* 803616AC 0035E28C  48 00 00 B8 */	b lbl_80361764
lbl_803616B0:
/* 803616B0 0035E290  38 60 01 00 */	li r3, 0x100
/* 803616B4 0035E294  48 00 3D 59 */	bl func_8036540C
/* 803616B8 0035E298  7C 7E 1B 79 */	or. r30, r3, r3
/* 803616BC 0035E29C  41 82 00 28 */	beq lbl_803616E4
/* 803616C0 0035E2A0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 803616C4 0035E2A4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803616C8 0035E2A8  41 82 00 1C */	beq lbl_803616E4
/* 803616CC 0035E2AC  3C 60 80 4C */	lis r3, lbl_804C07E0@ha
/* 803616D0 0035E2B0  38 63 07 E0 */	addi r3, r3, lbl_804C07E0@l
/* 803616D4 0035E2B4  38 9E 00 10 */	addi r4, r30, 0x10
/* 803616D8 0035E2B8  38 BF 00 6C */	addi r5, r31, 0x6c
/* 803616DC 0035E2BC  48 01 90 A5 */	bl HSD_MulColor
/* 803616E0 0035E2C0  48 00 00 0C */	b lbl_803616EC
lbl_803616E4:
/* 803616E4 0035E2C4  80 0D A6 28 */	lwz r0, lbl_804D5CC8@sda21(r13)
/* 803616E8 0035E2C8  90 1F 00 6C */	stw r0, 0x6c(r31)
lbl_803616EC:
/* 803616EC 0035E2CC  48 00 3C F9 */	bl func_803653E4
/* 803616F0 0035E2D0  90 7F 00 80 */	stw r3, 0x80(r31)
/* 803616F4 0035E2D4  38 7F 00 60 */	addi r3, r31, 0x60
/* 803616F8 0035E2D8  48 00 09 AD */	bl HSD_SetupChannel
/* 803616FC 0035E2DC  48 00 3C F9 */	bl func_803653F4
/* 80361700 0035E2E0  38 9F 00 B0 */	addi r4, r31, 0xb0
/* 80361704 0035E2E4  28 1E 00 00 */	cmplwi r30, 0
/* 80361708 0035E2E8  90 7F 00 B0 */	stw r3, 0xb0(r31)
/* 8036170C 0035E2EC  41 82 00 24 */	beq lbl_80361730
/* 80361710 0035E2F0  A0 1E 00 08 */	lhz r0, 8(r30)
/* 80361714 0035E2F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80361718 0035E2F8  41 82 00 18 */	beq lbl_80361730
/* 8036171C 0035E2FC  88 1E 00 13 */	lbz r0, 0x13(r30)
/* 80361720 0035E300  38 7F 00 90 */	addi r3, r31, 0x90
/* 80361724 0035E304  98 1F 00 9F */	stb r0, 0x9f(r31)
/* 80361728 0035E308  48 00 09 7D */	bl HSD_SetupChannel
/* 8036172C 0035E30C  48 00 00 38 */	b lbl_80361764
lbl_80361730:
/* 80361730 0035E310  80 04 00 00 */	lwz r0, 0(r4)
/* 80361734 0035E314  2C 00 00 00 */	cmpwi r0, 0
/* 80361738 0035E318  41 82 00 18 */	beq lbl_80361750
/* 8036173C 0035E31C  38 00 00 00 */	li r0, 0
/* 80361740 0035E320  98 1F 00 9F */	stb r0, 0x9f(r31)
/* 80361744 0035E324  38 7F 00 90 */	addi r3, r31, 0x90
/* 80361748 0035E328  48 00 09 5D */	bl HSD_SetupChannel
/* 8036174C 0035E32C  48 00 00 18 */	b lbl_80361764
lbl_80361750:
/* 80361750 0035E330  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80361754 0035E334  48 00 09 51 */	bl HSD_SetupChannel
/* 80361758 0035E338  48 00 00 0C */	b lbl_80361764
lbl_8036175C:
/* 8036175C 0035E33C  38 7F 00 F0 */	addi r3, r31, 0xf0
/* 80361760 0035E340  48 00 09 45 */	bl HSD_SetupChannel
lbl_80361764:
/* 80361764 0035E344  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80361768 0035E348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8036176C 0035E34C  38 21 00 30 */	addi r1, r1, 0x30
/* 80361770 0035E350  7C 08 03 A6 */	mtlr r0
/* 80361774 0035E354  4E 80 00 20 */	blr 

.global func_80361778
func_80361778:
/* 80361778 0035E358  7C 08 02 A6 */	mflr r0
/* 8036177C 0035E35C  90 01 00 04 */	stw r0, 4(r1)
/* 80361780 0035E360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80361784 0035E364  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80361788 0035E368  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8036178C 0035E36C  7C 9E 23 79 */	or. r30, r4, r4
/* 80361790 0035E370  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80361794 0035E374  3B A3 00 00 */	addi r29, r3, 0
/* 80361798 0035E378  41 82 00 88 */	beq lbl_80361820
/* 8036179C 0035E37C  88 1E 00 00 */	lbz r0, 0(r30)
/* 803617A0 0035E380  54 03 07 FE */	clrlwi r3, r0, 0x1f
/* 803617A4 0035E384  48 00 05 C9 */	bl func_80361D6C
/* 803617A8 0035E388  88 1E 00 00 */	lbz r0, 0(r30)
/* 803617AC 0035E38C  54 03 07 BC */	rlwinm r3, r0, 0, 0x1e, 0x1e
/* 803617B0 0035E390  48 00 06 11 */	bl func_80361DC0
/* 803617B4 0035E394  88 1E 00 00 */	lbz r0, 0(r30)
/* 803617B8 0035E398  88 9E 00 03 */	lbz r4, 3(r30)
/* 803617BC 0035E39C  54 03 07 7A */	rlwinm r3, r0, 0, 0x1d, 0x1d
/* 803617C0 0035E3A0  48 00 06 55 */	bl func_80361E14
/* 803617C4 0035E3A4  88 7E 00 04 */	lbz r3, 4(r30)
/* 803617C8 0035E3A8  88 9E 00 05 */	lbz r4, 5(r30)
/* 803617CC 0035E3AC  88 BE 00 06 */	lbz r5, 6(r30)
/* 803617D0 0035E3B0  88 DE 00 07 */	lbz r6, 7(r30)
/* 803617D4 0035E3B4  48 00 03 45 */	bl func_80361B18
/* 803617D8 0035E3B8  88 1E 00 00 */	lbz r0, 0(r30)
/* 803617DC 0035E3BC  88 9E 00 08 */	lbz r4, 8(r30)
/* 803617E0 0035E3C0  54 03 06 F6 */	rlwinm r3, r0, 0, 0x1b, 0x1b
/* 803617E4 0035E3C4  54 05 06 B4 */	rlwinm r5, r0, 0, 0x1a, 0x1a
/* 803617E8 0035E3C8  48 00 03 D1 */	bl func_80361BB8
/* 803617EC 0035E3CC  88 1E 00 00 */	lbz r0, 0(r30)
/* 803617F0 0035E3D0  54 03 07 38 */	rlwinm r3, r0, 0, 0x1c, 0x1c
/* 803617F4 0035E3D4  48 00 06 99 */	bl func_80361E8C
/* 803617F8 0035E3D8  88 7E 00 09 */	lbz r3, 9(r30)
/* 803617FC 0035E3DC  88 9E 00 01 */	lbz r4, 1(r30)
/* 80361800 0035E3E0  88 BE 00 0A */	lbz r5, 0xa(r30)
/* 80361804 0035E3E4  88 DE 00 0B */	lbz r6, 0xb(r30)
/* 80361808 0035E3E8  88 FE 00 02 */	lbz r7, 2(r30)
/* 8036180C 0035E3EC  48 00 04 B9 */	bl func_80361CC4
/* 80361810 0035E3F0  88 1E 00 00 */	lbz r0, 0(r30)
/* 80361814 0035E3F4  54 03 06 72 */	rlwinm r3, r0, 0, 0x19, 0x19
/* 80361818 0035E3F8  48 00 06 C9 */	bl func_80361EE0
/* 8036181C 0035E3FC  48 00 00 D4 */	b lbl_803618F0
lbl_80361820:
/* 80361820 0035E400  38 60 00 01 */	li r3, 1
/* 80361824 0035E404  48 00 05 49 */	bl func_80361D6C
/* 80361828 0035E408  38 60 00 00 */	li r3, 0
/* 8036182C 0035E40C  48 00 05 95 */	bl func_80361DC0
/* 80361830 0035E410  38 60 00 00 */	li r3, 0
/* 80361834 0035E414  38 80 00 00 */	li r4, 0
/* 80361838 0035E418  48 00 05 DD */	bl func_80361E14
/* 8036183C 0035E41C  57 BE 00 43 */	rlwinm. r30, r29, 0, 1, 1
/* 80361840 0035E420  41 82 00 0C */	beq lbl_8036184C
/* 80361844 0035E424  38 60 00 01 */	li r3, 1
/* 80361848 0035E428  48 00 00 08 */	b lbl_80361850
lbl_8036184C:
/* 8036184C 0035E42C  38 60 00 00 */	li r3, 0
lbl_80361850:
/* 80361850 0035E430  38 80 00 04 */	li r4, 4
/* 80361854 0035E434  38 A0 00 05 */	li r5, 5
/* 80361858 0035E438  38 C0 00 0F */	li r6, 0xf
/* 8036185C 0035E43C  48 00 02 BD */	bl func_80361B18
/* 80361860 0035E440  57 BF 00 85 */	rlwinm. r31, r29, 0, 2, 2
/* 80361864 0035E444  41 82 00 0C */	beq lbl_80361870
/* 80361868 0035E448  38 60 00 00 */	li r3, 0
/* 8036186C 0035E44C  48 00 00 08 */	b lbl_80361874
lbl_80361870:
/* 80361870 0035E450  38 60 00 01 */	li r3, 1
lbl_80361874:
/* 80361874 0035E454  57 A0 01 09 */	rlwinm. r0, r29, 0, 4, 4
/* 80361878 0035E458  41 82 00 0C */	beq lbl_80361884
/* 8036187C 0035E45C  38 80 00 07 */	li r4, 7
/* 80361880 0035E460  48 00 00 08 */	b lbl_80361888
lbl_80361884:
/* 80361884 0035E464  38 80 00 03 */	li r4, 3
lbl_80361888:
/* 80361888 0035E468  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8036188C 0035E46C  38 60 00 01 */	li r3, 1
/* 80361890 0035E470  48 00 03 29 */	bl func_80361BB8
/* 80361894 0035E474  28 1F 00 00 */	cmplwi r31, 0
/* 80361898 0035E478  40 82 00 30 */	bne lbl_803618C8
/* 8036189C 0035E47C  28 1E 00 00 */	cmplwi r30, 0
/* 803618A0 0035E480  41 82 00 28 */	beq lbl_803618C8
/* 803618A4 0035E484  38 60 00 00 */	li r3, 0
/* 803618A8 0035E488  48 00 05 E5 */	bl func_80361E8C
/* 803618AC 0035E48C  38 60 00 04 */	li r3, 4
/* 803618B0 0035E490  38 80 00 00 */	li r4, 0
/* 803618B4 0035E494  38 A0 00 00 */	li r5, 0
/* 803618B8 0035E498  38 C0 00 04 */	li r6, 4
/* 803618BC 0035E49C  38 E0 00 00 */	li r7, 0
/* 803618C0 0035E4A0  48 00 04 05 */	bl func_80361CC4
/* 803618C4 0035E4A4  48 00 00 24 */	b lbl_803618E8
lbl_803618C8:
/* 803618C8 0035E4A8  38 60 00 01 */	li r3, 1
/* 803618CC 0035E4AC  48 00 05 C1 */	bl func_80361E8C
/* 803618D0 0035E4B0  38 60 00 07 */	li r3, 7
/* 803618D4 0035E4B4  38 80 00 00 */	li r4, 0
/* 803618D8 0035E4B8  38 A0 00 00 */	li r5, 0
/* 803618DC 0035E4BC  38 C0 00 07 */	li r6, 7
/* 803618E0 0035E4C0  38 E0 00 00 */	li r7, 0
/* 803618E4 0035E4C4  48 00 03 E1 */	bl func_80361CC4
lbl_803618E8:
/* 803618E8 0035E4C8  38 60 00 00 */	li r3, 0
/* 803618EC 0035E4CC  48 00 05 F5 */	bl func_80361EE0
lbl_803618F0:
/* 803618F0 0035E4D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803618F4 0035E4D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803618F8 0035E4D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803618FC 0035E4DC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80361900 0035E4E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80361904 0035E4E4  7C 08 03 A6 */	mtlr r0
/* 80361908 0035E4E8  4E 80 00 20 */	blr 

.global func_8036190C
func_8036190C:
/* 8036190C 0035E4EC  7C 08 02 A6 */	mflr r0
/* 80361910 0035E4F0  90 01 00 04 */	stw r0, 4(r1)
/* 80361914 0035E4F4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80361918 0035E4F8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8036191C 0035E4FC  3B E4 00 00 */	addi r31, r4, 0
/* 80361920 0035E500  93 C1 00 88 */	stw r30, 0x88(r1)
/* 80361924 0035E504  3B C3 00 00 */	addi r30, r3, 0
/* 80361928 0035E508  48 00 0B BD */	bl func_803624E4
/* 8036192C 0035E50C  2C 03 00 00 */	cmpwi r3, 0
/* 80361930 0035E510  40 82 00 34 */	bne lbl_80361964
/* 80361934 0035E514  38 00 00 00 */	li r0, 0
/* 80361938 0035E518  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036193C 0035E51C  48 00 0B B1 */	bl func_803624EC
/* 80361940 0035E520  90 61 00 18 */	stw r3, 0x18(r1)
/* 80361944 0035E524  38 80 00 FF */	li r4, 0xff
/* 80361948 0035E528  38 00 00 04 */	li r0, 4
/* 8036194C 0035E52C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80361950 0035E530  38 61 00 10 */	addi r3, r1, 0x10
/* 80361954 0035E534  90 81 00 20 */	stw r4, 0x20(r1)
/* 80361958 0035E538  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036195C 0035E53C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80361960 0035E540  48 00 0B E9 */	bl func_80362548
lbl_80361964:
/* 80361964 0035E544  38 7E 00 00 */	addi r3, r30, 0
/* 80361968 0035E548  38 9F 00 00 */	addi r4, r31, 0
/* 8036196C 0035E54C  4B FF FE 0D */	bl func_80361778
/* 80361970 0035E550  48 00 10 69 */	bl func_803629D8
/* 80361974 0035E554  48 00 0B A5 */	bl func_80362518
/* 80361978 0035E558  48 00 0B 31 */	bl func_803624A8
/* 8036197C 0035E55C  7F C3 F3 78 */	mr r3, r30
/* 80361980 0035E560  4B FF FC 51 */	bl HSD_SetupChannelMode
/* 80361984 0035E564  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80361988 0035E568  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8036198C 0035E56C  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 80361990 0035E570  38 21 00 90 */	addi r1, r1, 0x90
/* 80361994 0035E574  7C 08 03 A6 */	mtlr r0
/* 80361998 0035E578  4E 80 00 20 */	blr 

.global func_8036199C
func_8036199C:
/* 8036199C 0035E57C  7C 08 02 A6 */	mflr r0
/* 803619A0 0035E580  90 01 00 04 */	stw r0, 4(r1)
/* 803619A4 0035E584  94 21 FF 78 */	stwu r1, -0x88(r1)
/* 803619A8 0035E588  93 E1 00 84 */	stw r31, 0x84(r1)
/* 803619AC 0035E58C  7C 7F 1B 78 */	mr r31, r3
/* 803619B0 0035E590  48 00 0B 35 */	bl func_803624E4
/* 803619B4 0035E594  2C 03 00 00 */	cmpwi r3, 0
/* 803619B8 0035E598  40 82 00 34 */	bne lbl_803619EC
/* 803619BC 0035E59C  38 00 00 00 */	li r0, 0
/* 803619C0 0035E5A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 803619C4 0035E5A4  48 00 0B 29 */	bl func_803624EC
/* 803619C8 0035E5A8  90 61 00 14 */	stw r3, 0x14(r1)
/* 803619CC 0035E5AC  38 80 00 FF */	li r4, 0xff
/* 803619D0 0035E5B0  38 00 00 04 */	li r0, 4
/* 803619D4 0035E5B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 803619D8 0035E5B8  38 61 00 0C */	addi r3, r1, 0xc
/* 803619DC 0035E5BC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 803619E0 0035E5C0  90 01 00 20 */	stw r0, 0x20(r1)
/* 803619E4 0035E5C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803619E8 0035E5C8  48 00 0B 61 */	bl func_80362548
lbl_803619EC:
/* 803619EC 0035E5CC  38 7F 00 00 */	addi r3, r31, 0
/* 803619F0 0035E5D0  38 80 00 00 */	li r4, 0
/* 803619F4 0035E5D4  4B FF FD 85 */	bl func_80361778
/* 803619F8 0035E5D8  48 00 0F E1 */	bl func_803629D8
/* 803619FC 0035E5DC  48 00 0B 1D */	bl func_80362518
/* 80361A00 0035E5E0  48 00 0A A9 */	bl func_803624A8
/* 80361A04 0035E5E4  7F E3 FB 78 */	mr r3, r31
/* 80361A08 0035E5E8  4B FF FB C9 */	bl HSD_SetupChannelMode
/* 80361A0C 0035E5EC  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80361A10 0035E5F0  83 E1 00 84 */	lwz r31, 0x84(r1)
/* 80361A14 0035E5F4  38 21 00 88 */	addi r1, r1, 0x88
/* 80361A18 0035E5F8  7C 08 03 A6 */	mtlr r0
/* 80361A1C 0035E5FC  4E 80 00 20 */	blr 

.global func_80361A20
func_80361A20:
/* 80361A20 0035E600  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80361A24 0035E604  3C C0 80 4C */	lis r6, lbl_804C07E0@ha
/* 80361A28 0035E608  80 03 00 00 */	lwz r0, 0(r3)
/* 80361A2C 0035E60C  38 66 07 E0 */	addi r3, r6, lbl_804C07E0@l
/* 80361A30 0035E610  90 03 00 00 */	stw r0, 0(r3)
/* 80361A34 0035E614  80 04 00 00 */	lwz r0, 0(r4)
/* 80361A38 0035E618  90 03 00 04 */	stw r0, 4(r3)
/* 80361A3C 0035E61C  80 05 00 00 */	lwz r0, 0(r5)
/* 80361A40 0035E620  90 03 00 08 */	stw r0, 8(r3)
/* 80361A44 0035E624  C8 02 EA 38 */	lfd f0, lbl_804DE418@sda21(r2)
/* 80361A48 0035E628  FC 00 00 72 */	fmul f0, f0, f1
/* 80361A4C 0035E62C  FC 00 00 1E */	fctiwz f0, f0
/* 80361A50 0035E630  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80361A54 0035E634  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361A58 0035E638  98 03 00 0C */	stb r0, 0xc(r3)
/* 80361A5C 0035E63C  38 21 00 20 */	addi r1, r1, 0x20
/* 80361A60 0035E640  4E 80 00 20 */	blr 

.global func_80361A64
func_80361A64:
/* 80361A64 0035E644  3C 60 80 4C */	lis r3, lbl_804C07E0@ha
/* 80361A68 0035E648  38 63 07 E0 */	addi r3, r3, lbl_804C07E0@l
/* 80361A6C 0035E64C  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 80361A70 0035E650  4E 80 00 20 */	blr 

.global func_80361A74
func_80361A74:
/* 80361A74 0035E654  7C 08 02 A6 */	mflr r0
/* 80361A78 0035E658  90 01 00 04 */	stw r0, 4(r1)
/* 80361A7C 0035E65C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361A80 0035E660  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361A84 0035E664  3B E4 00 00 */	addi r31, r4, 0
/* 80361A88 0035E668  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80361A8C 0035E66C  7C 7E 1B 78 */	mr r30, r3
/* 80361A90 0035E670  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80361A94 0035E674  88 6D BF 10 */	lbz r3, lbl_804D75B0@sda21(r13)
/* 80361A98 0035E678  7C 03 00 40 */	cmplw r3, r0
/* 80361A9C 0035E67C  40 82 00 10 */	bne lbl_80361AAC
/* 80361AA0 0035E680  80 0D BF 14 */	lwz r0, lbl_804D75B4@sda21(r13)
/* 80361AA4 0035E684  7C 00 F8 00 */	cmpw r0, r31
/* 80361AA8 0035E688  41 82 00 18 */	beq lbl_80361AC0
lbl_80361AAC:
/* 80361AAC 0035E68C  38 7E 00 00 */	addi r3, r30, 0
/* 80361AB0 0035E690  38 9F 00 00 */	addi r4, r31, 0
/* 80361AB4 0035E694  4B FD B7 8D */	bl func_8033D240
/* 80361AB8 0035E698  9B CD BF 10 */	stb r30, lbl_804D75B0@sda21(r13)
/* 80361ABC 0035E69C  93 ED BF 14 */	stw r31, lbl_804D75B4@sda21(r13)
lbl_80361AC0:
/* 80361AC0 0035E6A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361AC4 0035E6A4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361AC8 0035E6A8  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80361ACC 0035E6AC  38 21 00 18 */	addi r1, r1, 0x18
/* 80361AD0 0035E6B0  7C 08 03 A6 */	mtlr r0
/* 80361AD4 0035E6B4  4E 80 00 20 */	blr 

.global func_80361AD8
func_80361AD8:
/* 80361AD8 0035E6B8  7C 08 02 A6 */	mflr r0
/* 80361ADC 0035E6BC  90 01 00 04 */	stw r0, 4(r1)
/* 80361AE0 0035E6C0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361AE4 0035E6C4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361AE8 0035E6C8  3B E3 00 00 */	addi r31, r3, 0
/* 80361AEC 0035E6CC  80 0D BF 20 */	lwz r0, lbl_804D75C0@sda21(r13)
/* 80361AF0 0035E6D0  7C 00 F8 00 */	cmpw r0, r31
/* 80361AF4 0035E6D4  41 82 00 10 */	beq lbl_80361B04
/* 80361AF8 0035E6D8  7F E3 FB 78 */	mr r3, r31
/* 80361AFC 0035E6DC  4B FD B8 55 */	bl func_8033D350
/* 80361B00 0035E6E0  93 ED BF 20 */	stw r31, lbl_804D75C0@sda21(r13)
lbl_80361B04:
/* 80361B04 0035E6E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361B08 0035E6E8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361B0C 0035E6EC  38 21 00 18 */	addi r1, r1, 0x18
/* 80361B10 0035E6F0  7C 08 03 A6 */	mtlr r0
/* 80361B14 0035E6F4  4E 80 00 20 */	blr 

.global func_80361B18
func_80361B18:
/* 80361B18 0035E6F8  7C 08 02 A6 */	mflr r0
/* 80361B1C 0035E6FC  90 01 00 04 */	stw r0, 4(r1)
/* 80361B20 0035E700  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80361B24 0035E704  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80361B28 0035E708  3B E6 00 00 */	addi r31, r6, 0
/* 80361B2C 0035E70C  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80361B30 0035E710  3B C5 00 00 */	addi r30, r5, 0
/* 80361B34 0035E714  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80361B38 0035E718  3B A4 00 00 */	addi r29, r4, 0
/* 80361B3C 0035E71C  93 81 00 18 */	stw r28, 0x18(r1)
/* 80361B40 0035E720  3B 83 00 00 */	addi r28, r3, 0
/* 80361B44 0035E724  80 0D BF 24 */	lwz r0, lbl_804D75C4@sda21(r13)
/* 80361B48 0035E728  7C 00 E0 00 */	cmpw r0, r28
/* 80361B4C 0035E72C  40 82 00 28 */	bne lbl_80361B74
/* 80361B50 0035E730  80 0D BF 28 */	lwz r0, lbl_804D75C8@sda21(r13)
/* 80361B54 0035E734  7C 00 E8 00 */	cmpw r0, r29
/* 80361B58 0035E738  40 82 00 1C */	bne lbl_80361B74
/* 80361B5C 0035E73C  80 0D BF 2C */	lwz r0, lbl_804D75CC@sda21(r13)
/* 80361B60 0035E740  7C 00 F0 00 */	cmpw r0, r30
/* 80361B64 0035E744  40 82 00 10 */	bne lbl_80361B74
/* 80361B68 0035E748  80 0D BF 30 */	lwz r0, lbl_804D75D0@sda21(r13)
/* 80361B6C 0035E74C  7C 00 F8 00 */	cmpw r0, r31
/* 80361B70 0035E750  41 82 00 28 */	beq lbl_80361B98
lbl_80361B74:
/* 80361B74 0035E754  38 7C 00 00 */	addi r3, r28, 0
/* 80361B78 0035E758  38 9D 00 00 */	addi r4, r29, 0
/* 80361B7C 0035E75C  38 BE 00 00 */	addi r5, r30, 0
/* 80361B80 0035E760  38 DF 00 00 */	addi r6, r31, 0
/* 80361B84 0035E764  4B FD F0 B9 */	bl func_80340C3C
/* 80361B88 0035E768  93 8D BF 24 */	stw r28, lbl_804D75C4@sda21(r13)
/* 80361B8C 0035E76C  93 AD BF 28 */	stw r29, lbl_804D75C8@sda21(r13)
/* 80361B90 0035E770  93 CD BF 2C */	stw r30, lbl_804D75CC@sda21(r13)
/* 80361B94 0035E774  93 ED BF 30 */	stw r31, lbl_804D75D0@sda21(r13)
lbl_80361B98:
/* 80361B98 0035E778  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80361B9C 0035E77C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80361BA0 0035E780  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80361BA4 0035E784  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80361BA8 0035E788  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80361BAC 0035E78C  38 21 00 28 */	addi r1, r1, 0x28
/* 80361BB0 0035E790  7C 08 03 A6 */	mtlr r0
/* 80361BB4 0035E794  4E 80 00 20 */	blr 

.global func_80361BB8
func_80361BB8:
/* 80361BB8 0035E798  7C 08 02 A6 */	mflr r0
/* 80361BBC 0035E79C  2C 03 00 00 */	cmpwi r3, 0
/* 80361BC0 0035E7A0  90 01 00 04 */	stw r0, 4(r1)
/* 80361BC4 0035E7A4  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80361BC8 0035E7A8  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80361BCC 0035E7AC  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80361BD0 0035E7B0  3B C4 00 00 */	addi r30, r4, 0
/* 80361BD4 0035E7B4  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80361BD8 0035E7B8  41 82 00 0C */	beq lbl_80361BE4
/* 80361BDC 0035E7BC  38 00 00 01 */	li r0, 1
/* 80361BE0 0035E7C0  48 00 00 08 */	b lbl_80361BE8
lbl_80361BE4:
/* 80361BE4 0035E7C4  38 00 00 00 */	li r0, 0
lbl_80361BE8:
/* 80361BE8 0035E7C8  2C 05 00 00 */	cmpwi r5, 0
/* 80361BEC 0035E7CC  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 80361BF0 0035E7D0  41 82 00 0C */	beq lbl_80361BFC
/* 80361BF4 0035E7D4  38 60 00 01 */	li r3, 1
/* 80361BF8 0035E7D8  48 00 00 08 */	b lbl_80361C00
lbl_80361BFC:
/* 80361BFC 0035E7DC  38 60 00 00 */	li r3, 0
lbl_80361C00:
/* 80361C00 0035E7E0  88 0D BF 34 */	lbz r0, lbl_804D75D4@sda21(r13)
/* 80361C04 0035E7E4  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80361C08 0035E7E8  7C 00 E8 00 */	cmpw r0, r29
/* 80361C0C 0035E7EC  40 82 00 1C */	bne lbl_80361C28
/* 80361C10 0035E7F0  80 0D BF 38 */	lwz r0, lbl_804D75D8@sda21(r13)
/* 80361C14 0035E7F4  7C 00 F0 00 */	cmpw r0, r30
/* 80361C18 0035E7F8  40 82 00 10 */	bne lbl_80361C28
/* 80361C1C 0035E7FC  88 0D BF 3C */	lbz r0, lbl_804D75DC@sda21(r13)
/* 80361C20 0035E800  7C 00 F8 00 */	cmpw r0, r31
/* 80361C24 0035E804  41 82 00 20 */	beq lbl_80361C44
lbl_80361C28:
/* 80361C28 0035E808  38 7D 00 00 */	addi r3, r29, 0
/* 80361C2C 0035E80C  38 9E 00 00 */	addi r4, r30, 0
/* 80361C30 0035E810  38 BF 00 00 */	addi r5, r31, 0
/* 80361C34 0035E814  4B FD F1 8D */	bl func_80340DC0
/* 80361C38 0035E818  9B AD BF 34 */	stb r29, lbl_804D75D4@sda21(r13)
/* 80361C3C 0035E81C  93 CD BF 38 */	stw r30, lbl_804D75D8@sda21(r13)
/* 80361C40 0035E820  9B ED BF 3C */	stb r31, lbl_804D75DC@sda21(r13)
lbl_80361C44:
/* 80361C44 0035E824  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80361C48 0035E828  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80361C4C 0035E82C  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80361C50 0035E830  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80361C54 0035E834  38 21 00 28 */	addi r1, r1, 0x28
/* 80361C58 0035E838  7C 08 03 A6 */	mtlr r0
/* 80361C5C 0035E83C  4E 80 00 20 */	blr 

.global func_80361C60
func_80361C60:
/* 80361C60 0035E840  7C 08 02 A6 */	mflr r0
/* 80361C64 0035E844  90 01 00 04 */	stw r0, 4(r1)
/* 80361C68 0035E848  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361C6C 0035E84C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361C70 0035E850  3B E4 00 00 */	addi r31, r4, 0
/* 80361C74 0035E854  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80361C78 0035E858  7C 7E 1B 78 */	mr r30, r3
/* 80361C7C 0035E85C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80361C80 0035E860  88 6D BF 18 */	lbz r3, lbl_804D75B8@sda21(r13)
/* 80361C84 0035E864  7C 03 00 40 */	cmplw r3, r0
/* 80361C88 0035E868  40 82 00 10 */	bne lbl_80361C98
/* 80361C8C 0035E86C  80 0D BF 1C */	lwz r0, lbl_804D75BC@sda21(r13)
/* 80361C90 0035E870  7C 00 F8 00 */	cmpw r0, r31
/* 80361C94 0035E874  41 82 00 18 */	beq lbl_80361CAC
lbl_80361C98:
/* 80361C98 0035E878  38 7E 00 00 */	addi r3, r30, 0
/* 80361C9C 0035E87C  38 9F 00 00 */	addi r4, r31, 0
/* 80361CA0 0035E880  4B FD B5 F9 */	bl func_8033D298
/* 80361CA4 0035E884  9B CD BF 18 */	stb r30, lbl_804D75B8@sda21(r13)
/* 80361CA8 0035E888  93 ED BF 1C */	stw r31, lbl_804D75BC@sda21(r13)
lbl_80361CAC:
/* 80361CAC 0035E88C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361CB0 0035E890  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361CB4 0035E894  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80361CB8 0035E898  38 21 00 18 */	addi r1, r1, 0x18
/* 80361CBC 0035E89C  7C 08 03 A6 */	mtlr r0
/* 80361CC0 0035E8A0  4E 80 00 20 */	blr 

.global func_80361CC4
func_80361CC4:
/* 80361CC4 0035E8A4  7C 08 02 A6 */	mflr r0
/* 80361CC8 0035E8A8  90 01 00 04 */	stw r0, 4(r1)
/* 80361CCC 0035E8AC  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80361CD0 0035E8B0  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 80361CD4 0035E8B4  3B 63 00 00 */	addi r27, r3, 0
/* 80361CD8 0035E8B8  3B 84 00 00 */	addi r28, r4, 0
/* 80361CDC 0035E8BC  3B A5 00 00 */	addi r29, r5, 0
/* 80361CE0 0035E8C0  3B C6 00 00 */	addi r30, r6, 0
/* 80361CE4 0035E8C4  3B E7 00 00 */	addi r31, r7, 0
/* 80361CE8 0035E8C8  80 0D BF 40 */	lwz r0, lbl_804D75E0@sda21(r13)
/* 80361CEC 0035E8CC  7C 00 D8 00 */	cmpw r0, r27
/* 80361CF0 0035E8D0  40 82 00 3C */	bne lbl_80361D2C
/* 80361CF4 0035E8D4  88 6D BF 44 */	lbz r3, lbl_804D75E4@sda21(r13)
/* 80361CF8 0035E8D8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 80361CFC 0035E8DC  7C 03 00 40 */	cmplw r3, r0
/* 80361D00 0035E8E0  40 82 00 2C */	bne lbl_80361D2C
/* 80361D04 0035E8E4  80 0D BF 48 */	lwz r0, lbl_804D75E8@sda21(r13)
/* 80361D08 0035E8E8  7C 00 E8 00 */	cmpw r0, r29
/* 80361D0C 0035E8EC  40 82 00 20 */	bne lbl_80361D2C
/* 80361D10 0035E8F0  80 0D BF 4C */	lwz r0, lbl_804D75EC@sda21(r13)
/* 80361D14 0035E8F4  7C 00 F0 00 */	cmpw r0, r30
/* 80361D18 0035E8F8  40 82 00 14 */	bne lbl_80361D2C
/* 80361D1C 0035E8FC  88 6D BF 50 */	lbz r3, lbl_804D75F0@sda21(r13)
/* 80361D20 0035E900  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80361D24 0035E904  7C 03 00 40 */	cmplw r3, r0
/* 80361D28 0035E908  41 82 00 30 */	beq lbl_80361D58
lbl_80361D2C:
/* 80361D2C 0035E90C  38 7B 00 00 */	addi r3, r27, 0
/* 80361D30 0035E910  38 9C 00 00 */	addi r4, r28, 0
/* 80361D34 0035E914  38 BD 00 00 */	addi r5, r29, 0
/* 80361D38 0035E918  38 DE 00 00 */	addi r6, r30, 0
/* 80361D3C 0035E91C  38 FF 00 00 */	addi r7, r31, 0
/* 80361D40 0035E920  4B FD E7 DD */	bl func_8034051C
/* 80361D44 0035E924  93 6D BF 40 */	stw r27, lbl_804D75E0@sda21(r13)
/* 80361D48 0035E928  9B 8D BF 44 */	stb r28, lbl_804D75E4@sda21(r13)
/* 80361D4C 0035E92C  93 AD BF 48 */	stw r29, lbl_804D75E8@sda21(r13)
/* 80361D50 0035E930  93 CD BF 4C */	stw r30, lbl_804D75EC@sda21(r13)
/* 80361D54 0035E934  9B ED BF 50 */	stb r31, lbl_804D75F0@sda21(r13)
lbl_80361D58:
/* 80361D58 0035E938  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 80361D5C 0035E93C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80361D60 0035E940  38 21 00 38 */	addi r1, r1, 0x38
/* 80361D64 0035E944  7C 08 03 A6 */	mtlr r0
/* 80361D68 0035E948  4E 80 00 20 */	blr 

.global func_80361D6C
func_80361D6C:
/* 80361D6C 0035E94C  7C 08 02 A6 */	mflr r0
/* 80361D70 0035E950  2C 03 00 00 */	cmpwi r3, 0
/* 80361D74 0035E954  90 01 00 04 */	stw r0, 4(r1)
/* 80361D78 0035E958  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361D7C 0035E95C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361D80 0035E960  41 82 00 0C */	beq lbl_80361D8C
/* 80361D84 0035E964  38 60 00 01 */	li r3, 1
/* 80361D88 0035E968  48 00 00 08 */	b lbl_80361D90
lbl_80361D8C:
/* 80361D8C 0035E96C  38 60 00 00 */	li r3, 0
lbl_80361D90:
/* 80361D90 0035E970  88 0D BF 51 */	lbz r0, lbl_804D75F1@sda21(r13)
/* 80361D94 0035E974  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80361D98 0035E978  7C 00 F8 00 */	cmpw r0, r31
/* 80361D9C 0035E97C  41 82 00 10 */	beq lbl_80361DAC
/* 80361DA0 0035E980  7F E3 FB 78 */	mr r3, r31
/* 80361DA4 0035E984  4B FD EF 9D */	bl func_80340D40
/* 80361DA8 0035E988  9B ED BF 51 */	stb r31, lbl_804D75F1@sda21(r13)
lbl_80361DAC:
/* 80361DAC 0035E98C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361DB0 0035E990  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361DB4 0035E994  38 21 00 18 */	addi r1, r1, 0x18
/* 80361DB8 0035E998  7C 08 03 A6 */	mtlr r0
/* 80361DBC 0035E99C  4E 80 00 20 */	blr 

.global func_80361DC0
func_80361DC0:
/* 80361DC0 0035E9A0  7C 08 02 A6 */	mflr r0
/* 80361DC4 0035E9A4  2C 03 00 00 */	cmpwi r3, 0
/* 80361DC8 0035E9A8  90 01 00 04 */	stw r0, 4(r1)
/* 80361DCC 0035E9AC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361DD0 0035E9B0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361DD4 0035E9B4  41 82 00 0C */	beq lbl_80361DE0
/* 80361DD8 0035E9B8  38 60 00 01 */	li r3, 1
/* 80361DDC 0035E9BC  48 00 00 08 */	b lbl_80361DE4
lbl_80361DE0:
/* 80361DE0 0035E9C0  38 60 00 00 */	li r3, 0
lbl_80361DE4:
/* 80361DE4 0035E9C4  88 0D BF 52 */	lbz r0, lbl_804D75F2@sda21(r13)
/* 80361DE8 0035E9C8  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80361DEC 0035E9CC  7C 00 F8 00 */	cmpw r0, r31
/* 80361DF0 0035E9D0  41 82 00 10 */	beq lbl_80361E00
/* 80361DF4 0035E9D4  7F E3 FB 78 */	mr r3, r31
/* 80361DF8 0035E9D8  4B FD EF 89 */	bl func_80340D80
/* 80361DFC 0035E9DC  9B ED BF 52 */	stb r31, lbl_804D75F2@sda21(r13)
lbl_80361E00:
/* 80361E00 0035E9E0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361E04 0035E9E4  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361E08 0035E9E8  38 21 00 18 */	addi r1, r1, 0x18
/* 80361E0C 0035E9EC  7C 08 03 A6 */	mtlr r0
/* 80361E10 0035E9F0  4E 80 00 20 */	blr 

.global func_80361E14
func_80361E14:
/* 80361E14 0035E9F4  7C 08 02 A6 */	mflr r0
/* 80361E18 0035E9F8  2C 03 00 00 */	cmpwi r3, 0
/* 80361E1C 0035E9FC  90 01 00 04 */	stw r0, 4(r1)
/* 80361E20 0035EA00  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361E24 0035EA04  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361E28 0035EA08  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80361E2C 0035EA0C  3B C4 00 00 */	addi r30, r4, 0
/* 80361E30 0035EA10  41 82 00 0C */	beq lbl_80361E3C
/* 80361E34 0035EA14  38 60 00 01 */	li r3, 1
/* 80361E38 0035EA18  48 00 00 08 */	b lbl_80361E40
lbl_80361E3C:
/* 80361E3C 0035EA1C  38 60 00 00 */	li r3, 0
lbl_80361E40:
/* 80361E40 0035EA20  88 0D BF 53 */	lbz r0, lbl_804D75F3@sda21(r13)
/* 80361E44 0035EA24  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80361E48 0035EA28  7C 00 F8 00 */	cmpw r0, r31
/* 80361E4C 0035EA2C  40 82 00 14 */	bne lbl_80361E60
/* 80361E50 0035EA30  88 6D BF 54 */	lbz r3, lbl_804D75F4@sda21(r13)
/* 80361E54 0035EA34  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80361E58 0035EA38  7C 03 00 40 */	cmplw r3, r0
/* 80361E5C 0035EA3C  41 82 00 18 */	beq lbl_80361E74
lbl_80361E60:
/* 80361E60 0035EA40  38 7F 00 00 */	addi r3, r31, 0
/* 80361E64 0035EA44  38 9E 00 00 */	addi r4, r30, 0
/* 80361E68 0035EA48  4B FD F1 61 */	bl func_80340FC8
/* 80361E6C 0035EA4C  9B ED BF 53 */	stb r31, lbl_804D75F3@sda21(r13)
/* 80361E70 0035EA50  9B CD BF 54 */	stb r30, lbl_804D75F4@sda21(r13)
lbl_80361E74:
/* 80361E74 0035EA54  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361E78 0035EA58  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361E7C 0035EA5C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80361E80 0035EA60  38 21 00 18 */	addi r1, r1, 0x18
/* 80361E84 0035EA64  7C 08 03 A6 */	mtlr r0
/* 80361E88 0035EA68  4E 80 00 20 */	blr 

.global func_80361E8C
func_80361E8C:
/* 80361E8C 0035EA6C  7C 08 02 A6 */	mflr r0
/* 80361E90 0035EA70  2C 03 00 00 */	cmpwi r3, 0
/* 80361E94 0035EA74  90 01 00 04 */	stw r0, 4(r1)
/* 80361E98 0035EA78  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361E9C 0035EA7C  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361EA0 0035EA80  41 82 00 0C */	beq lbl_80361EAC
/* 80361EA4 0035EA84  38 60 00 01 */	li r3, 1
/* 80361EA8 0035EA88  48 00 00 08 */	b lbl_80361EB0
lbl_80361EAC:
/* 80361EAC 0035EA8C  38 60 00 00 */	li r3, 0
lbl_80361EB0:
/* 80361EB0 0035EA90  88 0D BF 55 */	lbz r0, lbl_804D75F5@sda21(r13)
/* 80361EB4 0035EA94  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80361EB8 0035EA98  7C 00 F8 00 */	cmpw r0, r31
/* 80361EBC 0035EA9C  41 82 00 10 */	beq lbl_80361ECC
/* 80361EC0 0035EAA0  7F E3 FB 78 */	mr r3, r31
/* 80361EC4 0035EAA4  4B FD EF 75 */	bl func_80340E38
/* 80361EC8 0035EAA8  9B ED BF 55 */	stb r31, lbl_804D75F5@sda21(r13)
lbl_80361ECC:
/* 80361ECC 0035EAAC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361ED0 0035EAB0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361ED4 0035EAB4  38 21 00 18 */	addi r1, r1, 0x18
/* 80361ED8 0035EAB8  7C 08 03 A6 */	mtlr r0
/* 80361EDC 0035EABC  4E 80 00 20 */	blr 

.global func_80361EE0
func_80361EE0:
/* 80361EE0 0035EAC0  7C 08 02 A6 */	mflr r0
/* 80361EE4 0035EAC4  2C 03 00 00 */	cmpwi r3, 0
/* 80361EE8 0035EAC8  90 01 00 04 */	stw r0, 4(r1)
/* 80361EEC 0035EACC  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361EF0 0035EAD0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361EF4 0035EAD4  41 82 00 0C */	beq lbl_80361F00
/* 80361EF8 0035EAD8  38 60 00 01 */	li r3, 1
/* 80361EFC 0035EADC  48 00 00 08 */	b lbl_80361F04
lbl_80361F00:
/* 80361F00 0035EAE0  38 60 00 00 */	li r3, 0
lbl_80361F04:
/* 80361F04 0035EAE4  88 0D BF 56 */	lbz r0, lbl_804D75F6@sda21(r13)
/* 80361F08 0035EAE8  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 80361F0C 0035EAEC  7C 00 F8 00 */	cmpw r0, r31
/* 80361F10 0035EAF0  41 82 00 10 */	beq lbl_80361F20
/* 80361F14 0035EAF4  7F E3 FB 78 */	mr r3, r31
/* 80361F18 0035EAF8  4B FD F0 71 */	bl func_80340F88
/* 80361F1C 0035EAFC  9B ED BF 56 */	stb r31, lbl_804D75F6@sda21(r13)
lbl_80361F20:
/* 80361F20 0035EB00  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80361F24 0035EB04  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80361F28 0035EB08  38 21 00 18 */	addi r1, r1, 0x18
/* 80361F2C 0035EB0C  7C 08 03 A6 */	mtlr r0
/* 80361F30 0035EB10  4E 80 00 20 */	blr 
.global lbl_80361F34
lbl_80361F34:
/* 80361F34 0035EB14  38 60 00 00 */	li r3, 0
/* 80361F38 0035EB18  38 00 FF FF */	li r0, -1
/* 80361F3C 0035EB1C  98 6D BF 10 */	stb r3, lbl_804D75B0@sda21(r13)
/* 80361F40 0035EB20  98 6D BF 18 */	stb r3, lbl_804D75B8@sda21(r13)
/* 80361F44 0035EB24  90 0D BF 20 */	stw r0, lbl_804D75C0@sda21(r13)
/* 80361F48 0035EB28  4E 80 00 20 */	blr 
.global lbl_80361F4C
lbl_80361F4C:
/* 80361F4C 0035EB2C  7C 08 02 A6 */	mflr r0
/* 80361F50 0035EB30  90 01 00 04 */	stw r0, 4(r1)
/* 80361F54 0035EB34  94 21 FF F8 */	stwu r1, -8(r1)
/* 80361F58 0035EB38  48 00 A2 ED */	bl func_8036C244
/* 80361F5C 0035EB3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80361F60 0035EB40  38 21 00 08 */	addi r1, r1, 8
/* 80361F64 0035EB44  7C 08 03 A6 */	mtlr r0
/* 80361F68 0035EB48  4E 80 00 20 */	blr 
.global lbl_80361F6C
lbl_80361F6C:
/* 80361F6C 0035EB4C  38 80 FF FF */	li r4, -1
/* 80361F70 0035EB50  38 60 00 FF */	li r3, 0xff
/* 80361F74 0035EB54  90 8D BF 24 */	stw r4, lbl_804D75C4@sda21(r13)
/* 80361F78 0035EB58  38 00 00 00 */	li r0, 0
/* 80361F7C 0035EB5C  90 8D BF 28 */	stw r4, lbl_804D75C8@sda21(r13)
/* 80361F80 0035EB60  90 8D BF 2C */	stw r4, lbl_804D75CC@sda21(r13)
/* 80361F84 0035EB64  90 8D BF 30 */	stw r4, lbl_804D75D0@sda21(r13)
/* 80361F88 0035EB68  98 6D BF 34 */	stb r3, lbl_804D75D4@sda21(r13)
/* 80361F8C 0035EB6C  90 8D BF 38 */	stw r4, lbl_804D75D8@sda21(r13)
/* 80361F90 0035EB70  98 6D BF 3C */	stb r3, lbl_804D75DC@sda21(r13)
/* 80361F94 0035EB74  90 8D BF 40 */	stw r4, lbl_804D75E0@sda21(r13)
/* 80361F98 0035EB78  98 0D BF 44 */	stb r0, lbl_804D75E4@sda21(r13)
/* 80361F9C 0035EB7C  90 8D BF 48 */	stw r4, lbl_804D75E8@sda21(r13)
/* 80361FA0 0035EB80  90 8D BF 4C */	stw r4, lbl_804D75EC@sda21(r13)
/* 80361FA4 0035EB84  98 0D BF 50 */	stb r0, lbl_804D75F0@sda21(r13)
/* 80361FA8 0035EB88  98 6D BF 51 */	stb r3, lbl_804D75F1@sda21(r13)
/* 80361FAC 0035EB8C  98 6D BF 52 */	stb r3, lbl_804D75F2@sda21(r13)
/* 80361FB0 0035EB90  98 6D BF 53 */	stb r3, lbl_804D75F3@sda21(r13)
/* 80361FB4 0035EB94  98 0D BF 54 */	stb r0, lbl_804D75F4@sda21(r13)
/* 80361FB8 0035EB98  98 6D BF 55 */	stb r3, lbl_804D75F5@sda21(r13)
/* 80361FBC 0035EB9C  98 6D BF 56 */	stb r3, lbl_804D75F6@sda21(r13)
/* 80361FC0 0035EBA0  4E 80 00 20 */	blr 

.global func_80361FC4
func_80361FC4:
/* 80361FC4 0035EBA4  7C 08 02 A6 */	mflr r0
/* 80361FC8 0035EBA8  3C 80 80 40 */	lis r4, lbl_80405B58@ha
/* 80361FCC 0035EBAC  90 01 00 04 */	stw r0, 4(r1)
/* 80361FD0 0035EBB0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80361FD4 0035EBB4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80361FD8 0035EBB8  3B E4 5B 58 */	addi r31, r4, lbl_80405B58@l
/* 80361FDC 0035EBBC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80361FE0 0035EBC0  3B C3 00 00 */	addi r30, r3, 0
/* 80361FE4 0035EBC4  48 00 00 1C */	b lbl_80362000
lbl_80361FE8:
/* 80361FE8 0035EBC8  7F C0 00 39 */	and. r0, r30, r0
/* 80361FEC 0035EBCC  41 82 00 10 */	beq lbl_80361FFC
/* 80361FF0 0035EBD0  81 9F 00 04 */	lwz r12, 4(r31)
/* 80361FF4 0035EBD4  7D 88 03 A6 */	mtlr r12
/* 80361FF8 0035EBD8  4E 80 00 21 */	blrl 
lbl_80361FFC:
/* 80361FFC 0035EBDC  3B FF 00 08 */	addi r31, r31, 8
lbl_80362000:
/* 80362000 0035EBE0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80362004 0035EBE4  2C 00 00 00 */	cmpwi r0, 0
/* 80362008 0035EBE8  40 82 FF E0 */	bne lbl_80361FE8
/* 8036200C 0035EBEC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80362010 0035EBF0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80362014 0035EBF4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80362018 0035EBF8  38 21 00 18 */	addi r1, r1, 0x18
/* 8036201C 0035EBFC  7C 08 03 A6 */	mtlr r0
/* 80362020 0035EC00  4E 80 00 20 */	blr 


.section .bss, "wa"

.global lbl_804C07E0
lbl_804C07E0:
	.skip 0x18
