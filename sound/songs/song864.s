	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song864_1
song864_1:	@ 0x085848D4
	.byte	TEMPO	, 75
	.byte	VOL	, v055
	.byte	VOICE	, 7
	.byte	KEYSH	, 0
	.byte		N36	, Cn3, v127
	.byte	W36
	.byte	FINE

	.align 2
	.global song864
song864:	@ 0x085848E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup038		@ voicegroup/tone

	.word	song864_1		@ track
