	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song453_1
song453_1:	@ 0x08581C28
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 27
	.byte	VOL	, v110
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song453
song453:	@ 0x08581C38
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup035		@ voicegroup/tone

	.word	song453_1		@ track
