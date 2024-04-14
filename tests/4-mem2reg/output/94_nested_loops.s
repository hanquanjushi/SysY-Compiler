# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl arr1
	.type arr1, @object
	.size arr1, 57600
arr1:
	.space 57600
	.globl arr2
	.type arr2, @object
	.size arr2, 107520
arr2:
	.space 107520
	.text
	.globl loop1
	.type loop1, @function
loop1:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -272
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.loop1_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -28
	b .loop1_label2
.loop1_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op20, %label19 ]
# %op4 = icmp slt i32  %op3, %arg0
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -29
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -37
# br i1  %op6, label %label9, label %label8
	ld.b $t0, $fp, -37
	bnez $t0, .loop1_label9
	b .loop1_label8
.loop1_label7:
# br label %label13
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -52
	b .loop1_label13
.loop1_label8:
# ret void
	addi.d $a0, $zero, 0
	b loop1_ret
.loop1_label9:
# %op10 = icmp slt i32  %op3, %arg1
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -24
	slt $t2, $t0, $t1
	st.b $t2, $fp, -38
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -38
	st.w $t0, $fp, -44
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -45
# br i1  %op12, label %label7, label %label8
	ld.b $t0, $fp, -45
	bnez $t0, .loop1_label7
	b .loop1_label8
.loop1_label13:
# %op14 = phi i32  [ 0, %label7 ], [ %op28, %label27 ]
# %op15 = icmp slt i32  %op14, 2
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -53
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -61
# br i1  %op17, label %label18, label %label19
	ld.b $t0, $fp, -61
	bnez $t0, .loop1_label18
	b .loop1_label19
.loop1_label18:
# br label %label21
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -72
	b .loop1_label21
.loop1_label19:
# %op20 = add i32  %op3, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# br label %label2
	ld.w $t0, $fp, -68
	st.w $t0, $fp, -28
	b .loop1_label2
.loop1_label21:
# %op22 = phi i32  [ 0, %label18 ], [ %op36, %label35 ]
# %op23 = icmp slt i32  %op22, 3
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -73
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -81
# br i1  %op25, label %label26, label %label27
	ld.b $t0, $fp, -81
	bnez $t0, .loop1_label26
	b .loop1_label27
.loop1_label26:
# br label %label29
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -92
	b .loop1_label29
.loop1_label27:
# %op28 = add i32  %op14, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# br label %label13
	ld.w $t0, $fp, -88
	st.w $t0, $fp, -52
	b .loop1_label13
.loop1_label29:
# %op30 = phi i32  [ 0, %label26 ], [ %op44, %label43 ]
# %op31 = icmp slt i32  %op30, 4
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 4
	slt $t2, $t0, $t1
	st.b $t2, $fp, -93
# %op32 = zext i1  %op31 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -101
# br i1  %op33, label %label34, label %label35
	ld.b $t0, $fp, -101
	bnez $t0, .loop1_label34
	b .loop1_label35
.loop1_label34:
# br label %label37
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -112
	b .loop1_label37
.loop1_label35:
# %op36 = add i32  %op22, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# br label %label21
	ld.w $t0, $fp, -108
	st.w $t0, $fp, -72
	b .loop1_label21
.loop1_label37:
# %op38 = phi i32  [ 0, %label34 ], [ %op52, %label51 ]
# %op39 = icmp slt i32  %op38, 5
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 5
	slt $t2, $t0, $t1
	st.b $t2, $fp, -113
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -121
# br i1  %op41, label %label42, label %label43
	ld.b $t0, $fp, -121
	bnez $t0, .loop1_label42
	b .loop1_label43
.loop1_label42:
# br label %label45
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -132
	b .loop1_label45
.loop1_label43:
# %op44 = add i32  %op30, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# br label %label29
	ld.w $t0, $fp, -128
	st.w $t0, $fp, -92
	b .loop1_label29
.loop1_label45:
# %op46 = phi i32  [ 0, %label42 ], [ %op76, %label75 ]
# %op47 = icmp slt i32  %op46, 6
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 6
	slt $t2, $t0, $t1
	st.b $t2, $fp, -133
# %op48 = zext i1  %op47 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op49 = icmp ne i32  %op48, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -141
# br i1  %op49, label %label50, label %label51
	ld.b $t0, $fp, -141
	bnez $t0, .loop1_label50
	b .loop1_label51
.loop1_label50:
# br label %label53
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -152
	b .loop1_label53
.loop1_label51:
# %op52 = add i32  %op38, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# br label %label37
	ld.w $t0, $fp, -148
	st.w $t0, $fp, -112
	b .loop1_label37
.loop1_label53:
# %op54 = phi i32  [ 0, %label50 ], [ %op74, %label58 ]
# %op55 = icmp slt i32  %op54, 2
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -153
# %op56 = zext i1  %op55 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op57 = icmp ne i32  %op56, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -161
# br i1  %op57, label %label58, label %label75
	ld.b $t0, $fp, -161
	bnez $t0, .loop1_label58
	b .loop1_label75
.loop1_label58:
# %op59 = add i32  %op3, %op14
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -52
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op60 = add i32  %op59, %op22
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -72
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op61 = add i32  %op60, %op30
	ld.w $t0, $fp, -172
	ld.w $t1, $fp, -92
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op62 = add i32  %op61, %op38
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -112
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op63 = add i32  %op62, %op46
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -132
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op64 = add i32  %op63, %op54
	ld.w $t0, $fp, -184
	ld.w $t1, $fp, -152
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op65 = add i32  %op64, %arg0
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -20
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# %op66 = add i32  %op65, %arg1
	ld.w $t0, $fp, -192
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# %op67 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]]* @arr1, i32  0, i32  %op3
	la.local $t0, arr1
	ld.w $t1, $fp, -28
	addi.d $t3, $zero, 1440
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op68 = getelementptr [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]* %op67, i32  0, i32  %op14
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 720
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# %op69 = getelementptr [3 x [4 x [5 x [6 x [2 x i32 ]]]]], [3 x [4 x [5 x [6 x [2 x i32 ]]]]]* %op68, i32  0, i32  %op22
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -72
	addi.d $t3, $zero, 240
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op70 = getelementptr [4 x [5 x [6 x [2 x i32 ]]]], [4 x [5 x [6 x [2 x i32 ]]]]* %op69, i32  0, i32  %op30
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -92
	addi.d $t3, $zero, 60
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -232
# %op71 = getelementptr [5 x [6 x [2 x i32 ]]], [5 x [6 x [2 x i32 ]]]* %op70, i32  0, i32  %op38
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -112
	addi.d $t3, $zero, 12
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# %op72 = getelementptr [6 x [2 x i32 ]], [6 x [2 x i32 ]]* %op71, i32  0, i32  %op46
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -248
# %op73 = getelementptr [2 x i32 ], [2 x i32 ]* %op72, i32  0, i32  %op54
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -152
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# store i32  %op66, i32 * %op73
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# %op74 = add i32  %op54, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# br label %label53
	ld.w $t0, $fp, -260
	st.w $t0, $fp, -152
	b .loop1_label53
.loop1_label75:
# %op76 = add i32  %op46, 1
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -264
# br label %label45
	ld.w $t0, $fp, -264
	st.w $t0, $fp, -132
	b .loop1_label45
loop1_ret:
	addi.d $sp, $sp, 272
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl loop2
	.type loop2, @function
loop2:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -224
.loop2_label_entry:
# br label %label0
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -20
	b .loop2_label0
.loop2_label0:
# %op1 = phi i32  [ 0, %label_entry ], [ %op14, %label13 ]
# %op2 = icmp slt i32  %op1, 10
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -21
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -21
	st.w $t0, $fp, -28
# %op4 = icmp ne i32  %op3, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -29
# br i1  %op4, label %label5, label %label6
	ld.b $t0, $fp, -29
	bnez $t0, .loop2_label5
	b .loop2_label6
.loop2_label5:
# br label %label7
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -36
	b .loop2_label7
.loop2_label6:
# ret void
	addi.d $a0, $zero, 0
	b loop2_ret
.loop2_label7:
# %op8 = phi i32  [ 0, %label5 ], [ %op22, %label21 ]
# %op9 = icmp slt i32  %op8, 2
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -37
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -45
# br i1  %op11, label %label12, label %label13
	ld.b $t0, $fp, -45
	bnez $t0, .loop2_label12
	b .loop2_label13
.loop2_label12:
# br label %label15
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -56
	b .loop2_label15
.loop2_label13:
# %op14 = add i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# br label %label0
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -20
	b .loop2_label0
.loop2_label15:
# %op16 = phi i32  [ 0, %label12 ], [ %op30, %label29 ]
# %op17 = icmp slt i32  %op16, 3
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -57
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -65
# br i1  %op19, label %label20, label %label21
	ld.b $t0, $fp, -65
	bnez $t0, .loop2_label20
	b .loop2_label21
.loop2_label20:
# br label %label23
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -76
	b .loop2_label23
.loop2_label21:
# %op22 = add i32  %op8, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# br label %label7
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -36
	b .loop2_label7
.loop2_label23:
# %op24 = phi i32  [ 0, %label20 ], [ %op38, %label37 ]
# %op25 = icmp slt i32  %op24, 2
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 2
	slt $t2, $t0, $t1
	st.b $t2, $fp, -77
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -85
# br i1  %op27, label %label28, label %label29
	ld.b $t0, $fp, -85
	bnez $t0, .loop2_label28
	b .loop2_label29
.loop2_label28:
# br label %label31
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -96
	b .loop2_label31
.loop2_label29:
# %op30 = add i32  %op16, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# br label %label15
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -56
	b .loop2_label15
.loop2_label31:
# %op32 = phi i32  [ 0, %label28 ], [ %op46, %label45 ]
# %op33 = icmp slt i32  %op32, 4
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 4
	slt $t2, $t0, $t1
	st.b $t2, $fp, -97
# %op34 = zext i1  %op33 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op35 = icmp ne i32  %op34, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -105
# br i1  %op35, label %label36, label %label37
	ld.b $t0, $fp, -105
	bnez $t0, .loop2_label36
	b .loop2_label37
.loop2_label36:
# br label %label39
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -116
	b .loop2_label39
.loop2_label37:
# %op38 = add i32  %op24, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# br label %label23
	ld.w $t0, $fp, -112
	st.w $t0, $fp, -76
	b .loop2_label23
.loop2_label39:
# %op40 = phi i32  [ 0, %label36 ], [ %op65, %label64 ]
# %op41 = icmp slt i32  %op40, 8
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 8
	slt $t2, $t0, $t1
	st.b $t2, $fp, -117
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -125
# br i1  %op43, label %label44, label %label45
	ld.b $t0, $fp, -125
	bnez $t0, .loop2_label44
	b .loop2_label45
.loop2_label44:
# br label %label47
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -136
	b .loop2_label47
.loop2_label45:
# %op46 = add i32  %op32, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# br label %label31
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -96
	b .loop2_label31
.loop2_label47:
# %op48 = phi i32  [ 0, %label44 ], [ %op63, %label52 ]
# %op49 = icmp slt i32  %op48, 7
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 7
	slt $t2, $t0, $t1
	st.b $t2, $fp, -137
# %op50 = zext i1  %op49 to i32 
	ld.b $t0, $fp, -137
	st.w $t0, $fp, -144
# %op51 = icmp ne i32  %op50, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -145
# br i1  %op51, label %label52, label %label64
	ld.b $t0, $fp, -145
	bnez $t0, .loop2_label52
	b .loop2_label64
.loop2_label52:
# %op53 = add i32  %op1, %op8
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -36
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op54 = add i32  %op53, %op24
	ld.w $t0, $fp, -152
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op55 = add i32  %op54, %op48
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op56 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]]* @arr2, i32  0, i32  %op1
	la.local $t0, arr2
	ld.w $t1, $fp, -20
	lu12i.w $t3, 0
	ori $t3, $t3, 2688
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -168
# %op57 = getelementptr [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]* %op56, i32  0, i32  %op8
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -36
	addi.d $t3, $zero, 1344
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# %op58 = getelementptr [3 x [2 x [4 x [8 x [7 x i32 ]]]]], [3 x [2 x [4 x [8 x [7 x i32 ]]]]]* %op57, i32  0, i32  %op16
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -56
	addi.d $t3, $zero, 448
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -184
# %op59 = getelementptr [2 x [4 x [8 x [7 x i32 ]]]], [2 x [4 x [8 x [7 x i32 ]]]]* %op58, i32  0, i32  %op24
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -76
	addi.d $t3, $zero, 224
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op60 = getelementptr [4 x [8 x [7 x i32 ]]], [4 x [8 x [7 x i32 ]]]* %op59, i32  0, i32  %op32
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -96
	addi.d $t3, $zero, 56
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -200
# %op61 = getelementptr [8 x [7 x i32 ]], [8 x [7 x i32 ]]* %op60, i32  0, i32  %op40
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op62 = getelementptr [7 x i32 ], [7 x i32 ]* %op61, i32  0, i32  %op48
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -136
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# store i32  %op55, i32 * %op62
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# %op63 = add i32  %op48, 1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# br label %label47
	ld.w $t0, $fp, -220
	st.w $t0, $fp, -136
	b .loop2_label47
.loop2_label64:
# %op65 = add i32  %op40, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# br label %label39
	ld.w $t0, $fp, -224
	st.w $t0, $fp, -116
	b .loop2_label39
loop2_ret:
	addi.d $sp, $sp, 224
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl loop3
	.type loop3, @function
loop3:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -464
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
	st.w $a4, $fp, -36
	st.w $a5, $fp, -40
	st.w $a6, $fp, -44
.loop3_label_entry:
# br label %label7
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -48
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -52
	b .loop3_label7
.loop3_label7:
# %op8 = phi i32  [ 0, %label_entry ], [ %op24, %label130 ]
# %op9 = phi i32  [ 0, %label_entry ], [ %op25, %label130 ]
# %op10 = icmp slt i32  %op9, 10
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -53
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -61
# br i1  %op12, label %label13, label %label14
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -68
	ld.b $t0, $fp, -61
	bnez $t0, .loop3_label13
	b .loop3_label14
.loop3_label13:
# br label %label16
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -72
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -76
	b .loop3_label16
.loop3_label14:
# %op15 = phi i32  [ %op8, %label7 ], [ %op24, %label129 ]
# ret i32  %op15
	ld.w $a0, $fp, -68
	b loop3_ret
.loop3_label16:
# %op17 = phi i32  [ %op8, %label13 ], [ %op37, %label128 ]
# %op18 = phi i32  [ 0, %label13 ], [ %op38, %label128 ]
# %op19 = icmp slt i32  %op18, 100
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -77
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -85
# br i1  %op21, label %label22, label %label23
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -92
	ld.b $t0, $fp, -85
	bnez $t0, .loop3_label22
	b .loop3_label23
.loop3_label22:
# br label %label29
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -112
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -116
	b .loop3_label29
.loop3_label23:
# %op24 = phi i32  [ %op17, %label16 ], [ %op37, %label127 ]
# %op25 = add i32  %op9, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op26 = icmp sge i32  %op25, %arg0
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -20
	bge  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -97
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -105
# br i1  %op28, label %label129, label %label130
	ld.b $t0, $fp, -105
	bnez $t0, .loop3_label129
	b .loop3_label130
.loop3_label29:
# %op30 = phi i32  [ %op17, %label22 ], [ %op50, %label126 ]
# %op31 = phi i32  [ 0, %label22 ], [ %op51, %label126 ]
# %op32 = icmp slt i32  %op31, 1000
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1000
	slt $t2, $t0, $t1
	st.b $t2, $fp, -117
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -125
# br i1  %op34, label %label35, label %label36
	ld.w $t0, $fp, -112
	st.w $t0, $fp, -132
	ld.b $t0, $fp, -125
	bnez $t0, .loop3_label35
	b .loop3_label36
.loop3_label35:
# br label %label42
	ld.w $t0, $fp, -112
	st.w $t0, $fp, -152
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -156
	b .loop3_label42
.loop3_label36:
# %op37 = phi i32  [ %op30, %label29 ], [ %op50, %label125 ]
# %op38 = add i32  %op18, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op39 = icmp sge i32  %op38, %arg1
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -24
	bge  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -137
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -137
	st.w $t0, $fp, -144
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -145
# br i1  %op41, label %label127, label %label128
	ld.b $t0, $fp, -145
	bnez $t0, .loop3_label127
	b .loop3_label128
.loop3_label42:
# %op43 = phi i32  [ %op30, %label35 ], [ %op63, %label124 ]
# %op44 = phi i32  [ 0, %label35 ], [ %op64, %label124 ]
# %op45 = icmp slt i32  %op44, 10000
	ld.w $t0, $fp, -156
	lu12i.w $t1, 2
	ori $t1, $t1, 1808
	slt $t2, $t0, $t1
	st.b $t2, $fp, -157
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -165
# br i1  %op47, label %label48, label %label49
	ld.w $t0, $fp, -152
	st.w $t0, $fp, -172
	ld.b $t0, $fp, -165
	bnez $t0, .loop3_label48
	b .loop3_label49
.loop3_label48:
# br label %label55
	ld.w $t0, $fp, -152
	st.w $t0, $fp, -192
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -196
	b .loop3_label55
.loop3_label49:
# %op50 = phi i32  [ %op43, %label42 ], [ %op63, %label123 ]
# %op51 = add i32  %op31, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op52 = icmp sge i32  %op51, %arg2
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -28
	bge  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -177
# %op53 = zext i1  %op52 to i32 
	ld.b $t0, $fp, -177
	st.w $t0, $fp, -184
# %op54 = icmp ne i32  %op53, 0
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -185
# br i1  %op54, label %label125, label %label126
	ld.b $t0, $fp, -185
	bnez $t0, .loop3_label125
	b .loop3_label126
.loop3_label55:
# %op56 = phi i32  [ %op43, %label48 ], [ %op76, %label122 ]
# %op57 = phi i32  [ 0, %label48 ], [ %op77, %label122 ]
# %op58 = icmp slt i32  %op57, 100000
	ld.w $t0, $fp, -196
	lu12i.w $t1, 24
	ori $t1, $t1, 1696
	slt $t2, $t0, $t1
	st.b $t2, $fp, -197
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -205
# br i1  %op60, label %label61, label %label62
	ld.w $t0, $fp, -192
	st.w $t0, $fp, -212
	ld.b $t0, $fp, -205
	bnez $t0, .loop3_label61
	b .loop3_label62
.loop3_label61:
# br label %label68
	ld.w $t0, $fp, -192
	st.w $t0, $fp, -232
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -236
	b .loop3_label68
.loop3_label62:
# %op63 = phi i32  [ %op56, %label55 ], [ %op76, %label121 ]
# %op64 = add i32  %op44, 1
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# %op65 = icmp sge i32  %op64, %arg3
	ld.w $t0, $fp, -216
	ld.w $t1, $fp, -32
	bge  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -217
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -217
	st.w $t0, $fp, -224
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -225
# br i1  %op67, label %label123, label %label124
	ld.b $t0, $fp, -225
	bnez $t0, .loop3_label123
	b .loop3_label124
.loop3_label68:
# %op69 = phi i32  [ %op56, %label61 ], [ %op112, %label120 ]
# %op70 = phi i32  [ 0, %label61 ], [ %op113, %label120 ]
# %op71 = icmp slt i32  %op70, 1000000
	ld.w $t0, $fp, -236
	lu12i.w $t1, 244
	ori $t1, $t1, 576
	slt $t2, $t0, $t1
	st.b $t2, $fp, -237
# %op72 = zext i1  %op71 to i32 
	ld.b $t0, $fp, -237
	st.w $t0, $fp, -244
# %op73 = icmp ne i32  %op72, 0
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -245
# br i1  %op73, label %label74, label %label75
	ld.w $t0, $fp, -232
	st.w $t0, $fp, -252
	ld.b $t0, $fp, -245
	bnez $t0, .loop3_label74
	b .loop3_label75
.loop3_label74:
# br label %label81
	ld.w $t0, $fp, -232
	st.w $t0, $fp, -272
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -276
	b .loop3_label81
.loop3_label75:
# %op76 = phi i32  [ %op69, %label68 ], [ %op112, %label119 ]
# %op77 = add i32  %op57, 1
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# %op78 = icmp sge i32  %op77, %arg4
	ld.w $t0, $fp, -256
	ld.w $t1, $fp, -36
	bge  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -257
# %op79 = zext i1  %op78 to i32 
	ld.b $t0, $fp, -257
	st.w $t0, $fp, -264
# %op80 = icmp ne i32  %op79, 0
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -265
# br i1  %op80, label %label121, label %label122
	ld.b $t0, $fp, -265
	bnez $t0, .loop3_label121
	b .loop3_label122
.loop3_label81:
# %op82 = phi i32  [ %op69, %label74 ], [ %op106, %label118 ]
# %op83 = phi i32  [ 0, %label74 ], [ %op107, %label118 ]
# %op84 = icmp slt i32  %op83, 10000000
	ld.w $t0, $fp, -276
	lu12i.w $t1, 2441
	ori $t1, $t1, 1664
	slt $t2, $t0, $t1
	st.b $t2, $fp, -277
# %op85 = zext i1  %op84 to i32 
	ld.b $t0, $fp, -277
	st.w $t0, $fp, -284
# %op86 = icmp ne i32  %op85, 0
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -285
# br i1  %op86, label %label87, label %label111
	ld.w $t0, $fp, -272
	st.w $t0, $fp, -444
	ld.b $t0, $fp, -285
	bnez $t0, .loop3_label87
	b .loop3_label111
.loop3_label87:
# %op88 = srem i32  %op82, 817
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 817
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# %op89 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]]* @arr1, i32  0, i32  %op9
	la.local $t0, arr1
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1440
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# %op90 = getelementptr [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]* %op89, i32  0, i32  %op18
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -76
	addi.d $t3, $zero, 720
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op91 = getelementptr [3 x [4 x [5 x [6 x [2 x i32 ]]]]], [3 x [4 x [5 x [6 x [2 x i32 ]]]]]* %op90, i32  0, i32  %op31
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 240
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# %op92 = getelementptr [4 x [5 x [6 x [2 x i32 ]]]], [4 x [5 x [6 x [2 x i32 ]]]]* %op91, i32  0, i32  %op44
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -156
	addi.d $t3, $zero, 60
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op93 = getelementptr [5 x [6 x [2 x i32 ]]], [5 x [6 x [2 x i32 ]]]* %op92, i32  0, i32  %op57
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -196
	addi.d $t3, $zero, 12
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# %op94 = getelementptr [6 x [2 x i32 ]], [6 x [2 x i32 ]]* %op93, i32  0, i32  %op70
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# %op95 = getelementptr [2 x i32 ], [2 x i32 ]* %op94, i32  0, i32  %op83
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -276
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# %op96 = load i32 , i32 * %op95
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op97 = add i32  %op88, %op96
	ld.w $t0, $fp, -292
	ld.w $t1, $fp, -356
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op98 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]]* @arr2, i32  0, i32  %op9
	la.local $t0, arr2
	ld.w $t1, $fp, -52
	lu12i.w $t3, 0
	ori $t3, $t3, 2688
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -368
# %op99 = getelementptr [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]* %op98, i32  0, i32  %op18
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -76
	addi.d $t3, $zero, 1344
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# %op100 = getelementptr [3 x [2 x [4 x [8 x [7 x i32 ]]]]], [3 x [2 x [4 x [8 x [7 x i32 ]]]]]* %op99, i32  0, i32  %op31
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 448
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op101 = getelementptr [2 x [4 x [8 x [7 x i32 ]]]], [2 x [4 x [8 x [7 x i32 ]]]]* %op100, i32  0, i32  %op44
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -156
	addi.d $t3, $zero, 224
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -392
# %op102 = getelementptr [4 x [8 x [7 x i32 ]]], [4 x [8 x [7 x i32 ]]]* %op101, i32  0, i32  %op57
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -196
	addi.d $t3, $zero, 56
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -400
# %op103 = getelementptr [8 x [7 x i32 ]], [8 x [7 x i32 ]]* %op102, i32  0, i32  %op70
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 7
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op104 = getelementptr [7 x i32 ], [7 x i32 ]* %op103, i32  0, i32  %op83
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -276
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# %op105 = load i32 , i32 * %op104
	ld.d $t0, $fp, -416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op106 = add i32  %op97, %op105
	ld.w $t0, $fp, -360
	ld.w $t1, $fp, -420
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -424
# %op107 = add i32  %op83, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -428
# %op108 = icmp sge i32  %op107, %arg6
	ld.w $t0, $fp, -428
	ld.w $t1, $fp, -44
	bge  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -429
# %op109 = zext i1  %op108 to i32 
	ld.b $t0, $fp, -429
	st.w $t0, $fp, -436
# %op110 = icmp ne i32  %op109, 0
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -437
# br i1  %op110, label %label117, label %label118
	ld.b $t0, $fp, -437
	bnez $t0, .loop3_label117
	b .loop3_label118
.loop3_label111:
# %op112 = phi i32  [ %op82, %label81 ], [ %op106, %label117 ]
# %op113 = add i32  %op70, 1
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# %op114 = icmp sge i32  %op113, %arg5
	ld.w $t0, $fp, -448
	ld.w $t1, $fp, -40
	bge  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -449
# %op115 = zext i1  %op114 to i32 
	ld.b $t0, $fp, -449
	st.w $t0, $fp, -456
# %op116 = icmp ne i32  %op115, 0
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -457
# br i1  %op116, label %label119, label %label120
	ld.b $t0, $fp, -457
	bnez $t0, .loop3_label119
	b .loop3_label120
.loop3_label117:
# br label %label111
	ld.w $t0, $fp, -424
	st.w $t0, $fp, -444
	b .loop3_label111
.loop3_label118:
# br label %label81
	ld.w $t0, $fp, -424
	st.w $t0, $fp, -272
	ld.w $t0, $fp, -428
	st.w $t0, $fp, -276
	b .loop3_label81
.loop3_label119:
# br label %label75
	ld.w $t0, $fp, -444
	st.w $t0, $fp, -252
	b .loop3_label75
.loop3_label120:
# br label %label68
	ld.w $t0, $fp, -444
	st.w $t0, $fp, -232
	ld.w $t0, $fp, -448
	st.w $t0, $fp, -236
	b .loop3_label68
.loop3_label121:
# br label %label62
	ld.w $t0, $fp, -252
	st.w $t0, $fp, -212
	b .loop3_label62
.loop3_label122:
# br label %label55
	ld.w $t0, $fp, -252
	st.w $t0, $fp, -192
	ld.w $t0, $fp, -256
	st.w $t0, $fp, -196
	b .loop3_label55
.loop3_label123:
# br label %label49
	ld.w $t0, $fp, -212
	st.w $t0, $fp, -172
	b .loop3_label49
.loop3_label124:
# br label %label42
	ld.w $t0, $fp, -212
	st.w $t0, $fp, -152
	ld.w $t0, $fp, -216
	st.w $t0, $fp, -156
	b .loop3_label42
.loop3_label125:
# br label %label36
	ld.w $t0, $fp, -172
	st.w $t0, $fp, -132
	b .loop3_label36
.loop3_label126:
# br label %label29
	ld.w $t0, $fp, -172
	st.w $t0, $fp, -112
	ld.w $t0, $fp, -176
	st.w $t0, $fp, -116
	b .loop3_label29
.loop3_label127:
# br label %label23
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -92
	b .loop3_label23
.loop3_label128:
# br label %label16
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -72
	ld.w $t0, $fp, -136
	st.w $t0, $fp, -76
	b .loop3_label16
.loop3_label129:
# br label %label14
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -68
	b .loop3_label14
.loop3_label130:
# br label %label7
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -48
	ld.w $t0, $fp, -96
	st.w $t0, $fp, -52
	b .loop3_label7
loop3_ret:
	addi.d $sp, $sp, 464
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
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# %op5 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -40
# %op6 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -44
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -48
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -52
# call void @loop1(i32  %op0, i32  %op1)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -24
	bl loop1
# call void @loop2()
	bl loop2
# %op9 = call i32  @loop3(i32  %op2, i32  %op4, i32  %op3, i32  %op5, i32  %op6, i32  %op7, i32  %op8)
	ld.w $a0, $fp, -28
	ld.w $a1, $fp, -36
	ld.w $a2, $fp, -32
	ld.w $a3, $fp, -40
	ld.w $a4, $fp, -44
	ld.w $a5, $fp, -48
	ld.w $a6, $fp, -52
	bl loop3
	st.w $a0, $fp, -56
# ret i32  %op9
	ld.w $a0, $fp, -56
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
