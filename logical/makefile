logical.bin: logical.o
	ld -m elf_i386 -o logical.bin logical.o
logical.o: logical.asm
	nasm -f elf -F dwarf -g -o logical.o logical.asm

