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
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
.init_label_entry:
# br label %label1
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -24
	b .init_label1
.init_label1:
# %op2 = phi i32  [ 1, %label_entry ], [ %op10, %label8 ]
# %op3 = mul i32  %arg0, %arg0
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -20
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# %op4 = add i32  %op3, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op5 = icmp sle i32  %op2, %op4
	ld.w $t0, $fp, -24
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
# br i1  %op7, label %label8, label %label11
	ld.b $t0, $fp, -41
	bnez $t0, .init_label8
	b .init_label11
.init_label8:
# %op9 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op2
	la.local $t0, array
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# store i32  -1, i32 * %op9
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# %op10 = add i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# br label %label1
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -24
	b .init_label1
.init_label11:
# ret void
	addi.d $a0, $zero, 0
	b init_ret
init_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl findfa
	.type findfa, @function
findfa:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.w $a0, $fp, -20
.findfa_label_entry:
# %op1 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %arg0
	la.local $t0, array
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -32
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = icmp eq i32  %op2, %arg0
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -20
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -37
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -45
# br i1  %op5, label %label6, label %label7
	ld.b $t0, $fp, -45
	bnez $t0, .findfa_label6
	b .findfa_label7
.findfa_label6:
# ret i32  %arg0
	ld.w $a0, $fp, -20
	b findfa_ret
.findfa_label7:
# %op8 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %arg0
	la.local $t0, array
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op10 = call i32  @findfa(i32  %op9)
	ld.w $a0, $fp, -60
	bl findfa
	st.w $a0, $fp, -64
# %op11 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %arg0
	la.local $t0, array
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# store i32  %op10, i32 * %op11
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op12 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %arg0
	la.local $t0, array
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -80
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# ret i32  %op13
	ld.w $a0, $fp, -84
	b findfa_ret
findfa_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl mmerge
	.type mmerge, @function
mmerge:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.mmerge_label_entry:
# %op2 = call i32  @findfa(i32  %arg0)
	ld.w $a0, $fp, -20
	bl findfa
	st.w $a0, $fp, -28
# %op3 = call i32  @findfa(i32  %arg1)
	ld.w $a0, $fp, -24
	bl findfa
	st.w $a0, $fp, -32
# %op4 = icmp ne i32  %op2, %op3
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -41
# br i1  %op6, label %label7, label %label9
	ld.b $t0, $fp, -41
	bnez $t0, .mmerge_label7
	b .mmerge_label9
.mmerge_label7:
# %op8 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op2
	la.local $t0, array
	ld.w $t1, $fp, -28
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# store i32  %op3, i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# br label %label9
	b .mmerge_label9
.mmerge_label9:
# ret void
	addi.d $a0, $zero, 0
	b mmerge_ret
mmerge_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -448
.main_label_entry:
# br label %label0
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -20
	b .main_label0
.main_label0:
# %op1 = phi i32  [ 1, %label_entry ], [ %op4, %label125 ]
# %op2 = icmp ne i32  %op1, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -21
# br i1  %op2, label %label3, label %label10
	ld.b $t0, $fp, -21
	bnez $t0, .main_label3
	b .main_label10
.main_label3:
# %op4 = sub i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# store i32  4, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# call void @init(i32  %op5)
	ld.w $a0, $fp, -32
	bl init
# %op6 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op7 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op8 = mul i32  %op6, %op7
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -40
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op9 = add i32  %op8, 1
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# br label %label11
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -52
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -56
	b .main_label11
.main_label10:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label11:
# %op12 = phi i32  [ 0, %label3 ], [ %op33, %label32 ]
# %op13 = phi i32  [ 0, %label3 ], [ %op34, %label32 ]
# %op14 = icmp slt i32  %op13, 10
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -57
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -65
# br i1  %op16, label %label17, label %label21
	ld.b $t0, $fp, -65
	bnez $t0, .main_label17
	b .main_label21
.main_label17:
# %op18 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -72
# %op19 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -76
# %op20 = icmp eq i32  %op12, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -77
# br i1  %op20, label %label23, label %label32
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -120
	ld.b $t0, $fp, -77
	bnez $t0, .main_label23
	b .main_label32
.main_label21:
# %op22 = icmp eq i32  %op12, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -78
# br i1  %op22, label %label124, label %label125
	ld.b $t0, $fp, -78
	bnez $t0, .main_label124
	b .main_label125
.main_label23:
# %op24 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op25 = sub i32  %op18, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op26 = mul i32  %op24, %op25
	ld.w $t0, $fp, -84
	ld.w $t1, $fp, -88
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op27 = add i32  %op26, %op19
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op28 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op27
	la.local $t0, array
	ld.w $t1, $fp, -96
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -104
# store i32  %op27, i32 * %op28
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op29 = icmp eq i32  %op18, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -105
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -105
	st.w $t0, $fp, -112
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -113
# br i1  %op31, label %label35, label %label37
	ld.b $t0, $fp, -113
	bnez $t0, .main_label35
	b .main_label37
.main_label32:
# %op33 = phi i32  [ %op12, %label17 ], [ %op111, %label110 ]
# %op34 = add i32  %op13, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# br label %label11
	ld.w $t0, $fp, -120
	st.w $t0, $fp, -52
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -56
	b .main_label11
.main_label35:
# %op36 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
	la.local $t0, array
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -136
# store i32  0, i32 * %op36
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# call void @mmerge(i32  %op27, i32  0)
	ld.w $a0, $fp, -96
	addi.w $a1, $zero, 0
	bl mmerge
# br label %label37
	b .main_label37
.main_label37:
# %op38 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op39 = icmp eq i32  %op18, %op38
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -140
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -141
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -149
# br i1  %op41, label %label42, label %label44
	ld.b $t0, $fp, -149
	bnez $t0, .main_label42
	b .main_label44
.main_label42:
# %op43 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op9
	la.local $t0, array
	ld.w $t1, $fp, -48
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# store i32  %op9, i32 * %op43
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# call void @mmerge(i32  %op27, i32  %op9)
	ld.w $a0, $fp, -96
	ld.w $a1, $fp, -48
	bl mmerge
# br label %label44
	b .main_label44
.main_label44:
# %op45 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op46 = icmp slt i32  %op19, %op45
	ld.w $t0, $fp, -76
	ld.w $t1, $fp, -164
	slt $t2, $t0, $t1
	st.b $t2, $fp, -165
# %op47 = zext i1  %op46 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op48 = icmp ne i32  %op47, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -173
# br i1  %op48, label %label55, label %label51
	ld.b $t0, $fp, -173
	bnez $t0, .main_label55
	b .main_label51
.main_label49:
# %op50 = add i32  %op27, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# call void @mmerge(i32  %op27, i32  %op50)
	ld.w $a0, $fp, -96
	ld.w $a1, $fp, -180
	bl mmerge
# br label %label51
	b .main_label51
.main_label51:
# %op52 = icmp sgt i32  %op19, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -181
# %op53 = zext i1  %op52 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op54 = icmp ne i32  %op53, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -189
# br i1  %op54, label %label69, label %label64
	ld.b $t0, $fp, -189
	bnez $t0, .main_label69
	b .main_label64
.main_label55:
# %op56 = add i32  %op27, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op57 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op56
	la.local $t0, array
	ld.w $t1, $fp, -196
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op58 = load i32 , i32 * %op57
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op59 = icmp ne i32  %op58, -1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -213
# %op60 = zext i1  %op59 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op61 = icmp ne i32  %op60, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -221
# br i1  %op61, label %label49, label %label51
	ld.b $t0, $fp, -221
	bnez $t0, .main_label49
	b .main_label51
.main_label62:
# %op63 = sub i32  %op27, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# call void @mmerge(i32  %op27, i32  %op63)
	ld.w $a0, $fp, -96
	ld.w $a1, $fp, -228
	bl mmerge
# br label %label64
	b .main_label64
.main_label64:
# %op65 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op66 = icmp slt i32  %op18, %op65
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -232
	slt $t2, $t0, $t1
	st.b $t2, $fp, -233
# %op67 = zext i1  %op66 to i32 
	ld.b $t0, $fp, -233
	st.w $t0, $fp, -240
# %op68 = icmp ne i32  %op67, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -241
# br i1  %op68, label %label83, label %label79
	ld.b $t0, $fp, -241
	bnez $t0, .main_label83
	b .main_label79
.main_label69:
# %op70 = sub i32  %op27, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# %op71 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op70
	la.local $t0, array
	ld.w $t1, $fp, -248
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# %op72 = load i32 , i32 * %op71
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op73 = icmp ne i32  %op72, -1
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -261
# %op74 = zext i1  %op73 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op75 = icmp ne i32  %op74, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -269
# br i1  %op75, label %label62, label %label64
	ld.b $t0, $fp, -269
	bnez $t0, .main_label62
	b .main_label64
.main_label76:
# %op77 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op78 = add i32  %op27, %op77
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -276
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# call void @mmerge(i32  %op27, i32  %op78)
	ld.w $a0, $fp, -96
	ld.w $a1, $fp, -280
	bl mmerge
# br label %label79
	b .main_label79
.main_label79:
# %op80 = icmp sgt i32  %op18, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -281
# %op81 = zext i1  %op80 to i32 
	ld.b $t0, $fp, -281
	st.w $t0, $fp, -288
# %op82 = icmp ne i32  %op81, 0
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -289
# br i1  %op82, label %label100, label %label94
	ld.b $t0, $fp, -289
	bnez $t0, .main_label100
	b .main_label94
.main_label83:
# %op84 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op85 = add i32  %op27, %op84
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -296
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# %op86 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op85
	la.local $t0, array
	ld.w $t1, $fp, -300
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op87 = load i32 , i32 * %op86
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op88 = icmp ne i32  %op87, -1
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -317
# %op89 = zext i1  %op88 to i32 
	ld.b $t0, $fp, -317
	st.w $t0, $fp, -324
# %op90 = icmp ne i32  %op89, 0
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -325
# br i1  %op90, label %label76, label %label79
	ld.b $t0, $fp, -325
	bnez $t0, .main_label76
	b .main_label79
.main_label91:
# %op92 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op93 = sub i32  %op27, %op92
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -332
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# call void @mmerge(i32  %op27, i32  %op93)
	ld.w $a0, $fp, -96
	ld.w $a1, $fp, -336
	bl mmerge
# br label %label94
	b .main_label94
.main_label94:
# %op95 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  0
	la.local $t0, array
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -344
# %op96 = load i32 , i32 * %op95
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op97 = icmp ne i32  %op96, -1
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -349
# %op98 = zext i1  %op97 to i32 
	ld.b $t0, $fp, -349
	st.w $t0, $fp, -356
# %op99 = icmp ne i32  %op98, 0
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -357
# br i1  %op99, label %label118, label %label110
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -400
	ld.b $t0, $fp, -357
	bnez $t0, .main_label118
	b .main_label110
.main_label100:
# %op101 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op102 = sub i32  %op27, %op101
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -364
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op103 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op102
	la.local $t0, array
	ld.w $t1, $fp, -368
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# %op104 = load i32 , i32 * %op103
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op105 = icmp ne i32  %op104, -1
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -381
# %op106 = zext i1  %op105 to i32 
	ld.b $t0, $fp, -381
	st.w $t0, $fp, -388
# %op107 = icmp ne i32  %op106, 0
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -389
# br i1  %op107, label %label91, label %label94
	ld.b $t0, $fp, -389
	bnez $t0, .main_label91
	b .main_label94
.main_label108:
# %op109 = add i32  %op13, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -396
# call void @putint(i32  %op109)
	ld.w $a0, $fp, -396
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label110
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -400
	b .main_label110
.main_label110:
# %op111 = phi i32  [ %op12, %label94 ], [ %op12, %label118 ], [ %op12, %label112 ], [ 1, %label108 ]
# br label %label32
	ld.w $t0, $fp, -400
	st.w $t0, $fp, -120
	b .main_label32
.main_label112:
# %op113 = call i32  @findfa(i32  0)
	addi.w $a0, $zero, 0
	bl findfa
	st.w $a0, $fp, -404
# %op114 = call i32  @findfa(i32  %op9)
	ld.w $a0, $fp, -48
	bl findfa
	st.w $a0, $fp, -408
# %op115 = icmp eq i32  %op113, %op114
	ld.w $t0, $fp, -404
	ld.w $t1, $fp, -408
	beq  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -409
# %op116 = zext i1  %op115 to i32 
	ld.b $t0, $fp, -409
	st.w $t0, $fp, -416
# %op117 = icmp ne i32  %op116, 0
	ld.w $t0, $fp, -416
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -417
# br i1  %op117, label %label108, label %label110
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -400
	ld.b $t0, $fp, -417
	bnez $t0, .main_label108
	b .main_label110
.main_label118:
# %op119 = getelementptr [110 x i32 ], [110 x i32 ]* @array, i32  0, i32  %op9
	la.local $t0, array
	ld.w $t1, $fp, -48
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -432
# %op120 = load i32 , i32 * %op119
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op121 = icmp ne i32  %op120, -1
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, -1
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -437
# %op122 = zext i1  %op121 to i32 
	ld.b $t0, $fp, -437
	st.w $t0, $fp, -444
# %op123 = icmp ne i32  %op122, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -445
# br i1  %op123, label %label112, label %label110
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -400
	ld.b $t0, $fp, -445
	bnez $t0, .main_label112
	b .main_label110
.main_label124:
# call void @putint(i32  -1)
	addi.w $a0, $zero, -1
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label125
	b .main_label125
.main_label125:
# br label %label0
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -20
	b .main_label0
main_ret:
	addi.d $sp, $sp, 448
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
