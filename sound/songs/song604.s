	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song604_1
song604_1:	@ 0x0858261C
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 68
	.byte	VOL	, v117
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song604
song604:	@ 0x0858262C
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup035		@ voicegroup/tone

	.word	song604_1		@ track
