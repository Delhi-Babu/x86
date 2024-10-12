section .data


section .text
global _start


_start:

  mov eax, 0b1010
  mov ebx, 0b1100
  and eax, ebx

  mov eax, 0b1010
  mov ebx, 0b1100
  or eax, ebx


  mov eax, 0b1010
  not eax

  mov eax, 0b10011010
  and eax, 0x0f ; mask the last 4 bits and extract them into eax

  mov eax, 0b10011010
  xor eax, 0b00011100 ; toggle the 1 bits on eax
  


  ; exit
  mov eax, 1
  mov ebx, 1
  int 80h
