	.file	"problems.c"
	.text
	.p2align 4,,15
.globl pow2plus1
	.type	pow2plus1, @function
pow2plus1:
	pushl	%ebp
	movl	$1, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	popl	%ebp
	sall	%cl, %eax
	addl	$1, %eax
	ret
	.size	pow2plus1, .-pow2plus1
	.p2align 4,,15
.globl pow2plus4
	.type	pow2plus4, @function
pow2plus4:
	pushl	%ebp
	movl	$1, %eax
	movl	%esp, %ebp
	movl	8(%ebp), %ecx
	popl	%ebp
	sall	%cl, %eax
	addl	$4, %eax
	ret
	.size	pow2plus4, .-pow2plus4
	.p2align 4,,15
.globl times_7
	.type	times_7, @function
times_7:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	popl	%ebp
	leal	(%eax,%eax,4), %edx
	leal	(%edx,%eax,2), %eax
	ret
	.size	times_7, .-times_7
	.p2align 4,,15
.globl is_ascii
	.type	is_ascii, @function
is_ascii:
	pushl	%ebp
	xorl	%eax, %eax
	movl	%esp, %ebp
	cmpl	$127, 8(%ebp)
	popl	%ebp
	setle	%al
	ret
	.size	is_ascii, .-is_ascii
	.p2align 4,,15
.globl is_character
	.type	is_character, @function
is_character:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	movl	%edx, %eax
	andl	$223, %eax
	subl	$65, %eax
	cmpl	$25, %eax
	setbe	%al
	cmpl	$126, %edx
	setle	%dl
	andl	%edx, %eax
	movzbl	%al, %eax
	ret
	.size	is_character, .-is_character
	.p2align 4,,15
.globl remainder_by_8
	.type	remainder_by_8, @function
remainder_by_8:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	popl	%ebp
	andl	$7, %eax
	ret
	.size	remainder_by_8, .-remainder_by_8
	.p2align 4,,15
.globl negation
	.type	negation, @function
negation:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	popl	%ebp
	negl	%eax
	ret
	.size	negation, .-negation
	.p2align 4,,15
.globl bit_count
	.type	bit_count, @function
bit_count:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	popl	%ebp
	movl	%eax, %edx
	movl	%eax, %ecx
	sarl	%edx
	andl	$1, %ecx
	andl	$1, %edx
	leal	(%edx,%ecx), %ecx
	movl	%eax, %edx
	sarl	$2, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$3, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$4, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$5, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$6, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$7, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$8, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$9, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$10, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$11, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$12, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$13, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$14, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$15, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$16, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$17, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$18, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$19, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$20, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$21, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$22, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$23, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$24, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$25, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$26, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$27, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$28, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$29, %edx
	andl	$1, %edx
	addl	%edx, %ecx
	movl	%eax, %edx
	sarl	$30, %edx
	andl	$1, %edx
	leal	(%ecx,%edx), %edx
	shrl	$31, %eax
	leal	(%edx,%eax,2), %eax
	ret
	.size	bit_count, .-bit_count
	.p2align 4,,15
.globl overflow_3
	.type	overflow_3, @function
overflow_3:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	popl	%ebp
	movl	%edx, %eax
	leal	(%edx,%edx,2), %ecx
	sarl	$29, %eax
	shrl	$31, %ecx
	sarl	$30, %edx
	andl	%ecx, %eax
	andl	$1, %edx
	orl	%edx, %eax
	ret
	.size	overflow_3, .-overflow_3
	.p2align 4,,15
.globl bit_count_loop
	.type	bit_count_loop, @function
bit_count_loop:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%edx, %edx
	je	.L20
	.p2align 4,,7
	.p2align 3
.L21:
	sarl	%edx
	movl	%edx, %ecx
	andl	$1, %ecx
	addl	%ecx, %eax
	leal	1(%edx,%ecx), %ecx
	shrl	%ecx
	jne	.L21
.L20:
	popl	%ebp
	ret
	.size	bit_count_loop, .-bit_count_loop
.globl login
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"aj326"
	.data
	.align 4
	.type	login, @object
	.size	login, 4
login:
	.long	.LC0
.globl name
	.section	.rodata.str1.1
.LC1:
	.string	"Ahmed AlJehairan"
	.data
	.align 4
	.type	name, @object
	.size	name, 4
name:
	.long	.LC1
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
