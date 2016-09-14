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

	push 	eax		; exit with main's ret value
	mov		ebx,0
	int		80h
