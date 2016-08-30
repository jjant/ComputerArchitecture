

section .data
	msg			db	"h4ppy c0d1ng", 10
	msg_len	equ	$ - msg

section .text
	global _main
	extern toupper
	global _start

_start:
	call _main
	ret

_main:
	mov eax, msg
	push eax
	call toupper
	mov ecx, eax
	mov edx, msg_len
	mov eax, 4
	mov ebx, 1
	int 80h
	mov eax, 1
	int 80h