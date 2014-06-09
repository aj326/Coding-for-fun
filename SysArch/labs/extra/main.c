#include <stdio.h>
#include <stdlib.h>
int main(){
char c;
int flag = 1;
int linefeed =0;  //max = 60
int linelength=0; //max per line = 72
int pagebreak=0; //must be one by end of read
FILE * file;
file = fopen("aj326.txt", "r");
if (file==NULL)
perror("ERROR opening aj326.txt");
else{
while(c != -1 && flag!=0)
{
c = fgetc(file); //read char
flag = ((c>=32 && c<=126) || (c == 10) || (c==12)) || (c==-1)
&& (pagebreak<=1) && linelength<=72 && linefeed <= 60;
if (c == 10){
linelength=0;
linefeed++;
}
if (c == 12){
pagebreak++;linefeed = 0;}
linelength++;
}
}
printf("char = %d; pagebreak = %d; linelength = %d; linefeed = %d; flag = %d\n", c, pagebreak, linelength, linefeed, flag);
return flag && pagebreak;
}

