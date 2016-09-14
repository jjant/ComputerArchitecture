	.comm	global,20,4		; int global[5];
main:
	push	ebp
	mov	ebp, esp
	mov	eax, 0
	pop	ebp
	ret
