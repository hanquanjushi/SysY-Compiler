# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl ascii_0
	.data
	.type ascii_0, @object
	.size ascii_0, 4
ascii_0:
	.word 48
	.text
	.globl my_getint
	.type my_getint, @function
my_getint:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
.my_getint_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2
	b .my_getint_label2
.my_getint_label2:
# %op3 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -45
# br i1  %op3, label %label4, label %label12
	ld.b $t0, $fp, -45
	bnez $t0, .my_getint_label4
	b .my_getint_label12
.my_getint_label4:
# %op5 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -52
# %op6 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op7 = sub i32  %op5, %op6
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -56
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# store i32  %op7, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op8 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op9 = icmp slt i32  %op8, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -65
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -73
# br i1  %op11, label %label14, label %label16
	ld.b $t0, $fp, -73
	bnez $t0, .my_getint_label14
	b .my_getint_label16
.my_getint_label12:
# %op13 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# store i32  %op13, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# br label %label21
	b .my_getint_label21
.my_getint_label14:
# br label %label2
	b .my_getint_label2
.my_getint_label15:
# br label %label12
	b .my_getint_label12
.my_getint_label16:
# %op17 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op18 = icmp sgt i32  %op17, 9
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 9
	slt $t2, $t1, $t0
	st.b $t2, $fp, -85
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -93
# br i1  %op20, label %label14, label %label15
	ld.b $t0, $fp, -93
	bnez $t0, .my_getint_label14
	b .my_getint_label15
.my_getint_label21:
# %op22 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -94
# br i1  %op22, label %label23, label %label31
	ld.b $t0, $fp, -94
	bnez $t0, .my_getint_label23
	b .my_getint_label31
.my_getint_label23:
# %op24 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -100
# %op25 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op26 = sub i32  %op24, %op25
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -104
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# store i32  %op26, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op28 = icmp sge i32  %op27, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -113
# %op29 = zext i1  %op28 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op30 = icmp ne i32  %op29, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -121
# br i1  %op30, label %label40, label %label38
	ld.b $t0, $fp, -121
	bnez $t0, .my_getint_label40
	b .my_getint_label38
.my_getint_label31:
# %op32 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# ret i32  %op32
	ld.w $a0, $fp, -128
	b my_getint_ret
.my_getint_label33:
# %op34 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op35 = mul i32  %op34, 10
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op36 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op37 = add i32  %op35, %op36
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -140
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op37, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# br label %label39
	b .my_getint_label39
.my_getint_label38:
# br label %label31
	b .my_getint_label31
.my_getint_label39:
# br label %label21
	b .my_getint_label21
.my_getint_label40:
# %op41 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op42 = icmp sle i32  %op41, 9
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 9
	bge  $t1, $t0, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -149
# %op43 = zext i1  %op42 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op44 = icmp ne i32  %op43, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -157
# br i1  %op44, label %label33, label %label38
	ld.b $t0, $fp, -157
	bnez $t0, .my_getint_label33
	b .my_getint_label38
my_getint_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl my_putint
	.type my_putint, @function
my_putint:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
	st.w $a0, $fp, -20
.my_putint_label_entry:
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
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = alloca [16 x i32 ]
	addi.d $t1, $fp, -128
	st.d $t1, $fp, -64
# br label %label4
	b .my_putint_label4
.my_putint_label4:
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op6 = icmp sgt i32  %op5, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -133
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -141
# br i1  %op8, label %label9, label %label20
	ld.b $t0, $fp, -141
	bnez $t0, .my_putint_label9
	b .my_putint_label20
.my_putint_label9:
# %op10 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op11 = srem i32  %op10, 10
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 10
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op12 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op13 = add i32  %op11, %op12
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op14 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op15 = getelementptr [16 x i32 ], [16 x i32 ]* %op3, i32  0, i32  %op14
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  %op13, i32 * %op15
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op17 = sdiv i32  %op16, 10
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 10
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# store i32  %op17, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op19 = add i32  %op18, 1
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# store i32  %op19, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -192
	st.w $t1, $t0, 0
# br label %label4
	b .my_putint_label4
.my_putint_label20:
# br label %label21
	b .my_putint_label21
.my_putint_label21:
# %op22 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op23 = icmp sgt i32  %op22, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -197
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -205
# br i1  %op25, label %label26, label %label32
	ld.b $t0, $fp, -205
	bnez $t0, .my_putint_label26
	b .my_putint_label32
.my_putint_label26:
# %op27 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op28 = sub i32  %op27, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op28, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op30 = getelementptr [16 x i32 ], [16 x i32 ]* %op3, i32  0, i32  %op29
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -220
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -232
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# call void @putch(i32  %op31)
	ld.w $a0, $fp, -236
	bl putch
# br label %label21
	b .my_putint_label21
.my_putint_label32:
# ret void
	addi.d $a0, $zero, 0
	b my_putint_ret
my_putint_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = call i32  @my_getint()
	bl my_getint
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
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -45
# br i1  %op6, label %label7, label %label13
	ld.b $t0, $fp, -45
	bnez $t0, .main_label7
	b .main_label13
.main_label7:
# %op8 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op9 = call i32  @my_getint()
	bl my_getint
	st.w $a0, $fp, -64
# store i32  %op9, i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# call void @my_putint(i32  %op10)
	ld.w $a0, $fp, -68
	bl my_putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op11 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op12 = sub i32  %op11, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# store i32  %op12, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label13:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
