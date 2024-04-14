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
	addi.d $sp, $sp, -336
	st.d $a0, $fp, -24
.bubblesort_label_entry:
# %op1 = alloca i32 *
	addi.d $t1, $fp, -40
	st.d $t1, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# %op3 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label4
	b .bubblesort_label4
.bubblesort_label4:
# %op5 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op6 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op7 = sub i32  %op6, 1
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op8 = icmp slt i32  %op5, %op7
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -80
	slt $t2, $t0, $t1
	st.b $t2, $fp, -81
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -89
# br i1  %op10, label %label11, label %label12
	ld.b $t0, $fp, -89
	bnez $t0, .bubblesort_label11
	b .bubblesort_label12
.bubblesort_label11:
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label13
	b .bubblesort_label13
.bubblesort_label12:
# ret i32  0
	addi.w $a0, $zero, 0
	b bubblesort_ret
.bubblesort_label13:
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op17 = sub i32  %op15, %op16
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -104
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op18 = sub i32  %op17, 1
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op19 = icmp slt i32  %op14, %op18
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -112
	slt $t2, $t0, $t1
	st.b $t2, $fp, -113
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -121
# br i1  %op21, label %label22, label %label35
	ld.b $t0, $fp, -121
	bnez $t0, .bubblesort_label22
	b .bubblesort_label35
.bubblesort_label22:
# %op23 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op24 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op25 = getelementptr i32 , i32 * %op24, i32  %op23
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -128
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op26 = load i32 , i32 * %op25
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op27 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# %op29 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -168
# %op30 = getelementptr i32 , i32 * %op29, i32  %op28
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -156
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op32 = icmp sgt i32  %op26, %op31
	ld.w $t0, $fp, -148
	ld.w $t1, $fp, -180
	slt $t2, $t1, $t0
	st.b $t2, $fp, -181
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -189
# br i1  %op34, label %label38, label %label57
	ld.b $t0, $fp, -189
	bnez $t0, .bubblesort_label38
	b .bubblesort_label57
.bubblesort_label35:
# %op36 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op37 = add i32  %op36, 1
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# store i32  %op37, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -200
	st.w $t1, $t0, 0
# br label %label4
	b .bubblesort_label4
.bubblesort_label38:
# %op39 = alloca i32 
	addi.d $t1, $fp, -212
	st.d $t1, $fp, -208
# %op40 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op42 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -232
# %op43 = getelementptr i32 , i32 * %op42, i32  %op41
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -220
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# store i32  %op44, i32 * %op39
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# %op45 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op46 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -256
# %op47 = getelementptr i32 , i32 * %op46, i32  %op45
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -248
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op49 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op50 = add i32  %op49, 1
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# %op51 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -288
# %op52 = getelementptr i32 , i32 * %op51, i32  %op50
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -276
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# store i32  %op48, i32 * %op52
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -268
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op39
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op54 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op55 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -312
# %op56 = getelementptr i32 , i32 * %op55, i32  %op54
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -304
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# store i32  %op53, i32 * %op56
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label57
	b .bubblesort_label57
.bubblesort_label57:
# %op58 = load i32 , i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op59 = add i32  %op58, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# store i32  %op59, i32 * %op3
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# br label %label13
	b .bubblesort_label13
bubblesort_ret:
	addi.d $sp, $sp, 336
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
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
# %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -168
# %op13 = call i32  @bubblesort(i32 * %op12)
	ld.d $a0, $fp, -168
	bl bubblesort
	st.w $a0, $fp, -172
# store i32  %op13, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# br label %label14
	b .main_label14
.main_label14:
# %op15 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op16 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op17 = icmp slt i32  %op15, %op16
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -180
	slt $t2, $t0, $t1
	st.b $t2, $fp, -181
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -181
	st.w $t0, $fp, -188
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -188
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -189
# br i1  %op19, label %label20, label %label29
	ld.b $t0, $fp, -189
	bnez $t0, .main_label20
	b .main_label29
.main_label20:
# %op21 = alloca i32 
	addi.d $t1, $fp, -204
	st.d $t1, $fp, -200
# %op22 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op23 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op22
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -208
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# store i32  %op24, i32 * %op21
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -220
	st.w $t1, $t0, 0
# %op25 = load i32 , i32 * %op21
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# call void @putint(i32  %op25)
	ld.w $a0, $fp, -224
	bl putint
# store i32  10, i32 * %op21
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op26 = load i32 , i32 * %op21
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# call void @putch(i32  %op26)
	ld.w $a0, $fp, -228
	bl putch
# %op27 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op28 = add i32  %op27, 1
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# store i32  %op28, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -236
	st.w $t1, $t0, 0
# br label %label14
	b .main_label14
.main_label29:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
