loop:   mvi a,0C0H
	sim		;logic high
	call delay
	mvi a,40H	;logic low
	sim
	jmp loop

;delay after logic high and no delay after logic low 
;helps create negative spikes

delay:  mvi c,78H	;7T states
loop2:	dcr c	 	;4T states
	jnz loop2	;10T states, last one 7t
	ret		;10T states