	.text
	.globl exgcd
	.type exgcd, @function
exgcd:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.d $a2, $fp, -32
	st.d $a3, $fp, -40
.exgcd_label_entry:
# %op4 = icmp eq i32  %arg1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -41
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -49
# br i1  %op6, label %label7, label %label10
	ld.b $t0, $fp, -49
	bnez $t0, .exgcd_label7
	b .exgcd_label10
.exgcd_label7:
# %op8 = getelementptr i32 , i32 * %arg2, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# store i32  1, i32 * %op8
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op9 = getelementptr i32 , i32 * %arg3, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# ret i32  %arg0
	ld.w $a0, $fp, -20
	b exgcd_ret
.exgcd_label10:
# %op11 = srem i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op12 = call i32  @exgcd(i32  %arg1, i32  %op11, i32 * %arg2, i32 * %arg3)
	ld.w $a0, $fp, -24
	ld.w $a1, $fp, -76
	ld.d $a2, $fp, -32
	ld.d $a3, $fp, -40
	bl exgcd
	st.w $a0, $fp, -80
# %op13 = getelementptr i32 , i32 * %arg2, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op15 = getelementptr i32 , i32 * %arg3, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op17 = getelementptr i32 , i32 * %arg2, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# store i32  %op16, i32 * %op17
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op18 = sdiv i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op19 = getelementptr i32 , i32 * %arg3, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op21 = mul i32  %op18, %op20
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -140
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# %op22 = sub i32  %op14, %op21
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -144
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op23 = getelementptr i32 , i32 * %arg3, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# store i32  %op22, i32 * %op23
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# ret i32  %op12
	ld.w $a0, $fp, -80
	b exgcd_ret
exgcd_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
.main_label_entry:
# %op0 = alloca [1 x i32 ]
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = getelementptr [1 x i32 ], [1 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -40
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = getelementptr [1 x i32 ], [1 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -48
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op3 = alloca [1 x i32 ]
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op4 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -72
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -80
# store i32  1, i32 * %op5
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op6 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -88
# %op7 = getelementptr [1 x i32 ], [1 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -96
# %op8 = call i32  @exgcd(i32  7, i32  15, i32 * %op6, i32 * %op7)
	addi.w $a0, $zero, 7
	addi.w $a1, $zero, 15
	ld.d $a2, $fp, -88
	ld.d $a3, $fp, -96
	bl exgcd
	st.w $a0, $fp, -100
# %op9 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -112
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op11 = srem i32  %op10, 15
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 15
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op12 = add i32  %op11, 15
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 15
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op13 = srem i32  %op12, 15
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 15
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op14 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -136
# store i32  %op13, i32 * %op14
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# %op15 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -144
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# call void @putint(i32  %op16)
	ld.w $a0, $fp, -148
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
