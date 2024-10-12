c: c.o
	gcc -no-pie -m32 c.o test.c -o c.bin 
c.o: c.asm
	nasm -f elf -o c.o c.asm

