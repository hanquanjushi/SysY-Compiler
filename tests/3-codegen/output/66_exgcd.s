	.text
	.globl exgcd
	.type exgcd, @function
exgcd:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -368
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.d $a2, $fp, -32
	st.d $a3, $fp, -40
.exgcd_label_entry:
# %op4 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg0, i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  %arg1, i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op6 = alloca i32 *
	addi.d $t1, $fp, -88
	st.d $t1, $fp, -80
# store i32 * %arg2, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op7 = alloca i32 *
	addi.d $t1, $fp, -104
	st.d $t1, $fp, -96
# store i32 * %arg3, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $fp, -40
	st.d $t1, $t0, 0
# %op8 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op9 = icmp eq i32  %op8, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -109
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -117
# br i1  %op11, label %label12, label %label18
	ld.b $t0, $fp, -117
	bnez $t0, .exgcd_label12
	b .exgcd_label18
.exgcd_label12:
# %op13 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -128
# %op14 = getelementptr i32 , i32 * %op13, i32  0
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# store i32  1, i32 * %op14
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op15 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -144
# %op16 = getelementptr i32 , i32 * %op15, i32  0
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -152
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# ret i32  %op17
	ld.w $a0, $fp, -156
	b exgcd_ret
.exgcd_label18:
# %op19 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# %op20 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op21 = load i32 , i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op22 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op23 = srem i32  %op21, %op22
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -184
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op24 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op25 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -208
# %op26 = call i32  @exgcd(i32  %op20, i32  %op23, i32 * %op24, i32 * %op25)
	ld.w $a0, $fp, -176
	ld.w $a1, $fp, -188
	ld.d $a2, $fp, -200
	ld.d $a3, $fp, -208
	bl exgcd
	st.w $a0, $fp, -212
# store i32  %op26, i32 * %op19
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -212
	st.w $t1, $t0, 0
# %op27 = alloca i32 
	addi.d $t1, $fp, -228
	st.d $t1, $fp, -224
# %op28 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -240
# %op29 = getelementptr i32 , i32 * %op28, i32  0
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -248
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# store i32  %op30, i32 * %op27
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -252
	st.w $t1, $t0, 0
# %op31 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -264
# %op32 = getelementptr i32 , i32 * %op31, i32  0
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -272
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op34 = load i32 *, i32 ** %op6
	ld.d $t0, $fp, -80
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -288
# %op35 = getelementptr i32 , i32 * %op34, i32  0
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# store i32  %op33, i32 * %op35
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -276
	st.w $t1, $t0, 0
# %op36 = load i32 , i32 * %op27
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op37 = load i32 , i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op38 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op39 = sdiv i32  %op37, %op38
	ld.w $t0, $fp, -304
	ld.w $t1, $fp, -308
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# %op40 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -320
# %op41 = getelementptr i32 , i32 * %op40, i32  0
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# %op42 = load i32 , i32 * %op41
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op43 = mul i32  %op39, %op42
	ld.w $t0, $fp, -312
	ld.w $t1, $fp, -332
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op44 = sub i32  %op36, %op43
	ld.w $t0, $fp, -300
	ld.w $t1, $fp, -336
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -340
# %op45 = load i32 *, i32 ** %op7
	ld.d $t0, $fp, -96
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -352
# %op46 = getelementptr i32 , i32 * %op45, i32  0
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 0
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# store i32  %op44, i32 * %op46
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -340
	st.w $t1, $t0, 0
# %op47 = load i32 , i32 * %op19
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# ret i32  %op47
	ld.w $a0, $fp, -364
	b exgcd_ret
exgcd_ret:
	addi.d $sp, $sp, 368
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -208
.main_label_entry:
# %op0 = alloca [1 x i32 ]
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = getelementptr [1 x i32 ], [1 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -40
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = getelementptr [1 x i32 ], [1 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -48
# store i32  1, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op3 = alloca [1 x i32 ]
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# %op4 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -72
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -80
# store i32  1, i32 * %op5
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  15, i32 * %op6
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 15
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  7, i32 * %op7
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op8 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op9 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op10 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -128
# %op11 = getelementptr [1 x i32 ], [1 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -136
# %op12 = call i32  @exgcd(i32  %op8, i32  %op9, i32 * %op10, i32 * %op11)
	ld.w $a0, $fp, -112
	ld.w $a1, $fp, -116
	ld.d $a2, $fp, -128
	ld.d $a3, $fp, -136
	bl exgcd
	st.w $a0, $fp, -140
# %op13 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -152
# %op14 = load i32 , i32 * %op13
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op15 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op16 = srem i32  %op14, %op15
	ld.w $t0, $fp, -156
	ld.w $t1, $fp, -160
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op17 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op18 = add i32  %op16, %op17
	ld.w $t0, $fp, -164
	ld.w $t1, $fp, -168
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# %op19 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op20 = srem i32  %op18, %op19
	ld.w $t0, $fp, -172
	ld.w $t1, $fp, -176
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# %op21 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -192
# store i32  %op20, i32 * %op21
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -180
	st.w $t1, $t0, 0
# %op22 = getelementptr [1 x i32 ], [1 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -200
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# call void @putint(i32  %op23)
	ld.w $a0, $fp, -204
	bl putint
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 208
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
