all:
	nasm a6.asm -o a6.o -f elf32
	g++ -m32 -o a6 main.cpp a6.o
	rm *.o

