all:
	nasm -f elf32 loader.asm
	gcc -c -nostartfiles -m32 main.c
	gcc -m32 -nostartfiles main.o loader.o -o main.out
