	.text
	.globl func1
	.type func1, @function
func1:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.func1_label_entry:
# %op3 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  %arg0, i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = icmp eq i32  %op6, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -81
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -89
# br i1  %op9, label %label10, label %label14
	ld.b $t0, $fp, -89
	bnez $t0, .func1_label10
	b .func1_label14
.func1_label10:
# %op11 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op12 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op13 = mul i32  %op11, %op12
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# ret i32  %op13
	ld.w $a0, $fp, -104
	b func1_ret
.func1_label14:
# %op15 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op17 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op18 = sub i32  %op16, %op17
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -116
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op19 = call i32  @func1(i32  %op15, i32  %op18, i32  0)
	ld.w $a0, $fp, -108
	ld.w $a1, $fp, -120
	addi.w $a2, $zero, 0
	bl func1
	st.w $a0, $fp, -124
# ret i32  %op19
	ld.w $a0, $fp, -124
	b func1_ret
func1_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func2
	.type func2, @function
func2:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func2_label_entry:
# %op2 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -57
# br i1  %op5, label %label6, label %label11
	ld.b $t0, $fp, -57
	bnez $t0, .func2_label6
	b .func2_label11
.func2_label6:
# %op7 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op8 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op9 = srem i32  %op7, %op8
	ld.w $t0, $fp, -64
	ld.w $t1, $fp, -68
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op10 = call i32  @func2(i32  %op9, i32  0)
	ld.w $a0, $fp, -72
	addi.w $a1, $zero, 0
	bl func2
	st.w $a0, $fp, -76
# ret i32  %op10
	ld.w $a0, $fp, -76
	b func2_ret
.func2_label11:
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# ret i32  %op12
	ld.w $a0, $fp, -80
	b func2_ret
func2_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func3
	.type func3, @function
func3:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func3_label_entry:
# %op2 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = icmp eq i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -57
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -65
# br i1  %op7, label %label8, label %label11
	ld.b $t0, $fp, -65
	bnez $t0, .func3_label8
	b .func3_label11
.func3_label8:
# %op9 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op10 = add i32  %op9, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# ret i32  %op10
	ld.w $a0, $fp, -76
	b func3_ret
.func3_label11:
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = add i32  %op12, %op13
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op15 = call i32  @func3(i32  %op14, i32  0)
	ld.w $a0, $fp, -88
	addi.w $a1, $zero, 0
	bl func3
	st.w $a0, $fp, -92
# ret i32  %op15
	ld.w $a0, $fp, -92
	b func3_ret
func3_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func4
	.type func4, @function
func4:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.func4_label_entry:
# %op3 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  %arg0, i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -81
# br i1  %op7, label %label8, label %label10
	ld.b $t0, $fp, -81
	bnez $t0, .func4_label8
	b .func4_label10
.func4_label8:
# %op9 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# ret i32  %op9
	ld.w $a0, $fp, -88
	b func4_ret
.func4_label10:
# %op11 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# ret i32  %op11
	ld.w $a0, $fp, -92
	b func4_ret
func4_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func5
	.type func5, @function
func5:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.func5_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = sub i32  0, %op2
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -40
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b func5_ret
func5_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func6
	.type func6, @function
func6:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.func6_label_entry:
# %op2 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -57
# br i1  %op5, label %label8, label %label7
	ld.b $t0, $fp, -57
	bnez $t0, .func6_label8
	b .func6_label7
.func6_label6:
# ret i32  1
	addi.w $a0, $zero, 1
	b func6_ret
.func6_label7:
# ret i32  0
	addi.w $a0, $zero, 0
	b func6_ret
.func6_label8:
# %op9 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -65
# br i1  %op10, label %label6, label %label7
	ld.b $t0, $fp, -65
	bnez $t0, .func6_label6
	b .func6_label7
func6_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl func7
	.type func7, @function
func7:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.func7_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op3 = icmp eq i32  %op2, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -41
# br i1  %op3, label %label4, label %label5
	ld.b $t0, $fp, -41
	bnez $t0, .func7_label4
	b .func7_label5
.func7_label4:
# ret i32  1
	addi.w $a0, $zero, 1
	b func7_ret
.func7_label5:
# ret i32  0
	addi.w $a0, $zero, 0
	b func7_ret
func7_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -672
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
# %op2 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -48
# store i32  %op3, i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op5 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -64
# store i32  %op5, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -80
# store i32  %op7, i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op8 = alloca [10 x i32 ]
	addi.d $t1, $fp, -128
	st.d $t1, $fp, -88
# %op9 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label10:
# %op11 = load i32 , i32 * %op9
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op12 = icmp slt i32  %op11, 10
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -145
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -153
# br i1  %op14, label %label15, label %label21
	ld.b $t0, $fp, -153
	bnez $t0, .main_label15
	b .main_label21
.main_label15:
# %op16 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -160
# %op17 = load i32 , i32 * %op9
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op18 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  %op17
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  %op16, i32 * %op18
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# %op19 = load i32 , i32 * %op9
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op20 = add i32  %op19, 1
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# store i32  %op20, i32 * %op9
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# br label %label10
	b .main_label10
.main_label21:
# %op22 = alloca i32 
	addi.d $t1, $fp, -196
	st.d $t1, $fp, -192
# %op23 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op24 = call i32  @func7(i32  %op23)
	ld.w $a0, $fp, -200
	bl func7
	st.w $a0, $fp, -204
# %op25 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op26 = call i32  @func5(i32  %op25)
	ld.w $a0, $fp, -208
	bl func5
	st.w $a0, $fp, -212
# %op27 = call i32  @func6(i32  %op24, i32  %op26)
	ld.w $a0, $fp, -204
	ld.w $a1, $fp, -212
	bl func6
	st.w $a0, $fp, -216
# %op28 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op29 = call i32  @func2(i32  %op27, i32  %op28)
	ld.w $a0, $fp, -216
	ld.w $a1, $fp, -220
	bl func2
	st.w $a0, $fp, -224
# %op30 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op31 = call i32  @func3(i32  %op29, i32  %op30)
	ld.w $a0, $fp, -224
	ld.w $a1, $fp, -228
	bl func3
	st.w $a0, $fp, -232
# %op32 = call i32  @func5(i32  %op31)
	ld.w $a0, $fp, -232
	bl func5
	st.w $a0, $fp, -236
# %op33 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  0
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -248
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op35 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  1
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -264
# %op36 = load i32 , i32 * %op35
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op37 = call i32  @func5(i32  %op36)
	ld.w $a0, $fp, -268
	bl func5
	st.w $a0, $fp, -272
# %op38 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  2
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -280
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op40 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  3
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -296
# %op41 = load i32 , i32 * %op40
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op42 = call i32  @func7(i32  %op41)
	ld.w $a0, $fp, -300
	bl func7
	st.w $a0, $fp, -304
# %op43 = call i32  @func6(i32  %op39, i32  %op42)
	ld.w $a0, $fp, -284
	ld.w $a1, $fp, -304
	bl func6
	st.w $a0, $fp, -308
# %op44 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  4
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -320
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op46 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  5
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -336
# %op47 = load i32 , i32 * %op46
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op48 = call i32  @func7(i32  %op47)
	ld.w $a0, $fp, -340
	bl func7
	st.w $a0, $fp, -344
# %op49 = call i32  @func2(i32  %op45, i32  %op48)
	ld.w $a0, $fp, -324
	ld.w $a1, $fp, -344
	bl func2
	st.w $a0, $fp, -348
# %op50 = call i32  @func4(i32  %op37, i32  %op43, i32  %op49)
	ld.w $a0, $fp, -272
	ld.w $a1, $fp, -308
	ld.w $a2, $fp, -348
	bl func4
	st.w $a0, $fp, -352
# %op51 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  6
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -360
# %op52 = load i32 , i32 * %op51
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op53 = call i32  @func3(i32  %op50, i32  %op52)
	ld.w $a0, $fp, -352
	ld.w $a1, $fp, -364
	bl func3
	st.w $a0, $fp, -368
# %op54 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  7
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -376
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op56 = call i32  @func2(i32  %op53, i32  %op55)
	ld.w $a0, $fp, -368
	ld.w $a1, $fp, -380
	bl func2
	st.w $a0, $fp, -384
# %op57 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  8
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -392
# %op58 = load i32 , i32 * %op57
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op59 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  9
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -408
# %op60 = load i32 , i32 * %op59
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op61 = call i32  @func7(i32  %op60)
	ld.w $a0, $fp, -412
	bl func7
	st.w $a0, $fp, -416
# %op62 = call i32  @func3(i32  %op58, i32  %op61)
	ld.w $a0, $fp, -396
	ld.w $a1, $fp, -416
	bl func3
	st.w $a0, $fp, -420
# %op63 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op64 = call i32  @func1(i32  %op56, i32  %op62, i32  %op63)
	ld.w $a0, $fp, -384
	ld.w $a1, $fp, -420
	ld.w $a2, $fp, -424
	bl func1
	st.w $a0, $fp, -428
# %op65 = call i32  @func4(i32  %op32, i32  %op34, i32  %op64)
	ld.w $a0, $fp, -236
	ld.w $a1, $fp, -252
	ld.w $a2, $fp, -428
	bl func4
	st.w $a0, $fp, -432
# %op66 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op67 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op68 = call i32  @func7(i32  %op67)
	ld.w $a0, $fp, -440
	bl func7
	st.w $a0, $fp, -444
# %op69 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op70 = call i32  @func3(i32  %op68, i32  %op69)
	ld.w $a0, $fp, -444
	ld.w $a1, $fp, -448
	bl func3
	st.w $a0, $fp, -452
# %op71 = call i32  @func2(i32  %op66, i32  %op70)
	ld.w $a0, $fp, -436
	ld.w $a1, $fp, -452
	bl func2
	st.w $a0, $fp, -456
# %op72 = call i32  @func3(i32  %op65, i32  %op71)
	ld.w $a0, $fp, -432
	ld.w $a1, $fp, -456
	bl func3
	st.w $a0, $fp, -460
# %op73 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  0
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -472
# %op74 = load i32 , i32 * %op73
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op75 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  1
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -488
# %op76 = load i32 , i32 * %op75
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op77 = call i32  @func1(i32  %op72, i32  %op74, i32  %op76)
	ld.w $a0, $fp, -460
	ld.w $a1, $fp, -476
	ld.w $a2, $fp, -492
	bl func1
	st.w $a0, $fp, -496
# %op78 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  2
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -504
# %op79 = load i32 , i32 * %op78
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op80 = call i32  @func2(i32  %op77, i32  %op79)
	ld.w $a0, $fp, -496
	ld.w $a1, $fp, -508
	bl func2
	st.w $a0, $fp, -512
# %op81 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  3
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -520
# %op82 = load i32 , i32 * %op81
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op83 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  4
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -536
# %op84 = load i32 , i32 * %op83
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op85 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  5
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -552
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op87 = call i32  @func5(i32  %op86)
	ld.w $a0, $fp, -556
	bl func5
	st.w $a0, $fp, -560
# %op88 = call i32  @func3(i32  %op84, i32  %op87)
	ld.w $a0, $fp, -540
	ld.w $a1, $fp, -560
	bl func3
	st.w $a0, $fp, -564
# %op89 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  6
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -576
# %op90 = load i32 , i32 * %op89
	ld.d $t0, $fp, -576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op91 = call i32  @func5(i32  %op90)
	ld.w $a0, $fp, -580
	bl func5
	st.w $a0, $fp, -584
# %op92 = call i32  @func2(i32  %op88, i32  %op91)
	ld.w $a0, $fp, -564
	ld.w $a1, $fp, -584
	bl func2
	st.w $a0, $fp, -588
# %op93 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  7
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -600
# %op94 = load i32 , i32 * %op93
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op95 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  8
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -616
# %op96 = load i32 , i32 * %op95
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op97 = call i32  @func7(i32  %op96)
	ld.w $a0, $fp, -620
	bl func7
	st.w $a0, $fp, -624
# %op98 = call i32  @func1(i32  %op92, i32  %op94, i32  %op97)
	ld.w $a0, $fp, -588
	ld.w $a1, $fp, -604
	ld.w $a2, $fp, -624
	bl func1
	st.w $a0, $fp, -628
# %op99 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  9
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -640
# %op100 = load i32 , i32 * %op99
	ld.d $t0, $fp, -640
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op101 = call i32  @func5(i32  %op100)
	ld.w $a0, $fp, -644
	bl func5
	st.w $a0, $fp, -648
# %op102 = call i32  @func2(i32  %op98, i32  %op101)
	ld.w $a0, $fp, -628
	ld.w $a1, $fp, -648
	bl func2
	st.w $a0, $fp, -652
# %op103 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op104 = call i32  @func3(i32  %op102, i32  %op103)
	ld.w $a0, $fp, -652
	ld.w $a1, $fp, -656
	bl func3
	st.w $a0, $fp, -660
# %op105 = call i32  @func1(i32  %op80, i32  %op82, i32  %op104)
	ld.w $a0, $fp, -512
	ld.w $a1, $fp, -524
	ld.w $a2, $fp, -660
	bl func1
	st.w $a0, $fp, -664
# store i32  %op105, i32 * %op22
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -664
	st.w $t1, $t0, 0
# %op106 = load i32 , i32 * %op22
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# ret i32  %op106
	ld.w $a0, $fp, -668
	b main_ret
main_ret:
	addi.d $sp, $sp, 672
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
