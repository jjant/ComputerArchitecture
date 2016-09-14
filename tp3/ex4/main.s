factorial:
	push	ebp
	mov		ebp, esp				

	sub	esp, 24									; make space for local var

	cmp	DWORD PTR [ebp+8], 0		; if n == 0, return 1 (label 3)
	jne	.L2											; else, save n and call factorial(n-1)
	mov	eax, 1									
	jmp	.L3

.L2:
	mov	eax, DWORD PTR [ebp+8]	; eax(m)		= n
	sub	eax, 1									;	eax(m+1)	= n -1
	sub	esp, 12									;	

	push	eax
	call	factorial	; :0
	add	esp, 16									; esp5
	
	mov	DWORD PTR [ebp-12], eax ; factorial_n_1 = factorial(n-1)
	mov	eax, DWORD PTR [ebp+8]	;	eax = n

	imul	eax, DWORD PTR [ebp-12] ;	return n * factorial(n-1)

.L3:
	leave
	ret