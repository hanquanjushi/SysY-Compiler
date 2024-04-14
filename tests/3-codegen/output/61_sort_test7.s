# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl buf
	.type buf, @object
	.size buf, 800
buf:
	.space 800
	.text
	.globl merge_sort
	.type merge_sort, @function
merge_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -720
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.merge_sort_label_entry:
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
# %op5 = add i32  %op4, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op7 = icmp sge i32  %op5, %op6
	ld.w $t0, $fp, -60
	ld.w $t1, $fp, -64
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -65
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -73
# br i1  %op9, label %label10, label %label11
	ld.b $t0, $fp, -73
	bnez $t0, .merge_sort_label10
	b .merge_sort_label11
.merge_sort_label10:
# ret void
	addi.d $a0, $zero, 0
	b merge_sort_ret
.merge_sort_label11:
# %op12 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op13 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op15 = add i32  %op13, %op14
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# %op16 = sdiv i32  %op15, 2
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# store i32  %op16, i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op18 = load i32 , i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# call void @merge_sort(i32  %op17, i32  %op18)
	ld.w $a0, $fp, -112
	ld.w $a1, $fp, -116
	bl merge_sort
# %op19 = load i32 , i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op20 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# call void @merge_sort(i32  %op19, i32  %op20)
	ld.w $a0, $fp, -120
	ld.w $a1, $fp, -124
	bl merge_sort
# %op21 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# %op22 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# store i32  %op22, i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# %op23 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# %op24 = load i32 , i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# store i32  %op24, i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# %op25 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# %op26 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# store i32  %op26, i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -176
	st.w $t1, $t0, 0
# br label %label27
	b .merge_sort_label27
.merge_sort_label27:
# %op28 = load i32 , i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op29 = load i32 , i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op30 = icmp slt i32  %op28, %op29
	ld.w $t0, $fp, -180
	ld.w $t1, $fp, -184
	slt $t2, $t0, $t1
	st.b $t2, $fp, -185
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -193
# br i1  %op32, label %label46, label %label45
	ld.b $t0, $fp, -193
	bnez $t0, .merge_sort_label46
	b .merge_sort_label45
.merge_sort_label33:
# %op34 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -208
# %op35 = load i32 , i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op36 = getelementptr [100 x i32 ], [100 x i32 ]* %op34, i32  0, i32  %op35
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -212
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op37 = load i32 , i32 * %op36
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op38 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -240
# %op39 = load i32 , i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op40 = getelementptr [100 x i32 ], [100 x i32 ]* %op38, i32  0, i32  %op39
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -244
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# %op41 = load i32 , i32 * %op40
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op42 = icmp slt i32  %op37, %op41
	ld.w $t0, $fp, -228
	ld.w $t1, $fp, -260
	slt $t2, $t0, $t1
	st.b $t2, $fp, -261
# %op43 = zext i1  %op42 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op44 = icmp ne i32  %op43, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -269
# br i1  %op44, label %label52, label %label62
	ld.b $t0, $fp, -269
	bnez $t0, .merge_sort_label52
	b .merge_sort_label62
.merge_sort_label45:
# br label %label75
	b .merge_sort_label75
.merge_sort_label46:
# %op47 = load i32 , i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op48 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op49 = icmp slt i32  %op47, %op48
	ld.w $t0, $fp, -276
	ld.w $t1, $fp, -280
	slt $t2, $t0, $t1
	st.b $t2, $fp, -281
# %op50 = zext i1  %op49 to i32 
	ld.b $t0, $fp, -281
	st.w $t0, $fp, -288
# %op51 = icmp ne i32  %op50, 0
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -289
# br i1  %op51, label %label33, label %label45
	ld.b $t0, $fp, -289
	bnez $t0, .merge_sort_label33
	b .merge_sort_label45
.merge_sort_label52:
# %op53 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -304
# %op54 = load i32 , i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op55 = getelementptr [100 x i32 ], [100 x i32 ]* %op53, i32  0, i32  %op54
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -308
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# %op56 = load i32 , i32 * %op55
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op57 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -336
# %op58 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op59 = getelementptr [100 x i32 ], [100 x i32 ]* %op57, i32  0, i32  %op58
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -340
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# store i32  %op56, i32 * %op59
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -324
	st.w $t1, $t0, 0
# %op60 = load i32 , i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op61 = add i32  %op60, 1
	ld.w $t0, $fp, -356
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -360
# store i32  %op61, i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -360
	st.w $t1, $t0, 0
# br label %label72
	b .merge_sort_label72
.merge_sort_label62:
# %op63 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -368
# %op64 = load i32 , i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op65 = getelementptr [100 x i32 ], [100 x i32 ]* %op63, i32  0, i32  %op64
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op66 = load i32 , i32 * %op65
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op67 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -400
# %op68 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op69 = getelementptr [100 x i32 ], [100 x i32 ]* %op67, i32  0, i32  %op68
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -404
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# store i32  %op66, i32 * %op69
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -388
	st.w $t1, $t0, 0
# %op70 = load i32 , i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op71 = add i32  %op70, 1
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -424
# store i32  %op71, i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -424
	st.w $t1, $t0, 0
# br label %label72
	b .merge_sort_label72
.merge_sort_label72:
# %op73 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op74 = add i32  %op73, 1
	ld.w $t0, $fp, -428
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# store i32  %op74, i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -432
	st.w $t1, $t0, 0
# br label %label27
	b .merge_sort_label27
.merge_sort_label75:
# %op76 = load i32 , i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op77 = load i32 , i32 * %op12
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op78 = icmp slt i32  %op76, %op77
	ld.w $t0, $fp, -436
	ld.w $t1, $fp, -440
	slt $t2, $t0, $t1
	st.b $t2, $fp, -441
# %op79 = zext i1  %op78 to i32 
	ld.b $t0, $fp, -441
	st.w $t0, $fp, -448
# %op80 = icmp ne i32  %op79, 0
	ld.w $t0, $fp, -448
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -449
# br i1  %op80, label %label81, label %label93
	ld.b $t0, $fp, -449
	bnez $t0, .merge_sort_label81
	b .merge_sort_label93
.merge_sort_label81:
# %op82 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -464
# %op83 = load i32 , i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op84 = getelementptr [100 x i32 ], [100 x i32 ]* %op82, i32  0, i32  %op83
	ld.d $t0, $fp, -464
	ld.w $t1, $fp, -468
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# %op85 = load i32 , i32 * %op84
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op86 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -496
# %op87 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -500
# %op88 = getelementptr [100 x i32 ], [100 x i32 ]* %op86, i32  0, i32  %op87
	ld.d $t0, $fp, -496
	ld.w $t1, $fp, -500
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -512
# store i32  %op85, i32 * %op88
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -484
	st.w $t1, $t0, 0
# %op89 = load i32 , i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op90 = add i32  %op89, 1
	ld.w $t0, $fp, -516
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -520
# store i32  %op90, i32 * %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -520
	st.w $t1, $t0, 0
# %op91 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op92 = add i32  %op91, 1
	ld.w $t0, $fp, -524
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -528
# store i32  %op92, i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -528
	st.w $t1, $t0, 0
# br label %label75
	b .merge_sort_label75
.merge_sort_label93:
# br label %label94
	b .merge_sort_label94
.merge_sort_label94:
# %op95 = load i32 , i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op96 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op97 = icmp slt i32  %op95, %op96
	ld.w $t0, $fp, -532
	ld.w $t1, $fp, -536
	slt $t2, $t0, $t1
	st.b $t2, $fp, -537
# %op98 = zext i1  %op97 to i32 
	ld.b $t0, $fp, -537
	st.w $t0, $fp, -544
# %op99 = icmp ne i32  %op98, 0
	ld.w $t0, $fp, -544
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -545
# br i1  %op99, label %label100, label %label112
	ld.b $t0, $fp, -545
	bnez $t0, .merge_sort_label100
	b .merge_sort_label112
.merge_sort_label100:
# %op101 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -560
# %op102 = load i32 , i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op103 = getelementptr [100 x i32 ], [100 x i32 ]* %op101, i32  0, i32  %op102
	ld.d $t0, $fp, -560
	ld.w $t1, $fp, -564
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -576
# %op104 = load i32 , i32 * %op103
	ld.d $t0, $fp, -576
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op105 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -592
# %op106 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op107 = getelementptr [100 x i32 ], [100 x i32 ]* %op105, i32  0, i32  %op106
	ld.d $t0, $fp, -592
	ld.w $t1, $fp, -596
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -608
# store i32  %op104, i32 * %op107
	ld.d $t0, $fp, -608
	ld.w $t1, $fp, -580
	st.w $t1, $t0, 0
# %op108 = load i32 , i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op109 = add i32  %op108, 1
	ld.w $t0, $fp, -612
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -616
# store i32  %op109, i32 * %op23
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -616
	st.w $t1, $t0, 0
# %op110 = load i32 , i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op111 = add i32  %op110, 1
	ld.w $t0, $fp, -620
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# store i32  %op111, i32 * %op21
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -624
	st.w $t1, $t0, 0
# br label %label94
	b .merge_sort_label94
.merge_sort_label112:
# br label %label113
	b .merge_sort_label113
.merge_sort_label113:
# %op114 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op115 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op116 = icmp slt i32  %op114, %op115
	ld.w $t0, $fp, -628
	ld.w $t1, $fp, -632
	slt $t2, $t0, $t1
	st.b $t2, $fp, -633
# %op117 = zext i1  %op116 to i32 
	ld.b $t0, $fp, -633
	st.w $t0, $fp, -640
# %op118 = icmp ne i32  %op117, 0
	ld.w $t0, $fp, -640
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -641
# br i1  %op118, label %label119, label %label129
	ld.b $t0, $fp, -641
	bnez $t0, .merge_sort_label119
	b .merge_sort_label129
.merge_sort_label119:
# %op120 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -656
# %op121 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -660
# %op122 = getelementptr [100 x i32 ], [100 x i32 ]* %op120, i32  0, i32  %op121
	ld.d $t0, $fp, -656
	ld.w $t1, $fp, -660
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -672
# %op123 = load i32 , i32 * %op122
	ld.d $t0, $fp, -672
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -676
# %op124 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -688
# %op125 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op126 = getelementptr [100 x i32 ], [100 x i32 ]* %op124, i32  0, i32  %op125
	ld.d $t0, $fp, -688
	ld.w $t1, $fp, -692
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -704
# store i32  %op123, i32 * %op126
	ld.d $t0, $fp, -704
	ld.w $t1, $fp, -676
	st.w $t1, $t0, 0
# %op127 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -708
# %op128 = add i32  %op127, 1
	ld.w $t0, $fp, -708
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -712
# store i32  %op128, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -712
	st.w $t1, $t0, 0
# br label %label113
	b .merge_sort_label113
.merge_sort_label129:
# ret void
	addi.d $a0, $zero, 0
	b merge_sort_ret
merge_sort_ret:
	addi.d $sp, $sp, 720
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -40
# %op2 = getelementptr [100 x i32 ], [100 x i32 ]* %op1, i32  0, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -48
# %op3 = call i32  @getarray(i32 * %op2)
	ld.d $a0, $fp, -48
	bl getarray
	st.w $a0, $fp, -52
# store i32  %op3, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @merge_sort(i32  0, i32  %op4)
	addi.w $a0, $zero, 0
	ld.w $a1, $fp, -56
	bl merge_sort
# %op5 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op6 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -72
# %op7 = getelementptr [100 x i32 ], [100 x i32 ]* %op6, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -80
# call void @putarray(i32  %op5, i32 * %op7)
	ld.w $a0, $fp, -60
	ld.d $a1, $fp, -80
	bl putarray
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
