	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -960
.main_label_entry:
# %op0 = alloca [4 x [2 x i32 ]]
	addi.d $t1, $fp, -56
	st.d $t1, $fp, -24
# %op1 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -64
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -72
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -80
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op4 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -88
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -96
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -104
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -112
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -120
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -128
# store i32  1, i32 * %op9
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op10 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -136
# store i32  2, i32 * %op10
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op11 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -144
# store i32  3, i32 * %op11
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op12 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -152
# store i32  4, i32 * %op12
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op13 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -160
# store i32  7, i32 * %op13
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op14 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# store i32  3, i32 * %op14
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op15 = alloca [4 x [2 x i32 ]]
	addi.d $t1, $fp, -216
	st.d $t1, $fp, -184
# %op16 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -224
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -232
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -240
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -248
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -256
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -264
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -272
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op15, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -184
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -280
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = alloca [4 x [2 x i32 ]]
	addi.d $t1, $fp, -320
	st.d $t1, $fp, -288
# %op25 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -328
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -336
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -344
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -352
# store i32  0, i32 * %op28
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op29 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -360
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -368
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -376
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -384
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -392
# store i32  1, i32 * %op33
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op34 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -400
# store i32  2, i32 * %op34
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op35 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -408
# store i32  3, i32 * %op35
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op36 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -416
# store i32  4, i32 * %op36
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op37 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -424
# store i32  5, i32 * %op37
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op38 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -432
# store i32  6, i32 * %op38
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op39 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -440
# store i32  7, i32 * %op39
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op40 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -448
# store i32  8, i32 * %op40
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op41 = alloca [4 x [2 x i32 ]]
	addi.d $t1, $fp, -488
	st.d $t1, $fp, -456
# %op42 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -496
# %op43 = getelementptr [2 x i32 ], [2 x i32 ]* %op42, i32  0, i32  0
	ld.d $t0, $fp, -496
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -504
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op45 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -520
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -528
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -536
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -544
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -552
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -560
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -568
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -576
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -584
# store i32  1, i32 * %op53
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op54 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -592
# store i32  2, i32 * %op54
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op55 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -600
# store i32  3, i32 * %op55
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op56 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -608
# store i32  5, i32 * %op56
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op57 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -616
# store i32  %op44, i32 * %op57
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -508
	st.w $t1, $t0, 0
# %op58 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -624
# store i32  8, i32 * %op58
	ld.d $t0, $fp, -624
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op59 = alloca [4 x [2 x [1 x i32 ]]]
	addi.d $t1, $fp, -664
	st.d $t1, $fp, -632
# %op60 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  2
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -672
# %op61 = getelementptr [2 x i32 ], [2 x i32 ]* %op60, i32  0, i32  1
	ld.d $t0, $fp, -672
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -680
# %op62 = load i32 , i32 * %op61
	ld.d $t0, $fp, -680
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op63 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op24, i32  0, i32  2
	ld.d $t0, $fp, -288
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -696
# %op64 = getelementptr [2 x i32 ], [2 x i32 ]* %op63, i32  0, i32  1
	ld.d $t0, $fp, -696
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -704
# %op65 = load i32 , i32 * %op64
	ld.d $t0, $fp, -704
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op66 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -720
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -728
# store i32  0, i32 * %op67
	ld.d $t0, $fp, -728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  1, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -736
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  1, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -744
# store i32  0, i32 * %op69
	ld.d $t0, $fp, -744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  2, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -752
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -752
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  2, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -760
# store i32  0, i32 * %op71
	ld.d $t0, $fp, -760
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op72 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  3, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -768
# store i32  0, i32 * %op72
	ld.d $t0, $fp, -768
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op73 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  3, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -776
# store i32  0, i32 * %op73
	ld.d $t0, $fp, -776
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op74 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -784
# store i32  %op62, i32 * %op74
	ld.d $t0, $fp, -784
	ld.w $t1, $fp, -684
	st.w $t1, $t0, 0
# %op75 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -792
# store i32  %op65, i32 * %op75
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -708
	st.w $t1, $t0, 0
# %op76 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  1, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -800
# store i32  3, i32 * %op76
	ld.d $t0, $fp, -800
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op77 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  1, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -808
# store i32  4, i32 * %op77
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op78 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  2, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -816
# store i32  5, i32 * %op78
	ld.d $t0, $fp, -816
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op79 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  2, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -824
# store i32  6, i32 * %op79
	ld.d $t0, $fp, -824
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op80 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  3, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -832
# store i32  7, i32 * %op80
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op81 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  3, i32  1, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -840
# store i32  8, i32 * %op81
	ld.d $t0, $fp, -840
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op82 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  3
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -848
# %op83 = getelementptr [2 x [1 x i32 ]], [2 x [1 x i32 ]]* %op82, i32  0, i32  1
	ld.d $t0, $fp, -848
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -856
# %op84 = getelementptr [1 x i32 ], [1 x i32 ]* %op83, i32  0, i32  0
	ld.d $t0, $fp, -856
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -864
# %op85 = load i32 , i32 * %op84
	ld.d $t0, $fp, -864
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# %op86 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -880
# %op87 = getelementptr [2 x [1 x i32 ]], [2 x [1 x i32 ]]* %op86, i32  0, i32  0
	ld.d $t0, $fp, -880
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -888
# %op88 = getelementptr [1 x i32 ], [1 x i32 ]* %op87, i32  0, i32  0
	ld.d $t0, $fp, -888
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -896
# %op89 = load i32 , i32 * %op88
	ld.d $t0, $fp, -896
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# %op90 = add i32  %op85, %op89
	ld.w $t0, $fp, -868
	ld.w $t1, $fp, -900
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -904
# %op91 = getelementptr [4 x [2 x [1 x i32 ]]], [4 x [2 x [1 x i32 ]]]* %op59, i32  0, i32  0
	ld.d $t0, $fp, -632
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -912
# %op92 = getelementptr [2 x [1 x i32 ]], [2 x [1 x i32 ]]* %op91, i32  0, i32  1
	ld.d $t0, $fp, -912
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -920
# %op93 = getelementptr [1 x i32 ], [1 x i32 ]* %op92, i32  0, i32  0
	ld.d $t0, $fp, -920
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -928
# %op94 = load i32 , i32 * %op93
	ld.d $t0, $fp, -928
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op95 = add i32  %op90, %op94
	ld.w $t0, $fp, -904
	ld.w $t1, $fp, -932
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -936
# %op96 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op41, i32  0, i32  3
	ld.d $t0, $fp, -456
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -944
# %op97 = getelementptr [2 x i32 ], [2 x i32 ]* %op96, i32  0, i32  0
	ld.d $t0, $fp, -944
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -952
# %op98 = load i32 , i32 * %op97
	ld.d $t0, $fp, -952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op99 = add i32  %op95, %op98
	ld.w $t0, $fp, -936
	ld.w $t1, $fp, -956
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -960
# ret i32  %op99
	ld.w $a0, $fp, -960
	b main_ret
main_ret:
	addi.d $sp, $sp, 960
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra