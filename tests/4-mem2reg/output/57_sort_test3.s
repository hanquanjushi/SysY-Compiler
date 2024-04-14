# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl QuickSort
	.type QuickSort, @function
QuickSort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -288
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.QuickSort_label_entry:
# %op3 = icmp slt i32  %arg1, %arg2
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -33
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op5, label %label6, label %label9
	ld.b $t0, $fp, -41
	bnez $t0, .QuickSort_label6
	b .QuickSort_label9
.QuickSort_label6:
# %op7 = getelementptr i32 , i32 * %arg0, i32  %arg1
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op8 = load i32 , i32 * %op7
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# br label %label10
	ld.w $t0, $fp, -32
	st.w $t0, $fp, -64
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -68
	b .QuickSort_label10
.QuickSort_label9:
# ret i32  0
	addi.w $a0, $zero, 0
	b QuickSort_ret
.QuickSort_label10:
# %op11 = phi i32  [ %arg2, %label6 ], [ %op71, %label70 ]
# %op12 = phi i32  [ %arg1, %label6 ], [ %op49, %label70 ]
# %op13 = icmp slt i32  %op12, %op11
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -64
	slt $t2, $t0, $t1
	st.b $t2, $fp, -69
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -77
# br i1  %op15, label %label16, label %label17
	ld.b $t0, $fp, -77
	bnez $t0, .QuickSort_label16
	b .QuickSort_label17
.QuickSort_label16:
# br label %label23
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -108
	b .QuickSort_label23
.QuickSort_label17:
# %op18 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -68
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# store i32  %op8, i32 * %op18
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op19 = sub i32  %op12, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op20 = call i32  @QuickSort(i32 * %arg0, i32  %arg1, i32  %op19)
	ld.d $a0, $fp, -24
	ld.w $a1, $fp, -28
	ld.w $a2, $fp, -92
	bl QuickSort
	st.w $a0, $fp, -96
# %op21 = add i32  %op12, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op22 = call i32  @QuickSort(i32 * %arg0, i32  %op21, i32  %arg2)
	ld.d $a0, $fp, -24
	ld.w $a1, $fp, -100
	ld.w $a2, $fp, -32
	bl QuickSort
	st.w $a0, $fp, -104
# br label %label9
	b .QuickSort_label9
.QuickSort_label23:
# %op24 = phi i32  [ %op11, %label16 ], [ %op29, %label28 ]
# %op25 = icmp slt i32  %op12, %op24
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -108
	slt $t2, $t0, $t1
	st.b $t2, $fp, -109
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -117
# br i1  %op27, label %label34, label %label30
	ld.b $t0, $fp, -117
	bnez $t0, .QuickSort_label34
	b .QuickSort_label30
.QuickSort_label28:
# %op29 = sub i32  %op24, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# br label %label23
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -108
	b .QuickSort_label23
.QuickSort_label30:
# %op31 = icmp slt i32  %op12, %op24
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -108
	slt $t2, $t0, $t1
	st.b $t2, $fp, -125
# %op32 = zext i1  %op31 to i32 
	ld.b $t0, $fp, -125
	st.w $t0, $fp, -132
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -133
# br i1  %op33, label %label41, label %label46
	ld.w $t0, $fp, -68
	st.w $t0, $fp, -200
	ld.b $t0, $fp, -133
	bnez $t0, .QuickSort_label41
	b .QuickSort_label46
.QuickSort_label34:
# %op35 = getelementptr i32 , i32 * %arg0, i32  %op24
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -108
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op36 = load i32 , i32 * %op35
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op37 = sub i32  %op8, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op38 = icmp sgt i32  %op36, %op37
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	slt $t2, $t1, $t0
	st.b $t2, $fp, -153
# %op39 = zext i1  %op38 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op40 = icmp ne i32  %op39, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -161
# br i1  %op40, label %label28, label %label30
	ld.b $t0, $fp, -161
	bnez $t0, .QuickSort_label28
	b .QuickSort_label30
.QuickSort_label41:
# %op42 = getelementptr i32 , i32 * %arg0, i32  %op24
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -108
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op44 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -68
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# store i32  %op43, i32 * %op44
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -180
	st.w $t1, $t0, 0
# %op45 = add i32  %op12, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# br label %label46
	ld.w $t0, $fp, -196
	st.w $t0, $fp, -200
	b .QuickSort_label46
.QuickSort_label46:
# %op47 = phi i32  [ %op12, %label30 ], [ %op45, %label41 ]
# br label %label48
	ld.w $t0, $fp, -200
	st.w $t0, $fp, -204
	b .QuickSort_label48
.QuickSort_label48:
# %op49 = phi i32  [ %op47, %label46 ], [ %op54, %label53 ]
# %op50 = icmp slt i32  %op49, %op24
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -108
	slt $t2, $t0, $t1
	st.b $t2, $fp, -205
# %op51 = zext i1  %op50 to i32 
	ld.b $t0, $fp, -205
	st.w $t0, $fp, -212
# %op52 = icmp ne i32  %op51, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -213
# br i1  %op52, label %label59, label %label55
	ld.b $t0, $fp, -213
	bnez $t0, .QuickSort_label59
	b .QuickSort_label55
.QuickSort_label53:
# %op54 = add i32  %op49, 1
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# br label %label48
	ld.w $t0, $fp, -220
	st.w $t0, $fp, -204
	b .QuickSort_label48
.QuickSort_label55:
# %op56 = icmp slt i32  %op49, %op24
	ld.w $t0, $fp, -204
	ld.w $t1, $fp, -108
	slt $t2, $t0, $t1
	st.b $t2, $fp, -221
# %op57 = zext i1  %op56 to i32 
	ld.b $t0, $fp, -221
	st.w $t0, $fp, -228
# %op58 = icmp ne i32  %op57, 0
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -229
# br i1  %op58, label %label65, label %label70
	ld.w $t0, $fp, -108
	st.w $t0, $fp, -288
	ld.b $t0, $fp, -229
	bnez $t0, .QuickSort_label65
	b .QuickSort_label70
.QuickSort_label59:
# %op60 = getelementptr i32 , i32 * %arg0, i32  %op49
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -204
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op61 = load i32 , i32 * %op60
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op62 = icmp slt i32  %op61, %op8
	ld.w $t0, $fp, -244
	ld.w $t1, $fp, -60
	slt $t2, $t0, $t1
	st.b $t2, $fp, -245
# %op63 = zext i1  %op62 to i32 
	ld.b $t0, $fp, -245
	st.w $t0, $fp, -252
# %op64 = icmp ne i32  %op63, 0
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -253
# br i1  %op64, label %label53, label %label55
	ld.b $t0, $fp, -253
	bnez $t0, .QuickSort_label53
	b .QuickSort_label55
.QuickSort_label65:
# %op66 = getelementptr i32 , i32 * %arg0, i32  %op49
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -204
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op67 = load i32 , i32 * %op66
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op68 = getelementptr i32 , i32 * %arg0, i32  %op24
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -108
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# store i32  %op67, i32 * %op68
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -268
	st.w $t1, $t0, 0
# %op69 = sub i32  %op24, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -284
# br label %label70
	ld.w $t0, $fp, -284
	st.w $t0, $fp, -288
	b .QuickSort_label70
.QuickSort_label70:
# %op71 = phi i32  [ %op24, %label55 ], [ %op69, %label65 ]
# br label %label10
	ld.w $t0, $fp, -288
	st.w $t0, $fp, -64
	ld.w $t0, $fp, -204
	st.w $t0, $fp, -68
	b .QuickSort_label10
QuickSort_ret:
	addi.d $sp, $sp, 288
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
.main_label_entry:
# store i32  10, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op0 = alloca [10 x i32 ]
	addi.d $t1, $fp, -64
	st.d $t1, $fp, -24
# %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -72
# store i32  4, i32 * %op1
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -80
# store i32  3, i32 * %op2
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -88
# store i32  9, i32 * %op3
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -96
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -104
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -112
# store i32  1, i32 * %op6
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -120
# store i32  6, i32 * %op7
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -128
# store i32  5, i32 * %op8
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -136
# store i32  7, i32 * %op9
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -144
# store i32  8, i32 * %op10
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op11 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -152
# %op12 = call i32  @QuickSort(i32 * %op11, i32  0, i32  9)
	ld.d $a0, $fp, -152
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 9
	bl QuickSort
	st.w $a0, $fp, -156
# br label %label13
	ld.w $t0, $fp, -156
	st.w $t0, $fp, -160
	b .main_label13
.main_label13:
# %op14 = phi i32  [ %op12, %label_entry ], [ %op22, %label19 ]
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op16 = icmp slt i32  %op14, %op15
	ld.w $t0, $fp, -160
	ld.w $t1, $fp, -164
	slt $t2, $t0, $t1
	st.b $t2, $fp, -165
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -173
# br i1  %op18, label %label19, label %label23
	ld.b $t0, $fp, -173
	bnez $t0, .main_label19
	b .main_label23
.main_label19:
# %op20 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op14
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -160
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -184
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# call void @putint(i32  %op21)
	ld.w $a0, $fp, -188
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op22 = add i32  %op14, 1
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# br label %label13
	ld.w $t0, $fp, -192
	st.w $t0, $fp, -160
	b .main_label13
.main_label23:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
