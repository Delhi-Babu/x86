section .data
  list db 1,2,3,4


section .text
global _start


_start:

  ; various jump operations
  ; jmp -> jmp to address
  ; je  -> jmp if equal
  ; jl  -> jmp if less than
  ; jle -> jmp if less than or equal
  ; jg  -> jmp if greater than
  ; jge -> jmp if greater than or equal
  ; jne -> jmp if not equal
  ; jz  -> jmp if zero
  ; jnz -> jmp if not zero
;   mov eax, 3
;   mov ebx, 2
;   cmp eax, ebx ; subracts and sets eflags reg
;   jl lesser
;   jmp end

; lesser: 
;   mov ecx, 1
;   jmp end

; end:
;   mov eax,1
;   mov ebx, 1
;   int 80h

  mov eax, 0
  mov cl, 0

loop:
  mov bl, [list+eax]
  add cl, bl
  inc eax 
  cmp eax, 4
  je end
  jmp loop


end:
  mov eax,1
  mov ebx,1
  int 80h
