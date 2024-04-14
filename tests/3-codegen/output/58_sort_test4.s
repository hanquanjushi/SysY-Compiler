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
	addi.d $sp, $sp, -368
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.select_sort_label_entry:
# %op2 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# %op5 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op6 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label7
	b .select_sort_label7
.select_sort_label7:
# %op8 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op9 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op10 = sub i32  %op9, 1
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op11 = icmp slt i32  %op8, %op10
	ld.w $t0, $fp, -112
	ld.w $t1, $fp, -120
	slt $t2, $t0, $t1
	st.b $t2, $fp, -121
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -129
# br i1  %op13, label %label14, label %label18
	ld.b $t0, $fp, -129
	bnez $t0, .select_sort_label14
	b .select_sort_label18
.select_sort_label14:
# %op15 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# store i32  %op15, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op17 = add i32  %op16, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op17, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# br label %label19
	b .select_sort_label19
.select_sort_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b select_sort_ret
.select_sort_label19:
# %op20 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op21 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op22 = icmp slt i32  %op20, %op21
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -152
	slt $t2, $t0, $t1
	st.b $t2, $fp, -153
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -161
# br i1  %op24, label %label25, label %label37
	ld.b $t0, $fp, -161
	bnez $t0, .select_sort_label25
	b .select_sort_label37
.select_sort_label25:
# %op26 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op27 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -176
# %op28 = getelementptr i32 , i32 * %op27, i32  %op26
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -168
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -184
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op30 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op31 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op32 = getelementptr i32 , i32 * %op31, i32  %op30
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -192
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op34 = icmp sgt i32  %op29, %op33
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -212
	slt $t2, $t1, $t0
	st.b $t2, $fp, -213
# %op35 = zext i1  %op34 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -221
# br i1  %op36, label %label43, label %label45
	ld.b $t0, $fp, -221
	bnez $t0, .select_sort_label43
	b .select_sort_label45
.select_sort_label37:
# %op38 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op39 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op40 = icmp ne i32  %op38, %op39
	ld.w $t0, $fp, -228
	ld.w $t1, $fp, -232
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -233
# %op41 = zext i1  %op40 to i32 
	ld.b $t0, $fp, -233
	st.w $t0, $fp, -240
# %op42 = icmp ne i32  %op41, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -241
# br i1  %op42, label %label48, label %label65
	ld.b $t0, $fp, -241
	bnez $t0, .select_sort_label48
	b .select_sort_label65
.select_sort_label43:
# %op44 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# store i32  %op44, i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# br label %label45
	b .select_sort_label45
.select_sort_label45:
# %op46 = load i32 , i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op47 = add i32  %op46, 1
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# store i32  %op47, i32 * %op5
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -256
	st.w $t1, $t0, 0
# br label %label19
	b .select_sort_label19
.select_sort_label48:
# %op49 = alloca i32 
	addi.d $t1, $fp, -268
	st.d $t1, $fp, -264
# %op50 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op51 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -280
# %op52 = getelementptr i32 , i32 * %op51, i32  %op50
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -272
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op53 = load i32 , i32 * %op52
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# store i32  %op53, i32 * %op49
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -292
	st.w $t1, $t0, 0
# %op54 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op55 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -304
# %op56 = getelementptr i32 , i32 * %op55, i32  %op54
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -296
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op58 = load i32 , i32 * %op6
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op59 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -328
# %op60 = getelementptr i32 , i32 * %op59, i32  %op58
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -320
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# store i32  %op57, i32 * %op60
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -316
	st.w $t1, $t0, 0
# %op61 = load i32 , i32 * %op49
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op62 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# %op63 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -352
# %op64 = getelementptr i32 , i32 * %op63, i32  %op62
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -344
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# store i32  %op61, i32 * %op64
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -340
	st.w $t1, $t0, 0
# br label %label65
	b .select_sort_label65
.select_sort_label65:
# %op66 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op67 = add i32  %op66, 1
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# store i32  %op67, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -368
	st.w $t1, $t0, 0
# br label %label7
	b .select_sort_label7
select_sort_ret:
	addi.d $sp, $sp, 368
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
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
# %op11 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -168
# %op13 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op14 = call i32  @select_sort(i32 * %op12, i32  %op13)
	ld.d $a0, $fp, -168
	ld.w $a1, $fp, -172
	bl select_sort
	st.w $a0, $fp, -176
# store i32  %op14, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -176
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label15:
# %op16 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op17 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op18 = icmp slt i32  %op16, %op17
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -184
	slt $t2, $t0, $t1
	st.b $t2, $fp, -185
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -193
# br i1  %op20, label %label21, label %label30
	ld.b $t0, $fp, -193
	bnez $t0, .main_label21
	b .main_label30
.main_label21:
# %op22 = alloca i32 
	addi.d $t1, $fp, -212
	st.d $t1, $fp, -208
# %op23 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op24 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op23
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -216
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op25 = load i32 , i32 * %op24
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# store i32  %op25, i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# %op26 = load i32 , i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# call void @putint(i32  %op26)
	ld.w $a0, $fp, -232
	bl putint
# store i32  10, i32 * %op22
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * %op22
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# call void @putch(i32  %op27)
	ld.w $a0, $fp, -236
	bl putch
# %op28 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op29 = add i32  %op28, 1
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -244
# store i32  %op29, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# br label %label15
	b .main_label15
.main_label30:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
