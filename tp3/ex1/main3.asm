GLOBAL start
EXTERN printf
EXTERN exit
section .rodata
fmt db "Argument: %s", 10, 0

section .text
start:
	pop		ebx
	pop		eax
	and		esp, 0xFFFFFFF0
	sub		esp, 16
	mov 	dword[esp], 
	mov 	dword[esp+4]
	call	printf
	call	exit