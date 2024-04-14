	.text
	.globl func1
	.type func1, @function
func1:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.func1_label_entry:
# %op3 = icmp eq i32  %arg2, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -29
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -37
# br i1  %op5, label %label6, label %label8
	ld.b $t0, $fp, -37
	bnez $t0, .func1_label6
	b .func1_label8
.func1_label6:
# %op7 = mul i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# ret i32  %op7
	ld.w $a0, $fp, -44
	b func1_ret
.func1_label8:
# %op9 = sub i32  %arg1, %arg2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# %op10 = call i32  @func1(i32  %arg0, i32  %op9, i32  0)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -48
	addi.w $a2, $zero, 0
	bl func1
	st.w $a0, $fp, -52
# ret i32  %op10
	ld.w $a0, $fp, -52
	b func1_ret
func1_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func2
	.type func2, @function
func2:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func2_label_entry:
# %op2 = icmp ne i32  %arg1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -25
# br i1  %op2, label %label3, label %label6
	ld.b $t0, $fp, -25
	bnez $t0, .func2_label3
	b .func2_label6
.func2_label3:
# %op4 = srem i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op5 = call i32  @func2(i32  %op4, i32  0)
	ld.w $a0, $fp, -32
	addi.w $a1, $zero, 0
	bl func2
	st.w $a0, $fp, -36
# ret i32  %op5
	ld.w $a0, $fp, -36
	b func2_ret
.func2_label6:
# ret i32  %arg0
	ld.w $a0, $fp, -20
	b func2_ret
func2_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func3
	.type func3, @function
func3:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func3_label_entry:
# %op2 = icmp eq i32  %arg1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -25
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op4 = icmp ne i32  %op3, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -33
# br i1  %op4, label %label5, label %label7
	ld.b $t0, $fp, -33
	bnez $t0, .func3_label5
	b .func3_label7
.func3_label5:
# %op6 = add i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# ret i32  %op6
	ld.w $a0, $fp, -40
	b func3_ret
.func3_label7:
# %op8 = add i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op9 = call i32  @func3(i32  %op8, i32  0)
	ld.w $a0, $fp, -44
	addi.w $a1, $zero, 0
	bl func3
	st.w $a0, $fp, -48
# ret i32  %op9
	ld.w $a0, $fp, -48
	b func3_ret
func3_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func4
	.type func4, @function
func4:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.func4_label_entry:
# %op3 = icmp ne i32  %arg0, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -29
# br i1  %op3, label %label4, label %label5
	ld.b $t0, $fp, -29
	bnez $t0, .func4_label4
	b .func4_label5
.func4_label4:
# ret i32  %arg1
	ld.w $a0, $fp, -24
	b func4_ret
.func4_label5:
# ret i32  %arg2
	ld.w $a0, $fp, -28
	b func4_ret
func4_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func5
	.type func5, @function
func5:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
.func5_label_entry:
# %op1 = sub i32  0, %arg0
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -20
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# ret i32  %op1
	ld.w $a0, $fp, -24
	b func5_ret
func5_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func6
	.type func6, @function
func6:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func6_label_entry:
# %op2 = icmp ne i32  %arg0, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -25
# br i1  %op2, label %label5, label %label4
	ld.b $t0, $fp, -25
	bnez $t0, .func6_label5
	b .func6_label4
.func6_label3:
# ret i32  1
	addi.w $a0, $zero, 1
	b func6_ret
.func6_label4:
# ret i32  0
	addi.w $a0, $zero, 0
	b func6_ret
.func6_label5:
# %op6 = icmp ne i32  %arg1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -26
# br i1  %op6, label %label3, label %label4
	ld.b $t0, $fp, -26
	bnez $t0, .func6_label3
	b .func6_label4
func6_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func7
	.type func7, @function
func7:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
.func7_label_entry:
# %op1 = icmp eq i32  %arg0, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -21
# br i1  %op1, label %label2, label %label3
	ld.b $t0, $fp, -21
	bnez $t0, .func7_label2
	b .func7_label3
.func7_label2:
# ret i32  1
	addi.w $a0, $zero, 1
	b func7_ret
.func7_label3:
# ret i32  0
	addi.w $a0, $zero, 0
	b func7_ret
func7_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -560
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -24
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -28
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# %op4 = alloca [10 x i32 ]
	addi.d $t1, $fp, -80
	st.d $t1, $fp, -40
# br label %label5
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -84
	b .main_label5
.main_label5:
# %op6 = phi i32  [ 0, %label_entry ], [ %op13, %label10 ]
# %op7 = icmp slt i32  %op6, 10
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -93
# br i1  %op9, label %label10, label %label14
	ld.b $t0, $fp, -93
	bnez $t0, .main_label10
	b .main_label14
.main_label10:
# %op11 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -100
# %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  %op6
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -84
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# store i32  %op11, i32 * %op12
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# %op13 = add i32  %op6, 1
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# br label %label5
	ld.w $t0, $fp, -116
	st.w $t0, $fp, -84
	b .main_label5
.main_label14:
# %op15 = call i32  @func7(i32  %op3)
	ld.w $a0, $fp, -32
	bl func7
	st.w $a0, $fp, -120
# %op16 = call i32  @func5(i32  %op2)
	ld.w $a0, $fp, -28
	bl func5
	st.w $a0, $fp, -124
# %op17 = call i32  @func6(i32  %op15, i32  %op16)
	ld.w $a0, $fp, -120
	ld.w $a1, $fp, -124
	bl func6
	st.w $a0, $fp, -128
# %op18 = call i32  @func2(i32  %op17, i32  %op1)
	ld.w $a0, $fp, -128
	ld.w $a1, $fp, -24
	bl func2
	st.w $a0, $fp, -132
# %op19 = call i32  @func3(i32  %op18, i32  %op0)
	ld.w $a0, $fp, -132
	ld.w $a1, $fp, -20
	bl func3
	st.w $a0, $fp, -136
# %op20 = call i32  @func5(i32  %op19)
	ld.w $a0, $fp, -136
	bl func5
	st.w $a0, $fp, -140
# %op21 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -152
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op23 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -168
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op25 = call i32  @func5(i32  %op24)
	ld.w $a0, $fp, -172
	bl func5
	st.w $a0, $fp, -176
# %op26 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  2
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -184
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op28 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  3
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -200
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op30 = call i32  @func7(i32  %op29)
	ld.w $a0, $fp, -204
	bl func7
	st.w $a0, $fp, -208
# %op31 = call i32  @func6(i32  %op27, i32  %op30)
	ld.w $a0, $fp, -188
	ld.w $a1, $fp, -208
	bl func6
	st.w $a0, $fp, -212
# %op32 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  4
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -224
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op34 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  5
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -240
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op36 = call i32  @func7(i32  %op35)
	ld.w $a0, $fp, -244
	bl func7
	st.w $a0, $fp, -248
# %op37 = call i32  @func2(i32  %op33, i32  %op36)
	ld.w $a0, $fp, -228
	ld.w $a1, $fp, -248
	bl func2
	st.w $a0, $fp, -252
# %op38 = call i32  @func4(i32  %op25, i32  %op31, i32  %op37)
	ld.w $a0, $fp, -176
	ld.w $a1, $fp, -212
	ld.w $a2, $fp, -252
	bl func4
	st.w $a0, $fp, -256
# %op39 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  6
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -264
# %op40 = load i32 , i32 * %op39
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op41 = call i32  @func3(i32  %op38, i32  %op40)
	ld.w $a0, $fp, -256
	ld.w $a1, $fp, -268
	bl func3
	st.w $a0, $fp, -272
# %op42 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  7
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -280
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op44 = call i32  @func2(i32  %op41, i32  %op43)
	ld.w $a0, $fp, -272
	ld.w $a1, $fp, -284
	bl func2
	st.w $a0, $fp, -288
# %op45 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  8
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -296
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op47 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  9
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -312
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op49 = call i32  @func7(i32  %op48)
	ld.w $a0, $fp, -316
	bl func7
	st.w $a0, $fp, -320
# %op50 = call i32  @func3(i32  %op46, i32  %op49)
	ld.w $a0, $fp, -300
	ld.w $a1, $fp, -320
	bl func3
	st.w $a0, $fp, -324
# %op51 = call i32  @func1(i32  %op44, i32  %op50, i32  %op3)
	ld.w $a0, $fp, -288
	ld.w $a1, $fp, -324
	ld.w $a2, $fp, -32
	bl func1
	st.w $a0, $fp, -328
# %op52 = call i32  @func4(i32  %op20, i32  %op22, i32  %op51)
	ld.w $a0, $fp, -140
	ld.w $a1, $fp, -156
	ld.w $a2, $fp, -328
	bl func4
	st.w $a0, $fp, -332
# %op53 = call i32  @func7(i32  %op1)
	ld.w $a0, $fp, -24
	bl func7
	st.w $a0, $fp, -336
# %op54 = call i32  @func3(i32  %op53, i32  %op0)
	ld.w $a0, $fp, -336
	ld.w $a1, $fp, -20
	bl func3
	st.w $a0, $fp, -340
# %op55 = call i32  @func2(i32  %op2, i32  %op54)
	ld.w $a0, $fp, -28
	ld.w $a1, $fp, -340
	bl func2
	st.w $a0, $fp, -344
# %op56 = call i32  @func3(i32  %op52, i32  %op55)
	ld.w $a0, $fp, -332
	ld.w $a1, $fp, -344
	bl func3
	st.w $a0, $fp, -348
# %op57 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -360
# %op58 = load i32 , i32 * %op57
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op59 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -376
# %op60 = load i32 , i32 * %op59
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op61 = call i32  @func1(i32  %op56, i32  %op58, i32  %op60)
	ld.w $a0, $fp, -348
	ld.w $a1, $fp, -364
	ld.w $a2, $fp, -380
	bl func1
	st.w $a0, $fp, -384
# %op62 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  2
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -392
# %op63 = load i32 , i32 * %op62
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op64 = call i32  @func2(i32  %op61, i32  %op63)
	ld.w $a0, $fp, -384
	ld.w $a1, $fp, -396
	bl func2
	st.w $a0, $fp, -400
# %op65 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  3
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -408
# %op66 = load i32 , i32 * %op65
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op67 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  4
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -424
# %op68 = load i32 , i32 * %op67
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op69 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  5
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -440
# %op70 = load i32 , i32 * %op69
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op71 = call i32  @func5(i32  %op70)
	ld.w $a0, $fp, -444
	bl func5
	st.w $a0, $fp, -448
# %op72 = call i32  @func3(i32  %op68, i32  %op71)
	ld.w $a0, $fp, -428
	ld.w $a1, $fp, -448
	bl func3
	st.w $a0, $fp, -452
# %op73 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  6
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -464
# %op74 = load i32 , i32 * %op73
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op75 = call i32  @func5(i32  %op74)
	ld.w $a0, $fp, -468
	bl func5
	st.w $a0, $fp, -472
# %op76 = call i32  @func2(i32  %op72, i32  %op75)
	ld.w $a0, $fp, -452
	ld.w $a1, $fp, -472
	bl func2
	st.w $a0, $fp, -476
# %op77 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  7
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -488
# %op78 = load i32 , i32 * %op77
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op79 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  8
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -504
# %op80 = load i32 , i32 * %op79
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op81 = call i32  @func7(i32  %op80)
	ld.w $a0, $fp, -508
	bl func7
	st.w $a0, $fp, -512
# %op82 = call i32  @func1(i32  %op76, i32  %op78, i32  %op81)
	ld.w $a0, $fp, -476
	ld.w $a1, $fp, -492
	ld.w $a2, $fp, -512
	bl func1
	st.w $a0, $fp, -516
# %op83 = getelementptr [10 x i32 ], [10 x i32 ]* %op4, i32  0, i32  9
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -528
# %op84 = load i32 , i32 * %op83
	ld.d $t0, $fp, -528
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op85 = call i32  @func5(i32  %op84)
	ld.w $a0, $fp, -532
	bl func5
	st.w $a0, $fp, -536
# %op86 = call i32  @func2(i32  %op82, i32  %op85)
	ld.w $a0, $fp, -516
	ld.w $a1, $fp, -536
	bl func2
	st.w $a0, $fp, -540
# %op87 = call i32  @func3(i32  %op86, i32  %op3)
	ld.w $a0, $fp, -540
	ld.w $a1, $fp, -32
	bl func3
	st.w $a0, $fp, -544
# %op88 = call i32  @func1(i32  %op64, i32  %op66, i32  %op87)
	ld.w $a0, $fp, -400
	ld.w $a1, $fp, -412
	ld.w $a2, $fp, -544
	bl func1
	st.w $a0, $fp, -548
# ret i32  %op88
	ld.w $a0, $fp, -548
	b main_ret
main_ret:
	addi.d $sp, $sp, 560
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
