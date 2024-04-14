# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl counting_sort
	.type counting_sort, @function
counting_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -640
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.w $a2, $fp, -36
.counting_sort_label_entry:
# %op3 = alloca i32 *
	addi.d $t1, $fp, -56
	st.d $t1, $fp, -48
# store i32 * %arg0, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op4 = alloca i32 *
	addi.d $t1, $fp, -72
	st.d $t1, $fp, -64
# store i32 * %arg1, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op6 = alloca [10 x i32 ]
	addi.d $t1, $fp, -136
	st.d $t1, $fp, -96
# %op7 = alloca i32 
	addi.d $t1, $fp, -148
	st.d $t1, $fp, -144
# %op8 = alloca i32 
	addi.d $t1, $fp, -164
	st.d $t1, $fp, -160
# %op9 = alloca i32 
	addi.d $t1, $fp, -180
	st.d $t1, $fp, -176
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label10
	b .counting_sort_label10
.counting_sort_label10:
# %op11 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -184
# %op12 = icmp slt i32  %op11, 10
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -185
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -185
	st.w $t0, $fp, -192
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -192
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -193
# br i1  %op14, label %label15, label %label20
	ld.b $t0, $fp, -193
	bnez $t0, .counting_sort_label15
	b .counting_sort_label20
.counting_sort_label15:
# %op16 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op17 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op16
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -200
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op19 = add i32  %op18, 1
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# store i32  %op19, i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -216
	st.w $t1, $t0, 0
# br label %label10
	b .counting_sort_label10
.counting_sort_label20:
# br label %label21
	b .counting_sort_label21
.counting_sort_label21:
# %op22 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op23 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op24 = icmp slt i32  %op22, %op23
	ld.w $t0, $fp, -220
	ld.w $t1, $fp, -224
	slt $t2, $t0, $t1
	st.b $t2, $fp, -225
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -225
	st.w $t0, $fp, -232
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -233
# br i1  %op26, label %label27, label %label42
	ld.b $t0, $fp, -233
	bnez $t0, .counting_sort_label27
	b .counting_sort_label42
.counting_sort_label27:
# %op28 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op29 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -248
# %op30 = getelementptr i32 , i32 * %op29, i32  %op28
	ld.d $t0, $fp, -248
	ld.w $t1, $fp, -240
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -256
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op32 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op31
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -260
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -272
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op34 = add i32  %op33, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# %op35 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op36 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -296
# %op37 = getelementptr i32 , i32 * %op36, i32  %op35
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -284
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -304
# %op38 = load i32 , i32 * %op37
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op39 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op38
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -308
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# store i32  %op34, i32 * %op39
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# %op40 = load i32 , i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -324
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -328
# store i32  %op41, i32 * %op7
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -328
	st.w $t1, $t0, 0
# br label %label21
	b .counting_sort_label21
.counting_sort_label42:
# store i32  1, i32 * %op9
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label43
	b .counting_sort_label43
.counting_sort_label43:
# %op44 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op45 = icmp slt i32  %op44, 10
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -333
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -333
	st.w $t0, $fp, -340
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -340
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -341
# br i1  %op47, label %label48, label %label61
	ld.b $t0, $fp, -341
	bnez $t0, .counting_sort_label48
	b .counting_sort_label61
.counting_sort_label48:
# %op49 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op50 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op49
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -348
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -360
# %op51 = load i32 , i32 * %op50
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op52 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op53 = sub i32  %op52, 1
	ld.w $t0, $fp, -368
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -372
# %op54 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op53
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op56 = add i32  %op51, %op55
	ld.w $t0, $fp, -364
	ld.w $t1, $fp, -388
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -392
# %op57 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op58 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op57
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -396
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# store i32  %op56, i32 * %op58
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -392
	st.w $t1, $t0, 0
# %op59 = load i32 , i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op60 = add i32  %op59, 1
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# store i32  %op60, i32 * %op9
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -416
	st.w $t1, $t0, 0
# br label %label43
	b .counting_sort_label43
.counting_sort_label61:
# %op62 = load i32 , i32 * %op5
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# store i32  %op62, i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -420
	st.w $t1, $t0, 0
# br label %label63
	b .counting_sort_label63
.counting_sort_label63:
# %op64 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op65 = icmp sgt i32  %op64, 0
	ld.w $t0, $fp, -424
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -425
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -425
	st.w $t0, $fp, -432
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -433
# br i1  %op67, label %label68, label %label99
	ld.b $t0, $fp, -433
	bnez $t0, .counting_sort_label68
	b .counting_sort_label99
.counting_sort_label68:
# %op69 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op70 = sub i32  %op69, 1
	ld.w $t0, $fp, -440
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -444
# %op71 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -456
# %op72 = getelementptr i32 , i32 * %op71, i32  %op70
	ld.d $t0, $fp, -456
	ld.w $t1, $fp, -444
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -464
# %op73 = load i32 , i32 * %op72
	ld.d $t0, $fp, -464
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op74 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op73
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -468
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# %op75 = load i32 , i32 * %op74
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op76 = sub i32  %op75, 1
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -488
# %op77 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op78 = sub i32  %op77, 1
	ld.w $t0, $fp, -492
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -496
# %op79 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -504
# %op80 = getelementptr i32 , i32 * %op79, i32  %op78
	ld.d $t0, $fp, -504
	ld.w $t1, $fp, -496
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -512
# %op81 = load i32 , i32 * %op80
	ld.d $t0, $fp, -512
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op82 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op81
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -516
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -528
# store i32  %op76, i32 * %op82
	ld.d $t0, $fp, -528
	ld.w $t1, $fp, -488
	st.w $t1, $t0, 0
# %op83 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op84 = sub i32  %op83, 1
	ld.w $t0, $fp, -532
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -536
# %op85 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -544
# %op86 = getelementptr i32 , i32 * %op85, i32  %op84
	ld.d $t0, $fp, -544
	ld.w $t1, $fp, -536
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -552
# %op87 = load i32 , i32 * %op86
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op88 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# %op89 = sub i32  %op88, 1
	ld.w $t0, $fp, -560
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -564
# %op90 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -48
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -576
# %op91 = getelementptr i32 , i32 * %op90, i32  %op89
	ld.d $t0, $fp, -576
	ld.w $t1, $fp, -564
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -584
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op93 = getelementptr [10 x i32 ], [10 x i32 ]* %op6, i32  0, i32  %op92
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -588
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -600
# %op94 = load i32 , i32 * %op93
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op95 = load i32 *, i32 ** %op4
	ld.d $t0, $fp, -64
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -616
# %op96 = getelementptr i32 , i32 * %op95, i32  %op94
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -604
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -624
# store i32  %op87, i32 * %op96
	ld.d $t0, $fp, -624
	ld.w $t1, $fp, -556
	st.w $t1, $t0, 0
# %op97 = load i32 , i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op98 = sub i32  %op97, 1
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -632
# store i32  %op98, i32 * %op8
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -632
	st.w $t1, $t0, 0
# br label %label63
	b .counting_sort_label63
.counting_sort_label99:
# ret i32  0
	addi.w $a0, $zero, 0
	b counting_sort_ret
counting_sort_ret:
	addi.d $sp, $sp, 640
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -304
.main_label_entry:
# store i32  10, i32 * @n
	la.local $t0, n
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op0 = alloca [10 x i32 ]
	addi.d $t1, $fp, -64
	st.d $t1, $fp, -24
# %op1 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -72
# store i32  4, i32 * %op1
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op2 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -80
# store i32  3, i32 * %op2
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op3 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -88
# store i32  9, i32 * %op3
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op4 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -96
# store i32  2, i32 * %op4
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op5 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -104
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -112
# store i32  1, i32 * %op6
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op7 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -120
# store i32  6, i32 * %op7
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 6
	st.w $t1, $t0, 0
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -128
# store i32  5, i32 * %op8
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 5
	st.w $t1, $t0, 0
# %op9 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -136
# store i32  7, i32 * %op9
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 7
	st.w $t1, $t0, 0
# %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -144
# store i32  8, i32 * %op10
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op11 = alloca i32 
	addi.d $t1, $fp, -156
	st.d $t1, $fp, -152
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = alloca [10 x i32 ]
	addi.d $t1, $fp, -208
	st.d $t1, $fp, -168
# %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -216
# %op14 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  0
	ld.d $t0, $fp, -168
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -224
# %op15 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op16 = call i32  @counting_sort(i32 * %op13, i32 * %op14, i32  %op15)
	ld.d $a0, $fp, -216
	ld.d $a1, $fp, -224
	ld.w $a2, $fp, -228
	bl counting_sort
	st.w $a0, $fp, -232
# store i32  %op16, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -232
	st.w $t1, $t0, 0
# br label %label17
	b .main_label17
.main_label17:
# %op18 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -236
# %op19 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op20 = icmp slt i32  %op18, %op19
	ld.w $t0, $fp, -236
	ld.w $t1, $fp, -240
	slt $t2, $t0, $t1
	st.b $t2, $fp, -241
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -249
# br i1  %op22, label %label23, label %label32
	ld.b $t0, $fp, -249
	bnez $t0, .main_label23
	b .main_label32
.main_label23:
# %op24 = alloca i32 
	addi.d $t1, $fp, -268
	st.d $t1, $fp, -264
# %op25 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -272
# %op26 = getelementptr [10 x i32 ], [10 x i32 ]* %op12, i32  0, i32  %op25
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -272
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# store i32  %op27, i32 * %op24
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -284
	st.w $t1, $t0, 0
# %op28 = load i32 , i32 * %op24
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# call void @putint(i32  %op28)
	ld.w $a0, $fp, -288
	bl putint
# store i32  10, i32 * %op24
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op24
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# call void @putch(i32  %op29)
	ld.w $a0, $fp, -292
	bl putch
# %op30 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op31 = add i32  %op30, 1
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# store i32  %op31, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label17
	b .main_label17
.main_label32:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 304
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
