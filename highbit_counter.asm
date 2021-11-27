
;This program finds the total number of high bits in
;a byte long number.


;Register B holds the total count of 1s
;Register C acts as loop counter
start:  mvi a,01H
	mvi c,8
	mvi b,0	

loop:	rlc
	jnc skip
	inr b
skip:   dcr c
	jnz loop
	
	hlt