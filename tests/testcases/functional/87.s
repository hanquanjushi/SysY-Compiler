	.file	"87.c"
	.text
	.align	2
	.globl	sort
	.type	sort, @function
sort:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	st.d	$r4,$r22,-40
	or	$r12,$r5,$r0
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-44
	st.w	$r0,$r22,-20
	b	.L2
.L6:
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-24
	b	.L3
.L5:
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	ldptr.w	$r14,$r12,0
	ldptr.w	$r12,$r22,-24
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	ldptr.w	$r12,$r12,0
	or	$r13,$r14,$r0
	bge	$r13,$r12,.L4
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	ldptr.w	$r12,$r12,0
	st.w	$r12,$r22,-28
	ldptr.w	$r12,$r22,-24
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-40
	add.d	$r13,$r13,$r12
	ldptr.w	$r12,$r22,-20
	slli.d	$r12,$r12,2
	ld.d	$r14,$r22,-40
	add.d	$r12,$r14,$r12
	ldptr.w	$r13,$r13,0
	stptr.w	$r13,$r12,0
	ldptr.w	$r12,$r22,-24
	slli.d	$r12,$r12,2
	ld.d	$r13,$r22,-40
	add.d	$r12,$r13,$r12
	ld.w	$r13,$r22,-28
	stptr.w	$r13,$r12,0
.L4:
	ld.w	$r12,$r22,-24
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-24
.L3:
	ld.w	$r13,$r22,-24
	ld.w	$r12,$r22,-44
	blt	$r13,$r12,.L5
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,1
	st.w	$r12,$r22,-20
.L2:
	ld.w	$r12,$r22,-44
	addi.w	$r12,$r12,-1
	or	$r13,$r12,$r0
	ld.w	$r12,$r22,-20
	blt	$r12,$r13,.L6
	nop
	nop
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE0:
	.size	sort, .-sort
	.align	2
	.globl	param32_rec
	.type	param32_rec, @function
param32_rec:
.LFB1 = .
	.cfi_startproc
	addi.d	$r3,$r3,-240
	.cfi_def_cfa_offset 240
	st.d	$r1,$r3,232
	st.d	$r22,$r3,224
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,240
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
	st.w	$r19,$r22,-20
	slli.w	$r18,$r18,0
	st.w	$r18,$r22,-24
	slli.w	$r17,$r17,0
	st.w	$r17,$r22,-28
	slli.w	$r16,$r16,0
	st.w	$r16,$r22,-32
	slli.w	$r15,$r15,0
	st.w	$r15,$r22,-36
	slli.w	$r14,$r14,0
	st.w	$r14,$r22,-40
	slli.w	$r13,$r13,0
	st.w	$r13,$r22,-44
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-48
	ld.w	$r12,$r22,-20
	bnez	$r12,.L8
	ldptr.w	$r12,$r22,-24
	b	.L9
.L8:
	ld.w	$r12,$r22,-20
	addi.w	$r12,$r12,-1
	or	$r14,$r12,$r0
	ld.w	$r13,$r22,-24
	ld.w	$r12,$r22,-28
	add.w	$r12,$r13,$r12
	or	$r15,$r12,$r0
	lu12i.w	$r12,998244352>>12			# 0x3b800000
	ori	$r12,$r12,1
	mod.w	$r13,$r15,$r12
	bne	$r12,$r0,1f
	break	7
1:
	ldptr.w	$r20,$r22,0
	ldptr.w	$r19,$r22,-48
	ldptr.w	$r18,$r22,-44
	ldptr.w	$r17,$r22,-40
	ldptr.w	$r16,$r22,-36
	ldptr.w	$r15,$r22,-32
	st.d	$r0,$r3,184
	ldptr.w	$r12,$r22,184
	st.d	$r12,$r3,176
	ldptr.w	$r12,$r22,176
	st.d	$r12,$r3,168
	ldptr.w	$r12,$r22,168
	st.d	$r12,$r3,160
	ldptr.w	$r12,$r22,160
	st.d	$r12,$r3,152
	ldptr.w	$r12,$r22,152
	st.d	$r12,$r3,144
	ldptr.w	$r12,$r22,144
	st.d	$r12,$r3,136
	ldptr.w	$r12,$r22,136
	st.d	$r12,$r3,128
	ldptr.w	$r12,$r22,128
	st.d	$r12,$r3,120
	ldptr.w	$r12,$r22,120
	st.d	$r12,$r3,112
	ldptr.w	$r12,$r22,112
	st.d	$r12,$r3,104
	ldptr.w	$r12,$r22,104
	st.d	$r12,$r3,96
	ldptr.w	$r12,$r22,96
	st.d	$r12,$r3,88
	ldptr.w	$r12,$r22,88
	st.d	$r12,$r3,80
	ldptr.w	$r12,$r22,80
	st.d	$r12,$r3,72
	ldptr.w	$r12,$r22,72
	st.d	$r12,$r3,64
	ldptr.w	$r12,$r22,64
	st.d	$r12,$r3,56
	ldptr.w	$r12,$r22,56
	st.d	$r12,$r3,48
	ldptr.w	$r12,$r22,48
	st.d	$r12,$r3,40
	ldptr.w	$r12,$r22,40
	st.d	$r12,$r3,32
	ldptr.w	$r12,$r22,32
	st.d	$r12,$r3,24
	ldptr.w	$r12,$r22,24
	st.d	$r12,$r3,16
	ldptr.w	$r12,$r22,16
	st.d	$r12,$r3,8
	ldptr.w	$r12,$r22,8
	stptr.d	$r12,$r3,0
	or	$r11,$r20,$r0
	or	$r10,$r19,$r0
	or	$r9,$r18,$r0
	or	$r8,$r17,$r0
	or	$r7,$r16,$r0
	or	$r6,$r15,$r0
	or	$r5,$r13,$r0
	or	$r4,$r14,$r0
	bl	param32_rec
	or	$r12,$r4,$r0
.L9:
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,232
	.cfi_restore 1
	ld.d	$r22,$r3,224
	.cfi_restore 22
	addi.d	$r3,$r3,240
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE1:
	.size	param32_rec, .-param32_rec
	.align	2
	.globl	param32_arr
	.type	param32_arr, @function
param32_arr:
.LFB2 = .
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
	ld.d	$r12,$r22,-40
	ldptr.w	$r13,$r12,0
	ld.d	$r12,$r22,-40
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-48
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-48
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-56
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-56
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-64
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-64
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-72
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-72
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-80
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-80
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-88
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-88
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,-96
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,-96
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ldptr.d	$r12,$r22,0
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.d	$r12,$r22,0
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,8
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,8
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,16
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,16
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,24
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,24
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,32
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,32
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,40
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,40
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,48
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,48
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,56
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,56
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,64
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,64
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,72
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,72
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,80
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,80
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,88
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,88
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,96
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,96
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,104
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,104
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,112
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,112
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,120
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,120
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,128
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,128
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,136
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,136
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,144
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,144
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,152
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,152
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,160
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,160
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,168
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,168
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,176
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,176
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ld.d	$r12,$r22,184
	ldptr.w	$r12,$r12,0
	ld.w	$r13,$r22,-20
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.d	$r12,$r22,184
	addi.d	$r12,$r12,4
	ldptr.w	$r12,$r12,0
	add.w	$r12,$r13,$r12
	st.w	$r12,$r22,-20
	ldptr.w	$r12,$r22,-20
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,88
	.cfi_restore 22
	addi.d	$r3,$r3,96
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE2:
	.size	param32_arr, .-param32_arr
	.align	2
	.globl	param16
	.type	param16, @function
param16:
.LFB3 = .
	.cfi_startproc
	addi.d	$r3,$r3,-304
	.cfi_def_cfa_offset 304
	st.d	$r1,$r3,296
	st.d	$r22,$r3,288
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,304
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
	st.w	$r19,$r22,-84
	slli.w	$r18,$r18,0
	st.w	$r18,$r22,-88
	slli.w	$r17,$r17,0
	st.w	$r17,$r22,-92
	slli.w	$r16,$r16,0
	st.w	$r16,$r22,-96
	slli.w	$r15,$r15,0
	st.w	$r15,$r22,-100
	slli.w	$r14,$r14,0
	st.w	$r14,$r22,-104
	slli.w	$r13,$r13,0
	st.w	$r13,$r22,-108
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-112
	ld.w	$r12,$r22,-84
	st.w	$r12,$r22,-80
	ld.w	$r12,$r22,-88
	st.w	$r12,$r22,-76
	ld.w	$r12,$r22,-92
	st.w	$r12,$r22,-72
	ld.w	$r12,$r22,-96
	st.w	$r12,$r22,-68
	ld.w	$r12,$r22,-100
	st.w	$r12,$r22,-64
	ld.w	$r12,$r22,-104
	st.w	$r12,$r22,-60
	ld.w	$r12,$r22,-108
	st.w	$r12,$r22,-56
	ld.w	$r12,$r22,-112
	st.w	$r12,$r22,-52
	ldptr.w	$r12,$r22,0
	st.w	$r12,$r22,-48
	ld.w	$r12,$r22,8
	st.w	$r12,$r22,-44
	ld.w	$r12,$r22,16
	st.w	$r12,$r22,-40
	ld.w	$r12,$r22,24
	st.w	$r12,$r22,-36
	ld.w	$r12,$r22,32
	st.w	$r12,$r22,-32
	ld.w	$r12,$r22,40
	st.w	$r12,$r22,-28
	ld.w	$r12,$r22,48
	st.w	$r12,$r22,-24
	ld.w	$r12,$r22,56
	st.w	$r12,$r22,-20
	addi.d	$r12,$r22,-80
	addi.w	$r5,$r0,16			# 0x10
	or	$r4,$r12,$r0
	bl	sort
	ldptr.w	$r4,$r22,-80
	ldptr.w	$r5,$r22,-76
	ldptr.w	$r6,$r22,-72
	ldptr.w	$r7,$r22,-68
	ldptr.w	$r8,$r22,-64
	ldptr.w	$r9,$r22,-60
	ldptr.w	$r10,$r22,-56
	ldptr.w	$r11,$r22,-52
	ldptr.w	$r12,$r22,-48
	ldptr.w	$r13,$r22,-44
	ldptr.w	$r14,$r22,-40
	ldptr.w	$r15,$r22,-36
	ldptr.w	$r16,$r22,-32
	ldptr.w	$r17,$r22,-28
	ldptr.w	$r18,$r22,-24
	ldptr.w	$r19,$r22,-20
	ldptr.w	$r20,$r22,56
	st.d	$r20,$r3,184
	ldptr.w	$r20,$r22,48
	st.d	$r20,$r3,176
	ldptr.w	$r20,$r22,40
	st.d	$r20,$r3,168
	ldptr.w	$r20,$r22,32
	st.d	$r20,$r3,160
	ldptr.w	$r20,$r22,24
	st.d	$r20,$r3,152
	ldptr.w	$r20,$r22,16
	st.d	$r20,$r3,144
	ldptr.w	$r20,$r22,8
	st.d	$r20,$r3,136
	ldptr.w	$r20,$r22,0
	st.d	$r20,$r3,128
	ldptr.w	$r20,$r22,-112
	st.d	$r20,$r3,120
	ldptr.w	$r20,$r22,-108
	st.d	$r20,$r3,112
	ldptr.w	$r20,$r22,-104
	st.d	$r20,$r3,104
	ldptr.w	$r20,$r22,-100
	st.d	$r20,$r3,96
	ldptr.w	$r20,$r22,-96
	st.d	$r20,$r3,88
	ldptr.w	$r20,$r22,-92
	st.d	$r20,$r3,80
	ldptr.w	$r20,$r22,-88
	st.d	$r20,$r3,72
	ldptr.w	$r20,$r22,-84
	st.d	$r20,$r3,64
	st.d	$r19,$r3,56
	st.d	$r18,$r3,48
	st.d	$r17,$r3,40
	st.d	$r16,$r3,32
	st.d	$r15,$r3,24
	st.d	$r14,$r3,16
	st.d	$r13,$r3,8
	stptr.d	$r12,$r3,0
	bl	param32_rec
	or	$r12,$r4,$r0
	or	$r4,$r12,$r0
	ld.d	$r1,$r3,296
	.cfi_restore 1
	ld.d	$r22,$r3,288
	.cfi_restore 22
	addi.d	$r3,$r3,304
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE3:
	.size	param16, .-param16
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB4 = .
	.cfi_startproc
	addi.d	$r3,$r3,-16
	.cfi_def_cfa_offset 16
	st.d	$r22,$r3,8
	.cfi_offset 22, -8
	addi.d	$r22,$r3,16
	.cfi_def_cfa 22, 0
	or	$r12,$r0,$r0
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,8
	.cfi_restore 22
	addi.d	$r3,$r3,16
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.0.1 20220210 (experimental)"
	.section	.note.GNU-stack,"",@progbits
