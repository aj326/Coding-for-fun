	.file	"strindex_smarter.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.p2align 4,,15
	.globl	strindex
	.type	strindex, @function
strindex:
.LFB24:
	.file 1 "strindex_smarter.c"
	.loc 1 5 0
	.cfi_startproc
.LVL0:
	.loc 1 10 0
	movzx	r8d, BYTE PTR [rdi]
	.loc 1 30 0
	mov	eax, -1
	.loc 1 10 0
	test	r8b, r8b
	je	.L2
	movzx	r10d, BYTE PTR [rsi]
	xor	r9d, r9d
.LVL1:
	.p2align 4,,10
	.p2align 3
.L3:
	.loc 1 12 0 discriminator 1
	test	r10b, r10b
	mov	eax, r9d
	je	.L4
	.loc 1 12 0 is_stmt 0
	cmp	r10b, r8b
	je	.L18
	.loc 1 12 0 discriminator 1
	mov	rdx, rsi
	jmp	.L5
.LVL2:
	.p2align 4,,10
	.p2align 3
.L20:
	.loc 1 12 0 discriminator 2
	cmp	r8b, cl
	je	.L19
.L5:
	.loc 1 12 0 discriminator 1
	add	rdx, 1
.LVL3:
	movzx	ecx, BYTE PTR [rdx]
	test	cl, cl
	jne	.L20
.LVL4:
.L4:
	add	r9, 1
	.loc 1 10 0 is_stmt 1
	movzx	r8d, BYTE PTR [rdi+r9]
	test	r8b, r8b
	jne	.L3
	.loc 1 30 0
	mov	eax, -1
.L2:
	.loc 1 32 0
	rep
	ret
.LVL5:
	.p2align 4,,10
	.p2align 3
.L19:
	rep
	ret
.LVL6:
.L18:
	rep
	ret
	.cfi_endproc
.LFE24:
	.size	strindex, .-strindex
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"strindex(%s,%s) = %d\n"
.LC2:
	.string	"s1:%s, s2:%s,s3:%s,s4:%s\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"vadkgjdglhfdagihoighaoighadsoifhoighoighoidsaghoidsaghoidsaghoidsahgoidsahgoidsahgoidsahgihgoidsahgoidsahgoidsahgoisahgoireaaoivdanibvnignhaoidjgiadgoidsavinvidnhiaohgaoievdnvoidanvionroihieojfoiddsanjv"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB25:
	.loc 1 34 0
	.cfi_startproc
	push	r14
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	.loc 1 39 0
	mov	esi, OFFSET FLAT:.LC0
	mov	ecx, 25
	.loc 1 38 0
	movabs	rdx, 8536140394893047414
	.loc 1 34 0
	push	r13
.LCFI1:
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	push	r12
.LCFI2:
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp
.LCFI3:
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	push	rbx
.LCFI4:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	sub	rsp, 304
.LCFI5:
	.cfi_def_cfa_offset 352
	.loc 1 39 0
	lea	rbp, [rsp+80]
	.loc 1 35 0
	mov	DWORD PTR [rsp+32], 1684234849
	mov	BYTE PTR [rsp+36], 0
	.loc 1 34 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rsp+296], rax
	xor	eax, eax
	.loc 1 39 0
	mov	rdi, rbp
	.loc 1 36 0
	mov	WORD PTR [rsp], 25442
	mov	BYTE PTR [rsp+2], 0
	.loc 1 39 0
	rep movsq
	.loc 1 37 0
	mov	WORD PTR [rsp+16], 25958
	mov	BYTE PTR [rsp+18], 0
	.loc 1 38 0
	mov	QWORD PTR [rsp+48], rdx
	mov	QWORD PTR [rsp+56], rdx
.LBB20:
.LBB21:
	.loc 1 10 0
	movzx	ecx, BYTE PTR [rsp+32]
.LBE21:
.LBE20:
	.loc 1 38 0
	mov	QWORD PTR [rsp+64], rdx
	mov	DWORD PTR [rsp+72], 1650554486
	mov	WORD PTR [rsp+76], 24929
	mov	BYTE PTR [rsp+78], 0
	.loc 1 39 0
	movzx	eax, WORD PTR [rsi]
.LBB25:
.LBB22:
	.loc 1 10 0
	test	cl, cl
.LBE22:
.LBE25:
	.loc 1 39 0
	mov	WORD PTR [rdi], ax
	movzx	eax, BYTE PTR .LC0[rip+202]
	mov	BYTE PTR [rdi+2], al
.LVL7:
.LBB26:
.LBB23:
	.loc 1 10 0
	je	.L39
	movzx	edi, BYTE PTR [rsp]
	lea	rbx, [rsp+32]
.LVL8:
	xor	esi, esi
.LVL9:
	.p2align 4,,10
	.p2align 3
.L23:
	.loc 1 12 0
	test	dil, dil
	mov	r8d, esi
	je	.L24
	cmp	dil, cl
	je	.L22
	.loc 1 41 0
	mov	rax, rsp
	jmp	.L25
.LVL10:
	.p2align 4,,10
	.p2align 3
.L81:
	.loc 1 12 0
	cmp	dl, cl
	je	.L22
.L25:
	add	rax, 1
.LVL11:
	movzx	edx, BYTE PTR [rax]
	test	dl, dl
	jne	.L81
.LVL12:
.L24:
	add	rsi, 1
	.loc 1 10 0
	movzx	ecx, BYTE PTR [rbx+rsi]
	test	cl, cl
	jne	.L23
	.loc 1 30 0
	or	r8d, -1
.LVL13:
	.p2align 4,,10
	.p2align 3
.L22:
.LBE23:
.LBE26:
.LBB27:
.LBB28:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 104 0
	mov	rcx, rsp
	xor	eax, eax
	mov	rdx, rbx
	mov	esi, OFFSET FLAT:.LC1
	mov	edi, 1
	call	__printf_chk
.LVL14:
.LBE28:
.LBE27:
.LBB29:
.LBB30:
	.loc 1 10 0
	movzx	ecx, BYTE PTR [rsp+32]
	test	cl, cl
	je	.L42
	movzx	edi, BYTE PTR [rsp+16]
	lea	r13, [rsp+16]
.LVL15:
	xor	esi, esi
.LVL16:
	.p2align 4,,10
	.p2align 3
.L27:
	.loc 1 12 0
	test	dil, dil
	mov	r8d, esi
	je	.L28
	cmp	dil, cl
	je	.L26
	.loc 1 42 0
	mov	rax, r13
	jmp	.L29
.LVL17:
	.p2align 4,,10
	.p2align 3
.L82:
	.loc 1 12 0
	cmp	dl, cl
	je	.L26
.L29:
	add	rax, 1
.LVL18:
	movzx	edx, BYTE PTR [rax]
	test	dl, dl
	jne	.L82
.LVL19:
.L28:
	add	rsi, 1
	.loc 1 10 0
	movzx	ecx, BYTE PTR [rbx+rsi]
	test	cl, cl
	jne	.L27
	.loc 1 30 0
	or	r8d, -1
.LVL20:
	.p2align 4,,10
	.p2align 3
.L26:
.LBE30:
.LBE29:
.LBB32:
.LBB33:
	.loc 2 104 0
	mov	rcx, r13
	xor	eax, eax
	mov	rdx, rbx
	mov	esi, OFFSET FLAT:.LC1
	mov	edi, 1
	call	__printf_chk
.LVL21:
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 1 10 0
	movzx	ecx, BYTE PTR [rsp+32]
	test	cl, cl
	je	.L45
	movzx	edi, BYTE PTR [rsp+48]
	lea	r14, [rsp+48]
.LVL22:
	xor	esi, esi
.LVL23:
	.p2align 4,,10
	.p2align 3
.L31:
	.loc 1 12 0
	test	dil, dil
	mov	r8d, esi
	je	.L32
	cmp	dil, cl
	je	.L30
	.loc 1 43 0
	mov	rax, r14
	jmp	.L33
.LVL24:
	.p2align 4,,10
	.p2align 3
.L83:
	.loc 1 12 0
	cmp	dl, cl
	je	.L30
.L33:
	add	rax, 1
.LVL25:
	movzx	edx, BYTE PTR [rax]
	test	dl, dl
	jne	.L83
.LVL26:
.L32:
	add	rsi, 1
	.loc 1 10 0
	movzx	ecx, BYTE PTR [rbx+rsi]
	test	cl, cl
	jne	.L31
	.loc 1 30 0
	or	r8d, -1
.LVL27:
	.p2align 4,,10
	.p2align 3
.L30:
.LBE35:
.LBE34:
.LBB37:
.LBB38:
	.loc 2 104 0
	mov	rdx, rbx
	xor	eax, eax
	mov	rcx, r14
	mov	esi, OFFSET FLAT:.LC1
	mov	edi, 1
	call	__printf_chk
.LVL28:
.LBE38:
.LBE37:
.LBB39:
.LBB40:
	.loc 1 10 0
	movzx	edx, BYTE PTR [rsp+32]
	.loc 1 30 0
	mov	r8d, -1
	.loc 1 10 0
	test	dl, dl
	je	.L34
	movzx	edi, BYTE PTR [rsp+80]
	xor	ecx, ecx
.LVL29:
	.p2align 4,,10
	.p2align 3
.L35:
	.loc 1 12 0
	test	dil, dil
	mov	r8d, ecx
	je	.L36
	cmp	dil, dl
	je	.L34
	.loc 1 44 0
	mov	rax, rbp
	jmp	.L37
.LVL30:
	.p2align 4,,10
	.p2align 3
.L84:
	.loc 1 12 0
	cmp	sil, dl
	je	.L34
.L37:
	add	rax, 1
.LVL31:
	movzx	esi, BYTE PTR [rax]
	test	sil, sil
	jne	.L84
.LVL32:
.L36:
	add	rcx, 1
	.loc 1 10 0
	movzx	edx, BYTE PTR [rbx+rcx]
	test	dl, dl
	jne	.L35
	.loc 1 30 0
	or	r8d, -1
.LVL33:
	.p2align 4,,10
	.p2align 3
.L34:
.LBE40:
.LBE39:
.LBB41:
.LBB42:
	.loc 2 104 0
	mov	rcx, rbp
	mov	rdx, rbx
	mov	esi, OFFSET FLAT:.LC1
	mov	edi, 1
	xor	eax, eax
	call	__printf_chk
.LVL34:
.LBE42:
.LBE41:
.LBB43:
.LBB44:
	mov	rdx, rbx
	xor	eax, eax
	mov	r9, r14
	mov	r8, r13
	mov	rcx, rsp
	mov	esi, OFFSET FLAT:.LC2
	mov	edi, 1
	call	__printf_chk
.LVL35:
.LBE44:
.LBE43:
	.loc 1 50 0
	xor	eax, eax
	mov	rdx, QWORD PTR [rsp+296]
	xor	rdx, QWORD PTR fs:40
	jne	.L85
	add	rsp, 304
.LCFI6:
	.cfi_remember_state
	.cfi_def_cfa_offset 48
.LVL36:
	pop	rbx
.LCFI7:
	.cfi_def_cfa_offset 40
.LVL37:
	pop	rbp
.LCFI8:
	.cfi_def_cfa_offset 32
	pop	r12
.LCFI9:
	.cfi_def_cfa_offset 24
	pop	r13
.LCFI10:
	.cfi_def_cfa_offset 16
	pop	r14
.LCFI11:
	.cfi_def_cfa_offset 8
	ret
.LVL38:
.L39:
.LCFI12:
	.cfi_restore_state
.LBB45:
.LBB24:
	.loc 1 30 0
	or	r8d, -1
	lea	rbx, [rsp+32]
.LVL39:
	jmp	.L22
.LVL40:
.L42:
.LBE24:
.LBE45:
.LBB46:
.LBB31:
	or	r8d, -1
	lea	r13, [rsp+16]
.LVL41:
	jmp	.L26
.LVL42:
.L45:
.LBE31:
.LBE46:
.LBB47:
.LBB36:
	or	r8d, -1
	lea	r14, [rsp+48]
.LVL43:
	jmp	.L30
.LVL44:
.L85:
.LBE36:
.LBE47:
	.loc 1 50 0
	call	__stack_chk_fail
.LVL45:
	.cfi_endproc
.LFE25:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x75f
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF51
	.byte	0x1
	.long	.LASF52
	.long	.LASF53
	.long	.Ldebug_ranges0+0x160
	.quad	0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd5
	.long	0x3c
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x8c
	.long	0x6d
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x8d
	.long	0x6d
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x99
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x5
	.byte	0xf6
	.long	0x267
	.uleb128 0x8
	.long	.LASF12
	.byte	0x5
	.byte	0xf7
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xfc
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfd
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfe
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xff
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.value	0x100
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.value	0x101
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x102
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x103
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x105
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x106
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x107
	.long	0x93
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x109
	.long	0x2a5
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x10b
	.long	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10d
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x111
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x113
	.long	0x74
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x117
	.long	0x4a
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x118
	.long	0x58
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x119
	.long	0x2b1
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x11d
	.long	0x2c1
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x126
	.long	0x7f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x12f
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x130
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x131
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x132
	.long	0x91
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x133
	.long	0x31
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x135
	.long	0x66
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x137
	.long	0x2c7
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xa1
	.long	0x2a5
	.uleb128 0x8
	.long	.LASF43
	.byte	0x5
	.byte	0xa2
	.long	0x2a5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa3
	.long	0x2ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa7
	.long	0x66
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x26e
	.uleb128 0x6
	.byte	0x8
	.long	0xa0
	.uleb128 0xb
	.long	0x99
	.long	0x2c1
	.uleb128 0xc
	.long	0x8a
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x267
	.uleb128 0xb
	.long	0x99
	.long	0x2d7
	.uleb128 0xc
	.long	0x8a
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2dd
	.uleb128 0xd
	.long	0x99
	.uleb128 0xe
	.byte	0x1
	.long	.LASF49
	.byte	0x1
	.byte	0x4
	.byte	0x1
	.long	0x66
	.byte	0x1
	.long	0x324
	.uleb128 0xf
	.string	"s"
	.byte	0x1
	.byte	0x4
	.long	0x93
	.uleb128 0xf
	.string	"t"
	.byte	0x1
	.byte	0x4
	.long	0x93
	.uleb128 0x10
	.string	"i"
	.byte	0x1
	.byte	0x6
	.long	0x66
	.uleb128 0x10
	.string	"pt"
	.byte	0x1
	.byte	0x7
	.long	0x93
	.uleb128 0x10
	.string	"ps"
	.byte	0x1
	.byte	0x7
	.long	0x93
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF55
	.byte	0x2
	.byte	0x66
	.byte	0x1
	.long	0x66
	.byte	0x3
	.byte	0x1
	.long	0x344
	.uleb128 0x12
	.long	.LASF46
	.byte	0x2
	.byte	0x66
	.long	0x2d7
	.uleb128 0x13
	.byte	0
	.uleb128 0x14
	.long	0x2e2
	.quad	.LFB24
	.quad	.LFE24
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x38b
	.uleb128 0x15
	.long	0x2f4
	.long	.LLST0
	.uleb128 0x15
	.long	0x2fd
	.long	.LLST1
	.uleb128 0x16
	.long	0x306
	.long	.LLST2
	.uleb128 0x17
	.long	0x30f
	.byte	0x1
	.byte	0x54
	.uleb128 0x17
	.long	0x319
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0x21
	.long	0x66
	.quad	.LFB25
	.quad	.LFE25
	.long	.LLST3
	.byte	0x1
	.long	0x6e1
	.uleb128 0x19
	.string	"s1"
	.byte	0x1
	.byte	0x23
	.long	0x6e1
	.byte	0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x19
	.string	"s2"
	.byte	0x1
	.byte	0x24
	.long	0x6f1
	.byte	0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x19
	.string	"s3"
	.byte	0x1
	.byte	0x25
	.long	0x6f1
	.byte	0x3
	.byte	0x91
	.sleb128 -336
	.uleb128 0x19
	.string	"s4"
	.byte	0x1
	.byte	0x26
	.long	0x701
	.byte	0x3
	.byte	0x91
	.sleb128 -304
	.uleb128 0x19
	.string	"s5"
	.byte	0x1
	.byte	0x27
	.long	0x711
	.byte	0x3
	.byte	0x91
	.sleb128 -272
	.uleb128 0x1a
	.long	0x2e2
	.quad	.LBB20
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x29
	.long	0x441
	.uleb128 0x15
	.long	0x2fd
	.long	.LLST4
	.uleb128 0x15
	.long	0x2f4
	.long	.LLST5
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x16
	.long	0x306
	.long	.LLST6
	.uleb128 0x16
	.long	0x30f
	.long	.LLST7
	.uleb128 0x16
	.long	0x319
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x324
	.quad	.LBB27
	.quad	.LBE27
	.byte	0x1
	.byte	0x29
	.long	0x492
	.uleb128 0x15
	.long	0x337
	.long	.LLST9
	.uleb128 0x1d
	.quad	.LVL14
	.long	0x73b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2e2
	.quad	.LBB29
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x2a
	.long	0x4dd
	.uleb128 0x15
	.long	0x2fd
	.long	.LLST10
	.uleb128 0x15
	.long	0x2f4
	.long	.LLST11
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0xd0
	.uleb128 0x16
	.long	0x306
	.long	.LLST12
	.uleb128 0x16
	.long	0x30f
	.long	.LLST7
	.uleb128 0x16
	.long	0x319
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x324
	.quad	.LBB32
	.quad	.LBE32
	.byte	0x1
	.byte	0x2a
	.long	0x52e
	.uleb128 0x15
	.long	0x337
	.long	.LLST13
	.uleb128 0x1d
	.quad	.LVL21
	.long	0x73b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x2e2
	.quad	.LBB34
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x2b
	.long	0x579
	.uleb128 0x15
	.long	0x2fd
	.long	.LLST14
	.uleb128 0x15
	.long	0x2f4
	.long	.LLST15
	.uleb128 0x1b
	.long	.Ldebug_ranges0+0x130
	.uleb128 0x16
	.long	0x306
	.long	.LLST16
	.uleb128 0x16
	.long	0x30f
	.long	.LLST7
	.uleb128 0x16
	.long	0x319
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x324
	.quad	.LBB37
	.quad	.LBE37
	.byte	0x1
	.byte	0x2b
	.long	0x5ca
	.uleb128 0x15
	.long	0x337
	.long	.LLST17
	.uleb128 0x1d
	.quad	.LVL28
	.long	0x73b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x2e2
	.quad	.LBB39
	.quad	.LBE39
	.byte	0x1
	.byte	0x2c
	.long	0x625
	.uleb128 0x15
	.long	0x2fd
	.long	.LLST18
	.uleb128 0x15
	.long	0x2f4
	.long	.LLST19
	.uleb128 0x1f
	.quad	.LBB40
	.quad	.LBE40
	.uleb128 0x16
	.long	0x306
	.long	.LLST20
	.uleb128 0x16
	.long	0x30f
	.long	.LLST7
	.uleb128 0x16
	.long	0x319
	.long	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x324
	.quad	.LBB41
	.quad	.LBE41
	.byte	0x1
	.byte	0x2c
	.long	0x676
	.uleb128 0x15
	.long	0x337
	.long	.LLST21
	.uleb128 0x1d
	.quad	.LVL34
	.long	0x73b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x324
	.quad	.LBB43
	.quad	.LBE43
	.byte	0x1
	.byte	0x2d
	.long	0x6d3
	.uleb128 0x15
	.long	0x337
	.long	.LLST22
	.uleb128 0x1d
	.quad	.LVL35
	.long	0x73b
	.uleb128 0x1e
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1e
	.byte	0x1
	.byte	0x51
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x58
	.byte	0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x59
	.byte	0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.quad	.LVL45
	.long	0x759
	.byte	0
	.uleb128 0xb
	.long	0x99
	.long	0x6f1
	.uleb128 0xc
	.long	0x8a
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	0x99
	.long	0x701
	.uleb128 0xc
	.long	0x8a
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	0x99
	.long	0x711
	.uleb128 0xc
	.long	0x8a
	.byte	0x1e
	.byte	0
	.uleb128 0xb
	.long	0x99
	.long	0x721
	.uleb128 0xc
	.long	0x8a
	.byte	0xca
	.byte	0
	.uleb128 0x21
	.long	.LASF47
	.byte	0x6
	.byte	0xa8
	.long	0x2ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.long	.LASF48
	.byte	0x6
	.byte	0xa9
	.long	0x2ab
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.byte	0x1
	.long	.LASF50
	.byte	0x2
	.byte	0x57
	.byte	0x1
	.long	0x66
	.byte	0x1
	.long	0x759
	.uleb128 0x23
	.long	0x66
	.uleb128 0x23
	.long	0x2d7
	.uleb128 0x13
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x34
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x54
	.quad	.LVL2
	.quad	.LVL4
	.value	0x1
	.byte	0x51
	.quad	.LVL4
	.quad	.LVL5
	.value	0x1
	.byte	0x54
	.quad	.LVL5
	.quad	.LVL6
	.value	0x1
	.byte	0x51
	.quad	.LVL6
	.quad	.LFE24
	.value	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0
	.quad	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LFB25
	.quad	.LCFI0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0
	.quad	.LCFI1
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1
	.quad	.LCFI2
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI2
	.quad	.LCFI3
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI3
	.quad	.LCFI4
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI4
	.quad	.LCFI5
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI5
	.quad	.LCFI6
	.value	0x3
	.byte	0x77
	.sleb128 352
	.quad	.LCFI6
	.quad	.LCFI7
	.value	0x2
	.byte	0x77
	.sleb128 48
	.quad	.LCFI7
	.quad	.LCFI8
	.value	0x2
	.byte	0x77
	.sleb128 40
	.quad	.LCFI8
	.quad	.LCFI9
	.value	0x2
	.byte	0x77
	.sleb128 32
	.quad	.LCFI9
	.quad	.LCFI10
	.value	0x2
	.byte	0x77
	.sleb128 24
	.quad	.LCFI10
	.quad	.LCFI11
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI11
	.quad	.LCFI12
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI12
	.quad	.LFE25
	.value	0x3
	.byte	0x77
	.sleb128 352
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7
	.quad	.LVL10
	.value	0x1
	.byte	0x57
	.quad	.LVL10
	.quad	.LVL12
	.value	0x1
	.byte	0x50
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x57
	.quad	.LVL38
	.quad	.LVL40
	.value	0x1
	.byte	0x57
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL7
	.quad	.LVL8
	.value	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL9
	.value	0x1
	.byte	0x53
	.quad	.LVL38
	.quad	.LVL39
	.value	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.quad	.LVL39
	.quad	.LVL40
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL7
	.quad	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL38
	.quad	.LVL40
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL7
	.quad	.LVL36
	.value	0x1
	.byte	0x57
	.quad	.LVL36
	.quad	.LVL38
	.value	0x4
	.byte	0x91
	.sleb128 -352
	.byte	0x9f
	.quad	.LVL38
	.quad	.LFE25
	.value	0x1
	.byte	0x57
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL7
	.quad	.LVL8
	.value	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.quad	.LVL8
	.quad	.LVL37
	.value	0x1
	.byte	0x53
	.quad	.LVL37
	.quad	.LVL39
	.value	0x4
	.byte	0x91
	.sleb128 -320
	.byte	0x9f
	.quad	.LVL39
	.quad	.LFE25
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL13
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	.LVL40
	.quad	.LFE25
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL14
	.quad	.LVL15
	.value	0x4
	.byte	0x91
	.sleb128 -336
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL17
	.value	0x1
	.byte	0x5d
	.quad	.LVL17
	.quad	.LVL19
	.value	0x1
	.byte	0x50
	.quad	.LVL19
	.quad	.LVL20
	.value	0x1
	.byte	0x5d
	.quad	.LVL40
	.quad	.LVL41
	.value	0x4
	.byte	0x91
	.sleb128 -336
	.byte	0x9f
	.quad	.LVL41
	.quad	.LVL42
	.value	0x1
	.byte	0x5d
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x1
	.byte	0x53
	.quad	.LVL40
	.quad	.LVL42
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL40
	.quad	.LVL42
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL20
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	.LVL42
	.quad	.LFE25
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL21
	.quad	.LVL22
	.value	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x5e
	.quad	.LVL24
	.quad	.LVL26
	.value	0x1
	.byte	0x50
	.quad	.LVL26
	.quad	.LVL27
	.value	0x1
	.byte	0x5e
	.quad	.LVL42
	.quad	.LVL43
	.value	0x4
	.byte	0x91
	.sleb128 -304
	.byte	0x9f
	.quad	.LVL43
	.quad	.LVL44
	.value	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL21
	.quad	.LVL23
	.value	0x1
	.byte	0x53
	.quad	.LVL42
	.quad	.LVL44
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL21
	.quad	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL42
	.quad	.LVL44
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL27
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	.LVL44
	.quad	.LFE25
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL28
	.quad	.LVL30
	.value	0x1
	.byte	0x56
	.quad	.LVL30
	.quad	.LVL32
	.value	0x1
	.byte	0x50
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL28
	.quad	.LVL29
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL28
	.quad	.LVL29
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL33
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	.LVL44
	.quad	.LFE25
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL34
	.quad	.LVL38
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	.LVL44
	.quad	.LFE25
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB20
	.quad	.LBE20
	.quad	.LBB25
	.quad	.LBE25
	.quad	.LBB26
	.quad	.LBE26
	.quad	.LBB45
	.quad	.LBE45
	.quad	0
	.quad	0
	.quad	.LBB21
	.quad	.LBE21
	.quad	.LBB22
	.quad	.LBE22
	.quad	.LBB23
	.quad	.LBE23
	.quad	.LBB24
	.quad	.LBE24
	.quad	0
	.quad	0
	.quad	.LBB29
	.quad	.LBE29
	.quad	.LBB46
	.quad	.LBE46
	.quad	0
	.quad	0
	.quad	.LBB30
	.quad	.LBE30
	.quad	.LBB31
	.quad	.LBE31
	.quad	0
	.quad	0
	.quad	.LBB34
	.quad	.LBE34
	.quad	.LBB47
	.quad	.LBE47
	.quad	0
	.quad	0
	.quad	.LBB35
	.quad	.LBE35
	.quad	.LBB36
	.quad	.LBE36
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB25
	.quad	.LFE25
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_old_offset"
.LASF50:
	.string	"__printf_chk"
.LASF23:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF19:
	.string	"_IO_buf_base"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF32:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF55:
	.string	"printf"
.LASF29:
	.string	"_cur_column"
.LASF53:
	.string	"/home/ahmed/Dropbox/Code/C"
.LASF45:
	.string	"_pos"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF4:
	.string	"signed char"
.LASF49:
	.string	"strindex"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF51:
	.string	"GNU C 4.7.3"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF52:
	.string	"strindex_smarter.c"
.LASF56:
	.string	"main"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF37:
	.string	"__pad4"
.LASF38:
	.string	"__pad5"
.LASF46:
	.string	"__fmt"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF47:
	.string	"stdin"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF30:
	.string	"_vtable_offset"
.LASF21:
	.string	"_IO_save_base"
.LASF26:
	.string	"_fileno"
.LASF57:
	.string	"__stack_chk_fail"
.LASF48:
	.string	"stdout"
.LASF54:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-2ubuntu4) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
