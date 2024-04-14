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
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
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
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
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
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
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
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
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
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
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
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
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
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
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
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
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
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
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
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
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
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
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
	.globl getMid
	.type getMid, @function
getMid:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
	st.d $a0, $fp, -24
.getMid_label_entry:
# %op1 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op2 = srem i32  %op1, 2
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op3 = icmp eq i32  %op2, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -33
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -41
# br i1  %op5, label %label6, label %label16
	ld.b $t0, $fp, -41
	bnez $t0, .getMid_label6
	b .getMid_label16
.getMid_label6:
# %op7 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op8 = sdiv i32  %op7, 2
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = getelementptr i32 , i32 * %arg0, i32  %op8
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -52
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op11 = sub i32  %op8, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op12 = getelementptr i32 , i32 * %arg0, i32  %op11
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -72
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = add i32  %op10, %op13
	ld.w $t0, $fp, -68
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op15 = sdiv i32  %op14, 2
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# ret i32  %op15
	ld.w $a0, $fp, -92
	b getMid_ret
.getMid_label16:
# %op17 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op18 = sdiv i32  %op17, 2
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op19 = getelementptr i32 , i32 * %arg0, i32  %op18
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -100
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# ret i32  %op20
	ld.w $a0, $fp, -116
	b getMid_ret
getMid_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl getMost
	.type getMost, @function
getMost:
	lu12i.w $t0, 1
	ori $t0, $t0, 80
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.d $a0, $fp, -24
.getMost_label_entry:
# %op1 = alloca [1000 x i32 ]
	lu12i.w $t0, -1
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	st.d $t1, $fp, -32
# br label %label2
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .getMost_label2
.getMost_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op9, %label7 ]
# %op4 = icmp slt i32  %op3, 1000
	lu12i.w $t0, -1
	ori $t0, $t0, 60
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1000
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 59
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op5 = zext i1  %op4 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 59
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 52
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op6 = icmp ne i32  %op5, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 52
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	lu12i.w $t8, -1
	ori $t8, $t8, 51
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op6, label %label7, label %label10
	lu12i.w $t0, -1
	ori $t0, $t0, 51
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label7
	b .getMost_label10
.getMost_label7:
# %op8 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op1, i32  0, i32  %op3
	ld.d $t0, $fp, -32
	lu12i.w $t1, -1
	ori $t1, $t1, 60
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op8
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = add i32  %op3, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 60
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 36
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label2
	lu12i.w $t0, -1
	ori $t0, $t0, 36
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .getMost_label2
.getMost_label10:
# br label %label11
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .getMost_label11
.getMost_label11:
# %op12 = phi i32  [ %op36, %label35 ], [ undef, %label10 ]
# %op13 = phi i32  [ 0, %label10 ], [ %op37, %label35 ]
# %op14 = phi i32  [ 0, %label10 ], [ %op38, %label35 ]
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 20
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op16 = icmp slt i32  %op14, %op15
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 20
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 19
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op17 = zext i1  %op16 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 19
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 12
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op18 = icmp ne i32  %op17, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 12
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	lu12i.w $t8, -1
	ori $t8, $t8, 11
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op18, label %label19, label %label31
	lu12i.w $t0, -1
	ori $t0, $t0, 11
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label19
	b .getMost_label31
.getMost_label19:
# %op20 = getelementptr i32 , i32 * %arg0, i32  %op14
	ld.d $t0, $fp, -24
	lu12i.w $t1, -1
	ori $t1, $t1, 24
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op21 = load i32 , i32 * %op20
	lu12i.w $t0, -1
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op22 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op1, i32  0, i32  %op21
	ld.d $t0, $fp, -32
	lu12i.w $t1, -2
	ori $t1, $t1, 4092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op23 = load i32 , i32 * %op22
	lu12i.w $t0, -2
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op24 = add i32  %op23, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 4076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op25 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op1, i32  0, i32  %op21
	ld.d $t0, $fp, -32
	lu12i.w $t1, -2
	ori $t1, $t1, 4092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op24, i32 * %op25
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op1, i32  0, i32  %op21
	ld.d $t0, $fp, -32
	lu12i.w $t1, -2
	ori $t1, $t1, 4092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op27 = load i32 , i32 * %op26
	lu12i.w $t0, -2
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op28 = icmp sgt i32  %op27, %op13
	lu12i.w $t0, -2
	ori $t0, $t0, 4052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 28
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4051
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op29 = zext i1  %op28 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4051
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op30 = icmp ne i32  %op29, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	lu12i.w $t8, -2
	ori $t8, $t8, 4043
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op30, label %label32, label %label35
	lu12i.w $t0, -1
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 28
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4043
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .getMost_label32
	b .getMost_label35
.getMost_label31:
# ret i32  %op12
	lu12i.w $a0, -1
	ori $a0, $a0, 32
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b getMost_ret
.getMost_label32:
# %op33 = getelementptr [1000 x i32 ], [1000 x i32 ]* %op1, i32  0, i32  %op21
	ld.d $t0, $fp, -32
	lu12i.w $t1, -2
	ori $t1, $t1, 4092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op34 = load i32 , i32 * %op33
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# br label %label35
	lu12i.w $t0, -2
	ori $t0, $t0, 4092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .getMost_label35
.getMost_label35:
# %op36 = phi i32  [ %op12, %label19 ], [ %op21, %label32 ]
# %op37 = phi i32  [ %op13, %label19 ], [ %op34, %label32 ]
# %op38 = add i32  %op14, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label11
	lu12i.w $t0, -2
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .getMost_label11
getMost_ret:
	lu12i.w $t0, 1
	ori $t0, $t0, 80
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl revert
	.type revert, @function
revert:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.d $a0, $fp, -24
.revert_label_entry:
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -28
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -32
	b .revert_label1
.revert_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op15, %label7 ]
# %op3 = phi i32  [ 0, %label_entry ], [ %op14, %label7 ]
# %op4 = icmp slt i32  %op3, %op2
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -28
	slt $t2, $t0, $t1
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -41
# br i1  %op6, label %label7, label %label16
	ld.b $t0, $fp, -41
	bnez $t0, .revert_label7
	b .revert_label16
.revert_label7:
# %op8 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op10 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op12 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# store i32  %op11, i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# %op13 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# store i32  %op9, i32 * %op13
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op14 = add i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op15 = sub i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# br label %label1
	ld.w $t0, $fp, -104
	st.w $t0, $fp, -28
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -32
	b .revert_label1
.revert_label16:
# ret i32  0
	addi.w $a0, $zero, 0
	b revert_ret
revert_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl arrCopy
	.type arrCopy, @function
arrCopy:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
.arrCopy_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -36
	b .arrCopy_label2
.arrCopy_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op12, %label8 ]
# %op4 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op5 = icmp slt i32  %op3, %op4
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -40
	slt $t2, $t0, $t1
	st.b $t2, $fp, -41
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -49
# br i1  %op7, label %label8, label %label13
	ld.b $t0, $fp, -49
	bnez $t0, .arrCopy_label8
	b .arrCopy_label13
.arrCopy_label8:
# %op9 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -36
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# %op10 = load i32 , i32 * %op9
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op11 = getelementptr i32 , i32 * %arg1, i32  %op3
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -36
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  %op10, i32 * %op11
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# %op12 = add i32  %op3, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# br label %label2
	ld.w $t0, $fp, -84
	st.w $t0, $fp, -36
	b .arrCopy_label2
.arrCopy_label13:
# ret i32  0
	addi.w $a0, $zero, 0
	b arrCopy_ret
arrCopy_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl calSum
	.type calSum, @function
calSum:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.calSum_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -32
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -36
	b .calSum_label2
.calSum_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op25, %label23 ]
# %op4 = phi i32  [ 0, %label_entry ], [ %op24, %label23 ]
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op6 = icmp slt i32  %op3, %op5
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -40
	slt $t2, $t0, $t1
	st.b $t2, $fp, -41
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -49
# br i1  %op8, label %label9, label %label18
	ld.b $t0, $fp, -49
	bnez $t0, .calSum_label9
	b .calSum_label18
.calSum_label9:
# %op10 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op12 = add i32  %op4, %op11
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -68
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op13 = srem i32  %op3, %arg1
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -28
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op14 = sub i32  %arg1, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op15 = icmp ne i32  %op13, %op14
	ld.w $t0, $fp, -76
	ld.w $t1, $fp, -80
	bne  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -81
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -89
# br i1  %op17, label %label19, label %label21
	ld.b $t0, $fp, -89
	bnez $t0, .calSum_label19
	b .calSum_label21
.calSum_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b calSum_ret
.calSum_label19:
# %op20 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label23
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -116
	b .calSum_label23
.calSum_label21:
# %op22 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -112
# store i32  %op12, i32 * %op22
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# br label %label23
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -116
	b .calSum_label23
.calSum_label23:
# %op24 = phi i32  [ %op12, %label19 ], [ 0, %label21 ]
# %op25 = add i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# br label %label2
	ld.w $t0, $fp, -120
	st.w $t0, $fp, -32
	ld.w $t0, $fp, -116
	st.w $t0, $fp, -36
	b .calSum_label2
calSum_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl avgPooling
	.type avgPooling, @function
avgPooling:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -272
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.avgPooling_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -36
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -40
	b .avgPooling_label2
.avgPooling_label2:
# %op3 = phi i32  [ %op29, %label28 ], [ undef, %label_entry ]
# %op4 = phi i32  [ 0, %label_entry ], [ %op31, %label28 ]
# %op5 = phi i32  [ 0, %label_entry ], [ %op30, %label28 ]
# %op6 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op7 = icmp slt i32  %op4, %op6
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -44
	slt $t2, $t0, $t1
	st.b $t2, $fp, -45
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -53
# br i1  %op9, label %label10, label %label15
	ld.b $t0, $fp, -53
	bnez $t0, .avgPooling_label10
	b .avgPooling_label15
.avgPooling_label10:
# %op11 = sub i32  %arg1, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op12 = icmp slt i32  %op4, %op11
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -60
	slt $t2, $t0, $t1
	st.b $t2, $fp, -61
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -69
# br i1  %op14, label %label19, label %label23
	ld.b $t0, $fp, -69
	bnez $t0, .avgPooling_label19
	b .avgPooling_label23
.avgPooling_label15:
# %op16 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op17 = sub i32  %op16, %arg1
	ld.w $t0, $fp, -76
	ld.w $t1, $fp, -28
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op18 = add i32  %op17, 1
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# br label %label53
	ld.w $t0, $fp, -84
	st.w $t0, $fp, -236
	b .avgPooling_label53
.avgPooling_label19:
# %op20 = getelementptr i32 , i32 * %arg0, i32  %op4
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -36
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op22 = add i32  %op5, %op21
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# br label %label28
	ld.w $t0, $fp, -32
	st.w $t0, $fp, -124
	ld.w $t0, $fp, -104
	st.w $t0, $fp, -128
	b .avgPooling_label28
.avgPooling_label23:
# %op24 = sub i32  %arg1, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op25 = icmp eq i32  %op4, %op24
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -108
	beq  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -109
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -117
# br i1  %op27, label %label32, label %label37
	ld.b $t0, $fp, -117
	bnez $t0, .avgPooling_label32
	b .avgPooling_label37
.avgPooling_label28:
# %op29 = phi i32  [ %op3, %label19 ], [ %op51, %label50 ]
# %op30 = phi i32  [ %op22, %label19 ], [ %op52, %label50 ]
# %op31 = add i32  %op4, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# br label %label2
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -32
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -36
	ld.w $t0, $fp, -128
	st.w $t0, $fp, -40
	b .avgPooling_label2
.avgPooling_label32:
# %op33 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op35 = sdiv i32  %op5, %arg1
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -28
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op36 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# store i32  %op35, i32 * %op36
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -152
	st.w $t1, $t0, 0
# br label %label50
	ld.w $t0, $fp, -148
	st.w $t0, $fp, -228
	ld.w $t0, $fp, -40
	st.w $t0, $fp, -232
	b .avgPooling_label50
.avgPooling_label37:
# %op38 = getelementptr i32 , i32 * %arg0, i32  %op4
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -36
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op40 = add i32  %op5, %op39
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -172
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -176
# %op41 = sub i32  %op40, %op3
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -32
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op42 = sub i32  %op4, %arg1
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -28
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op43 = add i32  %op42, 1
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op44 = getelementptr i32 , i32 * %arg0, i32  %op43
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -188
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op46 = sdiv i32  %op41, %arg1
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -28
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op47 = sub i32  %op4, %arg1
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -28
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -212
# %op48 = add i32  %op47, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# %op49 = getelementptr i32 , i32 * %arg0, i32  %op48
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -216
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -224
# store i32  %op46, i32 * %op49
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -208
	st.w $t1, $t0, 0
# br label %label50
	ld.w $t0, $fp, -204
	st.w $t0, $fp, -228
	ld.w $t0, $fp, -180
	st.w $t0, $fp, -232
	b .avgPooling_label50
.avgPooling_label50:
# %op51 = phi i32  [ %op34, %label32 ], [ %op45, %label37 ]
# %op52 = phi i32  [ %op5, %label32 ], [ %op41, %label37 ]
# br label %label28
	ld.w $t0, $fp, -228
	st.w $t0, $fp, -124
	ld.w $t0, $fp, -232
	st.w $t0, $fp, -128
	b .avgPooling_label28
.avgPooling_label53:
# %op54 = phi i32  [ %op18, %label15 ], [ %op61, %label59 ]
# %op55 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op56 = icmp slt i32  %op54, %op55
	ld.w $t0, $fp, -236
	ld.w $t1, $fp, -240
	slt $t2, $t0, $t1
	st.b $t2, $fp, -241
# %op57 = zext i1  %op56 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op58 = icmp ne i32  %op57, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -249
# br i1  %op58, label %label59, label %label62
	ld.b $t0, $fp, -249
	bnez $t0, .avgPooling_label59
	b .avgPooling_label62
.avgPooling_label59:
# %op60 = getelementptr i32 , i32 * %arg0, i32  %op54
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -236
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = add i32  %op54, 1
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -268
# br label %label53
	ld.w $t0, $fp, -268
	st.w $t0, $fp, -236
	b .avgPooling_label53
.avgPooling_label62:
# ret i32  0
	addi.w $a0, $zero, 0
	b avgPooling_ret
avgPooling_ret:
	addi.d $sp, $sp, 272
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1056
.main_label_entry:
# store i32  32, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 32
	st.w $t1, $t0, 0
# %op0 = alloca [32 x i32 ]
	addi.d $t1, $fp, -152
	st.d $t1, $fp, -24
# %op1 = alloca [32 x i32 ]
	addi.d $t1, $fp, -288
	st.d $t1, $fp, -160
# %op2 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -296
# store i32  7, i32 * %op2
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op3 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -304
# store i32  23, i32 * %op3
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 23
	st.w $t1, $t0, 0
# %op4 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -312
# store i32  89, i32 * %op4
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 89
	st.w $t1, $t0, 0
# %op5 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -320
# store i32  26, i32 * %op5
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 26
	st.w $t1, $t0, 0
# %op6 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -328
# store i32  282, i32 * %op6
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 282
	st.w $t1, $t0, 0
# %op7 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -336
# store i32  254, i32 * %op7
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 254
	st.w $t1, $t0, 0
# %op8 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -344
# store i32  27, i32 * %op8
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 27
	st.w $t1, $t0, 0
# %op9 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -352
# store i32  5, i32 * %op9
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op10 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -360
# store i32  83, i32 * %op10
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 83
	st.w $t1, $t0, 0
# %op11 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -368
# store i32  273, i32 * %op11
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 273
	st.w $t1, $t0, 0
# %op12 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -376
# store i32  574, i32 * %op12
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 574
	st.w $t1, $t0, 0
# %op13 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -384
# store i32  905, i32 * %op13
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 905
	st.w $t1, $t0, 0
# %op14 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -392
# store i32  354, i32 * %op14
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 354
	st.w $t1, $t0, 0
# %op15 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -400
# store i32  657, i32 * %op15
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 657
	st.w $t1, $t0, 0
# %op16 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -408
# store i32  935, i32 * %op16
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 935
	st.w $t1, $t0, 0
# %op17 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -416
# store i32  264, i32 * %op17
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 264
	st.w $t1, $t0, 0
# %op18 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  16
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -424
# store i32  639, i32 * %op18
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 639
	st.w $t1, $t0, 0
# %op19 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  17
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -432
# store i32  459, i32 * %op19
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 459
	st.w $t1, $t0, 0
# %op20 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  18
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -440
# store i32  29, i32 * %op20
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 29
	st.w $t1, $t0, 0
# %op21 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  19
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -448
# store i32  68, i32 * %op21
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 68
	st.w $t1, $t0, 0
# %op22 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  20
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -456
# store i32  929, i32 * %op22
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 929
	st.w $t1, $t0, 0
# %op23 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  21
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -464
# store i32  756, i32 * %op23
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 756
	st.w $t1, $t0, 0
# %op24 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  22
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -472
# store i32  452, i32 * %op24
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 452
	st.w $t1, $t0, 0
# %op25 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  23
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -480
# store i32  279, i32 * %op25
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 279
	st.w $t1, $t0, 0
# %op26 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  24
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -488
# store i32  58, i32 * %op26
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 58
	st.w $t1, $t0, 0
# %op27 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  25
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -496
# store i32  87, i32 * %op27
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 87
	st.w $t1, $t0, 0
# %op28 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  26
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -504
# store i32  96, i32 * %op28
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 96
	st.w $t1, $t0, 0
# %op29 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  27
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -512
# store i32  36, i32 * %op29
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 36
	st.w $t1, $t0, 0
# %op30 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  28
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -520
# store i32  39, i32 * %op30
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 39
	st.w $t1, $t0, 0
# %op31 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  29
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -528
# store i32  28, i32 * %op31
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 28
	st.w $t1, $t0, 0
# %op32 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  30
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -536
# store i32  1, i32 * %op32
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op33 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  31
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -544
# store i32  290, i32 * %op33
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 290
	st.w $t1, $t0, 0
# %op34 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -552
# %op35 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -560
# %op36 = call i32  @arrCopy(i32 * %op34, i32 * %op35)
	ld.d $a0, $fp, -552
	ld.d $a1, $fp, -560
	bl arrCopy
	st.w $a0, $fp, -564
# %op37 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -576
# %op38 = call i32  @revert(i32 * %op37)
	ld.d $a0, $fp, -576
	bl revert
	st.w $a0, $fp, -580
# br label %label39
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -584
	b .main_label39
.main_label39:
# %op40 = phi i32  [ 0, %label_entry ], [ %op47, %label44 ]
# %op41 = icmp slt i32  %op40, 32
	ld.w $t0, $fp, -584
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -585
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -585
	st.w $t0, $fp, -592
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -592
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label53
	addi.d $t2, $zero, 0
	b false_label53
true_label53:
	addi.d $t2, $zero, 1
false_label53:
	st.b $t2, $fp, -593
# br i1  %op43, label %label44, label %label48
	ld.b $t0, $fp, -593
	bnez $t0, .main_label44
	b .main_label48
.main_label44:
# %op45 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op40
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -584
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -608
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# call void @putint(i32  %op46)
	ld.w $a0, $fp, -612
	bl putint
# %op47 = add i32  %op40, 1
	ld.w $t0, $fp, -584
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -616
# br label %label39
	ld.w $t0, $fp, -616
	st.w $t0, $fp, -584
	b .main_label39
.main_label48:
# %op49 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -624
# %op50 = call i32  @bubblesort(i32 * %op49)
	ld.d $a0, $fp, -624
	bl bubblesort
	st.w $a0, $fp, -628
# br label %label51
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -632
	b .main_label51
.main_label51:
# %op52 = phi i32  [ 0, %label48 ], [ %op59, %label56 ]
# %op53 = icmp slt i32  %op52, 32
	ld.w $t0, $fp, -632
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -633
# %op54 = zext i1  %op53 to i32 
	ld.b $t0, $fp, -633
	st.w $t0, $fp, -640
# %op55 = icmp ne i32  %op54, 0
	ld.w $t0, $fp, -640
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -641
# br i1  %op55, label %label56, label %label60
	ld.b $t0, $fp, -641
	bnez $t0, .main_label56
	b .main_label60
.main_label56:
# %op57 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op52
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -632
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -656
# %op58 = load i32 , i32 * %op57
	ld.d $t0, $fp, -656
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# call void @putint(i32  %op58)
	ld.w $a0, $fp, -660
	bl putint
# %op59 = add i32  %op52, 1
	ld.w $t0, $fp, -632
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# br label %label51
	ld.w $t0, $fp, -664
	st.w $t0, $fp, -632
	b .main_label51
.main_label60:
# %op61 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -672
# %op62 = call i32  @getMid(i32 * %op61)
	ld.d $a0, $fp, -672
	bl getMid
	st.w $a0, $fp, -676
# call void @putint(i32  %op62)
	ld.w $a0, $fp, -676
	bl putint
# %op63 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -688
# %op64 = call i32  @getMost(i32 * %op63)
	ld.d $a0, $fp, -688
	bl getMost
	st.w $a0, $fp, -692
# call void @putint(i32  %op64)
	ld.w $a0, $fp, -692
	bl putint
# %op65 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -704
# %op66 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -712
# %op67 = call i32  @arrCopy(i32 * %op65, i32 * %op66)
	ld.d $a0, $fp, -704
	ld.d $a1, $fp, -712
	bl arrCopy
	st.w $a0, $fp, -716
# %op68 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -728
# %op69 = call i32  @bubblesort(i32 * %op68)
	ld.d $a0, $fp, -728
	bl bubblesort
	st.w $a0, $fp, -732
# br label %label70
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -736
	b .main_label70
.main_label70:
# %op71 = phi i32  [ 0, %label60 ], [ %op78, %label75 ]
# %op72 = icmp slt i32  %op71, 32
	ld.w $t0, $fp, -736
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -737
# %op73 = zext i1  %op72 to i32 
	ld.b $t0, $fp, -737
	st.w $t0, $fp, -744
# %op74 = icmp ne i32  %op73, 0
	ld.w $t0, $fp, -744
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -745
# br i1  %op74, label %label75, label %label79
	ld.b $t0, $fp, -745
	bnez $t0, .main_label75
	b .main_label79
.main_label75:
# %op76 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op71
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -736
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -760
# %op77 = load i32 , i32 * %op76
	ld.d $t0, $fp, -760
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# call void @putint(i32  %op77)
	ld.w $a0, $fp, -764
	bl putint
# %op78 = add i32  %op71, 1
	ld.w $t0, $fp, -736
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# br label %label70
	ld.w $t0, $fp, -768
	st.w $t0, $fp, -736
	b .main_label70
.main_label79:
# %op80 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -776
# %op81 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -784
# %op82 = call i32  @arrCopy(i32 * %op80, i32 * %op81)
	ld.d $a0, $fp, -776
	ld.d $a1, $fp, -784
	bl arrCopy
	st.w $a0, $fp, -788
# %op83 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -800
# %op84 = call i32  @insertsort(i32 * %op83)
	ld.d $a0, $fp, -800
	bl insertsort
	st.w $a0, $fp, -804
# br label %label85
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -808
	b .main_label85
.main_label85:
# %op86 = phi i32  [ 0, %label79 ], [ %op93, %label90 ]
# %op87 = icmp slt i32  %op86, 32
	ld.w $t0, $fp, -808
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -809
# %op88 = zext i1  %op87 to i32 
	ld.b $t0, $fp, -809
	st.w $t0, $fp, -816
# %op89 = icmp ne i32  %op88, 0
	ld.w $t0, $fp, -816
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -817
# br i1  %op89, label %label90, label %label94
	ld.b $t0, $fp, -817
	bnez $t0, .main_label90
	b .main_label94
.main_label90:
# %op91 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op86
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -808
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -832
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -832
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# call void @putint(i32  %op92)
	ld.w $a0, $fp, -836
	bl putint
# %op93 = add i32  %op86, 1
	ld.w $t0, $fp, -808
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -840
# br label %label85
	ld.w $t0, $fp, -840
	st.w $t0, $fp, -808
	b .main_label85
.main_label94:
# %op95 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -848
# %op96 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -856
# %op97 = call i32  @arrCopy(i32 * %op95, i32 * %op96)
	ld.d $a0, $fp, -848
	ld.d $a1, $fp, -856
	bl arrCopy
	st.w $a0, $fp, -860
# %op98 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -872
# %op99 = call i32  @QuickSort(i32 * %op98, i32  0, i32  31)
	ld.d $a0, $fp, -872
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 31
	bl QuickSort
	st.w $a0, $fp, -876
# br label %label100
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -880
	b .main_label100
.main_label100:
# %op101 = phi i32  [ 0, %label94 ], [ %op108, %label105 ]
# %op102 = icmp slt i32  %op101, 32
	ld.w $t0, $fp, -880
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -881
# %op103 = zext i1  %op102 to i32 
	ld.b $t0, $fp, -881
	st.w $t0, $fp, -888
# %op104 = icmp ne i32  %op103, 0
	ld.w $t0, $fp, -888
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -889
# br i1  %op104, label %label105, label %label109
	ld.b $t0, $fp, -889
	bnez $t0, .main_label105
	b .main_label109
.main_label105:
# %op106 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op101
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -880
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -904
# %op107 = load i32 , i32 * %op106
	ld.d $t0, $fp, -904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# call void @putint(i32  %op107)
	ld.w $a0, $fp, -908
	bl putint
# %op108 = add i32  %op101, 1
	ld.w $t0, $fp, -880
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -912
# br label %label100
	ld.w $t0, $fp, -912
	st.w $t0, $fp, -880
	b .main_label100
.main_label109:
# %op110 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -920
# %op111 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -928
# %op112 = call i32  @arrCopy(i32 * %op110, i32 * %op111)
	ld.d $a0, $fp, -920
	ld.d $a1, $fp, -928
	bl arrCopy
	st.w $a0, $fp, -932
# %op113 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -944
# %op114 = call i32  @calSum(i32 * %op113, i32  4)
	ld.d $a0, $fp, -944
	addi.w $a1, $zero, 4
	bl calSum
	st.w $a0, $fp, -948
# br label %label115
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -952
	b .main_label115
.main_label115:
# %op116 = phi i32  [ 0, %label109 ], [ %op123, %label120 ]
# %op117 = icmp slt i32  %op116, 32
	ld.w $t0, $fp, -952
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -953
# %op118 = zext i1  %op117 to i32 
	ld.b $t0, $fp, -953
	st.w $t0, $fp, -960
# %op119 = icmp ne i32  %op118, 0
	ld.w $t0, $fp, -960
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -961
# br i1  %op119, label %label120, label %label124
	ld.b $t0, $fp, -961
	bnez $t0, .main_label120
	b .main_label124
.main_label120:
# %op121 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op116
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -952
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -976
# %op122 = load i32 , i32 * %op121
	ld.d $t0, $fp, -976
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# call void @putint(i32  %op122)
	ld.w $a0, $fp, -980
	bl putint
# %op123 = add i32  %op116, 1
	ld.w $t0, $fp, -952
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -984
# br label %label115
	ld.w $t0, $fp, -984
	st.w $t0, $fp, -952
	b .main_label115
.main_label124:
# %op125 = getelementptr [32 x i32 ], [32 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -992
# %op126 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1000
# %op127 = call i32  @arrCopy(i32 * %op125, i32 * %op126)
	ld.d $a0, $fp, -992
	ld.d $a1, $fp, -1000
	bl arrCopy
	st.w $a0, $fp, -1004
# %op128 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -160
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1016
# %op129 = call i32  @avgPooling(i32 * %op128, i32  3)
	ld.d $a0, $fp, -1016
	addi.w $a1, $zero, 3
	bl avgPooling
	st.w $a0, $fp, -1020
# br label %label130
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1024
	b .main_label130
.main_label130:
# %op131 = phi i32  [ 0, %label124 ], [ %op138, %label135 ]
# %op132 = icmp slt i32  %op131, 32
	ld.w $t0, $fp, -1024
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1025
# %op133 = zext i1  %op132 to i32 
	ld.b $t0, $fp, -1025
	st.w $t0, $fp, -1032
# %op134 = icmp ne i32  %op133, 0
	ld.w $t0, $fp, -1032
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -1033
# br i1  %op134, label %label135, label %label139
	ld.b $t0, $fp, -1033
	bnez $t0, .main_label135
	b .main_label139
.main_label135:
# %op136 = getelementptr [32 x i32 ], [32 x i32 ]* %op1, i32  0, i32  %op131
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -1024
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1048
# %op137 = load i32 , i32 * %op136
	ld.d $t0, $fp, -1048
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# call void @putint(i32  %op137)
	ld.w $a0, $fp, -1052
	bl putint
# %op138 = add i32  %op131, 1
	ld.w $t0, $fp, -1024
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1056
# br label %label130
	ld.w $t0, $fp, -1056
	st.w $t0, $fp, -1024
	b .main_label130
.main_label139:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 1056
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
