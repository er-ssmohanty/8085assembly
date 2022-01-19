
;8-bit Multiplication

jmp start
start:  lxi h, 2000H
	mov b, m
	inx h
	mov c, m
	sub a; for cleaning reg a
	mov d,a; for cleaning reg d
loop:	add c
	jnc skip
	inr d
skip:	dcr b
	jnz loop
	mov e,a	
	hlt
;Z=X*Y;where X and Y are two 8bit numbers
;Memory address of value X = 2000H
;Memory address of value Y = 2001H
;Result Z will be stored in DE reg pair
