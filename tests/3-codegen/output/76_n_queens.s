# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl ans
	.type ans, @object
	.size ans, 200
ans:
	.space 200
	.globl sum
	.data
	.type sum, @object
	.size sum, 4
sum:
	.word 0
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.globl row
	.type row, @object
	.size row, 200
row:
	.space 200
	.globl line1
	.type line1, @object
	.size line1, 200
line1:
	.space 200
	.globl line2
	.type line2, @object
	.size line2, 400
line2:
	.space 400
	.text
	.globl printans
	.type printans, @function
printans:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
.printans_label_entry:
# %op0 = load i32 , i32 * @sum
	la.local $t0, sum
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = add i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @sum
	la.local $t0, sum
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .printans_label3
.printans_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op6 = icmp sle i32  %op4, %op5
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -45
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -53
# br i1  %op8, label %label9, label %label18
	ld.b $t0, $fp, -53
	bnez $t0, .printans_label9
	b .printans_label18
.printans_label9:
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op11 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op10
	la.local $t0, ans
	ld.w $t1, $fp, -60
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# call void @putint(i32  %op12)
	ld.w $a0, $fp, -76
	bl putint
# %op13 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op14 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op15 = icmp eq i32  %op13, %op14
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -85
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -93
# br i1  %op17, label %label19, label %label20
	ld.b $t0, $fp, -93
	bnez $t0, .printans_label19
	b .printans_label20
.printans_label18:
# ret void
	addi.d $a0, $zero, 0
	b printans_ret
.printans_label19:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret void
	addi.d $a0, $zero, 0
	b printans_ret
.printans_label20:
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# br label %label21
	b .printans_label21
.printans_label21:
# %op22 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op23 = add i32  %op22, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op23, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label3
	b .printans_label3
printans_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl f
	.type f, @function
f:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -384
	st.w $a0, $fp, -20
.f_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .f_label3
.f_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp sle i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label16
	ld.b $t0, $fp, -69
	bnez $t0, .f_label9
	b .f_label16
.f_label9:
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op11 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op10
	la.local $t0, row
	ld.w $t1, $fp, -76
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op13 = icmp ne i32  %op12, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -93
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -101
# br i1  %op15, label %label38, label %label26
	ld.b $t0, $fp, -101
	bnez $t0, .f_label38
	b .f_label26
.f_label16:
# ret void
	addi.d $a0, $zero, 0
	b f_ret
.f_label17:
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op19 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op20 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op19
	la.local $t0, ans
	ld.w $t1, $fp, -112
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -120
# store i32  %op18, i32 * %op20
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op22 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op23 = icmp eq i32  %op21, %op22
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -128
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -129
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -129
	st.w $t0, $fp, -136
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -137
# br i1  %op25, label %label47, label %label48
	ld.b $t0, $fp, -137
	bnez $t0, .f_label47
	b .f_label48
.f_label26:
# %op27 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# store i32  %op28, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# br label %label3
	b .f_label3
.f_label29:
# %op30 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op31 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op32 = add i32  %op30, %op31
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op33 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op34 = sub i32  %op32, %op33
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op35 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op34
	la.local $t0, line2
	ld.w $t1, $fp, -168
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# %op36 = load i32 , i32 * %op35
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op37 = icmp eq i32  %op36, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -181
# br i1  %op37, label %label17, label %label26
	ld.b $t0, $fp, -181
	bnez $t0, .f_label17
	b .f_label26
.f_label38:
# %op39 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op40 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op41 = add i32  %op39, %op40
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -192
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op42 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op41
	la.local $t0, line1
	ld.w $t1, $fp, -196
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op44 = icmp eq i32  %op43, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -213
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -221
# br i1  %op46, label %label29, label %label26
	ld.b $t0, $fp, -221
	bnez $t0, .f_label29
	b .f_label26
.f_label47:
# call void @printans()
	bl printans
# br label %label48
	b .f_label48
.f_label48:
# %op49 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op50 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op49
	la.local $t0, row
	ld.w $t1, $fp, -228
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# store i32  1, i32 * %op50
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op51 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op52 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op53 = add i32  %op51, %op52
	ld.w $t0, $fp, -244
	ld.w $t1, $fp, -248
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -252
# %op54 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op53
	la.local $t0, line1
	ld.w $t1, $fp, -252
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# store i32  1, i32 * %op54
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op55 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op56 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op57 = add i32  %op55, %op56
	ld.w $t0, $fp, -268
	ld.w $t1, $fp, -272
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# %op58 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op59 = sub i32  %op57, %op58
	ld.w $t0, $fp, -276
	ld.w $t1, $fp, -280
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -284
# %op60 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op59
	la.local $t0, line2
	ld.w $t1, $fp, -284
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -296
# store i32  1, i32 * %op60
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op61 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op62 = add i32  %op61, 1
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# call void @f(i32  %op62)
	ld.w $a0, $fp, -304
	bl f
# %op63 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op64 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op63
	la.local $t0, row
	ld.w $t1, $fp, -308
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op66 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op67 = add i32  %op65, %op66
	ld.w $t0, $fp, -324
	ld.w $t1, $fp, -328
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -332
# %op68 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op67
	la.local $t0, line1
	ld.w $t1, $fp, -332
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op70 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op71 = add i32  %op69, %op70
	ld.w $t0, $fp, -348
	ld.w $t1, $fp, -352
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -356
# %op72 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op73 = sub i32  %op71, %op72
	ld.w $t0, $fp, -356
	ld.w $t1, $fp, -360
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op74 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op73
	la.local $t0, line2
	ld.w $t1, $fp, -364
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# store i32  0, i32 * %op74
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label26
	b .f_label26
f_ret:
	addi.d $sp, $sp, 384
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op1, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op4 = icmp sgt i32  %op3, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -37
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -45
# br i1  %op6, label %label7, label %label11
	ld.b $t0, $fp, -45
	bnez $t0, .main_label7
	b .main_label11
.main_label7:
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -52
# store i32  %op8, i32 * @n
	la.local $t0, n
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# call void @f(i32  1)
	addi.w $a0, $zero, 1
	bl f
# %op9 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op10 = sub i32  %op9, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# store i32  %op10, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label11:
# %op12 = load i32 , i32 * @sum
	la.local $t0, sum
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# ret i32  %op12
	ld.w $a0, $fp, -64
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
