#include <stdio.h>
#include <stdlib.h>

int main(){
  char chunk[4] = "abcd";//{'a','b','c','d'};
  printf("in getHex");
  int i;
  int code = 0;
  printf("code: %x\n", code);
  printf("first: %x\n", chunk[0]);
  for (i=0; i<4; i++){
    code|=(chunk[i] << (i * 8));
  }
  printf("code: %x", code);

}

