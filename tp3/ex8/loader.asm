GLOBAL _start
EXTERN main

section .text

_start:
	xor		ebp, ebp		;	ebp = 0
	pop 	esi					; esi = argc
	mov 	ecx, esp		; ecx = argv
	
	and 	esp, 0xFFFFFFF0 ; align esp
	
	push 	ecx	; load argv
	push 	esi	; load argc
	call 	main	; call main

	mov		ebx, eax	; exit with main's ret value
	mov		eax, 1		; load exit syscall
	int		80h
