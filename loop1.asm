start:  mvi d, 99H
	lxi h, 70H
	loop:   inr m
		dcr d
		jnz loop
	mov c, m
	hlt