arithmetic.bin: arithmetic.o
	ld -m elf_i386 -o arithmetic.bin arithmetic.o
arithmetic.o: arithmetic.asm
	nasm -f elf -F dwarf -g -o arithmetic.o arithmetic.asm

