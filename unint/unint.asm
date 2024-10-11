section .bss
  num resb 3        ; reserve 3 bytes

section .data
  num2 db 3 DUP(1) ; init 3 bytes with value 1


section .text

global _start


_start:
  ; in x86 we cant place the item on memory, we'll have to place
  ; them in a reg first and move them in the mem
  mov bl, 1
  mov [num], bl
  ; we can increment the address simialr to [ptr+offset]
  mov [num+1], bl
  mov [num+2], bl
  mov dl, [num2]

  ; exit 
  mov eax,1
  mov ebx,1 
  int 80h

