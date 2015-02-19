all:
	nasm a5.asm -o a5.o -f elf32
	g++ -m32 -o a5 main.cpp a5.o
	rm *.o

