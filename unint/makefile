unint.bin: unint.o
	ld -m elf_i386 -o unint.bin unint.o
unint.o: unint.asm
	nasm -f elf -o unint.o unint.asm

