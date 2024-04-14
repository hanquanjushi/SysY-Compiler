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
	lu12i.w $t0, 0
	ori $t0, $t0, 2192
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# %op2 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op3 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# %op4 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op5 = alloca [20 x i32 ]
	addi.d $t1, $fp, -184
	st.d $t1, $fp, -104
# %op6 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  0
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -192
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  1
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -200
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  2
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -208
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  3
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -216
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  4
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -224
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  5
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -232
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  6
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -240
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  7
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -248
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  8
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -256
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  9
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -264
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  10
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -272
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  11
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -280
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  12
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -288
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  13
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -296
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  14
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -304
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  15
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -312
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  16
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -320
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  17
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -328
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  18
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -336
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  19
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -344
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  0
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -352
# store i32  1, i32 * %op26
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op27 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  1
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -360
# store i32  2, i32 * %op27
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op28 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  2
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -368
# store i32  3, i32 * %op28
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op29 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  3
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -376
# store i32  4, i32 * %op29
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op30 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  4
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -384
# store i32  5, i32 * %op30
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op31 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  5
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -392
# store i32  6, i32 * %op31
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op32 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  6
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -400
# store i32  7, i32 * %op32
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op33 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  7
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -408
# store i32  8, i32 * %op33
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op34 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  8
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -416
# store i32  9, i32 * %op34
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op35 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  9
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -424
# store i32  0, i32 * %op35
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op36 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  10
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -432
# store i32  1, i32 * %op36
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op37 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  11
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -440
# store i32  2, i32 * %op37
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op38 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  12
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -448
# store i32  3, i32 * %op38
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op39 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  13
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -456
# store i32  4, i32 * %op39
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op40 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  14
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -464
# store i32  5, i32 * %op40
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op41 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  15
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -472
# store i32  6, i32 * %op41
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op42 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  16
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -480
# store i32  7, i32 * %op42
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op43 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  17
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -488
# store i32  8, i32 * %op43
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op44 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  18
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -496
# store i32  9, i32 * %op44
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op45 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  19
	ld.d $t0, $fp, -104
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -504
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = alloca [20 x i32 ]
	addi.d $t1, $fp, -592
	st.d $t1, $fp, -512
# %op47 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  0
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -600
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  1
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -608
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  2
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -616
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  3
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -624
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  4
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -632
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  5
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -640
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  6
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -648
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  7
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -656
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  8
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -664
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  9
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -672
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  10
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -680
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  11
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -688
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -688
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  12
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -696
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -696
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  13
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -704
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -704
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  14
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -712
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -712
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  15
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -720
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  16
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -728
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  17
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -736
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  18
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -744
# store i32  0, i32 * %op65
	ld.d $t0, $fp, -744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op66 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  19
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -752
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -752
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  0
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -760
# store i32  2, i32 * %op67
	ld.d $t0, $fp, -760
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op68 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  1
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -768
# store i32  3, i32 * %op68
	ld.d $t0, $fp, -768
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op69 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  2
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -776
# store i32  4, i32 * %op69
	ld.d $t0, $fp, -776
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op70 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  3
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -784
# store i32  2, i32 * %op70
	ld.d $t0, $fp, -784
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op71 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  4
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -792
# store i32  5, i32 * %op71
	ld.d $t0, $fp, -792
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op72 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  5
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -800
# store i32  7, i32 * %op72
	ld.d $t0, $fp, -800
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op73 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  6
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -808
# store i32  9, i32 * %op73
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op74 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  7
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -816
# store i32  9, i32 * %op74
	ld.d $t0, $fp, -816
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op75 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  8
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -824
# store i32  0, i32 * %op75
	ld.d $t0, $fp, -824
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op76 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  9
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -832
# store i32  1, i32 * %op76
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op77 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  10
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -840
# store i32  9, i32 * %op77
	ld.d $t0, $fp, -840
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op78 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  11
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -848
# store i32  8, i32 * %op78
	ld.d $t0, $fp, -848
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op79 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  12
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -856
# store i32  7, i32 * %op79
	ld.d $t0, $fp, -856
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op80 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  13
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -864
# store i32  6, i32 * %op80
	ld.d $t0, $fp, -864
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op81 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  14
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -872
# store i32  4, i32 * %op81
	ld.d $t0, $fp, -872
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op82 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  15
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -880
# store i32  3, i32 * %op82
	ld.d $t0, $fp, -880
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op83 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  16
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -888
# store i32  2, i32 * %op83
	ld.d $t0, $fp, -888
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op84 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  17
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -896
# store i32  1, i32 * %op84
	ld.d $t0, $fp, -896
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op85 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  18
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -904
# store i32  2, i32 * %op85
	ld.d $t0, $fp, -904
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op86 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  19
	ld.d $t0, $fp, -512
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -912
# store i32  2, i32 * %op86
	ld.d $t0, $fp, -912
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op87 = alloca i32 
	addi.d $t1, $fp, -924
	st.d $t1, $fp, -920
# %op88 = load i32 , i32 * @len
	la.local $t0, len
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -928
# store i32  %op88, i32 * %op87
	ld.d $t0, $fp, -920
	ld.w $t1, $fp, -928
	st.w $t1, $t0, 0
# %op89 = alloca i32 
	addi.d $t1, $fp, -940
	st.d $t1, $fp, -936
# %op90 = load i32 , i32 * @len
	la.local $t0, len
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -944
# store i32  %op90, i32 * %op89
	ld.d $t0, $fp, -936
	ld.w $t1, $fp, -944
	st.w $t1, $t0, 0
# %op91 = alloca [25 x i32 ]
	addi.d $t1, $fp, -1052
	st.d $t1, $fp, -952
# %op92 = alloca [25 x i32 ]
	addi.d $t1, $fp, -1164
	st.d $t1, $fp, -1064
# %op93 = alloca [40 x i32 ]
	addi.d $t1, $fp, -1336
	st.d $t1, $fp, -1176
# %op94 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  0
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1344
# store i32  0, i32 * %op94
	ld.d $t0, $fp, -1344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op95 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  1
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1352
# store i32  0, i32 * %op95
	ld.d $t0, $fp, -1352
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op96 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  2
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -1360
# store i32  0, i32 * %op96
	ld.d $t0, $fp, -1360
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op97 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  3
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -1368
# store i32  0, i32 * %op97
	ld.d $t0, $fp, -1368
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op98 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  4
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -1376
# store i32  0, i32 * %op98
	ld.d $t0, $fp, -1376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op99 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  5
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -1384
# store i32  0, i32 * %op99
	ld.d $t0, $fp, -1384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op100 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  6
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -1392
# store i32  0, i32 * %op100
	ld.d $t0, $fp, -1392
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op101 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  7
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -1400
# store i32  0, i32 * %op101
	ld.d $t0, $fp, -1400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op102 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  8
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -1408
# store i32  0, i32 * %op102
	ld.d $t0, $fp, -1408
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op103 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  9
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -1416
# store i32  0, i32 * %op103
	ld.d $t0, $fp, -1416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op104 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  10
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -1424
# store i32  0, i32 * %op104
	ld.d $t0, $fp, -1424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op105 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  11
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -1432
# store i32  0, i32 * %op105
	ld.d $t0, $fp, -1432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op106 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  12
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -1440
# store i32  0, i32 * %op106
	ld.d $t0, $fp, -1440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op107 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  13
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -1448
# store i32  0, i32 * %op107
	ld.d $t0, $fp, -1448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op108 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  14
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -1456
# store i32  0, i32 * %op108
	ld.d $t0, $fp, -1456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op109 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  15
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -1464
# store i32  0, i32 * %op109
	ld.d $t0, $fp, -1464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op110 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  16
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -1472
# store i32  0, i32 * %op110
	ld.d $t0, $fp, -1472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op111 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  17
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -1480
# store i32  0, i32 * %op111
	ld.d $t0, $fp, -1480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op112 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  18
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -1488
# store i32  0, i32 * %op112
	ld.d $t0, $fp, -1488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op113 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  19
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -1496
# store i32  0, i32 * %op113
	ld.d $t0, $fp, -1496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op114 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  20
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -1504
# store i32  0, i32 * %op114
	ld.d $t0, $fp, -1504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op115 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  21
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -1512
# store i32  0, i32 * %op115
	ld.d $t0, $fp, -1512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op116 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  22
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -1520
# store i32  0, i32 * %op116
	ld.d $t0, $fp, -1520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op117 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  23
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -1528
# store i32  0, i32 * %op117
	ld.d $t0, $fp, -1528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op118 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  24
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -1536
# store i32  0, i32 * %op118
	ld.d $t0, $fp, -1536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op119 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  25
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -1544
# store i32  0, i32 * %op119
	ld.d $t0, $fp, -1544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op120 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  26
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -1552
# store i32  0, i32 * %op120
	ld.d $t0, $fp, -1552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op121 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  27
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -1560
# store i32  0, i32 * %op121
	ld.d $t0, $fp, -1560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op122 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  28
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -1568
# store i32  0, i32 * %op122
	ld.d $t0, $fp, -1568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op123 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  29
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -1576
# store i32  0, i32 * %op123
	ld.d $t0, $fp, -1576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op124 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  30
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -1584
# store i32  0, i32 * %op124
	ld.d $t0, $fp, -1584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op125 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  31
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -1592
# store i32  0, i32 * %op125
	ld.d $t0, $fp, -1592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op126 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  32
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -1600
# store i32  0, i32 * %op126
	ld.d $t0, $fp, -1600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op127 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  33
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -1608
# store i32  0, i32 * %op127
	ld.d $t0, $fp, -1608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op128 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  34
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -1616
# store i32  0, i32 * %op128
	ld.d $t0, $fp, -1616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op129 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  35
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 140
	st.d $t2, $fp, -1624
# store i32  0, i32 * %op129
	ld.d $t0, $fp, -1624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op130 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  36
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -1632
# store i32  0, i32 * %op130
	ld.d $t0, $fp, -1632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op131 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  37
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 148
	st.d $t2, $fp, -1640
# store i32  0, i32 * %op131
	ld.d $t0, $fp, -1640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op132 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  38
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -1648
# store i32  0, i32 * %op132
	ld.d $t0, $fp, -1648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op133 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  39
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 156
	st.d $t2, $fp, -1656
# store i32  0, i32 * %op133
	ld.d $t0, $fp, -1656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label134
	b .main_label134
.main_label134:
# %op135 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1660
# %op136 = load i32 , i32 * %op87
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1664
# %op137 = icmp slt i32  %op135, %op136
	ld.w $t0, $fp, -1660
	ld.w $t1, $fp, -1664
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1665
# %op138 = zext i1  %op137 to i32 
	ld.b $t0, $fp, -1665
	st.w $t0, $fp, -1672
# %op139 = icmp ne i32  %op138, 0
	ld.w $t0, $fp, -1672
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -1673
# br i1  %op139, label %label140, label %label148
	ld.b $t0, $fp, -1673
	bnez $t0, .main_label140
	b .main_label148
.main_label140:
# %op141 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1680
# %op142 = getelementptr [20 x i32 ], [20 x i32 ]* %op5, i32  0, i32  %op141
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -1680
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1688
# %op143 = load i32 , i32 * %op142
	ld.d $t0, $fp, -1688
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1692
# %op144 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1696
# %op145 = getelementptr [25 x i32 ], [25 x i32 ]* %op91, i32  0, i32  %op144
	ld.d $t0, $fp, -952
	ld.w $t1, $fp, -1696
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1704
# store i32  %op143, i32 * %op145
	ld.d $t0, $fp, -1704
	ld.w $t1, $fp, -1692
	st.w $t1, $t0, 0
# %op146 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1708
# %op147 = add i32  %op146, 1
	ld.w $t0, $fp, -1708
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1712
# store i32  %op147, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1712
	st.w $t1, $t0, 0
# br label %label134
	b .main_label134
.main_label148:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label149
	b .main_label149
.main_label149:
# %op150 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1716
# %op151 = load i32 , i32 * %op89
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1720
# %op152 = icmp slt i32  %op150, %op151
	ld.w $t0, $fp, -1716
	ld.w $t1, $fp, -1720
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1721
# %op153 = zext i1  %op152 to i32 
	ld.b $t0, $fp, -1721
	st.w $t0, $fp, -1728
# %op154 = icmp ne i32  %op153, 0
	ld.w $t0, $fp, -1728
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -1729
# br i1  %op154, label %label155, label %label163
	ld.b $t0, $fp, -1729
	bnez $t0, .main_label155
	b .main_label163
.main_label155:
# %op156 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1736
# %op157 = getelementptr [20 x i32 ], [20 x i32 ]* %op46, i32  0, i32  %op156
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -1736
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1744
# %op158 = load i32 , i32 * %op157
	ld.d $t0, $fp, -1744
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1748
# %op159 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1752
# %op160 = getelementptr [25 x i32 ], [25 x i32 ]* %op92, i32  0, i32  %op159
	ld.d $t0, $fp, -1064
	ld.w $t1, $fp, -1752
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1760
# store i32  %op158, i32 * %op160
	ld.d $t0, $fp, -1760
	ld.w $t1, $fp, -1748
	st.w $t1, $t0, 0
# %op161 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1764
# %op162 = add i32  %op161, 1
	ld.w $t0, $fp, -1764
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1768
# store i32  %op162, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1768
	st.w $t1, $t0, 0
# br label %label149
	b .main_label149
.main_label163:
# %op164 = load i32 , i32 * %op87
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1772
# %op165 = load i32 , i32 * %op89
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1776
# %op166 = add i32  %op164, %op165
	ld.w $t0, $fp, -1772
	ld.w $t1, $fp, -1776
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1780
# %op167 = sub i32  %op166, 1
	ld.w $t0, $fp, -1780
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1784
# store i32  %op167, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1784
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label168
	b .main_label168
.main_label168:
# %op169 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1788
# %op170 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1792
# %op171 = icmp sle i32  %op169, %op170
	ld.w $t0, $fp, -1788
	ld.w $t1, $fp, -1792
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -1793
# %op172 = zext i1  %op171 to i32 
	ld.b $t0, $fp, -1793
	st.w $t0, $fp, -1800
# %op173 = icmp ne i32  %op172, 0
	ld.w $t0, $fp, -1800
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -1801
# br i1  %op173, label %label174, label %label179
	ld.b $t0, $fp, -1801
	bnez $t0, .main_label174
	b .main_label179
.main_label174:
# %op175 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1808
# %op176 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  %op175
	ld.d $t0, $fp, -1176
	ld.w $t1, $fp, -1808
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1816
# store i32  0, i32 * %op176
	ld.d $t0, $fp, -1816
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op177 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1820
# %op178 = add i32  %op177, 1
	ld.w $t0, $fp, -1820
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1824
# store i32  %op178, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1824
	st.w $t1, $t0, 0
# br label %label168
	b .main_label168
.main_label179:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op180 = load i32 , i32 * %op89
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1828
# %op181 = sub i32  %op180, 1
	ld.w $t0, $fp, -1828
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1832
# store i32  %op181, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1832
	st.w $t1, $t0, 0
# br label %label182
	b .main_label182
.main_label182:
# %op183 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1836
# %op184 = icmp sgt i32  %op183, -1
	ld.w $t0, $fp, -1836
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1837
# %op185 = zext i1  %op184 to i32 
	ld.b $t0, $fp, -1837
	st.w $t0, $fp, -1844
# %op186 = icmp ne i32  %op185, 0
	ld.w $t0, $fp, -1844
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -1845
# br i1  %op186, label %label187, label %label193
	ld.b $t0, $fp, -1845
	bnez $t0, .main_label187
	b .main_label193
.main_label187:
# %op188 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1852
# %op189 = getelementptr [25 x i32 ], [25 x i32 ]* %op92, i32  0, i32  %op188
	ld.d $t0, $fp, -1064
	ld.w $t1, $fp, -1852
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1864
# %op190 = load i32 , i32 * %op189
	ld.d $t0, $fp, -1864
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1868
# store i32  %op190, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1868
	st.w $t1, $t0, 0
# %op191 = load i32 , i32 * %op87
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1872
# %op192 = sub i32  %op191, 1
	ld.w $t0, $fp, -1872
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1876
# store i32  %op192, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1876
	st.w $t1, $t0, 0
# br label %label199
	b .main_label199
.main_label193:
# %op194 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  0
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1888
# %op195 = load i32 , i32 * %op194
	ld.d $t0, $fp, -1888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1892
# %op196 = icmp ne i32  %op195, 0
	ld.w $t0, $fp, -1892
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -1893
# %op197 = zext i1  %op196 to i32 
	ld.b $t0, $fp, -1893
	st.w $t0, $fp, -1900
# %op198 = icmp ne i32  %op197, 0
	ld.w $t0, $fp, -1900
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -1901
# br i1  %op198, label %label248, label %label251
	ld.b $t0, $fp, -1901
	bnez $t0, .main_label248
	b .main_label251
.main_label199:
# %op200 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op201 = icmp sgt i32  %op200, -1
	ld.w $t0, $fp, -1908
	addi.w $t1, $zero, -1
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1909
# %op202 = zext i1  %op201 to i32 
	ld.b $t0, $fp, -1909
	st.w $t0, $fp, -1916
# %op203 = icmp ne i32  %op202, 0
	ld.w $t0, $fp, -1916
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -1917
# br i1  %op203, label %label204, label %label218
	ld.b $t0, $fp, -1917
	bnez $t0, .main_label204
	b .main_label218
.main_label204:
# %op205 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1924
# %op206 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  %op205
	ld.d $t0, $fp, -1176
	ld.w $t1, $fp, -1924
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1936
# %op207 = load i32 , i32 * %op206
	ld.d $t0, $fp, -1936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1940
# %op208 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1944
# %op209 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1948
# %op210 = getelementptr [25 x i32 ], [25 x i32 ]* %op91, i32  0, i32  %op209
	ld.d $t0, $fp, -952
	ld.w $t1, $fp, -1948
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1960
# %op211 = load i32 , i32 * %op210
	ld.d $t0, $fp, -1960
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1964
# %op212 = mul i32  %op208, %op211
	ld.w $t0, $fp, -1944
	ld.w $t1, $fp, -1964
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1968
# %op213 = add i32  %op207, %op212
	ld.w $t0, $fp, -1940
	ld.w $t1, $fp, -1968
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1972
# store i32  %op213, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1972
	st.w $t1, $t0, 0
# %op214 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1976
# %op215 = icmp sge i32  %op214, 10
	ld.w $t0, $fp, -1976
	addi.w $t1, $zero, 10
	bge  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -1977
# %op216 = zext i1  %op215 to i32 
	ld.b $t0, $fp, -1977
	st.w $t0, $fp, -1984
# %op217 = icmp ne i32  %op216, 0
	ld.w $t0, $fp, -1984
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -1985
# br i1  %op217, label %label225, label %label239
	ld.b $t0, $fp, -1985
	bnez $t0, .main_label225
	b .main_label239
.main_label218:
# %op219 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1992
# %op220 = load i32 , i32 * %op87
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1996
# %op221 = add i32  %op219, %op220
	ld.w $t0, $fp, -1992
	ld.w $t1, $fp, -1996
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2000
# %op222 = sub i32  %op221, 1
	ld.w $t0, $fp, -2000
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2004
# store i32  %op222, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -2004
	st.w $t1, $t0, 0
# %op223 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2008
# %op224 = sub i32  %op223, 1
	ld.w $t0, $fp, -2008
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2012
# store i32  %op224, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -2012
	st.w $t1, $t0, 0
# br label %label182
	b .main_label182
.main_label225:
# %op226 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2016
# %op227 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2020
# %op228 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  %op227
	ld.d $t0, $fp, -1176
	ld.w $t1, $fp, -2020
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -2032
# store i32  %op226, i32 * %op228
	ld.d $t0, $fp, -2032
	ld.w $t1, $fp, -2016
	st.w $t1, $t0, 0
# %op229 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2036
# %op230 = sub i32  %op229, 1
	ld.w $t0, $fp, -2036
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -2040
# %op231 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  %op230
	ld.d $t0, $fp, -1176
	ld.w $t1, $fp, -2040
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -2048
# %op232 = load i32 , i32 * %op231
	ld.d $t0, $fp, -2048
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op233 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op234 = sdiv i32  %op233, 10
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 10
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op235 = add i32  %op232, %op234
	lu12i.w $t0, -1
	ori $t0, $t0, 2044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op236 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op237 = sub i32  %op236, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 2028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op238 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  %op237
	ld.d $t0, $fp, -1176
	lu12i.w $t1, -1
	ori $t1, $t1, 2024
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op235, i32 * %op238
	lu12i.w $t0, -1
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label243
	b .main_label243
.main_label239:
# %op240 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op241 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op242 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  %op241
	ld.d $t0, $fp, -1176
	lu12i.w $t1, -1
	ori $t1, $t1, 2008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op240, i32 * %op242
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label243
	b .main_label243
.main_label243:
# %op244 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op245 = sub i32  %op244, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op245, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op246 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op247 = sub i32  %op246, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op247, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label199
	b .main_label199
.main_label248:
# %op249 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  0
	ld.d $t0, $fp, -1176
	addi.d $t2, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op250 = load i32 , i32 * %op249
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @putint(i32  %op250)
	lu12i.w $a0, -1
	ori $a0, $a0, 1972
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# br label %label251
	b .main_label251
.main_label251:
# store i32  1, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label252
	b .main_label252
.main_label252:
# %op253 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op254 = load i32 , i32 * %op87
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op255 = load i32 , i32 * %op89
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op256 = add i32  %op254, %op255
	lu12i.w $t0, -1
	ori $t0, $t0, 1964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op257 = sub i32  %op256, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op258 = icmp sle i32  %op253, %op257
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t1, $t0, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	lu12i.w $t8, -1
	ori $t8, $t8, 1951
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op259 = zext i1  %op258 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1951
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op260 = icmp ne i32  %op259, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	lu12i.w $t8, -1
	ori $t8, $t8, 1943
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op260, label %label261, label %label267
	lu12i.w $t0, -1
	ori $t0, $t0, 1943
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .main_label261
	b .main_label267
.main_label261:
# %op262 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op263 = getelementptr [40 x i32 ], [40 x i32 ]* %op93, i32  0, i32  %op262
	ld.d $t0, $fp, -1176
	lu12i.w $t1, -1
	ori $t1, $t1, 1936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op264 = load i32 , i32 * %op263
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @putint(i32  %op264)
	lu12i.w $a0, -1
	ori $a0, $a0, 1924
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# %op265 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op266 = add i32  %op265, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op266, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label252
	b .main_label252
.main_label267:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	lu12i.w $t0, 0
	ori $t0, $t0, 2192
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
