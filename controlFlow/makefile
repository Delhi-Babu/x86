controlFlow.bin: controlFlow.o
	ld -m elf_i386 -o controlFlow.bin controlFlow.o
controlFlow.o: controlFlow.asm
	nasm -f elf -F dwarf -g -o controlFlow.o controlFlow.asm

