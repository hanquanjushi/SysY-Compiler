# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl insertsort
	.type insertsort, @function
insertsort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
	st.d $a0, $fp, -24
.insertsort_label_entry:
# br label %label1
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -28
	b .insertsort_label1
.insertsort_label1:
# %op2 = phi i32  [ 1, %label_entry ], [ %op26, %label23 ]
# %op3 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = icmp slt i32  %op2, %op3
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op6, label %label7, label %label11
	ld.b $t0, $fp, -41
	bnez $t0, .insertsort_label7
	b .insertsort_label11
.insertsort_label7:
# %op8 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op10 = sub i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label12
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -68
	b .insertsort_label12
.insertsort_label11:
# ret i32  0
	addi.w $a0, $zero, 0
	b insertsort_ret
.insertsort_label12:
# %op13 = phi i32  [ %op10, %label7 ], [ %op22, %label17 ]
# %op14 = icmp sgt i32  %op13, -1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -69
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -77
# br i1  %op16, label %label27, label %label23
	ld.b $t0, $fp, -77
	bnez $t0, .insertsort_label27
	b .insertsort_label23
.insertsort_label17:
# %op18 = getelementptr i32 , i32 * %arg0, i32  %op13
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -68
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op20 = add i32  %op13, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op21 = getelementptr i32 , i32 * %arg0, i32  %op20
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -96
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# store i32  %op19, i32 * %op21
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op22 = sub i32  %op13, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# br label %label12
	ld.w $t0, $fp, -108
	st.w $t0, $fp, -68
	b .insertsort_label12
.insertsort_label23:
# %op24 = add i32  %op13, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op25 = getelementptr i32 , i32 * %arg0, i32  %op24
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -112
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# store i32  %op9, i32 * %op25
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op26 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# br label %label1
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -28
	b .insertsort_label1
.insertsort_label27:
# %op28 = getelementptr i32 , i32 * %arg0, i32  %op13
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -68
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op30 = icmp slt i32  %op9, %op29
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -140
	slt $t2, $t0, $t1
	st.b $t2, $fp, -141
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -149
# br i1  %op32, label %label17, label %label23
	ld.b $t0, $fp, -149
	bnez $t0, .insertsort_label17
	b .insertsort_label23
insertsort_ret:
	addi.d $sp, $sp, 160
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
# %op12 = call i32  @insertsort(i32 * %op11)
	ld.d $a0, $fp, -152
	bl insertsort
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
