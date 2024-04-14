	.file	"89.c"
	.text
	.align	2
	.globl	testParam32
	.type	testParam32, @function
testParam32:
.LFB0 = .
	.cfi_startproc
	addi.d	$sp,$sp,-64
	.cfi_def_cfa_offset 64
	st.d	$fp,$sp,56
	.cfi_offset 22, -8
	addi.d	$fp,$sp,64
	.cfi_def_cfa 22, 0
	or	$r19,$r4,$r0
	or	$r18,$r5,$r0
	or	$r17,$r6,$r0
	or	$r16,$r7,$r0
	or	$r15,$r8,$r0
	or	$r14,$r9,$r0
	or	$r13,$r10,$r0
	or	$r12,$r11,$r0
	slli.w	$r19,$r19,0
	st.w	$r19,$fp,-36
	slli.w	$r18,$r18,0
	st.w	$r18,$fp,-40
	slli.w	$r17,$r17,0
	st.w	$r17,$fp,-44
	slli.w	$r16,$r16,0
	st.w	$r16,$fp,-48
	slli.w	$r15,$r15,0
	st.w	$r15,$fp,-52
	slli.w	$r14,$r14,0
	st.w	$r14,$fp,-56
	slli.w	$r13,$r13,0
	st.w	$r13,$fp,-60
	slli.w	$r12,$r12,0
	st.w	$r12,$fp,-64
	ld.w	$r13,$fp,-36
	ld.w	$r12,$fp,-40
	add.w	$r12,$r13,$r12
	ld.w	$r13,$fp,-60
	add.w	$r12,$r13,$r12
	ld.w	$r13,$fp,136
	add.w	$r12,$r13,$r12
	ld.w	$r13,$fp,184
	add.w	$r12,$r13,$r12
	st.w	$r12,$fp,-20
	ldptr.w	$r12,$fp,-20
	or	$r4,$r12,$r0
	ld.d	$fp,$sp,56
	.cfi_restore 22
	addi.d	$sp,$sp,64
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE0:
	.size	testParam32, .-testParam32
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB1 = .
	.cfi_startproc
	addi.d	$sp,$sp,-224
	.cfi_def_cfa_offset 224
	st.d	$r1,$sp,216
	st.d	$fp,$sp,208
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$fp,$sp,224
	.cfi_def_cfa 22, 0
	addi.w	$r12,$r0,31			# 0x1f
	st.d	$r12,$sp,184
	addi.w	$r12,$r0,30			# 0x1e
	st.d	$r12,$sp,176
	addi.w	$r12,$r0,29			# 0x1d
	st.d	$r12,$sp,168
	addi.w	$r12,$r0,28			# 0x1c
	st.d	$r12,$sp,160
	addi.w	$r12,$r0,27			# 0x1b
	st.d	$r12,$sp,152
	addi.w	$r12,$r0,26			# 0x1a
	st.d	$r12,$sp,144
	addi.w	$r12,$r0,25			# 0x19
	st.d	$r12,$sp,136
	addi.w	$r12,$r0,24			# 0x18
	st.d	$r12,$sp,128
	addi.w	$r12,$r0,23			# 0x17
	st.d	$r12,$sp,120
	addi.w	$r12,$r0,22			# 0x16
	st.d	$r12,$sp,112
	addi.w	$r12,$r0,21			# 0x15
	st.d	$r12,$sp,104
	addi.w	$r12,$r0,20			# 0x14
	st.d	$r12,$sp,96
	addi.w	$r12,$r0,19			# 0x13
	st.d	$r12,$sp,88
	addi.w	$r12,$r0,18			# 0x12
	st.d	$r12,$sp,80
	addi.w	$r12,$r0,17			# 0x11
	st.d	$r12,$sp,72
	addi.w	$r12,$r0,16			# 0x10
	st.d	$r12,$sp,64
	addi.w	$r12,$r0,15			# 0xf
	st.d	$r12,$sp,56
	addi.w	$r12,$r0,14			# 0xe
	st.d	$r12,$sp,48
	addi.w	$r12,$r0,13			# 0xd
	st.d	$r12,$sp,40
	addi.w	$r12,$r0,12			# 0xc
	st.d	$r12,$sp,32
	addi.w	$r12,$r0,11			# 0xb
	st.d	$r12,$sp,24
	addi.w	$r12,$r0,10			# 0xa
	st.d	$r12,$sp,16
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$sp,8
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$sp,0
	addi.w	$r11,$r0,7			# 0x7
	addi.w	$r10,$r0,6			# 0x6
	addi.w	$r9,$r0,5			# 0x5
	addi.w	$r8,$r0,4			# 0x4
	addi.w	$r7,$r0,3			# 0x3
	addi.w	$r6,$r0,2			# 0x2
	addi.w	$r5,$r0,1			# 0x1
	addi.w	$r4,$r0,32			# 0x20
	bl	testParam32
	or	$r12,$r4,$r0
	st.w	$r12,$fp,-20
	addi.w	$r12,$r0,31			# 0x1f
	st.d	$r12,$sp,184
	addi.w	$r12,$r0,30			# 0x1e
	st.d	$r12,$sp,176
	addi.w	$r12,$r0,29			# 0x1d
	st.d	$r12,$sp,168
	addi.w	$r12,$r0,28			# 0x1c
	st.d	$r12,$sp,160
	addi.w	$r12,$r0,27			# 0x1b
	st.d	$r12,$sp,152
	addi.w	$r12,$r0,26			# 0x1a
	st.d	$r12,$sp,144
	addi.w	$r12,$r0,25			# 0x19
	st.d	$r12,$sp,136
	addi.w	$r12,$r0,24			# 0x18
	st.d	$r12,$sp,128
	addi.w	$r12,$r0,23			# 0x17
	st.d	$r12,$sp,120
	addi.w	$r12,$r0,22			# 0x16
	st.d	$r12,$sp,112
	addi.w	$r12,$r0,21			# 0x15
	st.d	$r12,$sp,104
	addi.w	$r12,$r0,20			# 0x14
	st.d	$r12,$sp,96
	addi.w	$r12,$r0,19			# 0x13
	st.d	$r12,$sp,88
	addi.w	$r12,$r0,18			# 0x12
	st.d	$r12,$sp,80
	addi.w	$r12,$r0,17			# 0x11
	st.d	$r12,$sp,72
	addi.w	$r12,$r0,16			# 0x10
	st.d	$r12,$sp,64
	addi.w	$r12,$r0,15			# 0xf
	st.d	$r12,$sp,56
	addi.w	$r12,$r0,14			# 0xe
	st.d	$r12,$sp,48
	addi.w	$r12,$r0,13			# 0xd
	st.d	$r12,$sp,40
	addi.w	$r12,$r0,12			# 0xc
	st.d	$r12,$sp,32
	addi.w	$r12,$r0,11			# 0xb
	st.d	$r12,$sp,24
	addi.w	$r12,$r0,10			# 0xa
	st.d	$r12,$sp,16
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$sp,8
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$sp,0
	addi.w	$r11,$r0,7			# 0x7
	addi.w	$r10,$r0,6			# 0x6
	addi.w	$r9,$r0,5			# 0x5
	addi.w	$r8,$r0,4			# 0x4
	addi.w	$r7,$r0,3			# 0x3
	addi.w	$r6,$r0,2			# 0x2
	addi.w	$r5,$r0,1			# 0x1
	addi.w	$r4,$r0,31			# 0x1f
	bl	testParam32
	or	$r12,$r4,$r0
	st.w	$r12,$fp,-24
	or	$r12,$r0,$r0
	or	$r4,$r12,$r0
	ld.d	$r1,$sp,216
	.cfi_restore 1
	ld.d	$fp,$sp,208
	.cfi_restore 22
	addi.d	$sp,$sp,224
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.0.1 20220210 (experimental)"
	.section	.note.GNU-stack,"",@progbits
