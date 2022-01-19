
;16-bit Multiplication

jmp start
start:  lxi h, 2000H
	mov c, m
	inx h
	mov b, m ;reg pair b assumes X
	inx h
	mov e, m
	inx h
	mov d, m ;reg pair d assumes Y
	inx h		

	push h	;memory pointer is moved
;to the stack for further use
	
	sub a; for cleaning reg a
	mov h,a
	mov l,a ;hl pair is cleaned

loop:	dad b
	jnc skip

	xthl
	inr m
	xthl
	jnc skip

	xthl
	inx h
	inr m
	dcx h
	xthl
	
	dcx d
skip:	mov a,e
	cmp d
	jnz nocheck
	cpi 00H
nocheck: jnz loop
	xchg ; higher Z in DE
	pop h
	inx h
	inx h
	mov m,e
	inx h	
	mov m,d	
	hlt
;Z=X*Y;where X and Y are two 16bit numbers
;Memory address of lower byte of X = 2000H
;Memory address of higher byte of X = 2001H
;Memory address of lower byte of Y = 2002H
;Memory address of higher byte of Y = 2003H
;