section .data


section .text
global _start


_start:
  ;=====================add=========================== 
  ; add operation
  ; sets parity flag in eflags reg
  ; pf = 1 (odd number of 1's in the binary value)
  mov eax, 1
  mov ebx, 2
  add eax, ebx

  ; al will have 0 and we have a carry flag
  ; cf = 1 (indicates we have a carry flag)
  ; af = 1 (indicates there is a carry/borrow in arithmetic operation)
  ; zf = 1 (indicates the value of arithmetic operation is 0)
  mov al, 0b11111111
  mov bl, 0b0001
  add al, bl 


  ; add with carry
  mov al, 0b11111111
  mov bl, 0b0001
  add al, bl 
  adc ah, 0      ; add the carry to higher nibble of the eax 
  ;================================================== 

  ;=====================sub=========================== 
  mov eax, 5
  mov ebx, 2
  sub eax, ebx
  ; neg number

  ; cf = 1 since the subration resulted in borrow
  ; af = 1 since there is a borrow
  ; sf = 1 since this is negative
  mov eax, 2
  mov ebx, 5
  sub eax, ebx
  ;================================================== 
  

  ;=====================mul=========================== 
  mov al, 2
  mov bl, 3
  mul bl ; mul with al
  ; we can use imul for signed multiplication
  mov al, 0xff
  mov bl, 2
  mul bl ; automatically increment to higger nibble
  ;================================================== 

;=====================div=========================== 
  mov eax, 11
  mov ecx, 2
  div ecx
  ; similar to mul we can do idiv for signed division

;================================================== 


  ; exit
  mov eax, 1
  mov ebx, 1
  int 80h
