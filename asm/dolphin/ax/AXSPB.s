.include "macros.inc"

.section .text

.global __AXGetStudio
__AXGetStudio:
/* 80359D8C 0035696C  3C 60 80 4B */	lis r3, __AXStudio@ha
/* 80359D90 00356970  38 63 09 A0 */	addi r3, r3, __AXStudio@l
/* 80359D94 00356974  4E 80 00 20 */	blr 

.global __AXPrintStudio
__AXPrintStudio:
/* 80359D98 00356978  7C 08 02 A6 */	mflr r0
/* 80359D9C 0035697C  3C 60 66 66 */	lis r3, 0x66666667@ha
/* 80359DA0 00356980  90 01 00 04 */	stw r0, 4(r1)
/* 80359DA4 00356984  38 03 66 67 */	addi r0, r3, 0x66666667@l
/* 80359DA8 00356988  3C 60 80 4B */	lis r3, __AXStudio@ha
/* 80359DAC 0035698C  94 21 FF F8 */	stwu r1, -8(r1)
/* 80359DB0 00356990  38 63 09 A0 */	addi r3, r3, __AXStudio@l
/* 80359DB4 00356994  80 AD BE B8 */	lwz r5, __AXSpbAL@sda21(r13)
/* 80359DB8 00356998  7C 00 28 96 */	mulhw r0, r0, r5
/* 80359DBC 0035699C  7C 00 36 70 */	srawi r0, r0, 6
/* 80359DC0 003569A0  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80359DC4 003569A4  7C 80 22 15 */	add. r4, r0, r4
/* 80359DC8 003569A8  41 82 00 40 */	beq lbl_80359E08
/* 80359DCC 003569AC  2C 04 00 14 */	cmpwi r4, 0x14
/* 80359DD0 003569B0  40 81 00 08 */	ble lbl_80359DD8
/* 80359DD4 003569B4  38 80 00 14 */	li r4, 0x14
lbl_80359DD8:
/* 80359DD8 003569B8  2C 04 FF EC */	cmpwi r4, -20
/* 80359DDC 003569BC  40 80 00 08 */	bge lbl_80359DE4
/* 80359DE0 003569C0  38 80 FF EC */	li r4, -20
lbl_80359DE4:
/* 80359DE4 003569C4  90 A3 00 00 */	stw r5, 0(r3)
/* 80359DE8 003569C8  7C 04 00 D0 */	neg r0, r4
/* 80359DEC 003569CC  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 80359DF0 003569D0  80 8D BE B8 */	lwz r4, __AXSpbAL@sda21(r13)
/* 80359DF4 003569D4  7C 85 20 50 */	subf r4, r5, r4
/* 80359DF8 003569D8  90 8D BE B8 */	stw r4, __AXSpbAL@sda21(r13)
/* 80359DFC 003569DC  7C 00 07 34 */	extsh r0, r0
/* 80359E00 003569E0  B0 03 00 04 */	sth r0, 4(r3)
/* 80359E04 003569E4  48 00 00 14 */	b lbl_80359E18
lbl_80359E08:
/* 80359E08 003569E8  38 00 00 00 */	li r0, 0
/* 80359E0C 003569EC  90 0D BE B8 */	stw r0, __AXSpbAL@sda21(r13)
/* 80359E10 003569F0  90 03 00 00 */	stw r0, 0(r3)
/* 80359E14 003569F4  B0 03 00 04 */	sth r0, 4(r3)
lbl_80359E18:
/* 80359E18 003569F8  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 80359E1C 003569FC  80 AD BE BC */	lwz r5, __AXSpbAR@sda21(r13)
/* 80359E20 00356A00  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 80359E24 00356A04  7C 00 28 96 */	mulhw r0, r0, r5
/* 80359E28 00356A08  7C 00 36 70 */	srawi r0, r0, 6
/* 80359E2C 00356A0C  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80359E30 00356A10  7C 80 22 15 */	add. r4, r0, r4
/* 80359E34 00356A14  41 82 00 40 */	beq lbl_80359E74
/* 80359E38 00356A18  2C 04 00 14 */	cmpwi r4, 0x14
/* 80359E3C 00356A1C  40 81 00 08 */	ble lbl_80359E44
/* 80359E40 00356A20  38 80 00 14 */	li r4, 0x14
lbl_80359E44:
/* 80359E44 00356A24  2C 04 FF EC */	cmpwi r4, -20
/* 80359E48 00356A28  40 80 00 08 */	bge lbl_80359E50
/* 80359E4C 00356A2C  38 80 FF EC */	li r4, -20
lbl_80359E50:
/* 80359E50 00356A30  90 A3 00 06 */	stw r5, 6(r3)
/* 80359E54 00356A34  7C 04 00 D0 */	neg r0, r4
/* 80359E58 00356A38  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 80359E5C 00356A3C  80 8D BE BC */	lwz r4, __AXSpbAR@sda21(r13)
/* 80359E60 00356A40  7C 85 20 50 */	subf r4, r5, r4
/* 80359E64 00356A44  90 8D BE BC */	stw r4, __AXSpbAR@sda21(r13)
/* 80359E68 00356A48  7C 00 07 34 */	extsh r0, r0
/* 80359E6C 00356A4C  B0 03 00 0A */	sth r0, 0xa(r3)
/* 80359E70 00356A50  48 00 00 14 */	b lbl_80359E84
lbl_80359E74:
/* 80359E74 00356A54  38 00 00 00 */	li r0, 0
/* 80359E78 00356A58  90 0D BE BC */	stw r0, __AXSpbAR@sda21(r13)
/* 80359E7C 00356A5C  90 03 00 06 */	stw r0, 6(r3)
/* 80359E80 00356A60  B0 03 00 0A */	sth r0, 0xa(r3)
lbl_80359E84:
/* 80359E84 00356A64  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 80359E88 00356A68  80 AD BE C0 */	lwz r5, __AXSpbAS@sda21(r13)
/* 80359E8C 00356A6C  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 80359E90 00356A70  7C 00 28 96 */	mulhw r0, r0, r5
/* 80359E94 00356A74  7C 00 36 70 */	srawi r0, r0, 6
/* 80359E98 00356A78  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80359E9C 00356A7C  7C 80 22 15 */	add. r4, r0, r4
/* 80359EA0 00356A80  41 82 00 40 */	beq lbl_80359EE0
/* 80359EA4 00356A84  2C 04 00 14 */	cmpwi r4, 0x14
/* 80359EA8 00356A88  40 81 00 08 */	ble lbl_80359EB0
/* 80359EAC 00356A8C  38 80 00 14 */	li r4, 0x14
lbl_80359EB0:
/* 80359EB0 00356A90  2C 04 FF EC */	cmpwi r4, -20
/* 80359EB4 00356A94  40 80 00 08 */	bge lbl_80359EBC
/* 80359EB8 00356A98  38 80 FF EC */	li r4, -20
lbl_80359EBC:
/* 80359EBC 00356A9C  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80359EC0 00356AA0  7C 04 00 D0 */	neg r0, r4
/* 80359EC4 00356AA4  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 80359EC8 00356AA8  80 8D BE C0 */	lwz r4, __AXSpbAS@sda21(r13)
/* 80359ECC 00356AAC  7C 85 20 50 */	subf r4, r5, r4
/* 80359ED0 00356AB0  90 8D BE C0 */	stw r4, __AXSpbAS@sda21(r13)
/* 80359ED4 00356AB4  7C 00 07 34 */	extsh r0, r0
/* 80359ED8 00356AB8  B0 03 00 10 */	sth r0, 0x10(r3)
/* 80359EDC 00356ABC  48 00 00 14 */	b lbl_80359EF0
lbl_80359EE0:
/* 80359EE0 00356AC0  38 00 00 00 */	li r0, 0
/* 80359EE4 00356AC4  90 0D BE C0 */	stw r0, __AXSpbAS@sda21(r13)
/* 80359EE8 00356AC8  90 03 00 0C */	stw r0, 0xc(r3)
/* 80359EEC 00356ACC  B0 03 00 10 */	sth r0, 0x10(r3)
lbl_80359EF0:
/* 80359EF0 00356AD0  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 80359EF4 00356AD4  80 AD BE C4 */	lwz r5, __AXSpbAAL@sda21(r13)
/* 80359EF8 00356AD8  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 80359EFC 00356ADC  7C 00 28 96 */	mulhw r0, r0, r5
/* 80359F00 00356AE0  7C 00 36 70 */	srawi r0, r0, 6
/* 80359F04 00356AE4  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80359F08 00356AE8  7C 80 22 15 */	add. r4, r0, r4
/* 80359F0C 00356AEC  41 82 00 40 */	beq lbl_80359F4C
/* 80359F10 00356AF0  2C 04 00 14 */	cmpwi r4, 0x14
/* 80359F14 00356AF4  40 81 00 08 */	ble lbl_80359F1C
/* 80359F18 00356AF8  38 80 00 14 */	li r4, 0x14
lbl_80359F1C:
/* 80359F1C 00356AFC  2C 04 FF EC */	cmpwi r4, -20
/* 80359F20 00356B00  40 80 00 08 */	bge lbl_80359F28
/* 80359F24 00356B04  38 80 FF EC */	li r4, -20
lbl_80359F28:
/* 80359F28 00356B08  90 A3 00 12 */	stw r5, 0x12(r3)
/* 80359F2C 00356B0C  7C 04 00 D0 */	neg r0, r4
/* 80359F30 00356B10  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 80359F34 00356B14  80 8D BE C4 */	lwz r4, __AXSpbAAL@sda21(r13)
/* 80359F38 00356B18  7C 85 20 50 */	subf r4, r5, r4
/* 80359F3C 00356B1C  90 8D BE C4 */	stw r4, __AXSpbAAL@sda21(r13)
/* 80359F40 00356B20  7C 00 07 34 */	extsh r0, r0
/* 80359F44 00356B24  B0 03 00 16 */	sth r0, 0x16(r3)
/* 80359F48 00356B28  48 00 00 14 */	b lbl_80359F5C
lbl_80359F4C:
/* 80359F4C 00356B2C  38 00 00 00 */	li r0, 0
/* 80359F50 00356B30  90 0D BE C4 */	stw r0, __AXSpbAAL@sda21(r13)
/* 80359F54 00356B34  90 03 00 12 */	stw r0, 0x12(r3)
/* 80359F58 00356B38  B0 03 00 16 */	sth r0, 0x16(r3)
lbl_80359F5C:
/* 80359F5C 00356B3C  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 80359F60 00356B40  80 AD BE C8 */	lwz r5, __AXSpbAAR@sda21(r13)
/* 80359F64 00356B44  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 80359F68 00356B48  7C 00 28 96 */	mulhw r0, r0, r5
/* 80359F6C 00356B4C  7C 00 36 70 */	srawi r0, r0, 6
/* 80359F70 00356B50  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80359F74 00356B54  7C 80 22 15 */	add. r4, r0, r4
/* 80359F78 00356B58  41 82 00 40 */	beq lbl_80359FB8
/* 80359F7C 00356B5C  2C 04 00 14 */	cmpwi r4, 0x14
/* 80359F80 00356B60  40 81 00 08 */	ble lbl_80359F88
/* 80359F84 00356B64  38 80 00 14 */	li r4, 0x14
lbl_80359F88:
/* 80359F88 00356B68  2C 04 FF EC */	cmpwi r4, -20
/* 80359F8C 00356B6C  40 80 00 08 */	bge lbl_80359F94
/* 80359F90 00356B70  38 80 FF EC */	li r4, -20
lbl_80359F94:
/* 80359F94 00356B74  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80359F98 00356B78  7C 04 00 D0 */	neg r0, r4
/* 80359F9C 00356B7C  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 80359FA0 00356B80  80 8D BE C8 */	lwz r4, __AXSpbAAR@sda21(r13)
/* 80359FA4 00356B84  7C 85 20 50 */	subf r4, r5, r4
/* 80359FA8 00356B88  90 8D BE C8 */	stw r4, __AXSpbAAR@sda21(r13)
/* 80359FAC 00356B8C  7C 00 07 34 */	extsh r0, r0
/* 80359FB0 00356B90  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 80359FB4 00356B94  48 00 00 14 */	b lbl_80359FC8
lbl_80359FB8:
/* 80359FB8 00356B98  38 00 00 00 */	li r0, 0
/* 80359FBC 00356B9C  90 0D BE C8 */	stw r0, __AXSpbAAR@sda21(r13)
/* 80359FC0 00356BA0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80359FC4 00356BA4  B0 03 00 1C */	sth r0, 0x1c(r3)
lbl_80359FC8:
/* 80359FC8 00356BA8  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 80359FCC 00356BAC  80 AD BE CC */	lwz r5, __AXSpbAAS@sda21(r13)
/* 80359FD0 00356BB0  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 80359FD4 00356BB4  7C 00 28 96 */	mulhw r0, r0, r5
/* 80359FD8 00356BB8  7C 00 36 70 */	srawi r0, r0, 6
/* 80359FDC 00356BBC  54 04 0F FE */	srwi r4, r0, 0x1f
/* 80359FE0 00356BC0  7C 80 22 15 */	add. r4, r0, r4
/* 80359FE4 00356BC4  41 82 00 40 */	beq lbl_8035A024
/* 80359FE8 00356BC8  2C 04 00 14 */	cmpwi r4, 0x14
/* 80359FEC 00356BCC  40 81 00 08 */	ble lbl_80359FF4
/* 80359FF0 00356BD0  38 80 00 14 */	li r4, 0x14
lbl_80359FF4:
/* 80359FF4 00356BD4  2C 04 FF EC */	cmpwi r4, -20
/* 80359FF8 00356BD8  40 80 00 08 */	bge lbl_8035A000
/* 80359FFC 00356BDC  38 80 FF EC */	li r4, -20
lbl_8035A000:
/* 8035A000 00356BE0  90 A3 00 1E */	stw r5, 0x1e(r3)
/* 8035A004 00356BE4  7C 04 00 D0 */	neg r0, r4
/* 8035A008 00356BE8  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 8035A00C 00356BEC  80 8D BE CC */	lwz r4, __AXSpbAAS@sda21(r13)
/* 8035A010 00356BF0  7C 85 20 50 */	subf r4, r5, r4
/* 8035A014 00356BF4  90 8D BE CC */	stw r4, __AXSpbAAS@sda21(r13)
/* 8035A018 00356BF8  7C 00 07 34 */	extsh r0, r0
/* 8035A01C 00356BFC  B0 03 00 22 */	sth r0, 0x22(r3)
/* 8035A020 00356C00  48 00 00 14 */	b lbl_8035A034
lbl_8035A024:
/* 8035A024 00356C04  38 00 00 00 */	li r0, 0
/* 8035A028 00356C08  90 0D BE CC */	stw r0, __AXSpbAAS@sda21(r13)
/* 8035A02C 00356C0C  90 03 00 1E */	stw r0, 0x1e(r3)
/* 8035A030 00356C10  B0 03 00 22 */	sth r0, 0x22(r3)
lbl_8035A034:
/* 8035A034 00356C14  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 8035A038 00356C18  80 AD BE D0 */	lwz r5, __AXSpbABL@sda21(r13)
/* 8035A03C 00356C1C  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 8035A040 00356C20  7C 00 28 96 */	mulhw r0, r0, r5
/* 8035A044 00356C24  7C 00 36 70 */	srawi r0, r0, 6
/* 8035A048 00356C28  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8035A04C 00356C2C  7C 80 22 15 */	add. r4, r0, r4
/* 8035A050 00356C30  41 82 00 40 */	beq lbl_8035A090
/* 8035A054 00356C34  2C 04 00 14 */	cmpwi r4, 0x14
/* 8035A058 00356C38  40 81 00 08 */	ble lbl_8035A060
/* 8035A05C 00356C3C  38 80 00 14 */	li r4, 0x14
lbl_8035A060:
/* 8035A060 00356C40  2C 04 FF EC */	cmpwi r4, -20
/* 8035A064 00356C44  40 80 00 08 */	bge lbl_8035A06C
/* 8035A068 00356C48  38 80 FF EC */	li r4, -20
lbl_8035A06C:
/* 8035A06C 00356C4C  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8035A070 00356C50  7C 04 00 D0 */	neg r0, r4
/* 8035A074 00356C54  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 8035A078 00356C58  80 8D BE D0 */	lwz r4, __AXSpbABL@sda21(r13)
/* 8035A07C 00356C5C  7C 85 20 50 */	subf r4, r5, r4
/* 8035A080 00356C60  90 8D BE D0 */	stw r4, __AXSpbABL@sda21(r13)
/* 8035A084 00356C64  7C 00 07 34 */	extsh r0, r0
/* 8035A088 00356C68  B0 03 00 28 */	sth r0, 0x28(r3)
/* 8035A08C 00356C6C  48 00 00 14 */	b lbl_8035A0A0
lbl_8035A090:
/* 8035A090 00356C70  38 00 00 00 */	li r0, 0
/* 8035A094 00356C74  90 0D BE D0 */	stw r0, __AXSpbABL@sda21(r13)
/* 8035A098 00356C78  90 03 00 24 */	stw r0, 0x24(r3)
/* 8035A09C 00356C7C  B0 03 00 28 */	sth r0, 0x28(r3)
lbl_8035A0A0:
/* 8035A0A0 00356C80  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 8035A0A4 00356C84  80 AD BE D4 */	lwz r5, __AXSpbABR@sda21(r13)
/* 8035A0A8 00356C88  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 8035A0AC 00356C8C  7C 00 28 96 */	mulhw r0, r0, r5
/* 8035A0B0 00356C90  7C 00 36 70 */	srawi r0, r0, 6
/* 8035A0B4 00356C94  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8035A0B8 00356C98  7C 80 22 15 */	add. r4, r0, r4
/* 8035A0BC 00356C9C  41 82 00 40 */	beq lbl_8035A0FC
/* 8035A0C0 00356CA0  2C 04 00 14 */	cmpwi r4, 0x14
/* 8035A0C4 00356CA4  40 81 00 08 */	ble lbl_8035A0CC
/* 8035A0C8 00356CA8  38 80 00 14 */	li r4, 0x14
lbl_8035A0CC:
/* 8035A0CC 00356CAC  2C 04 FF EC */	cmpwi r4, -20
/* 8035A0D0 00356CB0  40 80 00 08 */	bge lbl_8035A0D8
/* 8035A0D4 00356CB4  38 80 FF EC */	li r4, -20
lbl_8035A0D8:
/* 8035A0D8 00356CB8  90 A3 00 2A */	stw r5, 0x2a(r3)
/* 8035A0DC 00356CBC  7C 04 00 D0 */	neg r0, r4
/* 8035A0E0 00356CC0  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 8035A0E4 00356CC4  80 8D BE D4 */	lwz r4, __AXSpbABR@sda21(r13)
/* 8035A0E8 00356CC8  7C 85 20 50 */	subf r4, r5, r4
/* 8035A0EC 00356CCC  90 8D BE D4 */	stw r4, __AXSpbABR@sda21(r13)
/* 8035A0F0 00356CD0  7C 00 07 34 */	extsh r0, r0
/* 8035A0F4 00356CD4  B0 03 00 2E */	sth r0, 0x2e(r3)
/* 8035A0F8 00356CD8  48 00 00 14 */	b lbl_8035A10C
lbl_8035A0FC:
/* 8035A0FC 00356CDC  38 00 00 00 */	li r0, 0
/* 8035A100 00356CE0  90 0D BE D4 */	stw r0, __AXSpbABR@sda21(r13)
/* 8035A104 00356CE4  90 03 00 2A */	stw r0, 0x2a(r3)
/* 8035A108 00356CE8  B0 03 00 2E */	sth r0, 0x2e(r3)
lbl_8035A10C:
/* 8035A10C 00356CEC  3C 80 66 66 */	lis r4, 0x66666667@ha
/* 8035A110 00356CF0  80 AD BE D8 */	lwz r5, __AXSpbABS@sda21(r13)
/* 8035A114 00356CF4  38 04 66 67 */	addi r0, r4, 0x66666667@l
/* 8035A118 00356CF8  7C 00 28 96 */	mulhw r0, r0, r5
/* 8035A11C 00356CFC  7C 00 36 70 */	srawi r0, r0, 6
/* 8035A120 00356D00  54 04 0F FE */	srwi r4, r0, 0x1f
/* 8035A124 00356D04  7C 80 22 15 */	add. r4, r0, r4
/* 8035A128 00356D08  41 82 00 40 */	beq lbl_8035A168
/* 8035A12C 00356D0C  2C 04 00 14 */	cmpwi r4, 0x14
/* 8035A130 00356D10  40 81 00 08 */	ble lbl_8035A138
/* 8035A134 00356D14  38 80 00 14 */	li r4, 0x14
lbl_8035A138:
/* 8035A138 00356D18  2C 04 FF EC */	cmpwi r4, -20
/* 8035A13C 00356D1C  40 80 00 08 */	bge lbl_8035A144
/* 8035A140 00356D20  38 80 FF EC */	li r4, -20
lbl_8035A144:
/* 8035A144 00356D24  90 A3 00 30 */	stw r5, 0x30(r3)
/* 8035A148 00356D28  7C 04 00 D0 */	neg r0, r4
/* 8035A14C 00356D2C  1C A4 00 A0 */	mulli r5, r4, 0xa0
/* 8035A150 00356D30  80 8D BE D8 */	lwz r4, __AXSpbABS@sda21(r13)
/* 8035A154 00356D34  7C 85 20 50 */	subf r4, r5, r4
/* 8035A158 00356D38  90 8D BE D8 */	stw r4, __AXSpbABS@sda21(r13)
/* 8035A15C 00356D3C  7C 00 07 34 */	extsh r0, r0
/* 8035A160 00356D40  B0 03 00 34 */	sth r0, 0x34(r3)
/* 8035A164 00356D44  48 00 00 14 */	b lbl_8035A178
lbl_8035A168:
/* 8035A168 00356D48  38 00 00 00 */	li r0, 0
/* 8035A16C 00356D4C  90 0D BE D8 */	stw r0, __AXSpbABS@sda21(r13)
/* 8035A170 00356D50  90 03 00 30 */	stw r0, 0x30(r3)
/* 8035A174 00356D54  B0 03 00 34 */	sth r0, 0x34(r3)
lbl_8035A178:
/* 8035A178 00356D58  38 80 00 36 */	li r4, 0x36
/* 8035A17C 00356D5C  4B FE A6 91 */	bl DCFlushRange
/* 8035A180 00356D60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035A184 00356D64  38 21 00 08 */	addi r1, r1, 8
/* 8035A188 00356D68  7C 08 03 A6 */	mtlr r0
/* 8035A18C 00356D6C  4E 80 00 20 */	blr 

.global __AXSPBInit
__AXSPBInit:
/* 8035A190 00356D70  38 00 00 00 */	li r0, 0
/* 8035A194 00356D74  90 0D BE D8 */	stw r0, __AXSpbABS@sda21(r13)
/* 8035A198 00356D78  90 0D BE D4 */	stw r0, __AXSpbABR@sda21(r13)
/* 8035A19C 00356D7C  90 0D BE D0 */	stw r0, __AXSpbABL@sda21(r13)
/* 8035A1A0 00356D80  90 0D BE CC */	stw r0, __AXSpbAAS@sda21(r13)
/* 8035A1A4 00356D84  90 0D BE C8 */	stw r0, __AXSpbAAR@sda21(r13)
/* 8035A1A8 00356D88  90 0D BE C4 */	stw r0, __AXSpbAAL@sda21(r13)
/* 8035A1AC 00356D8C  90 0D BE C0 */	stw r0, __AXSpbAS@sda21(r13)
/* 8035A1B0 00356D90  90 0D BE BC */	stw r0, __AXSpbAR@sda21(r13)
/* 8035A1B4 00356D94  90 0D BE B8 */	stw r0, __AXSpbAL@sda21(r13)
/* 8035A1B8 00356D98  4E 80 00 20 */	blr 

.global __AXDepopVoice
__AXDepopVoice:
/* 8035A1BC 00356D9C  80 8D BE B8 */	lwz r4, __AXSpbAL@sda21(r13)
/* 8035A1C0 00356DA0  A8 03 00 52 */	lha r0, 0x52(r3)
/* 8035A1C4 00356DA4  80 AD BE C4 */	lwz r5, __AXSpbAAL@sda21(r13)
/* 8035A1C8 00356DA8  7C 04 02 14 */	add r0, r4, r0
/* 8035A1CC 00356DAC  80 8D BE D0 */	lwz r4, __AXSpbABL@sda21(r13)
/* 8035A1D0 00356DB0  90 0D BE B8 */	stw r0, __AXSpbAL@sda21(r13)
/* 8035A1D4 00356DB4  81 2D BE BC */	lwz r9, __AXSpbAR@sda21(r13)
/* 8035A1D8 00356DB8  A8 03 00 54 */	lha r0, 0x54(r3)
/* 8035A1DC 00356DBC  81 0D BE C8 */	lwz r8, __AXSpbAAR@sda21(r13)
/* 8035A1E0 00356DC0  7C 05 02 14 */	add r0, r5, r0
/* 8035A1E4 00356DC4  80 ED BE D4 */	lwz r7, __AXSpbABR@sda21(r13)
/* 8035A1E8 00356DC8  90 0D BE C4 */	stw r0, __AXSpbAAL@sda21(r13)
/* 8035A1EC 00356DCC  80 CD BE C0 */	lwz r6, __AXSpbAS@sda21(r13)
/* 8035A1F0 00356DD0  A8 03 00 56 */	lha r0, 0x56(r3)
/* 8035A1F4 00356DD4  80 AD BE CC */	lwz r5, __AXSpbAAS@sda21(r13)
/* 8035A1F8 00356DD8  7C 04 02 14 */	add r0, r4, r0
/* 8035A1FC 00356DDC  80 8D BE D8 */	lwz r4, __AXSpbABS@sda21(r13)
/* 8035A200 00356DE0  90 0D BE D0 */	stw r0, __AXSpbABL@sda21(r13)
/* 8035A204 00356DE4  A8 03 00 58 */	lha r0, 0x58(r3)
/* 8035A208 00356DE8  7C 09 02 14 */	add r0, r9, r0
/* 8035A20C 00356DEC  90 0D BE BC */	stw r0, __AXSpbAR@sda21(r13)
/* 8035A210 00356DF0  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 8035A214 00356DF4  7C 08 02 14 */	add r0, r8, r0
/* 8035A218 00356DF8  90 0D BE C8 */	stw r0, __AXSpbAAR@sda21(r13)
/* 8035A21C 00356DFC  A8 03 00 5C */	lha r0, 0x5c(r3)
/* 8035A220 00356E00  7C 07 02 14 */	add r0, r7, r0
/* 8035A224 00356E04  90 0D BE D4 */	stw r0, __AXSpbABR@sda21(r13)
/* 8035A228 00356E08  A8 03 00 5E */	lha r0, 0x5e(r3)
/* 8035A22C 00356E0C  7C 06 02 14 */	add r0, r6, r0
/* 8035A230 00356E10  90 0D BE C0 */	stw r0, __AXSpbAS@sda21(r13)
/* 8035A234 00356E14  A8 03 00 60 */	lha r0, 0x60(r3)
/* 8035A238 00356E18  7C 05 02 14 */	add r0, r5, r0
/* 8035A23C 00356E1C  90 0D BE CC */	stw r0, __AXSpbAAS@sda21(r13)
/* 8035A240 00356E20  A8 03 00 62 */	lha r0, 0x62(r3)
/* 8035A244 00356E24  7C 04 02 14 */	add r0, r4, r0
/* 8035A248 00356E28  90 0D BE D8 */	stw r0, __AXSpbABS@sda21(r13)
/* 8035A24C 00356E2C  4E 80 00 20 */	blr 


.section .bss
    .balign 8

    .balign 32
.global __AXStudio
__AXStudio:
	.skip 0x36


.section .sbss
    .balign 8
.global __AXSpbAL
__AXSpbAL:
	.skip 0x4
.global __AXSpbAR
__AXSpbAR:
	.skip 0x4
.global __AXSpbAS
__AXSpbAS:
	.skip 0x4
.global __AXSpbAAL
__AXSpbAAL:
	.skip 0x4
.global __AXSpbAAR
__AXSpbAAR:
	.skip 0x4
.global __AXSpbAAS
__AXSpbAAS:
	.skip 0x4
.global __AXSpbABL
__AXSpbABL:
	.skip 0x4
.global __AXSpbABR
__AXSpbABR:
	.skip 0x4
.global __AXSpbABS
__AXSpbABS:
	.skip 0x4
