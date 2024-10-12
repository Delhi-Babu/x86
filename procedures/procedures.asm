extern printf

section .data
  fmt db "the sum is %d",10,0



section .text
global main

sum:
  push ebp
  mov ebp, esp
  mov eax, [ebp+8]
  mov ebx, [ebp+12]
  add eax, ebx
  pop ebp
  ret

main:

  push 1
  push 4
  call sum
  push eax
  push fmt
  call printf


  mov eax, 1
  mov ebx, 1
  int 80h
