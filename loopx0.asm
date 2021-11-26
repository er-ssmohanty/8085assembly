start:  mvi h, 10
	lxi d, 3000H
	lxi b, 3010H	
	;jz skip
loop:	ldax b
	stax d
	inx b
	inx d
	dcr h
	jnz loop
	hlt