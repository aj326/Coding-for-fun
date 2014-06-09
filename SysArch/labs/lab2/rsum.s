	.file	"rsum.c"
	.text
.globl rsum_list
	.type	rsum_list, @function
rsum_list:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	subl	$20, %esp
	movl	8(%ebp), %ebx
	movl	$0, %eax
	testl	%ebx, %ebx
	je	.L3
	movl	4(%ebx), %eax
	movl	%eax, (%esp)
	call	rsum_list
	addl	(%ebx), %eax
.L3:
	addl	$20, %esp
	popl	%ebx
	popl	%ebp
	ret
	.size	rsum_list, .-rsum_list
.globl copy_block
	.type	copy_block, @function
copy_block:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	movl	8(%ebp), %edi
	movl	12(%ebp), %esi
	movl	16(%ebp), %ecx
	movl	$0, %edx
	movl	$0, %eax
	testl	%ecx, %ecx
	jle	.L7
.L10:
	movl	(%edi,%edx), %ebx
	movl	%ebx, (%esi,%edx)
	xorl	%ebx, %eax
	addl	$4, %edx
	subl	$1, %ecx
	jne	.L10
.L7:
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
	.size	copy_block, .-copy_block
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
