start:  lxi h,3000H
	sub a
	add m
	inx h
	inx h
	add m
	daa
	inx h
	inx h
	mov m,a
	dcx h
	sub a
	adc m
	dcx h
	dcx h
	add m
	daa
	inx h
	inx h
	inx h
	mov m,a
	jnc skip
	inx h
	inr m
skip:	hlt