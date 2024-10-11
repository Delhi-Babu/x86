section .data



section .text
global _start


_start:
  mov eax, 1        ; operation to be peformed by the interrupt
  mov ebx, 1        ; status code
  int 80h           ; calling the interrupt

