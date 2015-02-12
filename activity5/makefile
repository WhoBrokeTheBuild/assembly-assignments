all:
	nasm a5.asm -o a5.o -f elf
	gcc -m32 -o main.o main.cpp
	gcc -m32 -o a5 a5.o main.o
	rm *.o

