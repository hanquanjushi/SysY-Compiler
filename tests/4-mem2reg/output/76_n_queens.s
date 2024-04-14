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
	addi.d $sp, $sp, -80
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
# br label %label2
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -28
	b .printans_label2
.printans_label2:
# %op3 = phi i32  [ 1, %label_entry ], [ %op19, %label18 ]
# %op4 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op5 = icmp sle i32  %op3, %op4
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -33
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op7, label %label8, label %label15
	ld.b $t0, $fp, -41
	bnez $t0, .printans_label8
	b .printans_label15
.printans_label8:
# %op9 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %op3
	la.local $t0, ans
	ld.w $t1, $fp, -28
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# call void @putint(i32  %op10)
	ld.w $a0, $fp, -60
	bl putint
# %op11 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op12 = icmp eq i32  %op3, %op11
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -64
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -65
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -73
# br i1  %op14, label %label16, label %label17
	ld.b $t0, $fp, -73
	bnez $t0, .printans_label16
	b .printans_label17
.printans_label15:
# ret void
	addi.d $a0, $zero, 0
	b printans_ret
.printans_label16:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret void
	addi.d $a0, $zero, 0
	b printans_ret
.printans_label17:
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# br label %label18
	b .printans_label18
.printans_label18:
# %op19 = add i32  %op3, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# br label %label2
	ld.w $t0, $fp, -80
	st.w $t0, $fp, -28
	b .printans_label2
printans_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl f
	.type f, @function
f:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
	st.w $a0, $fp, -20
.f_label_entry:
# br label %label1
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -24
	b .f_label1
.f_label1:
# %op2 = phi i32  [ 1, %label_entry ], [ %op21, %label20 ]
# %op3 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op4 = icmp sle i32  %op2, %op3
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -29
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -37
# br i1  %op6, label %label7, label %label13
	ld.b $t0, $fp, -37
	bnez $t0, .f_label7
	b .f_label13
.f_label7:
# %op8 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op2
	la.local $t0, row
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op10 = icmp ne i32  %op9, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -53
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -61
# br i1  %op12, label %label29, label %label20
	ld.b $t0, $fp, -61
	bnez $t0, .f_label29
	b .f_label20
.f_label13:
# ret void
	addi.d $a0, $zero, 0
	b f_ret
.f_label14:
# %op15 = getelementptr [50 x i32 ], [50 x i32 ]* @ans, i32  0, i32  %arg0
	la.local $t0, ans
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# store i32  %op2, i32 * %op15
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op17 = icmp eq i32  %arg0, %op16
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -76
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -77
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -85
# br i1  %op19, label %label36, label %label37
	ld.b $t0, $fp, -85
	bnez $t0, .f_label36
	b .f_label37
.f_label20:
# %op21 = add i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# br label %label1
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -24
	b .f_label1
.f_label22:
# %op23 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op24 = add i32  %op23, %arg0
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op25 = sub i32  %op24, %op2
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -24
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op26 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op25
	la.local $t0, line2
	ld.w $t1, $fp, -104
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op28 = icmp eq i32  %op27, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -117
# br i1  %op28, label %label14, label %label20
	ld.b $t0, $fp, -117
	bnez $t0, .f_label14
	b .f_label20
.f_label29:
# %op30 = add i32  %arg0, %op2
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op31 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op30
	la.local $t0, line1
	ld.w $t1, $fp, -124
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -136
# %op32 = load i32 , i32 * %op31
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op33 = icmp eq i32  %op32, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -141
# %op34 = zext i1  %op33 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op35 = icmp ne i32  %op34, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -149
# br i1  %op35, label %label22, label %label20
	ld.b $t0, $fp, -149
	bnez $t0, .f_label22
	b .f_label20
.f_label36:
# call void @printans()
	bl printans
# br label %label37
	b .f_label37
.f_label37:
# %op38 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op2
	la.local $t0, row
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# store i32  1, i32 * %op38
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op39 = add i32  %arg0, %op2
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op40 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op39
	la.local $t0, line1
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  1, i32 * %op40
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op42 = add i32  %op41, %arg0
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op43 = sub i32  %op42, %op2
	ld.w $t0, $fp, -184
	ld.w $t1, $fp, -24
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op44 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op43
	la.local $t0, line2
	ld.w $t1, $fp, -188
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -200
# store i32  1, i32 * %op44
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op45 = add i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -204
# call void @f(i32  %op45)
	ld.w $a0, $fp, -204
	bl f
# %op46 = getelementptr [50 x i32 ], [50 x i32 ]* @row, i32  0, i32  %op2
	la.local $t0, row
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = add i32  %arg0, %op2
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op48 = getelementptr [50 x i32 ], [50 x i32 ]* @line1, i32  0, i32  %op47
	la.local $t0, line1
	ld.w $t1, $fp, -220
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -232
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op50 = add i32  %op49, %arg0
	ld.w $t0, $fp, -236
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# %op51 = sub i32  %op50, %op2
	ld.w $t0, $fp, -240
	ld.w $t1, $fp, -24
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# %op52 = getelementptr [100 x i32 ], [100 x i32 ]* @line2, i32  0, i32  %op51
	la.local $t0, line2
	ld.w $t1, $fp, -244
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label20
	b .f_label20
f_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# br label %label1
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -24
	b .main_label1
.main_label1:
# %op2 = phi i32  [ %op0, %label_entry ], [ %op8, %label6 ]
# %op3 = icmp sgt i32  %op2, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -25
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -33
# br i1  %op5, label %label6, label %label9
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label9
.main_label6:
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -40
# store i32  %op7, i32 * @n
	la.local $t0, n
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# call void @f(i32  1)
	addi.w $a0, $zero, 1
	bl f
# %op8 = sub i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# br label %label1
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -24
	b .main_label1
.main_label9:
# %op10 = load i32 , i32 * @sum
	la.local $t0, sum
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# ret i32  %op10
	ld.w $a0, $fp, -48
	b main_ret
main_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
