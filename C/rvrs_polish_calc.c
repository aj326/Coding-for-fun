#include <stdio.h>
#include <stdlib.h>
/*reverse polish calc: calculates expressions like this
4 3 + 2 -
*/
 
#define TEST_CASES 1
#define USER_INPUT 2
#define DEBUG 3
#define SIZE 100
//change this once you know how to malloc, relloc, etc.
int stack[SIZE] = {'0'};
// stack[99] = '\0';
float calc_tester(const char s[])
{
	float answer =0;
	char* string_start = s;
	while(*s){	
		//deal with unary -
		if(*s == '-' && *(s+1) != ' ')
			{
				*stack++= -(*(s+1));
				s+2;
			}
		if(*s == ' '){
			s++;
		}
		if()
	}
	printf("stack %p s %p \n",&stack, &s);
    return -1;
}

int main()
{
    if (DEBUG & TEST_CASES)
    {
        const char in1[] =  "-4 5 +";
        const char in2[] =  "5 2 /";
        const char in3[] =  "5 2.5 /";
        const char in4[] =  "5 1 2 + 4 * 3 - +";
        const char in5[] =  "4 2 5 * + 1 3 2 * + /";
        const char in6[] =  "12 8 3 * 6 / - 2 + -20.5 ";
        printf("TEST_CASES\n");
        printf("%s = 1; result %0.1f\n", in1, calc_tester(in1));
        printf("%s = 2.5; result %0.1f\n", in2, calc_tester(in2));
        printf("%s = 2; result %0.1f\n", in3, calc_tester(in3));
        printf("%s = 14; result %0.1f\n", in4, calc_tester(in4));
        printf("%s = 2; result %0.1f\n", in5, calc_tester(in5));
        printf("%s = 2; result %0.1f\n", in6, calc_tester(in6));

    }
    return 0;
}