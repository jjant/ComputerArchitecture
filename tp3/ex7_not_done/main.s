	.file	"main.c"
	.intel_syntax noprefix
	.globl	global
	.data
	.align 4
	.type	global, @object
	.size	global, 20
global:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.text
	.globl	main
	.type	main, @function
main:
	push	ebp
	mov	ebp, esp
	mov	eax, 0
	pop	ebp
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
