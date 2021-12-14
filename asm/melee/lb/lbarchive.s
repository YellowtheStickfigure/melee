.include "macros.inc"

.section .text  # 0x80016A54 - 0x800174B8

.global func_80016A54
func_80016A54:
/* 80016A54 00013634  7C 08 02 A6 */	mflr r0
/* 80016A58 00013638  90 01 00 04 */	stw r0, 4(r1)
/* 80016A5C 0001363C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80016A60 00013640  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80016A64 00013644  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80016A68 00013648  3B C0 00 00 */	li r30, 0
/* 80016A6C 0001364C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80016A70 00013650  3B A3 00 00 */	addi r29, r3, 0
/* 80016A74 00013654  48 36 97 71 */	bl HSD_ArchiveParse
/* 80016A78 00013658  2C 03 FF FF */	cmpwi r3, -1
/* 80016A7C 0001365C  40 82 00 28 */	bne lbl_80016AA4
/* 80016A80 00013660  3C 60 80 3C */	lis r3, lbl_803BA588@ha
/* 80016A84 00013664  4C C6 31 82 */	crclr 6
/* 80016A88 00013668  38 63 A5 88 */	addi r3, r3, lbl_803BA588@l
/* 80016A8C 0001366C  48 32 EC 1D */	bl OSReport
/* 80016A90 00013670  3C 60 80 3C */	lis r3, lbl_803BA5A4@ha
/* 80016A94 00013674  38 63 A5 A4 */	addi r3, r3, lbl_803BA5A4@l
/* 80016A98 00013678  38 80 00 49 */	li r4, 0x49
/* 80016A9C 0001367C  38 AD 81 20 */	addi r5, r13, lbl_804D37C0@sda21
/* 80016AA0 00013680  48 37 17 81 */	bl __assert
lbl_80016AA4:
/* 80016AA4 00013684  38 9E 00 00 */	addi r4, r30, 0
/* 80016AA8 00013688  38 7D 00 00 */	addi r3, r29, 0
/* 80016AAC 0001368C  3B DE 00 01 */	addi r30, r30, 1
/* 80016AB0 00013690  48 36 99 4D */	bl HSD_ArchiveGetExtern
/* 80016AB4 00013694  7C 7F 1B 79 */	or. r31, r3, r3
/* 80016AB8 00013698  41 82 00 14 */	beq lbl_80016ACC
/* 80016ABC 0001369C  38 7D 00 00 */	addi r3, r29, 0
/* 80016AC0 000136A0  38 9F 00 00 */	addi r4, r31, 0
/* 80016AC4 000136A4  38 A0 00 00 */	li r5, 0
/* 80016AC8 000136A8  48 36 99 6D */	bl HSD_ArchiveLocateExtern
lbl_80016ACC:
/* 80016ACC 000136AC  28 1F 00 00 */	cmplwi r31, 0
/* 80016AD0 000136B0  40 82 FF D4 */	bne lbl_80016AA4
/* 80016AD4 000136B4  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80016AD8 000136B8  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80016ADC 000136BC  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80016AE0 000136C0  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80016AE4 000136C4  38 21 00 28 */	addi r1, r1, 0x28
/* 80016AE8 000136C8  7C 08 03 A6 */	mtlr r0
/* 80016AEC 000136CC  4E 80 00 20 */	blr 

.global func_80016AF0
func_80016AF0:
/* 80016AF0 000136D0  7C 08 02 A6 */	mflr r0
/* 80016AF4 000136D4  90 01 00 04 */	stw r0, 4(r1)
/* 80016AF8 000136D8  94 21 FF 68 */	stwu r1, -0x98(r1)
/* 80016AFC 000136DC  BF 61 00 84 */	stmw r27, 0x84(r1)
/* 80016B00 000136E0  40 86 00 24 */	bne cr1, lbl_80016B24
/* 80016B04 000136E4  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80016B08 000136E8  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80016B0C 000136EC  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80016B10 000136F0  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80016B14 000136F4  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80016B18 000136F8  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80016B1C 000136FC  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80016B20 00013700  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80016B24:
/* 80016B24 00013704  90 61 00 08 */	stw r3, 8(r1)
/* 80016B28 00013708  3C 00 02 00 */	lis r0, 0x200
/* 80016B2C 0001370C  3B 63 00 00 */	addi r27, r3, 0
/* 80016B30 00013710  90 81 00 0C */	stw r4, 0xc(r1)
/* 80016B34 00013714  3B 84 00 00 */	addi r28, r4, 0
/* 80016B38 00013718  3B C0 00 00 */	li r30, 0
/* 80016B3C 0001371C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80016B40 00013720  3C A0 80 3C */	lis r5, lbl_803BA5B0@ha
/* 80016B44 00013724  3B E5 A5 B0 */	addi r31, r5, lbl_803BA5B0@l
/* 80016B48 00013728  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80016B4C 0001372C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80016B50 00013730  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80016B54 00013734  91 21 00 20 */	stw r9, 0x20(r1)
/* 80016B58 00013738  91 41 00 24 */	stw r10, 0x24(r1)
/* 80016B5C 0001373C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80016B60 00013740  38 01 00 A0 */	addi r0, r1, 0xa0
/* 80016B64 00013744  90 01 00 74 */	stw r0, 0x74(r1)
/* 80016B68 00013748  38 01 00 08 */	addi r0, r1, 8
/* 80016B6C 0001374C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80016B70 00013750  48 00 00 54 */	b lbl_80016BC4
lbl_80016B74:
/* 80016B74 00013754  38 61 00 70 */	addi r3, r1, 0x70
/* 80016B78 00013758  38 80 00 01 */	li r4, 1
/* 80016B7C 0001375C  48 30 BA A5 */	bl __va_arg
/* 80016B80 00013760  83 A3 00 00 */	lwz r29, 0(r3)
/* 80016B84 00013764  7F 63 DB 78 */	mr r3, r27
/* 80016B88 00013768  93 DC 00 00 */	stw r30, 0(r28)
/* 80016B8C 0001376C  7F A4 EB 78 */	mr r4, r29
/* 80016B90 00013770  48 36 97 C9 */	bl HSD_ArchiveGetPublicAddress
/* 80016B94 00013774  90 7C 00 00 */	stw r3, 0(r28)
/* 80016B98 00013778  80 1C 00 00 */	lwz r0, 0(r28)
/* 80016B9C 0001377C  28 00 00 00 */	cmplwi r0, 0
/* 80016BA0 00013780  40 82 00 14 */	bne lbl_80016BB4
/* 80016BA4 00013784  38 7F 00 00 */	addi r3, r31, 0
/* 80016BA8 00013788  4C C6 31 82 */	crclr 6
/* 80016BAC 0001378C  38 9D 00 00 */	addi r4, r29, 0
/* 80016BB0 00013790  48 32 EA F9 */	bl OSReport
lbl_80016BB4:
/* 80016BB4 00013794  38 61 00 70 */	addi r3, r1, 0x70
/* 80016BB8 00013798  38 80 00 01 */	li r4, 1
/* 80016BBC 0001379C  48 30 BA 65 */	bl __va_arg
/* 80016BC0 000137A0  83 83 00 00 */	lwz r28, 0(r3)
lbl_80016BC4:
/* 80016BC4 000137A4  28 1C 00 00 */	cmplwi r28, 0
/* 80016BC8 000137A8  40 82 FF AC */	bne lbl_80016B74
/* 80016BCC 000137AC  BB 61 00 84 */	lmw r27, 0x84(r1)
/* 80016BD0 000137B0  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80016BD4 000137B4  38 21 00 98 */	addi r1, r1, 0x98
/* 80016BD8 000137B8  7C 08 03 A6 */	mtlr r0
/* 80016BDC 000137BC  4E 80 00 20 */	blr 

.global func_80016BE0
func_80016BE0:
/* 80016BE0 000137C0  7C 08 02 A6 */	mflr r0
/* 80016BE4 000137C4  90 01 00 04 */	stw r0, 4(r1)
/* 80016BE8 000137C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80016BEC 000137CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80016BF0 000137D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80016BF4 000137D4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80016BF8 000137D8  7C 7D 1B 78 */	mr r29, r3
/* 80016BFC 000137DC  4B FF F7 DD */	bl func_800163D8
/* 80016C00 000137E0  38 03 00 1F */	addi r0, r3, 0x1f
/* 80016C04 000137E4  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80016C08 000137E8  38 60 00 00 */	li r3, 0
/* 80016C0C 000137EC  4B FF EF C5 */	bl func_80015BD0
/* 80016C10 000137F0  3B E3 00 00 */	addi r31, r3, 0
/* 80016C14 000137F4  38 60 00 00 */	li r3, 0
/* 80016C18 000137F8  38 80 00 44 */	li r4, 0x44
/* 80016C1C 000137FC  4B FF EF B5 */	bl func_80015BD0
/* 80016C20 00013800  3B C3 00 00 */	addi r30, r3, 0
/* 80016C24 00013804  38 7D 00 00 */	addi r3, r29, 0
/* 80016C28 00013808  38 9F 00 00 */	addi r4, r31, 0
/* 80016C2C 0001380C  38 A1 00 0C */	addi r5, r1, 0xc
/* 80016C30 00013810  4B FF FA 5D */	bl func_8001668C
/* 80016C34 00013814  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80016C38 00013818  38 7E 00 00 */	addi r3, r30, 0
/* 80016C3C 0001381C  38 9F 00 00 */	addi r4, r31, 0
/* 80016C40 00013820  4B FF FE 15 */	bl func_80016A54
/* 80016C44 00013824  7F C3 F3 78 */	mr r3, r30
/* 80016C48 00013828  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80016C4C 0001382C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80016C50 00013830  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80016C54 00013834  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80016C58 00013838  38 21 00 20 */	addi r1, r1, 0x20
/* 80016C5C 0001383C  7C 08 03 A6 */	mtlr r0
/* 80016C60 00013840  4E 80 00 20 */	blr 

.global func_80016C64
func_80016C64:
/* 80016C64 00013844  7C 08 02 A6 */	mflr r0
/* 80016C68 00013848  90 01 00 04 */	stw r0, 4(r1)
/* 80016C6C 0001384C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80016C70 00013850  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 80016C74 00013854  40 86 00 24 */	bne cr1, lbl_80016C98
/* 80016C78 00013858  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80016C7C 0001385C  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80016C80 00013860  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80016C84 00013864  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80016C88 00013868  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80016C8C 0001386C  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80016C90 00013870  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80016C94 00013874  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80016C98:
/* 80016C98 00013878  90 61 00 08 */	stw r3, 8(r1)
/* 80016C9C 0001387C  3C 00 02 00 */	lis r0, 0x200
/* 80016CA0 00013880  3B C3 00 00 */	addi r30, r3, 0
/* 80016CA4 00013884  90 81 00 0C */	stw r4, 0xc(r1)
/* 80016CA8 00013888  3B A4 00 00 */	addi r29, r4, 0
/* 80016CAC 0001388C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80016CB0 00013890  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80016CB4 00013894  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80016CB8 00013898  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80016CBC 0001389C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80016CC0 000138A0  91 41 00 24 */	stw r10, 0x24(r1)
/* 80016CC4 000138A4  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80016CC8 000138A8  38 01 00 A8 */	addi r0, r1, 0xa8
/* 80016CCC 000138AC  90 01 00 80 */	stw r0, 0x80(r1)
/* 80016CD0 000138B0  38 01 00 08 */	addi r0, r1, 8
/* 80016CD4 000138B4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80016CD8 000138B8  4B FF F7 01 */	bl func_800163D8
/* 80016CDC 000138BC  38 03 00 1F */	addi r0, r3, 0x1f
/* 80016CE0 000138C0  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80016CE4 000138C4  38 60 00 00 */	li r3, 0
/* 80016CE8 000138C8  4B FF EE E9 */	bl func_80015BD0
/* 80016CEC 000138CC  3B 83 00 00 */	addi r28, r3, 0
/* 80016CF0 000138D0  38 60 00 00 */	li r3, 0
/* 80016CF4 000138D4  38 80 00 44 */	li r4, 0x44
/* 80016CF8 000138D8  4B FF EE D9 */	bl func_80015BD0
/* 80016CFC 000138DC  3B 63 00 00 */	addi r27, r3, 0
/* 80016D00 000138E0  38 7E 00 00 */	addi r3, r30, 0
/* 80016D04 000138E4  38 9C 00 00 */	addi r4, r28, 0
/* 80016D08 000138E8  38 A1 00 78 */	addi r5, r1, 0x78
/* 80016D0C 000138EC  4B FF F9 81 */	bl func_8001668C
/* 80016D10 000138F0  80 A1 00 78 */	lwz r5, 0x78(r1)
/* 80016D14 000138F4  38 7B 00 00 */	addi r3, r27, 0
/* 80016D18 000138F8  38 9C 00 00 */	addi r4, r28, 0
/* 80016D1C 000138FC  4B FF FD 39 */	bl func_80016A54
/* 80016D20 00013900  3C 80 80 3C */	lis r4, lbl_803BA5B0@ha
/* 80016D24 00013904  3C 60 80 3C */	lis r3, lbl_803BA5A4@ha
/* 80016D28 00013908  3B 9D 00 00 */	addi r28, r29, 0
/* 80016D2C 0001390C  3B C4 A5 B0 */	addi r30, r4, lbl_803BA5B0@l
/* 80016D30 00013910  3B E3 A5 A4 */	addi r31, r3, lbl_803BA5A4@l
/* 80016D34 00013914  48 00 00 68 */	b lbl_80016D9C
lbl_80016D38:
/* 80016D38 00013918  38 61 00 7C */	addi r3, r1, 0x7c
/* 80016D3C 0001391C  38 80 00 01 */	li r4, 1
/* 80016D40 00013920  48 30 B8 E1 */	bl __va_arg
/* 80016D44 00013924  83 A3 00 00 */	lwz r29, 0(r3)
/* 80016D48 00013928  38 00 00 00 */	li r0, 0
/* 80016D4C 0001392C  38 7B 00 00 */	addi r3, r27, 0
/* 80016D50 00013930  90 1C 00 00 */	stw r0, 0(r28)
/* 80016D54 00013934  7F A4 EB 78 */	mr r4, r29
/* 80016D58 00013938  48 36 96 01 */	bl HSD_ArchiveGetPublicAddress
/* 80016D5C 0001393C  90 7C 00 00 */	stw r3, 0(r28)
/* 80016D60 00013940  80 1C 00 00 */	lwz r0, 0(r28)
/* 80016D64 00013944  28 00 00 00 */	cmplwi r0, 0
/* 80016D68 00013948  40 82 00 24 */	bne lbl_80016D8C
/* 80016D6C 0001394C  38 7E 00 00 */	addi r3, r30, 0
/* 80016D70 00013950  4C C6 31 82 */	crclr 6
/* 80016D74 00013954  38 9D 00 00 */	addi r4, r29, 0
/* 80016D78 00013958  48 32 E9 31 */	bl OSReport
/* 80016D7C 0001395C  38 7F 00 00 */	addi r3, r31, 0
/* 80016D80 00013960  38 80 00 70 */	li r4, 0x70
/* 80016D84 00013964  38 AD 81 20 */	addi r5, r13, lbl_804D37C0@sda21
/* 80016D88 00013968  48 37 14 99 */	bl __assert
lbl_80016D8C:
/* 80016D8C 0001396C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80016D90 00013970  38 80 00 01 */	li r4, 1
/* 80016D94 00013974  48 30 B8 8D */	bl __va_arg
/* 80016D98 00013978  83 83 00 00 */	lwz r28, 0(r3)
lbl_80016D9C:
/* 80016D9C 0001397C  28 1C 00 00 */	cmplwi r28, 0
/* 80016DA0 00013980  40 82 FF 98 */	bne lbl_80016D38
/* 80016DA4 00013984  7F 63 DB 78 */	mr r3, r27
/* 80016DA8 00013988  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 80016DAC 0001398C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80016DB0 00013990  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80016DB4 00013994  7C 08 03 A6 */	mtlr r0
/* 80016DB8 00013998  4E 80 00 20 */	blr 

.global func_80016DBC
func_80016DBC:
/* 80016DBC 0001399C  7C 08 02 A6 */	mflr r0
/* 80016DC0 000139A0  90 01 00 04 */	stw r0, 4(r1)
/* 80016DC4 000139A4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80016DC8 000139A8  BF 61 00 8C */	stmw r27, 0x8c(r1)
/* 80016DCC 000139AC  40 86 00 24 */	bne cr1, lbl_80016DF0
/* 80016DD0 000139B0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80016DD4 000139B4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 80016DD8 000139B8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80016DDC 000139BC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80016DE0 000139C0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80016DE4 000139C4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 80016DE8 000139C8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80016DEC 000139CC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80016DF0:
/* 80016DF0 000139D0  90 61 00 08 */	stw r3, 8(r1)
/* 80016DF4 000139D4  3C 00 02 00 */	lis r0, 0x200
/* 80016DF8 000139D8  3B C3 00 00 */	addi r30, r3, 0
/* 80016DFC 000139DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80016E00 000139E0  3B A4 00 00 */	addi r29, r4, 0
/* 80016E04 000139E4  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80016E08 000139E8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80016E0C 000139EC  90 E1 00 18 */	stw r7, 0x18(r1)
/* 80016E10 000139F0  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80016E14 000139F4  91 21 00 20 */	stw r9, 0x20(r1)
/* 80016E18 000139F8  91 41 00 24 */	stw r10, 0x24(r1)
/* 80016E1C 000139FC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80016E20 00013A00  38 01 00 A8 */	addi r0, r1, 0xa8
/* 80016E24 00013A04  90 01 00 80 */	stw r0, 0x80(r1)
/* 80016E28 00013A08  38 01 00 08 */	addi r0, r1, 8
/* 80016E2C 00013A0C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80016E30 00013A10  4B FF F5 A9 */	bl func_800163D8
/* 80016E34 00013A14  38 03 00 1F */	addi r0, r3, 0x1f
/* 80016E38 00013A18  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80016E3C 00013A1C  38 60 00 00 */	li r3, 0
/* 80016E40 00013A20  4B FF ED 91 */	bl func_80015BD0
/* 80016E44 00013A24  3B 83 00 00 */	addi r28, r3, 0
/* 80016E48 00013A28  38 60 00 00 */	li r3, 0
/* 80016E4C 00013A2C  38 80 00 44 */	li r4, 0x44
/* 80016E50 00013A30  4B FF ED 81 */	bl func_80015BD0
/* 80016E54 00013A34  3B 63 00 00 */	addi r27, r3, 0
/* 80016E58 00013A38  38 7E 00 00 */	addi r3, r30, 0
/* 80016E5C 00013A3C  38 9C 00 00 */	addi r4, r28, 0
/* 80016E60 00013A40  38 A1 00 78 */	addi r5, r1, 0x78
/* 80016E64 00013A44  4B FF F8 29 */	bl func_8001668C
/* 80016E68 00013A48  80 A1 00 78 */	lwz r5, 0x78(r1)
/* 80016E6C 00013A4C  38 7B 00 00 */	addi r3, r27, 0
/* 80016E70 00013A50  38 9C 00 00 */	addi r4, r28, 0
/* 80016E74 00013A54  4B FF FB E1 */	bl func_80016A54
/* 80016E78 00013A58  3C 60 80 3C */	lis r3, lbl_803BA5B0@ha
/* 80016E7C 00013A5C  3B 9D 00 00 */	addi r28, r29, 0
/* 80016E80 00013A60  3B E3 A5 B0 */	addi r31, r3, lbl_803BA5B0@l
/* 80016E84 00013A64  3B C0 00 00 */	li r30, 0
/* 80016E88 00013A68  48 00 00 54 */	b lbl_80016EDC
lbl_80016E8C:
/* 80016E8C 00013A6C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80016E90 00013A70  38 80 00 01 */	li r4, 1
/* 80016E94 00013A74  48 30 B7 8D */	bl __va_arg
/* 80016E98 00013A78  83 A3 00 00 */	lwz r29, 0(r3)
/* 80016E9C 00013A7C  7F 63 DB 78 */	mr r3, r27
/* 80016EA0 00013A80  93 DC 00 00 */	stw r30, 0(r28)
/* 80016EA4 00013A84  7F A4 EB 78 */	mr r4, r29
/* 80016EA8 00013A88  48 36 94 B1 */	bl HSD_ArchiveGetPublicAddress
/* 80016EAC 00013A8C  90 7C 00 00 */	stw r3, 0(r28)
/* 80016EB0 00013A90  80 1C 00 00 */	lwz r0, 0(r28)
/* 80016EB4 00013A94  28 00 00 00 */	cmplwi r0, 0
/* 80016EB8 00013A98  40 82 00 14 */	bne lbl_80016ECC
/* 80016EBC 00013A9C  38 7F 00 00 */	addi r3, r31, 0
/* 80016EC0 00013AA0  4C C6 31 82 */	crclr 6
/* 80016EC4 00013AA4  38 9D 00 00 */	addi r4, r29, 0
/* 80016EC8 00013AA8  48 32 E7 E1 */	bl OSReport
lbl_80016ECC:
/* 80016ECC 00013AAC  38 61 00 7C */	addi r3, r1, 0x7c
/* 80016ED0 00013AB0  38 80 00 01 */	li r4, 1
/* 80016ED4 00013AB4  48 30 B7 4D */	bl __va_arg
/* 80016ED8 00013AB8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80016EDC:
/* 80016EDC 00013ABC  28 1C 00 00 */	cmplwi r28, 0
/* 80016EE0 00013AC0  40 82 FF AC */	bne lbl_80016E8C
/* 80016EE4 00013AC4  7F 63 DB 78 */	mr r3, r27
/* 80016EE8 00013AC8  BB 61 00 8C */	lmw r27, 0x8c(r1)
/* 80016EEC 00013ACC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80016EF0 00013AD0  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80016EF4 00013AD4  7C 08 03 A6 */	mtlr r0
/* 80016EF8 00013AD8  4E 80 00 20 */	blr 

.global func_80016EFC
func_80016EFC:
/* 80016EFC 00013ADC  7C 08 02 A6 */	mflr r0
/* 80016F00 00013AE0  90 01 00 04 */	stw r0, 4(r1)
/* 80016F04 00013AE4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80016F08 00013AE8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80016F0C 00013AEC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80016F10 00013AF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80016F14 00013AF4  3C 60 80 3C */	lis r3, lbl_803BA588@ha
/* 80016F18 00013AF8  3B E3 A5 88 */	addi r31, r3, lbl_803BA588@l
/* 80016F1C 00013AFC  40 82 00 14 */	bne lbl_80016F30
/* 80016F20 00013B00  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80016F24 00013B04  38 80 00 FC */	li r4, 0xfc
/* 80016F28 00013B08  38 AD 81 24 */	addi r5, r13, lbl_804D37C4@sda21
/* 80016F2C 00013B0C  48 37 12 F5 */	bl __assert
lbl_80016F30:
/* 80016F30 00013B10  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80016F34 00013B14  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80016F38 00013B18  40 82 00 14 */	bne lbl_80016F4C
/* 80016F3C 00013B1C  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80016F40 00013B20  38 BF 00 40 */	addi r5, r31, 0x40
/* 80016F44 00013B24  38 80 00 FD */	li r4, 0xfd
/* 80016F48 00013B28  48 37 12 D9 */	bl __assert
lbl_80016F4C:
/* 80016F4C 00013B2C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 80016F50 00013B30  38 60 00 00 */	li r3, 0
/* 80016F54 00013B34  38 84 FF E0 */	addi r4, r4, -32
/* 80016F58 00013B38  4B FF ED 51 */	bl func_80015CA8
/* 80016F5C 00013B3C  38 60 00 00 */	li r3, 0
/* 80016F60 00013B40  38 9E 00 00 */	addi r4, r30, 0
/* 80016F64 00013B44  4B FF ED 45 */	bl func_80015CA8
/* 80016F68 00013B48  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80016F6C 00013B4C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80016F70 00013B50  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 80016F74 00013B54  38 21 00 18 */	addi r1, r1, 0x18
/* 80016F78 00013B58  7C 08 03 A6 */	mtlr r0
/* 80016F7C 00013B5C  4E 80 00 20 */	blr 

.global func_80016F80
func_80016F80:
/* 80016F80 00013B60  7C 08 02 A6 */	mflr r0
/* 80016F84 00013B64  90 01 00 04 */	stw r0, 4(r1)
/* 80016F88 00013B68  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80016F8C 00013B6C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80016F90 00013B70  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80016F94 00013B74  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80016F98 00013B78  3B A4 00 00 */	addi r29, r4, 0
/* 80016F9C 00013B7C  93 81 00 20 */	stw r28, 0x20(r1)
/* 80016FA0 00013B80  3B 83 00 00 */	addi r28, r3, 0
/* 80016FA4 00013B84  38 7D 00 00 */	addi r3, r29, 0
/* 80016FA8 00013B88  48 00 11 F5 */	bl func_8001819C
/* 80016FAC 00013B8C  28 03 00 00 */	cmplwi r3, 0
/* 80016FB0 00013B90  41 82 00 0C */	beq lbl_80016FBC
/* 80016FB4 00013B94  38 00 00 01 */	li r0, 1
/* 80016FB8 00013B98  48 00 00 58 */	b lbl_80017010
lbl_80016FBC:
/* 80016FBC 00013B9C  7F A3 EB 78 */	mr r3, r29
/* 80016FC0 00013BA0  4B FF F4 19 */	bl func_800163D8
/* 80016FC4 00013BA4  38 03 00 1F */	addi r0, r3, 0x1f
/* 80016FC8 00013BA8  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80016FCC 00013BAC  38 60 00 00 */	li r3, 0
/* 80016FD0 00013BB0  4B FF EC 01 */	bl func_80015BD0
/* 80016FD4 00013BB4  3B E3 00 00 */	addi r31, r3, 0
/* 80016FD8 00013BB8  38 60 00 00 */	li r3, 0
/* 80016FDC 00013BBC  38 80 00 44 */	li r4, 0x44
/* 80016FE0 00013BC0  4B FF EB F1 */	bl func_80015BD0
/* 80016FE4 00013BC4  3B C3 00 00 */	addi r30, r3, 0
/* 80016FE8 00013BC8  38 7D 00 00 */	addi r3, r29, 0
/* 80016FEC 00013BCC  38 9F 00 00 */	addi r4, r31, 0
/* 80016FF0 00013BD0  38 A1 00 18 */	addi r5, r1, 0x18
/* 80016FF4 00013BD4  4B FF F6 99 */	bl func_8001668C
/* 80016FF8 00013BD8  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 80016FFC 00013BDC  38 7E 00 00 */	addi r3, r30, 0
/* 80017000 00013BE0  38 9F 00 00 */	addi r4, r31, 0
/* 80017004 00013BE4  4B FF FA 51 */	bl func_80016A54
/* 80017008 00013BE8  38 7E 00 00 */	addi r3, r30, 0
/* 8001700C 00013BEC  38 00 00 00 */	li r0, 0
lbl_80017010:
/* 80017010 00013BF0  28 1C 00 00 */	cmplwi r28, 0
/* 80017014 00013BF4  41 82 00 08 */	beq lbl_8001701C
/* 80017018 00013BF8  90 7C 00 00 */	stw r3, 0(r28)
lbl_8001701C:
/* 8001701C 00013BFC  7C 03 03 78 */	mr r3, r0
/* 80017020 00013C00  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80017024 00013C04  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80017028 00013C08  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8001702C 00013C0C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80017030 00013C10  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80017034 00013C14  38 21 00 30 */	addi r1, r1, 0x30
/* 80017038 00013C18  7C 08 03 A6 */	mtlr r0
/* 8001703C 00013C1C  4E 80 00 20 */	blr 

.global func_80017040
func_80017040:
/* 80017040 00013C20  7C 08 02 A6 */	mflr r0
/* 80017044 00013C24  90 01 00 04 */	stw r0, 4(r1)
/* 80017048 00013C28  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8001704C 00013C2C  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 80017050 00013C30  40 86 00 24 */	bne cr1, lbl_80017074
/* 80017054 00013C34  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 80017058 00013C38  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 8001705C 00013C3C  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 80017060 00013C40  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 80017064 00013C44  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 80017068 00013C48  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 8001706C 00013C4C  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 80017070 00013C50  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80017074:
/* 80017074 00013C54  90 61 00 08 */	stw r3, 8(r1)
/* 80017078 00013C58  3C 00 03 00 */	lis r0, 0x300
/* 8001707C 00013C5C  3B 24 00 00 */	addi r25, r4, 0
/* 80017080 00013C60  90 81 00 0C */	stw r4, 0xc(r1)
/* 80017084 00013C64  3B E3 00 00 */	addi r31, r3, 0
/* 80017088 00013C68  3B A5 00 00 */	addi r29, r5, 0
/* 8001708C 00013C6C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80017090 00013C70  38 79 00 00 */	addi r3, r25, 0
/* 80017094 00013C74  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80017098 00013C78  38 C1 00 B8 */	addi r6, r1, 0xb8
/* 8001709C 00013C7C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 800170A0 00013C80  91 01 00 1C */	stw r8, 0x1c(r1)
/* 800170A4 00013C84  91 21 00 20 */	stw r9, 0x20(r1)
/* 800170A8 00013C88  91 41 00 24 */	stw r10, 0x24(r1)
/* 800170AC 00013C8C  90 01 00 80 */	stw r0, 0x80(r1)
/* 800170B0 00013C90  38 01 00 08 */	addi r0, r1, 8
/* 800170B4 00013C94  90 C1 00 84 */	stw r6, 0x84(r1)
/* 800170B8 00013C98  90 01 00 88 */	stw r0, 0x88(r1)
/* 800170BC 00013C9C  48 00 10 E1 */	bl func_8001819C
/* 800170C0 00013CA0  7C 7A 1B 79 */	or. r26, r3, r3
/* 800170C4 00013CA4  41 82 00 0C */	beq lbl_800170D0
/* 800170C8 00013CA8  3B 20 00 01 */	li r25, 1
/* 800170CC 00013CAC  48 00 00 58 */	b lbl_80017124
lbl_800170D0:
/* 800170D0 00013CB0  7F 23 CB 78 */	mr r3, r25
/* 800170D4 00013CB4  4B FF F3 05 */	bl func_800163D8
/* 800170D8 00013CB8  38 03 00 1F */	addi r0, r3, 0x1f
/* 800170DC 00013CBC  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 800170E0 00013CC0  38 60 00 00 */	li r3, 0
/* 800170E4 00013CC4  4B FF EA ED */	bl func_80015BD0
/* 800170E8 00013CC8  3B 63 00 00 */	addi r27, r3, 0
/* 800170EC 00013CCC  38 60 00 00 */	li r3, 0
/* 800170F0 00013CD0  38 80 00 44 */	li r4, 0x44
/* 800170F4 00013CD4  4B FF EA DD */	bl func_80015BD0
/* 800170F8 00013CD8  3B 83 00 00 */	addi r28, r3, 0
/* 800170FC 00013CDC  38 79 00 00 */	addi r3, r25, 0
/* 80017100 00013CE0  38 9B 00 00 */	addi r4, r27, 0
/* 80017104 00013CE4  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80017108 00013CE8  4B FF F5 85 */	bl func_8001668C
/* 8001710C 00013CEC  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 80017110 00013CF0  38 7C 00 00 */	addi r3, r28, 0
/* 80017114 00013CF4  38 9B 00 00 */	addi r4, r27, 0
/* 80017118 00013CF8  4B FF F9 3D */	bl func_80016A54
/* 8001711C 00013CFC  3B 5C 00 00 */	addi r26, r28, 0
/* 80017120 00013D00  3B 20 00 00 */	li r25, 0
lbl_80017124:
/* 80017124 00013D04  3C 80 80 3C */	lis r4, lbl_803BA5B0@ha
/* 80017128 00013D08  3C 60 80 3C */	lis r3, lbl_803BA5A4@ha
/* 8001712C 00013D0C  3B 7D 00 00 */	addi r27, r29, 0
/* 80017130 00013D10  3B A4 A5 B0 */	addi r29, r4, lbl_803BA5B0@l
/* 80017134 00013D14  3B C3 A5 A4 */	addi r30, r3, lbl_803BA5A4@l
/* 80017138 00013D18  48 00 00 68 */	b lbl_800171A0
lbl_8001713C:
/* 8001713C 00013D1C  38 61 00 80 */	addi r3, r1, 0x80
/* 80017140 00013D20  38 80 00 01 */	li r4, 1
/* 80017144 00013D24  48 30 B4 DD */	bl __va_arg
/* 80017148 00013D28  83 83 00 00 */	lwz r28, 0(r3)
/* 8001714C 00013D2C  38 00 00 00 */	li r0, 0
/* 80017150 00013D30  38 7A 00 00 */	addi r3, r26, 0
/* 80017154 00013D34  90 1B 00 00 */	stw r0, 0(r27)
/* 80017158 00013D38  7F 84 E3 78 */	mr r4, r28
/* 8001715C 00013D3C  48 36 91 FD */	bl HSD_ArchiveGetPublicAddress
/* 80017160 00013D40  90 7B 00 00 */	stw r3, 0(r27)
/* 80017164 00013D44  80 1B 00 00 */	lwz r0, 0(r27)
/* 80017168 00013D48  28 00 00 00 */	cmplwi r0, 0
/* 8001716C 00013D4C  40 82 00 24 */	bne lbl_80017190
/* 80017170 00013D50  38 7D 00 00 */	addi r3, r29, 0
/* 80017174 00013D54  4C C6 31 82 */	crclr 6
/* 80017178 00013D58  38 9C 00 00 */	addi r4, r28, 0
/* 8001717C 00013D5C  48 32 E5 2D */	bl OSReport
/* 80017180 00013D60  38 7E 00 00 */	addi r3, r30, 0
/* 80017184 00013D64  38 80 00 70 */	li r4, 0x70
/* 80017188 00013D68  38 AD 81 20 */	addi r5, r13, lbl_804D37C0@sda21
/* 8001718C 00013D6C  48 37 10 95 */	bl __assert
lbl_80017190:
/* 80017190 00013D70  38 61 00 80 */	addi r3, r1, 0x80
/* 80017194 00013D74  38 80 00 01 */	li r4, 1
/* 80017198 00013D78  48 30 B4 89 */	bl __va_arg
/* 8001719C 00013D7C  83 63 00 00 */	lwz r27, 0(r3)
lbl_800171A0:
/* 800171A0 00013D80  28 1B 00 00 */	cmplwi r27, 0
/* 800171A4 00013D84  40 82 FF 98 */	bne lbl_8001713C
/* 800171A8 00013D88  28 1F 00 00 */	cmplwi r31, 0
/* 800171AC 00013D8C  41 82 00 08 */	beq lbl_800171B4
/* 800171B0 00013D90  93 5F 00 00 */	stw r26, 0(r31)
lbl_800171B4:
/* 800171B4 00013D94  7F 23 CB 78 */	mr r3, r25
/* 800171B8 00013D98  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 800171BC 00013D9C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800171C0 00013DA0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800171C4 00013DA4  7C 08 03 A6 */	mtlr r0
/* 800171C8 00013DA8  4E 80 00 20 */	blr 

.global func_800171CC
func_800171CC:
/* 800171CC 00013DAC  7C 08 02 A6 */	mflr r0
/* 800171D0 00013DB0  90 01 00 04 */	stw r0, 4(r1)
/* 800171D4 00013DB4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800171D8 00013DB8  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 800171DC 00013DBC  40 86 00 24 */	bne cr1, lbl_80017200
/* 800171E0 00013DC0  D8 21 00 28 */	stfd f1, 0x28(r1)
/* 800171E4 00013DC4  D8 41 00 30 */	stfd f2, 0x30(r1)
/* 800171E8 00013DC8  D8 61 00 38 */	stfd f3, 0x38(r1)
/* 800171EC 00013DCC  D8 81 00 40 */	stfd f4, 0x40(r1)
/* 800171F0 00013DD0  D8 A1 00 48 */	stfd f5, 0x48(r1)
/* 800171F4 00013DD4  D8 C1 00 50 */	stfd f6, 0x50(r1)
/* 800171F8 00013DD8  D8 E1 00 58 */	stfd f7, 0x58(r1)
/* 800171FC 00013DDC  D9 01 00 60 */	stfd f8, 0x60(r1)
lbl_80017200:
/* 80017200 00013DE0  90 61 00 08 */	stw r3, 8(r1)
/* 80017204 00013DE4  3C 00 03 00 */	lis r0, 0x300
/* 80017208 00013DE8  3B 24 00 00 */	addi r25, r4, 0
/* 8001720C 00013DEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80017210 00013DF0  3B E3 00 00 */	addi r31, r3, 0
/* 80017214 00013DF4  3B A5 00 00 */	addi r29, r5, 0
/* 80017218 00013DF8  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8001721C 00013DFC  38 79 00 00 */	addi r3, r25, 0
/* 80017220 00013E00  90 C1 00 14 */	stw r6, 0x14(r1)
/* 80017224 00013E04  38 C1 00 B8 */	addi r6, r1, 0xb8
/* 80017228 00013E08  90 E1 00 18 */	stw r7, 0x18(r1)
/* 8001722C 00013E0C  91 01 00 1C */	stw r8, 0x1c(r1)
/* 80017230 00013E10  91 21 00 20 */	stw r9, 0x20(r1)
/* 80017234 00013E14  91 41 00 24 */	stw r10, 0x24(r1)
/* 80017238 00013E18  90 01 00 80 */	stw r0, 0x80(r1)
/* 8001723C 00013E1C  38 01 00 08 */	addi r0, r1, 8
/* 80017240 00013E20  90 C1 00 84 */	stw r6, 0x84(r1)
/* 80017244 00013E24  90 01 00 88 */	stw r0, 0x88(r1)
/* 80017248 00013E28  48 00 0F 55 */	bl func_8001819C
/* 8001724C 00013E2C  7C 7A 1B 79 */	or. r26, r3, r3
/* 80017250 00013E30  41 82 00 0C */	beq lbl_8001725C
/* 80017254 00013E34  3B 20 00 01 */	li r25, 1
/* 80017258 00013E38  48 00 00 58 */	b lbl_800172B0
lbl_8001725C:
/* 8001725C 00013E3C  7F 23 CB 78 */	mr r3, r25
/* 80017260 00013E40  4B FF F1 79 */	bl func_800163D8
/* 80017264 00013E44  38 03 00 1F */	addi r0, r3, 0x1f
/* 80017268 00013E48  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 8001726C 00013E4C  38 60 00 00 */	li r3, 0
/* 80017270 00013E50  4B FF E9 61 */	bl func_80015BD0
/* 80017274 00013E54  3B 63 00 00 */	addi r27, r3, 0
/* 80017278 00013E58  38 60 00 00 */	li r3, 0
/* 8001727C 00013E5C  38 80 00 44 */	li r4, 0x44
/* 80017280 00013E60  4B FF E9 51 */	bl func_80015BD0
/* 80017284 00013E64  3B 83 00 00 */	addi r28, r3, 0
/* 80017288 00013E68  38 79 00 00 */	addi r3, r25, 0
/* 8001728C 00013E6C  38 9B 00 00 */	addi r4, r27, 0
/* 80017290 00013E70  38 A1 00 7C */	addi r5, r1, 0x7c
/* 80017294 00013E74  4B FF F3 F9 */	bl func_8001668C
/* 80017298 00013E78  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 8001729C 00013E7C  38 7C 00 00 */	addi r3, r28, 0
/* 800172A0 00013E80  38 9B 00 00 */	addi r4, r27, 0
/* 800172A4 00013E84  4B FF F7 B1 */	bl func_80016A54
/* 800172A8 00013E88  3B 5C 00 00 */	addi r26, r28, 0
/* 800172AC 00013E8C  3B 20 00 00 */	li r25, 0
lbl_800172B0:
/* 800172B0 00013E90  3C 60 80 3C */	lis r3, lbl_803BA5B0@ha
/* 800172B4 00013E94  3B 7D 00 00 */	addi r27, r29, 0
/* 800172B8 00013E98  3B C3 A5 B0 */	addi r30, r3, lbl_803BA5B0@l
/* 800172BC 00013E9C  3B A0 00 00 */	li r29, 0
/* 800172C0 00013EA0  48 00 00 54 */	b lbl_80017314
lbl_800172C4:
/* 800172C4 00013EA4  38 61 00 80 */	addi r3, r1, 0x80
/* 800172C8 00013EA8  38 80 00 01 */	li r4, 1
/* 800172CC 00013EAC  48 30 B3 55 */	bl __va_arg
/* 800172D0 00013EB0  83 83 00 00 */	lwz r28, 0(r3)
/* 800172D4 00013EB4  7F 43 D3 78 */	mr r3, r26
/* 800172D8 00013EB8  93 BB 00 00 */	stw r29, 0(r27)
/* 800172DC 00013EBC  7F 84 E3 78 */	mr r4, r28
/* 800172E0 00013EC0  48 36 90 79 */	bl HSD_ArchiveGetPublicAddress
/* 800172E4 00013EC4  90 7B 00 00 */	stw r3, 0(r27)
/* 800172E8 00013EC8  80 1B 00 00 */	lwz r0, 0(r27)
/* 800172EC 00013ECC  28 00 00 00 */	cmplwi r0, 0
/* 800172F0 00013ED0  40 82 00 14 */	bne lbl_80017304
/* 800172F4 00013ED4  38 7E 00 00 */	addi r3, r30, 0
/* 800172F8 00013ED8  4C C6 31 82 */	crclr 6
/* 800172FC 00013EDC  38 9C 00 00 */	addi r4, r28, 0
/* 80017300 00013EE0  48 32 E3 A9 */	bl OSReport
lbl_80017304:
/* 80017304 00013EE4  38 61 00 80 */	addi r3, r1, 0x80
/* 80017308 00013EE8  38 80 00 01 */	li r4, 1
/* 8001730C 00013EEC  48 30 B3 15 */	bl __va_arg
/* 80017310 00013EF0  83 63 00 00 */	lwz r27, 0(r3)
lbl_80017314:
/* 80017314 00013EF4  28 1B 00 00 */	cmplwi r27, 0
/* 80017318 00013EF8  40 82 FF AC */	bne lbl_800172C4
/* 8001731C 00013EFC  28 1F 00 00 */	cmplwi r31, 0
/* 80017320 00013F00  41 82 00 08 */	beq lbl_80017328
/* 80017324 00013F04  93 5F 00 00 */	stw r26, 0(r31)
lbl_80017328:
/* 80017328 00013F08  7F 23 CB 78 */	mr r3, r25
/* 8001732C 00013F0C  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 80017330 00013F10  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80017334 00013F14  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80017338 00013F18  7C 08 03 A6 */	mtlr r0
/* 8001733C 00013F1C  4E 80 00 20 */	blr 

.global func_80017340
func_80017340:
/* 80017340 00013F20  7C 08 02 A6 */	mflr r0
/* 80017344 00013F24  90 01 00 04 */	stw r0, 4(r1)
/* 80017348 00013F28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8001734C 00013F2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80017350 00013F30  3B E6 00 00 */	addi r31, r6, 0
/* 80017354 00013F34  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80017358 00013F38  3B C4 00 00 */	addi r30, r4, 0
/* 8001735C 00013F3C  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80017360 00013F40  7C 7D 1B 79 */	or. r29, r3, r3
/* 80017364 00013F44  93 81 00 20 */	stw r28, 0x20(r1)
/* 80017368 00013F48  3B 85 00 00 */	addi r28, r5, 0
/* 8001736C 00013F4C  40 82 00 0C */	bne lbl_80017378
/* 80017370 00013F50  38 60 FF FF */	li r3, -1
/* 80017374 00013F54  48 00 01 28 */	b lbl_8001749C
lbl_80017378:
/* 80017378 00013F58  38 7D 00 00 */	addi r3, r29, 0
/* 8001737C 00013F5C  38 80 00 00 */	li r4, 0
/* 80017380 00013F60  38 A0 00 44 */	li r5, 0x44
/* 80017384 00013F64  4B FE BD 7D */	bl memset
/* 80017388 00013F68  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 8001738C 00013F6C  38 7D 00 00 */	addi r3, r29, 0
/* 80017390 00013F70  38 9E 00 00 */	addi r4, r30, 0
/* 80017394 00013F74  60 00 00 01 */	ori r0, r0, 1
/* 80017398 00013F78  90 1D 00 3C */	stw r0, 0x3c(r29)
/* 8001739C 00013F7C  38 A0 00 20 */	li r5, 0x20
/* 800173A0 00013F80  4B FE BE 55 */	bl memcpy
/* 800173A4 00013F84  80 9D 00 00 */	lwz r4, 0(r29)
/* 800173A8 00013F88  7C 04 E0 40 */	cmplw r4, r28
/* 800173AC 00013F8C  41 82 00 20 */	beq lbl_800173CC
/* 800173B0 00013F90  3C 60 80 3C */	lis r3, lbl_803BA5F0@ha
/* 800173B4 00013F94  4C C6 31 82 */	crclr 6
/* 800173B8 00013F98  38 63 A5 F0 */	addi r3, r3, lbl_803BA5F0@l
/* 800173BC 00013F9C  38 BC 00 00 */	addi r5, r28, 0
/* 800173C0 00013FA0  48 32 E2 E9 */	bl OSReport
/* 800173C4 00013FA4  38 60 FF FF */	li r3, -1
/* 800173C8 00013FA8  48 00 00 D4 */	b lbl_8001749C
lbl_800173CC:
/* 800173CC 00013FAC  80 1D 00 04 */	lwz r0, 4(r29)
/* 800173D0 00013FB0  38 60 00 20 */	li r3, 0x20
/* 800173D4 00013FB4  28 00 00 00 */	cmplwi r0, 0
/* 800173D8 00013FB8  41 82 00 14 */	beq lbl_800173EC
/* 800173DC 00013FBC  38 1E 00 20 */	addi r0, r30, 0x20
/* 800173E0 00013FC0  90 1D 00 20 */	stw r0, 0x20(r29)
/* 800173E4 00013FC4  80 7D 00 04 */	lwz r3, 4(r29)
/* 800173E8 00013FC8  38 63 00 20 */	addi r3, r3, 0x20
lbl_800173EC:
/* 800173EC 00013FCC  80 1D 00 08 */	lwz r0, 8(r29)
/* 800173F0 00013FD0  28 00 00 00 */	cmplwi r0, 0
/* 800173F4 00013FD4  41 82 00 18 */	beq lbl_8001740C
/* 800173F8 00013FD8  7C 1E 1A 14 */	add r0, r30, r3
/* 800173FC 00013FDC  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80017400 00013FE0  80 1D 00 08 */	lwz r0, 8(r29)
/* 80017404 00013FE4  54 00 10 3A */	slwi r0, r0, 2
/* 80017408 00013FE8  7C 63 02 14 */	add r3, r3, r0
lbl_8001740C:
/* 8001740C 00013FEC  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80017410 00013FF0  28 00 00 00 */	cmplwi r0, 0
/* 80017414 00013FF4  41 82 00 18 */	beq lbl_8001742C
/* 80017418 00013FF8  7C 1E 1A 14 */	add r0, r30, r3
/* 8001741C 00013FFC  90 1D 00 28 */	stw r0, 0x28(r29)
/* 80017420 00014000  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80017424 00014004  54 00 18 38 */	slwi r0, r0, 3
/* 80017428 00014008  7C 63 02 14 */	add r3, r3, r0
lbl_8001742C:
/* 8001742C 0001400C  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80017430 00014010  28 00 00 00 */	cmplwi r0, 0
/* 80017434 00014014  41 82 00 18 */	beq lbl_8001744C
/* 80017438 00014018  7C 1E 1A 14 */	add r0, r30, r3
/* 8001743C 0001401C  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 80017440 00014020  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 80017444 00014024  54 00 18 38 */	slwi r0, r0, 3
/* 80017448 00014028  7C 63 02 14 */	add r3, r3, r0
lbl_8001744C:
/* 8001744C 0001402C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80017450 00014030  7C 03 00 40 */	cmplw r3, r0
/* 80017454 00014034  40 80 00 0C */	bge lbl_80017460
/* 80017458 00014038  7C 1E 1A 14 */	add r0, r30, r3
/* 8001745C 0001403C  90 1D 00 30 */	stw r0, 0x30(r29)
lbl_80017460:
/* 80017460 00014040  38 A0 00 00 */	li r5, 0
/* 80017464 00014044  38 C5 00 00 */	addi r6, r5, 0
/* 80017468 00014048  48 00 00 24 */	b lbl_8001748C
lbl_8001746C:
/* 8001746C 0001404C  80 7D 00 24 */	lwz r3, 0x24(r29)
/* 80017470 00014050  38 A5 00 01 */	addi r5, r5, 1
/* 80017474 00014054  80 9D 00 20 */	lwz r4, 0x20(r29)
/* 80017478 00014058  7C 63 30 2E */	lwzx r3, r3, r6
/* 8001747C 0001405C  38 C6 00 04 */	addi r6, r6, 4
/* 80017480 00014060  7C 04 18 2E */	lwzx r0, r4, r3
/* 80017484 00014064  7C 00 FA 14 */	add r0, r0, r31
/* 80017488 00014068  7C 04 19 2E */	stwx r0, r4, r3
lbl_8001748C:
/* 8001748C 0001406C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80017490 00014070  7C 05 00 40 */	cmplw r5, r0
/* 80017494 00014074  41 80 FF D8 */	blt lbl_8001746C
/* 80017498 00014078  38 60 00 00 */	li r3, 0
lbl_8001749C:
/* 8001749C 0001407C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800174A0 00014080  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800174A4 00014084  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800174A8 00014088  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800174AC 0001408C  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800174B0 00014090  38 21 00 30 */	addi r1, r1, 0x30
/* 800174B4 00014094  7C 08 03 A6 */	mtlr r0
/* 800174B8 00014098  4E 80 00 20 */	blr 


.section .data

.global lbl_803BA588
lbl_803BA588:
    .asciz "HSD_ArchiveParse error!\n"
    .balign 4

.global lbl_803BA5A4
lbl_803BA5A4:
    .asciz "lbarchive.c"
    .balign 4

.global lbl_803BA5B0
lbl_803BA5B0:
    .asciz "Cannot find symbol %s.\n"
    .balign 4
    .asciz "archive->flags & HSD_ARCHIVE_DONT_FREE"
    .balign 4

.global lbl_803BA5F0
lbl_803BA5F0:
    .asciz "lbArchiveRelocate: byte-order mismatch! Please check data format %x %x\n"
    .balign 4


.section .sdata

.global lbl_804D37C0
lbl_804D37C0:
    .asciz "0"
    .balign 4
.global lbl_804D37C4
lbl_804D37C4:
    .asciz "archive"
    .balign 4
    .4byte NULL
