// Main program
#include "problems.c"
#include <stdio.h>
#include <stdlib.h>


// Execution starts here.

int main( int   argc,       // Number of arguments
          char *argv[],     // Pointer to array of characters
          char *env [] )    // Pointer to array of characters
{
  int in, ans;              // Space for integers "in" and "ans"

  if ( argc != 2 ) {
    printf("argc value is not 2, but %d.\n", argc );
    exit ( argc );
  }

  in = atoi( argv[ 1 ] );   // Convert ASCII into an integer

  printf( "argv[ 1 ] is: %d.\n", in );  // Print the conversion result

  ans = in;
  // ans = times_7        ( in );
  // ans = is_ascii       ( in );
  // ans = is_character   ( in );
  // ans = remainder_by_8 ( in );
  // ans = negation       ( in );
  // ans = bit_count      ( in );
  // ans = overflow_3     ( in );
  // ans = bit_count      ( in );

  // Test harness -- put your testing code here
   int i;
//   for (i = -100; i<100; i++){
//   printf("Testing times_7:  %d x 7=\t%d.\n", i, times_7(i));
//}
	
//  for (i = -100; i<200; i++){
//   printf("Testing is_ascii:  %c \t%d.\n", i, is_ascii(i));
//}
//  for (i = -100; i<200; i++){
//   printf("Testing is_character:  %c \t%d.\n", i, is_character(i));
//}
//  for (i = 0;i<2000; i++){
//   printf("Testing remainder:  %d / 8= %d.\n", i,remainder_by_8(i));
//}

//  for (i = -200; i<200; i++){
//   printf("Testing negation: neg  %d  = %d.\n", i,negation(i));
//}

 // End test harness
	
  printf( "left by eleven for 0x01234567: %x.\n", (0x01234567<<11) );
  printf( "ans is: %d.\n", ans );
  exit ( 0 );
}
