section .data
  ; DB - 1  byte
  ; DW - 2  byte
  ; DD - 4  byte
  ; DQ - 8  byte
  ; DT - 10 byte
  char db "a" 
  list db 1, 2, 3, 4
  text db "Hello World!",0



section .text
global _start


_start:
  mov bl, [char]        ; mov char into lower block of ebx
  mov cl, [list]
  mov dl, [text]
  mov eax, 1
  int 80h               ; calling the interrupt

