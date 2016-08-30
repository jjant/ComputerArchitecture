;	Compile with 'nasm -f elf64 ex1.asm'
;	Link with 'ld ex1.o -o ex1.out'
; Run with './ex1.out'

global _start

section .data
	string 			db	"Hello World", 10
	string_len	equ	$ - string

section .text
_start:
	mov ecx, string
	mov edx, string_len
	mov eax, 4
	mov ebx, 1
	int 80h
	mov eax, 1
	int 80h