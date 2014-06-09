/*
 * Architecture Lab:
 *
 * High level specs for the functions that the students will rewrite
 * in Y86 assembly language
 */

/* copy_block - Copy src to dest and return xor checksum of src */
int copy_block(int *src, int *dest, int len)
{
    int result = 0;
    int val    = 0;
    while (len > 0) {
	val = *src++;
	*dest++ = val;
	result ^= val;
	len--;
    }
    return result;
}
/* $end examples */
