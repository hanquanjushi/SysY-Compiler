	.text
	.globl sort
	.type sort, @function
sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -336
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.sort_label_entry:
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
# %op4 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .sort_label5
.sort_label5:
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = sub i32  %op7, 1
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op9 = icmp slt i32  %op6, %op8
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -88
	slt $t2, $t0, $t1
	st.b $t2, $fp, -89
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -89
	st.w $t0, $fp, -96
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -97
# br i1  %op11, label %label12, label %label16
	ld.b $t0, $fp, -97
	bnez $t0, .sort_label12
	b .sort_label16
.sort_label12:
# %op13 = alloca i32 
	addi.d $t1, $fp, -116
	st.d $t1, $fp, -112
# %op14 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op15 = add i32  %op14, 1
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# store i32  %op15, i32 * %op13
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -124
	st.w $t1, $t0, 0
# br label %label17
	b .sort_label17
.sort_label16:
# ret void
	addi.d $a0, $zero, 0
	b sort_ret
.sort_label17:
# %op18 = load i32 , i32 * %op13
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op19 = load i32 , i32 * %op3
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op20 = icmp slt i32  %op18, %op19
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -132
	slt $t2, $t0, $t1
	st.b $t2, $fp, -133
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -141
# br i1  %op22, label %label23, label %label35
	ld.b $t0, $fp, -141
	bnez $t0, .sort_label23
	b .sort_label35
.sort_label23:
# %op24 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op25 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -160
# %op26 = getelementptr i32 , i32 * %op25, i32  %op24
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -148
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op28 = load i32 , i32 * %op13
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op29 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op30 = getelementptr i32 , i32 * %op29, i32  %op28
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -176
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op32 = icmp slt i32  %op27, %op31
	ld.w $t0, $fp, -172
	ld.w $t1, $fp, -196
	slt $t2, $t0, $t1
	st.b $t2, $fp, -197
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -197
	st.w $t0, $fp, -204
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -204
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -205
# br i1  %op34, label %label38, label %label55
	ld.b $t0, $fp, -205
	bnez $t0, .sort_label38
	b .sort_label55
.sort_label35:
# %op36 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op37 = add i32  %op36, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op37, i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# br label %label5
	b .sort_label5
.sort_label38:
# %op39 = alloca i32 
	addi.d $t1, $fp, -228
	st.d $t1, $fp, -224
# %op40 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op41 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -240
# %op42 = getelementptr i32 , i32 * %op41, i32  %op40
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -232
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -248
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# store i32  %op43, i32 * %op39
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -252
	st.w $t1, $t0, 0
# %op44 = load i32 , i32 * %op13
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op45 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op46 = getelementptr i32 , i32 * %op45, i32  %op44
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -256
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op47 = load i32 , i32 * %op46
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op48 = load i32 , i32 * %op4
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op49 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -288
# %op50 = getelementptr i32 , i32 * %op49, i32  %op48
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -280
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# store i32  %op47, i32 * %op50
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -276
	st.w $t1, $t0, 0
# %op51 = load i32 , i32 * %op39
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op52 = load i32 , i32 * %op13
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op53 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -312
# %op54 = getelementptr i32 , i32 * %op53, i32  %op52
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -304
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -320
# store i32  %op51, i32 * %op54
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label55
	b .sort_label55
.sort_label55:
# %op56 = load i32 , i32 * %op13
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op57 = add i32  %op56, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# store i32  %op57, i32 * %op13
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# br label %label17
	b .sort_label17
sort_ret:
	addi.d $sp, $sp, 336
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl param32_rec
	.type param32_rec, @function
param32_rec:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -816
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
.param32_rec_label_entry:
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
# %op65 = icmp eq i32  %op64, 0
	ld.w $t0, $fp, -656
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -657
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -657
	st.w $t0, $fp, -664
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -664
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -665
# br i1  %op67, label %label68, label %label70
	ld.b $t0, $fp, -665
	bnez $t0, .param32_rec_label68
	b .param32_rec_label70
.param32_rec_label68:
# %op69 = load i32 , i32 * %op33
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -672
# ret i32  %op69
	ld.w $a0, $fp, -672
	b param32_rec_ret
.param32_rec_label70:
# %op71 = load i32 , i32 * %op32
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# %op72 = sub i32  %op71, 1
	ld.w $t0, $fp, -676
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -680
# %op73 = load i32 , i32 * %op33
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op74 = load i32 , i32 * %op34
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# %op75 = add i32  %op73, %op74
	ld.w $t0, $fp, -684
	ld.w $t1, $fp, -688
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -692
# %op76 = srem i32  %op75, 998244353
	ld.w $t0, $fp, -692
	lu12i.w $t1, 243712
	ori $t1, $t1, 1
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op77 = load i32 , i32 * %op35
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op78 = load i32 , i32 * %op36
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -704
# %op79 = load i32 , i32 * %op37
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op80 = load i32 , i32 * %op38
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -712
# %op81 = load i32 , i32 * %op39
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op82 = load i32 , i32 * %op40
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -720
# %op83 = load i32 , i32 * %op41
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op84 = load i32 , i32 * %op42
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -728
# %op85 = load i32 , i32 * %op43
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op86 = load i32 , i32 * %op44
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -736
# %op87 = load i32 , i32 * %op45
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op88 = load i32 , i32 * %op46
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -744
# %op89 = load i32 , i32 * %op47
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op90 = load i32 , i32 * %op48
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -752
# %op91 = load i32 , i32 * %op49
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -756
# %op92 = load i32 , i32 * %op50
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -760
# %op93 = load i32 , i32 * %op51
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op94 = load i32 , i32 * %op52
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -768
# %op95 = load i32 , i32 * %op53
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -772
# %op96 = load i32 , i32 * %op54
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -776
# %op97 = load i32 , i32 * %op55
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op98 = load i32 , i32 * %op56
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -784
# %op99 = load i32 , i32 * %op57
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -788
# %op100 = load i32 , i32 * %op58
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -792
# %op101 = load i32 , i32 * %op59
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op102 = load i32 , i32 * %op60
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -800
# %op103 = load i32 , i32 * %op61
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -804
# %op104 = load i32 , i32 * %op62
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -808
# %op105 = load i32 , i32 * %op63
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op106 = call i32  @param32_rec(i32  %op72, i32  %op76, i32  %op77, i32  %op78, i32  %op79, i32  %op80, i32  %op81, i32  %op82, i32  %op83, i32  %op84, i32  %op85, i32  %op86, i32  %op87, i32  %op88, i32  %op89, i32  %op90, i32  %op91, i32  %op92, i32  %op93, i32  %op94, i32  %op95, i32  %op96, i32  %op97, i32  %op98, i32  %op99, i32  %op100, i32  %op101, i32  %op102, i32  %op103, i32  %op104, i32  %op105, i32  0)
	addi.d $sp, $sp, -192
	addi.w $t0, $zero, 0
	st.d $t0, $sp, 184
	ld.w $t0, $fp, -812
	st.d $t0, $sp, 176
	ld.w $t0, $fp, -808
	st.d $t0, $sp, 168
	ld.w $t0, $fp, -804
	st.d $t0, $sp, 160
	ld.w $t0, $fp, -800
	st.d $t0, $sp, 152
	ld.w $t0, $fp, -796
	st.d $t0, $sp, 144
	ld.w $t0, $fp, -792
	st.d $t0, $sp, 136
	ld.w $t0, $fp, -788
	st.d $t0, $sp, 128
	ld.w $t0, $fp, -784
	st.d $t0, $sp, 120
	ld.w $t0, $fp, -780
	st.d $t0, $sp, 112
	ld.w $t0, $fp, -776
	st.d $t0, $sp, 104
	ld.w $t0, $fp, -772
	st.d $t0, $sp, 96
	ld.w $t0, $fp, -768
	st.d $t0, $sp, 88
	ld.w $t0, $fp, -764
	st.d $t0, $sp, 80
	ld.w $t0, $fp, -760
	st.d $t0, $sp, 72
	ld.w $t0, $fp, -756
	st.d $t0, $sp, 64
	ld.w $t0, $fp, -752
	st.d $t0, $sp, 56
	ld.w $t0, $fp, -748
	st.d $t0, $sp, 48
	ld.w $t0, $fp, -744
	st.d $t0, $sp, 40
	ld.w $t0, $fp, -740
	st.d $t0, $sp, 32
	ld.w $t0, $fp, -736
	st.d $t0, $sp, 24
	ld.w $t0, $fp, -732
	st.d $t0, $sp, 16
	ld.w $t0, $fp, -728
	st.d $t0, $sp, 8
	ld.w $t0, $fp, -724
	st.d $t0, $sp, 0
	ld.w $a7, $fp, -720
	ld.w $a6, $fp, -716
	ld.w $a5, $fp, -712
	ld.w $a4, $fp, -708
	ld.w $a3, $fp, -704
	ld.w $a2, $fp, -700
	ld.w $a1, $fp, -696
	ld.w $a0, $fp, -680
	bl param32_rec
	st.w $a0, $fp, -816
	addi.d $sp, $sp, 192
# ret i32  %op106
	ld.w $a0, $fp, -816
	b param32_rec_ret
param32_rec_ret:
	addi.d $sp, $sp, 816
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl param32_arr
	.type param32_arr, @function
param32_arr:
	lu12i.w $t0, 0
	ori $t0, $t0, 2592
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.d $a2, $fp, -40
	st.d $a3, $fp, -48
	st.d $a4, $fp, -56
	st.d $a5, $fp, -64
	st.d $a6, $fp, -72
	st.d $a7, $fp, -80
	ld.d $t0, $fp, 0
	st.d $t0, $fp, -88
	ld.d $t0, $fp, 8
	st.d $t0, $fp, -96
	ld.d $t0, $fp, 16
	st.d $t0, $fp, -104
	ld.d $t0, $fp, 24
	st.d $t0, $fp, -112
	ld.d $t0, $fp, 32
	st.d $t0, $fp, -120
	ld.d $t0, $fp, 40
	st.d $t0, $fp, -128
	ld.d $t0, $fp, 48
	st.d $t0, $fp, -136
	ld.d $t0, $fp, 56
	st.d $t0, $fp, -144
	ld.d $t0, $fp, 64
	st.d $t0, $fp, -152
	ld.d $t0, $fp, 72
	st.d $t0, $fp, -160
	ld.d $t0, $fp, 80
	st.d $t0, $fp, -168
	ld.d $t0, $fp, 88
	st.d $t0, $fp, -176
	ld.d $t0, $fp, 96
	st.d $t0, $fp, -184
	ld.d $t0, $fp, 104
	st.d $t0, $fp, -192
	ld.d $t0, $fp, 112
	st.d $t0, $fp, -200
	ld.d $t0, $fp, 120
	st.d $t0, $fp, -208
	ld.d $t0, $fp, 128
	st.d $t0, $fp, -216
	ld.d $t0, $fp, 136
	st.d $t0, $fp, -224
	ld.d $t0, $fp, 144
	st.d $t0, $fp, -232
	ld.d $t0, $fp, 152
	st.d $t0, $fp, -240
	ld.d $t0, $fp, 160
	st.d $t0, $fp, -248
	ld.d $t0, $fp, 168
	st.d $t0, $fp, -256
	ld.d $t0, $fp, 176
	st.d $t0, $fp, -264
	ld.d $t0, $fp, 184
	st.d $t0, $fp, -272
.param32_arr_label_entry:
# %op32 = alloca i32 *
	addi.d $t1, $fp, -288
	st.d $t1, $fp, -280
# store i32 * %arg0, i32 ** %op32
	ld.d $t0, $fp, -280
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op33 = alloca i32 *
	addi.d $t1, $fp, -304
	st.d $t1, $fp, -296
# store i32 * %arg1, i32 ** %op33
	ld.d $t0, $fp, -296
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op34 = alloca i32 *
	addi.d $t1, $fp, -320
	st.d $t1, $fp, -312
# store i32 * %arg2, i32 ** %op34
	ld.d $t0, $fp, -312
	ld.d $t1, $fp, -40
	st.d $t1, $t0, 0
# %op35 = alloca i32 *
	addi.d $t1, $fp, -336
	st.d $t1, $fp, -328
# store i32 * %arg3, i32 ** %op35
	ld.d $t0, $fp, -328
	ld.d $t1, $fp, -48
	st.d $t1, $t0, 0
# %op36 = alloca i32 *
	addi.d $t1, $fp, -352
	st.d $t1, $fp, -344
# store i32 * %arg4, i32 ** %op36
	ld.d $t0, $fp, -344
	ld.d $t1, $fp, -56
	st.d $t1, $t0, 0
# %op37 = alloca i32 *
	addi.d $t1, $fp, -368
	st.d $t1, $fp, -360
# store i32 * %arg5, i32 ** %op37
	ld.d $t0, $fp, -360
	ld.d $t1, $fp, -64
	st.d $t1, $t0, 0
# %op38 = alloca i32 *
	addi.d $t1, $fp, -384
	st.d $t1, $fp, -376
# store i32 * %arg6, i32 ** %op38
	ld.d $t0, $fp, -376
	ld.d $t1, $fp, -72
	st.d $t1, $t0, 0
# %op39 = alloca i32 *
	addi.d $t1, $fp, -400
	st.d $t1, $fp, -392
# store i32 * %arg7, i32 ** %op39
	ld.d $t0, $fp, -392
	ld.d $t1, $fp, -80
	st.d $t1, $t0, 0
# %op40 = alloca i32 *
	addi.d $t1, $fp, -416
	st.d $t1, $fp, -408
# store i32 * %arg8, i32 ** %op40
	ld.d $t0, $fp, -408
	ld.d $t1, $fp, -88
	st.d $t1, $t0, 0
# %op41 = alloca i32 *
	addi.d $t1, $fp, -432
	st.d $t1, $fp, -424
# store i32 * %arg9, i32 ** %op41
	ld.d $t0, $fp, -424
	ld.d $t1, $fp, -96
	st.d $t1, $t0, 0
# %op42 = alloca i32 *
	addi.d $t1, $fp, -448
	st.d $t1, $fp, -440
# store i32 * %arg10, i32 ** %op42
	ld.d $t0, $fp, -440
	ld.d $t1, $fp, -104
	st.d $t1, $t0, 0
# %op43 = alloca i32 *
	addi.d $t1, $fp, -464
	st.d $t1, $fp, -456
# store i32 * %arg11, i32 ** %op43
	ld.d $t0, $fp, -456
	ld.d $t1, $fp, -112
	st.d $t1, $t0, 0
# %op44 = alloca i32 *
	addi.d $t1, $fp, -480
	st.d $t1, $fp, -472
# store i32 * %arg12, i32 ** %op44
	ld.d $t0, $fp, -472
	ld.d $t1, $fp, -120
	st.d $t1, $t0, 0
# %op45 = alloca i32 *
	addi.d $t1, $fp, -496
	st.d $t1, $fp, -488
# store i32 * %arg13, i32 ** %op45
	ld.d $t0, $fp, -488
	ld.d $t1, $fp, -128
	st.d $t1, $t0, 0
# %op46 = alloca i32 *
	addi.d $t1, $fp, -512
	st.d $t1, $fp, -504
# store i32 * %arg14, i32 ** %op46
	ld.d $t0, $fp, -504
	ld.d $t1, $fp, -136
	st.d $t1, $t0, 0
# %op47 = alloca i32 *
	addi.d $t1, $fp, -528
	st.d $t1, $fp, -520
# store i32 * %arg15, i32 ** %op47
	ld.d $t0, $fp, -520
	ld.d $t1, $fp, -144
	st.d $t1, $t0, 0
# %op48 = alloca i32 *
	addi.d $t1, $fp, -544
	st.d $t1, $fp, -536
# store i32 * %arg16, i32 ** %op48
	ld.d $t0, $fp, -536
	ld.d $t1, $fp, -152
	st.d $t1, $t0, 0
# %op49 = alloca i32 *
	addi.d $t1, $fp, -560
	st.d $t1, $fp, -552
# store i32 * %arg17, i32 ** %op49
	ld.d $t0, $fp, -552
	ld.d $t1, $fp, -160
	st.d $t1, $t0, 0
# %op50 = alloca i32 *
	addi.d $t1, $fp, -576
	st.d $t1, $fp, -568
# store i32 * %arg18, i32 ** %op50
	ld.d $t0, $fp, -568
	ld.d $t1, $fp, -168
	st.d $t1, $t0, 0
# %op51 = alloca i32 *
	addi.d $t1, $fp, -592
	st.d $t1, $fp, -584
# store i32 * %arg19, i32 ** %op51
	ld.d $t0, $fp, -584
	ld.d $t1, $fp, -176
	st.d $t1, $t0, 0
# %op52 = alloca i32 *
	addi.d $t1, $fp, -608
	st.d $t1, $fp, -600
# store i32 * %arg20, i32 ** %op52
	ld.d $t0, $fp, -600
	ld.d $t1, $fp, -184
	st.d $t1, $t0, 0
# %op53 = alloca i32 *
	addi.d $t1, $fp, -624
	st.d $t1, $fp, -616
# store i32 * %arg21, i32 ** %op53
	ld.d $t0, $fp, -616
	ld.d $t1, $fp, -192
	st.d $t1, $t0, 0
# %op54 = alloca i32 *
	addi.d $t1, $fp, -640
	st.d $t1, $fp, -632
# store i32 * %arg22, i32 ** %op54
	ld.d $t0, $fp, -632
	ld.d $t1, $fp, -200
	st.d $t1, $t0, 0
# %op55 = alloca i32 *
	addi.d $t1, $fp, -656
	st.d $t1, $fp, -648
# store i32 * %arg23, i32 ** %op55
	ld.d $t0, $fp, -648
	ld.d $t1, $fp, -208
	st.d $t1, $t0, 0
# %op56 = alloca i32 *
	addi.d $t1, $fp, -672
	st.d $t1, $fp, -664
# store i32 * %arg24, i32 ** %op56
	ld.d $t0, $fp, -664
	ld.d $t1, $fp, -216
	st.d $t1, $t0, 0
# %op57 = alloca i32 *
	addi.d $t1, $fp, -688
	st.d $t1, $fp, -680
# store i32 * %arg25, i32 ** %op57
	ld.d $t0, $fp, -680
	ld.d $t1, $fp, -224
	st.d $t1, $t0, 0
# %op58 = alloca i32 *
	addi.d $t1, $fp, -704
	st.d $t1, $fp, -696
# store i32 * %arg26, i32 ** %op58
	ld.d $t0, $fp, -696
	ld.d $t1, $fp, -232
	st.d $t1, $t0, 0
# %op59 = alloca i32 *
	addi.d $t1, $fp, -720
	st.d $t1, $fp, -712
# store i32 * %arg27, i32 ** %op59
	ld.d $t0, $fp, -712
	ld.d $t1, $fp, -240
	st.d $t1, $t0, 0
# %op60 = alloca i32 *
	addi.d $t1, $fp, -736
	st.d $t1, $fp, -728
# store i32 * %arg28, i32 ** %op60
	ld.d $t0, $fp, -728
	ld.d $t1, $fp, -248
	st.d $t1, $t0, 0
# %op61 = alloca i32 *
	addi.d $t1, $fp, -752
	st.d $t1, $fp, -744
# store i32 * %arg29, i32 ** %op61
	ld.d $t0, $fp, -744
	ld.d $t1, $fp, -256
	st.d $t1, $t0, 0
# %op62 = alloca i32 *
	addi.d $t1, $fp, -768
	st.d $t1, $fp, -760
# store i32 * %arg30, i32 ** %op62
	ld.d $t0, $fp, -760
	ld.d $t1, $fp, -264
	st.d $t1, $t0, 0
# %op63 = alloca i32 *
	addi.d $t1, $fp, -784
	st.d $t1, $fp, -776
# store i32 * %arg31, i32 ** %op63
	ld.d $t0, $fp, -776
	ld.d $t1, $fp, -272
	st.d $t1, $t0, 0
# %op64 = alloca i32 
	addi.d $t1, $fp, -796
	st.d $t1, $fp, -792
# %op65 = load i32 *, i32 ** %op32
	ld.d $t0, $fp, -280
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -808
# %op66 = getelementptr i32 , i32 * %op65, i32  0
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -816
# %op67 = load i32 , i32 * %op66
	ld.d $t0, $fp, -816
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -820
# %op68 = load i32 *, i32 ** %op32
	ld.d $t0, $fp, -280
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -832
# %op69 = getelementptr i32 , i32 * %op68, i32  1
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -840
# %op70 = load i32 , i32 * %op69
	ld.d $t0, $fp, -840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op71 = add i32  %op67, %op70
	ld.w $t0, $fp, -820
	ld.w $t1, $fp, -844
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -848
# store i32  %op71, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -848
	st.w $t1, $t0, 0
# %op72 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -852
# %op73 = load i32 *, i32 ** %op33
	ld.d $t0, $fp, -296
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -864
# %op74 = getelementptr i32 , i32 * %op73, i32  0
	ld.d $t0, $fp, -864
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -872
# %op75 = load i32 , i32 * %op74
	ld.d $t0, $fp, -872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op76 = add i32  %op72, %op75
	ld.w $t0, $fp, -852
	ld.w $t1, $fp, -876
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -880
# %op77 = load i32 *, i32 ** %op33
	ld.d $t0, $fp, -296
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -888
# %op78 = getelementptr i32 , i32 * %op77, i32  1
	ld.d $t0, $fp, -888
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -896
# %op79 = load i32 , i32 * %op78
	ld.d $t0, $fp, -896
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# %op80 = add i32  %op76, %op79
	ld.w $t0, $fp, -880
	ld.w $t1, $fp, -900
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -904
# store i32  %op80, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -904
	st.w $t1, $t0, 0
# %op81 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op82 = load i32 *, i32 ** %op34
	ld.d $t0, $fp, -312
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -920
# %op83 = getelementptr i32 , i32 * %op82, i32  0
	ld.d $t0, $fp, -920
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -928
# %op84 = load i32 , i32 * %op83
	ld.d $t0, $fp, -928
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op85 = add i32  %op81, %op84
	ld.w $t0, $fp, -908
	ld.w $t1, $fp, -932
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -936
# %op86 = load i32 *, i32 ** %op34
	ld.d $t0, $fp, -312
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -944
# %op87 = getelementptr i32 , i32 * %op86, i32  1
	ld.d $t0, $fp, -944
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -952
# %op88 = load i32 , i32 * %op87
	ld.d $t0, $fp, -952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op89 = add i32  %op85, %op88
	ld.w $t0, $fp, -936
	ld.w $t1, $fp, -956
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -960
# store i32  %op89, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -960
	st.w $t1, $t0, 0
# %op90 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# %op91 = load i32 *, i32 ** %op35
	ld.d $t0, $fp, -328
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -976
# %op92 = getelementptr i32 , i32 * %op91, i32  0
	ld.d $t0, $fp, -976
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -984
# %op93 = load i32 , i32 * %op92
	ld.d $t0, $fp, -984
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op94 = add i32  %op90, %op93
	ld.w $t0, $fp, -964
	ld.w $t1, $fp, -988
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -992
# %op95 = load i32 *, i32 ** %op35
	ld.d $t0, $fp, -328
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1000
# %op96 = getelementptr i32 , i32 * %op95, i32  1
	ld.d $t0, $fp, -1000
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1008
# %op97 = load i32 , i32 * %op96
	ld.d $t0, $fp, -1008
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1012
# %op98 = add i32  %op94, %op97
	ld.w $t0, $fp, -992
	ld.w $t1, $fp, -1012
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1016
# store i32  %op98, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1016
	st.w $t1, $t0, 0
# %op99 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# %op100 = load i32 *, i32 ** %op36
	ld.d $t0, $fp, -344
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1032
# %op101 = getelementptr i32 , i32 * %op100, i32  0
	ld.d $t0, $fp, -1032
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1040
# %op102 = load i32 , i32 * %op101
	ld.d $t0, $fp, -1040
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1044
# %op103 = add i32  %op99, %op102
	ld.w $t0, $fp, -1020
	ld.w $t1, $fp, -1044
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1048
# %op104 = load i32 *, i32 ** %op36
	ld.d $t0, $fp, -344
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1056
# %op105 = getelementptr i32 , i32 * %op104, i32  1
	ld.d $t0, $fp, -1056
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1064
# %op106 = load i32 , i32 * %op105
	ld.d $t0, $fp, -1064
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1068
# %op107 = add i32  %op103, %op106
	ld.w $t0, $fp, -1048
	ld.w $t1, $fp, -1068
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1072
# store i32  %op107, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1072
	st.w $t1, $t0, 0
# %op108 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1076
# %op109 = load i32 *, i32 ** %op37
	ld.d $t0, $fp, -360
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1088
# %op110 = getelementptr i32 , i32 * %op109, i32  0
	ld.d $t0, $fp, -1088
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1096
# %op111 = load i32 , i32 * %op110
	ld.d $t0, $fp, -1096
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1100
# %op112 = add i32  %op108, %op111
	ld.w $t0, $fp, -1076
	ld.w $t1, $fp, -1100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1104
# %op113 = load i32 *, i32 ** %op37
	ld.d $t0, $fp, -360
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1112
# %op114 = getelementptr i32 , i32 * %op113, i32  1
	ld.d $t0, $fp, -1112
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1120
# %op115 = load i32 , i32 * %op114
	ld.d $t0, $fp, -1120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1124
# %op116 = add i32  %op112, %op115
	ld.w $t0, $fp, -1104
	ld.w $t1, $fp, -1124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1128
# store i32  %op116, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1128
	st.w $t1, $t0, 0
# %op117 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1132
# %op118 = load i32 *, i32 ** %op38
	ld.d $t0, $fp, -376
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1144
# %op119 = getelementptr i32 , i32 * %op118, i32  0
	ld.d $t0, $fp, -1144
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1152
# %op120 = load i32 , i32 * %op119
	ld.d $t0, $fp, -1152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1156
# %op121 = add i32  %op117, %op120
	ld.w $t0, $fp, -1132
	ld.w $t1, $fp, -1156
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1160
# %op122 = load i32 *, i32 ** %op38
	ld.d $t0, $fp, -376
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1168
# %op123 = getelementptr i32 , i32 * %op122, i32  1
	ld.d $t0, $fp, -1168
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1176
# %op124 = load i32 , i32 * %op123
	ld.d $t0, $fp, -1176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1180
# %op125 = add i32  %op121, %op124
	ld.w $t0, $fp, -1160
	ld.w $t1, $fp, -1180
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1184
# store i32  %op125, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1184
	st.w $t1, $t0, 0
# %op126 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1188
# %op127 = load i32 *, i32 ** %op39
	ld.d $t0, $fp, -392
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1200
# %op128 = getelementptr i32 , i32 * %op127, i32  0
	ld.d $t0, $fp, -1200
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1208
# %op129 = load i32 , i32 * %op128
	ld.d $t0, $fp, -1208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1212
# %op130 = add i32  %op126, %op129
	ld.w $t0, $fp, -1188
	ld.w $t1, $fp, -1212
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1216
# %op131 = load i32 *, i32 ** %op39
	ld.d $t0, $fp, -392
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1224
# %op132 = getelementptr i32 , i32 * %op131, i32  1
	ld.d $t0, $fp, -1224
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1232
# %op133 = load i32 , i32 * %op132
	ld.d $t0, $fp, -1232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1236
# %op134 = add i32  %op130, %op133
	ld.w $t0, $fp, -1216
	ld.w $t1, $fp, -1236
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1240
# store i32  %op134, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1240
	st.w $t1, $t0, 0
# %op135 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1244
# %op136 = load i32 *, i32 ** %op40
	ld.d $t0, $fp, -408
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1256
# %op137 = getelementptr i32 , i32 * %op136, i32  0
	ld.d $t0, $fp, -1256
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1264
# %op138 = load i32 , i32 * %op137
	ld.d $t0, $fp, -1264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1268
# %op139 = add i32  %op135, %op138
	ld.w $t0, $fp, -1244
	ld.w $t1, $fp, -1268
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1272
# %op140 = load i32 *, i32 ** %op40
	ld.d $t0, $fp, -408
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1280
# %op141 = getelementptr i32 , i32 * %op140, i32  1
	ld.d $t0, $fp, -1280
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1288
# %op142 = load i32 , i32 * %op141
	ld.d $t0, $fp, -1288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1292
# %op143 = add i32  %op139, %op142
	ld.w $t0, $fp, -1272
	ld.w $t1, $fp, -1292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1296
# store i32  %op143, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1296
	st.w $t1, $t0, 0
# %op144 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1300
# %op145 = load i32 *, i32 ** %op41
	ld.d $t0, $fp, -424
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1312
# %op146 = getelementptr i32 , i32 * %op145, i32  0
	ld.d $t0, $fp, -1312
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1320
# %op147 = load i32 , i32 * %op146
	ld.d $t0, $fp, -1320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1324
# %op148 = add i32  %op144, %op147
	ld.w $t0, $fp, -1300
	ld.w $t1, $fp, -1324
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1328
# %op149 = load i32 *, i32 ** %op41
	ld.d $t0, $fp, -424
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1336
# %op150 = getelementptr i32 , i32 * %op149, i32  1
	ld.d $t0, $fp, -1336
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1344
# %op151 = load i32 , i32 * %op150
	ld.d $t0, $fp, -1344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1348
# %op152 = add i32  %op148, %op151
	ld.w $t0, $fp, -1328
	ld.w $t1, $fp, -1348
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1352
# store i32  %op152, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1352
	st.w $t1, $t0, 0
# %op153 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1356
# %op154 = load i32 *, i32 ** %op42
	ld.d $t0, $fp, -440
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1368
# %op155 = getelementptr i32 , i32 * %op154, i32  0
	ld.d $t0, $fp, -1368
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1376
# %op156 = load i32 , i32 * %op155
	ld.d $t0, $fp, -1376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1380
# %op157 = add i32  %op153, %op156
	ld.w $t0, $fp, -1356
	ld.w $t1, $fp, -1380
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1384
# %op158 = load i32 *, i32 ** %op42
	ld.d $t0, $fp, -440
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1392
# %op159 = getelementptr i32 , i32 * %op158, i32  1
	ld.d $t0, $fp, -1392
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1400
# %op160 = load i32 , i32 * %op159
	ld.d $t0, $fp, -1400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1404
# %op161 = add i32  %op157, %op160
	ld.w $t0, $fp, -1384
	ld.w $t1, $fp, -1404
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1408
# store i32  %op161, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1408
	st.w $t1, $t0, 0
# %op162 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1412
# %op163 = load i32 *, i32 ** %op43
	ld.d $t0, $fp, -456
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1424
# %op164 = getelementptr i32 , i32 * %op163, i32  0
	ld.d $t0, $fp, -1424
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1432
# %op165 = load i32 , i32 * %op164
	ld.d $t0, $fp, -1432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op166 = add i32  %op162, %op165
	ld.w $t0, $fp, -1412
	ld.w $t1, $fp, -1436
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1440
# %op167 = load i32 *, i32 ** %op43
	ld.d $t0, $fp, -456
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1448
# %op168 = getelementptr i32 , i32 * %op167, i32  1
	ld.d $t0, $fp, -1448
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1456
# %op169 = load i32 , i32 * %op168
	ld.d $t0, $fp, -1456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1460
# %op170 = add i32  %op166, %op169
	ld.w $t0, $fp, -1440
	ld.w $t1, $fp, -1460
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1464
# store i32  %op170, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1464
	st.w $t1, $t0, 0
# %op171 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1468
# %op172 = load i32 *, i32 ** %op44
	ld.d $t0, $fp, -472
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1480
# %op173 = getelementptr i32 , i32 * %op172, i32  0
	ld.d $t0, $fp, -1480
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1488
# %op174 = load i32 , i32 * %op173
	ld.d $t0, $fp, -1488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1492
# %op175 = add i32  %op171, %op174
	ld.w $t0, $fp, -1468
	ld.w $t1, $fp, -1492
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1496
# %op176 = load i32 *, i32 ** %op44
	ld.d $t0, $fp, -472
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1504
# %op177 = getelementptr i32 , i32 * %op176, i32  1
	ld.d $t0, $fp, -1504
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1512
# %op178 = load i32 , i32 * %op177
	ld.d $t0, $fp, -1512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1516
# %op179 = add i32  %op175, %op178
	ld.w $t0, $fp, -1496
	ld.w $t1, $fp, -1516
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1520
# store i32  %op179, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1520
	st.w $t1, $t0, 0
# %op180 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1524
# %op181 = load i32 *, i32 ** %op45
	ld.d $t0, $fp, -488
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1536
# %op182 = getelementptr i32 , i32 * %op181, i32  0
	ld.d $t0, $fp, -1536
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1544
# %op183 = load i32 , i32 * %op182
	ld.d $t0, $fp, -1544
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1548
# %op184 = add i32  %op180, %op183
	ld.w $t0, $fp, -1524
	ld.w $t1, $fp, -1548
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1552
# %op185 = load i32 *, i32 ** %op45
	ld.d $t0, $fp, -488
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1560
# %op186 = getelementptr i32 , i32 * %op185, i32  1
	ld.d $t0, $fp, -1560
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1568
# %op187 = load i32 , i32 * %op186
	ld.d $t0, $fp, -1568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1572
# %op188 = add i32  %op184, %op187
	ld.w $t0, $fp, -1552
	ld.w $t1, $fp, -1572
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1576
# store i32  %op188, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1576
	st.w $t1, $t0, 0
# %op189 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1580
# %op190 = load i32 *, i32 ** %op46
	ld.d $t0, $fp, -504
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1592
# %op191 = getelementptr i32 , i32 * %op190, i32  0
	ld.d $t0, $fp, -1592
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1600
# %op192 = load i32 , i32 * %op191
	ld.d $t0, $fp, -1600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1604
# %op193 = add i32  %op189, %op192
	ld.w $t0, $fp, -1580
	ld.w $t1, $fp, -1604
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1608
# %op194 = load i32 *, i32 ** %op46
	ld.d $t0, $fp, -504
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1616
# %op195 = getelementptr i32 , i32 * %op194, i32  1
	ld.d $t0, $fp, -1616
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1624
# %op196 = load i32 , i32 * %op195
	ld.d $t0, $fp, -1624
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1628
# %op197 = add i32  %op193, %op196
	ld.w $t0, $fp, -1608
	ld.w $t1, $fp, -1628
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1632
# store i32  %op197, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1632
	st.w $t1, $t0, 0
# %op198 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1636
# %op199 = load i32 *, i32 ** %op47
	ld.d $t0, $fp, -520
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1648
# %op200 = getelementptr i32 , i32 * %op199, i32  0
	ld.d $t0, $fp, -1648
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1656
# %op201 = load i32 , i32 * %op200
	ld.d $t0, $fp, -1656
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1660
# %op202 = add i32  %op198, %op201
	ld.w $t0, $fp, -1636
	ld.w $t1, $fp, -1660
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1664
# %op203 = load i32 *, i32 ** %op47
	ld.d $t0, $fp, -520
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1672
# %op204 = getelementptr i32 , i32 * %op203, i32  1
	ld.d $t0, $fp, -1672
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1680
# %op205 = load i32 , i32 * %op204
	ld.d $t0, $fp, -1680
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1684
# %op206 = add i32  %op202, %op205
	ld.w $t0, $fp, -1664
	ld.w $t1, $fp, -1684
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1688
# store i32  %op206, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1688
	st.w $t1, $t0, 0
# %op207 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1692
# %op208 = load i32 *, i32 ** %op48
	ld.d $t0, $fp, -536
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1704
# %op209 = getelementptr i32 , i32 * %op208, i32  0
	ld.d $t0, $fp, -1704
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1712
# %op210 = load i32 , i32 * %op209
	ld.d $t0, $fp, -1712
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1716
# %op211 = add i32  %op207, %op210
	ld.w $t0, $fp, -1692
	ld.w $t1, $fp, -1716
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1720
# %op212 = load i32 *, i32 ** %op48
	ld.d $t0, $fp, -536
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1728
# %op213 = getelementptr i32 , i32 * %op212, i32  1
	ld.d $t0, $fp, -1728
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1736
# %op214 = load i32 , i32 * %op213
	ld.d $t0, $fp, -1736
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1740
# %op215 = add i32  %op211, %op214
	ld.w $t0, $fp, -1720
	ld.w $t1, $fp, -1740
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1744
# store i32  %op215, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1744
	st.w $t1, $t0, 0
# %op216 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1748
# %op217 = load i32 *, i32 ** %op49
	ld.d $t0, $fp, -552
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1760
# %op218 = getelementptr i32 , i32 * %op217, i32  0
	ld.d $t0, $fp, -1760
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1768
# %op219 = load i32 , i32 * %op218
	ld.d $t0, $fp, -1768
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1772
# %op220 = add i32  %op216, %op219
	ld.w $t0, $fp, -1748
	ld.w $t1, $fp, -1772
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1776
# %op221 = load i32 *, i32 ** %op49
	ld.d $t0, $fp, -552
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1784
# %op222 = getelementptr i32 , i32 * %op221, i32  1
	ld.d $t0, $fp, -1784
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1792
# %op223 = load i32 , i32 * %op222
	ld.d $t0, $fp, -1792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1796
# %op224 = add i32  %op220, %op223
	ld.w $t0, $fp, -1776
	ld.w $t1, $fp, -1796
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1800
# store i32  %op224, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1800
	st.w $t1, $t0, 0
# %op225 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1804
# %op226 = load i32 *, i32 ** %op50
	ld.d $t0, $fp, -568
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1816
# %op227 = getelementptr i32 , i32 * %op226, i32  0
	ld.d $t0, $fp, -1816
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1824
# %op228 = load i32 , i32 * %op227
	ld.d $t0, $fp, -1824
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1828
# %op229 = add i32  %op225, %op228
	ld.w $t0, $fp, -1804
	ld.w $t1, $fp, -1828
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1832
# %op230 = load i32 *, i32 ** %op50
	ld.d $t0, $fp, -568
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1840
# %op231 = getelementptr i32 , i32 * %op230, i32  1
	ld.d $t0, $fp, -1840
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1848
# %op232 = load i32 , i32 * %op231
	ld.d $t0, $fp, -1848
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1852
# %op233 = add i32  %op229, %op232
	ld.w $t0, $fp, -1832
	ld.w $t1, $fp, -1852
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1856
# store i32  %op233, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1856
	st.w $t1, $t0, 0
# %op234 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1860
# %op235 = load i32 *, i32 ** %op51
	ld.d $t0, $fp, -584
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1872
# %op236 = getelementptr i32 , i32 * %op235, i32  0
	ld.d $t0, $fp, -1872
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1880
# %op237 = load i32 , i32 * %op236
	ld.d $t0, $fp, -1880
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1884
# %op238 = add i32  %op234, %op237
	ld.w $t0, $fp, -1860
	ld.w $t1, $fp, -1884
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1888
# %op239 = load i32 *, i32 ** %op51
	ld.d $t0, $fp, -584
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1896
# %op240 = getelementptr i32 , i32 * %op239, i32  1
	ld.d $t0, $fp, -1896
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1904
# %op241 = load i32 , i32 * %op240
	ld.d $t0, $fp, -1904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op242 = add i32  %op238, %op241
	ld.w $t0, $fp, -1888
	ld.w $t1, $fp, -1908
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1912
# store i32  %op242, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1912
	st.w $t1, $t0, 0
# %op243 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1916
# %op244 = load i32 *, i32 ** %op52
	ld.d $t0, $fp, -600
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1928
# %op245 = getelementptr i32 , i32 * %op244, i32  0
	ld.d $t0, $fp, -1928
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1936
# %op246 = load i32 , i32 * %op245
	ld.d $t0, $fp, -1936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1940
# %op247 = add i32  %op243, %op246
	ld.w $t0, $fp, -1916
	ld.w $t1, $fp, -1940
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1944
# %op248 = load i32 *, i32 ** %op52
	ld.d $t0, $fp, -600
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1952
# %op249 = getelementptr i32 , i32 * %op248, i32  1
	ld.d $t0, $fp, -1952
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1960
# %op250 = load i32 , i32 * %op249
	ld.d $t0, $fp, -1960
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1964
# %op251 = add i32  %op247, %op250
	ld.w $t0, $fp, -1944
	ld.w $t1, $fp, -1964
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1968
# store i32  %op251, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -1968
	st.w $t1, $t0, 0
# %op252 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1972
# %op253 = load i32 *, i32 ** %op53
	ld.d $t0, $fp, -616
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -1984
# %op254 = getelementptr i32 , i32 * %op253, i32  0
	ld.d $t0, $fp, -1984
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1992
# %op255 = load i32 , i32 * %op254
	ld.d $t0, $fp, -1992
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1996
# %op256 = add i32  %op252, %op255
	ld.w $t0, $fp, -1972
	ld.w $t1, $fp, -1996
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2000
# %op257 = load i32 *, i32 ** %op53
	ld.d $t0, $fp, -616
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -2008
# %op258 = getelementptr i32 , i32 * %op257, i32  1
	ld.d $t0, $fp, -2008
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -2016
# %op259 = load i32 , i32 * %op258
	ld.d $t0, $fp, -2016
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2020
# %op260 = add i32  %op256, %op259
	ld.w $t0, $fp, -2000
	ld.w $t1, $fp, -2020
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2024
# store i32  %op260, i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $fp, -2024
	st.w $t1, $t0, 0
# %op261 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2028
# %op262 = load i32 *, i32 ** %op54
	ld.d $t0, $fp, -632
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -2040
# %op263 = getelementptr i32 , i32 * %op262, i32  0
	ld.d $t0, $fp, -2040
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -2048
# %op264 = load i32 , i32 * %op263
	ld.d $t0, $fp, -2048
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op265 = add i32  %op261, %op264
	ld.w $t0, $fp, -2028
	lu12i.w $t1, -1
	ori $t1, $t1, 2044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op266 = load i32 *, i32 ** %op54
	ld.d $t0, $fp, -632
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op267 = getelementptr i32 , i32 * %op266, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op268 = load i32 , i32 * %op267
	lu12i.w $t0, -1
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op269 = add i32  %op265, %op268
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 2020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op269, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 2016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op270 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op271 = load i32 *, i32 ** %op55
	ld.d $t0, $fp, -648
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op272 = getelementptr i32 , i32 * %op271, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op273 = load i32 , i32 * %op272
	lu12i.w $t0, -1
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op274 = add i32  %op270, %op273
	lu12i.w $t0, -1
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op275 = load i32 *, i32 ** %op55
	ld.d $t0, $fp, -648
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op276 = getelementptr i32 , i32 * %op275, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op277 = load i32 , i32 * %op276
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op278 = add i32  %op274, %op277
	lu12i.w $t0, -1
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op278, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1960
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op279 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op280 = load i32 *, i32 ** %op56
	ld.d $t0, $fp, -664
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op281 = getelementptr i32 , i32 * %op280, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op282 = load i32 , i32 * %op281
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op283 = add i32  %op279, %op282
	lu12i.w $t0, -1
	ori $t0, $t0, 1956
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op284 = load i32 *, i32 ** %op56
	ld.d $t0, $fp, -664
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op285 = getelementptr i32 , i32 * %op284, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op286 = load i32 , i32 * %op285
	lu12i.w $t0, -1
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op287 = add i32  %op283, %op286
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op287, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op288 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op289 = load i32 *, i32 ** %op57
	ld.d $t0, $fp, -680
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op290 = getelementptr i32 , i32 * %op289, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op291 = load i32 , i32 * %op290
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op292 = add i32  %op288, %op291
	lu12i.w $t0, -1
	ori $t0, $t0, 1900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op293 = load i32 *, i32 ** %op57
	ld.d $t0, $fp, -680
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op294 = getelementptr i32 , i32 * %op293, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op295 = load i32 , i32 * %op294
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op296 = add i32  %op292, %op295
	lu12i.w $t0, -1
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op296, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op297 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op298 = load i32 *, i32 ** %op58
	ld.d $t0, $fp, -696
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op299 = getelementptr i32 , i32 * %op298, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op300 = load i32 , i32 * %op299
	lu12i.w $t0, -1
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op301 = add i32  %op297, %op300
	lu12i.w $t0, -1
	ori $t0, $t0, 1844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op302 = load i32 *, i32 ** %op58
	ld.d $t0, $fp, -696
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op303 = getelementptr i32 , i32 * %op302, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op304 = load i32 , i32 * %op303
	lu12i.w $t0, -1
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op305 = add i32  %op301, %op304
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op305, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op306 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op307 = load i32 *, i32 ** %op59
	ld.d $t0, $fp, -712
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op308 = getelementptr i32 , i32 * %op307, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op309 = load i32 , i32 * %op308
	lu12i.w $t0, -1
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op310 = add i32  %op306, %op309
	lu12i.w $t0, -1
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op311 = load i32 *, i32 ** %op59
	ld.d $t0, $fp, -712
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op312 = getelementptr i32 , i32 * %op311, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op313 = load i32 , i32 * %op312
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op314 = add i32  %op310, %op313
	lu12i.w $t0, -1
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op314, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op315 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op316 = load i32 *, i32 ** %op60
	ld.d $t0, $fp, -728
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op317 = getelementptr i32 , i32 * %op316, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op318 = load i32 , i32 * %op317
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op319 = add i32  %op315, %op318
	lu12i.w $t0, -1
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op320 = load i32 *, i32 ** %op60
	ld.d $t0, $fp, -728
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op321 = getelementptr i32 , i32 * %op320, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op322 = load i32 , i32 * %op321
	lu12i.w $t0, -1
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op323 = add i32  %op319, %op322
	lu12i.w $t0, -1
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op323, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1680
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op324 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op325 = load i32 *, i32 ** %op61
	ld.d $t0, $fp, -744
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op326 = getelementptr i32 , i32 * %op325, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op327 = load i32 , i32 * %op326
	lu12i.w $t0, -1
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op328 = add i32  %op324, %op327
	lu12i.w $t0, -1
	ori $t0, $t0, 1676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op329 = load i32 *, i32 ** %op61
	ld.d $t0, $fp, -744
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op330 = getelementptr i32 , i32 * %op329, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op331 = load i32 , i32 * %op330
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op332 = add i32  %op328, %op331
	lu12i.w $t0, -1
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op332, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op333 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op334 = load i32 *, i32 ** %op62
	ld.d $t0, $fp, -760
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op335 = getelementptr i32 , i32 * %op334, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op336 = load i32 , i32 * %op335
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op337 = add i32  %op333, %op336
	lu12i.w $t0, -1
	ori $t0, $t0, 1620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op338 = load i32 *, i32 ** %op62
	ld.d $t0, $fp, -760
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op339 = getelementptr i32 , i32 * %op338, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op340 = load i32 , i32 * %op339
	lu12i.w $t0, -1
	ori $t0, $t0, 1576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op341 = add i32  %op337, %op340
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op341, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op342 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op343 = load i32 *, i32 ** %op63
	ld.d $t0, $fp, -776
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op344 = getelementptr i32 , i32 * %op343, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op345 = load i32 , i32 * %op344
	lu12i.w $t0, -1
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op346 = add i32  %op342, %op345
	lu12i.w $t0, -1
	ori $t0, $t0, 1564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op347 = load i32 *, i32 ** %op63
	ld.d $t0, $fp, -776
	ld.d $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op348 = getelementptr i32 , i32 * %op347, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op349 = load i32 , i32 * %op348
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op350 = add i32  %op346, %op349
	lu12i.w $t0, -1
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op350, i32 * %op64
	ld.d $t0, $fp, -792
	lu12i.w $t1, -1
	ori $t1, $t1, 1512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op351 = load i32 , i32 * %op64
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# ret i32  %op351
	lu12i.w $a0, -1
	ori $a0, $a0, 1508
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b param32_arr_ret
param32_arr_ret:
	lu12i.w $t0, 0
	ori $t0, $t0, 2592
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl param16
	.type param16, @function
param16:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1056
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
.param16_label_entry:
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
# %op32 = alloca [16 x i32 ]
	addi.d $t1, $fp, -408
	st.d $t1, $fp, -344
# %op33 = load i32 , i32 * %op16
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op34 = load i32 , i32 * %op17
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op35 = load i32 , i32 * %op18
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op36 = load i32 , i32 * %op19
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op37 = load i32 , i32 * %op20
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op38 = load i32 , i32 * %op21
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op39 = load i32 , i32 * %op22
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op40 = load i32 , i32 * %op23
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op41 = load i32 , i32 * %op24
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op42 = load i32 , i32 * %op25
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op43 = load i32 , i32 * %op26
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op44 = load i32 , i32 * %op27
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op45 = load i32 , i32 * %op28
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op46 = load i32 , i32 * %op29
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -464
# %op47 = load i32 , i32 * %op30
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op48 = load i32 , i32 * %op31
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op49 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -480
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  1
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -488
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  2
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -496
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  3
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -504
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  4
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -512
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  5
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -520
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  6
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -528
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  7
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -536
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  8
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -544
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  9
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -552
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  10
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -560
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  11
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -568
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  12
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -576
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  13
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -584
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  14
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -592
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  15
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -600
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -608
# store i32  %op33, i32 * %op65
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -412
	st.w $t1, $t0, 0
# %op66 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  1
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -616
# store i32  %op34, i32 * %op66
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -416
	st.w $t1, $t0, 0
# %op67 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  2
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -624
# store i32  %op35, i32 * %op67
	ld.d $t0, $fp, -624
	ld.w $t1, $fp, -420
	st.w $t1, $t0, 0
# %op68 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  3
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -632
# store i32  %op36, i32 * %op68
	ld.d $t0, $fp, -632
	ld.w $t1, $fp, -424
	st.w $t1, $t0, 0
# %op69 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  4
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -640
# store i32  %op37, i32 * %op69
	ld.d $t0, $fp, -640
	ld.w $t1, $fp, -428
	st.w $t1, $t0, 0
# %op70 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  5
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -648
# store i32  %op38, i32 * %op70
	ld.d $t0, $fp, -648
	ld.w $t1, $fp, -432
	st.w $t1, $t0, 0
# %op71 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  6
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -656
# store i32  %op39, i32 * %op71
	ld.d $t0, $fp, -656
	ld.w $t1, $fp, -436
	st.w $t1, $t0, 0
# %op72 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  7
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -664
# store i32  %op40, i32 * %op72
	ld.d $t0, $fp, -664
	ld.w $t1, $fp, -440
	st.w $t1, $t0, 0
# %op73 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  8
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -672
# store i32  %op41, i32 * %op73
	ld.d $t0, $fp, -672
	ld.w $t1, $fp, -444
	st.w $t1, $t0, 0
# %op74 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  9
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -680
# store i32  %op42, i32 * %op74
	ld.d $t0, $fp, -680
	ld.w $t1, $fp, -448
	st.w $t1, $t0, 0
# %op75 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  10
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -688
# store i32  %op43, i32 * %op75
	ld.d $t0, $fp, -688
	ld.w $t1, $fp, -452
	st.w $t1, $t0, 0
# %op76 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  11
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -696
# store i32  %op44, i32 * %op76
	ld.d $t0, $fp, -696
	ld.w $t1, $fp, -456
	st.w $t1, $t0, 0
# %op77 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  12
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -704
# store i32  %op45, i32 * %op77
	ld.d $t0, $fp, -704
	ld.w $t1, $fp, -460
	st.w $t1, $t0, 0
# %op78 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  13
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -712
# store i32  %op46, i32 * %op78
	ld.d $t0, $fp, -712
	ld.w $t1, $fp, -464
	st.w $t1, $t0, 0
# %op79 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  14
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -720
# store i32  %op47, i32 * %op79
	ld.d $t0, $fp, -720
	ld.w $t1, $fp, -468
	st.w $t1, $t0, 0
# %op80 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  15
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -728
# store i32  %op48, i32 * %op80
	ld.d $t0, $fp, -728
	ld.w $t1, $fp, -472
	st.w $t1, $t0, 0
# %op81 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -736
# call void @sort(i32 * %op81, i32  16)
	ld.d $a0, $fp, -736
	addi.w $a1, $zero, 16
	bl sort
# %op82 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -744
# %op83 = load i32 , i32 * %op82
	ld.d $t0, $fp, -744
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op84 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  1
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -760
# %op85 = load i32 , i32 * %op84
	ld.d $t0, $fp, -760
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op86 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  2
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -776
# %op87 = load i32 , i32 * %op86
	ld.d $t0, $fp, -776
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op88 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  3
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -792
# %op89 = load i32 , i32 * %op88
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op90 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  4
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -808
# %op91 = load i32 , i32 * %op90
	ld.d $t0, $fp, -808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op92 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  5
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -824
# %op93 = load i32 , i32 * %op92
	ld.d $t0, $fp, -824
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op94 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  6
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -840
# %op95 = load i32 , i32 * %op94
	ld.d $t0, $fp, -840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op96 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  7
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -856
# %op97 = load i32 , i32 * %op96
	ld.d $t0, $fp, -856
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -860
# %op98 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  8
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -872
# %op99 = load i32 , i32 * %op98
	ld.d $t0, $fp, -872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op100 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  9
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -888
# %op101 = load i32 , i32 * %op100
	ld.d $t0, $fp, -888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op102 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  10
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -904
# %op103 = load i32 , i32 * %op102
	ld.d $t0, $fp, -904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op104 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  11
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -920
# %op105 = load i32 , i32 * %op104
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# %op106 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  12
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -936
# %op107 = load i32 , i32 * %op106
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op108 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  13
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -952
# %op109 = load i32 , i32 * %op108
	ld.d $t0, $fp, -952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op110 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  14
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -968
# %op111 = load i32 , i32 * %op110
	ld.d $t0, $fp, -968
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op112 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  15
	ld.d $t0, $fp, -344
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -984
# %op113 = load i32 , i32 * %op112
	ld.d $t0, $fp, -984
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op114 = load i32 , i32 * %op16
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -992
# %op115 = load i32 , i32 * %op17
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -996
# %op116 = load i32 , i32 * %op18
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1000
# %op117 = load i32 , i32 * %op19
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op118 = load i32 , i32 * %op20
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1008
# %op119 = load i32 , i32 * %op21
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1012
# %op120 = load i32 , i32 * %op22
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1016
# %op121 = load i32 , i32 * %op23
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# %op122 = load i32 , i32 * %op24
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1024
# %op123 = load i32 , i32 * %op25
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1028
# %op124 = load i32 , i32 * %op26
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1032
# %op125 = load i32 , i32 * %op27
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1036
# %op126 = load i32 , i32 * %op28
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1040
# %op127 = load i32 , i32 * %op29
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1044
# %op128 = load i32 , i32 * %op30
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1048
# %op129 = load i32 , i32 * %op31
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# %op130 = call i32  @param32_rec(i32  %op83, i32  %op85, i32  %op87, i32  %op89, i32  %op91, i32  %op93, i32  %op95, i32  %op97, i32  %op99, i32  %op101, i32  %op103, i32  %op105, i32  %op107, i32  %op109, i32  %op111, i32  %op113, i32  %op114, i32  %op115, i32  %op116, i32  %op117, i32  %op118, i32  %op119, i32  %op120, i32  %op121, i32  %op122, i32  %op123, i32  %op124, i32  %op125, i32  %op126, i32  %op127, i32  %op128, i32  %op129)
	addi.d $sp, $sp, -192
	ld.w $t0, $fp, -1052
	st.d $t0, $sp, 184
	ld.w $t0, $fp, -1048
	st.d $t0, $sp, 176
	ld.w $t0, $fp, -1044
	st.d $t0, $sp, 168
	ld.w $t0, $fp, -1040
	st.d $t0, $sp, 160
	ld.w $t0, $fp, -1036
	st.d $t0, $sp, 152
	ld.w $t0, $fp, -1032
	st.d $t0, $sp, 144
	ld.w $t0, $fp, -1028
	st.d $t0, $sp, 136
	ld.w $t0, $fp, -1024
	st.d $t0, $sp, 128
	ld.w $t0, $fp, -1020
	st.d $t0, $sp, 120
	ld.w $t0, $fp, -1016
	st.d $t0, $sp, 112
	ld.w $t0, $fp, -1012
	st.d $t0, $sp, 104
	ld.w $t0, $fp, -1008
	st.d $t0, $sp, 96
	ld.w $t0, $fp, -1004
	st.d $t0, $sp, 88
	ld.w $t0, $fp, -1000
	st.d $t0, $sp, 80
	ld.w $t0, $fp, -996
	st.d $t0, $sp, 72
	ld.w $t0, $fp, -992
	st.d $t0, $sp, 64
	ld.w $t0, $fp, -988
	st.d $t0, $sp, 56
	ld.w $t0, $fp, -972
	st.d $t0, $sp, 48
	ld.w $t0, $fp, -956
	st.d $t0, $sp, 40
	ld.w $t0, $fp, -940
	st.d $t0, $sp, 32
	ld.w $t0, $fp, -924
	st.d $t0, $sp, 24
	ld.w $t0, $fp, -908
	st.d $t0, $sp, 16
	ld.w $t0, $fp, -892
	st.d $t0, $sp, 8
	ld.w $t0, $fp, -876
	st.d $t0, $sp, 0
	ld.w $a7, $fp, -860
	ld.w $a6, $fp, -844
	ld.w $a5, $fp, -828
	ld.w $a4, $fp, -812
	ld.w $a3, $fp, -796
	ld.w $a2, $fp, -780
	ld.w $a1, $fp, -764
	ld.w $a0, $fp, -748
	bl param32_rec
	st.w $a0, $fp, -1056
	addi.d $sp, $sp, 192
# ret i32  %op130
	ld.w $a0, $fp, -1056
	b param16_ret
param16_ret:
	addi.d $sp, $sp, 1056
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1552
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1 = alloca [32 x [2 x i32 ]]
	addi.d $t1, $fp, -296
	st.d $t1, $fp, -40
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -300
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -304
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -308
# %op5 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -312
# %op6 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -316
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -320
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -324
# %op9 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -328
# %op10 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -332
# %op11 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -336
# %op12 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -340
# %op13 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -344
# %op14 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -348
# %op15 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -352
# %op16 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -356
# %op17 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -360
# %op18 = call i32  @param16(i32  %op2, i32  %op3, i32  %op4, i32  %op5, i32  %op6, i32  %op7, i32  %op8, i32  %op9, i32  %op10, i32  %op11, i32  %op12, i32  %op13, i32  %op14, i32  %op15, i32  %op16, i32  %op17)
	addi.d $sp, $sp, -64
	ld.w $t0, $fp, -360
	st.d $t0, $sp, 56
	ld.w $t0, $fp, -356
	st.d $t0, $sp, 48
	ld.w $t0, $fp, -352
	st.d $t0, $sp, 40
	ld.w $t0, $fp, -348
	st.d $t0, $sp, 32
	ld.w $t0, $fp, -344
	st.d $t0, $sp, 24
	ld.w $t0, $fp, -340
	st.d $t0, $sp, 16
	ld.w $t0, $fp, -336
	st.d $t0, $sp, 8
	ld.w $t0, $fp, -332
	st.d $t0, $sp, 0
	ld.w $a7, $fp, -328
	ld.w $a6, $fp, -324
	ld.w $a5, $fp, -320
	ld.w $a4, $fp, -316
	ld.w $a3, $fp, -312
	ld.w $a2, $fp, -308
	ld.w $a1, $fp, -304
	ld.w $a0, $fp, -300
	bl param16
	st.w $a0, $fp, -364
	addi.d $sp, $sp, 64
# %op19 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -376
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -384
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -392
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -400
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -408
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -416
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -424
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -432
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  4, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -440
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  4, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -448
# store i32  0, i32 * %op28
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op29 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  5, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -456
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  5, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -464
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  6, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -472
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  6, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -480
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  7, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -488
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op34 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  7, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -496
# store i32  0, i32 * %op34
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op35 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  8, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -504
# store i32  0, i32 * %op35
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op36 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  8, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -512
# store i32  0, i32 * %op36
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op37 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  9, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -520
# store i32  0, i32 * %op37
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op38 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  9, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -528
# store i32  0, i32 * %op38
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op39 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  10, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -536
# store i32  0, i32 * %op39
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op40 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  10, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -544
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  11, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -552
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op42 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  11, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -560
# store i32  0, i32 * %op42
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op43 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  12, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -568
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  12, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -576
# store i32  0, i32 * %op44
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op45 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  13, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -584
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  13, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -592
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  14, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -600
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  14, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -608
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  15, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -616
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  15, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -624
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  16, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -632
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  16, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -640
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  17, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -648
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  17, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 140
	st.d $t2, $fp, -656
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  18, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -664
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  18, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 148
	st.d $t2, $fp, -672
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  19, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -680
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  19, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 156
	st.d $t2, $fp, -688
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -688
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  20, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 160
	st.d $t2, $fp, -696
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -696
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  20, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 164
	st.d $t2, $fp, -704
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -704
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  21, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 168
	st.d $t2, $fp, -712
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -712
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  21, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 172
	st.d $t2, $fp, -720
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  22, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 176
	st.d $t2, $fp, -728
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  22, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 180
	st.d $t2, $fp, -736
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  23, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 184
	st.d $t2, $fp, -744
# store i32  0, i32 * %op65
	ld.d $t0, $fp, -744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op66 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  23, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 188
	st.d $t2, $fp, -752
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -752
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  24, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 192
	st.d $t2, $fp, -760
# store i32  0, i32 * %op67
	ld.d $t0, $fp, -760
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  24, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 196
	st.d $t2, $fp, -768
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -768
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  25, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 200
	st.d $t2, $fp, -776
# store i32  0, i32 * %op69
	ld.d $t0, $fp, -776
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  25, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 204
	st.d $t2, $fp, -784
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -784
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  26, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 208
	st.d $t2, $fp, -792
# store i32  0, i32 * %op71
	ld.d $t0, $fp, -792
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op72 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  26, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 212
	st.d $t2, $fp, -800
# store i32  0, i32 * %op72
	ld.d $t0, $fp, -800
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op73 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  27, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 216
	st.d $t2, $fp, -808
# store i32  0, i32 * %op73
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op74 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  27, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 220
	st.d $t2, $fp, -816
# store i32  0, i32 * %op74
	ld.d $t0, $fp, -816
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op75 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  28, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 224
	st.d $t2, $fp, -824
# store i32  0, i32 * %op75
	ld.d $t0, $fp, -824
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op76 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  28, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 228
	st.d $t2, $fp, -832
# store i32  0, i32 * %op76
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op77 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  29, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 232
	st.d $t2, $fp, -840
# store i32  0, i32 * %op77
	ld.d $t0, $fp, -840
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op78 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  29, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 236
	st.d $t2, $fp, -848
# store i32  0, i32 * %op78
	ld.d $t0, $fp, -848
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op79 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  30, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 240
	st.d $t2, $fp, -856
# store i32  0, i32 * %op79
	ld.d $t0, $fp, -856
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op80 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  30, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 244
	st.d $t2, $fp, -864
# store i32  0, i32 * %op80
	ld.d $t0, $fp, -864
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op81 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  31, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 248
	st.d $t2, $fp, -872
# store i32  0, i32 * %op81
	ld.d $t0, $fp, -872
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op82 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  31, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 252
	st.d $t2, $fp, -880
# store i32  0, i32 * %op82
	ld.d $t0, $fp, -880
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op83 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -888
# store i32  %op18, i32 * %op83
	ld.d $t0, $fp, -888
	ld.w $t1, $fp, -364
	st.w $t1, $t0, 0
# %op84 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -896
# store i32  8848, i32 * %op84
	ld.d $t0, $fp, -896
	lu12i.w $t1, 2
	ori $t1, $t1, 656
	st.w $t1, $t0, 0
# br label %label85
	b .main_label85
.main_label85:
# %op86 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# %op87 = icmp slt i32  %op86, 32
	ld.w $t0, $fp, -900
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -901
# %op88 = zext i1  %op87 to i32 
	ld.b $t0, $fp, -901
	st.w $t0, $fp, -908
# %op89 = icmp ne i32  %op88, 0
	ld.w $t0, $fp, -908
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -909
# br i1  %op89, label %label90, label %label111
	ld.b $t0, $fp, -909
	bnez $t0, .main_label90
	b .main_label111
.main_label90:
# %op91 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -916
# %op92 = sub i32  %op91, 1
	ld.w $t0, $fp, -916
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -920
# %op93 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op92
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -920
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -928
# %op94 = getelementptr [2 x i32 ], [2 x i32 ]* %op93, i32  0, i32  1
	ld.d $t0, $fp, -928
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -936
# %op95 = load i32 , i32 * %op94
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op96 = sub i32  %op95, 1
	ld.w $t0, $fp, -940
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -944
# %op97 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -948
# %op98 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op97
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -948
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -960
# %op99 = getelementptr [2 x i32 ], [2 x i32 ]* %op98, i32  0, i32  0
	ld.d $t0, $fp, -960
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -968
# store i32  %op96, i32 * %op99
	ld.d $t0, $fp, -968
	ld.w $t1, $fp, -944
	st.w $t1, $t0, 0
# %op100 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op101 = sub i32  %op100, 1
	ld.w $t0, $fp, -972
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -976
# %op102 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op101
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -976
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -984
# %op103 = getelementptr [2 x i32 ], [2 x i32 ]* %op102, i32  0, i32  0
	ld.d $t0, $fp, -984
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -992
# %op104 = load i32 , i32 * %op103
	ld.d $t0, $fp, -992
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -996
# %op105 = sub i32  %op104, 2
	ld.w $t0, $fp, -996
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1000
# %op106 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op107 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op106
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1004
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1016
# %op108 = getelementptr [2 x i32 ], [2 x i32 ]* %op107, i32  0, i32  1
	ld.d $t0, $fp, -1016
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1024
# store i32  %op105, i32 * %op108
	ld.d $t0, $fp, -1024
	ld.w $t1, $fp, -1000
	st.w $t1, $t0, 0
# %op109 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1028
# %op110 = add i32  %op109, 1
	ld.w $t0, $fp, -1028
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1032
# store i32  %op110, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -1032
	st.w $t1, $t0, 0
# br label %label85
	b .main_label85
.main_label111:
# %op112 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1040
# %op113 = getelementptr [2 x i32 ], [2 x i32 ]* %op112, i32  0, i32  0
	ld.d $t0, $fp, -1040
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1048
# %op114 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  1
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -1056
# %op115 = getelementptr [2 x i32 ], [2 x i32 ]* %op114, i32  0, i32  0
	ld.d $t0, $fp, -1056
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1064
# %op116 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  2
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -1072
# %op117 = getelementptr [2 x i32 ], [2 x i32 ]* %op116, i32  0, i32  0
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1080
# %op118 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  3
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -1088
# %op119 = getelementptr [2 x i32 ], [2 x i32 ]* %op118, i32  0, i32  0
	ld.d $t0, $fp, -1088
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1096
# %op120 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  4
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -1104
# %op121 = getelementptr [2 x i32 ], [2 x i32 ]* %op120, i32  0, i32  0
	ld.d $t0, $fp, -1104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1112
# %op122 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  5
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -1120
# %op123 = getelementptr [2 x i32 ], [2 x i32 ]* %op122, i32  0, i32  0
	ld.d $t0, $fp, -1120
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1128
# %op124 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  6
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -1136
# %op125 = getelementptr [2 x i32 ], [2 x i32 ]* %op124, i32  0, i32  0
	ld.d $t0, $fp, -1136
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1144
# %op126 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  7
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -1152
# %op127 = getelementptr [2 x i32 ], [2 x i32 ]* %op126, i32  0, i32  0
	ld.d $t0, $fp, -1152
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1160
# %op128 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  8
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -1168
# %op129 = getelementptr [2 x i32 ], [2 x i32 ]* %op128, i32  0, i32  0
	ld.d $t0, $fp, -1168
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1176
# %op130 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  9
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -1184
# %op131 = getelementptr [2 x i32 ], [2 x i32 ]* %op130, i32  0, i32  0
	ld.d $t0, $fp, -1184
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1192
# %op132 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  10
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -1200
# %op133 = getelementptr [2 x i32 ], [2 x i32 ]* %op132, i32  0, i32  0
	ld.d $t0, $fp, -1200
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1208
# %op134 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  11
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -1216
# %op135 = getelementptr [2 x i32 ], [2 x i32 ]* %op134, i32  0, i32  0
	ld.d $t0, $fp, -1216
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1224
# %op136 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  12
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -1232
# %op137 = getelementptr [2 x i32 ], [2 x i32 ]* %op136, i32  0, i32  0
	ld.d $t0, $fp, -1232
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1240
# %op138 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  13
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -1248
# %op139 = getelementptr [2 x i32 ], [2 x i32 ]* %op138, i32  0, i32  0
	ld.d $t0, $fp, -1248
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1256
# %op140 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  14
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -1264
# %op141 = getelementptr [2 x i32 ], [2 x i32 ]* %op140, i32  0, i32  0
	ld.d $t0, $fp, -1264
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1272
# %op142 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  15
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -1280
# %op143 = getelementptr [2 x i32 ], [2 x i32 ]* %op142, i32  0, i32  0
	ld.d $t0, $fp, -1280
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1288
# %op144 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  16
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -1296
# %op145 = getelementptr [2 x i32 ], [2 x i32 ]* %op144, i32  0, i32  0
	ld.d $t0, $fp, -1296
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1304
# %op146 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  17
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -1312
# %op147 = getelementptr [2 x i32 ], [2 x i32 ]* %op146, i32  0, i32  0
	ld.d $t0, $fp, -1312
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1320
# %op148 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  18
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -1328
# %op149 = getelementptr [2 x i32 ], [2 x i32 ]* %op148, i32  0, i32  0
	ld.d $t0, $fp, -1328
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1336
# %op150 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  19
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -1344
# %op151 = getelementptr [2 x i32 ], [2 x i32 ]* %op150, i32  0, i32  0
	ld.d $t0, $fp, -1344
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1352
# %op152 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  20
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 160
	st.d $t2, $fp, -1360
# %op153 = getelementptr [2 x i32 ], [2 x i32 ]* %op152, i32  0, i32  0
	ld.d $t0, $fp, -1360
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1368
# %op154 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  21
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 168
	st.d $t2, $fp, -1376
# %op155 = getelementptr [2 x i32 ], [2 x i32 ]* %op154, i32  0, i32  0
	ld.d $t0, $fp, -1376
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1384
# %op156 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  22
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 176
	st.d $t2, $fp, -1392
# %op157 = getelementptr [2 x i32 ], [2 x i32 ]* %op156, i32  0, i32  0
	ld.d $t0, $fp, -1392
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1400
# %op158 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  23
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 184
	st.d $t2, $fp, -1408
# %op159 = getelementptr [2 x i32 ], [2 x i32 ]* %op158, i32  0, i32  0
	ld.d $t0, $fp, -1408
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1416
# %op160 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  24
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 192
	st.d $t2, $fp, -1424
# %op161 = getelementptr [2 x i32 ], [2 x i32 ]* %op160, i32  0, i32  0
	ld.d $t0, $fp, -1424
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1432
# %op162 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  25
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 200
	st.d $t2, $fp, -1440
# %op163 = getelementptr [2 x i32 ], [2 x i32 ]* %op162, i32  0, i32  0
	ld.d $t0, $fp, -1440
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1448
# %op164 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  26
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 208
	st.d $t2, $fp, -1456
# %op165 = getelementptr [2 x i32 ], [2 x i32 ]* %op164, i32  0, i32  0
	ld.d $t0, $fp, -1456
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1464
# %op166 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  27
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 216
	st.d $t2, $fp, -1472
# %op167 = getelementptr [2 x i32 ], [2 x i32 ]* %op166, i32  0, i32  0
	ld.d $t0, $fp, -1472
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1480
# %op168 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  28
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 224
	st.d $t2, $fp, -1488
# %op169 = getelementptr [2 x i32 ], [2 x i32 ]* %op168, i32  0, i32  0
	ld.d $t0, $fp, -1488
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1496
# %op170 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  29
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 232
	st.d $t2, $fp, -1504
# %op171 = getelementptr [2 x i32 ], [2 x i32 ]* %op170, i32  0, i32  0
	ld.d $t0, $fp, -1504
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1512
# %op172 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  30
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 240
	st.d $t2, $fp, -1520
# %op173 = getelementptr [2 x i32 ], [2 x i32 ]* %op172, i32  0, i32  0
	ld.d $t0, $fp, -1520
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1528
# %op174 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  31
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 248
	st.d $t2, $fp, -1536
# %op175 = getelementptr [2 x i32 ], [2 x i32 ]* %op174, i32  0, i32  0
	ld.d $t0, $fp, -1536
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1544
# %op176 = call i32  @param32_arr(i32 * %op113, i32 * %op115, i32 * %op117, i32 * %op119, i32 * %op121, i32 * %op123, i32 * %op125, i32 * %op127, i32 * %op129, i32 * %op131, i32 * %op133, i32 * %op135, i32 * %op137, i32 * %op139, i32 * %op141, i32 * %op143, i32 * %op145, i32 * %op147, i32 * %op149, i32 * %op151, i32 * %op153, i32 * %op155, i32 * %op157, i32 * %op159, i32 * %op161, i32 * %op163, i32 * %op165, i32 * %op167, i32 * %op169, i32 * %op171, i32 * %op173, i32 * %op175)
	addi.d $sp, $sp, -192
	ld.d $t0, $fp, -1544
	st.d $t0, $sp, 184
	ld.d $t0, $fp, -1528
	st.d $t0, $sp, 176
	ld.d $t0, $fp, -1512
	st.d $t0, $sp, 168
	ld.d $t0, $fp, -1496
	st.d $t0, $sp, 160
	ld.d $t0, $fp, -1480
	st.d $t0, $sp, 152
	ld.d $t0, $fp, -1464
	st.d $t0, $sp, 144
	ld.d $t0, $fp, -1448
	st.d $t0, $sp, 136
	ld.d $t0, $fp, -1432
	st.d $t0, $sp, 128
	ld.d $t0, $fp, -1416
	st.d $t0, $sp, 120
	ld.d $t0, $fp, -1400
	st.d $t0, $sp, 112
	ld.d $t0, $fp, -1384
	st.d $t0, $sp, 104
	ld.d $t0, $fp, -1368
	st.d $t0, $sp, 96
	ld.d $t0, $fp, -1352
	st.d $t0, $sp, 88
	ld.d $t0, $fp, -1336
	st.d $t0, $sp, 80
	ld.d $t0, $fp, -1320
	st.d $t0, $sp, 72
	ld.d $t0, $fp, -1304
	st.d $t0, $sp, 64
	ld.d $t0, $fp, -1288
	st.d $t0, $sp, 56
	ld.d $t0, $fp, -1272
	st.d $t0, $sp, 48
	ld.d $t0, $fp, -1256
	st.d $t0, $sp, 40
	ld.d $t0, $fp, -1240
	st.d $t0, $sp, 32
	ld.d $t0, $fp, -1224
	st.d $t0, $sp, 24
	ld.d $t0, $fp, -1208
	st.d $t0, $sp, 16
	ld.d $t0, $fp, -1192
	st.d $t0, $sp, 8
	ld.d $t0, $fp, -1176
	st.d $t0, $sp, 0
	ld.d $a7, $fp, -1160
	ld.d $a6, $fp, -1144
	ld.d $a5, $fp, -1128
	ld.d $a4, $fp, -1112
	ld.d $a3, $fp, -1096
	ld.d $a2, $fp, -1080
	ld.d $a1, $fp, -1064
	ld.d $a0, $fp, -1048
	bl param32_arr
	st.w $a0, $fp, -1548
	addi.d $sp, $sp, 192
# call void @putint(i32  %op176)
	ld.w $a0, $fp, -1548
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 1552
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
