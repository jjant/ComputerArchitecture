GLOBAL main
EXTERN printf
EXTERN exit
section .rodata
fmt db "Argument: %s", 10, 0

section .text
main:
	push	ebp					; push ebp0
	mov		ebp, esp		; [ebp1] == ebp0

	push	dword[ebp+8]; push argc
	call	print_args
	
	mov		eax, 0			; return(0)
	mov		esp, ebp		; pop
	pop		ebp					; stack frame
	call 	exit


print_args:
	push	ebp								; pusheo ebp1
	mov		ebp, esp					; [ebp2] == ebp1
	mov		edi, dword[ebp+8]	; [ebp+8] == argc
	jmp		lop
postlop:
	mov		esp, ebp
	pop		ebp
	ret

lop:
	sub		edi, 1
	cmp		edi, 0
	jz		postlop
	mov 	esi, [ebp] 						; [esi] == ebp1
	mov		ebx, dword[esi + 12]	; [esi+12] = [ebp1+12] = argv
	push	dword[ebx + 4 * edi]	; [ebx] = [argv]
	push 	fmt										; [ebx + 4 * edi] = argv[edi] -> argv[1],... argv[n]
	call 	printf
	jmp		lop
