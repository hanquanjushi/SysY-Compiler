	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -496
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# store i32  2, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  20, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 20
	st.w $t1, $t0, 0
# %op2 = alloca [20 x i32 ]
	addi.d $t1, $fp, -136
	st.d $t1, $fp, -56
# %op3 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -144
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op4 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  1
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -152
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  2
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -160
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  3
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -168
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  4
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -176
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  5
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -184
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  6
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -192
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  7
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -200
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  8
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -208
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  9
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -216
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  10
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -224
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  11
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -232
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  12
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -240
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  13
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -248
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  14
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -256
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  15
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -264
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  16
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -272
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  17
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -280
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  18
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -288
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  19
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -296
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -304
# store i32  1, i32 * %op23
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op24 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  1
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -312
# store i32  2, i32 * %op24
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op25 = alloca i32 
	addi.d $t1, $fp, -324
	st.d $t1, $fp, -320
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label26
	b .main_label26
.main_label26:
# %op27 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op28 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op29 = icmp slt i32  %op27, %op28
	ld.w $t0, $fp, -328
	ld.w $t1, $fp, -332
	slt $t2, $t0, $t1
	st.b $t2, $fp, -333
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -333
	st.w $t0, $fp, -340
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -340
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -341
# br i1  %op31, label %label32, label %label58
	ld.b $t0, $fp, -341
	bnez $t0, .main_label32
	b .main_label58
.main_label32:
# %op33 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op34 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op33
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -348
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -360
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op36 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op37 = sub i32  %op36, 1
	ld.w $t0, $fp, -368
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -372
# %op38 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op37
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op40 = add i32  %op35, %op39
	ld.w $t0, $fp, -364
	ld.w $t1, $fp, -388
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op41 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op42 = sub i32  %op41, 2
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op43 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op42
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -400
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op45 = add i32  %op40, %op44
	ld.w $t0, $fp, -392
	ld.w $t1, $fp, -412
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# %op46 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op47 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op46
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -420
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -432
# store i32  %op45, i32 * %op47
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -416
	st.w $t1, $t0, 0
# %op48 = load i32 , i32 * %op25
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op49 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op50 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op49
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -440
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -448
# %op51 = load i32 , i32 * %op50
	ld.d $t0, $fp, -448
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op52 = add i32  %op48, %op51
	ld.w $t0, $fp, -436
	ld.w $t1, $fp, -452
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -456
# store i32  %op52, i32 * %op25
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -456
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op54 = getelementptr [20 x i32 ], [20 x i32 ]* %op2, i32  0, i32  %op53
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -460
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -472
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# call void @putint(i32  %op55)
	ld.w $a0, $fp, -476
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op56 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -480
# %op57 = add i32  %op56, 1
	ld.w $t0, $fp, -480
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -484
# store i32  %op57, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -484
	st.w $t1, $t0, 0
# br label %label26
	b .main_label26
.main_label58:
# %op59 = load i32 , i32 * %op25
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -488
# ret i32  %op59
	ld.w $a0, $fp, -488
	b main_ret
main_ret:
	addi.d $sp, $sp, 496
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
