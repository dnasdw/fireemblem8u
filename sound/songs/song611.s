	.include "MPlayDef.s"

	.section .rodata

	@********************** Track  1 **********************@

	.align 2
	.global song611_1
song611_1:	@ 0x08582670
	.byte	KEYSH	, 0
	.byte	TEMPO	, 75
	.byte	VOICE	, 120
	.byte	VOL	, v120
	.byte		N24	, Cn3, v127
	.byte	W24
	.byte	FINE

	.align 2
	.global song611
song611:	@ 0x08582680
	.byte	1		@ trackCount
	.byte	0		@ blockCount
	.byte	20		@ priority
	.byte	0		@ reverb

	.word	voicegroup034		@ voicegroup/tone

	.word	song611_1		@ track
