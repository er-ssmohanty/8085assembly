
;Division 8-bit

jmp start

;data
;;2000H should contain dividend
;;2001H should contain divisor



;code
start:  lhld 2000H
	;;H got divisor and L got dividend
	sub a	;reg A is now reset

	cmp h
	jc cs2

	sub a	;reg A is now reset
	mov e,a ;reg E is now reset	
	mov a,l ;reg A gets dividend

loop:	sub h
	inr e
	cmp h
	jnc loop
	
	mov h,a
	mov l,e
	shld 2002H
	hlt

cs2:   	mov h,l
	mov l,a
	shld 2002H
	hlt
	

;;H shall get reminder
;;L shall get quotient