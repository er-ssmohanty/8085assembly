start:  mvi h, 10

	lxi d, 3000H
	lxi b, 3010H	

loop0:	inx d
	dcr h
	jnz loop0

	mvi h, 10
	;jz skip
loop:	ldax b
	stax d
	inx b
	dcx d
	dcr h
	jnz loop
	hlt