hello: hello.o
	ld -m elf_i386 -o hello.bin hello.o
hello.o: hello.asm
	nasm -f elf -o hello.o hello.asm

