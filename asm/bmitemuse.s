	.INCLUDE "macro.inc"

	.SYNTAX UNIFIED

	@ Item (gameplay) effects and stuff

	THUMB_FUNC_START CanUsePromotionItem
CanUsePromotionItem: @ 0x080291A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	cmp r0, #1
	beq _080291BC
	cmp r0, #0xf
	bne _080291F2
_080291BC:
	adds r0, r6, #0
	bl GetItemIndex
	cmp r0, #0x98
	beq _080291CC
	cmp r0, #0x99
	beq _080291D4
	b _080291D6
_080291CC:
	ldr r4, _080291D0  @ gUnknown_088ADFA4
	b _080291D6
	.align 2, 0
_080291D0: .4byte gUnknown_088ADFA4
_080291D4:
	ldr r4, _08029214  @ gUnknown_088ADFA6
_080291D6:
	cmp r4, #0
	beq _080291F2
	ldrb r1, [r4]
	cmp r1, #0
	beq _080291F2
	ldr r0, [r5, #4]
	ldrb r0, [r0, #4]
_080291E4:
	cmp r0, r1
	bne _080291EA
	b _080293E4
_080291EA:
	adds r4, #1
	ldrb r1, [r4]
	cmp r1, #0
	bne _080291E4
_080291F2:
	movs r0, #8
	ldrsb r0, [r5, r0]
	cmp r0, #9
	bgt _080291FC
	b _08029400
_080291FC:
	adds r0, r6, #0
	bl GetItemIndex
	subs r0, #0x64
	cmp r0, #0x5d
	bls _0802920A
	b _080293EA
_0802920A:
	lsls r0, r0, #2
	ldr r1, _08029218  @ _0802921C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08029214: .4byte gUnknown_088ADFA6
_08029218: .4byte _0802921C
_0802921C: @ jump table
	.4byte _08029394 @ case 0
	.4byte _0802939C @ case 1
	.4byte _080293A4 @ case 2
	.4byte _080293AC @ case 3
	.4byte _080293B4 @ case 4
	.4byte _080293EA @ case 5
	.4byte _080293EA @ case 6
	.4byte _080293EA @ case 7
	.4byte _080293EA @ case 8
	.4byte _080293EA @ case 9
	.4byte _080293EA @ case 10
	.4byte _080293EA @ case 11
	.4byte _080293EA @ case 12
	.4byte _080293EA @ case 13
	.4byte _080293EA @ case 14
	.4byte _080293EA @ case 15
	.4byte _080293EA @ case 16
	.4byte _080293EA @ case 17
	.4byte _080293EA @ case 18
	.4byte _080293EA @ case 19
	.4byte _080293EA @ case 20
	.4byte _080293EA @ case 21
	.4byte _080293EA @ case 22
	.4byte _080293EA @ case 23
	.4byte _080293EA @ case 24
	.4byte _080293EA @ case 25
	.4byte _080293EA @ case 26
	.4byte _080293EA @ case 27
	.4byte _080293EA @ case 28
	.4byte _080293EA @ case 29
	.4byte _080293EA @ case 30
	.4byte _080293EA @ case 31
	.4byte _080293EA @ case 32
	.4byte _080293EA @ case 33
	.4byte _080293EA @ case 34
	.4byte _080293EA @ case 35
	.4byte _080293BC @ case 36
	.4byte _080293EA @ case 37
	.4byte _080293D4 @ case 38
	.4byte _080293EA @ case 39
	.4byte _080293EA @ case 40
	.4byte _080293EA @ case 41
	.4byte _080293EA @ case 42
	.4byte _080293EA @ case 43
	.4byte _080293EA @ case 44
	.4byte _080293EA @ case 45
	.4byte _080293EA @ case 46
	.4byte _080293EA @ case 47
	.4byte _080293EA @ case 48
	.4byte _080293EA @ case 49
	.4byte _080293EA @ case 50
	.4byte _080293E8 @ case 51
	.4byte _080293C4 @ case 52
	.4byte _080293CC @ case 53
	.4byte _080293EA @ case 54
	.4byte _080293EA @ case 55
	.4byte _080293EA @ case 56
	.4byte _080293EA @ case 57
	.4byte _080293EA @ case 58
	.4byte _080293EA @ case 59
	.4byte _080293EA @ case 60
	.4byte _080293EA @ case 61
	.4byte _080293EA @ case 62
	.4byte _080293EA @ case 63
	.4byte _080293EA @ case 64
	.4byte _080293EA @ case 65
	.4byte _080293EA @ case 66
	.4byte _080293EA @ case 67
	.4byte _080293EA @ case 68
	.4byte _080293EA @ case 69
	.4byte _080293EA @ case 70
	.4byte _080293EA @ case 71
	.4byte _080293EA @ case 72
	.4byte _080293EA @ case 73
	.4byte _080293EA @ case 74
	.4byte _080293EA @ case 75
	.4byte _080293EA @ case 76
	.4byte _080293EA @ case 77
	.4byte _080293EA @ case 78
	.4byte _080293EA @ case 79
	.4byte _080293EA @ case 80
	.4byte _080293EA @ case 81
	.4byte _080293EA @ case 82
	.4byte _080293EA @ case 83
	.4byte _080293EA @ case 84
	.4byte _080293EA @ case 85
	.4byte _080293EA @ case 86
	.4byte _080293EA @ case 87
	.4byte _080293EA @ case 88
	.4byte _080293EA @ case 89
	.4byte _080293EA @ case 90
	.4byte _080293EA @ case 91
	.4byte _080293EA @ case 92
	.4byte _080293DC @ case 93
_08029394:
	ldr r4, _08029398  @ gUnknown_088ADF57
	b _080293EA
	.align 2, 0
_08029398: .4byte gUnknown_088ADF57
_0802939C:
	ldr r4, _080293A0  @ gUnknown_088ADF5E
	b _080293EA
	.align 2, 0
_080293A0: .4byte gUnknown_088ADF5E
_080293A4:
	ldr r4, _080293A8  @ gUnknown_088ADF64
	b _080293EA
	.align 2, 0
_080293A8: .4byte gUnknown_088ADF64
_080293AC:
	ldr r4, _080293B0  @ gUnknown_088ADF67
	b _080293EA
	.align 2, 0
_080293B0: .4byte gUnknown_088ADF67
_080293B4:
	ldr r4, _080293B8  @ gUnknown_088ADF6B
	b _080293EA
	.align 2, 0
_080293B8: .4byte gUnknown_088ADF6B
_080293BC:
	ldr r4, _080293C0  @ gUnknown_088ADF76
	b _080293EA
	.align 2, 0
_080293C0: .4byte gUnknown_088ADF76
_080293C4:
	ldr r4, _080293C8  @ gUnknown_088ADFA4
	b _080293EA
	.align 2, 0
_080293C8: .4byte gUnknown_088ADFA4
_080293CC:
	ldr r4, _080293D0  @ gUnknown_088ADFA6
	b _080293EA
	.align 2, 0
_080293D0: .4byte gUnknown_088ADFA6
_080293D4:
	ldr r4, _080293D8  @ gUnknown_088ADF96
	b _080293EA
	.align 2, 0
_080293D8: .4byte gUnknown_088ADF96
_080293DC:
	ldr r4, _080293E0  @ gUnknown_088ADFA3
	b _080293EA
	.align 2, 0
_080293E0: .4byte gUnknown_088ADFA3
_080293E4:
	movs r0, #1
	b _08029402
_080293E8:
	ldr r4, _08029408  @ gUnknown_088ADF9E
_080293EA:
	ldrb r1, [r4]
	cmp r1, #0
	beq _08029400
	ldr r0, [r5, #4]
	ldrb r0, [r0, #4]
_080293F4:
	cmp r0, r1
	beq _080293E4
	adds r4, #1
	ldrb r1, [r4]
	cmp r1, #0
	bne _080293F4
_08029400:
	movs r0, #0
_08029402:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029408: .4byte gUnknown_088ADF9E

	THUMB_FUNC_END CanUsePromotionItem

	THUMB_FUNC_START CanUseStatBooster
CanUseStatBooster: @ 0x0802940C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl GetItemStatBonuses
	adds r4, r0, #0
	ldr r6, _08029500  @ gUnknown_03004C00
	adds r0, r6, #0
	bl ClearUnit
	ldr r0, [r5]
	str r0, [r6]
	ldr r0, [r5, #4]
	str r0, [r6, #4]
	ldrb r0, [r4]
	ldrb r1, [r5, #0x12]
	adds r0, r0, r1
	strb r0, [r6, #0x12]
	ldrb r0, [r4, #1]
	ldrb r1, [r5, #0x14]
	adds r0, r0, r1
	strb r0, [r6, #0x14]
	ldrb r0, [r4, #2]
	ldrb r1, [r5, #0x15]
	adds r0, r0, r1
	strb r0, [r6, #0x15]
	ldrb r0, [r4, #3]
	ldrb r1, [r5, #0x16]
	adds r0, r0, r1
	strb r0, [r6, #0x16]
	ldrb r0, [r4, #4]
	ldrb r1, [r5, #0x17]
	adds r0, r0, r1
	strb r0, [r6, #0x17]
	ldrb r0, [r4, #5]
	ldrb r1, [r5, #0x18]
	adds r0, r0, r1
	strb r0, [r6, #0x18]
	ldrb r0, [r4, #6]
	ldrb r1, [r5, #0x19]
	adds r0, r0, r1
	strb r0, [r6, #0x19]
	ldrb r0, [r4, #7]
	ldrb r1, [r5, #0x1d]
	adds r0, r0, r1
	strb r0, [r6, #0x1d]
	ldrb r0, [r4, #8]
	ldrb r1, [r5, #0x1a]
	adds r0, r0, r1
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl UnitCheckStatCaps
	movs r1, #0x12
	ldrsb r1, [r6, r1]
	movs r0, #0x12
	ldrsb r0, [r5, r0]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r2, r0, #0x1f
	movs r1, #0x14
	ldrsb r1, [r6, r1]
	movs r0, #0x14
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _08029494
	movs r2, #1
_08029494:
	movs r1, #0x15
	ldrsb r1, [r6, r1]
	movs r0, #0x15
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _080294A2
	movs r2, #1
_080294A2:
	movs r1, #0x16
	ldrsb r1, [r6, r1]
	movs r0, #0x16
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _080294B0
	movs r2, #1
_080294B0:
	movs r1, #0x17
	ldrsb r1, [r6, r1]
	movs r0, #0x17
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _080294BE
	movs r2, #1
_080294BE:
	movs r1, #0x18
	ldrsb r1, [r6, r1]
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _080294CC
	movs r2, #1
_080294CC:
	movs r1, #0x19
	ldrsb r1, [r6, r1]
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _080294DA
	movs r2, #1
_080294DA:
	movs r1, #0x1d
	ldrsb r1, [r6, r1]
	movs r0, #0x1d
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _080294E8
	movs r2, #1
_080294E8:
	movs r1, #0x1a
	ldrsb r1, [r6, r1]
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _080294F6
	movs r2, #1
_080294F6:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029500: .4byte gUnknown_03004C00

	THUMB_FUNC_END CanUseStatBooster

	THUMB_FUNC_START CanUseJunaFruit
CanUseJunaFruit: @ 0x08029504
	push {lr}
	movs r1, #0
	ldrb r0, [r0, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08029514
	movs r1, #1
_08029514:
	adds r0, r1, #0
	pop {r1}
	bx r1

	THUMB_FUNC_END CanUseJunaFruit

	THUMB_FUNC_START EndItemEffectSelectionThing
EndItemEffectSelectionThing: @ 0x0802951C
	push {lr}
	bl HideMoveRangeGraphics
	ldr r0, _0802953C  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	ldr r1, _08029540  @ gActionData
	movs r0, #3
	strb r0, [r1, #0x11]
	pop {r0}
	bx r0
	.align 2, 0
_0802953C: .4byte gBG2TilemapBuffer
_08029540: .4byte gActionData

	THUMB_FUNC_END EndItemEffectSelectionThing

	THUMB_FUNC_START sub_8029544
sub_8029544: @ 0x08029544
	ldr r1, _0802954C  @ gActionData
	movs r0, #0x1a
	strb r0, [r1, #0x11]
	bx lr
	.align 2, 0
_0802954C: .4byte gActionData

	THUMB_FUNC_END sub_8029544

	THUMB_FUNC_START GenericStaffSelection_OnSelect
GenericStaffSelection_OnSelect: @ 0x08029550
	push {lr}
	ldr r2, _08029564  @ gActionData
	ldrb r0, [r1, #2]
	strb r0, [r2, #0xd]
	movs r0, #0
	bl EndItemEffectSelectionThing
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_08029564: .4byte gActionData

	THUMB_FUNC_END GenericStaffSelection_OnSelect

	THUMB_FUNC_START PrepareTargetSelectionForRescueStaff
PrepareTargetSelectionForRescueStaff: @ 0x08029568
	push {r4, lr}
	bl _call_via_r1
	ldr r0, _08029598  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _0802959C  @ gUnknown_0859D2F8
	ldr r1, _080295A0  @ GenericStaffSelection_OnSelect
	bl NewTargetSelection_Specialized
	adds r4, r0, #0
	ldr r0, _080295A4  @ 0x00000876
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029598: .4byte gBmMapMovement
_0802959C: .4byte gUnknown_0859D2F8
_080295A0: .4byte GenericStaffSelection_OnSelect
_080295A4: .4byte 0x00000876

	THUMB_FUNC_END PrepareTargetSelectionForRescueStaff

	THUMB_FUNC_START SetupTargetSelectionForGenericStaff
SetupTargetSelectionForGenericStaff: @ 0x080295A8
	push {r4, r5, lr}
	adds r5, r2, #0
	bl _call_via_r1
	ldr r0, _080295DC  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _080295E0  @ gUnknown_0859D2F8
	ldr r1, _080295E4  @ GenericStaffSelection_OnSelect
	bl NewTargetSelection_Specialized
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080295DC: .4byte gBmMapMovement
_080295E0: .4byte gUnknown_0859D2F8
_080295E4: .4byte GenericStaffSelection_OnSelect

	THUMB_FUNC_END SetupTargetSelectionForGenericStaff

	THUMB_FUNC_START WarpTargetPosSelect_Init
WarpTargetPosSelect_Init: @ 0x080295E8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r0, _08029688  @ 0x00000871
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r6, #0
	bl NewBottomHelpText
	ldr r5, _0802968C  @ gActionData
	ldrb r0, [r5, #0xd]
	bl GetUnit
	movs r4, #0x10
	ldrsb r4, [r0, r4]
	ldrb r0, [r5, #0xd]
	bl GetUnit
	movs r2, #0x11
	ldrsb r2, [r0, r2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl EnsureCameraOntoPosition
	bl HideMoveRangeGraphics
	ldr r0, _08029690  @ gActiveUnit
	ldr r4, [r0]
	ldrb r0, [r5, #0xd]
	bl GetUnit
	adds r1, r0, #0
	adds r0, r4, #0
	bl FillWarpRangeMap
	ldr r2, _08029694  @ gUnknown_0202BCB0
	ldrb r1, [r2, #4]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0
	mov r8, r1
	strb r0, [r2, #4]
	movs r0, #1
	bl DisplayMoveRangeGraphics
	ldrb r0, [r5, #0xd]
	bl GetUnit
	movs r4, #0x10
	ldrsb r4, [r0, r4]
	ldrb r0, [r5, #0xd]
	bl GetUnit
	movs r1, #0x11
	ldrsb r1, [r0, r1]
	adds r0, r4, #0
	bl SetCursorMapPosition
	ldr r0, _08029698  @ gUnknown_085A0EA0
	movs r1, #0
	bl AP_Create
	adds r4, r0, #0
	mov r0, r8
	strh r0, [r4, #0x22]
	adds r0, r4, #0
	movs r1, #0
	bl AP_SwitchAnimation
	str r4, [r6, #0x54]
	adds r6, #0x4a
	movs r0, #2
	strh r0, [r6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029688: .4byte 0x00000871
_0802968C: .4byte gActionData
_08029690: .4byte gActiveUnit
_08029694: .4byte gUnknown_0202BCB0
_08029698: .4byte gUnknown_085A0EA0

	THUMB_FUNC_END WarpTargetPosSelect_Init

	THUMB_FUNC_START WarpTargetPosSelect_Loop
WarpTargetPosSelect_Loop: @ 0x0802969C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _08029714  @ gUnknown_0202BCB0
	movs r1, #0x16
	ldrsh r0, [r4, r1]
	ldr r1, _08029718  @ gBmMapMovement
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	mvns r1, r1
	negs r0, r1
	orrs r0, r1
	lsrs r6, r0, #0x1f
	bl HandlePlayerCursorMovement
	ldr r0, _0802971C  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08029742
	cmp r6, #0
	beq _08029730
	adds r0, r5, #0
	bl Proc_Break
	ldr r1, _08029720  @ gActionData
	ldrh r0, [r4, #0x14]
	strb r0, [r1, #0x13]
	ldrh r0, [r4, #0x16]
	strb r0, [r1, #0x14]
	ldr r0, _08029724  @ gActiveUnit
	ldr r0, [r0]
	bl EndItemEffectSelectionThing
	ldr r0, _08029728  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	ldr r0, _0802972C  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080297BA
	movs r0, #0x6a
	bl m4aSongNumStart
	b _080297BA
	.align 2, 0
_08029714: .4byte gUnknown_0202BCB0
_08029718: .4byte gBmMapMovement
_0802971C: .4byte gKeyStatusPtr
_08029720: .4byte gActionData
_08029724: .4byte gActiveUnit
_08029728: .4byte gBG2TilemapBuffer
_0802972C: .4byte gUnknown_0202BCF0
_08029730:
	ldr r0, _080297C0  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08029742
	movs r0, #0x6c
	bl m4aSongNumStart
_08029742:
	ldr r0, _080297C4  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08029778
	adds r0, r5, #0
	movs r1, #0x63
	bl Proc_Goto
	ldr r0, _080297C8  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	ldr r0, _080297C0  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08029778
	movs r0, #0x6b
	bl m4aSongNumStart
_08029778:
	lsls r0, r6, #0x18
	asrs r3, r0, #0x18
	adds r1, r5, #0
	adds r1, #0x4a
	movs r4, #0
	ldrsh r2, [r1, r4]
	adds r4, r0, #0
	adds r6, r1, #0
	cmp r3, r2
	beq _0802979A
	ldr r0, [r5, #0x54]
	movs r1, #0
	cmp r3, #0
	bne _08029796
	movs r1, #1
_08029796:
	bl AP_SwitchAnimation
_0802979A:
	ldr r0, [r5, #0x54]
	ldr r3, _080297CC  @ gUnknown_0202BCB0
	movs r5, #0x20
	ldrsh r1, [r3, r5]
	movs r5, #0xc
	ldrsh r2, [r3, r5]
	subs r1, r1, r2
	movs r5, #0x22
	ldrsh r2, [r3, r5]
	movs r5, #0xe
	ldrsh r3, [r3, r5]
	subs r2, r2, r3
	bl AP_Update
	asrs r0, r4, #0x18
	strh r0, [r6]
_080297BA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080297C0: .4byte gUnknown_0202BCF0
_080297C4: .4byte gKeyStatusPtr
_080297C8: .4byte gBG2TilemapBuffer
_080297CC: .4byte gUnknown_0202BCB0

	THUMB_FUNC_END WarpTargetPosSelect_Loop

	THUMB_FUNC_START WarpTargetPosSelect_Confirm
WarpTargetPosSelect_Confirm: @ 0x080297D0
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_8003D20
	bl HideMoveRangeGraphics
	bl DeleteEach6CBB
	ldr r4, _08029808  @ gActiveUnit
	ldr r1, [r4]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl SetCursorMapPosition
	ldr r0, [r4]
	movs r1, #0x10
	ldrsb r1, [r0, r1]
	movs r2, #0x11
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl EnsureCameraOntoPosition
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029808: .4byte gActiveUnit

	THUMB_FUNC_END WarpTargetPosSelect_Confirm

	THUMB_FUNC_START WarpTargetPosSelect_Cancel
WarpTargetPosSelect_Cancel: @ 0x0802980C
	push {lr}
	bl sub_8003D20
	bl HideMoveRangeGraphics
	bl DeleteEach6CBB
	ldr r0, _08029838  @ gActiveUnit
	ldr r1, [r0]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl SetCursorMapPosition
	ldr r0, _0802983C  @ gUnknown_0859B600
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_08029838: .4byte gActiveUnit
_0802983C: .4byte gUnknown_0859B600

	THUMB_FUNC_END WarpTargetPosSelect_Cancel

	THUMB_FUNC_START WarpTargetPosSelect_Destruct
WarpTargetPosSelect_Destruct: @ 0x08029840
	push {r4, lr}
	adds r4, r0, #0
	bl HideMoveRangeGraphics
	ldr r0, [r4, #0x54]
	bl AP_Delete
	pop {r4}
	pop {r0}
	bx r0

	THUMB_FUNC_END WarpTargetPosSelect_Destruct

	THUMB_FUNC_START WarpTargetSelection_OnSelect
WarpTargetSelection_OnSelect: @ 0x08029854
	push {r4, lr}
	adds r4, r1, #0
	bl EndTargetSelection
	ldr r1, _08029874  @ gActionData
	ldrb r0, [r4, #2]
	strb r0, [r1, #0xd]
	ldr r0, _08029878  @ gUnknown_0859B9B8
	movs r1, #3
	bl Proc_Start
	movs r0, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08029874: .4byte gActionData
_08029878: .4byte gUnknown_0859B9B8

	THUMB_FUNC_END WarpTargetSelection_OnSelect

	THUMB_FUNC_START SetupWarpTargetSelection
SetupWarpTargetSelection: @ 0x0802987C
	push {r4, lr}
	bl MakeTargetListForWarp
	ldr r0, _080298C0  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _080298C4  @ gUnknown_0859D2F8
	ldr r1, _080298C8  @ WarpTargetSelection_OnSelect
	bl NewTargetSelection_Specialized
	adds r4, r0, #0
	ldr r0, _080298CC  @ 0x00000875
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	ldr r0, _080298D0  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080298B8
	movs r0, #0x6a
	bl m4aSongNumStart
_080298B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080298C0: .4byte gBmMapMovement
_080298C4: .4byte gUnknown_0859D2F8
_080298C8: .4byte WarpTargetSelection_OnSelect
_080298CC: .4byte 0x00000875
_080298D0: .4byte gUnknown_0202BCF0

	THUMB_FUNC_END SetupWarpTargetSelection

	THUMB_FUNC_START sub_80298D4
sub_80298D4: @ 0x080298D4
	push {lr}
	ldr r2, _080298EC  @ gActionData
	ldrb r0, [r1]
	strb r0, [r2, #0x13]
	ldrb r0, [r1, #1]
	strb r0, [r2, #0x14]
	movs r0, #0
	bl EndItemEffectSelectionThing
	movs r0, #0x17
	pop {r1}
	bx r1
	.align 2, 0
_080298EC: .4byte gActionData

	THUMB_FUNC_END sub_80298D4

	THUMB_FUNC_START PrepareTargetSelectionForMineAndLightRune
PrepareTargetSelectionForMineAndLightRune: @ 0x080298F0
	push {r4, r5, lr}
	adds r5, r2, #0
	bl _call_via_r1
	ldr r0, _08029934  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _08029938  @ gUnknown_0859D2D8
	ldr r1, _0802993C  @ sub_80298D4
	bl NewTargetSelection_Specialized
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	ldr r0, _08029940  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _0802992E
	movs r0, #0x6a
	bl m4aSongNumStart
_0802992E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029934: .4byte gBmMapMovement
_08029938: .4byte gUnknown_0859D2D8
_0802993C: .4byte sub_80298D4
_08029940: .4byte gUnknown_0202BCF0

	THUMB_FUNC_END PrepareTargetSelectionForMineAndLightRune

	THUMB_FUNC_START HammerneTargetSelection_OnSelect
HammerneTargetSelection_OnSelect: @ 0x08029944
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r1, #0
	bl sub_8003D20
	ldr r5, _080299B0  @ gActionData
	ldrb r0, [r4, #2]
	strb r0, [r5, #0xd]
	ldr r0, _080299B4  @ gUnknown_0859D064
	bl StartOrphanMenu
	adds r4, r0, #0
	ldrb r0, [r5, #0xd]
	bl GetUnit
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #0xb
	bl sub_801E684
	ldrb r0, [r5, #0xd]
	bl GetUnit
	bl GetUnitPortraitId
	bl GetPortraitStructPointer
	ldr r0, [r0]
	cmp r0, #0
	beq _080299A4
	ldrb r0, [r5, #0xd]
	bl GetUnit
	bl GetUnitPortraitId
	adds r1, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	movs r2, #0xb8
	movs r3, #0xc
	bl NewFace
	movs r0, #0
	movs r1, #5
	bl sub_8006458
_080299A4:
	movs r0, #0x17
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080299B0: .4byte gActionData
_080299B4: .4byte gUnknown_0859D064

	THUMB_FUNC_END HammerneTargetSelection_OnSelect

	THUMB_FUNC_START SetupHammerneUseSelection
SetupHammerneUseSelection: @ 0x080299B8
	push {r4, lr}
	bl MakeTargetListForHammerne
	ldr r0, _080299F8  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _080299FC  @ gUnknown_0859D3B8
	bl NewTargetSelection
	adds r4, r0, #0
	ldr r0, _08029A00  @ 0x00000878
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	ldr r0, _08029A04  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _080299F2
	movs r0, #0x6a
	bl m4aSongNumStart
_080299F2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080299F8: .4byte gBmMapMovement
_080299FC: .4byte gUnknown_0859D3B8
_08029A00: .4byte 0x00000878
_08029A04: .4byte gUnknown_0202BCF0

	THUMB_FUNC_END SetupHammerneUseSelection

	THUMB_FUNC_START HammerneTargetSelection_OnChange
HammerneTargetSelection_OnChange: @ 0x08029A08
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #1
	ldrsb r1, [r4, r1]
	bl ChangeActiveUnitFacing
	movs r0, #2
	ldrsb r0, [r4, r0]
	bl GetUnit
	bl DrawHammerneUnitInfoWindow
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END HammerneTargetSelection_OnChange

	THUMB_FUNC_START HammerneTargetSelection_OnInit
HammerneTargetSelection_OnInit: @ 0x08029A2C
	push {lr}
	bl NewUnitInfoWindow_WithAllLines
	pop {r0}
	bx r0

	THUMB_FUNC_END HammerneTargetSelection_OnInit

	THUMB_FUNC_START sub_8029A38
sub_8029A38: @ 0x08029A38
	push {lr}
	adds r1, #0x3c
	movs r0, #0
	ldrsb r0, [r1, r0]
	bl sub_801E748
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029A38

	THUMB_FUNC_START nullsub_24
nullsub_24: @ 0x08029A48
	bx lr

	THUMB_FUNC_END nullsub_24

	THUMB_FUNC_START sub_8029A4C
sub_8029A4C: @ 0x08029A4C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _08029A68  @ gActionData
	ldrb r0, [r0, #0xd]
	bl GetUnit
	lsls r4, r4, #1
	adds r0, #0x1e
	adds r0, r0, r4
	ldrh r0, [r0]
	cmp r0, #0
	bne _08029A6C
	movs r0, #3
	b _08029A7C
	.align 2, 0
_08029A68: .4byte gActionData
_08029A6C:
	bl IsItemHammernable
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029A7A
	movs r0, #1
	b _08029A7C
_08029A7A:
	movs r0, #2
_08029A7C:
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029A4C

	THUMB_FUNC_START sub_8029A84
sub_8029A84: @ 0x08029A84
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r0, _08029AD8  @ gActionData
	ldrb r0, [r0, #0xd]
	bl GetUnit
	adds r1, r5, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r0, #0x1e
	adds r0, r0, r1
	ldrh r4, [r0]
	adds r0, r4, #0
	bl IsItemHammernable
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #0x34
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	movs r1, #0x2c
	ldrsh r3, [r5, r1]
	lsls r3, r3, #5
	movs r6, #0x2a
	ldrsh r1, [r5, r6]
	adds r3, r3, r1
	lsls r3, r3, #1
	ldr r1, _08029ADC  @ gBG0TilemapBuffer
	adds r3, r3, r1
	adds r1, r4, #0
	bl DrawItemMenuLineLong
	movs r0, #1
	bl BG_EnableSyncByMask
	movs r0, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029AD8: .4byte gActionData
_08029ADC: .4byte gBG0TilemapBuffer

	THUMB_FUNC_END sub_8029A84

	THUMB_FUNC_START sub_8029AE0
sub_8029AE0: @ 0x08029AE0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #2
	bne _08029B68
	movs r6, #0
	ldr r0, _08029B20  @ gActionData
	ldrb r0, [r0, #0xd]
	bl GetUnit
	adds r1, r4, #0
	adds r1, #0x3c
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #1
	adds r0, #0x1e
	adds r0, r0, r1
	ldrh r5, [r0]
	adds r0, r5, #0
	bl GetItemAttributes
	movs r1, #0xc1
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	beq _08029B28
	ldr r6, _08029B24  @ 0x00000863
	b _08029B58
	.align 2, 0
_08029B20: .4byte gActionData
_08029B24: .4byte 0x00000863
_08029B28:
	adds r0, r5, #0
	bl GetItemAttributes
	movs r1, #5
	ands r1, r0
	cmp r1, #0
	bne _08029B40
	ldr r6, _08029B3C  @ 0x00000857
	b _08029B58
	.align 2, 0
_08029B3C: .4byte 0x00000857
_08029B40:
	adds r0, r5, #0
	bl GetItemUses
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetItemMaxUses
	cmp r4, r0
	bne _08029B54
	ldr r6, _08029B64  @ 0x00000856
_08029B54:
	cmp r6, #0
	beq _08029B60
_08029B58:
	adds r0, r7, #0
	adds r1, r6, #0
	bl MenuFrozenHelpBox
_08029B60:
	movs r0, #8
	b _08029B7C
	.align 2, 0
_08029B64: .4byte 0x00000856
_08029B68:
	ldr r1, _08029B84  @ gActionData
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	strb r0, [r1, #0x15]
	ldr r0, _08029B88  @ gActiveUnit
	ldr r0, [r0]
	bl EndItemEffectSelectionThing
	movs r0, #0x37
_08029B7C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029B84: .4byte gActionData
_08029B88: .4byte gActiveUnit

	THUMB_FUNC_END sub_8029AE0

	THUMB_FUNC_START PrepareTargetSelectionForHeal
PrepareTargetSelectionForHeal: @ 0x08029B8C
	push {r4, lr}
	bl _call_via_r1
	ldr r0, _08029BBC  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _08029BC0  @ gUnknown_0859D298
	bl NewTargetSelection
	adds r4, r0, #0
	ldr r0, _08029BC4  @ 0x00000874
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029BBC: .4byte gBmMapMovement
_08029BC0: .4byte gUnknown_0859D298
_08029BC4: .4byte 0x00000874

	THUMB_FUNC_END PrepareTargetSelectionForHeal

	THUMB_FUNC_START PrepareTargetSelectionForRestoreStaff
PrepareTargetSelectionForRestoreStaff: @ 0x08029BC8
	push {r4, lr}
	bl _call_via_r1
	ldr r0, _08029BF8  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _08029BFC  @ gUnknown_0859D278
	bl NewTargetSelection
	adds r4, r0, #0
	ldr r0, _08029C00  @ 0x00000877
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029BF8: .4byte gBmMapMovement
_08029BFC: .4byte gUnknown_0859D278
_08029C00: .4byte 0x00000877

	THUMB_FUNC_END PrepareTargetSelectionForRestoreStaff

	THUMB_FUNC_START sub_8029C04
sub_8029C04: @ 0x08029C04
	push {lr}
	bl sub_8034FFC
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029C04

	THUMB_FUNC_START sub_8029C10
sub_8029C10: @ 0x08029C10
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #1
	ldrsb r1, [r4, r1]
	bl ChangeActiveUnitFacing
	movs r0, #2
	ldrsb r0, [r4, r0]
	bl GetUnit
	bl sub_803501C
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029C10

	THUMB_FUNC_START sub_8029C34
sub_8029C34: @ 0x08029C34
	push {r4, lr}
	bl MakeTargetListForBarrier
	ldr r0, _08029C64  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _08029C68  @ gUnknown_0859D258
	bl NewTargetSelection
	adds r4, r0, #0
	ldr r0, _08029C6C  @ 0x00000879
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029C64: .4byte gBmMapMovement
_08029C68: .4byte gUnknown_0859D258
_08029C6C: .4byte 0x00000879

	THUMB_FUNC_END sub_8029C34

	THUMB_FUNC_START sub_8029C70
sub_8029C70: @ 0x08029C70
	push {lr}
	bl sub_8035090
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029C70

	THUMB_FUNC_START sub_8029C7C
sub_8029C7C: @ 0x08029C7C
	push {r4, lr}
	adds r4, r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #1
	ldrsb r1, [r4, r1]
	bl ChangeActiveUnitFacing
	movs r0, #2
	ldrsb r0, [r4, r0]
	bl GetUnit
	bl sub_80350A4
	pop {r4}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029C7C

	THUMB_FUNC_START PrepareTargetSelectionForOffensiveStaff
PrepareTargetSelectionForOffensiveStaff: @ 0x08029CA0
	push {r4, lr}
	bl _call_via_r1
	ldr r0, _08029CD0  @ gBmMapMovement
	ldr r0, [r0]
	movs r1, #1
	negs r1, r1
	bl BmMapFill
	ldr r0, _08029CD4  @ gUnknown_0859D238
	bl NewTargetSelection
	adds r4, r0, #0
	ldr r0, _08029CD8  @ 0x0000087B
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029CD0: .4byte gBmMapMovement
_08029CD4: .4byte gUnknown_0859D238
_08029CD8: .4byte 0x0000087B

	THUMB_FUNC_END PrepareTargetSelectionForOffensiveStaff

	THUMB_FUNC_START sub_8029CDC
sub_8029CDC: @ 0x08029CDC
	push {lr}
	bl sub_80350FC
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029CDC

	THUMB_FUNC_START sub_8029CE8
sub_8029CE8: @ 0x08029CE8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #1
	ldrsb r1, [r4, r1]
	bl ChangeActiveUnitFacing
	movs r0, #2
	ldrsb r0, [r4, r0]
	bl GetUnit
	adds r6, r0, #0
	ldr r0, _08029D24  @ gActiveUnit
	ldr r5, [r0]
	movs r0, #2
	ldrsb r0, [r4, r0]
	bl GetUnit
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetOffensiveStaffAccuracy
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_803511C
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08029D24: .4byte gActiveUnit

	THUMB_FUNC_END sub_8029CE8

	THUMB_FUNC_START GenericSelection_DeleteBBAndBG
GenericSelection_DeleteBBAndBG: @ 0x08029D28
	push {lr}
	bl DeleteEach6CBB
	bl ClearBg0Bg1
	pop {r0}
	bx r0

	THUMB_FUNC_END GenericSelection_DeleteBBAndBG

	THUMB_FUNC_START sub_8029D38
sub_8029D38: @ 0x08029D38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2]
	ldr r1, [r2, #4]
	ldr r0, [r0, #0x28]
	ldr r1, [r1, #0x28]
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	beq _08029D64
	movs r0, #0x10
	ldrsb r0, [r2, r0]
	movs r1, #0x11
	ldrsb r1, [r2, r1]
	bl GetTrapAt
	cmp r0, #0
	bne _08029D64
	movs r0, #1
	b _08029D66
_08029D64:
	movs r0, #0
_08029D66:
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_8029D38

	THUMB_FUNC_START sub_8029D6C
sub_8029D6C: @ 0x08029D6C
	push {r4, lr}
	ldr r0, _08029D8C  @ gUnknown_0859D2F8
	ldr r1, _08029D90  @ GenericStaffSelection_OnSelect
	bl NewTargetSelection_Specialized
	adds r4, r0, #0
	ldr r0, _08029D94  @ 0x00000876
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r4, #0
	bl NewBottomHelpText
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029D8C: .4byte gUnknown_0859D2F8
_08029D90: .4byte GenericStaffSelection_OnSelect
_08029D94: .4byte 0x00000876

	THUMB_FUNC_END sub_8029D6C

	THUMB_FUNC_START TorchTargetPosSelect_Init
TorchTargetPosSelect_Init: @ 0x08029D98
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _08029DE4  @ gUnknown_0202BCB0
	ldrb r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #4]
	ldr r0, _08029DE8  @ 0x0000087C
	bl GetStringFromIndex
	adds r1, r0, #0
	adds r0, r5, #0
	bl NewBottomHelpText
	ldr r4, _08029DEC  @ gActiveUnit
	ldr r1, [r4]
	movs r0, #0x10
	ldrsb r0, [r1, r0]
	ldrb r1, [r1, #0x11]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	bl ShouldMoveCameraPosSomething
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029DDC
	ldr r0, [r4]
	movs r1, #0x10
	ldrsb r1, [r0, r1]
	movs r2, #0x11
	ldrsb r2, [r0, r2]
	adds r0, r5, #0
	bl EnsureCameraOntoPosition
_08029DDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029DE4: .4byte gUnknown_0202BCB0
_08029DE8: .4byte 0x0000087C
_08029DEC: .4byte gActiveUnit

	THUMB_FUNC_END TorchTargetPosSelect_Init

	THUMB_FUNC_START TorchTargetSelection_Loop
TorchTargetSelection_Loop: @ 0x08029DF0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08029E50  @ gUnknown_0202BCB0
	movs r0, #0x14
	ldrsh r2, [r5, r0]
	movs r1, #0x16
	ldrsh r0, [r5, r1]
	ldr r1, _08029E54  @ gBmMapRange
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r2
	ldrb r4, [r0]
	bl HandlePlayerCursorMovement
	ldr r0, _08029E58  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08029E7A
	cmp r4, #0
	beq _08029E68
	ldr r0, _08029E5C  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08029E34
	movs r0, #0x6a
	bl m4aSongNumStart
_08029E34:
	adds r0, r6, #0
	bl Proc_Break
	ldr r1, _08029E60  @ gActionData
	ldrh r0, [r5, #0x14]
	strb r0, [r1, #0x13]
	ldrh r0, [r5, #0x16]
	strb r0, [r1, #0x14]
	ldr r0, _08029E64  @ gActiveUnit
	ldr r0, [r0]
	bl EndItemEffectSelectionThing
	b _08029EC0
	.align 2, 0
_08029E50: .4byte gUnknown_0202BCB0
_08029E54: .4byte gBmMapRange
_08029E58: .4byte gKeyStatusPtr
_08029E5C: .4byte gUnknown_0202BCF0
_08029E60: .4byte gActionData
_08029E64: .4byte gActiveUnit
_08029E68:
	ldr r0, _08029EC8  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08029E7A
	movs r0, #0x6c
	bl m4aSongNumStart
_08029E7A:
	ldr r0, _08029ECC  @ gKeyStatusPtr
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08029EB0
	ldr r0, _08029ED0  @ gBG2TilemapBuffer
	movs r1, #0
	bl BG_Fill
	movs r0, #4
	bl BG_EnableSyncByMask
	adds r0, r6, #0
	movs r1, #0x63
	bl Proc_Goto
	ldr r0, _08029EC8  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08029EB0
	movs r0, #0x6b
	bl m4aSongNumStart
_08029EB0:
	ldr r1, _08029ED4  @ gUnknown_0202BCB0
	movs r2, #0x20
	ldrsh r0, [r1, r2]
	movs r2, #0x22
	ldrsh r1, [r1, r2]
	movs r2, #1
	bl DisplayCursor
_08029EC0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029EC8: .4byte gUnknown_0202BCF0
_08029ECC: .4byte gKeyStatusPtr
_08029ED0: .4byte gBG2TilemapBuffer
_08029ED4: .4byte gUnknown_0202BCB0

	THUMB_FUNC_END TorchTargetSelection_Loop

	THUMB_FUNC_START NewTorchStaffSelection
NewTorchStaffSelection: @ 0x08029ED8
	push {lr}
	ldr r0, _08029EF8  @ gUnknown_0859BA38
	movs r1, #3
	bl Proc_Start
	ldr r0, _08029EFC  @ gUnknown_0202BCF0
	adds r0, #0x41
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt _08029EF4
	movs r0, #0x6a
	bl m4aSongNumStart
_08029EF4:
	pop {r0}
	bx r0
	.align 2, 0
_08029EF8: .4byte gUnknown_0859BA38
_08029EFC: .4byte gUnknown_0202BCF0

	THUMB_FUNC_END NewTorchStaffSelection

	THUMB_FUNC_START CanUnitUseItemPrepScreen
CanUnitUseItemPrepScreen: @ 0x08029F00
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl GetItemAttributes
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08029F16
	b _0802A100
_08029F16:
	adds r0, r4, #0
	bl GetItemIndex
	subs r0, #0x5b
	cmp r0, #0x66
	bls _08029F24
	b _0802A100
_08029F24:
	lsls r0, r0, #2
	ldr r1, _08029F30  @ _08029F34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08029F30: .4byte _08029F34
_08029F34: @ jump table
	.4byte _0802A0D0 @ case 0
	.4byte _0802A0D0 @ case 1
	.4byte _0802A0D0 @ case 2
	.4byte _0802A0D0 @ case 3
	.4byte _0802A0D0 @ case 4
	.4byte _0802A0D0 @ case 5
	.4byte _0802A0D0 @ case 6
	.4byte _0802A0D0 @ case 7
	.4byte _0802A0D0 @ case 8
	.4byte _0802A0DA @ case 9
	.4byte _0802A0DA @ case 10
	.4byte _0802A0DA @ case 11
	.4byte _0802A0DA @ case 12
	.4byte _0802A0DA @ case 13
	.4byte _0802A100 @ case 14
	.4byte _0802A100 @ case 15
	.4byte _0802A100 @ case 16
	.4byte _0802A100 @ case 17
	.4byte _0802A100 @ case 18
	.4byte _0802A100 @ case 19
	.4byte _0802A100 @ case 20
	.4byte _0802A100 @ case 21
	.4byte _0802A100 @ case 22
	.4byte _0802A100 @ case 23
	.4byte _0802A100 @ case 24
	.4byte _0802A100 @ case 25
	.4byte _0802A100 @ case 26
	.4byte _0802A100 @ case 27
	.4byte _0802A100 @ case 28
	.4byte _0802A100 @ case 29
	.4byte _0802A100 @ case 30
	.4byte _0802A100 @ case 31
	.4byte _0802A100 @ case 32
	.4byte _0802A100 @ case 33
	.4byte _0802A100 @ case 34
	.4byte _0802A100 @ case 35
	.4byte _0802A100 @ case 36
	.4byte _0802A100 @ case 37
	.4byte _0802A100 @ case 38
	.4byte _0802A100 @ case 39
	.4byte _0802A100 @ case 40
	.4byte _0802A100 @ case 41
	.4byte _0802A100 @ case 42
	.4byte _0802A100 @ case 43
	.4byte _0802A100 @ case 44
	.4byte _0802A0DA @ case 45
	.4byte _0802A0E4 @ case 46
	.4byte _0802A0DA @ case 47
	.4byte _0802A100 @ case 48
	.4byte _0802A100 @ case 49
	.4byte _0802A100 @ case 50
	.4byte _0802A100 @ case 51
	.4byte _0802A100 @ case 52
	.4byte _0802A100 @ case 53
	.4byte _0802A100 @ case 54
	.4byte _0802A100 @ case 55
	.4byte _0802A100 @ case 56
	.4byte _0802A100 @ case 57
	.4byte _0802A100 @ case 58
	.4byte _0802A100 @ case 59
	.4byte _0802A0DA @ case 60
	.4byte _0802A0DA @ case 61
	.4byte _0802A0DA @ case 62
	.4byte _0802A100 @ case 63
	.4byte _0802A100 @ case 64
	.4byte _0802A100 @ case 65
	.4byte _0802A100 @ case 66
	.4byte _0802A100 @ case 67
	.4byte _0802A100 @ case 68
	.4byte _0802A100 @ case 69
	.4byte _0802A100 @ case 70
	.4byte _0802A100 @ case 71
	.4byte _0802A100 @ case 72
	.4byte _0802A100 @ case 73
	.4byte _0802A100 @ case 74
	.4byte _0802A100 @ case 75
	.4byte _0802A100 @ case 76
	.4byte _0802A100 @ case 77
	.4byte _0802A100 @ case 78
	.4byte _0802A100 @ case 79
	.4byte _0802A100 @ case 80
	.4byte _0802A100 @ case 81
	.4byte _0802A100 @ case 82
	.4byte _0802A100 @ case 83
	.4byte _0802A100 @ case 84
	.4byte _0802A100 @ case 85
	.4byte _0802A100 @ case 86
	.4byte _0802A100 @ case 87
	.4byte _0802A100 @ case 88
	.4byte _0802A100 @ case 89
	.4byte _0802A100 @ case 90
	.4byte _0802A100 @ case 91
	.4byte _0802A0F4 @ case 92
	.4byte _0802A100 @ case 93
	.4byte _0802A100 @ case 94
	.4byte _0802A100 @ case 95
	.4byte _0802A100 @ case 96
	.4byte _0802A100 @ case 97
	.4byte _0802A100 @ case 98
	.4byte _0802A100 @ case 99
	.4byte _0802A100 @ case 100
	.4byte _0802A100 @ case 101
	.4byte _0802A0DA @ case 102
_0802A0D0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl CanUseStatBooster
	b _0802A0FA
_0802A0DA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl CanUsePromotionItem
	b _0802A0FA
_0802A0E4:
	ldr r0, [r5, #0xc]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0802A100
	movs r0, #1
	b _0802A102
_0802A0F4:
	adds r0, r5, #0
	bl CanUseJunaFruit
_0802A0FA:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0802A102
_0802A100:
	movs r0, #0
_0802A102:
	pop {r4, r5}
	pop {r1}
	bx r1

	THUMB_FUNC_END CanUnitUseItemPrepScreen

	THUMB_FUNC_START sub_802A108
sub_802A108: @ 0x0802A108
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl GetUnitItemCount
	adds r5, r0, #0
	movs r4, #0
	cmp r4, r5
	bge _0802A134
_0802A118:
	lsls r1, r4, #1
	adds r0, r6, #0
	adds r0, #0x1e
	adds r0, r0, r1
	ldrh r0, [r0]
	bl GetItemIndex
	cmp r0, #0xcc
	bne _0802A12E
	movs r0, #1
	b _0802A136
_0802A12E:
	adds r4, #1
	cmp r4, r5
	blt _0802A118
_0802A134:
	movs r0, #0
_0802A136:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	THUMB_FUNC_END sub_802A108

.align 2, 0
