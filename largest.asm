start:  lxi h, 3000H
	mvi e, 10	
	
loop:   inx h
	cmp m

	jnc skip
	mov a,m
skip:	dcr e

	jnz loop
	
	inx h
	mov m,a
	hlt