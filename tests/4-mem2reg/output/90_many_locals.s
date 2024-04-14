	.text
	.globl foo
	.type foo, @function
foo:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -432
.foo_label_entry:
# %op0 = alloca [16 x i32 ]
	addi.d $t1, $fp, -88
	st.d $t1, $fp, -24
# %op1 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -96
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -104
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -112
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op4 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -120
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -128
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -136
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -144
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -152
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -160
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -168
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -176
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -184
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -192
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -200
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -208
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -216
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -224
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -232
# store i32  1, i32 * %op18
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op19 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -240
# store i32  2, i32 * %op19
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op20 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -248
# store i32  3, i32 * %op20
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op21 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -256
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -264
# store i32  1, i32 * %op22
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op23 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -272
# store i32  2, i32 * %op23
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op24 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -280
# store i32  3, i32 * %op24
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op25 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -288
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -296
# store i32  1, i32 * %op26
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op27 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -304
# store i32  2, i32 * %op27
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op28 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -312
# store i32  3, i32 * %op28
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op29 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -320
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -328
# store i32  1, i32 * %op30
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op31 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -336
# store i32  2, i32 * %op31
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op32 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -344
# store i32  3, i32 * %op32
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op33 = add i32  3, 7
	addi.w $t0, $zero, 3
	addi.w $t1, $zero, 7
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -348
# %op34 = add i32  %op33, 5
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 5
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op35 = add i32  %op34, 6
	ld.w $t0, $fp, -352
	addi.w $t1, $zero, 6
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -356
# %op36 = add i32  %op35, 1
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op37 = add i32  %op36, 0
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op38 = add i32  %op37, 3
	ld.w $t0, $fp, -364
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op39 = add i32  %op38, 5
	ld.w $t0, $fp, -368
	addi.w $t1, $zero, 5
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -372
# %op40 = add i32  4, 2
	addi.w $t0, $zero, 4
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op41 = add i32  %op40, 7
	ld.w $t0, $fp, -376
	addi.w $t1, $zero, 7
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -380
# %op42 = add i32  %op41, 9
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 9
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op43 = add i32  %op42, 8
	ld.w $t0, $fp, -384
	addi.w $t1, $zero, 8
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -388
# %op44 = add i32  %op43, 1
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op45 = add i32  %op44, 4
	ld.w $t0, $fp, -392
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -396
# %op46 = add i32  %op45, 6
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 6
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op47 = add i32  %op39, %op46
	ld.w $t0, $fp, -372
	ld.w $t1, $fp, -400
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -404
# %op48 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -416
# %op49 = load i32 , i32 * %op48
	ld.d $t0, $fp, -416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op50 = add i32  %op47, %op49
	ld.w $t0, $fp, -404
	ld.w $t1, $fp, -420
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -424
# ret i32  %op50
	ld.w $a0, $fp, -424
	b foo_ret
foo_ret:
	addi.d $sp, $sp, 432
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
.main_label_entry:
# %op0 = add i32  3, 7
	addi.w $t0, $zero, 3
	addi.w $t1, $zero, 7
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -20
# %op1 = add i32  %op0, 5
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 5
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# %op2 = add i32  %op1, 6
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 6
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# %op3 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op4 = add i32  %op3, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op5 = add i32  %op4, 3
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# %op6 = add i32  %op5, 5
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 5
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op7 = add i32  4, 2
	addi.w $t0, $zero, 4
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# %op8 = add i32  %op7, 7
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 7
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# %op9 = add i32  %op8, 9
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 9
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -56
# %op10 = add i32  %op9, 8
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 8
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op11 = add i32  %op10, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op12 = add i32  %op11, 4
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 4
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -68
# %op13 = add i32  %op12, 6
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 6
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op14 = call i32  @foo()
	bl foo
	st.w $a0, $fp, -76
# %op15 = add i32  %op6, %op14
	ld.w $t0, $fp, -44
	ld.w $t1, $fp, -76
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op16 = call i32  @foo()
	bl foo
	st.w $a0, $fp, -84
# %op17 = add i32  %op13, %op16
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op18 = add i32  4, 7
	addi.w $t0, $zero, 4
	addi.w $t1, $zero, 7
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# %op19 = add i32  %op18, 2
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op20 = add i32  %op19, 5
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 5
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op21 = add i32  %op20, 8
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 8
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op22 = add i32  %op21, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op23 = add i32  %op22, 6
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 6
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# %op24 = add i32  %op23, 3
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 3
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# %op25 = add i32  %op15, %op17
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -88
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op26 = add i32  %op25, %op24
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -116
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# call void @putint(i32  %op26)
	ld.w $a0, $fp, -124
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
