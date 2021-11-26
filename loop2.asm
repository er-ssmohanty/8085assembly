start:  mvi d, 99H
	lxi h, 70H
	inr m
	dcr d
	jnz 07D2H
	mov c, m
	hlt