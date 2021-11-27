;--------BUBBLE SORT PROGRAM--------;
;-----


;------DESCRIPTION--------;

start:  lxi d, 0000H
	mov h,d
	mov l,e
	
loop:
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
skip:   
	;if m>a, carry=1 else carry = 0


	
	hlt