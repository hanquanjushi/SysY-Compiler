# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.text
	.globl QuickSort
	.type QuickSort, @function
QuickSort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -576
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.QuickSort_label_entry:
# %op3 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = icmp slt i32  %op6, %op7
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	slt $t2, $t0, $t1
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -93
# br i1  %op10, label %label11, label %label21
	ld.b $t0, $fp, -93
	bnez $t0, .QuickSort_label11
	b .QuickSort_label21
.QuickSort_label11:
# %op12 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# %op13 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# store i32  %op13, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# %op14 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# %op15 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# store i32  %op15, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# %op16 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op18 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -152
# %op19 = getelementptr i32 , i32 * %op18, i32  %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -144
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# store i32  %op20, i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# br label %label22
	b .QuickSort_label22
.QuickSort_label21:
# ret i32  0
	addi.w $a0, $zero, 0
	b QuickSort_ret
.QuickSort_label22:
# %op23 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# %op24 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op25 = icmp slt i32  %op23, %op24
	ld.w $t0, $fp, -168
	ld.w $t1, $fp, -172
	slt $t2, $t0, $t1
	st.b $t2, $fp, -173
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -181
# br i1  %op27, label %label28, label %label29
	ld.b $t0, $fp, -181
	bnez $t0, .QuickSort_label28
	b .QuickSort_label29
.QuickSort_label28:
# br label %label47
	b .QuickSort_label47
.QuickSort_label29:
# %op30 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op31 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op32 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -200
# %op33 = getelementptr i32 , i32 * %op32, i32  %op31
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -192
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -208
# store i32  %op30, i32 * %op33
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -188
	st.w $t1, $t0, 0
# %op34 = alloca i32 
	addi.d $t1, $fp, -220
	st.d $t1, $fp, -216
# %op35 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op36 = sub i32  %op35, 1
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# store i32  %op36, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -228
	st.w $t1, $t0, 0
# %op37 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -240
# %op38 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op39 = load i32 , i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op40 = call i32  @QuickSort(i32 * %op37, i32  %op38, i32  %op39)
	ld.d $a0, $fp, -240
	ld.w $a1, $fp, -244
	ld.w $a2, $fp, -248
	bl QuickSort
	st.w $a0, $fp, -252
# store i32  %op40, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -252
	st.w $t1, $t0, 0
# %op41 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op42 = add i32  %op41, 1
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# store i32  %op42, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# %op43 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -272
# %op44 = load i32 , i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op45 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op46 = call i32  @QuickSort(i32 * %op43, i32  %op44, i32  %op45)
	ld.d $a0, $fp, -272
	ld.w $a1, $fp, -276
	ld.w $a2, $fp, -280
	bl QuickSort
	st.w $a0, $fp, -284
# store i32  %op46, i32 * %op34
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -284
	st.w $t1, $t0, 0
# br label %label21
	b .QuickSort_label21
.QuickSort_label47:
# %op48 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op49 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op50 = icmp slt i32  %op48, %op49
	ld.w $t0, $fp, -288
	ld.w $t1, $fp, -292
	slt $t2, $t0, $t1
	st.b $t2, $fp, -293
# %op51 = zext i1  %op50 to i32 
	ld.b $t0, $fp, -293
	st.w $t0, $fp, -300
# %op52 = icmp ne i32  %op51, 0
	ld.w $t0, $fp, -300
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -301
# br i1  %op52, label %label62, label %label56
	ld.b $t0, $fp, -301
	bnez $t0, .QuickSort_label62
	b .QuickSort_label56
.QuickSort_label53:
# %op54 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op55 = sub i32  %op54, 1
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32  %op55, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# br label %label47
	b .QuickSort_label47
.QuickSort_label56:
# %op57 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op58 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op59 = icmp slt i32  %op57, %op58
	ld.w $t0, $fp, -316
	ld.w $t1, $fp, -320
	slt $t2, $t0, $t1
	st.b $t2, $fp, -321
# %op60 = zext i1  %op59 to i32 
	ld.b $t0, $fp, -321
	st.w $t0, $fp, -328
# %op61 = icmp ne i32  %op60, 0
	ld.w $t0, $fp, -328
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -329
# br i1  %op61, label %label72, label %label82
	ld.b $t0, $fp, -329
	bnez $t0, .QuickSort_label72
	b .QuickSort_label82
.QuickSort_label62:
# %op63 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -336
# %op64 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -344
# %op65 = getelementptr i32 , i32 * %op64, i32  %op63
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -336
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -352
# %op66 = load i32 , i32 * %op65
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op67 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op68 = sub i32  %op67, 1
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -364
# %op69 = icmp sgt i32  %op66, %op68
	ld.w $t0, $fp, -356
	ld.w $t1, $fp, -364
	slt $t2, $t1, $t0
	st.b $t2, $fp, -365
# %op70 = zext i1  %op69 to i32 
	ld.b $t0, $fp, -365
	st.w $t0, $fp, -372
# %op71 = icmp ne i32  %op70, 0
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -373
# br i1  %op71, label %label53, label %label56
	ld.b $t0, $fp, -373
	bnez $t0, .QuickSort_label53
	b .QuickSort_label56
.QuickSort_label72:
# %op73 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op74 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -392
# %op75 = getelementptr i32 , i32 * %op74, i32  %op73
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -380
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -400
# %op76 = load i32 , i32 * %op75
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op77 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# %op78 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -416
# %op79 = getelementptr i32 , i32 * %op78, i32  %op77
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -408
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# store i32  %op76, i32 * %op79
	ld.d $t0, $fp, -424
	ld.w $t1, $fp, -404
	st.w $t1, $t0, 0
# %op80 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op81 = add i32  %op80, 1
	ld.w $t0, $fp, -428
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# store i32  %op81, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -432
	st.w $t1, $t0, 0
# br label %label82
	b .QuickSort_label82
.QuickSort_label82:
# br label %label83
	b .QuickSort_label83
.QuickSort_label83:
# %op84 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op85 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op86 = icmp slt i32  %op84, %op85
	ld.w $t0, $fp, -436
	ld.w $t1, $fp, -440
	slt $t2, $t0, $t1
	st.b $t2, $fp, -441
# %op87 = zext i1  %op86 to i32 
	ld.b $t0, $fp, -441
	st.w $t0, $fp, -448
# %op88 = icmp ne i32  %op87, 0
	ld.w $t0, $fp, -448
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -449
# br i1  %op88, label %label98, label %label92
	ld.b $t0, $fp, -449
	bnez $t0, .QuickSort_label98
	b .QuickSort_label92
.QuickSort_label89:
# %op90 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op91 = add i32  %op90, 1
	ld.w $t0, $fp, -456
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -460
# store i32  %op91, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -460
	st.w $t1, $t0, 0
# br label %label83
	b .QuickSort_label83
.QuickSort_label92:
# %op93 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -464
# %op94 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op95 = icmp slt i32  %op93, %op94
	ld.w $t0, $fp, -464
	ld.w $t1, $fp, -468
	slt $t2, $t0, $t1
	st.b $t2, $fp, -469
# %op96 = zext i1  %op95 to i32 
	ld.b $t0, $fp, -469
	st.w $t0, $fp, -476
# %op97 = icmp ne i32  %op96, 0
	ld.w $t0, $fp, -476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -477
# br i1  %op97, label %label107, label %label117
	ld.b $t0, $fp, -477
	bnez $t0, .QuickSort_label107
	b .QuickSort_label117
.QuickSort_label98:
# %op99 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op100 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -496
# %op101 = getelementptr i32 , i32 * %op100, i32  %op99
	ld.d $t0, $fp, -496
	ld.w $t1, $fp, -484
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# %op102 = load i32 , i32 * %op101
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op103 = load i32 , i32 * %op16
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op104 = icmp slt i32  %op102, %op103
	ld.w $t0, $fp, -508
	ld.w $t1, $fp, -512
	slt $t2, $t0, $t1
	st.b $t2, $fp, -513
# %op105 = zext i1  %op104 to i32 
	ld.b $t0, $fp, -513
	st.w $t0, $fp, -520
# %op106 = icmp ne i32  %op105, 0
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -521
# br i1  %op106, label %label89, label %label92
	ld.b $t0, $fp, -521
	bnez $t0, .QuickSort_label89
	b .QuickSort_label92
.QuickSort_label107:
# %op108 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op109 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -536
# %op110 = getelementptr i32 , i32 * %op109, i32  %op108
	ld.d $t0, $fp, -536
	ld.w $t1, $fp, -528
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -544
# %op111 = load i32 , i32 * %op110
	ld.d $t0, $fp, -544
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op112 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -552
# %op113 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -560
# %op114 = getelementptr i32 , i32 * %op113, i32  %op112
	ld.d $t0, $fp, -560
	ld.w $t1, $fp, -552
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# store i32  %op111, i32 * %op114
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -548
	st.w $t1, $t0, 0
# %op115 = load i32 , i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op116 = sub i32  %op115, 1
	ld.w $t0, $fp, -572
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -576
# store i32  %op116, i32 * %op14
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -576
	st.w $t1, $t0, 0
# br label %label117
	b .QuickSort_label117
.QuickSort_label117:
# br label %label22
	b .QuickSort_label22
QuickSort_ret:
	addi.d $sp, $sp, 576
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
# %op12 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# store i32  9, i32 * %op12
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -184
# %op14 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op15 = load i32 , i32 * %op12
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op16 = call i32  @QuickSort(i32 * %op13, i32  %op14, i32  %op15)
	ld.d $a0, $fp, -184
	ld.w $a1, $fp, -188
	ld.w $a2, $fp, -192
	bl QuickSort
	st.w $a0, $fp, -196
# store i32  %op16, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# br label %label17
	b .main_label17
.main_label17:
# %op18 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op19 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op20 = icmp slt i32  %op18, %op19
	ld.w $t0, $fp, -200
	ld.w $t1, $fp, -204
	slt $t2, $t0, $t1
	st.b $t2, $fp, -205
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -205
	st.w $t0, $fp, -212
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -213
# br i1  %op22, label %label23, label %label32
	ld.b $t0, $fp, -213
	bnez $t0, .main_label23
	b .main_label32
.main_label23:
# %op24 = alloca i32 
	addi.d $t1, $fp, -228
	st.d $t1, $fp, -224
# %op25 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op26 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  %op25
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -232
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# store i32  %op27, i32 * %op24
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# %op28 = load i32 , i32 * %op24
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# call void @putint(i32  %op28)
	ld.w $a0, $fp, -248
	bl putint
# store i32  10, i32 * %op24
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 10
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op24
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# call void @putch(i32  %op29)
	ld.w $a0, $fp, -252
	bl putch
# %op30 = load i32 , i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op31 = add i32  %op30, 1
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# store i32  %op31, i32 * %op11
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -260
	st.w $t1, $t0, 0
# br label %label17
	b .main_label17
.main_label32:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 272
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
