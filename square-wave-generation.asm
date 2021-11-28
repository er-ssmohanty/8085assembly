loop:   mvi a,C0H
	sim
	call delay
	mvi a,40H
	sim
	call delay
	jmp loop

delay:  mvi c,78H
loop2:	dcr c	
	jnz loop2
	ret