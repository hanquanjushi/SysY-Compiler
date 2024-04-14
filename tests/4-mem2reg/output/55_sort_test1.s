# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl bubblesort
	.type bubblesort, @function
bubblesort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
	st.d $a0, $fp, -24
.bubblesort_label_entry:
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -28
	b .bubblesort_label1
.bubblesort_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op28, %label27 ]
# %op3 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = sub i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op5 = icmp slt i32  %op2, %op4
	ld.w $t0, $fp, -28
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
# br i1  %op7, label %label8, label %label9
	ld.b $t0, $fp, -45
	bnez $t0, .bubblesort_label8
	b .bubblesort_label9
.bubblesort_label8:
# br label %label10
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -52
	b .bubblesort_label10
.bubblesort_label9:
# ret i32  0
	addi.w $a0, $zero, 0
	b bubblesort_ret
.bubblesort_label10:
# %op11 = phi i32  [ 0, %label8 ], [ %op39, %label38 ]
# %op12 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op13 = sub i32  %op12, %op2
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -28
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op14 = sub i32  %op13, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op15 = icmp slt i32  %op11, %op14
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -64
	slt $t2, $t0, $t1
	st.b $t2, $fp, -65
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -73
# br i1  %op17, label %label18, label %label27
	ld.b $t0, $fp, -73
	bnez $t0, .bubblesort_label18
	b .bubblesort_label27
.bubblesort_label18:
# %op19 = getelementptr i32 , i32 * %arg0, i32  %op11
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -52
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op21 = add i32  %op11, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op22 = getelementptr i32 , i32 * %arg0, i32  %op21
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -96
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op24 = icmp sgt i32  %op20, %op23
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -108
	slt $t2, $t1, $t0
	st.b $t2, $fp, -109
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -117
# br i1  %op26, label %label29, label %label38
	ld.b $t0, $fp, -117
	bnez $t0, .bubblesort_label29
	b .bubblesort_label38
.bubblesort_label27:
# %op28 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# br label %label1
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -28
	b .bubblesort_label1
.bubblesort_label29:
# %op30 = add i32  %op11, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op31 = getelementptr i32 , i32 * %arg0, i32  %op30
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -128
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op32 = load i32 , i32 * %op31
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op33 = getelementptr i32 , i32 * %arg0, i32  %op11
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -52
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op35 = add i32  %op11, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op36 = getelementptr i32 , i32 * %arg0, i32  %op35
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -160
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# store i32  %op34, i32 * %op36
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op37 = getelementptr i32 , i32 * %arg0, i32  %op11
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -52
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# store i32  %op32, i32 * %op37
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# br label %label38
	b .bubblesort_label38
.bubblesort_label38:
# %op39 = add i32  %op11, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# br label %label10
	ld.w $t0, $fp, -180
	st.w $t0, $fp, -52
	b .bubblesort_label10
bubblesort_ret:
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
# %op12 = call i32  @bubblesort(i32 * %op11)
	ld.d $a0, $fp, -152
	bl bubblesort
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
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
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
