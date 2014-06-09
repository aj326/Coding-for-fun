/*
 * problems.c - Source file with your solutions to the Lab.  You will
 *              submit a modified version of this file for grading.
 */

/*
 * Instructions to Students:
 *
 * STEP 1: Fill in the following struct with your identifying info.
 */
char* login = "aj326";
char* name  = "Ahmed AlJehairan";

/*
 * STEP 2: Read the following instructions carefully.

 * You will provide your solution to the Data Lab by
 * editing the collection of functions in this source file.

 * CODING RULES:

 *  Replace the "return" statement in each function with one
 *  or more lines of C code that implements the function. Your code
 *  must conform to the following style:

 *  int Funct(arg1, arg2, ...) {
      // brief description of how your implementation works
 *      int var1 = Expr1;
 *      ...
 *      int varM = ExprM;
 *
 *      varJ = ExprJ;
 *      ...
 *      varN = ExprN;
 *      return ExprR;
 *  }

 *  Each "Expr" is an expression using ONLY the following:
 *  1. Integer constants 0 through 255 (0xFF), inclusive. You are
 *      not allowed to use big constants such as 0xffffffff.
 *  2. Function arguments and local variables (no global variables).
 *  3. Unary integer operations ! ~
 *  4. Binary integer operations & ^ | + << >>
 *
 *  Some of the problems restrict the set of allowed operators even further.
 *  Each "Expr" may consist of multiple operators. You are not restricted to
 *  one operator per line.

 *  You are expressly forbidden to:
 *  1. Use any control constructs such as if, do, while, for, switch, etc.
 *  2. Define or use any macros.
 *  3. Define any additional functions in this file.
 *  4. Call any functions.
 *  5. Use any other operations, such as &&, ||, -, or ?:
 *  6. Use any form of casting.

 *  You may assume that your machine:
 *  1. Uses 2s complement, 32-bit representations of integers.
 *  2. Performs right shifts arithmetically.
 *  3. Has unpredictable behavior when shifting an integer by more
 *     than the word size.

 * EXAMPLES OF ACCEPTABLE CODING STYLE:
 */

  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
int pow2plus1(int x) {
  // exploit ability of shifts to compute powers of 2
  return (1 << x) + 1;
}

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
int pow2plus4(int x) {
  /* exploit ability of shifts to compute powers of 2 */
  int result = (1 << x);
  result += 4;
  return result;
}


/* NOTES:
 *   1. A problem or two may indicate that a single WHILE statement may be used.

 *   2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
 *      that you are allowed to use for your implementation of the function.
 *      Note that '=' is not counted; you may use as many of these as you
 *      want without penalty.

 *   3. Use the test harness to check your functions for correctness.

 *   4. The maximum number of ops for each function is given in the
 *      header comment for each function. If there are any inconsistencies
 *      between the maximum ops in the writeup and in this file, consider
 *      this file the authoritative source.
 */


/*
 * STEP 3: Modify the following functions according the coding rules.
 *
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the btest test harness to check that your solutions produce
 *      the correct answers. Watch out for corner cases around Tmin and Tmax.
 */



// problems.c   -- file of problems


// Problems

// Create operational C programs from text descriptions.
// Remember


/*
 *  Multiply by 7
 *    Example:  times_7( 3 ) = 21
 *    0 <= n && n < 2^28
 *    Legal ops:  +
 *    Max ops:  4
 *
 *    Number of X86 instructions:7
 */
int times_7( int n ) {
//store 2n and 4n in variables.	
	int times2, times4, times6;
	times2 = n + n;
    	times4 = times2 + times2;
      	times6 = times4 + times2;
        return( times6 + n);

}


/*
 *  ASCII Code?
 *    Example:  is_ascii( 10 ) = 1,  is_ascii( 1000 ) = 0
 *    0 <= n && n < 2^28
 *    Legal ops:  < &   !! Note < operator is OK for this problem!!
 *    Max ops:  5
 *
 *    Number of X86 instructions:7
 */
int is_ascii( int n ) {
	return( n<128 );
}


/*
 *  ASCII Character (upper or lower case) Code?
 *    Example:  is_character( 10 ) = 0,  is_character( 'b' ) = 1
 *    0 <= n && n < 2^28
 *    Legal ops:  < &   !! Note < operator is OK for this problem!!
 *    Max ops:  5
 *
 *    Number of X86 instructions:14
 */
int is_character( int n ) {

	int c  = n & 0xdf;//make lowercase	
	return (64<c & c<91 & n<127);
}


/*
 *  Remainder after dividing by 8
 *    Example:  remainder_by_8( 15 ) = 7
 *              remainder_by_8( 33 ) = 1
 *    0 <= n && n < 2^28
 *    Legal ops:  &
 *    Max ops:  5
 *
 *    Number of X86 instructions:6
 */
int remainder_by_8( int n ) {

  return( n & 7 );
}


/*
 *  Negation
 *    Example:  negation( 25 ) = -25
 *    Example:  negation( -8 ) = 8
 *    Legal ops:  ~ +
 *    Max ops:  4
 *
 *    Number of X86 instructions:6
 */
int negation( int n ) {
  
  return( ~n + 1 );
}


/*
 *  Bit Counting
 *    Example:  bit_count( 30 ) = 4
 *    Legal ops:  & >> +
 *    Max ops:  100
 */
int bit_count( int n ) {
 
  int count =(n&1);

  n = n >>1;
  count = (n&1) + count;
  
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              

  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 
  n = n >>1;
  count = (n&1) + count;
                                                              
 return( count );
}


#define TMAX_32  (1<<30)
/*
 *  Overflow detection of 3*n -- harder problem
 *    Input is positive
 *    Example:  overflow( 10 ) = 0
n:-8: no loop 30 loop 1.

 *    Example:  overlfow( TMAX_32 ) = 1
 *    Legal ops:  & | >> << ~
 *    Max ops:  10
 *
 *    Number of X86 instructions:13
 */

int overflow_3( int n ) {
  int ans = n + n + n;
  int overflowBy2 = (n>>30)&1;
  int overflowBy3 = ((n>>29)&1) & ((ans>>31)&1);
  return(overflowBy2 | overflowBy3);
}


/* For this next problem, you may use the single WHILE loop given. */

/*
 *  Bit Counting ooop
 *    Example:  bit_count( 30 ) = 4
 *    Legal ops:  & >> +
 */
int bit_count_loop( int n ) {
  
  int t = n;
  int c = n&1;

  while( n != 0 )
    {
	n = t;
	n = n >> 1;
	c = (n&1)+c;
	t = n; // tail the new n.
	n = n + ((n&1)+1) >> 1; // kill the loop eventually if n < 0

    }
  return( c );
}

