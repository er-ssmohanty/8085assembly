start:  lhld 3000H
	xchg	
	lhld 3002H
	mvi c,0H

	mov a,e
	add l
	daa
	mov l,a
	
	mov a,d
	adc h
	daa
	mov h,a		
	
	shld 3004H
	jnc skip
	inr c	
skip:	mov a,c
	sta 3006H
	hlt