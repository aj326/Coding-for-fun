	.file	"examples.c"
	.text
.globl copy_block
	.type	copy_block, @function
copy_block:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$16, %esp
	movl	$0, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L2
.L3:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -8(%ebp)
	addl	$4, 8(%ebp)
	movl	12(%ebp), %eax
	movl	-8(%ebp), %edx
	movl	%edx, (%eax)
	addl	$4, 12(%ebp)
	movl	-8(%ebp), %eax
	xorl	%eax, -4(%ebp)
	subl	$1, 16(%ebp)
.L2:
	cmpl	$0, 16(%ebp)
	jg	.L3
	movl	-4(%ebp), %eax
	leave
	ret
	.size	copy_block, .-copy_block
	.ident	"GCC: (Ubuntu 4.4.3-4ubuntu5.1) 4.4.3"
	.section	.note.GNU-stack,"",@progbits
