	.text
	.globl MAX
	.type MAX, @function
MAX:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.MAX_label_entry:
# %op2 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op5 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = icmp eq i32  %op4, %op5
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -60
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
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
# br i1  %op8, label %label9, label %label11
	ld.b $t0, $fp, -69
	bnez $t0, .MAX_label9
	b .MAX_label11
.MAX_label9:
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# ret i32  %op10
	ld.w $a0, $fp, -76
	b MAX_ret
.MAX_label11:
# %op12 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op13 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op14 = icmp sgt i32  %op12, %op13
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t1, $t0
	st.b $t2, $fp, -85
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -93
# br i1  %op16, label %label17, label %label19
	ld.b $t0, $fp, -93
	bnez $t0, .MAX_label17
	b .MAX_label19
.MAX_label17:
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# ret i32  %op18
	ld.w $a0, $fp, -100
	b MAX_ret
.MAX_label19:
# %op20 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# ret i32  %op20
	ld.w $a0, $fp, -104
	b MAX_ret
MAX_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl max_sum_nonadjacent
	.type max_sum_nonadjacent, @function
max_sum_nonadjacent:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -512
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.max_sum_nonadjacent_label_entry:
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
# %op4 = alloca [16 x i32 ]
	addi.d $t1, $fp, -136
	st.d $t1, $fp, -72
# %op5 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -144
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  1
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -152
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  2
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -160
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  3
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -168
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  4
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -176
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  5
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -184
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  6
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -192
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  7
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -200
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  8
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -208
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  9
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -216
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  10
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -224
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  11
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -232
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  12
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -240
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  13
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -248
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  14
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -256
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  15
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -264
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -272
# %op22 = getelementptr i32 , i32 * %op21, i32  0
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op24 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -296
# store i32  %op23, i32 * %op24
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -284
	st.w $t1, $t0, 0
# %op25 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -304
# %op26 = getelementptr i32 , i32 * %op25, i32  0
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op28 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -328
# %op29 = getelementptr i32 , i32 * %op28, i32  1
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -336
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op31 = call i32  @MAX(i32  %op27, i32  %op30)
	ld.w $a0, $fp, -316
	ld.w $a1, $fp, -340
	bl MAX
	st.w $a0, $fp, -344
# %op32 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  1
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -352
# store i32  %op31, i32 * %op32
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -344
	st.w $t1, $t0, 0
# %op33 = alloca i32 
	addi.d $t1, $fp, -364
	st.d $t1, $fp, -360
# store i32  2, i32 * %op33
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label34
	b .max_sum_nonadjacent_label34
.max_sum_nonadjacent_label34:
# %op35 = load i32 , i32 * %op33
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op36 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op37 = icmp slt i32  %op35, %op36
	ld.w $t0, $fp, -368
	ld.w $t1, $fp, -372
	slt $t2, $t0, $t1
	st.b $t2, $fp, -373
# %op38 = zext i1  %op37 to i32 
	ld.b $t0, $fp, -373
	st.w $t0, $fp, -380
# %op39 = icmp ne i32  %op38, 0
	ld.w $t0, $fp, -380
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -381
# br i1  %op39, label %label40, label %label59
	ld.b $t0, $fp, -381
	bnez $t0, .max_sum_nonadjacent_label40
	b .max_sum_nonadjacent_label59
.max_sum_nonadjacent_label40:
# %op41 = load i32 , i32 * %op33
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op42 = sub i32  %op41, 2
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op43 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op42
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -392
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -400
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op45 = load i32 , i32 * %op33
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op46 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -416
# %op47 = getelementptr i32 , i32 * %op46, i32  %op45
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -408
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# %op48 = load i32 , i32 * %op47
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op49 = add i32  %op44, %op48
	ld.w $t0, $fp, -404
	ld.w $t1, $fp, -428
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# %op50 = load i32 , i32 * %op33
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op51 = sub i32  %op50, 1
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -440
# %op52 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op51
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -440
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -448
# %op53 = load i32 , i32 * %op52
	ld.d $t0, $fp, -448
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op54 = call i32  @MAX(i32  %op49, i32  %op53)
	ld.w $a0, $fp, -432
	ld.w $a1, $fp, -452
	bl MAX
	st.w $a0, $fp, -456
# %op55 = load i32 , i32 * %op33
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op56 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op55
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -460
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -472
# store i32  %op54, i32 * %op56
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -456
	st.w $t1, $t0, 0
# %op57 = load i32 , i32 * %op33
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op58 = add i32  %op57, 1
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -480
# store i32  %op58, i32 * %op33
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -480
	st.w $t1, $t0, 0
# br label %label34
	b .max_sum_nonadjacent_label34
.max_sum_nonadjacent_label59:
# %op60 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op61 = sub i32  %op60, 1
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -488
# %op62 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op61
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -488
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -496
# %op63 = load i32 , i32 * %op62
	ld.d $t0, $fp, -496
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# ret i32  %op63
	ld.w $a0, $fp, -500
	b max_sum_nonadjacent_ret
max_sum_nonadjacent_ret:
	addi.d $sp, $sp, 512
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl longest_common_subseq
	.type longest_common_subseq, @function
longest_common_subseq:
	lu12i.w $t0, 0
	ori $t0, $t0, 3568
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.d $a2, $fp, -40
	st.w $a3, $fp, -44
.longest_common_subseq_label_entry:
# %op4 = alloca i32 *
	addi.d $t1, $fp, -64
	st.d $t1, $fp, -56
# store i32 * %arg0, i32 ** %op4
	ld.d $t0, $fp, -56
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg1, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = alloca i32 *
	addi.d $t1, $fp, -96
	st.d $t1, $fp, -88
# store i32 * %arg2, i32 ** %op6
	ld.d $t0, $fp, -88
	ld.d $t1, $fp, -40
	st.d $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  %arg3, i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op8 = alloca [16 x [16 x i32 ]]
	addi.d $t1, $fp, -1144
	st.d $t1, $fp, -120
# %op9 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1152
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -1152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1160
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -1160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -1168
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -1168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -1176
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -1176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -1184
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -1184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -1192
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -1192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -1200
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -1200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -1208
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -1208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -1216
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -1216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -1224
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -1224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -1232
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -1232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -1240
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -1240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -1248
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -1248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -1256
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -1256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -1264
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -1264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -1272
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -1272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -1280
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -1280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -1288
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -1288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -1296
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -1296
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -1304
# store i32  0, i32 * %op28
	ld.d $t0, $fp, -1304
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op29 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -1312
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -1312
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -1320
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -1320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -1328
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -1328
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -1336
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -1336
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -1344
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -1344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op34 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -1352
# store i32  0, i32 * %op34
	ld.d $t0, $fp, -1352
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op35 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -1360
# store i32  0, i32 * %op35
	ld.d $t0, $fp, -1360
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op36 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -1368
# store i32  0, i32 * %op36
	ld.d $t0, $fp, -1368
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op37 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -1376
# store i32  0, i32 * %op37
	ld.d $t0, $fp, -1376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op38 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -1384
# store i32  0, i32 * %op38
	ld.d $t0, $fp, -1384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op39 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -1392
# store i32  0, i32 * %op39
	ld.d $t0, $fp, -1392
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op40 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -1400
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -1400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -1408
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -1408
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op42 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -1416
# store i32  0, i32 * %op42
	ld.d $t0, $fp, -1416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op43 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -1424
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -1424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 140
	st.d $t2, $fp, -1432
# store i32  0, i32 * %op44
	ld.d $t0, $fp, -1432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op45 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -1440
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -1440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 148
	st.d $t2, $fp, -1448
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -1448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -1456
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -1456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 156
	st.d $t2, $fp, -1464
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -1464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 160
	st.d $t2, $fp, -1472
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -1472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 164
	st.d $t2, $fp, -1480
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -1480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 168
	st.d $t2, $fp, -1488
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -1488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 172
	st.d $t2, $fp, -1496
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -1496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 176
	st.d $t2, $fp, -1504
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -1504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 180
	st.d $t2, $fp, -1512
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -1512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 184
	st.d $t2, $fp, -1520
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -1520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 188
	st.d $t2, $fp, -1528
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -1528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 192
	st.d $t2, $fp, -1536
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -1536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 196
	st.d $t2, $fp, -1544
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -1544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 200
	st.d $t2, $fp, -1552
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -1552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 204
	st.d $t2, $fp, -1560
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -1560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 208
	st.d $t2, $fp, -1568
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -1568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 212
	st.d $t2, $fp, -1576
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -1576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 216
	st.d $t2, $fp, -1584
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -1584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 220
	st.d $t2, $fp, -1592
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -1592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 224
	st.d $t2, $fp, -1600
# store i32  0, i32 * %op65
	ld.d $t0, $fp, -1600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op66 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 228
	st.d $t2, $fp, -1608
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -1608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 232
	st.d $t2, $fp, -1616
# store i32  0, i32 * %op67
	ld.d $t0, $fp, -1616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 236
	st.d $t2, $fp, -1624
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -1624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 240
	st.d $t2, $fp, -1632
# store i32  0, i32 * %op69
	ld.d $t0, $fp, -1632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 244
	st.d $t2, $fp, -1640
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -1640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 248
	st.d $t2, $fp, -1648
# store i32  0, i32 * %op71
	ld.d $t0, $fp, -1648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op72 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 252
	st.d $t2, $fp, -1656
# store i32  0, i32 * %op72
	ld.d $t0, $fp, -1656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op73 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 256
	st.d $t2, $fp, -1664
# store i32  0, i32 * %op73
	ld.d $t0, $fp, -1664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op74 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 260
	st.d $t2, $fp, -1672
# store i32  0, i32 * %op74
	ld.d $t0, $fp, -1672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op75 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 264
	st.d $t2, $fp, -1680
# store i32  0, i32 * %op75
	ld.d $t0, $fp, -1680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op76 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 268
	st.d $t2, $fp, -1688
# store i32  0, i32 * %op76
	ld.d $t0, $fp, -1688
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op77 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 272
	st.d $t2, $fp, -1696
# store i32  0, i32 * %op77
	ld.d $t0, $fp, -1696
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op78 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 276
	st.d $t2, $fp, -1704
# store i32  0, i32 * %op78
	ld.d $t0, $fp, -1704
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op79 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 280
	st.d $t2, $fp, -1712
# store i32  0, i32 * %op79
	ld.d $t0, $fp, -1712
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op80 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 284
	st.d $t2, $fp, -1720
# store i32  0, i32 * %op80
	ld.d $t0, $fp, -1720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op81 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 288
	st.d $t2, $fp, -1728
# store i32  0, i32 * %op81
	ld.d $t0, $fp, -1728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op82 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 292
	st.d $t2, $fp, -1736
# store i32  0, i32 * %op82
	ld.d $t0, $fp, -1736
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op83 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 296
	st.d $t2, $fp, -1744
# store i32  0, i32 * %op83
	ld.d $t0, $fp, -1744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op84 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 300
	st.d $t2, $fp, -1752
# store i32  0, i32 * %op84
	ld.d $t0, $fp, -1752
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op85 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 304
	st.d $t2, $fp, -1760
# store i32  0, i32 * %op85
	ld.d $t0, $fp, -1760
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op86 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 308
	st.d $t2, $fp, -1768
# store i32  0, i32 * %op86
	ld.d $t0, $fp, -1768
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op87 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 312
	st.d $t2, $fp, -1776
# store i32  0, i32 * %op87
	ld.d $t0, $fp, -1776
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op88 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 316
	st.d $t2, $fp, -1784
# store i32  0, i32 * %op88
	ld.d $t0, $fp, -1784
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op89 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 320
	st.d $t2, $fp, -1792
# store i32  0, i32 * %op89
	ld.d $t0, $fp, -1792
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op90 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 324
	st.d $t2, $fp, -1800
# store i32  0, i32 * %op90
	ld.d $t0, $fp, -1800
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op91 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 328
	st.d $t2, $fp, -1808
# store i32  0, i32 * %op91
	ld.d $t0, $fp, -1808
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op92 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 332
	st.d $t2, $fp, -1816
# store i32  0, i32 * %op92
	ld.d $t0, $fp, -1816
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op93 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 336
	st.d $t2, $fp, -1824
# store i32  0, i32 * %op93
	ld.d $t0, $fp, -1824
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op94 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 340
	st.d $t2, $fp, -1832
# store i32  0, i32 * %op94
	ld.d $t0, $fp, -1832
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op95 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 344
	st.d $t2, $fp, -1840
# store i32  0, i32 * %op95
	ld.d $t0, $fp, -1840
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op96 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 348
	st.d $t2, $fp, -1848
# store i32  0, i32 * %op96
	ld.d $t0, $fp, -1848
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op97 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 352
	st.d $t2, $fp, -1856
# store i32  0, i32 * %op97
	ld.d $t0, $fp, -1856
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op98 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 356
	st.d $t2, $fp, -1864
# store i32  0, i32 * %op98
	ld.d $t0, $fp, -1864
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op99 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 360
	st.d $t2, $fp, -1872
# store i32  0, i32 * %op99
	ld.d $t0, $fp, -1872
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op100 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 364
	st.d $t2, $fp, -1880
# store i32  0, i32 * %op100
	ld.d $t0, $fp, -1880
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op101 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 368
	st.d $t2, $fp, -1888
# store i32  0, i32 * %op101
	ld.d $t0, $fp, -1888
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op102 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 372
	st.d $t2, $fp, -1896
# store i32  0, i32 * %op102
	ld.d $t0, $fp, -1896
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op103 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 376
	st.d $t2, $fp, -1904
# store i32  0, i32 * %op103
	ld.d $t0, $fp, -1904
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op104 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 380
	st.d $t2, $fp, -1912
# store i32  0, i32 * %op104
	ld.d $t0, $fp, -1912
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op105 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 384
	st.d $t2, $fp, -1920
# store i32  0, i32 * %op105
	ld.d $t0, $fp, -1920
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op106 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 388
	st.d $t2, $fp, -1928
# store i32  0, i32 * %op106
	ld.d $t0, $fp, -1928
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op107 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 392
	st.d $t2, $fp, -1936
# store i32  0, i32 * %op107
	ld.d $t0, $fp, -1936
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op108 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 396
	st.d $t2, $fp, -1944
# store i32  0, i32 * %op108
	ld.d $t0, $fp, -1944
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op109 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -1952
# store i32  0, i32 * %op109
	ld.d $t0, $fp, -1952
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op110 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 404
	st.d $t2, $fp, -1960
# store i32  0, i32 * %op110
	ld.d $t0, $fp, -1960
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op111 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 408
	st.d $t2, $fp, -1968
# store i32  0, i32 * %op111
	ld.d $t0, $fp, -1968
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op112 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 412
	st.d $t2, $fp, -1976
# store i32  0, i32 * %op112
	ld.d $t0, $fp, -1976
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op113 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 416
	st.d $t2, $fp, -1984
# store i32  0, i32 * %op113
	ld.d $t0, $fp, -1984
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op114 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 420
	st.d $t2, $fp, -1992
# store i32  0, i32 * %op114
	ld.d $t0, $fp, -1992
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op115 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 424
	st.d $t2, $fp, -2000
# store i32  0, i32 * %op115
	ld.d $t0, $fp, -2000
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op116 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 428
	st.d $t2, $fp, -2008
# store i32  0, i32 * %op116
	ld.d $t0, $fp, -2008
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op117 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 432
	st.d $t2, $fp, -2016
# store i32  0, i32 * %op117
	ld.d $t0, $fp, -2016
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op118 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 436
	st.d $t2, $fp, -2024
# store i32  0, i32 * %op118
	ld.d $t0, $fp, -2024
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op119 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 440
	st.d $t2, $fp, -2032
# store i32  0, i32 * %op119
	ld.d $t0, $fp, -2032
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op120 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 444
	st.d $t2, $fp, -2040
# store i32  0, i32 * %op120
	ld.d $t0, $fp, -2040
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op121 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 448
	st.d $t2, $fp, -2048
# store i32  0, i32 * %op121
	ld.d $t0, $fp, -2048
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op122 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 452
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op122
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op123 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 456
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op123
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op124 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 460
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op124
	lu12i.w $t0, -1
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op125 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 464
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op125
	lu12i.w $t0, -1
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op126 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 468
	lu12i.w $t8, -1
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op126
	lu12i.w $t0, -1
	ori $t0, $t0, 2008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op127 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 472
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op127
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op128 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 476
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op128
	lu12i.w $t0, -1
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op129 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 480
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op129
	lu12i.w $t0, -1
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op130 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 484
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op130
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op131 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 488
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op131
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op132 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 492
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op132
	lu12i.w $t0, -1
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op133 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 496
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op133
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op134 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 500
	lu12i.w $t8, -1
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op134
	lu12i.w $t0, -1
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op135 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 504
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op135
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op136 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 508
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op136
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op137 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 512
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op137
	lu12i.w $t0, -1
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op138 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 516
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op138
	lu12i.w $t0, -1
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op139 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 520
	lu12i.w $t8, -1
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op139
	lu12i.w $t0, -1
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op140 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 524
	lu12i.w $t8, -1
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op140
	lu12i.w $t0, -1
	ori $t0, $t0, 1896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op141 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 528
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op141
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op142 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 532
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op142
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op143 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 536
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op143
	lu12i.w $t0, -1
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op144 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 540
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op144
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op145 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 544
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op145
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op146 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 548
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op146
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op147 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 552
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op147
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op148 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 556
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op148
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op149 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 560
	lu12i.w $t8, -1
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op149
	lu12i.w $t0, -1
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op150 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 564
	lu12i.w $t8, -1
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op150
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op151 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 568
	lu12i.w $t8, -1
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op151
	lu12i.w $t0, -1
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op152 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 572
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op152
	lu12i.w $t0, -1
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op153 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 576
	lu12i.w $t8, -1
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op153
	lu12i.w $t0, -1
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op154 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 580
	lu12i.w $t8, -1
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op154
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op155 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 584
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op155
	lu12i.w $t0, -1
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op156 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 588
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op156
	lu12i.w $t0, -1
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op157 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 592
	lu12i.w $t8, -1
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op157
	lu12i.w $t0, -1
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op158 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 596
	lu12i.w $t8, -1
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op158
	lu12i.w $t0, -1
	ori $t0, $t0, 1752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op159 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 600
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op159
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op160 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 604
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op160
	lu12i.w $t0, -1
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op161 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 608
	lu12i.w $t8, -1
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op161
	lu12i.w $t0, -1
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op162 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 612
	lu12i.w $t8, -1
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op162
	lu12i.w $t0, -1
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op163 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 616
	lu12i.w $t8, -1
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op163
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op164 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 620
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op164
	lu12i.w $t0, -1
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op165 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 624
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op165
	lu12i.w $t0, -1
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op166 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 628
	lu12i.w $t8, -1
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op166
	lu12i.w $t0, -1
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op167 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 632
	lu12i.w $t8, -1
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op167
	lu12i.w $t0, -1
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op168 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 636
	lu12i.w $t8, -1
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op168
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op169 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 640
	lu12i.w $t8, -1
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op169
	lu12i.w $t0, -1
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op170 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 644
	lu12i.w $t8, -1
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op170
	lu12i.w $t0, -1
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op171 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 648
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op171
	lu12i.w $t0, -1
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op172 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 652
	lu12i.w $t8, -1
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op172
	lu12i.w $t0, -1
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op173 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 656
	lu12i.w $t8, -1
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op173
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op174 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 660
	lu12i.w $t8, -1
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op174
	lu12i.w $t0, -1
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op175 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 664
	lu12i.w $t8, -1
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op175
	lu12i.w $t0, -1
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op176 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 668
	lu12i.w $t8, -1
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op176
	lu12i.w $t0, -1
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op177 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 672
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op177
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op178 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 676
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op178
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op179 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 680
	lu12i.w $t8, -1
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op179
	lu12i.w $t0, -1
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op180 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 684
	lu12i.w $t8, -1
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op180
	lu12i.w $t0, -1
	ori $t0, $t0, 1576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op181 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 688
	lu12i.w $t8, -1
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op181
	lu12i.w $t0, -1
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op182 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 692
	lu12i.w $t8, -1
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op182
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op183 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 696
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op183
	lu12i.w $t0, -1
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op184 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 700
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op184
	lu12i.w $t0, -1
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op185 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 704
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op185
	lu12i.w $t0, -1
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op186 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 708
	lu12i.w $t8, -1
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op186
	lu12i.w $t0, -1
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op187 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 712
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op187
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op188 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 716
	lu12i.w $t8, -1
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op188
	lu12i.w $t0, -1
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op189 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 720
	lu12i.w $t8, -1
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op189
	lu12i.w $t0, -1
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op190 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 724
	lu12i.w $t8, -1
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op190
	lu12i.w $t0, -1
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op191 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 728
	lu12i.w $t8, -1
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op191
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op192 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 732
	lu12i.w $t8, -1
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op192
	lu12i.w $t0, -1
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op193 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 736
	lu12i.w $t8, -1
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op193
	lu12i.w $t0, -1
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op194 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 740
	lu12i.w $t8, -1
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op194
	lu12i.w $t0, -1
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op195 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 744
	lu12i.w $t8, -1
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op195
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op196 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 748
	lu12i.w $t8, -1
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op196
	lu12i.w $t0, -1
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op197 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 752
	lu12i.w $t8, -1
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op197
	lu12i.w $t0, -1
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op198 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 756
	lu12i.w $t8, -1
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op198
	lu12i.w $t0, -1
	ori $t0, $t0, 1432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op199 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 760
	lu12i.w $t8, -1
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op199
	lu12i.w $t0, -1
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op200 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 764
	lu12i.w $t8, -1
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op200
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op201 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 768
	lu12i.w $t8, -1
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op201
	lu12i.w $t0, -1
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op202 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 772
	lu12i.w $t8, -1
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op202
	lu12i.w $t0, -1
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op203 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 776
	lu12i.w $t8, -1
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op203
	lu12i.w $t0, -1
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op204 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 780
	lu12i.w $t8, -1
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op204
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op205 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 784
	lu12i.w $t8, -1
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op205
	lu12i.w $t0, -1
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op206 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 788
	lu12i.w $t8, -1
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op206
	lu12i.w $t0, -1
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op207 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 792
	lu12i.w $t8, -1
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op207
	lu12i.w $t0, -1
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op208 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 796
	lu12i.w $t8, -1
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op208
	lu12i.w $t0, -1
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op209 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 800
	lu12i.w $t8, -1
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op209
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op210 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 804
	lu12i.w $t8, -1
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op210
	lu12i.w $t0, -1
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op211 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 808
	lu12i.w $t8, -1
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op211
	lu12i.w $t0, -1
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op212 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 812
	lu12i.w $t8, -1
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op212
	lu12i.w $t0, -1
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op213 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 816
	lu12i.w $t8, -1
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op213
	lu12i.w $t0, -1
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op214 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 820
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op214
	lu12i.w $t0, -1
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op215 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 824
	lu12i.w $t8, -1
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op215
	lu12i.w $t0, -1
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op216 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 828
	lu12i.w $t8, -1
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op216
	lu12i.w $t0, -1
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op217 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 832
	lu12i.w $t8, -1
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op217
	lu12i.w $t0, -1
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op218 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 836
	lu12i.w $t8, -1
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op218
	lu12i.w $t0, -1
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op219 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 840
	lu12i.w $t8, -1
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op219
	lu12i.w $t0, -1
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op220 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 844
	lu12i.w $t8, -1
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op220
	lu12i.w $t0, -1
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op221 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 848
	lu12i.w $t8, -1
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op221
	lu12i.w $t0, -1
	ori $t0, $t0, 1248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op222 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 852
	lu12i.w $t8, -1
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op222
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op223 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 856
	lu12i.w $t8, -1
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op223
	lu12i.w $t0, -1
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op224 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 860
	lu12i.w $t8, -1
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op224
	lu12i.w $t0, -1
	ori $t0, $t0, 1224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op225 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 864
	lu12i.w $t8, -1
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op225
	lu12i.w $t0, -1
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op226 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 868
	lu12i.w $t8, -1
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op226
	lu12i.w $t0, -1
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op227 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 872
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op227
	lu12i.w $t0, -1
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op228 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 876
	lu12i.w $t8, -1
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op228
	lu12i.w $t0, -1
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op229 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 880
	lu12i.w $t8, -1
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op229
	lu12i.w $t0, -1
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op230 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 884
	lu12i.w $t8, -1
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op230
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op231 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 888
	lu12i.w $t8, -1
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op231
	lu12i.w $t0, -1
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op232 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 892
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op232
	lu12i.w $t0, -1
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op233 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 896
	lu12i.w $t8, -1
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op233
	lu12i.w $t0, -1
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op234 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 900
	lu12i.w $t8, -1
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op234
	lu12i.w $t0, -1
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op235 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 904
	lu12i.w $t8, -1
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op235
	lu12i.w $t0, -1
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op236 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 908
	lu12i.w $t8, -1
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op236
	lu12i.w $t0, -1
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op237 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 912
	lu12i.w $t8, -1
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op237
	lu12i.w $t0, -1
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op238 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 916
	lu12i.w $t8, -1
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op238
	lu12i.w $t0, -1
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op239 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 920
	lu12i.w $t8, -1
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op239
	lu12i.w $t0, -1
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op240 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 924
	lu12i.w $t8, -1
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op240
	lu12i.w $t0, -1
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op241 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 928
	lu12i.w $t8, -1
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op241
	lu12i.w $t0, -1
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op242 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 932
	lu12i.w $t8, -1
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op242
	lu12i.w $t0, -1
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op243 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 936
	lu12i.w $t8, -1
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op243
	lu12i.w $t0, -1
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op244 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 940
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op244
	lu12i.w $t0, -1
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op245 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 944
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op245
	lu12i.w $t0, -1
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op246 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 948
	lu12i.w $t8, -1
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op246
	lu12i.w $t0, -1
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op247 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 952
	lu12i.w $t8, -1
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op247
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op248 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 956
	lu12i.w $t8, -1
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op248
	lu12i.w $t0, -1
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op249 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 960
	lu12i.w $t8, -1
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op249
	lu12i.w $t0, -1
	ori $t0, $t0, 1024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op250 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 964
	lu12i.w $t8, -1
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op250
	lu12i.w $t0, -1
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op251 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 968
	lu12i.w $t8, -1
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op251
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op252 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 972
	lu12i.w $t8, -1
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op252
	lu12i.w $t0, -1
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op253 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 976
	lu12i.w $t8, -1
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op253
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op254 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 980
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op254
	lu12i.w $t0, -1
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op255 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 984
	lu12i.w $t8, -1
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op255
	lu12i.w $t0, -1
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op256 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 988
	lu12i.w $t8, -1
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op256
	lu12i.w $t0, -1
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op257 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  8
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 992
	lu12i.w $t8, -1
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op257
	lu12i.w $t0, -1
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op258 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  9
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 996
	lu12i.w $t8, -1
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op258
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op259 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  10
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 1000
	lu12i.w $t8, -1
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op259
	lu12i.w $t0, -1
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op260 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  11
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 1004
	lu12i.w $t8, -1
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op260
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op261 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  12
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 1008
	lu12i.w $t8, -1
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op261
	lu12i.w $t0, -1
	ori $t0, $t0, 928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op262 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  13
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 1012
	lu12i.w $t8, -1
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op262
	lu12i.w $t0, -1
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op263 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  14
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 1016
	lu12i.w $t8, -1
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op263
	lu12i.w $t0, -1
	ori $t0, $t0, 912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op264 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  15
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 1020
	lu12i.w $t8, -1
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op264
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op265 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op266 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  1, i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label267
	b .longest_common_subseq_label267
.longest_common_subseq_label267:
# %op268 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op269 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op270 = icmp sle i32  %op268, %op269
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t1, $t0, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	lu12i.w $t8, -1
	ori $t8, $t8, 867
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op271 = zext i1  %op270 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 867
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op272 = icmp ne i32  %op271, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	lu12i.w $t8, -1
	ori $t8, $t8, 859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op272, label %label273, label %label274
	lu12i.w $t0, -1
	ori $t0, $t0, 859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .longest_common_subseq_label273
	b .longest_common_subseq_label274
.longest_common_subseq_label273:
# store i32  1, i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label280
	b .longest_common_subseq_label280
.longest_common_subseq_label274:
# %op275 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op276 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op275
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op277 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op278 = getelementptr [16 x i32 ], [16 x i32 ]* %op276, i32  0, i32  %op277
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op279 = load i32 , i32 * %op278
	lu12i.w $t0, -1
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# ret i32  %op279
	lu12i.w $a0, -1
	ori $a0, $a0, 820
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b longest_common_subseq_ret
.longest_common_subseq_label280:
# %op281 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op282 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op283 = icmp sle i32  %op281, %op282
	lu12i.w $t0, -1
	ori $t0, $t0, 816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t1, $t0, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	lu12i.w $t8, -1
	ori $t8, $t8, 811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op284 = zext i1  %op283 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op285 = icmp ne i32  %op284, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	lu12i.w $t8, -1
	ori $t8, $t8, 803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op285, label %label286, label %label300
	lu12i.w $t0, -1
	ori $t0, $t0, 803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .longest_common_subseq_label286
	b .longest_common_subseq_label300
.longest_common_subseq_label286:
# %op287 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op288 = sub i32  %op287, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op289 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op290 = getelementptr i32 , i32 * %op289, i32  %op288
	lu12i.w $t0, -1
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op291 = load i32 , i32 * %op290
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op292 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op293 = sub i32  %op292, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op294 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -88
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op295 = getelementptr i32 , i32 * %op294, i32  %op293
	lu12i.w $t0, -1
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op296 = load i32 , i32 * %op295
	lu12i.w $t0, -1
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op297 = icmp eq i32  %op291, %op296
	lu12i.w $t0, -1
	ori $t0, $t0, 772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	beq  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	lu12i.w $t8, -1
	ori $t8, $t8, 739
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op298 = zext i1  %op297 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 739
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op299 = icmp ne i32  %op298, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	lu12i.w $t8, -1
	ori $t8, $t8, 731
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op299, label %label303, label %label316
	lu12i.w $t0, -1
	ori $t0, $t0, 731
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .longest_common_subseq_label303
	b .longest_common_subseq_label316
.longest_common_subseq_label300:
# %op301 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op302 = add i32  %op301, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op302, i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label267
	b .longest_common_subseq_label267
.longest_common_subseq_label303:
# %op304 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op305 = sub i32  %op304, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op306 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op305
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op307 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op308 = sub i32  %op307, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op309 = getelementptr [16 x i32 ], [16 x i32 ]* %op306, i32  0, i32  %op308
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 696
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op310 = load i32 , i32 * %op309
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op311 = add i32  %op310, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op312 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op313 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op312
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op314 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op315 = getelementptr [16 x i32 ], [16 x i32 ]* %op313, i32  0, i32  %op314
	lu12i.w $t0, -1
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op311, i32 * %op315
	lu12i.w $t0, -1
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 680
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label334
	b .longest_common_subseq_label334
.longest_common_subseq_label316:
# %op317 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op318 = sub i32  %op317, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op319 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op318
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op320 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op321 = getelementptr [16 x i32 ], [16 x i32 ]* %op319, i32  0, i32  %op320
	lu12i.w $t0, -1
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op322 = load i32 , i32 * %op321
	lu12i.w $t0, -1
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op323 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op324 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op323
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op325 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op326 = sub i32  %op325, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 596
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op327 = getelementptr [16 x i32 ], [16 x i32 ]* %op324, i32  0, i32  %op326
	lu12i.w $t0, -1
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op328 = load i32 , i32 * %op327
	lu12i.w $t0, -1
	ori $t0, $t0, 584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op329 = call i32  @MAX(i32  %op322, i32  %op328)
	lu12i.w $a0, -1
	ori $a0, $a0, 612
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	lu12i.w $a1, -1
	ori $a1, $a1, 580
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl MAX
	lu12i.w $t8, -1
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op330 = load i32 , i32 * %op266
	lu12i.w $t0, -1
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op331 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op330
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op332 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op333 = getelementptr [16 x i32 ], [16 x i32 ]* %op331, i32  0, i32  %op332
	lu12i.w $t0, -1
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op329, i32 * %op333
	lu12i.w $t0, -1
	ori $t0, $t0, 544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label334
	b .longest_common_subseq_label334
.longest_common_subseq_label334:
# %op335 = load i32 , i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op336 = add i32  %op335, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op336, i32 * %op265
	lu12i.w $t0, -1
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label280
	b .longest_common_subseq_label280
longest_common_subseq_ret:
	lu12i.w $t0, 0
	ori $t0, $t0, 3568
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -672
.main_label_entry:
# %op0 = alloca [15 x i32 ]
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -24
# %op1 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -96
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -104
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -112
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op4 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -120
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -128
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -136
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -144
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -152
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -160
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -168
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -176
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -184
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -192
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -200
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -208
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -216
# store i32  8, i32 * %op16
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op17 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -224
# store i32  7, i32 * %op17
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op18 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -232
# store i32  4, i32 * %op18
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op19 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -240
# store i32  1, i32 * %op19
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op20 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -248
# store i32  2, i32 * %op20
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op21 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -256
# store i32  7, i32 * %op21
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op22 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -264
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -272
# store i32  1, i32 * %op23
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op24 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -280
# store i32  9, i32 * %op24
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op25 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -288
# store i32  3, i32 * %op25
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op26 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -296
# store i32  4, i32 * %op26
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op27 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -304
# store i32  8, i32 * %op27
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op28 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -312
# store i32  3, i32 * %op28
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op29 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -320
# store i32  7, i32 * %op29
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op30 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -328
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = alloca [13 x i32 ]
	addi.d $t1, $fp, -388
	st.d $t1, $fp, -336
# %op32 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  0
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -400
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  1
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -408
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op34 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  2
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -416
# store i32  0, i32 * %op34
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op35 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  3
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -424
# store i32  0, i32 * %op35
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op36 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  4
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -432
# store i32  0, i32 * %op36
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op37 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  5
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -440
# store i32  0, i32 * %op37
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op38 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  6
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -448
# store i32  0, i32 * %op38
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op39 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  7
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -456
# store i32  0, i32 * %op39
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op40 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  8
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -464
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  9
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -472
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op42 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  10
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -480
# store i32  0, i32 * %op42
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op43 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  11
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -488
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  12
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -496
# store i32  0, i32 * %op44
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op45 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  0
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -504
# store i32  3, i32 * %op45
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op46 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  1
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -512
# store i32  9, i32 * %op46
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op47 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  2
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -520
# store i32  7, i32 * %op47
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op48 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  3
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -528
# store i32  1, i32 * %op48
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op49 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  4
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -536
# store i32  4, i32 * %op49
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op50 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  5
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -544
# store i32  2, i32 * %op50
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op51 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  6
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -552
# store i32  4, i32 * %op51
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op52 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  7
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -560
# store i32  3, i32 * %op52
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op53 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  8
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -568
# store i32  6, i32 * %op53
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op54 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  9
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -576
# store i32  8, i32 * %op54
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op55 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  10
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -584
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  11
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -592
# store i32  1, i32 * %op56
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op57 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  12
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -600
# store i32  5, i32 * %op57
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op58 = alloca i32 
	addi.d $t1, $fp, -612
	st.d $t1, $fp, -608
# %op59 = alloca i32 
	addi.d $t1, $fp, -628
	st.d $t1, $fp, -624
# %op60 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -640
# %op61 = call i32  @max_sum_nonadjacent(i32 * %op60, i32  15)
	ld.d $a0, $fp, -640
	addi.w $a1, $zero, 15
	bl max_sum_nonadjacent
	st.w $a0, $fp, -644
# call void @putint(i32  %op61)
	ld.w $a0, $fp, -644
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op62 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -656
# %op63 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  0
	ld.d $t0, $fp, -336
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -664
# %op64 = call i32  @longest_common_subseq(i32 * %op62, i32  15, i32 * %op63, i32  13)
	ld.d $a0, $fp, -656
	addi.w $a1, $zero, 15
	ld.d $a2, $fp, -664
	addi.w $a3, $zero, 13
	bl longest_common_subseq
	st.w $a0, $fp, -668
# call void @putint(i32  %op64)
	ld.w $a0, $fp, -668
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 672
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
