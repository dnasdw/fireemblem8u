	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song376_1
song376_1:	@ 0x08581694
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 19
	.byte	VOL	, v117
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song376
song376:	@ 0x085816A4
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup034		@ voicegroup/tone

	.word	song376_1		@ track
