.include "macros.inc"

.section .text

.global __AXOutNewFrame
__AXOutNewFrame:
/* 80359724 00356304  7C 08 02 A6 */	mflr r0
/* 80359728 00356308  3C 80 80 4B */	lis r4, __AXOutBuffer@ha
/* 8035972C 0035630C  90 01 00 04 */	stw r0, 4(r1)
/* 80359730 00356310  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80359734 00356314  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80359738 00356318  3B E4 C1 80 */	addi r31, r4, __AXOutBuffer@l
/* 8035973C 0035631C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80359740 00356320  3B C3 00 00 */	addi r30, r3, 0
/* 80359744 00356324  4B FF 2C AD */	bl OSGetTime
/* 80359748 00356328  90 9F 07 84 */	stw r4, 0x784(r31)
/* 8035974C 0035632C  90 7F 07 80 */	stw r3, 0x780(r31)
/* 80359750 00356330  7F C3 F3 78 */	mr r3, r30
/* 80359754 00356334  48 00 11 E1 */	bl __AXSyncPBs
/* 80359758 00356338  48 00 06 41 */	bl __AXPrintStudio
/* 8035975C 0035633C  4B FF FB 61 */	bl __AXGetCommandListAddress
/* 80359760 00356340  3C 80 BA BE */	lis r4, 0xBABE0180@ha
/* 80359764 00356344  3B C3 00 00 */	addi r30, r3, 0
/* 80359768 00356348  38 64 01 80 */	addi r3, r4, 0xBABE0180@l
/* 8035976C 0035634C  4B FD C8 95 */	bl DSPSendMailToDSP
lbl_80359770:
/* 80359770 00356350  4B FD C8 59 */	bl DSPCheckMailToDSP
/* 80359774 00356354  28 03 00 00 */	cmplwi r3, 0
/* 80359778 00356358  40 82 FF F8 */	bne lbl_80359770
/* 8035977C 0035635C  7F C3 F3 78 */	mr r3, r30
/* 80359780 00356360  4B FD C8 81 */	bl DSPSendMailToDSP
lbl_80359784:
/* 80359784 00356364  4B FD C8 45 */	bl DSPCheckMailToDSP
/* 80359788 00356368  28 03 00 00 */	cmplwi r3, 0
/* 8035978C 0035636C  40 82 FF F8 */	bne lbl_80359784
/* 80359790 00356370  4B FF F3 51 */	bl __AXServiceCallbackStack
/* 80359794 00356374  4B FF 2C 5D */	bl OSGetTime
/* 80359798 00356378  90 9F 07 8C */	stw r4, 0x78c(r31)
/* 8035979C 0035637C  90 7F 07 88 */	stw r3, 0x788(r31)
/* 803597A0 00356380  4B FF F9 6D */	bl __AXProcessAux
/* 803597A4 00356384  4B FF 2C 4D */	bl OSGetTime
/* 803597A8 00356388  90 9F 07 94 */	stw r4, 0x794(r31)
/* 803597AC 0035638C  90 7F 07 90 */	stw r3, 0x790(r31)
/* 803597B0 00356390  4B FF 2C 41 */	bl OSGetTime
/* 803597B4 00356394  90 9F 07 9C */	stw r4, 0x79c(r31)
/* 803597B8 00356398  90 7F 07 98 */	stw r3, 0x798(r31)
/* 803597BC 0035639C  81 8D BE A8 */	lwz r12, __AXUserFrameCallback@sda21(r13)
/* 803597C0 003563A0  28 0C 00 00 */	cmplwi r12, 0
/* 803597C4 003563A4  41 82 00 0C */	beq lbl_803597D0
/* 803597C8 003563A8  7D 88 03 A6 */	mtlr r12
/* 803597CC 003563AC  4E 80 00 21 */	blrl
lbl_803597D0:
/* 803597D0 003563B0  4B FF 2C 21 */	bl OSGetTime
/* 803597D4 003563B4  90 9F 07 A4 */	stw r4, 0x7a4(r31)
/* 803597D8 003563B8  90 7F 07 A0 */	stw r3, 0x7a0(r31)
/* 803597DC 003563BC  38 7F 05 00 */	addi r3, r31, 0x500
/* 803597E0 003563C0  80 0D BE 98 */	lwz r0, __AXOutFrame@sda21(r13)
/* 803597E4 003563C4  1C 00 02 80 */	mulli r0, r0, 0x280
/* 803597E8 003563C8  7C 9F 02 14 */	add r4, r31, r0
/* 803597EC 003563CC  4B FF FB 0D */	bl __AXNextFrame
/* 803597F0 003563D0  80 6D BE 98 */	lwz r3, __AXOutFrame@sda21(r13)
/* 803597F4 003563D4  38 80 02 80 */	li r4, 0x280
/* 803597F8 003563D8  38 03 00 01 */	addi r0, r3, 1
/* 803597FC 003563DC  90 0D BE 98 */	stw r0, __AXOutFrame@sda21(r13)
/* 80359800 003563E0  80 0D BE 98 */	lwz r0, __AXOutFrame@sda21(r13)
/* 80359804 003563E4  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80359808 003563E8  90 0D BE 98 */	stw r0, __AXOutFrame@sda21(r13)
/* 8035980C 003563EC  80 0D BE 98 */	lwz r0, __AXOutFrame@sda21(r13)
/* 80359810 003563F0  1C 00 02 80 */	mulli r0, r0, 0x280
/* 80359814 003563F4  7C 7F 02 14 */	add r3, r31, r0
/* 80359818 003563F8  4B FF 6C 11 */	bl AIInitDMA
/* 8035981C 003563FC  4B FF 2B D5 */	bl OSGetTime
/* 80359820 00356400  90 9F 07 AC */	stw r4, 0x7ac(r31)
/* 80359824 00356404  90 7F 07 A8 */	stw r3, 0x7a8(r31)
/* 80359828 00356408  48 00 0A 29 */	bl __AXGetNumVoices
/* 8035982C 0035640C  90 7F 07 B0 */	stw r3, 0x7b0(r31)
/* 80359830 00356410  48 00 1E 49 */	bl __AXGetCurrentProfile
/* 80359834 00356414  28 03 00 00 */	cmplwi r3, 0
/* 80359838 00356418  41 82 00 5C */	beq lbl_80359894
/* 8035983C 0035641C  38 00 00 07 */	li r0, 7
/* 80359840 00356420  7C 09 03 A6 */	mtctr r0
/* 80359844 00356424  38 9F 07 80 */	addi r4, r31, 0x780
lbl_80359848:
/* 80359848 00356428  88 04 00 00 */	lbz r0, 0(r4)
/* 8035984C 0035642C  98 03 00 00 */	stb r0, 0(r3)
/* 80359850 00356430  88 04 00 01 */	lbz r0, 1(r4)
/* 80359854 00356434  98 03 00 01 */	stb r0, 1(r3)
/* 80359858 00356438  88 04 00 02 */	lbz r0, 2(r4)
/* 8035985C 0035643C  98 03 00 02 */	stb r0, 2(r3)
/* 80359860 00356440  88 04 00 03 */	lbz r0, 3(r4)
/* 80359864 00356444  98 03 00 03 */	stb r0, 3(r3)
/* 80359868 00356448  88 04 00 04 */	lbz r0, 4(r4)
/* 8035986C 0035644C  98 03 00 04 */	stb r0, 4(r3)
/* 80359870 00356450  88 04 00 05 */	lbz r0, 5(r4)
/* 80359874 00356454  98 03 00 05 */	stb r0, 5(r3)
/* 80359878 00356458  88 04 00 06 */	lbz r0, 6(r4)
/* 8035987C 0035645C  98 03 00 06 */	stb r0, 6(r3)
/* 80359880 00356460  88 04 00 07 */	lbz r0, 7(r4)
/* 80359884 00356464  38 84 00 08 */	addi r4, r4, 8
/* 80359888 00356468  98 03 00 07 */	stb r0, 7(r3)
/* 8035988C 0035646C  38 63 00 08 */	addi r3, r3, 8
/* 80359890 00356470  42 00 FF B8 */	bdnz lbl_80359848
lbl_80359894:
/* 80359894 00356474  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80359898 00356478  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035989C 0035647C  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803598A0 00356480  7C 08 03 A6 */	mtlr r0
/* 803598A4 00356484  38 21 00 18 */	addi r1, r1, 0x18
/* 803598A8 00356488  4E 80 00 20 */	blr

.global __AXOutAiCallback
__AXOutAiCallback:
/* 803598AC 0035648C  7C 08 02 A6 */	mflr r0
/* 803598B0 00356490  90 01 00 04 */	stw r0, 4(r1)
/* 803598B4 00356494  94 21 FF F8 */	stwu r1, -8(r1)
/* 803598B8 00356498  80 0D BE 9C */	lwz r0, __AXOutDspReady@sda21(r13)
/* 803598BC 0035649C  28 00 00 00 */	cmplwi r0, 0
/* 803598C0 003564A0  40 82 00 10 */	bne lbl_803598D0
/* 803598C4 003564A4  4B FF 2B 2D */	bl OSGetTime
/* 803598C8 003564A8  90 8D BE A4 */	stw r4, __AXOsTime+4@sda21(r13)
/* 803598CC 003564AC  90 6D BE A0 */	stw r3, __AXOsTime@sda21(r13)
lbl_803598D0:
/* 803598D0 003564B0  80 0D BE 9C */	lwz r0, __AXOutDspReady@sda21(r13)
/* 803598D4 003564B4  28 00 00 01 */	cmplwi r0, 1
/* 803598D8 003564B8  40 82 00 18 */	bne lbl_803598F0
/* 803598DC 003564BC  38 00 00 00 */	li r0, 0
/* 803598E0 003564C0  90 0D BE 9C */	stw r0, __AXOutDspReady@sda21(r13)
/* 803598E4 003564C4  38 60 00 00 */	li r3, 0
/* 803598E8 003564C8  4B FF FE 3D */	bl __AXOutNewFrame
/* 803598EC 003564CC  48 00 00 18 */	b lbl_80359904
lbl_803598F0:
/* 803598F0 003564D0  38 00 00 02 */	li r0, 2
/* 803598F4 003564D4  3C 60 80 4B */	lis r3, task@ha
/* 803598F8 003564D8  90 0D BE 9C */	stw r0, __AXOutDspReady@sda21(r13)
/* 803598FC 003564DC  38 63 C9 38 */	addi r3, r3, task@l
/* 80359900 003564E0  4B FD C8 45 */	bl DSPAssertTask
lbl_80359904:
/* 80359904 003564E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80359908 003564E8  38 21 00 08 */	addi r1, r1, 8
/* 8035990C 003564EC  7C 08 03 A6 */	mtlr r0
/* 80359910 003564F0  4E 80 00 20 */	blr

.global __AXDSPInitCallback
__AXDSPInitCallback:
/* 80359914 003564F4  38 00 00 01 */	li r0, 1
/* 80359918 003564F8  90 0D BE AC */	stw r0, __AXDSPInitFlag@sda21(r13)
/* 8035991C 003564FC  4E 80 00 20 */	blr

.global __AXDSPResumeCallback
__AXDSPResumeCallback:
/* 80359920 00356500  7C 08 02 A6 */	mflr r0
/* 80359924 00356504  90 01 00 04 */	stw r0, 4(r1)
/* 80359928 00356508  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035992C 0035650C  80 0D BE 9C */	lwz r0, __AXOutDspReady@sda21(r13)
/* 80359930 00356510  28 00 00 02 */	cmplwi r0, 2
/* 80359934 00356514  40 82 00 2C */	bne lbl_80359960
/* 80359938 00356518  38 00 00 00 */	li r0, 0
/* 8035993C 0035651C  90 0D BE 9C */	stw r0, __AXOutDspReady@sda21(r13)
/* 80359940 00356520  4B FF 2A B1 */	bl OSGetTime
/* 80359944 00356524  80 AD BE A0 */	lwz r5, __AXOsTime@sda21(r13)
/* 80359948 00356528  80 0D BE A4 */	lwz r0, __AXOsTime+4@sda21(r13)
/* 8035994C 0035652C  7C 00 20 10 */	subfc r0, r0, r4
/* 80359950 00356530  54 00 F0 BE */	srwi r0, r0, 2
/* 80359954 00356534  7C 03 03 78 */	mr r3, r0
/* 80359958 00356538  4B FF FD CD */	bl __AXOutNewFrame
/* 8035995C 0035653C  48 00 00 0C */	b lbl_80359968
lbl_80359960:
/* 80359960 00356540  38 00 00 01 */	li r0, 1
/* 80359964 00356544  90 0D BE 9C */	stw r0, __AXOutDspReady@sda21(r13)
lbl_80359968:
/* 80359968 00356548  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035996C 0035654C  38 21 00 08 */	addi r1, r1, 8
/* 80359970 00356550  7C 08 03 A6 */	mtlr r0
/* 80359974 00356554  4E 80 00 20 */	blr

.global __AXDSPDoneCallback
__AXDSPDoneCallback:
/* 80359978 00356558  38 00 00 01 */	li r0, 1
/* 8035997C 0035655C  90 0D BE B0 */	stw r0, __AXDSPDoneFlag@sda21(r13)
/* 80359980 00356560  4E 80 00 20 */	blr

.global __AXOutInitDSP
__AXOutInitDSP:
/* 80359984 00356564  7C 08 02 A6 */	mflr r0
/* 80359988 00356568  3C A0 80 36 */	lis r5, __AXDSPInitCallback@ha
/* 8035998C 0035656C  90 01 00 04 */	stw r0, 4(r1)
/* 80359990 00356570  3C 60 80 40 */	lis r3, axDspSlave@ha
/* 80359994 00356574  38 03 32 40 */	addi r0, r3, axDspSlave@l
/* 80359998 00356578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035999C 0035657C  3C 80 80 4B */	lis r4, __AXOutBuffer@ha
/* 803599A0 00356580  39 20 00 00 */	li r9, 0
/* 803599A4 00356584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803599A8 00356588  3B E4 C1 80 */	addi r31, r4, __AXOutBuffer@l
/* 803599AC 0035658C  3C 80 80 36 */	lis r4, __AXDSPResumeCallback@ha
/* 803599B0 00356590  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 803599B4 00356594  39 1F 08 08 */	addi r8, r31, 0x808
/* 803599B8 00356598  38 E0 00 10 */	li r7, 0x10
/* 803599BC 0035659C  A0 0D A5 C8 */	lhz r0, axDspSlaveLength@sda21(r13)
/* 803599C0 003565A0  38 C0 00 30 */	li r6, 0x30
/* 803599C4 003565A4  38 A5 99 14 */	addi r5, r5, __AXDSPInitCallback@l
/* 803599C8 003565A8  90 1F 07 C8 */	stw r0, 0x7c8(r31)
/* 803599CC 003565AC  38 00 20 00 */	li r0, 0x2000
/* 803599D0 003565B0  38 84 99 20 */	addi r4, r4, __AXDSPResumeCallback@l
/* 803599D4 003565B4  91 3F 07 CC */	stw r9, 0x7cc(r31)
/* 803599D8 003565B8  3C 60 80 36 */	lis r3, __AXDSPDoneCallback@ha
/* 803599DC 003565BC  91 1F 07 D0 */	stw r8, 0x7d0(r31)
/* 803599E0 003565C0  90 1F 07 D4 */	stw r0, 0x7d4(r31)
/* 803599E4 003565C4  38 03 99 78 */	addi r0, r3, __AXDSPDoneCallback@l
/* 803599E8 003565C8  91 3F 07 D8 */	stw r9, 0x7d8(r31)
/* 803599EC 003565CC  B0 FF 07 DC */	sth r7, 0x7dc(r31)
/* 803599F0 003565D0  B0 DF 07 DE */	sth r6, 0x7de(r31)
/* 803599F4 003565D4  90 BF 07 E0 */	stw r5, 0x7e0(r31)
/* 803599F8 003565D8  90 9F 07 E4 */	stw r4, 0x7e4(r31)
/* 803599FC 003565DC  90 1F 07 E8 */	stw r0, 0x7e8(r31)
/* 80359A00 003565E0  91 3F 07 EC */	stw r9, 0x7ec(r31)
/* 80359A04 003565E4  91 3F 07 BC */	stw r9, 0x7bc(r31)
/* 80359A08 003565E8  91 2D BE AC */	stw r9, __AXDSPInitFlag@sda21(r13)
/* 80359A0C 003565EC  91 2D BE B0 */	stw r9, __AXDSPDoneFlag@sda21(r13)
/* 80359A10 003565F0  4B FD C6 BD */	bl DSPCheckInit
/* 80359A14 003565F4  2C 03 00 00 */	cmpwi r3, 0
/* 80359A18 003565F8  40 82 00 08 */	bne lbl_80359A20
/* 80359A1C 003565FC  4B FD C5 F9 */	bl DSPInit
lbl_80359A20:
/* 80359A20 00356600  38 7F 07 B8 */	addi r3, r31, 0x7b8
/* 80359A24 00356604  4B FD C6 B1 */	bl DSPAddTask
lbl_80359A28:
/* 80359A28 00356608  80 0D BE AC */	lwz r0, __AXDSPInitFlag@sda21(r13)
/* 80359A2C 0035660C  2C 00 00 00 */	cmpwi r0, 0
/* 80359A30 00356610  41 82 FF F8 */	beq lbl_80359A28
/* 80359A34 00356614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80359A38 00356618  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80359A3C 0035661C  38 21 00 10 */	addi r1, r1, 0x10
/* 80359A40 00356620  7C 08 03 A6 */	mtlr r0
/* 80359A44 00356624  4E 80 00 20 */	blr

.global __AXOutInit
__AXOutInit:
/* 80359A48 00356628  7C 08 02 A6 */	mflr r0
/* 80359A4C 0035662C  3C 60 80 4B */	lis r3, __AXOutBuffer@ha
/* 80359A50 00356630  90 01 00 04 */	stw r0, 4(r1)
/* 80359A54 00356634  38 00 00 04 */	li r0, 4
/* 80359A58 00356638  7C 09 03 A6 */	mtctr r0
/* 80359A5C 0035663C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80359A60 00356640  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80359A64 00356644  3B E3 C1 80 */	addi r31, r3, __AXOutBuffer@l
/* 80359A68 00356648  38 60 00 00 */	li r3, 0
/* 80359A6C 0035664C  90 6D BE 98 */	stw r3, __AXOutFrame@sda21(r13)
/* 80359A70 00356650  38 9F 00 00 */	addi r4, r31, 0
lbl_80359A74:
/* 80359A74 00356654  90 64 00 00 */	stw r3, 0(r4)
/* 80359A78 00356658  90 64 00 04 */	stw r3, 4(r4)
/* 80359A7C 0035665C  90 64 00 08 */	stw r3, 8(r4)
/* 80359A80 00356660  90 64 00 0C */	stw r3, 0xc(r4)
/* 80359A84 00356664  90 64 00 10 */	stw r3, 0x10(r4)
/* 80359A88 00356668  90 64 00 14 */	stw r3, 0x14(r4)
/* 80359A8C 0035666C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80359A90 00356670  90 64 00 1C */	stw r3, 0x1c(r4)
/* 80359A94 00356674  90 64 00 20 */	stw r3, 0x20(r4)
/* 80359A98 00356678  90 64 00 24 */	stw r3, 0x24(r4)
/* 80359A9C 0035667C  90 64 00 28 */	stw r3, 0x28(r4)
/* 80359AA0 00356680  90 64 00 2C */	stw r3, 0x2c(r4)
/* 80359AA4 00356684  90 64 00 30 */	stw r3, 0x30(r4)
/* 80359AA8 00356688  90 64 00 34 */	stw r3, 0x34(r4)
/* 80359AAC 0035668C  90 64 00 38 */	stw r3, 0x38(r4)
/* 80359AB0 00356690  90 64 00 3C */	stw r3, 0x3c(r4)
/* 80359AB4 00356694  90 64 00 40 */	stw r3, 0x40(r4)
/* 80359AB8 00356698  90 64 00 44 */	stw r3, 0x44(r4)
/* 80359ABC 0035669C  90 64 00 48 */	stw r3, 0x48(r4)
/* 80359AC0 003566A0  90 64 00 4C */	stw r3, 0x4c(r4)
/* 80359AC4 003566A4  90 64 00 50 */	stw r3, 0x50(r4)
/* 80359AC8 003566A8  90 64 00 54 */	stw r3, 0x54(r4)
/* 80359ACC 003566AC  90 64 00 58 */	stw r3, 0x58(r4)
/* 80359AD0 003566B0  90 64 00 5C */	stw r3, 0x5c(r4)
/* 80359AD4 003566B4  90 64 00 60 */	stw r3, 0x60(r4)
/* 80359AD8 003566B8  90 64 00 64 */	stw r3, 0x64(r4)
/* 80359ADC 003566BC  90 64 00 68 */	stw r3, 0x68(r4)
/* 80359AE0 003566C0  90 64 00 6C */	stw r3, 0x6c(r4)
/* 80359AE4 003566C4  90 64 00 70 */	stw r3, 0x70(r4)
/* 80359AE8 003566C8  90 64 00 74 */	stw r3, 0x74(r4)
/* 80359AEC 003566CC  90 64 00 78 */	stw r3, 0x78(r4)
/* 80359AF0 003566D0  90 64 00 7C */	stw r3, 0x7c(r4)
/* 80359AF4 003566D4  90 64 00 80 */	stw r3, 0x80(r4)
/* 80359AF8 003566D8  90 64 00 84 */	stw r3, 0x84(r4)
/* 80359AFC 003566DC  90 64 00 88 */	stw r3, 0x88(r4)
/* 80359B00 003566E0  90 64 00 8C */	stw r3, 0x8c(r4)
/* 80359B04 003566E4  90 64 00 90 */	stw r3, 0x90(r4)
/* 80359B08 003566E8  90 64 00 94 */	stw r3, 0x94(r4)
/* 80359B0C 003566EC  90 64 00 98 */	stw r3, 0x98(r4)
/* 80359B10 003566F0  90 64 00 9C */	stw r3, 0x9c(r4)
/* 80359B14 003566F4  90 64 00 A0 */	stw r3, 0xa0(r4)
/* 80359B18 003566F8  90 64 00 A4 */	stw r3, 0xa4(r4)
/* 80359B1C 003566FC  90 64 00 A8 */	stw r3, 0xa8(r4)
/* 80359B20 00356700  90 64 00 AC */	stw r3, 0xac(r4)
/* 80359B24 00356704  90 64 00 B0 */	stw r3, 0xb0(r4)
/* 80359B28 00356708  90 64 00 B4 */	stw r3, 0xb4(r4)
/* 80359B2C 0035670C  90 64 00 B8 */	stw r3, 0xb8(r4)
/* 80359B30 00356710  90 64 00 BC */	stw r3, 0xbc(r4)
/* 80359B34 00356714  90 64 00 C0 */	stw r3, 0xc0(r4)
/* 80359B38 00356718  90 64 00 C4 */	stw r3, 0xc4(r4)
/* 80359B3C 0035671C  90 64 00 C8 */	stw r3, 0xc8(r4)
/* 80359B40 00356720  90 64 00 CC */	stw r3, 0xcc(r4)
/* 80359B44 00356724  90 64 00 D0 */	stw r3, 0xd0(r4)
/* 80359B48 00356728  90 64 00 D4 */	stw r3, 0xd4(r4)
/* 80359B4C 0035672C  90 64 00 D8 */	stw r3, 0xd8(r4)
/* 80359B50 00356730  90 64 00 DC */	stw r3, 0xdc(r4)
/* 80359B54 00356734  90 64 00 E0 */	stw r3, 0xe0(r4)
/* 80359B58 00356738  90 64 00 E4 */	stw r3, 0xe4(r4)
/* 80359B5C 0035673C  90 64 00 E8 */	stw r3, 0xe8(r4)
/* 80359B60 00356740  90 64 00 EC */	stw r3, 0xec(r4)
/* 80359B64 00356744  90 64 00 F0 */	stw r3, 0xf0(r4)
/* 80359B68 00356748  90 64 00 F4 */	stw r3, 0xf4(r4)
/* 80359B6C 0035674C  90 64 00 F8 */	stw r3, 0xf8(r4)
/* 80359B70 00356750  90 64 00 FC */	stw r3, 0xfc(r4)
/* 80359B74 00356754  90 64 01 00 */	stw r3, 0x100(r4)
/* 80359B78 00356758  90 64 01 04 */	stw r3, 0x104(r4)
/* 80359B7C 0035675C  90 64 01 08 */	stw r3, 0x108(r4)
/* 80359B80 00356760  90 64 01 0C */	stw r3, 0x10c(r4)
/* 80359B84 00356764  90 64 01 10 */	stw r3, 0x110(r4)
/* 80359B88 00356768  90 64 01 14 */	stw r3, 0x114(r4)
/* 80359B8C 0035676C  90 64 01 18 */	stw r3, 0x118(r4)
/* 80359B90 00356770  90 64 01 1C */	stw r3, 0x11c(r4)
/* 80359B94 00356774  90 64 01 20 */	stw r3, 0x120(r4)
/* 80359B98 00356778  90 64 01 24 */	stw r3, 0x124(r4)
/* 80359B9C 0035677C  90 64 01 28 */	stw r3, 0x128(r4)
/* 80359BA0 00356780  90 64 01 2C */	stw r3, 0x12c(r4)
/* 80359BA4 00356784  90 64 01 30 */	stw r3, 0x130(r4)
/* 80359BA8 00356788  90 64 01 34 */	stw r3, 0x134(r4)
/* 80359BAC 0035678C  90 64 01 38 */	stw r3, 0x138(r4)
/* 80359BB0 00356790  90 64 01 3C */	stw r3, 0x13c(r4)
/* 80359BB4 00356794  38 84 01 40 */	addi r4, r4, 0x140
/* 80359BB8 00356798  42 00 FE BC */	bdnz lbl_80359A74
/* 80359BBC 0035679C  38 7F 00 00 */	addi r3, r31, 0
/* 80359BC0 003567A0  38 80 05 00 */	li r4, 0x500
/* 80359BC4 003567A4  4B FE AC 49 */	bl DCFlushRange
/* 80359BC8 003567A8  38 00 00 02 */	li r0, 2
/* 80359BCC 003567AC  7C 09 03 A6 */	mtctr r0
/* 80359BD0 003567B0  38 7F 05 00 */	addi r3, r31, 0x500
/* 80359BD4 003567B4  38 00 00 00 */	li r0, 0
lbl_80359BD8:
/* 80359BD8 003567B8  90 03 00 00 */	stw r0, 0(r3)
/* 80359BDC 003567BC  90 03 00 04 */	stw r0, 4(r3)
/* 80359BE0 003567C0  90 03 00 08 */	stw r0, 8(r3)
/* 80359BE4 003567C4  90 03 00 0C */	stw r0, 0xc(r3)
/* 80359BE8 003567C8  90 03 00 10 */	stw r0, 0x10(r3)
/* 80359BEC 003567CC  90 03 00 14 */	stw r0, 0x14(r3)
/* 80359BF0 003567D0  90 03 00 18 */	stw r0, 0x18(r3)
/* 80359BF4 003567D4  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80359BF8 003567D8  90 03 00 20 */	stw r0, 0x20(r3)
/* 80359BFC 003567DC  90 03 00 24 */	stw r0, 0x24(r3)
/* 80359C00 003567E0  90 03 00 28 */	stw r0, 0x28(r3)
/* 80359C04 003567E4  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80359C08 003567E8  90 03 00 30 */	stw r0, 0x30(r3)
/* 80359C0C 003567EC  90 03 00 34 */	stw r0, 0x34(r3)
/* 80359C10 003567F0  90 03 00 38 */	stw r0, 0x38(r3)
/* 80359C14 003567F4  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80359C18 003567F8  90 03 00 40 */	stw r0, 0x40(r3)
/* 80359C1C 003567FC  90 03 00 44 */	stw r0, 0x44(r3)
/* 80359C20 00356800  90 03 00 48 */	stw r0, 0x48(r3)
/* 80359C24 00356804  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80359C28 00356808  90 03 00 50 */	stw r0, 0x50(r3)
/* 80359C2C 0035680C  90 03 00 54 */	stw r0, 0x54(r3)
/* 80359C30 00356810  90 03 00 58 */	stw r0, 0x58(r3)
/* 80359C34 00356814  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80359C38 00356818  90 03 00 60 */	stw r0, 0x60(r3)
/* 80359C3C 0035681C  90 03 00 64 */	stw r0, 0x64(r3)
/* 80359C40 00356820  90 03 00 68 */	stw r0, 0x68(r3)
/* 80359C44 00356824  90 03 00 6C */	stw r0, 0x6c(r3)
/* 80359C48 00356828  90 03 00 70 */	stw r0, 0x70(r3)
/* 80359C4C 0035682C  90 03 00 74 */	stw r0, 0x74(r3)
/* 80359C50 00356830  90 03 00 78 */	stw r0, 0x78(r3)
/* 80359C54 00356834  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80359C58 00356838  90 03 00 80 */	stw r0, 0x80(r3)
/* 80359C5C 0035683C  90 03 00 84 */	stw r0, 0x84(r3)
/* 80359C60 00356840  90 03 00 88 */	stw r0, 0x88(r3)
/* 80359C64 00356844  90 03 00 8C */	stw r0, 0x8c(r3)
/* 80359C68 00356848  90 03 00 90 */	stw r0, 0x90(r3)
/* 80359C6C 0035684C  90 03 00 94 */	stw r0, 0x94(r3)
/* 80359C70 00356850  90 03 00 98 */	stw r0, 0x98(r3)
/* 80359C74 00356854  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80359C78 00356858  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 80359C7C 0035685C  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 80359C80 00356860  90 03 00 A8 */	stw r0, 0xa8(r3)
/* 80359C84 00356864  90 03 00 AC */	stw r0, 0xac(r3)
/* 80359C88 00356868  90 03 00 B0 */	stw r0, 0xb0(r3)
/* 80359C8C 0035686C  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80359C90 00356870  90 03 00 B8 */	stw r0, 0xb8(r3)
/* 80359C94 00356874  90 03 00 BC */	stw r0, 0xbc(r3)
/* 80359C98 00356878  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 80359C9C 0035687C  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 80359CA0 00356880  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 80359CA4 00356884  90 03 00 CC */	stw r0, 0xcc(r3)
/* 80359CA8 00356888  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 80359CAC 0035688C  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 80359CB0 00356890  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 80359CB4 00356894  90 03 00 DC */	stw r0, 0xdc(r3)
/* 80359CB8 00356898  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 80359CBC 0035689C  90 03 00 E4 */	stw r0, 0xe4(r3)
/* 80359CC0 003568A0  90 03 00 E8 */	stw r0, 0xe8(r3)
/* 80359CC4 003568A4  90 03 00 EC */	stw r0, 0xec(r3)
/* 80359CC8 003568A8  90 03 00 F0 */	stw r0, 0xf0(r3)
/* 80359CCC 003568AC  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 80359CD0 003568B0  90 03 00 F8 */	stw r0, 0xf8(r3)
/* 80359CD4 003568B4  90 03 00 FC */	stw r0, 0xfc(r3)
/* 80359CD8 003568B8  90 03 01 00 */	stw r0, 0x100(r3)
/* 80359CDC 003568BC  90 03 01 04 */	stw r0, 0x104(r3)
/* 80359CE0 003568C0  90 03 01 08 */	stw r0, 0x108(r3)
/* 80359CE4 003568C4  90 03 01 0C */	stw r0, 0x10c(r3)
/* 80359CE8 003568C8  90 03 01 10 */	stw r0, 0x110(r3)
/* 80359CEC 003568CC  90 03 01 14 */	stw r0, 0x114(r3)
/* 80359CF0 003568D0  90 03 01 18 */	stw r0, 0x118(r3)
/* 80359CF4 003568D4  90 03 01 1C */	stw r0, 0x11c(r3)
/* 80359CF8 003568D8  90 03 01 20 */	stw r0, 0x120(r3)
/* 80359CFC 003568DC  90 03 01 24 */	stw r0, 0x124(r3)
/* 80359D00 003568E0  90 03 01 28 */	stw r0, 0x128(r3)
/* 80359D04 003568E4  90 03 01 2C */	stw r0, 0x12c(r3)
/* 80359D08 003568E8  90 03 01 30 */	stw r0, 0x130(r3)
/* 80359D0C 003568EC  90 03 01 34 */	stw r0, 0x134(r3)
/* 80359D10 003568F0  90 03 01 38 */	stw r0, 0x138(r3)
/* 80359D14 003568F4  90 03 01 3C */	stw r0, 0x13c(r3)
/* 80359D18 003568F8  38 63 01 40 */	addi r3, r3, 0x140
/* 80359D1C 003568FC  42 00 FE BC */	bdnz lbl_80359BD8
/* 80359D20 00356900  38 7F 05 00 */	addi r3, r31, 0x500
/* 80359D24 00356904  38 80 02 80 */	li r4, 0x280
/* 80359D28 00356908  4B FE AA E5 */	bl DCFlushRange
/* 80359D2C 0035690C  4B FF FC 59 */	bl __AXOutInitDSP
/* 80359D30 00356910  3C 60 80 36 */	lis r3, __AXOutAiCallback@ha
/* 80359D34 00356914  38 63 98 AC */	addi r3, r3, __AXOutAiCallback@l
/* 80359D38 00356918  4B FF 66 AD */	bl AIRegisterDMACallback
/* 80359D3C 0035691C  38 7F 05 00 */	addi r3, r31, 0x500
/* 80359D40 00356920  38 9F 02 80 */	addi r4, r31, 0x280
/* 80359D44 00356924  4B FF F5 B5 */	bl __AXNextFrame
/* 80359D48 00356928  38 00 00 01 */	li r0, 1
/* 80359D4C 0035692C  90 0D BE 9C */	stw r0, __AXOutDspReady@sda21(r13)
/* 80359D50 00356930  38 60 00 00 */	li r3, 0
/* 80359D54 00356934  38 80 02 80 */	li r4, 0x280
/* 80359D58 00356938  80 0D BE 98 */	lwz r0, __AXOutFrame@sda21(r13)
/* 80359D5C 0035693C  90 6D BE A8 */	stw r3, __AXUserFrameCallback@sda21(r13)
/* 80359D60 00356940  1C 00 02 80 */	mulli r0, r0, 0x280
/* 80359D64 00356944  7C 7F 02 14 */	add r3, r31, r0
/* 80359D68 00356948  4B FF 66 C1 */	bl AIInitDMA
/* 80359D6C 0035694C  4B FF 67 45 */	bl AIStartDMA
/* 80359D70 00356950  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80359D74 00356954  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80359D78 00356958  38 21 00 20 */	addi r1, r1, 0x20
/* 80359D7C 0035695C  7C 08 03 A6 */	mtlr r0
/* 80359D80 00356960  4E 80 00 20 */	blr

.global AXRegisterCallback
AXRegisterCallback:
/* 80359D84 00356964  90 6D BE A8 */	stw r3, __AXUserFrameCallback@sda21(r13)
/* 80359D88 00356968  4E 80 00 20 */	blr


.section .bss
    .balign 8
.global __AXOutBuffer
__AXOutBuffer:
    .skip 0x500
.global __AXOutSBuffer
__AXOutSBuffer:
    .skip 0x280
.global __AXLocalProfile
__AXLocalProfile:
    .skip 0x38
.global task
task:
    .skip 0x50
.global ax_dram_image
ax_dram_image:
    .skip 0x4000


.section .sbss
    .balign 8
.global __AXOutFrame
__AXOutFrame:
    .skip 0x4
.global __AXOutDspReady
__AXOutDspReady:
    .skip 0x4
.global __AXOsTime
__AXOsTime:
    .skip 0x8
.global __AXUserFrameCallback
__AXUserFrameCallback:
    .skip 0x4
.global __AXDSPInitFlag
__AXDSPInitFlag:
    .skip 0x4
.global __AXDSPDoneFlag
__AXDSPDoneFlag:
    .skip 0x4