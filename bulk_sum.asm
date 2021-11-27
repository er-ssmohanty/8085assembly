start:  lxi h, 3000H ;starting location of the block
	mvi c, 5 ; block size
	mvi b, 0
	mvi a, 0	
	
loop:   add m
	jnc skip
	inr b	
skip:	inx h
	dcr c
	jnz loop
	mov m,a
	inx h
	mov m,b
	hlt
	;rlc
	