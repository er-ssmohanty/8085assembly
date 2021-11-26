start:  lxi b, 3000H
	mvi d, 10
	
	sort:	mov h, b
		mov l, c
		mov e, d
		mov a,m	

		bignum: inx h
			cmp m
			jnc skip
			mov a,m
		skip:	dcr e
			jnz bignum	
	
		inx h
		mov m,a
		inx b
		dcr d
		jnz sort
	hlt
