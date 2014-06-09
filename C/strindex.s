	.file	"strindex.c"
	.text
	.globl	strindex
	.type	strindex, @function
strindex:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L2
.L9:
	movl	$0, -8(%rbp)
	jmp	.L3
.L5:
	addq	$1, -32(%rbp)
	addl	$1, -8(%rbp)
.L3:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	je	.L4
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L5
.L4:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
	movl	-8(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, -32(%rbp)
	jmp	.L7
.L6:
	movq	-32(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	cmpb	%al, %dl
	jne	.L7
	movl	-8(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, -32(%rbp)
	movl	-4(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, -24(%rbp)
	movl	-12(%rbp), %eax
	jmp	.L8
.L7:
	addq	$1, -24(%rbp)
	addl	$1, -4(%rbp)
	addl	$1, -12(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L9
	subl	$2, -4(%rbp)
	movl	-4(%rbp), %eax
	cltq
	negq	%rax
	addq	%rax, -24(%rbp)
	movl	$-1, %eax
.L8:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	strindex, .-strindex
	.section	.rodata
.LC1:
	.string	"strindex(%s,%s) = %d\n"
.LC2:
	.string	"s1:%s, s2:%s,s3:%s,s4:%s\n"
	.align 8
.LC0:
	.string	"vadkgjdglhfdagihoighaoighadsoifhoighoighoidsaghoidsaghoidsaghoidsahgoidsahgoidsahgoidsahgihgoidsahgoidsahgoidsahgoisahgoireaaoivdanibvnignhaoidjgiadgoidsavinvidnhiaohgaoievdnvoidanvionroihieojfoiddsanjv"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1684234849, -272(%rbp)
	movb	$0, -268(%rbp)
	movw	$25442, -304(%rbp)
	movb	$0, -302(%rbp)
	movw	$25958, -288(%rbp)
	movb	$0, -286(%rbp)
	movabsq	$8536140394893047414, %rdx
	movq	%rdx, -256(%rbp)
	movabsq	$8536140394893047414, %rsi
	movq	%rsi, -248(%rbp)
	movabsq	$8536140394893047414, %rdi
	movq	%rdi, -240(%rbp)
	movl	$1650554486, -232(%rbp)
	movw	$24929, -228(%rbp)
	movb	$0, -226(%rbp)
	leaq	-224(%rbp), %rdx
	movl	$.LC0, %eax
	movl	$25, %ecx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	rep movsq
	movq	%rsi, %rax
	movq	%rdi, %rdx
	movzwl	(%rax), %ecx
	movw	%cx, (%rdx)
	addq	$2, %rdx
	addq	$2, %rax
	movzbl	(%rax), %ecx
	movb	%cl, (%rdx)
	addq	$1, %rdx
	addq	$1, %rax
	leaq	-304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strindex
	movl	%eax, %ecx
	leaq	-304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-288(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strindex
	movl	%eax, %ecx
	leaq	-288(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-256(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strindex
	movl	%eax, %ecx
	leaq	-256(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-224(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strindex
	movl	%eax, %ecx
	leaq	-224(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-256(%rbp), %rsi
	leaq	-288(%rbp), %rcx
	leaq	-304(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L12
	call	__stack_chk_fail
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-2ubuntu4) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
