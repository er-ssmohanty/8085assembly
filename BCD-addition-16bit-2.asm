start:  mvi c,00H
	lda 3000H
	mov b,a
	lda 3002H
	
	add b
	daa
	sta 2004H

	lda 3001H
	mov b,a
	lda 3003H
	
	adc b
	daa
	sta 2005H

	jnc skip
	inr c

skip:   mov a,c
	sta 2006H
	hlt

; I saw this program from a video of Bharat Acharya