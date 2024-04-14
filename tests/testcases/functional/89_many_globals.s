# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a0
	.type a0, @object
	.size a0, 4
a0:
	.space 4
	.globl a1
	.type a1, @object
	.size a1, 4
a1:
	.space 4
	.globl a2
	.type a2, @object
	.size a2, 4
a2:
	.space 4
	.globl a3
	.type a3, @object
	.size a3, 4
a3:
	.space 4
	.globl a4
	.type a4, @object
	.size a4, 4
a4:
	.space 4
	.globl a5
	.type a5, @object
	.size a5, 4
a5:
	.space 4
	.globl a6
	.type a6, @object
	.size a6, 4
a6:
	.space 4
	.globl a7
	.type a7, @object
	.size a7, 4
a7:
	.space 4
	.globl a8
	.type a8, @object
	.size a8, 4
a8:
	.space 4
	.globl a9
	.type a9, @object
	.size a9, 4
a9:
	.space 4
	.globl a10
	.type a10, @object
	.size a10, 4
a10:
	.space 4
	.globl a11
	.type a11, @object
	.size a11, 4
a11:
	.space 4
	.globl a12
	.type a12, @object
	.size a12, 4
a12:
	.space 4
	.globl a13
	.type a13, @object
	.size a13, 4
a13:
	.space 4
	.globl a14
	.type a14, @object
	.size a14, 4
a14:
	.space 4
	.globl a15
	.type a15, @object
	.size a15, 4
a15:
	.space 4
	.globl a16
	.type a16, @object
	.size a16, 4
a16:
	.space 4
	.globl a17
	.type a17, @object
	.size a17, 4
a17:
	.space 4
	.globl a18
	.type a18, @object
	.size a18, 4
a18:
	.space 4
	.globl a19
	.type a19, @object
	.size a19, 4
a19:
	.space 4
	.globl a20
	.type a20, @object
	.size a20, 4
a20:
	.space 4
	.globl a21
	.type a21, @object
	.size a21, 4
a21:
	.space 4
	.globl a22
	.type a22, @object
	.size a22, 4
a22:
	.space 4
	.globl a23
	.type a23, @object
	.size a23, 4
a23:
	.space 4
	.globl a24
	.type a24, @object
	.size a24, 4
a24:
	.space 4
	.globl a25
	.type a25, @object
	.size a25, 4
a25:
	.space 4
	.globl a26
	.type a26, @object
	.size a26, 4
a26:
	.space 4
	.globl a27
	.type a27, @object
	.size a27, 4
a27:
	.space 4
	.globl a28
	.type a28, @object
	.size a28, 4
a28:
	.space 4
	.globl a29
	.type a29, @object
	.size a29, 4
a29:
	.space 4
	.globl a30
	.type a30, @object
	.size a30, 4
a30:
	.space 4
	.globl a31
	.type a31, @object
	.size a31, 4
a31:
	.space 4
	.globl a32
	.type a32, @object
	.size a32, 4
a32:
	.space 4
	.globl a33
	.type a33, @object
	.size a33, 4
a33:
	.space 4
	.globl a34
	.type a34, @object
	.size a34, 4
a34:
	.space 4
	.globl a35
	.type a35, @object
	.size a35, 4
a35:
	.space 4
	.globl a36
	.type a36, @object
	.size a36, 4
a36:
	.space 4
	.globl a37
	.type a37, @object
	.size a37, 4
a37:
	.space 4
	.globl a38
	.type a38, @object
	.size a38, 4
a38:
	.space 4
	.globl a39
	.type a39, @object
	.size a39, 4
a39:
	.space 4
	.text
	.globl testParam8
	.type testParam8, @function
testParam8:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -240
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
	st.w $a4, $fp, -36
	st.w $a5, $fp, -40
	st.w $a6, $fp, -44
	st.w $a7, $fp, -48
.testParam8_label_entry:
# %op8 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg0, i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op9 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg1, i32 * %op9
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op10 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  %arg2, i32 * %op10
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  %arg3, i32 * %op11
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op12 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# store i32  %arg4, i32 * %op12
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op13 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# store i32  %arg5, i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op14 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# store i32  %arg6, i32 * %op14
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op15 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# store i32  %arg7, i32 * %op15
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op17 = load i32 , i32 * %op9
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op18 = add i32  %op16, %op17
	ld.w $t0, $fp, -176
	ld.w $t1, $fp, -180
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# %op19 = load i32 , i32 * %op10
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op20 = add i32  %op18, %op19
	ld.w $t0, $fp, -184
	ld.w $t1, $fp, -188
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -192
# %op21 = load i32 , i32 * %op11
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op22 = add i32  %op20, %op21
	ld.w $t0, $fp, -192
	ld.w $t1, $fp, -196
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -200
# %op23 = load i32 , i32 * %op12
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op24 = add i32  %op22, %op23
	ld.w $t0, $fp, -200
	ld.w $t1, $fp, -204
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op25 = load i32 , i32 * %op13
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op26 = add i32  %op24, %op25
	ld.w $t0, $fp, -208
	ld.w $t1, $fp, -212
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# %op27 = load i32 , i32 * %op14
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op28 = add i32  %op26, %op27
	ld.w $t0, $fp, -216
	ld.w $t1, $fp, -220
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# %op29 = load i32 , i32 * %op15
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op30 = add i32  %op28, %op29
	ld.w $t0, $fp, -224
	ld.w $t1, $fp, -228
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# ret i32  %op30
	ld.w $a0, $fp, -232
	b testParam8_ret
testParam8_ret:
	addi.d $sp, $sp, 240
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl testParam16
	.type testParam16, @function
testParam16:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -464
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
	st.w $a4, $fp, -36
	st.w $a5, $fp, -40
	st.w $a6, $fp, -44
	st.w $a7, $fp, -48
	ld.d $t0, $fp, 0
	st.w $t0, $fp, -52
	ld.d $t0, $fp, 8
	st.w $t0, $fp, -56
	ld.d $t0, $fp, 16
	st.w $t0, $fp, -60
	ld.d $t0, $fp, 24
	st.w $t0, $fp, -64
	ld.d $t0, $fp, 32
	st.w $t0, $fp, -68
	ld.d $t0, $fp, 40
	st.w $t0, $fp, -72
	ld.d $t0, $fp, 48
	st.w $t0, $fp, -76
	ld.d $t0, $fp, 56
	st.w $t0, $fp, -80
.testParam16_label_entry:
# %op16 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  %arg0, i32 * %op16
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op17 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  %arg1, i32 * %op17
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op18 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# store i32  %arg2, i32 * %op18
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op19 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# store i32  %arg3, i32 * %op19
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op20 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# store i32  %arg4, i32 * %op20
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op21 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# store i32  %arg5, i32 * %op21
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op22 = alloca i32 
	addi.d $t1, $fp, -188
	st.d $t1, $fp, -184
# store i32  %arg6, i32 * %op22
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op23 = alloca i32 
	addi.d $t1, $fp, -204
	st.d $t1, $fp, -200
# store i32  %arg7, i32 * %op23
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op24 = alloca i32 
	addi.d $t1, $fp, -220
	st.d $t1, $fp, -216
# store i32  %arg8, i32 * %op24
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op25 = alloca i32 
	addi.d $t1, $fp, -236
	st.d $t1, $fp, -232
# store i32  %arg9, i32 * %op25
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op26 = alloca i32 
	addi.d $t1, $fp, -252
	st.d $t1, $fp, -248
# store i32  %arg10, i32 * %op26
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op27 = alloca i32 
	addi.d $t1, $fp, -268
	st.d $t1, $fp, -264
# store i32  %arg11, i32 * %op27
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op28 = alloca i32 
	addi.d $t1, $fp, -284
	st.d $t1, $fp, -280
# store i32  %arg12, i32 * %op28
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# %op29 = alloca i32 
	addi.d $t1, $fp, -300
	st.d $t1, $fp, -296
# store i32  %arg13, i32 * %op29
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# %op30 = alloca i32 
	addi.d $t1, $fp, -316
	st.d $t1, $fp, -312
# store i32  %arg14, i32 * %op30
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# %op31 = alloca i32 
	addi.d $t1, $fp, -332
	st.d $t1, $fp, -328
# store i32  %arg15, i32 * %op31
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op32 = load i32 , i32 * %op16
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op33 = load i32 , i32 * %op17
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op34 = add i32  %op32, %op33
	ld.w $t0, $fp, -336
	ld.w $t1, $fp, -340
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -344
# %op35 = load i32 , i32 * %op18
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op36 = add i32  %op34, %op35
	ld.w $t0, $fp, -344
	ld.w $t1, $fp, -348
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op37 = load i32 , i32 * %op19
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op38 = sub i32  %op36, %op37
	ld.w $t0, $fp, -352
	ld.w $t1, $fp, -356
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# %op39 = load i32 , i32 * %op20
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op40 = sub i32  %op38, %op39
	ld.w $t0, $fp, -360
	ld.w $t1, $fp, -364
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op41 = load i32 , i32 * %op21
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op42 = sub i32  %op40, %op41
	ld.w $t0, $fp, -368
	ld.w $t1, $fp, -372
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op43 = load i32 , i32 * %op22
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op44 = sub i32  %op42, %op43
	ld.w $t0, $fp, -376
	ld.w $t1, $fp, -380
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op45 = load i32 , i32 * %op23
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op46 = sub i32  %op44, %op45
	ld.w $t0, $fp, -384
	ld.w $t1, $fp, -388
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op47 = load i32 , i32 * %op24
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op48 = add i32  %op46, %op47
	ld.w $t0, $fp, -392
	ld.w $t1, $fp, -396
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op49 = load i32 , i32 * %op25
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op50 = add i32  %op48, %op49
	ld.w $t0, $fp, -400
	ld.w $t1, $fp, -404
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op51 = load i32 , i32 * %op26
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op52 = add i32  %op50, %op51
	ld.w $t0, $fp, -408
	ld.w $t1, $fp, -412
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# %op53 = load i32 , i32 * %op27
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op54 = add i32  %op52, %op53
	ld.w $t0, $fp, -416
	ld.w $t1, $fp, -420
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -424
# %op55 = load i32 , i32 * %op28
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op56 = add i32  %op54, %op55
	ld.w $t0, $fp, -424
	ld.w $t1, $fp, -428
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# %op57 = load i32 , i32 * %op29
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op58 = add i32  %op56, %op57
	ld.w $t0, $fp, -432
	ld.w $t1, $fp, -436
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -440
# %op59 = load i32 , i32 * %op30
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op60 = add i32  %op58, %op59
	ld.w $t0, $fp, -440
	ld.w $t1, $fp, -444
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# %op61 = load i32 , i32 * %op31
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op62 = add i32  %op60, %op61
	ld.w $t0, $fp, -448
	ld.w $t1, $fp, -452
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -456
# ret i32  %op62
	ld.w $a0, $fp, -456
	b testParam16_ret
testParam16_ret:
	addi.d $sp, $sp, 464
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl testParam32
	.type testParam32, @function
testParam32:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -912
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
	st.w $a4, $fp, -36
	st.w $a5, $fp, -40
	st.w $a6, $fp, -44
	st.w $a7, $fp, -48
	ld.d $t0, $fp, 0
	st.w $t0, $fp, -52
	ld.d $t0, $fp, 8
	st.w $t0, $fp, -56
	ld.d $t0, $fp, 16
	st.w $t0, $fp, -60
	ld.d $t0, $fp, 24
	st.w $t0, $fp, -64
	ld.d $t0, $fp, 32
	st.w $t0, $fp, -68
	ld.d $t0, $fp, 40
	st.w $t0, $fp, -72
	ld.d $t0, $fp, 48
	st.w $t0, $fp, -76
	ld.d $t0, $fp, 56
	st.w $t0, $fp, -80
	ld.d $t0, $fp, 64
	st.w $t0, $fp, -84
	ld.d $t0, $fp, 72
	st.w $t0, $fp, -88
	ld.d $t0, $fp, 80
	st.w $t0, $fp, -92
	ld.d $t0, $fp, 88
	st.w $t0, $fp, -96
	ld.d $t0, $fp, 96
	st.w $t0, $fp, -100
	ld.d $t0, $fp, 104
	st.w $t0, $fp, -104
	ld.d $t0, $fp, 112
	st.w $t0, $fp, -108
	ld.d $t0, $fp, 120
	st.w $t0, $fp, -112
	ld.d $t0, $fp, 128
	st.w $t0, $fp, -116
	ld.d $t0, $fp, 136
	st.w $t0, $fp, -120
	ld.d $t0, $fp, 144
	st.w $t0, $fp, -124
	ld.d $t0, $fp, 152
	st.w $t0, $fp, -128
	ld.d $t0, $fp, 160
	st.w $t0, $fp, -132
	ld.d $t0, $fp, 168
	st.w $t0, $fp, -136
	ld.d $t0, $fp, 176
	st.w $t0, $fp, -140
	ld.d $t0, $fp, 184
	st.w $t0, $fp, -144
.testParam32_label_entry:
# %op32 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# store i32  %arg0, i32 * %op32
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op33 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# store i32  %arg1, i32 * %op33
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op34 = alloca i32 
	addi.d $t1, $fp, -188
	st.d $t1, $fp, -184
# store i32  %arg2, i32 * %op34
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op35 = alloca i32 
	addi.d $t1, $fp, -204
	st.d $t1, $fp, -200
# store i32  %arg3, i32 * %op35
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op36 = alloca i32 
	addi.d $t1, $fp, -220
	st.d $t1, $fp, -216
# store i32  %arg4, i32 * %op36
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op37 = alloca i32 
	addi.d $t1, $fp, -236
	st.d $t1, $fp, -232
# store i32  %arg5, i32 * %op37
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op38 = alloca i32 
	addi.d $t1, $fp, -252
	st.d $t1, $fp, -248
# store i32  %arg6, i32 * %op38
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op39 = alloca i32 
	addi.d $t1, $fp, -268
	st.d $t1, $fp, -264
# store i32  %arg7, i32 * %op39
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op40 = alloca i32 
	addi.d $t1, $fp, -284
	st.d $t1, $fp, -280
# store i32  %arg8, i32 * %op40
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op41 = alloca i32 
	addi.d $t1, $fp, -300
	st.d $t1, $fp, -296
# store i32  %arg9, i32 * %op41
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op42 = alloca i32 
	addi.d $t1, $fp, -316
	st.d $t1, $fp, -312
# store i32  %arg10, i32 * %op42
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op43 = alloca i32 
	addi.d $t1, $fp, -332
	st.d $t1, $fp, -328
# store i32  %arg11, i32 * %op43
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op44 = alloca i32 
	addi.d $t1, $fp, -348
	st.d $t1, $fp, -344
# store i32  %arg12, i32 * %op44
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# %op45 = alloca i32 
	addi.d $t1, $fp, -364
	st.d $t1, $fp, -360
# store i32  %arg13, i32 * %op45
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# %op46 = alloca i32 
	addi.d $t1, $fp, -380
	st.d $t1, $fp, -376
# store i32  %arg14, i32 * %op46
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# %op47 = alloca i32 
	addi.d $t1, $fp, -396
	st.d $t1, $fp, -392
# store i32  %arg15, i32 * %op47
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op48 = alloca i32 
	addi.d $t1, $fp, -412
	st.d $t1, $fp, -408
# store i32  %arg16, i32 * %op48
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -84
	st.w $t1, $t0, 0
# %op49 = alloca i32 
	addi.d $t1, $fp, -428
	st.d $t1, $fp, -424
# store i32  %arg17, i32 * %op49
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -88
	st.w $t1, $t0, 0
# %op50 = alloca i32 
	addi.d $t1, $fp, -444
	st.d $t1, $fp, -440
# store i32  %arg18, i32 * %op50
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op51 = alloca i32 
	addi.d $t1, $fp, -460
	st.d $t1, $fp, -456
# store i32  %arg19, i32 * %op51
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -96
	st.w $t1, $t0, 0
# %op52 = alloca i32 
	addi.d $t1, $fp, -476
	st.d $t1, $fp, -472
# store i32  %arg20, i32 * %op52
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# %op53 = alloca i32 
	addi.d $t1, $fp, -492
	st.d $t1, $fp, -488
# store i32  %arg21, i32 * %op53
	ld.d $t0, $fp, -488
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# %op54 = alloca i32 
	addi.d $t1, $fp, -508
	st.d $t1, $fp, -504
# store i32  %arg22, i32 * %op54
	ld.d $t0, $fp, -504
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op55 = alloca i32 
	addi.d $t1, $fp, -524
	st.d $t1, $fp, -520
# store i32  %arg23, i32 * %op55
	ld.d $t0, $fp, -520
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# %op56 = alloca i32 
	addi.d $t1, $fp, -540
	st.d $t1, $fp, -536
# store i32  %arg24, i32 * %op56
	ld.d $t0, $fp, -536
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op57 = alloca i32 
	addi.d $t1, $fp, -556
	st.d $t1, $fp, -552
# store i32  %arg25, i32 * %op57
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -120
	st.w $t1, $t0, 0
# %op58 = alloca i32 
	addi.d $t1, $fp, -572
	st.d $t1, $fp, -568
# store i32  %arg26, i32 * %op58
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op59 = alloca i32 
	addi.d $t1, $fp, -588
	st.d $t1, $fp, -584
# store i32  %arg27, i32 * %op59
	ld.d $t0, $fp, -584
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# %op60 = alloca i32 
	addi.d $t1, $fp, -604
	st.d $t1, $fp, -600
# store i32  %arg28, i32 * %op60
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# %op61 = alloca i32 
	addi.d $t1, $fp, -620
	st.d $t1, $fp, -616
# store i32  %arg29, i32 * %op61
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# %op62 = alloca i32 
	addi.d $t1, $fp, -636
	st.d $t1, $fp, -632
# store i32  %arg30, i32 * %op62
	ld.d $t0, $fp, -632
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# %op63 = alloca i32 
	addi.d $t1, $fp, -652
	st.d $t1, $fp, -648
# store i32  %arg31, i32 * %op63
	ld.d $t0, $fp, -648
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# %op64 = load i32 , i32 * %op32
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -656
# %op65 = load i32 , i32 * %op33
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op66 = add i32  %op64, %op65
	ld.w $t0, $fp, -656
	ld.w $t1, $fp, -660
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -664
# %op67 = load i32 , i32 * %op34
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op68 = add i32  %op66, %op67
	ld.w $t0, $fp, -664
	ld.w $t1, $fp, -668
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# %op69 = load i32 , i32 * %op35
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# %op70 = add i32  %op68, %op69
	ld.w $t0, $fp, -672
	ld.w $t1, $fp, -676
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -680
# %op71 = load i32 , i32 * %op36
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op72 = add i32  %op70, %op71
	ld.w $t0, $fp, -680
	ld.w $t1, $fp, -684
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -688
# %op73 = load i32 , i32 * %op37
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op74 = add i32  %op72, %op73
	ld.w $t0, $fp, -688
	ld.w $t1, $fp, -692
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op75 = load i32 , i32 * %op38
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op76 = add i32  %op74, %op75
	ld.w $t0, $fp, -696
	ld.w $t1, $fp, -700
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -704
# %op77 = load i32 , i32 * %op39
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op78 = add i32  %op76, %op77
	ld.w $t0, $fp, -704
	ld.w $t1, $fp, -708
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -712
# %op79 = load i32 , i32 * %op40
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op80 = add i32  %op78, %op79
	ld.w $t0, $fp, -712
	ld.w $t1, $fp, -716
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -720
# %op81 = load i32 , i32 * %op41
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op82 = add i32  %op80, %op81
	ld.w $t0, $fp, -720
	ld.w $t1, $fp, -724
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -728
# %op83 = load i32 , i32 * %op42
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op84 = add i32  %op82, %op83
	ld.w $t0, $fp, -728
	ld.w $t1, $fp, -732
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -736
# %op85 = load i32 , i32 * %op43
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op86 = add i32  %op84, %op85
	ld.w $t0, $fp, -736
	ld.w $t1, $fp, -740
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -744
# %op87 = load i32 , i32 * %op44
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op88 = add i32  %op86, %op87
	ld.w $t0, $fp, -744
	ld.w $t1, $fp, -748
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -752
# %op89 = load i32 , i32 * %op45
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -756
# %op90 = add i32  %op88, %op89
	ld.w $t0, $fp, -752
	ld.w $t1, $fp, -756
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -760
# %op91 = load i32 , i32 * %op46
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op92 = add i32  %op90, %op91
	ld.w $t0, $fp, -760
	ld.w $t1, $fp, -764
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# %op93 = load i32 , i32 * %op47
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op94 = add i32  %op92, %op93
	ld.w $t0, $fp, -768
	ld.w $t1, $fp, -772
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -776
# %op95 = load i32 , i32 * %op48
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op96 = add i32  %op94, %op95
	ld.w $t0, $fp, -776
	ld.w $t1, $fp, -780
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -784
# %op97 = load i32 , i32 * %op49
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -788
# %op98 = add i32  %op96, %op97
	ld.w $t0, $fp, -784
	ld.w $t1, $fp, -788
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -792
# %op99 = load i32 , i32 * %op50
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op100 = sub i32  %op98, %op99
	ld.w $t0, $fp, -792
	ld.w $t1, $fp, -796
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -800
# %op101 = load i32 , i32 * %op51
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -804
# %op102 = sub i32  %op100, %op101
	ld.w $t0, $fp, -800
	ld.w $t1, $fp, -804
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -808
# %op103 = load i32 , i32 * %op52
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op104 = sub i32  %op102, %op103
	ld.w $t0, $fp, -808
	ld.w $t1, $fp, -812
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -816
# %op105 = load i32 , i32 * %op53
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -820
# %op106 = sub i32  %op104, %op105
	ld.w $t0, $fp, -816
	ld.w $t1, $fp, -820
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -824
# %op107 = load i32 , i32 * %op54
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op108 = sub i32  %op106, %op107
	ld.w $t0, $fp, -824
	ld.w $t1, $fp, -828
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -832
# %op109 = load i32 , i32 * %op55
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# %op110 = add i32  %op108, %op109
	ld.w $t0, $fp, -832
	ld.w $t1, $fp, -836
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -840
# %op111 = load i32 , i32 * %op56
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op112 = add i32  %op110, %op111
	ld.w $t0, $fp, -840
	ld.w $t1, $fp, -844
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -848
# %op113 = load i32 , i32 * %op57
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -852
# %op114 = add i32  %op112, %op113
	ld.w $t0, $fp, -848
	ld.w $t1, $fp, -852
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -856
# %op115 = load i32 , i32 * %op58
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -860
# %op116 = add i32  %op114, %op115
	ld.w $t0, $fp, -856
	ld.w $t1, $fp, -860
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -864
# %op117 = load i32 , i32 * %op59
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# %op118 = add i32  %op116, %op117
	ld.w $t0, $fp, -864
	ld.w $t1, $fp, -868
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -872
# %op119 = load i32 , i32 * %op60
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op120 = add i32  %op118, %op119
	ld.w $t0, $fp, -872
	ld.w $t1, $fp, -876
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -880
# %op121 = load i32 , i32 * %op61
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -884
# %op122 = add i32  %op120, %op121
	ld.w $t0, $fp, -880
	ld.w $t1, $fp, -884
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -888
# %op123 = load i32 , i32 * %op62
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op124 = add i32  %op122, %op123
	ld.w $t0, $fp, -888
	ld.w $t1, $fp, -892
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -896
# %op125 = load i32 , i32 * %op63
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# %op126 = add i32  %op124, %op125
	ld.w $t0, $fp, -896
	ld.w $t1, $fp, -900
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -904
# ret i32  %op126
	ld.w $a0, $fp, -904
	b testParam32_ret
testParam32_ret:
	addi.d $sp, $sp, 912
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -272
.main_label_entry:
# store i32  0, i32 * @a0
	la.local $t0, a0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * @a1
	la.local $t0, a1
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  2, i32 * @a2
	la.local $t0, a2
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * @a3
	la.local $t0, a3
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# store i32  4, i32 * @a4
	la.local $t0, a4
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  5, i32 * @a5
	la.local $t0, a5
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  6, i32 * @a6
	la.local $t0, a6
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# store i32  7, i32 * @a7
	la.local $t0, a7
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# store i32  8, i32 * @a8
	la.local $t0, a8
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# store i32  9, i32 * @a9
	la.local $t0, a9
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# store i32  0, i32 * @a10
	la.local $t0, a10
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * @a11
	la.local $t0, a11
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  2, i32 * @a12
	la.local $t0, a12
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * @a13
	la.local $t0, a13
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# store i32  4, i32 * @a14
	la.local $t0, a14
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  5, i32 * @a15
	la.local $t0, a15
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  6, i32 * @a16
	la.local $t0, a16
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# store i32  7, i32 * @a17
	la.local $t0, a17
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# store i32  8, i32 * @a18
	la.local $t0, a18
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# store i32  9, i32 * @a19
	la.local $t0, a19
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# store i32  0, i32 * @a20
	la.local $t0, a20
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * @a21
	la.local $t0, a21
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  2, i32 * @a22
	la.local $t0, a22
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * @a23
	la.local $t0, a23
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# store i32  4, i32 * @a24
	la.local $t0, a24
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  5, i32 * @a25
	la.local $t0, a25
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  6, i32 * @a26
	la.local $t0, a26
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# store i32  7, i32 * @a27
	la.local $t0, a27
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# store i32  8, i32 * @a28
	la.local $t0, a28
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# store i32  9, i32 * @a29
	la.local $t0, a29
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# store i32  0, i32 * @a30
	la.local $t0, a30
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * @a31
	la.local $t0, a31
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  4, i32 * @a32
	la.local $t0, a32
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# store i32  5, i32 * @a33
	la.local $t0, a33
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# store i32  6, i32 * @a34
	la.local $t0, a34
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# store i32  7, i32 * @a35
	la.local $t0, a35
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# store i32  8, i32 * @a36
	la.local $t0, a36
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# store i32  9, i32 * @a37
	la.local $t0, a37
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# store i32  0, i32 * @a38
	la.local $t0, a38
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * @a39
	la.local $t0, a39
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op0 = load i32 , i32 * @a0
	la.local $t0, a0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op2 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# %op3 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op4 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op5 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op6 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op7 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op8 = call i32  @testParam8(i32  %op0, i32  %op1, i32  %op2, i32  %op3, i32  %op4, i32  %op5, i32  %op6, i32  %op7)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -24
	ld.w $a2, $fp, -28
	ld.w $a3, $fp, -32
	ld.w $a4, $fp, -36
	ld.w $a5, $fp, -40
	ld.w $a6, $fp, -44
	ld.w $a7, $fp, -48
	bl testParam8
	st.w $a0, $fp, -52
# store i32  %op8, i32 * @a0
	la.local $t0, a0
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op9 = load i32 , i32 * @a0
	la.local $t0, a0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @putint(i32  %op9)
	ld.w $a0, $fp, -56
	bl putint
# %op10 = load i32 , i32 * @a32
	la.local $t0, a32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op11 = load i32 , i32 * @a33
	la.local $t0, a33
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op12 = load i32 , i32 * @a34
	la.local $t0, a34
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op13 = load i32 , i32 * @a35
	la.local $t0, a35
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op14 = load i32 , i32 * @a36
	la.local $t0, a36
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op15 = load i32 , i32 * @a37
	la.local $t0, a37
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op16 = load i32 , i32 * @a38
	la.local $t0, a38
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op17 = load i32 , i32 * @a39
	la.local $t0, a39
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op18 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op19 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op20 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op21 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op22 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op23 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op24 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op25 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op26 = call i32  @testParam16(i32  %op10, i32  %op11, i32  %op12, i32  %op13, i32  %op14, i32  %op15, i32  %op16, i32  %op17, i32  %op18, i32  %op19, i32  %op20, i32  %op21, i32  %op22, i32  %op23, i32  %op24, i32  %op25)
	addi.d $sp, $sp, -64
	ld.w $t0, $fp, -120
	st.d $r12, $sp, 56
	ld.w $t0, $fp, -116
	st.d $r12, $sp, 48
	ld.w $t0, $fp, -112
	st.d $r12, $sp, 40
	ld.w $t0, $fp, -108
	st.d $r12, $sp, 32
	ld.w $t0, $fp, -104
	st.d $r12, $sp, 24
	ld.w $t0, $fp, -100
	st.d $r12, $sp, 16
	ld.w $t0, $fp, -96
	st.d $r12, $sp, 8
	ld.w $t0, $fp, -92
	st.d $r12, $sp, 0
	ld.w $a7, $fp, -88
	ld.w $a6, $fp, -84
	ld.w $a5, $fp, -80
	ld.w $a4, $fp, -76
	ld.w $a3, $fp, -72
	ld.w $a2, $fp, -68
	ld.w $a1, $fp, -64
	ld.w $a0, $fp, -60
	bl testParam16
	st.w $a0, $fp, -124
	addi.d $sp, $sp, 64
# store i32  %op26, i32 * @a0
	la.local $t0, a0
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# %op27 = load i32 , i32 * @a0
	la.local $t0, a0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# call void @putint(i32  %op27)
	ld.w $a0, $fp, -128
	bl putint
# %op28 = load i32 , i32 * @a0
	la.local $t0, a0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op29 = load i32 , i32 * @a1
	la.local $t0, a1
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op30 = load i32 , i32 * @a2
	la.local $t0, a2
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op31 = load i32 , i32 * @a3
	la.local $t0, a3
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op32 = load i32 , i32 * @a4
	la.local $t0, a4
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op33 = load i32 , i32 * @a5
	la.local $t0, a5
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op34 = load i32 , i32 * @a6
	la.local $t0, a6
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op35 = load i32 , i32 * @a7
	la.local $t0, a7
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op36 = load i32 , i32 * @a8
	la.local $t0, a8
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op37 = load i32 , i32 * @a9
	la.local $t0, a9
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op38 = load i32 , i32 * @a10
	la.local $t0, a10
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op39 = load i32 , i32 * @a11
	la.local $t0, a11
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op40 = load i32 , i32 * @a12
	la.local $t0, a12
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op41 = load i32 , i32 * @a13
	la.local $t0, a13
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op42 = load i32 , i32 * @a14
	la.local $t0, a14
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op43 = load i32 , i32 * @a15
	la.local $t0, a15
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op44 = load i32 , i32 * @a16
	la.local $t0, a16
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op45 = load i32 , i32 * @a17
	la.local $t0, a17
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op46 = load i32 , i32 * @a18
	la.local $t0, a18
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op47 = load i32 , i32 * @a19
	la.local $t0, a19
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op48 = load i32 , i32 * @a20
	la.local $t0, a20
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op49 = load i32 , i32 * @a21
	la.local $t0, a21
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op50 = load i32 , i32 * @a22
	la.local $t0, a22
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op51 = load i32 , i32 * @a23
	la.local $t0, a23
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op52 = load i32 , i32 * @a24
	la.local $t0, a24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op53 = load i32 , i32 * @a25
	la.local $t0, a25
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op54 = load i32 , i32 * @a26
	la.local $t0, a26
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op55 = load i32 , i32 * @a27
	la.local $t0, a27
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op56 = load i32 , i32 * @a28
	la.local $t0, a28
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op57 = load i32 , i32 * @a29
	la.local $t0, a29
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op58 = load i32 , i32 * @a30
	la.local $t0, a30
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op59 = load i32 , i32 * @a31
	la.local $t0, a31
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op60 = call i32  @testParam32(i32  %op28, i32  %op29, i32  %op30, i32  %op31, i32  %op32, i32  %op33, i32  %op34, i32  %op35, i32  %op36, i32  %op37, i32  %op38, i32  %op39, i32  %op40, i32  %op41, i32  %op42, i32  %op43, i32  %op44, i32  %op45, i32  %op46, i32  %op47, i32  %op48, i32  %op49, i32  %op50, i32  %op51, i32  %op52, i32  %op53, i32  %op54, i32  %op55, i32  %op56, i32  %op57, i32  %op58, i32  %op59)
	addi.d $sp, $sp, -192
	ld.w $t0, $fp, -256
	st.d $r12, $sp, 184
	ld.w $t0, $fp, -252
	st.d $r12, $sp, 176
	ld.w $t0, $fp, -248
	st.d $r12, $sp, 168
	ld.w $t0, $fp, -244
	st.d $r12, $sp, 160
	ld.w $t0, $fp, -240
	st.d $r12, $sp, 152
	ld.w $t0, $fp, -236
	st.d $r12, $sp, 144
	ld.w $t0, $fp, -232
	st.d $r12, $sp, 136
	ld.w $t0, $fp, -228
	st.d $r12, $sp, 128
	ld.w $t0, $fp, -224
	st.d $r12, $sp, 120
	ld.w $t0, $fp, -220
	st.d $r12, $sp, 112
	ld.w $t0, $fp, -216
	st.d $r12, $sp, 104
	ld.w $t0, $fp, -212
	st.d $r12, $sp, 96
	ld.w $t0, $fp, -208
	st.d $r12, $sp, 88
	ld.w $t0, $fp, -204
	st.d $r12, $sp, 80
	ld.w $t0, $fp, -200
	st.d $r12, $sp, 72
	ld.w $t0, $fp, -196
	st.d $r12, $sp, 64
	ld.w $t0, $fp, -192
	st.d $r12, $sp, 56
	ld.w $t0, $fp, -188
	st.d $r12, $sp, 48
	ld.w $t0, $fp, -184
	st.d $r12, $sp, 40
	ld.w $t0, $fp, -180
	st.d $r12, $sp, 32
	ld.w $t0, $fp, -176
	st.d $r12, $sp, 24
	ld.w $t0, $fp, -172
	st.d $r12, $sp, 16
	ld.w $t0, $fp, -168
	st.d $r12, $sp, 8
	ld.w $t0, $fp, -164
	st.d $r12, $sp, 0
	ld.w $a7, $fp, -160
	ld.w $a6, $fp, -156
	ld.w $a5, $fp, -152
	ld.w $a4, $fp, -148
	ld.w $a3, $fp, -144
	ld.w $a2, $fp, -140
	ld.w $a1, $fp, -136
	ld.w $a0, $fp, -132
	bl testParam32
	st.w $a0, $fp, -260
	addi.d $sp, $sp, 192
# store i32  %op60, i32 * @a0
	la.local $t0, a0
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# %op61 = load i32 , i32 * @a0
	la.local $t0, a0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -264
# call void @putint(i32  %op61)
	ld.w $a0, $fp, -264
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 272
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
