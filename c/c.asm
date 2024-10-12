; indicating these are some external fucntions to nasm
extern printf
extern exit
extern test

section .data
  msg DD "Hello world!", 0
  msg2 DD "Message 2"
  fmt DB "Output is , %s %s", 10, 0
  intFmt DB "The sum is %d", 10, 0

section .text
global main


main:
  ; printf(fmt, msg)
  ; to pass arg to printf we need to push them into stack 
  ; note stack is lifo so push them in rev, the order it pops matters
  push msg2
  push msg
  push fmt
  call printf 

  push 1
  push 2
  call test
  push eax
  push intFmt
  call printf

  push 1
  call exit



