	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song554_1
song554_1:	@ 0x085822D4
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 52
	.byte	VOL	, v117
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song554
song554:	@ 0x085822E4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup035		@ voicegroup/tone

	.word	song554_1		@ track
