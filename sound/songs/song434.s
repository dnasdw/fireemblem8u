	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song434_1
song434_1:	@ 0x08581AF4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 22
	.byte	VOL	, v110
	.byte		N17	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song434
song434:	@ 0x08581B04
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup035		@ voicegroup/tone

	.word	song434_1		@ track
