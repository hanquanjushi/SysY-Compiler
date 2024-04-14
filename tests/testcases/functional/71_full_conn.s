	.text
	.globl relu_reg
	.type relu_reg, @function
relu_reg:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.w $a0, $fp, -20
.relu_reg_label_entry:
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
# %op3 = icmp sgt i32  %op2, 127
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 127
	slt $t2, $t1, $t0
	st.b $t2, $fp, -41
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -49
# br i1  %op5, label %label6, label %label7
	ld.b $t0, $fp, -49
	bnez $t0, .relu_reg_label6
	b .relu_reg_label7
.relu_reg_label6:
# ret i32  127
	addi.w $a0, $zero, 127
	b relu_reg_ret
.relu_reg_label7:
# %op8 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op9 = icmp slt i32  %op8, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -57
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op11, label %label12, label %label13
	ld.b $t0, $fp, -65
	bnez $t0, .relu_reg_label12
	b .relu_reg_label13
.relu_reg_label12:
# ret i32  0
	addi.w $a0, $zero, 0
	b relu_reg_ret
.relu_reg_label13:
# %op14 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# ret i32  %op14
	ld.w $a0, $fp, -72
	b relu_reg_ret
relu_reg_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl model
	.type model, @function
model:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
	st.d $a0, $fp, -24
.model_label_entry:
# %op1 = alloca i32 *
	addi.d $t1, $fp, -40
	st.d $t1, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -48
# %op3 = getelementptr i32 , i32 * %op2, i32  0
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op5 = mul i32  %op4, 85
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 85
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op6 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -72
# %op7 = getelementptr i32 , i32 * %op6, i32  0
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op8 = load i32 , i32 * %op7
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op9 = mul i32  %op8, 23
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 23
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op10 = add i32  %op5, %op9
	ld.w $t0, $fp, -64
	ld.w $t1, $fp, -88
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op11 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -104
# %op12 = getelementptr i32 , i32 * %op11, i32  0
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op14 = mul i32  %op13, -82
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, -82
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op15 = add i32  %op10, %op14
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -120
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op16 = call i32  @relu_reg(i32  %op15)
	ld.w $a0, $fp, -124
	bl relu_reg
	st.w $a0, $fp, -128
# %op17 = mul i32  %op16, 39
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 39
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op18 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op19 = getelementptr i32 , i32 * %op18, i32  0
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op21 = mul i32  %op20, -106
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, -106
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op22 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -168
# %op23 = getelementptr i32 , i32 * %op22, i32  0
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op25 = mul i32  %op24, 126
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 126
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op26 = add i32  %op21, %op25
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -184
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op27 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op28 = getelementptr i32 , i32 * %op27, i32  0
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op30 = mul i32  %op29, -18
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, -18
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# %op31 = add i32  %op26, %op30
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -216
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op32 = call i32  @relu_reg(i32  %op31)
	ld.w $a0, $fp, -220
	bl relu_reg
	st.w $a0, $fp, -224
# %op33 = mul i32  %op32, 77
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 77
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# %op34 = add i32  %op17, %op33
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -228
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# %op35 = icmp sgt i32  %op34, 0
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -233
# %op36 = zext i1  %op35 to i32 
	ld.b $t0, $fp, -233
	st.w $t0, $fp, -240
# %op37 = icmp ne i32  %op36, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -241
# br i1  %op37, label %label38, label %label39
	ld.b $t0, $fp, -241
	bnez $t0, .model_label38
	b .model_label39
.model_label38:
# ret i32  1
	addi.w $a0, $zero, 1
	b model_ret
.model_label39:
# ret i32  0
	addi.w $a0, $zero, 0
	b model_ret
model_ret:
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
	addi.d $sp, $sp, -144
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
# %op2 = alloca [5 x [5 x i32 ]]
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -40
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
