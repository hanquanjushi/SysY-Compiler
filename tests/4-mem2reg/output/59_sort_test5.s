# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl swap
	.type swap, @function
swap:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.swap_label_entry:
# %op3 = getelementptr i32 , i32 * %arg0, i32  %arg1
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -40
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op5 = getelementptr i32 , i32 * %arg0, i32  %arg2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op6 = load i32 , i32 * %op5
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op7 = getelementptr i32 , i32 * %arg0, i32  %arg1
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -72
# store i32  %op6, i32 * %op7
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op8 = getelementptr i32 , i32 * %arg0, i32  %arg2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  %op4, i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# ret i32  0
	addi.w $a0, $zero, 0
	b swap_ret
swap_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl heap_ajust
	.type heap_ajust, @function
heap_ajust:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.heap_ajust_label_entry:
# %op3 = mul i32  %arg1, 2
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op4 = add i32  %op3, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# br label %label5
	ld.w $t0, $fp, -40
	st.w $t0, $fp, -44
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -48
	b .heap_ajust_label5
.heap_ajust_label5:
# %op6 = phi i32  [ %op4, %label_entry ], [ %op41, %label42 ]
# %op7 = phi i32  [ %arg1, %label_entry ], [ %op20, %label42 ]
# %op8 = add i32  %arg2, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = icmp slt i32  %op6, %op8
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -52
	slt $t2, $t0, $t1
	st.b $t2, $fp, -53
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -61
# br i1  %op11, label %label12, label %label16
	ld.b $t0, $fp, -61
	bnez $t0, .heap_ajust_label12
	b .heap_ajust_label16
.heap_ajust_label12:
# %op13 = icmp slt i32  %op6, %arg2
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -62
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -62
	st.w $t0, $fp, -68
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -69
# br i1  %op15, label %label28, label %label19
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -80
	ld.b $t0, $fp, -69
	bnez $t0, .heap_ajust_label28
	b .heap_ajust_label19
.heap_ajust_label16:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_ajust_ret
.heap_ajust_label17:
# %op18 = add i32  %op6, 1
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# br label %label19
	ld.w $t0, $fp, -76
	st.w $t0, $fp, -80
	b .heap_ajust_label19
.heap_ajust_label19:
# %op20 = phi i32  [ %op6, %label12 ], [ %op6, %label28 ], [ %op18, %label17 ]
# %op21 = getelementptr i32 , i32 * %arg0, i32  %op7
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -48
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op23 = getelementptr i32 , i32 * %arg0, i32  %op20
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -80
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op25 = icmp sgt i32  %op22, %op24
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -108
	slt $t2, $t1, $t0
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
# br i1  %op27, label %label37, label %label38
	ld.b $t0, $fp, -117
	bnez $t0, .heap_ajust_label37
	b .heap_ajust_label38
.heap_ajust_label28:
# %op29 = getelementptr i32 , i32 * %arg0, i32  %op6
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -44
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op31 = add i32  %op6, 1
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op32 = getelementptr i32 , i32 * %arg0, i32  %op31
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -136
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op34 = icmp slt i32  %op30, %op33
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -148
	slt $t2, $t0, $t1
	st.b $t2, $fp, -149
# %op35 = zext i1  %op34 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -157
# br i1  %op36, label %label17, label %label19
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -80
	ld.b $t0, $fp, -157
	bnez $t0, .heap_ajust_label17
	b .heap_ajust_label19
.heap_ajust_label37:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_ajust_ret
.heap_ajust_label38:
# %op39 = call i32  @swap(i32 * %arg0, i32  %op7, i32  %op20)
	ld.d $a0, $fp, -24
	ld.w $a1, $fp, -48
	ld.w $a2, $fp, -80
	bl swap
	st.w $a0, $fp, -164
# %op40 = mul i32  %op20, 2
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -168
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# br label %label42
	b .heap_ajust_label42
.heap_ajust_label42:
# br label %label5
	ld.w $t0, $fp, -172
	st.w $t0, $fp, -44
	ld.w $t0, $fp, -80
	st.w $t0, $fp, -48
	b .heap_ajust_label5
heap_ajust_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl heap_sort
	.type heap_sort, @function
heap_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.heap_sort_label_entry:
# %op2 = sdiv i32  %arg1, 2
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op3 = sub i32  %op2, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# br label %label4
	ld.w $t0, $fp, -36
	st.w $t0, $fp, -40
	b .heap_sort_label4
.heap_sort_label4:
# %op5 = phi i32  [ %op3, %label_entry ], [ %op12, %label9 ]
# %op6 = icmp sgt i32  %op5, -1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -41
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -49
# br i1  %op8, label %label9, label %label13
	ld.b $t0, $fp, -49
	bnez $t0, .heap_sort_label9
	b .heap_sort_label13
.heap_sort_label9:
# %op10 = sub i32  %arg1, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op11 = call i32  @heap_ajust(i32 * %arg0, i32  %op5, i32  %op10)
	ld.d $a0, $fp, -24
	ld.w $a1, $fp, -40
	ld.w $a2, $fp, -56
	bl heap_ajust
	st.w $a0, $fp, -60
# %op12 = sub i32  %op5, 1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label4
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -40
	b .heap_sort_label4
.heap_sort_label13:
# %op14 = sub i32  %arg1, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# br label %label15
	ld.w $t0, $fp, -68
	st.w $t0, $fp, -72
	b .heap_sort_label15
.heap_sort_label15:
# %op16 = phi i32  [ %op14, %label13 ], [ %op24, %label20 ]
# %op17 = icmp sgt i32  %op16, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -73
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -81
# br i1  %op19, label %label20, label %label25
	ld.b $t0, $fp, -81
	bnez $t0, .heap_sort_label20
	b .heap_sort_label25
.heap_sort_label20:
# %op21 = call i32  @swap(i32 * %arg0, i32  0, i32  %op16)
	ld.d $a0, $fp, -24
	addi.w $a1, $zero, 0
	ld.w $a2, $fp, -72
	bl swap
	st.w $a0, $fp, -88
# %op22 = sub i32  %op16, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op23 = call i32  @heap_ajust(i32 * %arg0, i32  0, i32  %op22)
	ld.d $a0, $fp, -24
	addi.w $a1, $zero, 0
	ld.w $a2, $fp, -92
	bl heap_ajust
	st.w $a0, $fp, -96
# %op24 = sub i32  %op16, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# br label %label15
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -72
	b .heap_sort_label15
.heap_sort_label25:
# ret i32  0
	addi.w $a0, $zero, 0
	b heap_sort_ret
heap_sort_ret:
	addi.d $sp, $sp, 112
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
# %op13 = call i32  @heap_sort(i32 * %op11, i32  %op12)
	ld.d $a0, $fp, -152
	ld.w $a1, $fp, -156
	bl heap_sort
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
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
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
