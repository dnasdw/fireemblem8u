#include "global.h"

#include "ctc.h"
#include "fontgrp.h"
#include "hardware.h"
#include "bmitem.h"
#include "bmshop.h"
#include "face.h"
#include "icon.h"
#include "uiutils.h"
#include "bm.h"
#include "bmunit.h"
#include "statscreen.h"
#include "m4a.h"
#include "soundwrapper.h"

struct WmSellProc {
    /* 00 */ PROC_HEADER;

    /* 2C */ struct Unit* unit;
    /* 30 */ u8 unk_30;
    /* 31 */ u8 unk_31;
    /* 32 */ u16 unk_32;
    /* 34 */ u16 unk_34;
};

struct Unknown02013648 {
    /* 00 */ struct Font font;
    /* 18 */ struct TextHandle textA;
    /* 20 */ struct TextHandle textB;
    /* 28 */ struct TextHandle textArray[5];
    /* 50 */ u8 _pad[0x90-0x50];
    /* 90 */ struct TextHandle textC;
};

extern struct Unknown02013648 gUnknown_02013648;

extern u16 gUnknown_02022D10[];
extern u16 gUnknown_02022E90[];
extern u16 gUnknown_02022EEC[];
extern u16 gUnknown_02022F10[];
extern u16 gUnknown_02022F1E[];

extern u8 gUnknown_08A1BBD0[];
extern int gUnknown_08A1951C[];
extern char* gUnknown_08A19524;
extern struct ProcCmd gUnknown_08A19528[];


//! FE8U = 0x0809FDA0
void sub_809FDA0(void) {
    int i;

    for (i = 0; i < 4; i++) {
        PutSpriteExt(4, 0x30 + i * 0x20, 0x10, gObject_32x16, 0xDF80 + i * 4);
    }

    return;
}

//! FE8U = 0x0809FDD4
void sub_809FDD4(int index, ProcPtr parent) {

    StartParallelWorker(sub_809FDA0, parent);

    sub_80ADD24(
        0x7000,
        0xd,
        GetStringFromIndexInBuffer(gUnknown_08A1951C[index], gUnknown_08A19524),
        1,
        1,
        1,
        parent
    );

    return;
}

//! FE8U = 0x0809FE1C
void sub_809FE1C(void) {
    u16 vcount = REG_VCOUNT + 1;

    if (vcount > DISPLAY_HEIGHT) {
        vcount = 0;
    }

    if (vcount == 0xc) {
        REG_BLDCNT = 200;
    }

    if ((vcount == 0x34) || (vcount == 0)) {
        REG_BLDCNT = 0x242;
    }

    return;
}

//! FE8U = 0x0809FE58
void sub_809FE58(struct WmSellProc* proc) {
    proc->unk_34 = 0;
    proc->unk_32 = 0xff;
    proc->unk_30 = 0;
    return;
}

//! FE8U = 0x0809FE68
void sub_809FE68(void) {
    InitSomeOtherGraphicsRelatedStruct(&gUnknown_02013648.font, (void*)0x06011000, 0xb);
    CopyToPaletteBuffer(Pal_UIFont, 0x360, 0x20);

    Text_Init3(&gUnknown_02013648.textC);

    SetFont(&gUnknown_02013648.font);
    SetFontGlyphSet(0);

    Text_80046B4(&gUnknown_02013648.textC, 0);

    Text_InsertString(&gUnknown_02013648.textC, 0, 0, GetStringFromIndex(0x059C));
    Text_InsertString(&gUnknown_02013648.textC, 0x40, 0, GetStringFromIndex(0x059B));
    Text_InsertString(&gUnknown_02013648.textC, 0x80, 3, GetStringFromIndex(0x059D));

    SetFont(0);

    return;
}

//! FE8U = 0x0809FEFC
void sub_809FEFC(void) {
    sub_809A31C(0xa0, 0x5b, 8, 4, 0x8840);

    PutSpriteExt(4, 0xb0, 0x5e, gObject_32x16, 0xB088);
    PutSpriteExt(4, 0xd0, 0x5e, gObject_32x16, 0xB08C);
    PutSpriteExt(4, 0xa8, 0x6e, gObject_32x16, 0xB080);
    PutSpriteExt(4, 200, 0x6e, gObject_32x16, 0xB084);

    return;
}

//! FE8U = 0x0809FF74
void sub_809FF74(void) {
    PutSpriteExt(4, 0x88, 0x48, gObject_32x16, 0xB090);
    PutSpriteExt(4, 0xa8, 0x48, gObject_8x16, 0xB094);
    return;
}

//! FE8U = 0x0809FFB0
void sub_809FFB0(int item) {
    TileMap_FillRect(gUnknown_02022F10, 10, 1, 0);

    if (item != 0) {
        u16 sellPrice = GetItemSellPrice(item);

        if ((sellPrice == 0) || ((GetItemAttributes(item) & 0x10) != 0)) {
            sub_8004B0C(gUnknown_02022F10 + 5, 1, 0x14);
            sub_8004B0C(gUnknown_02022F10 + 6, 1, 0x14);
            sub_8004B0C(gUnknown_02022F10 + 7, 1, 0x14);
        } else {
            sub_8004B88(gUnknown_02022F10 + 6, 2, sellPrice);
        }

        sub_8004B0C(gUnknown_02022F1E, 3, 0x1e);
    }

    BG_EnableSyncByMask(1);

    return;
}

//! FE8U = 0x080A0034
void sub_80A0034(void) {
    TileMap_FillRect(gUnknown_02022E90, 10, 1, 0);

    sub_8004B88(gUnknown_02022E90 + 0x146, 2, GetPartyGoldAmount());
    sub_8004B0C(gUnknown_02022E90 + 0x147, 3, 0x1e);

    BG_EnableSyncByMask(1);

    return;
}

//! FE8U = 0x080A007C
void sub_80A007C(void) {
    SetFont(0);

    TileMap_FillRect(gUnknown_02022D10, 0xc, 1, 0);

    DrawTextInline(&gUnknown_02013648.textA, gUnknown_02022D10 + 0x6d, 0, 2, 0, GetStringFromIndex(0x598)); // TODO msgid "Supply"
    PutFaceChibi(0xab, gUnknown_02022D10 - 0x13, 0x270, 2, 1);

    BG_EnableSyncByMask(1);

    return;
}

//! FE8U = 0x080A00DC
void sub_80A00DC(struct WmSellProc* proc) {
    int i;

    gLCDControlBuffer.dispcnt.mode = 0;

    SetupBackgrounds(0);

    BG_Fill(BG_GetMapBuffer(0), 0);
    BG_Fill(BG_GetMapBuffer(1), 0);
    BG_Fill(BG_GetMapBuffer(2), 0);

    gLCDControlBuffer.bg0cnt.priority = 0;
    gLCDControlBuffer.bg1cnt.priority = 2;
    gLCDControlBuffer.bg2cnt.priority = 0;
    gLCDControlBuffer.bg3cnt.priority = 3;

    ResetFaces();

    Font_InitForUIDefault();
    ResetIconGraphics_();
    LoadUiFrameGraphics();
    LoadObjUIGfx();

    BG_SetPosition(0, 0, 0);
    BG_SetPosition(1, 0, 0);
    BG_SetPosition(2, 0, 0);

    LoadDialogueBoxGfx((void*)0x06014000, -1);
    LoadIconPalettes(4);

    EndSlidingWallEffectMaybe();

    sub_8098C3C(0x5000, 5);
    PutImg_PrepPopupWindow(0x800, 8);

    CopyDataWithPossibleUncomp(gUnknown_08A1BBD0, gGenericBuffer);
    CallARM_FillTileRect(gBG1TilemapBuffer, gGenericBuffer, 0x1000);

    BG_EnableSyncByMask(7);

    StartFace2(0, GetUnitPortraitId(proc->unit), 0x44, 0x48, 0x503);
    sub_80AC9C0(proc);
    ResetPrepScreenHandCursor(proc);
    sub_80AD4A0(0x600, 1);

    gLCDControlBuffer.dispcnt.win0_on = 1;
    gLCDControlBuffer.dispcnt.win1_on = 0;
    gLCDControlBuffer.dispcnt.objWin_on = 0;

    gLCDControlBuffer.win0_left = 0x80;
    gLCDControlBuffer.win0_top = 0x28;
    gLCDControlBuffer.win0_right = 0xe0;
    gLCDControlBuffer.win0_bottom = 0x98;

    gLCDControlBuffer.wincnt.win0_enableBg0 = 1;
    gLCDControlBuffer.wincnt.win0_enableBg1 = 1;
    gLCDControlBuffer.wincnt.win0_enableBg2 = 1;
    gLCDControlBuffer.wincnt.win0_enableBg3 = 1;
    gLCDControlBuffer.wincnt.win0_enableObj = 1;

    gLCDControlBuffer.wincnt.wout_enableBg0 = 1;
    gLCDControlBuffer.wincnt.wout_enableBg1 = 1;
    gLCDControlBuffer.wincnt.wout_enableBg2 = 0;
    gLCDControlBuffer.wincnt.wout_enableBg3 = 1;
    gLCDControlBuffer.wincnt.wout_enableObj = 1;

    gLCDControlBuffer.wincnt.win0_enableBlend = 1;
    gLCDControlBuffer.wincnt.wout_enableBlend = 1;

    SetSpecialColorEffectsParameters(0, 8, 8, 8);

    NewGreenTextColorManager((void*)proc);

    StartHelpPromptSprite(0x78, 0x8c, 2, (void*)proc);
    sub_80984A8(0xa5, 0x80, 10, proc);
    sub_80984CC(0xa5, 0x80);

    Text_Init(&gUnknown_02013648.textA, 4);
    Text_Init(&gUnknown_02013648.textB, 2);

    sub_809FE68();

    for (i = 0; i < 5; i++) {
        Text_Init(&gUnknown_02013648.textArray[i], 7);
    }

    SetPrimaryHBlankHandler(0);
    SetPrimaryHBlankHandler(sub_809FE1C);

    BG_EnableSyncByMask(4);

    sub_809B74C(gUnknown_02022EEC, &gUnknown_02013648.textArray[0], proc->unit, 0);
    sub_80A007C();

    StartParallelWorker(sub_809FF74, proc);

    sub_809FFB0(proc->unit->items[proc->unk_30]);
    sub_80A0034();

    return;
}

#if NONMATCHING

/* https://decomp.me/scratch/pd83D */

//! FE8U = 0x080A032C
s8 sub_80A032C(struct WmSellProc* proc) {

    if ((gKeyStatusPtr->repeatedKeys & 0x40) != 0) {
        register int count asm("r3") = GetUnitItemCount(proc->unit);

        if (proc->unk_30 != 0) {
            proc->unk_30--;
        } else {
            if ((gKeyStatusPtr->newKeys & 0x40) == 0) {
                return 0;
            }

            count = count - 1;
            proc->unk_30 = count;
        }

        PlaySoundEffect(0x66);

        return 1;

    } else if ((gKeyStatusPtr->repeatedKeys & 0x80) != 0) {
        int count = GetUnitItemCount(proc->unit);

        if (proc->unk_30 < count - 1) {
            proc->unk_30++;
        } else {
            if ((gKeyStatusPtr->newKeys & 0x80) == 0) {
                return 0;
            }

            proc->unk_30 = 0;
        }

        PlaySoundEffect(0x66);

        return 1;
    }

    return 0;
}

#else // if !NONMATCHING

__attribute__((naked))
s8 sub_80A032C(struct WmSellProc* proc) {
    asm("\n\
        .syntax unified\n\
        push {r4, r5, r6, r7, lr}\n\
        adds r4, r0, #0\n\
        ldr r6, _080A035C  @ gKeyStatusPtr\n\
        ldr r0, [r6]\n\
        ldrh r1, [r0, #6]\n\
        movs r7, #0x40\n\
        adds r0, r7, #0\n\
        ands r0, r1\n\
        lsls r0, r0, #0x10\n\
        lsrs r5, r0, #0x10\n\
        cmp r5, #0\n\
        beq _080A0372\n\
        ldr r0, [r4, #0x2c]\n\
        bl GetUnitItemCount\n\
        adds r3, r0, #0\n\
        adds r2, r4, #0\n\
        adds r2, #0x30\n\
        ldrb r0, [r2]\n\
        cmp r0, #0\n\
        beq _080A0360\n\
        subs r0, #1\n\
        strb r0, [r2]\n\
        b _080A03A2\n\
        .align 2, 0\n\
    _080A035C: .4byte gKeyStatusPtr\n\
    _080A0360:\n\
        ldr r0, [r6]\n\
        ldrh r1, [r0, #8]\n\
        adds r0, r7, #0\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _080A03BC\n\
        subs r0, r3, #1\n\
        strb r0, [r2]\n\
        b _080A03A2\n\
    _080A0372:\n\
        movs r7, #0x80\n\
        adds r0, r7, #0\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _080A03BC\n\
        ldr r0, [r4, #0x2c]\n\
        bl GetUnitItemCount\n\
        adds r2, r4, #0\n\
        adds r2, #0x30\n\
        ldrb r1, [r2]\n\
        subs r0, #1\n\
        cmp r1, r0\n\
        bge _080A0394\n\
        adds r0, r1, #1\n\
        strb r0, [r2]\n\
        b _080A03A2\n\
    _080A0394:\n\
        ldr r0, [r6]\n\
        ldrh r1, [r0, #8]\n\
        adds r0, r7, #0\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _080A03BC\n\
        strb r5, [r2]\n\
    _080A03A2:\n\
        ldr r0, _080A03B8  @ gRAMChapterData\n\
        adds r0, #0x41\n\
        ldrb r0, [r0]\n\
        lsls r0, r0, #0x1e\n\
        cmp r0, #0\n\
        blt _080A03B4\n\
        movs r0, #0x66\n\
        bl m4aSongNumStart\n\
    _080A03B4:\n\
        movs r0, #1\n\
        b _080A03BE\n\
        .align 2, 0\n\
    _080A03B8: .4byte gRAMChapterData\n\
    _080A03BC:\n\
        movs r0, #0\n\
    _080A03BE:\n\
        pop {r4, r5, r6, r7}\n\
        pop {r1}\n\
        bx r1\n\
        .syntax divided\n\
    ");
}

#endif // NONMATCHING

//! FE8U = 0x080A03C4
void sub_80A03C4(struct WmSellProc* proc) {
    sub_809B74C(gUnknown_02022EEC, &gUnknown_02013648.textArray[0], proc->unit, 0);

    sub_809FFB0(proc->unit->items[proc->unk_30]);

    sub_80ACA84(0);

    Proc_End(GetParallelWorker(sub_809FEFC));

    ShowPrepScreenHandCursor(0x10, proc->unk_30 * 0x10 + 0x48, 0xb, 0x400);
    sub_809FDD4(0, proc);

    return;
}

#if NONMATCHING

/* https://decomp.me/scratch/SGaYQ */

//! FE8U = 0x080A0424
void sub_80A0424(struct WmSellProc* proc) {
    u16 item;

    if (proc->unk_34 == 1) {
        if ((gKeyStatusPtr->newKeys & 0x102) != 0) {
            CloseHelpBox();
            proc->unk_34 = 0;
            return;
        }
    } else {
        if ((gKeyStatusPtr->newKeys & 0x100) != 0) {
            if (proc->unit->items[proc->unk_30] == 0) {
                return;
            }

            StartItemHelpBox(0x10, proc->unk_30 * 0x10 + 0x48, proc->unit->items[proc->unk_30]);
            proc->unk_34 = 1;

            return;
        }

        if ((gKeyStatusPtr->newKeys & 1) != 0) {
            item = proc->unit->items[proc->unk_30];
            if ((GetItemSellPrice(item) == 0) || ((GetItemAttributes(item) & 0x10) != 0)) {
                Proc_Goto(proc, 2);
                PlaySoundEffect(0x6a);
                return;
            }

            sub_8097DA8(0x10, proc->unk_30 * 0x10 + 0x48, 0x850, proc);

            return;
        }

        if ((gKeyStatusPtr->newKeys & 2) != 0) {
            Proc_Goto(proc, 3);
            PlaySoundEffect(0x6b);
            return;
        }
    }

    if (sub_80A032C(proc) != 0) {
        ShowPrepScreenHandCursor(0x10, proc->unk_30 * 0x10 + 0x48, 0xb, 0x400);
        sub_809FFB0(proc->unit->items[proc->unk_30]);
        if ((proc->unk_34 == 1) && (proc->unit->items[proc->unk_30] != 0)) {
            StartItemHelpBox(0x10, proc->unk_30 * 0x10 + 0x48, proc->unit->items[proc->unk_30]);
        }
    }

    return;
}

#else // if !NONMATCHING

__attribute__((naked))
void sub_80A0424(struct WmSellProc* proc) {
    asm("\n\
        .syntax unified\n\
        push {r4, r5, r6, lr}\n\
        adds r4, r0, #0\n\
        ldrh r0, [r4, #0x34]\n\
        cmp r0, #1\n\
        bne _080A044C\n\
        ldr r0, _080A0448  @ gKeyStatusPtr\n\
        ldr r0, [r0]\n\
        ldrh r1, [r0, #8]\n\
        movs r0, #0x81\n\
        lsls r0, r0, #1\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _080A0518\n\
        bl CloseHelpBox\n\
        movs r0, #0\n\
        strh r0, [r4, #0x34]\n\
        b _080A056A\n\
        .align 2, 0\n\
    _080A0448: .4byte gKeyStatusPtr\n\
    _080A044C:\n\
        ldr r0, _080A0484  @ gKeyStatusPtr\n\
        ldr r0, [r0]\n\
        ldrh r1, [r0, #8]\n\
        movs r0, #0x80\n\
        lsls r0, r0, #1\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _080A0488\n\
        ldr r0, [r4, #0x2c]\n\
        adds r1, r4, #0\n\
        adds r1, #0x30\n\
        ldrb r3, [r1]\n\
        lsls r1, r3, #1\n\
        adds r0, #0x1e\n\
        adds r0, r0, r1\n\
        ldrh r2, [r0]\n\
        cmp r2, #0\n\
        bne _080A0472\n\
        b _080A056A\n\
    _080A0472:\n\
        lsls r1, r3, #4\n\
        adds r1, #0x48\n\
        movs r0, #0x10\n\
        bl StartItemHelpBox\n\
        movs r0, #1\n\
        strh r0, [r4, #0x34]\n\
        b _080A056A\n\
        .align 2, 0\n\
    _080A0484: .4byte gKeyStatusPtr\n\
    _080A0488:\n\
        movs r0, #1\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _080A04F0\n\
        ldr r1, [r4, #0x2c]\n\
        adds r6, r4, #0\n\
        adds r6, #0x30\n\
        ldrb r0, [r6]\n\
        lsls r0, r0, #1\n\
        adds r1, #0x1e\n\
        adds r1, r1, r0\n\
        ldrh r5, [r1]\n\
        adds r0, r5, #0\n\
        bl GetItemSellPrice\n\
        lsls r0, r0, #0x10\n\
        cmp r0, #0\n\
        beq _080A04BA\n\
        adds r0, r5, #0\n\
        bl GetItemAttributes\n\
        movs r1, #0x10\n\
        ands r1, r0\n\
        cmp r1, #0\n\
        beq _080A04CE\n\
    _080A04BA:\n\
        ldrb r1, [r6]\n\
        lsls r1, r1, #4\n\
        adds r1, #0x48\n\
        movs r2, #0x85\n\
        lsls r2, r2, #4\n\
        movs r0, #0x10\n\
        adds r3, r4, #0\n\
        bl sub_8097DA8\n\
        b _080A056A\n\
    _080A04CE:\n\
        adds r0, r4, #0\n\
        movs r1, #2\n\
        bl Proc_Goto\n\
        ldr r0, _080A04EC  @ gRAMChapterData\n\
        adds r0, #0x41\n\
        ldrb r0, [r0]\n\
        lsls r0, r0, #0x1e\n\
        cmp r0, #0\n\
        blt _080A056A\n\
        movs r0, #0x6a\n\
        bl m4aSongNumStart\n\
        b _080A056A\n\
        .align 2, 0\n\
    _080A04EC: .4byte gRAMChapterData\n\
    _080A04F0:\n\
        movs r0, #2\n\
        ands r0, r1\n\
        cmp r0, #0\n\
        beq _080A0518\n\
        adds r0, r4, #0\n\
        movs r1, #3\n\
        bl Proc_Goto\n\
        ldr r0, _080A0514  @ gRAMChapterData\n\
        adds r0, #0x41\n\
        ldrb r0, [r0]\n\
        lsls r0, r0, #0x1e\n\
        cmp r0, #0\n\
        blt _080A056A\n\
        movs r0, #0x6b\n\
        bl m4aSongNumStart\n\
        b _080A056A\n\
        .align 2, 0\n\
    _080A0514: .4byte gRAMChapterData\n\
    _080A0518:\n\
        adds r0, r4, #0\n\
        bl sub_80A032C\n\
        lsls r0, r0, #0x18\n\
        cmp r0, #0\n\
        beq _080A056A\n\
        adds r5, r4, #0\n\
        adds r5, #0x30\n\
        ldrb r1, [r5]\n\
        lsls r1, r1, #4\n\
        adds r1, #0x48\n\
        movs r3, #0x80\n\
        lsls r3, r3, #3\n\
        movs r0, #0x10\n\
        movs r2, #0xb\n\
        bl ShowPrepScreenHandCursor\n\
        ldr r1, [r4, #0x2c]\n\
        ldrb r0, [r5]\n\
        lsls r0, r0, #1\n\
        adds r1, #0x1e\n\
        adds r1, r1, r0\n\
        ldrh r0, [r1]\n\
        bl sub_809FFB0\n\
        ldrh r0, [r4, #0x34]\n\
        cmp r0, #1\n\
        bne _080A056A\n\
        ldr r0, [r4, #0x2c]\n\
        ldrb r3, [r5]\n\
        lsls r1, r3, #1\n\
        adds r0, #0x1e\n\
        adds r0, r0, r1\n\
        ldrh r2, [r0]\n\
        cmp r2, #0\n\
        beq _080A056A\n\
        lsls r1, r3, #4\n\
        adds r1, #0x48\n\
        movs r0, #0x10\n\
        bl StartItemHelpBox\n\
    _080A056A:\n\
        pop {r4, r5, r6}\n\
        pop {r0}\n\
        bx r0\n\
        .syntax divided\n\
    ");
}

#endif // NONMATCHING

//! FE8U = 0x080A0570
void sub_80A0570(struct WmSellProc* proc) {
    proc->unk_31 = 1;

    StartParallelWorker(sub_809FEFC, proc);

    sub_80AC9D4(0, 0x10, proc->unk_30 * 0x10 + 0x48, 2);
    ShowPrepScreenHandCursor(proc->unk_31 * 0x20 + 0xa4, 0x6f, 0, 0x400);
    sub_809FDD4(1, proc);

    return;
}

//! FE8U = 0x080A05BC
void sub_80A05BC(struct WmSellProc* proc) {
    int count;

    sub_8024E20(GetItemSellPrice(proc->unit->items[proc->unk_30]));

    proc->unit->items[proc->unk_30] = 0;

    UnitRemoveInvalidItems(proc->unit);

    PlaySoundEffect(0xb9);

    sub_80A0034();

    count = GetUnitItemCount(proc->unit);
    if (count == 0) {
        sub_809B74C(gUnknown_02022EEC, &gUnknown_02013648.textArray[0], proc->unit, 0);

        Proc_Goto(proc, 3);
    } else {
        if (count == proc->unk_30) {
            proc->unk_30 = count - 1;
        }

        Proc_Goto(proc, 1);
    }

    return;
}

//! FE8U = 0x080A064C
void sub_80A064C(struct WmSellProc* proc) {
    int previous = proc->unk_31;

    if ((gKeyStatusPtr->newKeys & 1) != 0) {
        if (previous == 0) {
            sub_80A05BC(proc);
            return;
        } else {
            Proc_Goto(proc, 1);

            PlaySoundEffect(0x6b);

            return;
        }
    }

    if ((gKeyStatusPtr->newKeys & 2) != 0) {
        Proc_Goto(proc, 1);

        PlaySoundEffect(0x6b);

        return;
    }

    if ((gKeyStatusPtr->repeatedKeys & 0x20) != 0) {
        proc->unk_31 = 0;
    }

    if ((gKeyStatusPtr->repeatedKeys & 0x10) != 0) {
        proc->unk_31 = 1;
    }

    if (previous == proc->unk_31) {
        return;
    }

    PlaySoundEffect(0x67);

    ShowPrepScreenHandCursor(proc->unk_31 * 0x20 + 0xa4, 0x6f, 0, 0x400);

    return;
}

//! FE8U = 0x080A06F0
void sub_80A06F0(void) {
    EndBG3Slider_();
    EndFaceById(0);
    SetPrimaryHBlankHandler(0);
    sub_8098500();

    return;
}

//! FE8U = 0x080A070C
void sub_80A070C(struct Unit* unit, ProcPtr parent) {
    struct WmSellProc* proc = Proc_StartBlocking(gUnknown_08A19528, parent);
    proc->unit = unit;

    return;
}

//! FE8U = 0x080A0724
void sub_80A0724(struct WmSellProc* proc) {
    sub_808F128(10, 7, 0x11, 4, (int)proc->unit, 0x06011000, -1, 0);
    sub_808E9D8(0x7c);
    return;
}

//! FE8U = 0x080A0758
void sub_80A0758(void) {
    return;
}

//! FE8U = 0x080A075C
void __malloc_unlock_2(void) {
    return;
}
