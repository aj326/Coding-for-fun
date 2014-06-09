	.file	"rvrs_polish_calc.c"
	.intel_syntax noprefix
	.text
.Ltext0:
	.globl	stack
	.data
	.align 32
	.type	stack, @object
	.size	stack, 100
stack:
	.byte	48
	.zero	99
	.section	.rodata
.LC0:
	.string	"stack %p s %p \n"
	.text
	.globl	calc_tester
	.type	calc_tester, @function
calc_tester:
.LFB2:
	.file 1 "rvrs_polish_calc.c"
	.loc 1 15 0
	.cfi_startproc
	push	rbp
.LCFI0:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
.LCFI1:
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR [rbp-24], rdi
	.loc 1 16 0
	mov	QWORD PTR [rbp-8], OFFSET FLAT:stack
	.loc 1 17 0
	mov	BYTE PTR stack[rip], 99
	.loc 1 18 0
	lea	rax, [rbp-24]
	mov	rdx, rax
	mov	esi, OFFSET FLAT:stack
	mov	edi, OFFSET FLAT:.LC0
	mov	eax, 0
	call	printf
	.loc 1 19 0
	mov	eax, DWORD PTR .LC1[rip]
	.loc 1 20 0
	mov	DWORD PTR [rbp-28], eax
	movss	xmm0, DWORD PTR [rbp-28]
	leave
.LCFI2:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	calc_tester, .-calc_tester
	.section	.rodata
.LC2:
	.string	"TEST_CASES"
.LC3:
	.string	"%s = 1; result %0.1f\n"
.LC4:
	.string	"%s = 2.5; result %0.1f\n"
.LC5:
	.string	"%s = 2; result %0.1f\n"
.LC6:
	.string	"%s = 14; result %0.1f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.loc 1 23 0
	.cfi_startproc
	push	rbp
.LCFI3:
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
.LCFI4:
	.cfi_def_cfa_register 6
	sub	rsp, 160
	.loc 1 23 0
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
.LBB2:
	.loc 1 26 0
	mov	DWORD PTR [rbp-144], 891302957
	mov	WORD PTR [rbp-140], 11040
	mov	BYTE PTR [rbp-138], 0
	.loc 1 27 0
	mov	DWORD PTR [rbp-160], 540155957
	mov	WORD PTR [rbp-156], 47
	.loc 1 28 0
	movabs	rdx, 13264736685793333
	mov	QWORD PTR [rbp-128], rdx
	.loc 1 29 0
	movabs	rax, 2317981832872796213
	mov	QWORD PTR [rbp-112], rax
	movabs	rdx, 2318544787120726068
	mov	QWORD PTR [rbp-104], rdx
	mov	WORD PTR [rbp-96], 43
	.loc 1 30 0
	movabs	rax, 2317700370781052980
	mov	QWORD PTR [rbp-80], rax
	movabs	rdx, 2319952162004738091
	mov	QWORD PTR [rbp-72], rdx
	mov	DWORD PTR [rbp-64], 539697194
	mov	WORD PTR [rbp-60], 47
	.loc 1 31 0
	movabs	rax, 3035482362321318449
	mov	QWORD PTR [rbp-48], rax
	movabs	rdx, 3611936517403981344
	mov	QWORD PTR [rbp-40], rdx
	movabs	rax, 3832053325002451744
	mov	QWORD PTR [rbp-32], rax
	mov	WORD PTR [rbp-24], 32
	.loc 1 32 0
	mov	edi, OFFSET FLAT:.LC2
	call	puts
	.loc 1 33 0
	lea	rax, [rbp-144]
	mov	rdi, rax
	call	calc_tester
	unpcklps	xmm0, xmm0
	cvtps2pd	xmm0, xmm0
	lea	rax, [rbp-144]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC3
	mov	eax, 1
	call	printf
	.loc 1 34 0
	lea	rax, [rbp-160]
	mov	rdi, rax
	call	calc_tester
	unpcklps	xmm0, xmm0
	cvtps2pd	xmm0, xmm0
	lea	rax, [rbp-160]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC4
	mov	eax, 1
	call	printf
	.loc 1 35 0
	lea	rax, [rbp-128]
	mov	rdi, rax
	call	calc_tester
	unpcklps	xmm0, xmm0
	cvtps2pd	xmm0, xmm0
	lea	rax, [rbp-128]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC5
	mov	eax, 1
	call	printf
	.loc 1 36 0
	lea	rax, [rbp-112]
	mov	rdi, rax
	call	calc_tester
	unpcklps	xmm0, xmm0
	cvtps2pd	xmm0, xmm0
	lea	rax, [rbp-112]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC6
	mov	eax, 1
	call	printf
	.loc 1 37 0
	lea	rax, [rbp-80]
	mov	rdi, rax
	call	calc_tester
	unpcklps	xmm0, xmm0
	cvtps2pd	xmm0, xmm0
	lea	rax, [rbp-80]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC5
	mov	eax, 1
	call	printf
	.loc 1 38 0
	lea	rax, [rbp-48]
	mov	rdi, rax
	call	calc_tester
	unpcklps	xmm0, xmm0
	cvtps2pd	xmm0, xmm0
	lea	rax, [rbp-48]
	mov	rsi, rax
	mov	edi, OFFSET FLAT:.LC5
	mov	eax, 1
	call	printf
.LBE2:
	.loc 1 41 0
	mov	eax, 0
	.loc 1 42 0
	mov	rdx, QWORD PTR [rbp-8]
	xor	rdx, QWORD PTR fs:40
	je	.L5
	call	__stack_chk_fail
.L5:
	leave
.LCFI5:
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC1:
	.long	3212836864
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x20c
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF13
	.byte	0x1
	.long	.LASF14
	.long	.LASF15
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x4
	.byte	0x8
	.long	0x72
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.long	0x7f
	.uleb128 0x5
	.long	0x72
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	0x72
	.long	0xa2
	.uleb128 0x7
	.long	0x65
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0xe
	.byte	0x1
	.long	0xe3
	.quad	.LFB2
	.quad	.LFE2
	.long	.LLST0
	.byte	0x1
	.long	0xe3
	.uleb128 0x9
	.string	"s"
	.byte	0x1
	.byte	0xe
	.long	0x79
	.byte	0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xa
	.long	.LASF12
	.byte	0x1
	.byte	0x10
	.long	0x6c
	.byte	0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF11
	.uleb128 0xb
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x16
	.long	0x57
	.quad	.LFB3
	.quad	.LFE3
	.long	.LLST1
	.byte	0x1
	.long	0x17b
	.uleb128 0xc
	.quad	.LBB2
	.quad	.LBE2
	.uleb128 0xd
	.string	"in1"
	.byte	0x1
	.byte	0x1a
	.long	0x18b
	.byte	0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0xd
	.string	"in2"
	.byte	0x1
	.byte	0x1b
	.long	0x1a0
	.byte	0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0xd
	.string	"in3"
	.byte	0x1
	.byte	0x1c
	.long	0x1a5
	.byte	0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0xd
	.string	"in4"
	.byte	0x1
	.byte	0x1d
	.long	0x1ba
	.byte	0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0xd
	.string	"in5"
	.byte	0x1
	.byte	0x1e
	.long	0x1cf
	.byte	0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0xd
	.string	"in6"
	.byte	0x1
	.byte	0x1f
	.long	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x6
	.long	0x72
	.long	0x18b
	.uleb128 0x7
	.long	0x65
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.long	0x17b
	.uleb128 0x6
	.long	0x72
	.long	0x1a0
	.uleb128 0x7
	.long	0x65
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.long	0x190
	.uleb128 0x5
	.long	0x92
	.uleb128 0x6
	.long	0x72
	.long	0x1ba
	.uleb128 0x7
	.long	0x65
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.long	0x1aa
	.uleb128 0x6
	.long	0x72
	.long	0x1cf
	.uleb128 0x7
	.long	0x65
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	0x1bf
	.uleb128 0x6
	.long	0x72
	.long	0x1e4
	.uleb128 0x7
	.long	0x65
	.byte	0x19
	.byte	0
	.uleb128 0x5
	.long	0x1d4
	.uleb128 0x6
	.long	0x72
	.long	0x1f9
	.uleb128 0x7
	.long	0x65
	.byte	0x63
	.byte	0
	.uleb128 0xe
	.long	.LASF18
	.byte	0x1
	.byte	0xc
	.long	0x1e9
	.byte	0x1
	.byte	0x9
	.byte	0x3
	.quad	stack
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LFB2-.Ltext0
	.quad	.LCFI0-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI0-.Ltext0
	.quad	.LCFI1-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI1-.Ltext0
	.quad	.LCFI2-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI2-.Ltext0
	.quad	.LFE2-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
.LLST1:
	.quad	.LFB3-.Ltext0
	.quad	.LCFI3-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	.LCFI3-.Ltext0
	.quad	.LCFI4-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 16
	.quad	.LCFI4-.Ltext0
	.quad	.LCFI5-.Ltext0
	.value	0x2
	.byte	0x76
	.sleb128 16
	.quad	.LCFI5-.Ltext0
	.quad	.LFE3-.Ltext0
	.value	0x2
	.byte	0x77
	.sleb128 8
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF14:
	.string	"rvrs_polish_calc.c"
.LASF3:
	.string	"unsigned int"
.LASF16:
	.string	"calc_tester"
.LASF17:
	.string	"main"
.LASF18:
	.string	"stack"
.LASF13:
	.string	"GNU C 4.7.3"
.LASF0:
	.string	"long unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"stack_start"
.LASF8:
	.string	"char"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"long int"
.LASF5:
	.string	"short int"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"short unsigned int"
.LASF4:
	.string	"signed char"
.LASF11:
	.string	"float"
.LASF15:
	.string	"/home/ahmed/Dropbox/Code/C"
.LASF7:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-2ubuntu4) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
