# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl len
	.data
	.type len, @object
	.size len, 4
len:
	.word 20
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1968
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
# %op23 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -288
# store i32  3, i32 * %op23
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op24 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -296
# store i32  4, i32 * %op24
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op25 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -304
# store i32  5, i32 * %op25
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op26 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -312
# store i32  6, i32 * %op26
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op27 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -320
# store i32  7, i32 * %op27
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op28 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -328
# store i32  8, i32 * %op28
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op29 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -336
# store i32  9, i32 * %op29
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op30 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -344
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -352
# store i32  1, i32 * %op31
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op32 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -360
# store i32  2, i32 * %op32
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op33 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -368
# store i32  3, i32 * %op33
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op34 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -376
# store i32  4, i32 * %op34
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op35 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -384
# store i32  5, i32 * %op35
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op36 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -392
# store i32  6, i32 * %op36
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op37 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  16
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -400
# store i32  7, i32 * %op37
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op38 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  17
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -408
# store i32  8, i32 * %op38
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op39 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  18
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -416
# store i32  9, i32 * %op39
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op40 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  19
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -424
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = alloca [20 x i32 ]
	addi.d $t1, $fp, -512
	st.d $t1, $fp, -432
# %op42 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  0
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -520
# store i32  0, i32 * %op42
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op43 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  1
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -528
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  2
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -536
# store i32  0, i32 * %op44
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op45 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  3
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -544
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  4
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -552
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  5
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -560
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  6
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -568
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  7
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -576
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  8
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -584
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  9
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -592
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  10
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -600
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  11
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -608
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  12
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -616
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  13
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -624
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  14
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -632
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  15
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -640
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  16
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -648
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  17
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -656
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  18
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -664
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  19
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -672
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  0
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -680
# store i32  2, i32 * %op62
	ld.d $t0, $fp, -680
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op63 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  1
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -688
# store i32  3, i32 * %op63
	ld.d $t0, $fp, -688
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op64 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  2
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -696
# store i32  4, i32 * %op64
	ld.d $t0, $fp, -696
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op65 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  3
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -704
# store i32  2, i32 * %op65
	ld.d $t0, $fp, -704
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op66 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  4
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -712
# store i32  5, i32 * %op66
	ld.d $t0, $fp, -712
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op67 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  5
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -720
# store i32  7, i32 * %op67
	ld.d $t0, $fp, -720
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op68 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  6
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -728
# store i32  9, i32 * %op68
	ld.d $t0, $fp, -728
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op69 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  7
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -736
# store i32  9, i32 * %op69
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op70 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  8
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -744
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  9
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -752
# store i32  1, i32 * %op71
	ld.d $t0, $fp, -752
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op72 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  10
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -760
# store i32  9, i32 * %op72
	ld.d $t0, $fp, -760
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op73 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  11
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -768
# store i32  8, i32 * %op73
	ld.d $t0, $fp, -768
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op74 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  12
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -776
# store i32  7, i32 * %op74
	ld.d $t0, $fp, -776
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op75 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  13
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -784
# store i32  6, i32 * %op75
	ld.d $t0, $fp, -784
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op76 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  14
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -792
# store i32  4, i32 * %op76
	ld.d $t0, $fp, -792
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op77 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  15
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -800
# store i32  3, i32 * %op77
	ld.d $t0, $fp, -800
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op78 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  16
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -808
# store i32  2, i32 * %op78
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op79 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  17
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -816
# store i32  1, i32 * %op79
	ld.d $t0, $fp, -816
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op80 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  18
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -824
# store i32  2, i32 * %op80
	ld.d $t0, $fp, -824
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op81 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  19
	ld.d $t0, $fp, -432
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -832
# store i32  2, i32 * %op81
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op82 = load i32 , i32 * @len
	la.local $t0, len
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# %op83 = load i32 , i32 * @len
	la.local $t0, len
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -840
# %op84 = alloca [25 x i32 ]
	addi.d $t1, $fp, -948
	st.d $t1, $fp, -848
# %op85 = alloca [25 x i32 ]
	addi.d $t1, $fp, -1060
	st.d $t1, $fp, -960
# %op86 = alloca [40 x i32 ]
	addi.d $t1, $fp, -1232
	st.d $t1, $fp, -1072
# %op87 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  0
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1240
# store i32  0, i32 * %op87
	ld.d $t0, $fp, -1240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op88 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  1
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1248
# store i32  0, i32 * %op88
	ld.d $t0, $fp, -1248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op89 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  2
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -1256
# store i32  0, i32 * %op89
	ld.d $t0, $fp, -1256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op90 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  3
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -1264
# store i32  0, i32 * %op90
	ld.d $t0, $fp, -1264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op91 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  4
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -1272
# store i32  0, i32 * %op91
	ld.d $t0, $fp, -1272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op92 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  5
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -1280
# store i32  0, i32 * %op92
	ld.d $t0, $fp, -1280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op93 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  6
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -1288
# store i32  0, i32 * %op93
	ld.d $t0, $fp, -1288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op94 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  7
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -1296
# store i32  0, i32 * %op94
	ld.d $t0, $fp, -1296
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op95 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  8
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -1304
# store i32  0, i32 * %op95
	ld.d $t0, $fp, -1304
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op96 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  9
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -1312
# store i32  0, i32 * %op96
	ld.d $t0, $fp, -1312
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op97 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  10
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -1320
# store i32  0, i32 * %op97
	ld.d $t0, $fp, -1320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op98 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  11
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -1328
# store i32  0, i32 * %op98
	ld.d $t0, $fp, -1328
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op99 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  12
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -1336
# store i32  0, i32 * %op99
	ld.d $t0, $fp, -1336
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op100 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  13
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -1344
# store i32  0, i32 * %op100
	ld.d $t0, $fp, -1344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op101 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  14
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -1352
# store i32  0, i32 * %op101
	ld.d $t0, $fp, -1352
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op102 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  15
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -1360
# store i32  0, i32 * %op102
	ld.d $t0, $fp, -1360
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op103 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  16
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -1368
# store i32  0, i32 * %op103
	ld.d $t0, $fp, -1368
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op104 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  17
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -1376
# store i32  0, i32 * %op104
	ld.d $t0, $fp, -1376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op105 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  18
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -1384
# store i32  0, i32 * %op105
	ld.d $t0, $fp, -1384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op106 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  19
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -1392
# store i32  0, i32 * %op106
	ld.d $t0, $fp, -1392
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op107 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  20
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -1400
# store i32  0, i32 * %op107
	ld.d $t0, $fp, -1400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op108 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  21
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -1408
# store i32  0, i32 * %op108
	ld.d $t0, $fp, -1408
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op109 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  22
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -1416
# store i32  0, i32 * %op109
	ld.d $t0, $fp, -1416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op110 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  23
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -1424
# store i32  0, i32 * %op110
	ld.d $t0, $fp, -1424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op111 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  24
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -1432
# store i32  0, i32 * %op111
	ld.d $t0, $fp, -1432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op112 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  25
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -1440
# store i32  0, i32 * %op112
	ld.d $t0, $fp, -1440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op113 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  26
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -1448
# store i32  0, i32 * %op113
	ld.d $t0, $fp, -1448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op114 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  27
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -1456
# store i32  0, i32 * %op114
	ld.d $t0, $fp, -1456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op115 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  28
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -1464
# store i32  0, i32 * %op115
	ld.d $t0, $fp, -1464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op116 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  29
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -1472
# store i32  0, i32 * %op116
	ld.d $t0, $fp, -1472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op117 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  30
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -1480
# store i32  0, i32 * %op117
	ld.d $t0, $fp, -1480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op118 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  31
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -1488
# store i32  0, i32 * %op118
	ld.d $t0, $fp, -1488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op119 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  32
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -1496
# store i32  0, i32 * %op119
	ld.d $t0, $fp, -1496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op120 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  33
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -1504
# store i32  0, i32 * %op120
	ld.d $t0, $fp, -1504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op121 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  34
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -1512
# store i32  0, i32 * %op121
	ld.d $t0, $fp, -1512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op122 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  35
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 140
	st.d $t2, $fp, -1520
# store i32  0, i32 * %op122
	ld.d $t0, $fp, -1520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op123 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  36
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -1528
# store i32  0, i32 * %op123
	ld.d $t0, $fp, -1528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op124 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  37
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 148
	st.d $t2, $fp, -1536
# store i32  0, i32 * %op124
	ld.d $t0, $fp, -1536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op125 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  38
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -1544
# store i32  0, i32 * %op125
	ld.d $t0, $fp, -1544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op126 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  39
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 156
	st.d $t2, $fp, -1552
# store i32  0, i32 * %op126
	ld.d $t0, $fp, -1552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label127
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1556
	b .main_label127
.main_label127:
# %op128 = phi i32  [ 0, %label_entry ], [ %op136, %label132 ]
# %op129 = icmp slt i32  %op128, %op82
	ld.w $t0, $fp, -1556
	ld.w $t1, $fp, -836
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1557
# %op130 = zext i1  %op129 to i32 
	ld.b $t0, $fp, -1557
	st.w $t0, $fp, -1564
# %op131 = icmp ne i32  %op130, 0
	ld.w $t0, $fp, -1564
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -1565
# br i1  %op131, label %label132, label %label137
	ld.b $t0, $fp, -1565
	bnez $t0, .main_label132
	b .main_label137
.main_label132:
# %op133 = getelementptr [20 x i32 ], [20 x i32 ]* %op0, i32  0, i32  %op128
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1556
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1576
# %op134 = load i32 , i32 * %op133
	ld.d $t0, $fp, -1576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1580
# %op135 = getelementptr [25 x i32 ], [25 x i32 ]* %op84, i32  0, i32  %op128
	ld.d $t0, $fp, -848
	ld.w $t1, $fp, -1556
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1592
# store i32  %op134, i32 * %op135
	ld.d $t0, $fp, -1592
	ld.w $t1, $fp, -1580
	st.w $t1, $t0, 0
# %op136 = add i32  %op128, 1
	ld.w $t0, $fp, -1556
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1596
# br label %label127
	ld.w $t0, $fp, -1596
	st.w $t0, $fp, -1556
	b .main_label127
.main_label137:
# br label %label138
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1600
	b .main_label138
.main_label138:
# %op139 = phi i32  [ 0, %label137 ], [ %op147, %label143 ]
# %op140 = icmp slt i32  %op139, %op83
	ld.w $t0, $fp, -1600
	ld.w $t1, $fp, -840
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1601
# %op141 = zext i1  %op140 to i32 
	ld.b $t0, $fp, -1601
	st.w $t0, $fp, -1608
# %op142 = icmp ne i32  %op141, 0
	ld.w $t0, $fp, -1608
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -1609
# br i1  %op142, label %label143, label %label148
	ld.b $t0, $fp, -1609
	bnez $t0, .main_label143
	b .main_label148
.main_label143:
# %op144 = getelementptr [20 x i32 ], [20 x i32 ]* %op41, i32  0, i32  %op139
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -1600
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1624
# %op145 = load i32 , i32 * %op144
	ld.d $t0, $fp, -1624
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1628
# %op146 = getelementptr [25 x i32 ], [25 x i32 ]* %op85, i32  0, i32  %op139
	ld.d $t0, $fp, -960
	ld.w $t1, $fp, -1600
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1640
# store i32  %op145, i32 * %op146
	ld.d $t0, $fp, -1640
	ld.w $t1, $fp, -1628
	st.w $t1, $t0, 0
# %op147 = add i32  %op139, 1
	ld.w $t0, $fp, -1600
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1644
# br label %label138
	ld.w $t0, $fp, -1644
	st.w $t0, $fp, -1600
	b .main_label138
.main_label148:
# %op149 = add i32  %op82, %op83
	ld.w $t0, $fp, -836
	ld.w $t1, $fp, -840
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1648
# %op150 = sub i32  %op149, 1
	ld.w $t0, $fp, -1648
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1652
# br label %label151
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -1656
	b .main_label151
.main_label151:
# %op152 = phi i32  [ 0, %label148 ], [ %op158, %label156 ]
# %op153 = icmp sle i32  %op152, %op150
	ld.w $t0, $fp, -1656
	ld.w $t1, $fp, -1652
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -1657
# %op154 = zext i1  %op153 to i32 
	ld.b $t0, $fp, -1657
	st.w $t0, $fp, -1664
# %op155 = icmp ne i32  %op154, 0
	ld.w $t0, $fp, -1664
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -1665
# br i1  %op155, label %label156, label %label159
	ld.b $t0, $fp, -1665
	bnez $t0, .main_label156
	b .main_label159
.main_label156:
# %op157 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  %op152
	ld.d $t0, $fp, -1072
	ld.w $t1, $fp, -1656
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1680
# store i32  0, i32 * %op157
	ld.d $t0, $fp, -1680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op158 = add i32  %op152, 1
	ld.w $t0, $fp, -1656
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1684
# br label %label151
	ld.w $t0, $fp, -1684
	st.w $t0, $fp, -1656
	b .main_label151
.main_label159:
# %op160 = sub i32  %op83, 1
	ld.w $t0, $fp, -840
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1688
# br label %label161
	ld.w $t0, $fp, -1652
	st.w $t0, $fp, -1692
	ld.w $t0, $fp, -1688
	st.w $t0, $fp, -1696
	b .main_label161
.main_label161:
# %op162 = phi i32  [ %op150, %label159 ], [ %op195, %label193 ]
# %op163 = phi i32  [ %op160, %label159 ], [ %op196, %label193 ]
# %op164 = icmp sgt i32  %op163, -1
	ld.w $t0, $fp, -1696
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1697
# %op165 = zext i1  %op164 to i32 
	ld.b $t0, $fp, -1697
	st.w $t0, $fp, -1704
# %op166 = icmp ne i32  %op165, 0
	ld.w $t0, $fp, -1704
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -1705
# br i1  %op166, label %label167, label %label171
	ld.b $t0, $fp, -1705
	bnez $t0, .main_label167
	b .main_label171
.main_label167:
# %op168 = getelementptr [25 x i32 ], [25 x i32 ]* %op85, i32  0, i32  %op163
	ld.d $t0, $fp, -960
	ld.w $t1, $fp, -1696
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1720
# %op169 = load i32 , i32 * %op168
	ld.d $t0, $fp, -1720
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1724
# %op170 = sub i32  %op82, 1
	ld.w $t0, $fp, -836
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1728
# br label %label177
	ld.w $t0, $fp, -1692
	st.w $t0, $fp, -1756
	ld.w $t0, $fp, -1728
	st.w $t0, $fp, -1760
	b .main_label177
.main_label171:
# %op172 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  0
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1736
# %op173 = load i32 , i32 * %op172
	ld.d $t0, $fp, -1736
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1740
# %op174 = icmp ne i32  %op173, 0
	ld.w $t0, $fp, -1740
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -1741
# %op175 = zext i1  %op174 to i32 
	ld.b $t0, $fp, -1741
	st.w $t0, $fp, -1748
# %op176 = icmp ne i32  %op175, 0
	ld.w $t0, $fp, -1748
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -1749
# br i1  %op176, label %label211, label %label214
	ld.b $t0, $fp, -1749
	bnez $t0, .main_label211
	b .main_label214
.main_label177:
# %op178 = phi i32  [ %op162, %label167 ], [ %op210, %label208 ]
# %op179 = phi i32  [ %op170, %label167 ], [ %op209, %label208 ]
# %op180 = icmp sgt i32  %op179, -1
	ld.w $t0, $fp, -1760
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1761
# %op181 = zext i1  %op180 to i32 
	ld.b $t0, $fp, -1761
	st.w $t0, $fp, -1768
# %op182 = icmp ne i32  %op181, 0
	ld.w $t0, $fp, -1768
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -1769
# br i1  %op182, label %label183, label %label193
	ld.b $t0, $fp, -1769
	bnez $t0, .main_label183
	b .main_label193
.main_label183:
# %op184 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  %op178
	ld.d $t0, $fp, -1072
	ld.w $t1, $fp, -1756
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1784
# %op185 = load i32 , i32 * %op184
	ld.d $t0, $fp, -1784
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1788
# %op186 = getelementptr [25 x i32 ], [25 x i32 ]* %op84, i32  0, i32  %op179
	ld.d $t0, $fp, -848
	ld.w $t1, $fp, -1760
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1800
# %op187 = load i32 , i32 * %op186
	ld.d $t0, $fp, -1800
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1804
# %op188 = mul i32  %op169, %op187
	ld.w $t0, $fp, -1724
	ld.w $t1, $fp, -1804
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1808
# %op189 = add i32  %op185, %op188
	ld.w $t0, $fp, -1788
	ld.w $t1, $fp, -1808
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1812
# %op190 = icmp sge i32  %op189, 10
	ld.w $t0, $fp, -1812
	addi.w $t1, $zero, 10
	bge  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -1813
# %op191 = zext i1  %op190 to i32 
	ld.b $t0, $fp, -1813
	st.w $t0, $fp, -1820
# %op192 = icmp ne i32  %op191, 0
	ld.w $t0, $fp, -1820
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -1821
# br i1  %op192, label %label197, label %label206
	ld.b $t0, $fp, -1821
	bnez $t0, .main_label197
	b .main_label206
.main_label193:
# %op194 = add i32  %op178, %op82
	ld.w $t0, $fp, -1756
	ld.w $t1, $fp, -836
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1828
# %op195 = sub i32  %op194, 1
	ld.w $t0, $fp, -1828
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1832
# %op196 = sub i32  %op163, 1
	ld.w $t0, $fp, -1696
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1836
# br label %label161
	ld.w $t0, $fp, -1832
	st.w $t0, $fp, -1692
	ld.w $t0, $fp, -1836
	st.w $t0, $fp, -1696
	b .main_label161
.main_label197:
# %op198 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  %op178
	ld.d $t0, $fp, -1072
	ld.w $t1, $fp, -1756
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1848
# store i32  %op189, i32 * %op198
	ld.d $t0, $fp, -1848
	ld.w $t1, $fp, -1812
	st.w $t1, $t0, 0
# %op199 = sub i32  %op178, 1
	ld.w $t0, $fp, -1756
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1852
# %op200 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  %op199
	ld.d $t0, $fp, -1072
	ld.w $t1, $fp, -1852
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1864
# %op201 = load i32 , i32 * %op200
	ld.d $t0, $fp, -1864
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1868
# %op202 = sdiv i32  %op189, 10
	ld.w $t0, $fp, -1812
	addi.w $t1, $zero, 10
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1872
# %op203 = add i32  %op201, %op202
	ld.w $t0, $fp, -1868
	ld.w $t1, $fp, -1872
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1876
# %op204 = sub i32  %op178, 1
	ld.w $t0, $fp, -1756
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1880
# %op205 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  %op204
	ld.d $t0, $fp, -1072
	ld.w $t1, $fp, -1880
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1888
# store i32  %op203, i32 * %op205
	ld.d $t0, $fp, -1888
	ld.w $t1, $fp, -1876
	st.w $t1, $t0, 0
# br label %label208
	b .main_label208
.main_label206:
# %op207 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  %op178
	ld.d $t0, $fp, -1072
	ld.w $t1, $fp, -1756
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1896
# store i32  %op189, i32 * %op207
	ld.d $t0, $fp, -1896
	ld.w $t1, $fp, -1812
	st.w $t1, $t0, 0
# br label %label208
	b .main_label208
.main_label208:
# %op209 = sub i32  %op179, 1
	ld.w $t0, $fp, -1760
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1900
# %op210 = sub i32  %op178, 1
	ld.w $t0, $fp, -1756
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1904
# br label %label177
	ld.w $t0, $fp, -1904
	st.w $t0, $fp, -1756
	ld.w $t0, $fp, -1900
	st.w $t0, $fp, -1760
	b .main_label177
.main_label211:
# %op212 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  0
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1912
# %op213 = load i32 , i32 * %op212
	ld.d $t0, $fp, -1912
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1916
# call void @putint(i32  %op213)
	ld.w $a0, $fp, -1916
	bl putint
# br label %label214
	b .main_label214
.main_label214:
# br label %label215
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -1920
	b .main_label215
.main_label215:
# %op216 = phi i32  [ 1, %label214 ], [ %op225, %label222 ]
# %op217 = add i32  %op82, %op83
	ld.w $t0, $fp, -836
	ld.w $t1, $fp, -840
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1924
# %op218 = sub i32  %op217, 1
	ld.w $t0, $fp, -1924
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1928
# %op219 = icmp sle i32  %op216, %op218
	ld.w $t0, $fp, -1920
	ld.w $t1, $fp, -1928
	bge  $t1, $t0, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -1929
# %op220 = zext i1  %op219 to i32 
	ld.b $t0, $fp, -1929
	st.w $t0, $fp, -1936
# %op221 = icmp ne i32  %op220, 0
	ld.w $t0, $fp, -1936
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -1937
# br i1  %op221, label %label222, label %label226
	ld.b $t0, $fp, -1937
	bnez $t0, .main_label222
	b .main_label226
.main_label222:
# %op223 = getelementptr [40 x i32 ], [40 x i32 ]* %op86, i32  0, i32  %op216
	ld.d $t0, $fp, -1072
	ld.w $t1, $fp, -1920
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1952
# %op224 = load i32 , i32 * %op223
	ld.d $t0, $fp, -1952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1956
# call void @putint(i32  %op224)
	ld.w $a0, $fp, -1956
	bl putint
# %op225 = add i32  %op216, 1
	ld.w $t0, $fp, -1920
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1960
# br label %label215
	ld.w $t0, $fp, -1960
	st.w $t0, $fp, -1920
	b .main_label215
.main_label226:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 1968
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
