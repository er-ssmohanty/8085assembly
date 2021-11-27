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
start:  lxi d, 3000H ;block start location
	mvi b, 4     ;block size-1

sort:	push d ;++
	mov c, b       
	mov h,d
	mov l,e  
	mov a,m	     
;--------------------------;
	
;----MAX VALUE FINDER------;
max:    inx h
	cmp m
	jnc skip
	mov a,m
	mov d,h
	mov e,l
skip:	dcr c ;++
	jnz max
;--------------------------;
;-replacing the last number with the largest-;	
	mov c,a;c has largest
	mov a,m;a has last
	mov m,c;largest value in the last
	stax d;last value gets place of largest;
	;move 
	pop d ;--
	dcr b
	jnz sort
	hlt