section .data
  ; DB - 1  byte
  ; DW - 2  byte
  ; DD - 4  byte
  ; DQ - 8  byte
  ; DT - 10 byte
  num DD 1
  num1 DB 2
  num2 DB 3


section .text
global _start


_start:
  mov eax, [num]        ; operation to be peformed by the interrupt
  mov bl, [num1]       ; status code
  mov cl, [num2]       ; status code
  int 80h               ; calling the interrupt

