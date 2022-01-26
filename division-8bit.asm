
;Division 8-bit
;;

jmp start

;data
;;2000H should contain the dividend
;;2001H should contain the divisor

;;--IF DIVISOR IS NOT ZERO---
;;2002H will have the quotient
;;2003H will have the reminder

;;IF LOCATION 2001H CONTAIN ZERO THEN NO RESULT
;;SHALL BE GENERATED AND LOCATION 2002H AND 2003H
;;SHALL RETAIN THEIR PREVIOUS VALUE.
;code
start:  lhld 2000H
	;;H got divisor and L got dividend

	sub a	;reg A is now reset
	mov e,a ;reg E is now reset

	mov a,h; reg A gets divisor
	cmp e
	jz div0
	
	mov a,l ;reg A gets dividend	
	cmp h
	jc cs2
	
loop:	sub h
	inr e
	cmp h
	jnc loop
	
	mov h,a
	mov l,e
	shld 2002H
	hlt

;;Case: "Divisor is larger than dividend."
cs2:   	mov h,l
	mov l,e
	shld 2002H
	hlt
	
;;Case: "Divisor is zero"
div0:	hlt
;;H shall get reminder
;;L shall get quotient