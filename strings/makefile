strings.bin: strings.o
	ld -m elf_i386 -o strings.bin strings.o
strings.o: strings.asm
	nasm -f elf -o strings.o strings.asm

