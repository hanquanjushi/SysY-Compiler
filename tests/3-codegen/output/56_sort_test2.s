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
	addi.d $sp, $sp, -288
	st.d $a0, $fp, -24
.insertsort_label_entry:
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
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .insertsort_label3
.insertsort_label3:
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp slt i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	slt $t2, $t0, $t1
	st.b $t2, $fp, -61
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -69
# br i1  %op8, label %label9, label %label18
	ld.b $t0, $fp, -69
	bnez $t0, .insertsort_label9
	b .insertsort_label18
.insertsort_label9:
# %op10 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# %op11 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op12 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -96
# %op13 = getelementptr i32 , i32 * %op12, i32  %op11
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -88
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# store i32  %op14, i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op15 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# %op16 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op17 = sub i32  %op16, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# store i32  %op17, i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# br label %label19
	b .insertsort_label19
.insertsort_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b insertsort_ret
.insertsort_label19:
# %op20 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op21 = icmp sgt i32  %op20, -1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -137
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -137
	st.w $t0, $fp, -144
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -145
# br i1  %op23, label %label43, label %label35
	ld.b $t0, $fp, -145
	bnez $t0, .insertsort_label43
	b .insertsort_label35
.insertsort_label24:
# %op25 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op26 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -160
# %op27 = getelementptr i32 , i32 * %op26, i32  %op25
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -152
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op28 = load i32 , i32 * %op27
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op29 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op30 = add i32  %op29, 1
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op31 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -192
# %op32 = getelementptr i32 , i32 * %op31, i32  %op30
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -180
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -200
# store i32  %op28, i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# %op33 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op34 = sub i32  %op33, 1
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# store i32  %op34, i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -208
	st.w $t1, $t0, 0
# br label %label19
	b .insertsort_label19
.insertsort_label35:
# %op36 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op37 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op38 = add i32  %op37, 1
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -220
# %op39 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -232
# %op40 = getelementptr i32 , i32 * %op39, i32  %op38
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -220
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# store i32  %op36, i32 * %op40
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -212
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# store i32  %op42, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# br label %label3
	b .insertsort_label3
.insertsort_label43:
# %op44 = load i32 , i32 * %op10
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op45 = load i32 , i32 * %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op46 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op47 = getelementptr i32 , i32 * %op46, i32  %op45
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -256
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op49 = icmp slt i32  %op44, %op48
	ld.w $t0, $fp, -252
	ld.w $t1, $fp, -276
	slt $t2, $t0, $t1
	st.b $t2, $fp, -277
# %op50 = zext i1  %op49 to i32 
	ld.b $t0, $fp, -277
	st.w $t0, $fp, -284
# %op51 = icmp ne i32  %op50, 0
	ld.w $t0, $fp, -284
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -285
# br i1  %op51, label %label24, label %label35
	ld.b $t0, $fp, -285
	bnez $t0, .insertsort_label24
	b .insertsort_label35
insertsort_ret:
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
# %op13 = call i32  @insertsort(i32 * %op12)
	ld.d $a0, $fp, -168
	bl insertsort
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
