	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song185_1
song185_1:	@ 0x0857E4D4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 76
	.byte	VOL	, v127
	.byte		N48	, Cn3, v127
	.byte	W24
	.byte	W24
	.byte	FINE

	.align 2
	.global song185
song185:	@ 0x0857E4E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup031		@ voicegroup/tone

	.word	song185_1		@ track
