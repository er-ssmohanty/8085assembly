;------------PREFACE-----------------;
; AUTHOR: Subhransu S Mohanty, VSSUT Burla(Odisha)
; This program was writtern to implement selection sort
; algorithm in 8085 assembly language. This asm file
; was created on 26th November 2021.



;--------DESCRIPTION---------;

;;The topmost two locations of the stack 
;have the address of the largest value. 
;;B register holds the block size. 
;;C register acts as a counter. 
;;HL register pair has the current value. 
;;A(accumulator) register holds the maximum value.
;;D register acts as the temporary variable.

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
	push h
skip:	dcr c
	jnz max
;--------------------------;

	cmp m	
	; if max value is greater than current 
	;carry and zero are reset
	jc skip2
	mov d,m
	mov m,a
	mov a,d
skip2:
	inx h
	mov m,a
	hlt