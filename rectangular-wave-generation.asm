loop:   mvi a,0C0H
	sim
	call delay1
	mvi a,40H
	sim
	call delay2
	jmp loop

delay1: mvi c,78H	;high duration control
loop2:	dcr c	 	
	jnz loop2	
	ret	

delay2: mvi d,69H	;low duration control
loop3:	dcr c	 	
	jnz loop3	
	ret	
;total delay = 7T+10T+(14t*77)+11T
;=>total delay = 17T+(14T*78)-3T
;=>total delay = 14T+(14T*78)
;hence, total delay = 14T+(14T*count)----(i)
;for 8bit reg count
;------------------------------------------;
;---------finding appropriate count--------;
;T=1/freq
;taking freq=3MHz, T=0.33 microsecond
;14T=14*0.33=4.667 microsecond
;Now we can find appropriate count for given delay
;by applying the values in equation (i)