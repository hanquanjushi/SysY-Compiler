# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl select_sort
	.type select_sort, @function
select_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.select_sort_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -32
	b .select_sort_label2
.select_sort_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op41, %label40 ]
# %op4 = sub i32  %arg1, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op5 = icmp slt i32  %op3, %op4
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -36
	slt $t2, $t0, $t1
	st.b $t2, $fp, -37
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -45
# br i1  %op7, label %label8, label %label10
	ld.b $t0, $fp, -45
	bnez $t0, .select_sort_label8
	b .select_sort_label10
.select_sort_label8:
# %op9 = add i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# br label %label11
	ld.w $t0, $fp, -32
	st.w $t0, $fp, -56
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -60
	b .select_sort_label11
.select_sort_label10:
# ret i32  0
	addi.w $a0, $zero, 0
	b select_sort_ret
.select_sort_label11:
# %op12 = phi i32  [ %op3, %label8 ], [ %op31, %label30 ]
# %op13 = phi i32  [ %op9, %label8 ], [ %op32, %label30 ]
# %op14 = icmp slt i32  %op13, %arg1
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -28
	slt $t2, $t0, $t1
	st.b $t2, $fp, -61
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -69
# br i1  %op16, label %label17, label %label25
	ld.b $t0, $fp, -69
	bnez $t0, .select_sort_label17
	b .select_sort_label25
.select_sort_label17:
# %op18 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -56
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op20 = getelementptr i32 , i32 * %arg0, i32  %op13
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -60
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op22 = icmp sgt i32  %op19, %op21
	ld.w $t0, $fp, -84
	ld.w $t1, $fp, -100
	slt $t2, $t1, $t0
	st.b $t2, $fp, -101
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -109
# br i1  %op24, label %label29, label %label30
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -124
	ld.b $t0, $fp, -109
	bnez $t0, .select_sort_label29
	b .select_sort_label30
.select_sort_label25:
# %op26 = icmp ne i32  %op12, %op3
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -32
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -110
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -110
	st.w $t0, $fp, -116
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -117
# br i1  %op28, label %label33, label %label40
	ld.b $t0, $fp, -117
	bnez $t0, .select_sort_label33
	b .select_sort_label40
.select_sort_label29:
# br label %label30
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -124
	b .select_sort_label30
.select_sort_label30:
# %op31 = phi i32  [ %op12, %label17 ], [ %op13, %label29 ]
# %op32 = add i32  %op13, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# br label %label11
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -56
	ld.w $t0, $fp, -128
	st.w $t0, $fp, -60
	b .select_sort_label11
.select_sort_label33:
# %op34 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -56
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op36 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op37 = load i32 , i32 * %op36
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op38 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -56
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# store i32  %op37, i32 * %op38
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op39 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# store i32  %op35, i32 * %op39
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# br label %label40
	b .select_sort_label40
.select_sort_label40:
# %op41 = add i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# br label %label2
	ld.w $t0, $fp, -180
	st.w $t0, $fp, -32
	b .select_sort_label2
select_sort_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
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
# %op12 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op13 = call i32  @select_sort(i32 * %op11, i32  %op12)
	ld.d $a0, $fp, -152
	ld.w $a1, $fp, -156
	bl select_sort
	st.w $a0, $fp, -160
# br label %label14
	ld.w $t0, $fp, -160
	st.w $t0, $fp, -164
	b .main_label14
.main_label14:
# %op15 = phi i32  [ %op13, %label_entry ], [ %op23, %label20 ]
# %op16 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op17 = icmp slt i32  %op15, %op16
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	slt $t2, $t0, $t1
	st.b $t2, $fp, -169
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -177
# br i1  %op19, label %label20, label %label24
	ld.b $t0, $fp, -177
	bnez $t0, .main_label20
	b .main_label24
.main_label20:
# %op21 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op15
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# call void @putint(i32  %op22)
	ld.w $a0, $fp, -196
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op23 = add i32  %op15, 1
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# br label %label14
	ld.w $t0, $fp, -200
	st.w $t0, $fp, -164
	b .main_label14
.main_label24:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
