section .data
	msg			db	"h4ppy c0d1ng", 10
	msg_len	equ	$ - msg

section .text
	global main
	extern toupper

main:
	push	ebp
	mov 	ebp, esp
	mov 	edx, msg
	push 	edx
	call upcase
	mov 	ecx, eax
	mov 	edx, msg_len
	mov 	eax, 4
	mov 	ebx, 1
	int 	80h
	mov 	eax, 1
	int 	80h


upcase:
	push 	ebp
	mov		ebp, esp
	mov		eax, [ebp + 4]
_loop:
	

