#include <stdio.h>
#include <stdlib.h>

int getHex(char chunk[]){

  int i;
  int code = 0;
  for (i=0; i<4; i++){
    //code|=((chunk[i]-0x60) << ((3-i) * 8));
    code+=chunk[i];
  
    printf("chunk[%d]: %c:%x\t code: %x\n", i, chunk[i], chunk[i], code);
  }

  printf("code: %x\n", code);

 
  return code;
}

int readfile(){
  FILE *fp;
  int i = 0;
  short code[4000];
  char word[6];
  int exit = 1;
  fp = fopen("words.txt", "r");
  if (fp==NULL){
    perror("Something went wrong");
    exit = 0;
  }
  else{
    while(fgets(word,7,fp) != NULL){

      printf("Word:%s\n", word);
      code[i] = getHex(word);
      i++;
    } 
  }
  for (i=0; i< 3807; i++)
    printf("%x\n",code[i]);

  printf("\n");
  return exit;
}


int main(){
  printf("gcc from vim");
  readfile();
  getHex("zyme");
}

