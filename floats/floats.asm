section .data
  pi dd 3.14
  y dd 2.1

section .text
global _start


_start:
  movss xmm0, [pi]
  movss xmm1,[y] 
  addss xmm0, xmm1
  

  movss xmm0, [pi]
  movss xmm1,[y] 
  ucomiss xmm0, xmm1
  ja above
  jmp end
  ; jmp operations will be like
  ; jb  -> jmp if above
  ; ja  -> jmp if below
  ; jbe -> jmp if below eq
  ; jae -> jmp if above eq
  ; je  -> jmp if eq

above:
  mov ebx, 2
  jmp end

end:
  mov eax,1
  mov ebx,1
  int 80h
