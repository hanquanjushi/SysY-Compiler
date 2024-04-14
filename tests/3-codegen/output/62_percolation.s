# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl array
	.type array, @object
	.size array, 440
array:
	.space 440
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl init
	.type init, @function
init:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
.init_label_entry:
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
	b .init_label3
.init_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op7 = mul i32  %op5, %op6
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -64
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op8 = add i32  %op7, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op9 = icmp sle i32  %op4, %op8
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -72
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -73
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -81
# br i1  %op11, label %label12, label %label17
	ld.b $t0, $fp, -81
	bnez $t0, .init_label12
	b .init_label17
.init_label12:
# %op13 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op14 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op13
	la.local $t0, array
	ld.w $t1, $fp, -88
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -96
# store i32  -1, i32 * %op14
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op16 = add i32  %op15, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op16, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label3
	b .init_label3
.init_label17:
# ret void
	addi.d $a0, $zero, 0
	b init_ret
init_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl findfa
	.type findfa, @function
findfa:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.w $a0, $fp, -20
.findfa_label_entry:
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
# %op3 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op2
	la.local $t0, array
	ld.w $t1, $fp, -40
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op6 = icmp eq i32  %op4, %op5
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -56
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -57
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op8, label %label9, label %label11
	ld.b $t0, $fp, -65
	bnez $t0, .findfa_label9
	b .findfa_label11
.findfa_label9:
# %op10 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# ret i32  %op10
	ld.w $a0, $fp, -72
	b findfa_ret
.findfa_label11:
# %op12 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op13 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op12
	la.local $t0, array
	ld.w $t1, $fp, -76
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op15 = call i32  @findfa(i32  %op14)
	ld.w $a0, $fp, -92
	bl findfa
	st.w $a0, $fp, -96
# %op16 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op17 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op16
	la.local $t0, array
	ld.w $t1, $fp, -100
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# store i32  %op15, i32 * %op17
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op19 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op18
	la.local $t0, array
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# ret i32  %op20
	ld.w $a0, $fp, -132
	b findfa_ret
findfa_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl mmerge
	.type mmerge, @function
mmerge:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.mmerge_label_entry:
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
# %op4 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# %op5 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op6 = call i32  @findfa(i32  %op5)
	ld.w $a0, $fp, -72
	bl findfa
	st.w $a0, $fp, -76
# store i32  %op6, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op8 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op9 = call i32  @findfa(i32  %op8)
	ld.w $a0, $fp, -96
	bl findfa
	st.w $a0, $fp, -100
# store i32  %op9, i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op11 = load i32 , i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op12 = icmp ne i32  %op10, %op11
	ld.w $t0, $fp, -104
	ld.w $t1, $fp, -108
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -109
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -117
# br i1  %op14, label %label15, label %label19
	ld.b $t0, $fp, -117
	bnez $t0, .mmerge_label15
	b .mmerge_label19
.mmerge_label15:
# %op16 = load i32 , i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op18 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op17
	la.local $t0, array
	ld.w $t1, $fp, -128
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -136
# store i32  %op16, i32 * %op18
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# br label %label19
	b .mmerge_label19
.mmerge_label19:
# ret void
	addi.d $a0, $zero, 0
	b mmerge_ret
mmerge_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -720
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# %op2 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op3 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label4
	b .main_label4
.main_label4:
# %op5 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -81
# br i1  %op6, label %label7, label %label18
	ld.b $t0, $fp, -81
	bnez $t0, .main_label7
	b .main_label18
.main_label7:
# %op8 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op9 = sub i32  %op8, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# store i32  %op9, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# store i32  4, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  10, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op10 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# call void @init(i32  %op12)
	ld.w $a0, $fp, -128
	bl init
# %op13 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# %op14 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op16 = mul i32  %op14, %op15
	ld.w $t0, $fp, -144
	ld.w $t1, $fp, -148
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op17 = add i32  %op16, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# store i32  %op17, i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# br label %label19
	b .main_label19
.main_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label19:
# %op20 = load i32 , i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op21 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op22 = icmp slt i32  %op20, %op21
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	slt $t2, $t0, $t1
	st.b $t2, $fp, -165
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -173
# br i1  %op24, label %label25, label %label30
	ld.b $t0, $fp, -173
	bnez $t0, .main_label25
	b .main_label30
.main_label25:
# %op26 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -180
# store i32  %op26, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -180
	st.w $t1, $t0, 0
# %op27 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -184
# store i32  %op27, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# %op28 = load i32 , i32 * %op11
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op29 = icmp eq i32  %op28, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -189
# br i1  %op29, label %label33, label %label48
	ld.b $t0, $fp, -189
	bnez $t0, .main_label33
	b .main_label48
.main_label30:
# %op31 = load i32 , i32 * %op11
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op32 = icmp eq i32  %op31, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -197
# br i1  %op32, label %label166, label %label167
	ld.b $t0, $fp, -197
	bnez $t0, .main_label166
	b .main_label167
.main_label33:
# %op34 = alloca i32 
	addi.d $t1, $fp, -212
	st.d $t1, $fp, -208
# %op35 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op36 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op37 = sub i32  %op36, 1
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# %op38 = mul i32  %op35, %op37
	ld.w $t0, $fp, -216
	ld.w $t1, $fp, -224
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# %op39 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op40 = add i32  %op38, %op39
	ld.w $t0, $fp, -228
	ld.w $t1, $fp, -232
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# store i32  %op40, i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op42 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op43 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op42
	la.local $t0, array
	ld.w $t1, $fp, -244
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# store i32  %op41, i32 * %op43
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -240
	st.w $t1, $t0, 0
# %op44 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op45 = icmp eq i32  %op44, 1
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -261
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -269
# br i1  %op47, label %label51, label %label54
	ld.b $t0, $fp, -269
	bnez $t0, .main_label51
	b .main_label54
.main_label48:
# %op49 = load i32 , i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op50 = add i32  %op49, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32  %op50, i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# br label %label19
	b .main_label19
.main_label51:
# %op52 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
	la.local $t0, array
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -288
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# call void @mmerge(i32  %op53, i32  0)
	ld.w $a0, $fp, -292
	addi.w $a1, $zero, 0
	bl mmerge
# br label %label54
	b .main_label54
.main_label54:
# %op55 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op56 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op57 = icmp eq i32  %op55, %op56
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -300
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -301
# %op58 = zext i1  %op57 to i32 
	ld.b $t0, $fp, -301
	st.w $t0, $fp, -308
# %op59 = icmp ne i32  %op58, 0
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -309
# br i1  %op59, label %label60, label %label66
	ld.b $t0, $fp, -309
	bnez $t0, .main_label60
	b .main_label66
.main_label60:
# %op61 = load i32 , i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op62 = load i32 , i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op63 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op62
	la.local $t0, array
	ld.w $t1, $fp, -320
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# store i32  %op61, i32 * %op63
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -316
	st.w $t1, $t0, 0
# %op64 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op65 = load i32 , i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# call void @mmerge(i32  %op64, i32  %op65)
	ld.w $a0, $fp, -332
	ld.w $a1, $fp, -336
	bl mmerge
# br label %label66
	b .main_label66
.main_label66:
# %op67 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op68 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op69 = icmp slt i32  %op67, %op68
	ld.w $t0, $fp, -340
	ld.w $t1, $fp, -344
	slt $t2, $t0, $t1
	st.b $t2, $fp, -345
# %op70 = zext i1  %op69 to i32 
	ld.b $t0, $fp, -345
	st.w $t0, $fp, -352
# %op71 = icmp ne i32  %op70, 0
	ld.w $t0, $fp, -352
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -353
# br i1  %op71, label %label81, label %label76
	ld.b $t0, $fp, -353
	bnez $t0, .main_label81
	b .main_label76
.main_label72:
# %op73 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op74 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op75 = add i32  %op74, 1
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# call void @mmerge(i32  %op73, i32  %op75)
	ld.w $a0, $fp, -360
	ld.w $a1, $fp, -368
	bl mmerge
# br label %label76
	b .main_label76
.main_label76:
# %op77 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op78 = icmp sgt i32  %op77, 1
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -373
# %op79 = zext i1  %op78 to i32 
	ld.b $t0, $fp, -373
	st.w $t0, $fp, -380
# %op80 = icmp ne i32  %op79, 0
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -381
# br i1  %op80, label %label99, label %label93
	ld.b $t0, $fp, -381
	bnez $t0, .main_label99
	b .main_label93
.main_label81:
# %op82 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op83 = add i32  %op82, 1
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op84 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op83
	la.local $t0, array
	ld.w $t1, $fp, -392
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -400
# %op85 = load i32 , i32 * %op84
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op86 = icmp ne i32  %op85, -1
	ld.w $t0, $fp, -404
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -405
# %op87 = zext i1  %op86 to i32 
	ld.b $t0, $fp, -405
	st.w $t0, $fp, -412
# %op88 = icmp ne i32  %op87, 0
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -413
# br i1  %op88, label %label72, label %label76
	ld.b $t0, $fp, -413
	bnez $t0, .main_label72
	b .main_label76
.main_label89:
# %op90 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op91 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op92 = sub i32  %op91, 1
	ld.w $t0, $fp, -424
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -428
# call void @mmerge(i32  %op90, i32  %op92)
	ld.w $a0, $fp, -420
	ld.w $a1, $fp, -428
	bl mmerge
# br label %label93
	b .main_label93
.main_label93:
# %op94 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op95 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op96 = icmp slt i32  %op94, %op95
	ld.w $t0, $fp, -432
	ld.w $t1, $fp, -436
	slt $t2, $t0, $t1
	st.b $t2, $fp, -437
# %op97 = zext i1  %op96 to i32 
	ld.b $t0, $fp, -437
	st.w $t0, $fp, -444
# %op98 = icmp ne i32  %op97, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -445
# br i1  %op98, label %label117, label %label112
	ld.b $t0, $fp, -445
	bnez $t0, .main_label117
	b .main_label112
.main_label99:
# %op100 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op101 = sub i32  %op100, 1
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -456
# %op102 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op101
	la.local $t0, array
	ld.w $t1, $fp, -456
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -464
# %op103 = load i32 , i32 * %op102
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op104 = icmp ne i32  %op103, -1
	ld.w $t0, $fp, -468
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -469
# %op105 = zext i1  %op104 to i32 
	ld.b $t0, $fp, -469
	st.w $t0, $fp, -476
# %op106 = icmp ne i32  %op105, 0
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -477
# br i1  %op106, label %label89, label %label93
	ld.b $t0, $fp, -477
	bnez $t0, .main_label89
	b .main_label93
.main_label107:
# %op108 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op109 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# %op110 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op111 = add i32  %op109, %op110
	ld.w $t0, $fp, -488
	ld.w $t1, $fp, -492
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -496
# call void @mmerge(i32  %op108, i32  %op111)
	ld.w $a0, $fp, -484
	ld.w $a1, $fp, -496
	bl mmerge
# br label %label112
	b .main_label112
.main_label112:
# %op113 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op114 = icmp sgt i32  %op113, 1
	ld.w $t0, $fp, -500
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -501
# %op115 = zext i1  %op114 to i32 
	ld.b $t0, $fp, -501
	st.w $t0, $fp, -508
# %op116 = icmp ne i32  %op115, 0
	ld.w $t0, $fp, -508
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -509
# br i1  %op116, label %label137, label %label131
	ld.b $t0, $fp, -509
	bnez $t0, .main_label137
	b .main_label131
.main_label117:
# %op118 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op119 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op120 = add i32  %op118, %op119
	ld.w $t0, $fp, -516
	ld.w $t1, $fp, -520
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -524
# %op121 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op120
	la.local $t0, array
	ld.w $t1, $fp, -524
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -536
# %op122 = load i32 , i32 * %op121
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op123 = icmp ne i32  %op122, -1
	ld.w $t0, $fp, -540
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -541
# %op124 = zext i1  %op123 to i32 
	ld.b $t0, $fp, -541
	st.w $t0, $fp, -548
# %op125 = icmp ne i32  %op124, 0
	ld.w $t0, $fp, -548
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -549
# br i1  %op125, label %label107, label %label112
	ld.b $t0, $fp, -549
	bnez $t0, .main_label107
	b .main_label112
.main_label126:
# %op127 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op128 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op129 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op130 = sub i32  %op128, %op129
	ld.w $t0, $fp, -560
	ld.w $t1, $fp, -564
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -568
# call void @mmerge(i32  %op127, i32  %op130)
	ld.w $a0, $fp, -556
	ld.w $a1, $fp, -568
	bl mmerge
# br label %label131
	b .main_label131
.main_label131:
# %op132 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
	la.local $t0, array
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -576
# %op133 = load i32 , i32 * %op132
	ld.d $t0, $fp, -576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op134 = icmp ne i32  %op133, -1
	ld.w $t0, $fp, -580
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -581
# %op135 = zext i1  %op134 to i32 
	ld.b $t0, $fp, -581
	st.w $t0, $fp, -588
# %op136 = icmp ne i32  %op135, 0
	ld.w $t0, $fp, -588
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -589
# br i1  %op136, label %label159, label %label151
	ld.b $t0, $fp, -589
	bnez $t0, .main_label159
	b .main_label151
.main_label137:
# %op138 = load i32 , i32 * %op34
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op139 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -600
# %op140 = sub i32  %op138, %op139
	ld.w $t0, $fp, -596
	ld.w $t1, $fp, -600
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -604
# %op141 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op140
	la.local $t0, array
	ld.w $t1, $fp, -604
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -616
# %op142 = load i32 , i32 * %op141
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op143 = icmp ne i32  %op142, -1
	ld.w $t0, $fp, -620
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -621
# %op144 = zext i1  %op143 to i32 
	ld.b $t0, $fp, -621
	st.w $t0, $fp, -628
# %op145 = icmp ne i32  %op144, 0
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -629
# br i1  %op145, label %label126, label %label131
	ld.b $t0, $fp, -629
	bnez $t0, .main_label126
	b .main_label131
.main_label146:
# store i32  1, i32 * %op11
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op147 = alloca i32 
	addi.d $t1, $fp, -644
	st.d $t1, $fp, -640
# %op148 = load i32 , i32 * %op10
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -648
# %op149 = add i32  %op148, 1
	ld.w $t0, $fp, -648
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -652
# store i32  %op149, i32 * %op147
	ld.d $t0, $fp, -640
	ld.w $t1, $fp, -652
	st.w $t1, $t0, 0
# %op150 = load i32 , i32 * %op147
	ld.d $t0, $fp, -640
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# call void @putint(i32  %op150)
	ld.w $a0, $fp, -656
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label151
	b .main_label151
.main_label151:
# br label %label48
	b .main_label48
.main_label152:
# %op153 = call i32  @findfa(i32  0)
	addi.w $a0, $zero, 0
	bl findfa
	st.w $a0, $fp, -660
# %op154 = load i32 , i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -664
# %op155 = call i32  @findfa(i32  %op154)
	ld.w $a0, $fp, -664
	bl findfa
	st.w $a0, $fp, -668
# %op156 = icmp eq i32  %op153, %op155
	ld.w $t0, $fp, -660
	ld.w $t1, $fp, -668
	beq  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -669
# %op157 = zext i1  %op156 to i32 
	ld.b $t0, $fp, -669
	st.w $t0, $fp, -676
# %op158 = icmp ne i32  %op157, 0
	ld.w $t0, $fp, -676
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -677
# br i1  %op158, label %label146, label %label151
	ld.b $t0, $fp, -677
	bnez $t0, .main_label146
	b .main_label151
.main_label159:
# %op160 = load i32 , i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op161 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op160
	la.local $t0, array
	ld.w $t1, $fp, -684
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -696
# %op162 = load i32 , i32 * %op161
	ld.d $t0, $fp, -696
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op163 = icmp ne i32  %op162, -1
	ld.w $t0, $fp, -700
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -701
# %op164 = zext i1  %op163 to i32 
	ld.b $t0, $fp, -701
	st.w $t0, $fp, -708
# %op165 = icmp ne i32  %op164, 0
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -709
# br i1  %op165, label %label152, label %label151
	ld.b $t0, $fp, -709
	bnez $t0, .main_label152
	b .main_label151
.main_label166:
# call void @putint(i32  -1)
	addi.w $a0, $zero, -1
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label167
	b .main_label167
.main_label167:
# br label %label4
	b .main_label4
main_ret:
	addi.d $sp, $sp, 720
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
