	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -400
.main_label_entry:
# %op0 = alloca [20 x i32 ]
	addi.d $t1, $fp, -104
	st.d $t1, $fp, -24
# %op1 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -112
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -120
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -128
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op4 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -136
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -144
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -152
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -160
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -168
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -176
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -184
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -192
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -200
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -208
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -216
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -224
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -232
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  16
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -240
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  17
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -248
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  18
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -256
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  19
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -264
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -272
# store i32  1, i32 * %op21
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op22 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -280
# store i32  2, i32 * %op22
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label23
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -284
	addi.w $t0, $zero, 2
	st.w $t0, $fp, -288
	b .main_label23
.main_label23:
# %op24 = phi i32  [ 0, %label_entry ], [ %op43, %label29 ]
# %op25 = phi i32  [ 2, %label_entry ], [ %op46, %label29 ]
# %op26 = icmp slt i32  %op25, 20
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	st.b $t2, $fp, -289
# %op27 = zext i1  %op26 to i32 
	ld.b $t0, $fp, -289
	st.w $t0, $fp, -296
# %op28 = icmp ne i32  %op27, 0
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -297
# br i1  %op28, label %label29, label %label47
	ld.b $t0, $fp, -297
	bnez $t0, .main_label29
	b .main_label47
.main_label29:
# %op30 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  %op25
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -288
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op32 = sub i32  %op25, 1
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# %op33 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  %op32
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -320
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op35 = add i32  %op31, %op34
	ld.w $t0, $fp, -316
	ld.w $t1, $fp, -332
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op36 = sub i32  %op25, 2
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# %op37 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  %op36
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -340
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# %op38 = load i32 , i32 * %op37
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op39 = add i32  %op35, %op38
	ld.w $t0, $fp, -336
	ld.w $t1, $fp, -356
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op40 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  %op25
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -288
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -368
# store i32  %op39, i32 * %op40
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -360
	st.w $t1, $t0, 0
# %op41 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  %op25
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -288
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# %op42 = load i32 , i32 * %op41
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op43 = add i32  %op24, %op42
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -380
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op44 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  %op25
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -288
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -392
# %op45 = load i32 , i32 * %op44
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# call void @putint(i32  %op45)
	ld.w $a0, $fp, -396
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op46 = add i32  %op25, 1
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# br label %label23
	ld.w $t0, $fp, -384
	st.w $t0, $fp, -284
	ld.w $t0, $fp, -400
	st.w $t0, $fp, -288
	b .main_label23
.main_label47:
# ret i32  %op24
	ld.w $a0, $fp, -284
	b main_ret
main_ret:
	addi.d $sp, $sp, 400
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra