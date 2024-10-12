#include <stdio.h>

extern int test(int, int);

int test(int a, int b){
  printf("Inside test fn \n");
  return a+b;
}
