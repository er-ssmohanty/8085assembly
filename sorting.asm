start:  mov b, 10
	mov c, b
	lxi d, 3000H;de pair has the largest value 
	mov h,d
	mov l,e	    ;hl pair has the current value
	mov a,m
	

max:   inx h
	cmp m

	jnc skip
	mov a,m
skip:	dcr c

	jnz max
	
	inx h
	mov m,a
	hlt