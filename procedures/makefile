procedures: procedures.o
#	ld -m elf_i386 -o procedures.bin procedures.o
	gcc -m32 -no-pie -o procedures.bin procedures.o

procedures.o: procedures.asm
	nasm -f elf -o procedures.o procedures.asm

