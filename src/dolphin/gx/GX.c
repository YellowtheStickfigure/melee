#include <dolphin/gx/GX.h>
#include <dolphin/gx/GXLight.h>
#include <functions.h>
#include <string.h>

/* 004DAEEC */ extern const f32 lbl_804DE30C;
/* 004DAEEC */ extern const f32 lbl_804DE30C;
/* 004DAEE8 */ extern const f32 lbl_804DE308;
/* 004DAEE8 */ extern const f32 lbl_804DE308;
/* 004DAEE0 */ extern const f32 lbl_804DE300[2];
/* 004DAED8 */ extern const f32 lbl_804DE2F8[2];
/* 004DAED4 */ extern const f32 lbl_804DE2F4;
/* 004DAED0 */ extern const f32 lbl_804DE2F0;
/* 004DAEC8 */ extern const f32 lbl_804DE2E8[2];
/* 004DAEC0 */ extern const f32 lbl_804DE2E0[2];
/* 004DAEB8 */ extern const f32 lbl_804DE2D8[2];
/* 004DAEB0 */ extern const f32 lbl_804DE2D0[2];
/* 004DAEA8 */ extern const f32 lbl_804DE2C8[2];
/* 004DAEA0 */ extern const f32 lbl_804DE2C0[2];
/* 004DAE98 */ extern const f32 lbl_804DE2B8[2];
/* 004DAE90 */ extern const f32 lbl_804DE2B0[2];
/* 004DAE88 */ extern const f32 lbl_804DE2A8[2];
/* 004DAE80 */ extern const f32 lbl_804DE2A0[2];
/* 004DAE7C */ extern const f32 lbl_804DE29C;
/* 004DAE78 */ extern const f32 lbl_804DE298;
/* 004DAE70 */ extern const f32 lbl_804DE290[2];
/* 004DAE6C */ extern const f32 lbl_804DE28C;
/* 004DAE68 */ extern const f32 lbl_804DE288;
/* 004DAE64 */ extern const f32 lbl_804DE284;
/* 004DAE60 */ extern const f32 lbl_804DE280;
/* 004DAE5C */ extern const f32 lbl_804DE27C;
/* 004DAE58 */ extern const f32 lbl_804DE278;
/* 004DAE50 */ extern const f32 lbl_804DE270[2];
/* 004DAE48 */ extern const f32 lbl_804DE268[2];
/* 004DAE40 */ extern const f32 lbl_804DE260[2];
/* 004DAE3C */ extern const f32 lbl_804DE25C;
/* 004DAE38 */ extern const f32 lbl_804DE258;
/* 004DAE34 */ extern const f32 lbl_804DE254;
/* 004DAE30 */ extern const f32 lbl_804DE250;
/* 004DAE2C */ extern const f32 lbl_804DE24C;
/* 004DAE28 */ extern const f32 lbl_804DE248;
/* 004DAE24 */ extern const f32 lbl_804DE244;
/* 004DAE20 */ extern const f32 lbl_804DE240;
/* 004DAE1C */ extern const f32 lbl_804DE23C;
/* 004DAE18 */ extern const f32 lbl_804DE238;
/* 004DAE14 */ extern const f32 lbl_804DE234;
/* 004DAE10 */ extern const f32 lbl_804DE230;
/* 004DAE08 */ extern const f32 lbl_804DE228[2];
/* 004DAE00 */ extern const f32 lbl_804DE220[2];
/* 004D27D8 */ extern const u32 lbl_804D5BF8[2];
/* 004D27D0 */ extern const u32 lbl_804D5BF0[2];
/* 004D27C8 */ extern const u32 lbl_804D5BE8[2];
/* 004D27C0 */ extern const u32 lbl_804D5BE0[2];
/* 004D27B8 */ extern const u32 lbl_804D5BD8[2];
/* 004D27B0 */ extern const u32 lbl_804D5BD0[2];
/* 004D27A8 */ extern const u32 lbl_804D5BC8[2];
/* 004D27A0 */ extern const u32 lbl_804D5BC0[2];
/* 003FE0E8 */ extern const u32 lbl_80401508[8];
/* 003FE0C0 */ extern const u32 lbl_804014E0[10];
/* 003FDE38 */ extern const GXRenderModeObj lbl_80401258;
/* 003FDDFC */ extern const GXRenderModeObj lbl_8040121C;
/* 003FDDC0 */ extern const GXRenderModeObj lbl_804011E0;
/* 003FDD84 */ extern const GXRenderModeObj lbl_804011A4;
/* 003FDD48 */ extern const GXRenderModeObj lbl_80401168;
/* 0033ED74 */ extern void func_80342194();
/* 0033E4DC */ extern void func_803418FC(u32, u32);
/* 0033E458 */ extern s32 func_80341878(s32);
/* 0033E430 */ extern void func_80341850(s32);
/* 0033E3EC */ extern void func_8034180C(s32, s32);
/* 0033E33C */ extern void func_8034175C(s32, s32, s32, s32);
/* 0033E2F0 */ extern void func_80341710(unk_t);
/* 0033E2CC */ extern void func_803416EC(f32, f32, f32, f32, f32, f32);
/* 0033E1B0 */ extern void func_803415D0(BOOL, f32, f32, f32, f32, f32, f32);
/* 0033E12C */ extern void func_8034154C(unk_t, u32, s8);
/* 0033E0F0 */ extern void GXSetCurrentMtx(s32);
/* 0033E0B0 */ extern void func_803414D0(unk_t, s32);
/* 0033E074 */ extern void func_80341494(unk_t, s32);
/* 0033E050 */ extern void func_80341470(unk_t, s8 *);
/* 0033E01C */ extern void func_8034143C(unk_t, s8 *, s8 *);
/* 0033DFE8 */ extern void func_80341408(unk_t, s8 *, s8 *);
/* 0033DF70 */ extern void func_80341390(unk_t);
/* 0033DE9C */ extern void func_803412BC(unk_t, s32);
/* 0033DD28 */ extern void GXProject(unk_t, unk_t, unk_t, f32 *, f32 *, f32 *, f32, f32, f32);
/* 0033DCB8 */ extern void func_803410D8(s32, s32);
/* 0033DCB4 */ extern void func_803410D4(f32, f32);
/* 0033DC34 */ extern void GXSetFieldMode(s8, s32);
/* 0033DBFC */ extern void func_8034101C(s32, s8);
/* 0033DBA8 */ extern void func_80340FC8(s32, s32);
/* 0033DB68 */ extern void func_80340F88(s32);
/* 0033DA58 */ extern void GXSetPixelFmt(s32, s32);
/* 0033DA18 */ extern void func_80340E38(s32);
/* 0033D9A0 */ extern void func_80340DC0(s8, s32, s32);
/* 0033D960 */ extern void func_80340D80(s32);
/* 0033D920 */ extern void func_80340D40(s32);
/* 0033D81C */ extern void func_80340C3C(s32, s32, s32, s32);
/* 0033D71C */ extern void func_80340B3C(s8, s16, s32 *);
/* 0033D554 */ extern void func_80340974(s16 *, u16, unk_t);
/* 0033D3A4 */ extern void func_803407C4(s32, u8 *, f32, f32, f32, f32);
/* 0033D370 */ extern void func_80340790(s8);
/* 0033D370 */ extern void func_80340790(s8);
/* 0033D1D0 */ extern void func_803405F0(u32, s32, s32, s32);
/* 0033D14C */ extern void func_8034056C(s32, s32, s32);
/* 0033D0FC */ extern void func_8034051C(s32, s32, s32, s32, s32);
/* 0033D0F8 */ extern void func_80340518();
/* 0033D058 */ extern void func_80340478(s32, s32, s32, s32, s32);
/* 0033D000 */ extern void func_80340420(s32, s32, s32);
/* 0033CF94 */ extern void func_803403B4(s32, s32);
/* 0033CF28 */ extern void func_80340348(s32, s32);
/* 0033CEB4 */ extern void func_803402D4(s32, unk_t);
/* 0033CE40 */ extern void func_80340260(s32, GXColor *);
/* 0033CDCC */ extern void func_803401EC(s32, unk_t);
/* 0033CD0C */ extern void func_8034012C(s32, s32, s32, s32, s32, s32);
/* 0033CC4C */ extern void func_8034006C(s32, s32, s32, s32, s32, s32);
/* 0033CBC8 */ extern void func_8033FFE8(s32, s32, s32, s32, s32);
/* 0033CB48 */ extern void func_8033FF68(s32, s32, s32, s32, s32);
/* 0033C9A4 */ extern void func_8033FDC4(s32, s32);
/* 0033C980 */ extern void func_8033FDA0(GXContext *ctx, s32, u8 *);
/* 0033C8B4 */ extern void func_8033FCD4(s32);
/* 0033C86C */ extern void func_8033FC8C();
/* 0033C840 */ extern void func_8033FC60(s32);
/* 0033C708 */ extern void func_8033FB28(s32, s32, s32);
/* 0033C534 */ extern void func_8033F954(s32, s32, s32);
/* 0033C3D4 */ extern void func_8033F7F4(s32, unk_t, s32);
/* 0033C338 */ extern void func_8033F758(s32, s32, u8, s32, s32, s32, s32, s32);
/* 0033C0F8 */ extern void func_8033F518(s32);
/* 0033BF8C */ extern void func_8033F3AC();
/* 0033BEC0 */ extern void func_8033F2E0(s32, s32);
/* 0033BEAC */ extern GXTexRegionCallback func_8033F2CC(GXTexRegionCallback);
/* 0033BE98 */ extern GXTexRegionCallback func_8033F2B8(GXTexRegionCallback);
/* 0033BE50 */ extern void func_8033F270(GXContext *ctx, s32, u8 *);
/* 0033BE08 */ extern void func_8033F228(s32 *, s32, s32);
/* 0033BCE8 */ extern void func_8033F108(unk_t, s8, u32, s32, u32, s32, s32);
/* 0033BC4C */ extern void func_8033F06C(unk_t, s32);
/* 0033BC04 */ extern void func_8033F024(unk_t, u32, s32, s16);
/* 0033BBB0 */ extern void func_8033EFD0(unk_t, s32);
/* 0033BA08 */ extern void func_8033EE28(unk_t, unk_t, s32);
/* 0033BA00 */ extern void func_8033EE20(s32);
/* 0033B9F0 */ extern s32 func_8033EE10(unk_t);
/* 0033B9E0 */ extern s32 func_8033EE00(unk_t);
/* 0033B84C */ extern void func_8033EC6C(unk_t, s32, s32, s32, s8, s32, f32, f32, f32);
/* 0033B804 */ extern void func_8033EC24(unk_t, s32);
/* 0033B590 */ extern void func_8033E9B0(unk_t, u32, u16, u16, s32, s32, s32, s8);
/* 0033B4C8 */ extern void func_8033E8E8(u32, s16, s16, s32 *, s32 *, s32 *);
/* 0033B36C */ extern s32 func_8033E78C(u16, u16, s32, u8, u8);
/* 0033B188 */ extern void GXSetChanCtrl(GXChannelID chan_id, u8, GXColorSrc, GXColorSrc color_src, GXLightID light_id, GXDiffuseFn, GXAttnFn);
/* 0033B13C */ extern void GXSetNumChans(u8);
/* 0033AFD4 */ extern void GXSetChanMatColor(GXChannelID chan_id, GXColor *color);
/* 0033AE6C */ extern void GXSetChanAmbColor(GXChannelID chan_id, GXColor *color);
/* 0033AD24 */ extern void GXLoadLightObjImm(GXLightObj *lobj, u32);
/* 0033ACFC */ extern void GXInitLightColor(GXLightObj *lobj, GXColor *color);
/* 0033ACE0 */ extern void GXInitLightDir(GXLightObj *, f32, f32, f32);
/* 0033ACD0 */ extern void GXInitLightPos(GXLightObj *, f32, f32, f32);
/* 0033AC00 */ extern void func_8033E020(GXLightObj *, s32, f32, f32);
/* 0033AA80 */ extern void func_8033DEA0(GXLightObj *, u32, f32);
/* 0033AA64 */ extern void GXInitLightAttn(GXLightObj *, f32, f32, f32, f32, f32, f32);
/* 0033AA2C */ extern void func_8033DE4C();
/* 0033A89C */ extern void func_8033DCBC(u32, s8);
/* 0033A72C */ extern void func_8033DB4C(u32, s8);
/* 0033A710 */ extern void func_8033DB30(s32);
/* 0033A4E8 */ extern void func_8033D908(s8, u8 *, s8, u8 *);
/* 0033A480 */ extern void func_8033D8A0(u8 *, s32);
/* 0033A3C4 */ extern u32 func_8033D7E4(f32);
/* 0033A348 */ extern void func_8033D768(s32);
/* 0033A31C */ extern void func_8033D73C(s32);
/* 0033A1AC */ extern void func_8033D5CC(s32, s32, s32, s32);
/* 0033A168 */ extern void func_8033D588(s32);
/* 0033A0A8 */ extern void func_8033D4C8(s16, s32, s16, s16);
/* 00339FE8 */ extern void func_8033D408(s16, s32, s16, s16);
/* 00339FC4 */ extern void local_8033D3E4();
/* 00339F80 */ extern void func_8033D3A0(s32);
/* 00339ECC */ extern void func_8033D2EC(s32, s32, s32);
/* 00339ECC */ extern void func_8033D350(s32);
/* 00339E78 */ extern void func_8033D298(s32, s32);
/* 00339E20 */ extern void func_8033D240(s32, s32);
/* 00339D98 */ extern void local_8033D1B8();
/* 00339CBC */ extern void func_8033D0DC(s32, s32, s16);
/* 00339C30 */ extern void __GXSetDirtyState();