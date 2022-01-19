
;<Multiplication>

jmp start

;data


;code
start:  lxi h, 2000H
	mov b, m
	inx h
	mov c, m
	sub a
loop:	add c
	jnc skip
	inr d
skip:	dcr b
	jnz loop
	mov e,a	
	hlt