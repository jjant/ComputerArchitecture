all:
	nasm -f elf32 libasm.asm
	gcc -c -m32 main.c
	gcc -m32 main.o libasm.o -o main.out
