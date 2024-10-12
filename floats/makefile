floats.bin: floats.o
	ld -m elf_i386 -o floats.bin floats.o
floats.o: floats.asm
	nasm -f elf -F dwarf -g -o floats.o floats.asm

