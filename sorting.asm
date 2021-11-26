;;DE register pair has the address of the largest 
;value. 
;;B register holds the block size. 
;;C register acts as a counter. 
;;HL register pair has the current value. 
;;A(accumulator) register holds the maximum value.

;------INITIALISATION------;
start:  mov b, 10    
	mov c, b     
	lxi d, 3000H  
	mov h,d
	mov l,e	     
	mov a,m	     
;--------------------------;
	
;----MAX VALUE FINDER------;
max:    inx h
	cmp m
	jnc skip
	mov a,m
skip:	dcr c

	jnz max
	
	inx h
	mov m,a
	hlt