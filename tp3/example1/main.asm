GLOBAL main
EXTERN hello_world

section .text

main:
	call	hello_world
	mov 	eax, 1
	mov 	ebx, 0
	int		80h
