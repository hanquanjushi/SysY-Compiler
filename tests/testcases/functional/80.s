	.file	"80.c"
	.text
	.globl	__HELLO
	.data
	.align	3
	.type	__HELLO, @object
	.size	__HELLO, 400
__HELLO:
	.word	87
	.word	101
	.word	108
	.word	99
	.word	111
	.word	109
	.word	101
	.word	32
	.word	116
	.word	111
	.word	32
	.word	116
	.word	104
	.word	101
	.word	32
	.word	74
	.word	97
	.word	112
	.word	97
	.word	114
	.word	105
	.word	32
	.word	80
	.word	97
	.word	114
	.word	107
	.word	33
	.word	10
	.space	288
	.globl	N4__mE___
	.align	3
	.type	N4__mE___, @object
	.size	N4__mE___, 1200
N4__mE___:
	.word	83
	.word	97
	.word	97
	.word	98
	.word	97
	.word	114
	.word	117
	.space	172
	.word	75
	.word	97
	.word	98
	.word	97
	.word	110
	.space	180
	.word	72
	.word	97
	.word	115
	.word	104
	.word	105
	.word	98
	.word	105
	.word	114
	.word	111
	.word	107
	.word	111
	.word	117
	.space	152
	.word	65
	.word	114
	.word	97
	.word	105
	.word	103
	.word	117
	.word	109
	.word	97
	.space	168
	.word	72
	.word	117
	.word	110
	.word	98
	.word	111
	.word	114
	.word	117
	.word	116
	.word	111
	.word	32
	.word	80
	.word	101
	.word	110
	.word	103
	.word	105
	.word	110
	.space	136
	.word	84
	.word	97
	.word	105
	.word	114
	.word	105
	.word	107
	.word	117
	.word	32
	.word	79
	.word	111
	.word	107
	.word	97
	.word	109
	.word	105
	.space	144
	.globl	saY_HeI10_To
	.align	3
	.type	saY_HeI10_To, @object
	.size	saY_HeI10_To, 160
saY_HeI10_To:
	.word	32
	.word	115
	.word	97
	.word	121
	.word	115
	.word	32
	.word	104
	.word	101
	.word	108
	.word	108
	.word	111
	.word	32
	.word	116
	.word	111
	.word	32
	.space	100
	.globl	RET
	.align	3
	.type	RET, @object
	.size	RET, 20
RET:
	.word	10
	.space	16
	.text
	.align	2
	.globl	putstr
	.type	putstr, @function
putstr:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.w	$r0,$r22,-20
	b	.L2
.L3:
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L2:
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	ldptr.w	$r12,$r12,0
	bnez	$r12,.L3
	ldptr.w	$r12,$r22,-20
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE0:
	.size	putstr, .-putstr
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB1 = .
	.cfi_startproc
	addi.d	$r3,$r3,-32
	.cfi_def_cfa_offset 32
	st.d	$r1,$r3,24
	st.d	$r22,$r3,16
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,32
	.cfi_def_cfa 22, 0
	la.local	$r4,__HELLO
	bl	putstr
	st.w	$r0,$r22,-20
.L9:
	ld.w	$r14,$r22,-20
	addi.w	$r13,$r0,6			# 0x6
	div.w	$r12,$r14,$r13
	bne	$r13,$r0,1f
	break	7
1:
	st.w	$r12,$r22,-24
	ld.w	$r14,$r22,-20
	addi.w	$r13,$r0,6			# 0x6
	mod.w	$r12,$r14,$r13
	bne	$r13,$r0,1f
	break	7
1:
	st.w	$r12,$r22,-28
	ld.w	$r13,$r22,-24
	ld.w	$r12,$r22,-28
	beq	$r13,$r12,.L6
	ldptr.w	$r13,$r22,-24
	addi.w	$r12,$r0,200			# 0xc8
	mul.d	$r13,$r13,$r12
	la.local	$r12,N4__mE___
	add.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	bl	putstr
	la.local	$r4,saY_HeI10_To
	bl	putstr
	ldptr.w	$r13,$r22,-28
	addi.w	$r12,$r0,200			# 0xc8
	mul.d	$r13,$r13,$r12
	la.local	$r12,N4__mE___
	add.d	$r12,$r13,$r12
	or	$r4,$r12,$r0
	bl	putstr
	la.local	$r4,RET
	bl	putstr
.L6:
	ld.w	$r13,$r22,-20
	addi.w	$r12,$r0,17			# 0x11
	mul.w	$r12,$r13,$r12
	addi.w	$r12,$r12,23
	or	$r14,$r12,$r0
	addi.w	$r13,$r0,32			# 0x20
	mod.w	$r12,$r14,$r13
	bne	$r13,$r0,1f
	break	7
1:
	st.w	$r12,$r22,-20
	ld.w	$r12,$r22,-20
	beqz	$r12,.L12
	b	.L9
.L12:
	nop
	or	$r12,$r0,$r0
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,24
	.cfi_restore 1
	ld.d	$r22,$r3,16
	.cfi_restore 22
	addi.d	$r3,$r3,32
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.0.1 20220210 (experimental)"
	.section	.note.GNU-stack,"",@progbits
