    .section .data

	.global ProcScr_SysBrownBox
ProcScr_SysBrownBox:  @ 0x08A20D6C
        @ PROC_CALL
        .short 0x2, 0x0
        .word SysBrownBox_Init
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word SysBrownBox_Loop
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gUnknown_08A20D8C
gUnknown_08A20D8C:  @ 0x08A20D8C
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word sub_80ADCA4
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gUnknown_08A20DA4
gUnknown_08A20DA4:  @ 0x08A20DA4
        @ PROC_CALL
        .short 0x2, 0x0
        .word FadeInOut_DisableGfx
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word FadeInOut_Init
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word FadeIn_Loop
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0


	.global gUnknown_08A20DCC
gUnknown_08A20DCC:  @ 0x08A20DCC
        @ PROC_YIELD
        .short 0xe, 0x0
        .word 0x0
        @ PROC_CALL
        .short 0x2, 0x0
        .word EnableAllGfx
        @ PROC_CALL
        .short 0x2, 0x0
        .word FadeInOut_Init
        @ PROC_REPEAT
        .short 0x3, 0x0
        .word FadeOut_Loop
        @ PROC_CALL
        .short 0x2, 0x0
        .word FadeInOut_DisableGfx
        @ PROC_END
        .short 0x0, 0x0
        .word 0x0
