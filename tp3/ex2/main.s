	.file	"main.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"Argument: %s\n"
	.text
	.globl	main
	.type	main, @function
main:
	lea	ecx, [esp+4]
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	mov	ebp, esp
	push	ecx
	sub	esp, 4
	mov	eax, ecx
	mov	eax, DWORD PTR [eax+4]
	mov	eax, DWORD PTR [eax]
	sub	esp, 8
	push	eax
	push	OFFSET FLAT:.LC0
	call	printf
	add	esp, 16
	mov	eax, 0
	mov	ecx, DWORD PTR [ebp-4]
	leave
	lea	esp, [ecx-4]
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
