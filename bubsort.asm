;--------BUBBLE SORT PROGRAM--------;
;-----


;------DESCRIPTION--------;
;;BC register pair hold the address of past value
;;HL reg. pair hold the address of current value
;;DE hold
start:  lxi d, 3000H
	mov h,d
	mov l,e
	mvi a,6
	
loop:	mov d,a
	mov a,m
	mov b,h
	mov c,l
	inx h
	cmp m
	jc skip
	mov e,a ;e=a
	mov a,m ;a=m
	mov m,e ;m=a past
	stax b
skip:   dcr d
	;if m>a, carry=1 else carry = 0
	jnz loop

	
	hlt