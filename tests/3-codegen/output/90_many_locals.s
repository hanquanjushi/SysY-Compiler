	.text
	.globl foo
	.type foo, @function
foo:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -784
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
# %op33 = alloca i32 
	addi.d $t1, $fp, -356
	st.d $t1, $fp, -352
# store i32  6, i32 * %op33
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op34 = alloca i32 
	addi.d $t1, $fp, -372
	st.d $t1, $fp, -368
# store i32  4, i32 * %op34
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op35 = alloca i32 
	addi.d $t1, $fp, -388
	st.d $t1, $fp, -384
# store i32  1, i32 * %op35
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op36 = alloca i32 
	addi.d $t1, $fp, -404
	st.d $t1, $fp, -400
# store i32  8, i32 * %op36
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op37 = alloca i32 
	addi.d $t1, $fp, -420
	st.d $t1, $fp, -416
# store i32  9, i32 * %op37
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op38 = alloca i32 
	addi.d $t1, $fp, -436
	st.d $t1, $fp, -432
# store i32  7, i32 * %op38
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op39 = alloca i32 
	addi.d $t1, $fp, -452
	st.d $t1, $fp, -448
# store i32  2, i32 * %op39
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op40 = alloca i32 
	addi.d $t1, $fp, -468
	st.d $t1, $fp, -464
# store i32  4, i32 * %op40
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op41 = alloca i32 
	addi.d $t1, $fp, -484
	st.d $t1, $fp, -480
# store i32  5, i32 * %op41
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op42 = alloca i32 
	addi.d $t1, $fp, -500
	st.d $t1, $fp, -496
# store i32  3, i32 * %op42
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op43 = alloca i32 
	addi.d $t1, $fp, -516
	st.d $t1, $fp, -512
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = alloca i32 
	addi.d $t1, $fp, -532
	st.d $t1, $fp, -528
# store i32  1, i32 * %op44
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op45 = alloca i32 
	addi.d $t1, $fp, -548
	st.d $t1, $fp, -544
# store i32  6, i32 * %op45
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op46 = alloca i32 
	addi.d $t1, $fp, -564
	st.d $t1, $fp, -560
# store i32  5, i32 * %op46
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op47 = alloca i32 
	addi.d $t1, $fp, -580
	st.d $t1, $fp, -576
# store i32  7, i32 * %op47
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op48 = alloca i32 
	addi.d $t1, $fp, -596
	st.d $t1, $fp, -592
# store i32  3, i32 * %op48
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op49 = alloca i32 
	addi.d $t1, $fp, -612
	st.d $t1, $fp, -608
# %op50 = load i32 , i32 * %op48
	ld.d $t0, $fp, -592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op51 = load i32 , i32 * %op47
	ld.d $t0, $fp, -576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op52 = add i32  %op50, %op51
	ld.w $t0, $fp, -616
	ld.w $t1, $fp, -620
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# %op53 = load i32 , i32 * %op46
	ld.d $t0, $fp, -560
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op54 = add i32  %op52, %op53
	ld.w $t0, $fp, -624
	ld.w $t1, $fp, -628
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -632
# %op55 = load i32 , i32 * %op45
	ld.d $t0, $fp, -544
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op56 = add i32  %op54, %op55
	ld.w $t0, $fp, -632
	ld.w $t1, $fp, -636
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# %op57 = load i32 , i32 * %op44
	ld.d $t0, $fp, -528
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op58 = add i32  %op56, %op57
	ld.w $t0, $fp, -640
	ld.w $t1, $fp, -644
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -648
# %op59 = load i32 , i32 * %op43
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op60 = add i32  %op58, %op59
	ld.w $t0, $fp, -648
	ld.w $t1, $fp, -652
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# %op61 = load i32 , i32 * %op42
	ld.d $t0, $fp, -496
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op62 = add i32  %op60, %op61
	ld.w $t0, $fp, -656
	ld.w $t1, $fp, -660
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# %op63 = load i32 , i32 * %op41
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op64 = add i32  %op62, %op63
	ld.w $t0, $fp, -664
	ld.w $t1, $fp, -668
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# store i32  %op64, i32 * %op49
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -672
	st.w $t1, $t0, 0
# %op65 = alloca i32 
	addi.d $t1, $fp, -684
	st.d $t1, $fp, -680
# %op66 = load i32 , i32 * %op40
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# %op67 = load i32 , i32 * %op39
	ld.d $t0, $fp, -448
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op68 = add i32  %op66, %op67
	ld.w $t0, $fp, -688
	ld.w $t1, $fp, -692
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op69 = load i32 , i32 * %op38
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op70 = add i32  %op68, %op69
	ld.w $t0, $fp, -696
	ld.w $t1, $fp, -700
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -704
# %op71 = load i32 , i32 * %op37
	ld.d $t0, $fp, -416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op72 = add i32  %op70, %op71
	ld.w $t0, $fp, -704
	ld.w $t1, $fp, -708
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -712
# %op73 = load i32 , i32 * %op36
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op74 = add i32  %op72, %op73
	ld.w $t0, $fp, -712
	ld.w $t1, $fp, -716
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -720
# %op75 = load i32 , i32 * %op35
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op76 = add i32  %op74, %op75
	ld.w $t0, $fp, -720
	ld.w $t1, $fp, -724
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -728
# %op77 = load i32 , i32 * %op34
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op78 = add i32  %op76, %op77
	ld.w $t0, $fp, -728
	ld.w $t1, $fp, -732
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -736
# %op79 = load i32 , i32 * %op33
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op80 = add i32  %op78, %op79
	ld.w $t0, $fp, -736
	ld.w $t1, $fp, -740
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -744
# store i32  %op80, i32 * %op65
	ld.d $t0, $fp, -680
	ld.w $t1, $fp, -744
	st.w $t1, $t0, 0
# %op81 = load i32 , i32 * %op49
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op82 = load i32 , i32 * %op65
	ld.d $t0, $fp, -680
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -752
# %op83 = add i32  %op81, %op82
	ld.w $t0, $fp, -748
	ld.w $t1, $fp, -752
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -756
# %op84 = load i32 , i32 * %op48
	ld.d $t0, $fp, -592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -760
# %op85 = getelementptr [16 x i32 ], [16 x i32 ]* %op0, i32  0, i32  %op84
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -760
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -768
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -768
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op87 = add i32  %op83, %op86
	ld.w $t0, $fp, -756
	ld.w $t1, $fp, -772
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -776
# ret i32  %op87
	ld.w $a0, $fp, -776
	b foo_ret
foo_ret:
	addi.d $sp, $sp, 784
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -720
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# store i32  6, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  4, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op2 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  8, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  9, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  7, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# store i32  2, i32 * %op6
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# store i32  4, i32 * %op7
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# store i32  5, i32 * %op8
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op9 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# store i32  3, i32 * %op9
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op10 = alloca i32 
	addi.d $t1, $fp, -188
	st.d $t1, $fp, -184
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	addi.d $t1, $fp, -204
	st.d $t1, $fp, -200
# store i32  1, i32 * %op11
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op12 = alloca i32 
	addi.d $t1, $fp, -220
	st.d $t1, $fp, -216
# store i32  6, i32 * %op12
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op13 = alloca i32 
	addi.d $t1, $fp, -236
	st.d $t1, $fp, -232
# store i32  5, i32 * %op13
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op14 = alloca i32 
	addi.d $t1, $fp, -252
	st.d $t1, $fp, -248
# store i32  7, i32 * %op14
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op15 = alloca i32 
	addi.d $t1, $fp, -268
	st.d $t1, $fp, -264
# store i32  3, i32 * %op15
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op16 = alloca i32 
	addi.d $t1, $fp, -284
	st.d $t1, $fp, -280
# %op17 = load i32 , i32 * %op15
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op18 = load i32 , i32 * %op14
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op19 = add i32  %op17, %op18
	ld.w $t0, $fp, -288
	ld.w $t1, $fp, -292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -296
# %op20 = load i32 , i32 * %op13
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op21 = add i32  %op19, %op20
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -300
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# %op22 = load i32 , i32 * %op12
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op23 = add i32  %op21, %op22
	ld.w $t0, $fp, -304
	ld.w $t1, $fp, -308
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# %op24 = load i32 , i32 * %op11
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op25 = add i32  %op23, %op24
	ld.w $t0, $fp, -312
	ld.w $t1, $fp, -316
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# %op26 = load i32 , i32 * %op10
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op27 = add i32  %op25, %op26
	ld.w $t0, $fp, -320
	ld.w $t1, $fp, -324
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# %op28 = load i32 , i32 * %op9
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op29 = add i32  %op27, %op28
	ld.w $t0, $fp, -328
	ld.w $t1, $fp, -332
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op30 = load i32 , i32 * %op8
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op31 = add i32  %op29, %op30
	ld.w $t0, $fp, -336
	ld.w $t1, $fp, -340
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -344
# store i32  %op31, i32 * %op16
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -344
	st.w $t1, $t0, 0
# %op32 = alloca i32 
	addi.d $t1, $fp, -356
	st.d $t1, $fp, -352
# %op33 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op34 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op35 = add i32  %op33, %op34
	ld.w $t0, $fp, -360
	ld.w $t1, $fp, -364
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op36 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op37 = add i32  %op35, %op36
	ld.w $t0, $fp, -368
	ld.w $t1, $fp, -372
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op38 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op39 = add i32  %op37, %op38
	ld.w $t0, $fp, -376
	ld.w $t1, $fp, -380
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op40 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op41 = add i32  %op39, %op40
	ld.w $t0, $fp, -384
	ld.w $t1, $fp, -388
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op42 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op43 = add i32  %op41, %op42
	ld.w $t0, $fp, -392
	ld.w $t1, $fp, -396
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op44 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op45 = add i32  %op43, %op44
	ld.w $t0, $fp, -400
	ld.w $t1, $fp, -404
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op46 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op47 = add i32  %op45, %op46
	ld.w $t0, $fp, -408
	ld.w $t1, $fp, -412
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# store i32  %op47, i32 * %op32
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -416
	st.w $t1, $t0, 0
# %op48 = load i32 , i32 * %op16
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op49 = call i32  @foo()
	bl foo
	st.w $a0, $fp, -424
# %op50 = add i32  %op48, %op49
	ld.w $t0, $fp, -420
	ld.w $t1, $fp, -424
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -428
# store i32  %op50, i32 * %op16
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -428
	st.w $t1, $t0, 0
# %op51 = alloca i32 
	addi.d $t1, $fp, -444
	st.d $t1, $fp, -440
# store i32  3, i32 * %op51
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op52 = alloca i32 
	addi.d $t1, $fp, -460
	st.d $t1, $fp, -456
# store i32  6, i32 * %op52
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op53 = alloca i32 
	addi.d $t1, $fp, -476
	st.d $t1, $fp, -472
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = alloca i32 
	addi.d $t1, $fp, -492
	st.d $t1, $fp, -488
# store i32  8, i32 * %op54
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op55 = alloca i32 
	addi.d $t1, $fp, -508
	st.d $t1, $fp, -504
# store i32  5, i32 * %op55
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op56 = alloca i32 
	addi.d $t1, $fp, -524
	st.d $t1, $fp, -520
# store i32  2, i32 * %op56
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op57 = alloca i32 
	addi.d $t1, $fp, -540
	st.d $t1, $fp, -536
# store i32  7, i32 * %op57
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op58 = alloca i32 
	addi.d $t1, $fp, -556
	st.d $t1, $fp, -552
# store i32  4, i32 * %op58
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op59 = load i32 , i32 * %op32
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op60 = call i32  @foo()
	bl foo
	st.w $a0, $fp, -564
# %op61 = add i32  %op59, %op60
	ld.w $t0, $fp, -560
	ld.w $t1, $fp, -564
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -568
# store i32  %op61, i32 * %op32
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -568
	st.w $t1, $t0, 0
# %op62 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# store i32  %op62, i32 * %op15
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -572
	st.w $t1, $t0, 0
# %op63 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -576
# store i32  %op63, i32 * %op14
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -576
	st.w $t1, $t0, 0
# %op64 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# store i32  %op64, i32 * %op13
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -580
	st.w $t1, $t0, 0
# %op65 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -584
# store i32  %op65, i32 * %op12
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -584
	st.w $t1, $t0, 0
# %op66 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# store i32  %op66, i32 * %op11
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -588
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -592
# store i32  %op67, i32 * %op10
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -592
	st.w $t1, $t0, 0
# %op68 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# store i32  %op68, i32 * %op9
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -596
	st.w $t1, $t0, 0
# %op69 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -600
# store i32  %op69, i32 * %op8
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -600
	st.w $t1, $t0, 0
# %op70 = alloca i32 
	addi.d $t1, $fp, -612
	st.d $t1, $fp, -608
# %op71 = load i32 , i32 * %op58
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -616
# %op72 = load i32 , i32 * %op57
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op73 = add i32  %op71, %op72
	ld.w $t0, $fp, -616
	ld.w $t1, $fp, -620
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# %op74 = load i32 , i32 * %op56
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op75 = add i32  %op73, %op74
	ld.w $t0, $fp, -624
	ld.w $t1, $fp, -628
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -632
# %op76 = load i32 , i32 * %op55
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op77 = add i32  %op75, %op76
	ld.w $t0, $fp, -632
	ld.w $t1, $fp, -636
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# %op78 = load i32 , i32 * %op54
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# %op79 = add i32  %op77, %op78
	ld.w $t0, $fp, -640
	ld.w $t1, $fp, -644
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -648
# %op80 = load i32 , i32 * %op53
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op81 = add i32  %op79, %op80
	ld.w $t0, $fp, -648
	ld.w $t1, $fp, -652
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# %op82 = load i32 , i32 * %op52
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op83 = add i32  %op81, %op82
	ld.w $t0, $fp, -656
	ld.w $t1, $fp, -660
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# %op84 = load i32 , i32 * %op51
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op85 = add i32  %op83, %op84
	ld.w $t0, $fp, -664
	ld.w $t1, $fp, -668
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# store i32  %op85, i32 * %op70
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -672
	st.w $t1, $t0, 0
# %op86 = alloca i32 
	addi.d $t1, $fp, -684
	st.d $t1, $fp, -680
# %op87 = load i32 , i32 * %op16
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# %op88 = load i32 , i32 * %op32
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op89 = add i32  %op87, %op88
	ld.w $t0, $fp, -688
	ld.w $t1, $fp, -692
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op90 = load i32 , i32 * %op70
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op91 = add i32  %op89, %op90
	ld.w $t0, $fp, -696
	ld.w $t1, $fp, -700
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -704
# store i32  %op91, i32 * %op86
	ld.d $t0, $fp, -680
	ld.w $t1, $fp, -704
	st.w $t1, $t0, 0
# %op92 = load i32 , i32 * %op86
	ld.d $t0, $fp, -680
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# call void @putint(i32  %op92)
	ld.w $a0, $fp, -708
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 720
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
