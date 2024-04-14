	.file	"97.c"
	.text
	.globl	N
	.section	.bss,"aw",@nobits
	.align	2
	.type	N, @object
	.size	N, 4
N:
	.space	4
	.globl	M
	.align	2
	.type	M, @object
	.size	M, 4
M:
	.space	4
	.globl	L
	.align	2
	.type	L, @object
	.size	L, 4
L:
	.space	4
	.text
	.align	2
	.globl	sub
	.type	sub, @function
sub:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-96
	.cfi_def_cfa_offset 96
	st.d	$r22,$r3,88
	.cfi_offset 22, -8
	addi.d	$r22,$r3,96
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	st.d	$r5,$r22,-48
	st.d	$r6,$r22,-56
	st.d	$r7,$r22,-64
	st.d	$r8,$r22,-72
	st.d	$r9,$r22,-80
	st.d	$r10,$r22,-88
	st.d	$r11,$r22,-96
	st.w	$r0,$r22,-20
	b	.L2
.L3:
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	fld.s	$f1,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-64
	add.d	$r12,$r13,$r12
	fld.s	$f0,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-88
	add.d	$r12,$r13,$r12
	fsub.s	$f0,$f1,$f0
	fst.s	$f0,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-48
	add.d	$r12,$r13,$r12
	fld.s	$f1,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-72
	add.d	$r12,$r13,$r12
	fld.s	$f0,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-96
	add.d	$r12,$r13,$r12
	fsub.s	$f0,$f1,$f0
	fst.s	$f0,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-56
	add.d	$r12,$r13,$r12
	fld.s	$f1,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-80
	add.d	$r12,$r13,$r12
	fld.s	$f0,$r12,0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ldptr.d	$r13,$r22,0
	add.d	$r12,$r13,$r12
	fsub.s	$f0,$f1,$f0
	fst.s	$f0,$r12,0
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L2:
	ld.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,2			# 0x2
	ble	$r13,$r12,.L3
	or	$r12,$r0,$r0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,88
	.cfi_restore 22
	addi.d	$r3,$r3,96
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE0:
	.size	sub, .-sub
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB1 = .
	.cfi_startproc
	addi.d	$r3,$r3,-192
	.cfi_def_cfa_offset 192
	st.d	$r1,$r3,184
	st.d	$r22,$r3,176
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,192
	.cfi_def_cfa 22, 0
	la.local	$r12,N
	addi.w	$r13,$r0,3			# 0x3
	stptr.w	$r13,$r12,0
	la.local	$r12,M
	addi.w	$r13,$r0,3			# 0x3
	stptr.w	$r13,$r12,0
	la.local	$r12,L
	addi.w	$r13,$r0,3			# 0x3
	stptr.w	$r13,$r12,0
	st.w	$r0,$r22,-20
	b	.L6
.L7:
	ld.w	$r12,$r22,-20
	movgr2fr.w	$f0,$r12
	ffint.s.w	$f0,$f0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fst.s	$f0,$r12,-24
	ld.w	$r12,$r22,-20
	movgr2fr.w	$f0,$r12
	ffint.s.w	$f0,$f0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fst.s	$f0,$r12,-40
	ld.w	$r12,$r22,-20
	movgr2fr.w	$f0,$r12
	ffint.s.w	$f0,$f0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fst.s	$f0,$r12,-56
	ld.w	$r12,$r22,-20
	movgr2fr.w	$f0,$r12
	ffint.s.w	$f0,$f0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fst.s	$f0,$r12,-72
	ld.w	$r12,$r22,-20
	movgr2fr.w	$f0,$r12
	ffint.s.w	$f0,$f0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fst.s	$f0,$r12,-88
	ld.w	$r12,$r22,-20
	movgr2fr.w	$f0,$r12
	ffint.s.w	$f0,$f0
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fst.s	$f0,$r12,-104
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L6:
	ld.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,2			# 0x2
	ble	$r13,$r12,.L7
	addi.d	$r20,$r22,-160
	addi.d	$r19,$r22,-144
	addi.d	$r18,$r22,-120
	addi.d	$r17,$r22,-104
	addi.d	$r16,$r22,-88
	addi.d	$r15,$r22,-72
	addi.d	$r14,$r22,-56
	addi.d	$r13,$r22,-40
	addi.d	$r12,$r22,-176
	stptr.d	$r12,$r3,0
	or	$r11,$r20,$r0
	or	$r10,$r19,$r0
	or	$r9,$r18,$r0
	or	$r8,$r17,$r0
	or	$r7,$r16,$r0
	or	$r6,$r15,$r0
	or	$r5,$r14,$r0
	or	$r4,$r13,$r0
	bl	sub
	or	$r12,$r4,$r0
	st.w	$r12,$r22,-20
	b	.L8
.L9:
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fld.s	$f0,$r12,-128
	ftintrz.w.s $f0,$f0
	movfr2gr.s	$r12,$f0
	st.w	$r12,$r22,-24
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L8:
	ld.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,2			# 0x2
	ble	$r13,$r12,.L9
	addi.w	$r12,$r0,10			# 0xa
	st.w	$r12,$r22,-24
	st.w	$r0,$r22,-20
	b	.L10
.L11:
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fld.s	$f0,$r12,-144
	ftintrz.w.s $f0,$f0
	movfr2gr.s	$r12,$f0
	st.w	$r12,$r22,-24
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L10:
	ld.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,2			# 0x2
	ble	$r13,$r12,.L11
	addi.w	$r12,$r0,10			# 0xa
	st.w	$r12,$r22,-24
	st.w	$r0,$r22,-20
	b	.L12
.L13:
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	addi.d	$r12,$r12,-16
	add.d	$r12,$r12,$r22
	fld.s	$f0,$r12,-160
	ftintrz.w.s $f0,$f0
	movfr2gr.s	$r12,$f0
	st.w	$r12,$r22,-24
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L12:
	ld.w	$r12,$r22,-20
	or	$r13,$r12,$r0
	addi.w	$r12,$r0,2			# 0x2
	ble	$r13,$r12,.L13
	addi.w	$r12,$r0,10			# 0xa
	st.w	$r12,$r22,-24
	or	$r12,$r0,$r0
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,184
	.cfi_restore 1
	ld.d	$r22,$r3,176
	.cfi_restore 22
	addi.d	$r3,$r3,192
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.0.1 20220210 (experimental)"
	.section	.note.GNU-stack,"",@progbits
