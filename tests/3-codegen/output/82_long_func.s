# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl SHIFT_TABLE
	.data
	.type SHIFT_TABLE, @object
	.size SHIFT_TABLE, 64
SHIFT_TABLE:
	.word  1
	.word  2
	.word  4
	.word  8
	.word  16
	.word  32
	.word  64
	.word  128
	.word  256
	.word  512
	.word  1024
	.word  2048
	.word  4096
	.word  8192
	.word  16384
	.word  32768
	.text
	.globl long_func
	.type long_func, @function
long_func:
	lu12i.w $t0, 2
	ori $t0, $t0, 3456
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.long_func_label_entry:
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
# %op5 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  1, i32 * %op5
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -140
	st.d $t1, $fp, -136
# store i32  2, i32 * %op7
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label8
	b .long_func_label8
.long_func_label8:
# %op9 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op10 = icmp sgt i32  %op9, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -145
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -153
# br i1  %op12, label %label13, label %label15
	ld.b $t0, $fp, -153
	bnez $t0, .long_func_label13
	b .long_func_label15
.long_func_label13:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# store i32  %op14, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label21
	b .long_func_label21
.long_func_label15:
# %op16 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# store i32  %op16, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -164
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -168
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -168
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op18 = alloca i32 
	addi.d $t1, $fp, -180
	st.d $t1, $fp, -176
# store i32  1, i32 * %op18
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op19 = alloca i32 
	addi.d $t1, $fp, -196
	st.d $t1, $fp, -192
# store i32  1, i32 * %op19
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op20 = alloca i32 
	addi.d $t1, $fp, -212
	st.d $t1, $fp, -208
# store i32  2, i32 * %op20
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label806
	b .long_func_label806
.long_func_label21:
# %op22 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -216
# %op23 = icmp slt i32  %op22, 16
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -217
# %op24 = zext i1  %op23 to i32 
	ld.b $t0, $fp, -217
	st.w $t0, $fp, -224
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -225
# br i1  %op25, label %label26, label %label30
	ld.b $t0, $fp, -225
	bnez $t0, .long_func_label26
	b .long_func_label30
.long_func_label26:
# %op27 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op28 = srem i32  %op27, 2
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -236
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -237
# br i1  %op29, label %label47, label %label40
	ld.b $t0, $fp, -237
	bnez $t0, .long_func_label47
	b .long_func_label40
.long_func_label30:
# %op31 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -245
# br i1  %op32, label %label51, label %label57
	ld.b $t0, $fp, -245
	bnez $t0, .long_func_label51
	b .long_func_label57
.long_func_label33:
# %op34 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# %op35 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -256
# %op36 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op35
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -256
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# %op37 = load i32 , i32 * %op36
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op38 = mul i32  1, %op37
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -268
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# %op39 = add i32  %op34, %op38
	ld.w $t0, $fp, -252
	ld.w $t1, $fp, -272
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -276
# store i32  %op39, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -276
	st.w $t1, $t0, 0
# br label %label40
	b .long_func_label40
.long_func_label40:
# %op41 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op42 = sdiv i32  %op41, 2
	ld.w $t0, $fp, -280
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -284
# store i32  %op42, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -284
	st.w $t1, $t0, 0
# %op43 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op44 = sdiv i32  %op43, 2
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -292
# store i32  %op44, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -292
	st.w $t1, $t0, 0
# %op45 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op46 = add i32  %op45, 1
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -300
# store i32  %op46, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# br label %label21
	b .long_func_label21
.long_func_label47:
# %op48 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op49 = srem i32  %op48, 2
	ld.w $t0, $fp, -304
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -308
# %op50 = icmp ne i32  %op49, 0
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -309
# br i1  %op50, label %label33, label %label40
	ld.b $t0, $fp, -309
	bnez $t0, .long_func_label33
	b .long_func_label40
.long_func_label51:
# %op52 = alloca i32 
	addi.d $t1, $fp, -324
	st.d $t1, $fp, -320
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = alloca i32 
	addi.d $t1, $fp, -340
	st.d $t1, $fp, -336
# %op54 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -344
# store i32  %op54, i32 * %op53
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -344
	st.w $t1, $t0, 0
# %op55 = alloca i32 
	addi.d $t1, $fp, -356
	st.d $t1, $fp, -352
# %op56 = load i32 , i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# store i32  %op56, i32 * %op55
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -360
	st.w $t1, $t0, 0
# br label %label63
	b .long_func_label63
.long_func_label57:
# %op58 = alloca i32 
	addi.d $t1, $fp, -372
	st.d $t1, $fp, -368
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = alloca i32 
	addi.d $t1, $fp, -388
	st.d $t1, $fp, -384
# %op60 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -392
# store i32  %op60, i32 * %op59
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -392
	st.w $t1, $t0, 0
# %op61 = alloca i32 
	addi.d $t1, $fp, -404
	st.d $t1, $fp, -400
# %op62 = load i32 , i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -408
# store i32  %op62, i32 * %op61
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -408
	st.w $t1, $t0, 0
# br label %label410
	b .long_func_label410
.long_func_label63:
# %op64 = load i32 , i32 * %op53
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -412
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -413
# br i1  %op65, label %label66, label %label68
	ld.b $t0, $fp, -413
	bnez $t0, .long_func_label66
	b .long_func_label68
.long_func_label66:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = load i32 , i32 * %op53
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# store i32  %op67, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -420
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label71
	b .long_func_label71
.long_func_label68:
# %op69 = load i32 , i32 * %op52
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# store i32  %op69, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -424
	st.w $t1, $t0, 0
# %op70 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# store i32  %op70, i32 * %op5
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -428
	st.w $t1, $t0, 0
# br label %label57
	b .long_func_label57
.long_func_label71:
# %op72 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op73 = icmp slt i32  %op72, 16
	ld.w $t0, $fp, -432
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -433
# %op74 = zext i1  %op73 to i32 
	ld.b $t0, $fp, -433
	st.w $t0, $fp, -440
# %op75 = icmp ne i32  %op74, 0
	ld.w $t0, $fp, -440
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -441
# br i1  %op75, label %label76, label %label80
	ld.b $t0, $fp, -441
	bnez $t0, .long_func_label76
	b .long_func_label80
.long_func_label76:
# %op77 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op78 = srem i32  %op77, 2
	ld.w $t0, $fp, -448
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -452
# %op79 = icmp ne i32  %op78, 0
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -453
# br i1  %op79, label %label97, label %label90
	ld.b $t0, $fp, -453
	bnez $t0, .long_func_label97
	b .long_func_label90
.long_func_label80:
# %op81 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op82 = icmp ne i32  %op81, 0
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -461
# br i1  %op82, label %label101, label %label107
	ld.b $t0, $fp, -461
	bnez $t0, .long_func_label101
	b .long_func_label107
.long_func_label83:
# %op84 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op85 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op86 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op85
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -472
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# %op87 = load i32 , i32 * %op86
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op88 = mul i32  1, %op87
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -484
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -488
# %op89 = add i32  %op84, %op88
	ld.w $t0, $fp, -468
	ld.w $t1, $fp, -488
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -492
# store i32  %op89, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -492
	st.w $t1, $t0, 0
# br label %label90
	b .long_func_label90
.long_func_label90:
# %op91 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op92 = sdiv i32  %op91, 2
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -500
# store i32  %op92, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -500
	st.w $t1, $t0, 0
# %op93 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -504
# %op94 = sdiv i32  %op93, 2
	ld.w $t0, $fp, -504
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -508
# store i32  %op94, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -508
	st.w $t1, $t0, 0
# %op95 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op96 = add i32  %op95, 1
	ld.w $t0, $fp, -512
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -516
# store i32  %op96, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -516
	st.w $t1, $t0, 0
# br label %label71
	b .long_func_label71
.long_func_label97:
# %op98 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -520
# %op99 = srem i32  %op98, 2
	ld.w $t0, $fp, -520
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -524
# %op100 = icmp ne i32  %op99, 0
	ld.w $t0, $fp, -524
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -525
# br i1  %op100, label %label83, label %label90
	ld.b $t0, $fp, -525
	bnez $t0, .long_func_label83
	b .long_func_label90
.long_func_label101:
# %op102 = alloca i32 
	addi.d $t1, $fp, -540
	st.d $t1, $fp, -536
# %op103 = alloca i32 
	addi.d $t1, $fp, -556
	st.d $t1, $fp, -552
# %op104 = load i32 , i32 * %op55
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -560
# store i32  %op104, i32 * %op103
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -560
	st.w $t1, $t0, 0
# %op105 = alloca i32 
	addi.d $t1, $fp, -572
	st.d $t1, $fp, -568
# %op106 = load i32 , i32 * %op52
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -576
# store i32  %op106, i32 * %op105
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -576
	st.w $t1, $t0, 0
# br label %label113
	b .long_func_label113
.long_func_label107:
# %op108 = alloca i32 
	addi.d $t1, $fp, -588
	st.d $t1, $fp, -584
# %op109 = alloca i32 
	addi.d $t1, $fp, -604
	st.d $t1, $fp, -600
# %op110 = load i32 , i32 * %op55
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -608
# store i32  %op110, i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -608
	st.w $t1, $t0, 0
# %op111 = alloca i32 
	addi.d $t1, $fp, -620
	st.d $t1, $fp, -616
# %op112 = load i32 , i32 * %op55
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -624
# store i32  %op112, i32 * %op111
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -624
	st.w $t1, $t0, 0
# br label %label237
	b .long_func_label237
.long_func_label113:
# %op114 = load i32 , i32 * %op103
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op115 = icmp ne i32  %op114, 0
	ld.w $t0, $fp, -628
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -629
# br i1  %op115, label %label116, label %label119
	ld.b $t0, $fp, -629
	bnez $t0, .long_func_label116
	b .long_func_label119
.long_func_label116:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op117 = load i32 , i32 * %op105
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# store i32  %op117, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -636
	st.w $t1, $t0, 0
# %op118 = load i32 , i32 * %op103
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -640
# store i32  %op118, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -640
	st.w $t1, $t0, 0
# br label %label122
	b .long_func_label122
.long_func_label119:
# %op120 = load i32 , i32 * %op105
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -644
# store i32  %op120, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -644
	st.w $t1, $t0, 0
# %op121 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -648
# store i32  %op121, i32 * %op52
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -648
	st.w $t1, $t0, 0
# br label %label107
	b .long_func_label107
.long_func_label122:
# %op123 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op124 = icmp slt i32  %op123, 16
	ld.w $t0, $fp, -652
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -653
# %op125 = zext i1  %op124 to i32 
	ld.b $t0, $fp, -653
	st.w $t0, $fp, -660
# %op126 = icmp ne i32  %op125, 0
	ld.w $t0, $fp, -660
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -661
# br i1  %op126, label %label127, label %label131
	ld.b $t0, $fp, -661
	bnez $t0, .long_func_label127
	b .long_func_label131
.long_func_label127:
# %op128 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op129 = srem i32  %op128, 2
	ld.w $t0, $fp, -668
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# %op130 = icmp ne i32  %op129, 0
	ld.w $t0, $fp, -672
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -673
# br i1  %op130, label %label135, label %label141
	ld.b $t0, $fp, -673
	bnez $t0, .long_func_label135
	b .long_func_label141
.long_func_label131:
# %op132 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -680
# store i32  %op132, i32 * %op102
	ld.d $t0, $fp, -536
	ld.w $t1, $fp, -680
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op133 = load i32 , i32 * %op105
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# store i32  %op133, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -684
	st.w $t1, $t0, 0
# %op134 = load i32 , i32 * %op103
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -688
# store i32  %op134, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -688
	st.w $t1, $t0, 0
# br label %label168
	b .long_func_label168
.long_func_label135:
# %op136 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -692
# %op137 = srem i32  %op136, 2
	ld.w $t0, $fp, -692
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -696
# %op138 = icmp eq i32  %op137, 0
	ld.w $t0, $fp, -696
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -697
# %op139 = zext i1  %op138 to i32 
	ld.b $t0, $fp, -697
	st.w $t0, $fp, -704
# %op140 = icmp ne i32  %op139, 0
	ld.w $t0, $fp, -704
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -705
# br i1  %op140, label %label152, label %label159
	ld.b $t0, $fp, -705
	bnez $t0, .long_func_label152
	b .long_func_label159
.long_func_label141:
# %op142 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -712
# %op143 = srem i32  %op142, 2
	ld.w $t0, $fp, -712
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -716
# %op144 = icmp ne i32  %op143, 0
	ld.w $t0, $fp, -716
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -717
# br i1  %op144, label %label160, label %label167
	ld.b $t0, $fp, -717
	bnez $t0, .long_func_label160
	b .long_func_label167
.long_func_label145:
# %op146 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -724
# %op147 = sdiv i32  %op146, 2
	ld.w $t0, $fp, -724
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -728
# store i32  %op147, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -728
	st.w $t1, $t0, 0
# %op148 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op149 = sdiv i32  %op148, 2
	ld.w $t0, $fp, -732
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -736
# store i32  %op149, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -736
	st.w $t1, $t0, 0
# %op150 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -740
# %op151 = add i32  %op150, 1
	ld.w $t0, $fp, -740
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -744
# store i32  %op151, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -744
	st.w $t1, $t0, 0
# br label %label122
	b .long_func_label122
.long_func_label152:
# %op153 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op154 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -752
# %op155 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op154
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -752
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -760
# %op156 = load i32 , i32 * %op155
	ld.d $t0, $fp, -760
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op157 = mul i32  1, %op156
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -764
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# %op158 = add i32  %op153, %op157
	ld.w $t0, $fp, -748
	ld.w $t1, $fp, -768
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -772
# store i32  %op158, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -772
	st.w $t1, $t0, 0
# br label %label159
	b .long_func_label159
.long_func_label159:
# br label %label145
	b .long_func_label145
.long_func_label160:
# %op161 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -776
# %op162 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op163 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op162
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -780
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -792
# %op164 = load i32 , i32 * %op163
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op165 = mul i32  1, %op164
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -796
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -800
# %op166 = add i32  %op161, %op165
	ld.w $t0, $fp, -776
	ld.w $t1, $fp, -800
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -804
# store i32  %op166, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -804
	st.w $t1, $t0, 0
# br label %label167
	b .long_func_label167
.long_func_label167:
# br label %label145
	b .long_func_label145
.long_func_label168:
# %op169 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -808
# %op170 = icmp slt i32  %op169, 16
	ld.w $t0, $fp, -808
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -809
# %op171 = zext i1  %op170 to i32 
	ld.b $t0, $fp, -809
	st.w $t0, $fp, -816
# %op172 = icmp ne i32  %op171, 0
	ld.w $t0, $fp, -816
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -817
# br i1  %op172, label %label173, label %label177
	ld.b $t0, $fp, -817
	bnez $t0, .long_func_label173
	b .long_func_label177
.long_func_label173:
# %op174 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -824
# %op175 = srem i32  %op174, 2
	ld.w $t0, $fp, -824
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -828
# %op176 = icmp ne i32  %op175, 0
	ld.w $t0, $fp, -828
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -829
# br i1  %op176, label %label196, label %label189
	ld.b $t0, $fp, -829
	bnez $t0, .long_func_label196
	b .long_func_label189
.long_func_label177:
# %op178 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# store i32  %op178, i32 * %op103
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -836
	st.w $t1, $t0, 0
# %op179 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -837
# %op180 = zext i1  %op179 to i32 
	ld.b $t0, $fp, -837
	st.w $t0, $fp, -844
# %op181 = icmp ne i32  %op180, 0
	ld.w $t0, $fp, -844
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -845
# br i1  %op181, label %label200, label %label201
	ld.b $t0, $fp, -845
	bnez $t0, .long_func_label200
	b .long_func_label201
.long_func_label182:
# %op183 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -852
# %op184 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -856
# %op185 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op184
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -856
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -864
# %op186 = load i32 , i32 * %op185
	ld.d $t0, $fp, -864
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# %op187 = mul i32  1, %op186
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -868
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -872
# %op188 = add i32  %op183, %op187
	ld.w $t0, $fp, -852
	ld.w $t1, $fp, -872
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -876
# store i32  %op188, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -876
	st.w $t1, $t0, 0
# br label %label189
	b .long_func_label189
.long_func_label189:
# %op190 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -880
# %op191 = sdiv i32  %op190, 2
	ld.w $t0, $fp, -880
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -884
# store i32  %op191, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -884
	st.w $t1, $t0, 0
# %op192 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -888
# %op193 = sdiv i32  %op192, 2
	ld.w $t0, $fp, -888
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -892
# store i32  %op193, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -892
	st.w $t1, $t0, 0
# %op194 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -896
# %op195 = add i32  %op194, 1
	ld.w $t0, $fp, -896
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -900
# store i32  %op195, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -900
	st.w $t1, $t0, 0
# br label %label168
	b .long_func_label168
.long_func_label196:
# %op197 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -904
# %op198 = srem i32  %op197, 2
	ld.w $t0, $fp, -904
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -908
# %op199 = icmp ne i32  %op198, 0
	ld.w $t0, $fp, -908
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -909
# br i1  %op199, label %label182, label %label189
	ld.b $t0, $fp, -909
	bnez $t0, .long_func_label182
	b .long_func_label189
.long_func_label200:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label206
	b .long_func_label206
.long_func_label201:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op202 = load i32 , i32 * %op103
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -916
# %op203 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -928
# %op204 = load i32 , i32 * %op203
	ld.d $t0, $fp, -928
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# %op205 = mul i32  %op202, %op204
	ld.w $t0, $fp, -916
	ld.w $t1, $fp, -932
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -936
# store i32  %op205, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -936
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label209
	b .long_func_label209
.long_func_label206:
# %op207 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# store i32  %op207, i32 * %op103
	ld.d $t0, $fp, -552
	ld.w $t1, $fp, -940
	st.w $t1, $t0, 0
# %op208 = load i32 , i32 * %op102
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -944
# store i32  %op208, i32 * %op105
	ld.d $t0, $fp, -568
	ld.w $t1, $fp, -944
	st.w $t1, $t0, 0
# br label %label113
	b .long_func_label113
.long_func_label209:
# %op210 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -948
# %op211 = icmp slt i32  %op210, 16
	ld.w $t0, $fp, -948
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -949
# %op212 = zext i1  %op211 to i32 
	ld.b $t0, $fp, -949
	st.w $t0, $fp, -956
# %op213 = icmp ne i32  %op212, 0
	ld.w $t0, $fp, -956
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -957
# br i1  %op213, label %label214, label %label218
	ld.b $t0, $fp, -957
	bnez $t0, .long_func_label214
	b .long_func_label218
.long_func_label214:
# %op215 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# %op216 = srem i32  %op215, 2
	ld.w $t0, $fp, -964
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -968
# %op217 = icmp ne i32  %op216, 0
	ld.w $t0, $fp, -968
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -969
# br i1  %op217, label %label233, label %label226
	ld.b $t0, $fp, -969
	bnez $t0, .long_func_label233
	b .long_func_label226
.long_func_label218:
# br label %label206
	b .long_func_label206
.long_func_label219:
# %op220 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -976
# %op221 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# %op222 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op221
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -980
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -992
# %op223 = load i32 , i32 * %op222
	ld.d $t0, $fp, -992
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -996
# %op224 = mul i32  1, %op223
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -996
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1000
# %op225 = add i32  %op220, %op224
	ld.w $t0, $fp, -976
	ld.w $t1, $fp, -1000
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1004
# store i32  %op225, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1004
	st.w $t1, $t0, 0
# br label %label226
	b .long_func_label226
.long_func_label226:
# %op227 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1008
# %op228 = sdiv i32  %op227, 2
	ld.w $t0, $fp, -1008
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1012
# store i32  %op228, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1012
	st.w $t1, $t0, 0
# %op229 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1016
# %op230 = sdiv i32  %op229, 2
	ld.w $t0, $fp, -1016
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1020
# store i32  %op230, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1020
	st.w $t1, $t0, 0
# %op231 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1024
# %op232 = add i32  %op231, 1
	ld.w $t0, $fp, -1024
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1028
# store i32  %op232, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1028
	st.w $t1, $t0, 0
# br label %label209
	b .long_func_label209
.long_func_label233:
# %op234 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1032
# %op235 = srem i32  %op234, 2
	ld.w $t0, $fp, -1032
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1036
# %op236 = icmp ne i32  %op235, 0
	ld.w $t0, $fp, -1036
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -1037
# br i1  %op236, label %label219, label %label226
	ld.b $t0, $fp, -1037
	bnez $t0, .long_func_label219
	b .long_func_label226
.long_func_label237:
# %op238 = load i32 , i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1044
# %op239 = icmp ne i32  %op238, 0
	ld.w $t0, $fp, -1044
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -1045
# br i1  %op239, label %label240, label %label243
	ld.b $t0, $fp, -1045
	bnez $t0, .long_func_label240
	b .long_func_label243
.long_func_label240:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op241 = load i32 , i32 * %op111
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# store i32  %op241, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1052
	st.w $t1, $t0, 0
# %op242 = load i32 , i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1056
# store i32  %op242, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1056
	st.w $t1, $t0, 0
# br label %label251
	b .long_func_label251
.long_func_label243:
# %op244 = load i32 , i32 * %op111
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1060
# store i32  %op244, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1060
	st.w $t1, $t0, 0
# %op245 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1064
# store i32  %op245, i32 * %op55
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -1064
	st.w $t1, $t0, 0
# %op246 = load i32 , i32 * %op53
	ld.d $t0, $fp, -336
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1068
# store i32  %op246, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1068
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op247 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1072
# %op248 = icmp sge i32  %op247, 15
	ld.w $t0, $fp, -1072
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -1073
# %op249 = zext i1  %op248 to i32 
	ld.b $t0, $fp, -1073
	st.w $t0, $fp, -1080
# %op250 = icmp ne i32  %op249, 0
	ld.w $t0, $fp, -1080
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -1081
# br i1  %op250, label %label366, label %label371
	ld.b $t0, $fp, -1081
	bnez $t0, .long_func_label366
	b .long_func_label371
.long_func_label251:
# %op252 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1088
# %op253 = icmp slt i32  %op252, 16
	ld.w $t0, $fp, -1088
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1089
# %op254 = zext i1  %op253 to i32 
	ld.b $t0, $fp, -1089
	st.w $t0, $fp, -1096
# %op255 = icmp ne i32  %op254, 0
	ld.w $t0, $fp, -1096
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -1097
# br i1  %op255, label %label256, label %label260
	ld.b $t0, $fp, -1097
	bnez $t0, .long_func_label256
	b .long_func_label260
.long_func_label256:
# %op257 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1104
# %op258 = srem i32  %op257, 2
	ld.w $t0, $fp, -1104
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1108
# %op259 = icmp ne i32  %op258, 0
	ld.w $t0, $fp, -1108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -1109
# br i1  %op259, label %label264, label %label270
	ld.b $t0, $fp, -1109
	bnez $t0, .long_func_label264
	b .long_func_label270
.long_func_label260:
# %op261 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1116
# store i32  %op261, i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $fp, -1116
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op262 = load i32 , i32 * %op111
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1120
# store i32  %op262, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1120
	st.w $t1, $t0, 0
# %op263 = load i32 , i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1124
# store i32  %op263, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1124
	st.w $t1, $t0, 0
# br label %label297
	b .long_func_label297
.long_func_label264:
# %op265 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1128
# %op266 = srem i32  %op265, 2
	ld.w $t0, $fp, -1128
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1132
# %op267 = icmp eq i32  %op266, 0
	ld.w $t0, $fp, -1132
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -1133
# %op268 = zext i1  %op267 to i32 
	ld.b $t0, $fp, -1133
	st.w $t0, $fp, -1140
# %op269 = icmp ne i32  %op268, 0
	ld.w $t0, $fp, -1140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -1141
# br i1  %op269, label %label281, label %label288
	ld.b $t0, $fp, -1141
	bnez $t0, .long_func_label281
	b .long_func_label288
.long_func_label270:
# %op271 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1148
# %op272 = srem i32  %op271, 2
	ld.w $t0, $fp, -1148
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1152
# %op273 = icmp ne i32  %op272, 0
	ld.w $t0, $fp, -1152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -1153
# br i1  %op273, label %label289, label %label296
	ld.b $t0, $fp, -1153
	bnez $t0, .long_func_label289
	b .long_func_label296
.long_func_label274:
# %op275 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1160
# %op276 = sdiv i32  %op275, 2
	ld.w $t0, $fp, -1160
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1164
# store i32  %op276, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1164
	st.w $t1, $t0, 0
# %op277 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1168
# %op278 = sdiv i32  %op277, 2
	ld.w $t0, $fp, -1168
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1172
# store i32  %op278, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1172
	st.w $t1, $t0, 0
# %op279 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1176
# %op280 = add i32  %op279, 1
	ld.w $t0, $fp, -1176
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1180
# store i32  %op280, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1180
	st.w $t1, $t0, 0
# br label %label251
	b .long_func_label251
.long_func_label281:
# %op282 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1184
# %op283 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1188
# %op284 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op283
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1188
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1200
# %op285 = load i32 , i32 * %op284
	ld.d $t0, $fp, -1200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1204
# %op286 = mul i32  1, %op285
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1204
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1208
# %op287 = add i32  %op282, %op286
	ld.w $t0, $fp, -1184
	ld.w $t1, $fp, -1208
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1212
# store i32  %op287, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1212
	st.w $t1, $t0, 0
# br label %label288
	b .long_func_label288
.long_func_label288:
# br label %label274
	b .long_func_label274
.long_func_label289:
# %op290 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1216
# %op291 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1220
# %op292 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op291
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1220
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1232
# %op293 = load i32 , i32 * %op292
	ld.d $t0, $fp, -1232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1236
# %op294 = mul i32  1, %op293
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1236
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1240
# %op295 = add i32  %op290, %op294
	ld.w $t0, $fp, -1216
	ld.w $t1, $fp, -1240
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1244
# store i32  %op295, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1244
	st.w $t1, $t0, 0
# br label %label296
	b .long_func_label296
.long_func_label296:
# br label %label274
	b .long_func_label274
.long_func_label297:
# %op298 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1248
# %op299 = icmp slt i32  %op298, 16
	ld.w $t0, $fp, -1248
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1249
# %op300 = zext i1  %op299 to i32 
	ld.b $t0, $fp, -1249
	st.w $t0, $fp, -1256
# %op301 = icmp ne i32  %op300, 0
	ld.w $t0, $fp, -1256
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -1257
# br i1  %op301, label %label302, label %label306
	ld.b $t0, $fp, -1257
	bnez $t0, .long_func_label302
	b .long_func_label306
.long_func_label302:
# %op303 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1264
# %op304 = srem i32  %op303, 2
	ld.w $t0, $fp, -1264
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1268
# %op305 = icmp ne i32  %op304, 0
	ld.w $t0, $fp, -1268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -1269
# br i1  %op305, label %label325, label %label318
	ld.b $t0, $fp, -1269
	bnez $t0, .long_func_label325
	b .long_func_label318
.long_func_label306:
# %op307 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1276
# store i32  %op307, i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -1276
	st.w $t1, $t0, 0
# %op308 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1277
# %op309 = zext i1  %op308 to i32 
	ld.b $t0, $fp, -1277
	st.w $t0, $fp, -1284
# %op310 = icmp ne i32  %op309, 0
	ld.w $t0, $fp, -1284
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -1285
# br i1  %op310, label %label329, label %label330
	ld.b $t0, $fp, -1285
	bnez $t0, .long_func_label329
	b .long_func_label330
.long_func_label311:
# %op312 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1292
# %op313 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1296
# %op314 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op313
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1296
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1304
# %op315 = load i32 , i32 * %op314
	ld.d $t0, $fp, -1304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1308
# %op316 = mul i32  1, %op315
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1308
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1312
# %op317 = add i32  %op312, %op316
	ld.w $t0, $fp, -1292
	ld.w $t1, $fp, -1312
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1316
# store i32  %op317, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1316
	st.w $t1, $t0, 0
# br label %label318
	b .long_func_label318
.long_func_label318:
# %op319 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1320
# %op320 = sdiv i32  %op319, 2
	ld.w $t0, $fp, -1320
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1324
# store i32  %op320, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1324
	st.w $t1, $t0, 0
# %op321 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1328
# %op322 = sdiv i32  %op321, 2
	ld.w $t0, $fp, -1328
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1332
# store i32  %op322, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1332
	st.w $t1, $t0, 0
# %op323 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1336
# %op324 = add i32  %op323, 1
	ld.w $t0, $fp, -1336
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1340
# store i32  %op324, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1340
	st.w $t1, $t0, 0
# br label %label297
	b .long_func_label297
.long_func_label325:
# %op326 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1344
# %op327 = srem i32  %op326, 2
	ld.w $t0, $fp, -1344
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1348
# %op328 = icmp ne i32  %op327, 0
	ld.w $t0, $fp, -1348
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -1349
# br i1  %op328, label %label311, label %label318
	ld.b $t0, $fp, -1349
	bnez $t0, .long_func_label311
	b .long_func_label318
.long_func_label329:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label335
	b .long_func_label335
.long_func_label330:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op331 = load i32 , i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1356
# %op332 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1368
# %op333 = load i32 , i32 * %op332
	ld.d $t0, $fp, -1368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1372
# %op334 = mul i32  %op331, %op333
	ld.w $t0, $fp, -1356
	ld.w $t1, $fp, -1372
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1376
# store i32  %op334, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1376
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label338
	b .long_func_label338
.long_func_label335:
# %op336 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1380
# store i32  %op336, i32 * %op109
	ld.d $t0, $fp, -600
	ld.w $t1, $fp, -1380
	st.w $t1, $t0, 0
# %op337 = load i32 , i32 * %op108
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1384
# store i32  %op337, i32 * %op111
	ld.d $t0, $fp, -616
	ld.w $t1, $fp, -1384
	st.w $t1, $t0, 0
# br label %label237
	b .long_func_label237
.long_func_label338:
# %op339 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1388
# %op340 = icmp slt i32  %op339, 16
	ld.w $t0, $fp, -1388
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1389
# %op341 = zext i1  %op340 to i32 
	ld.b $t0, $fp, -1389
	st.w $t0, $fp, -1396
# %op342 = icmp ne i32  %op341, 0
	ld.w $t0, $fp, -1396
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label46
	addi.d $t2, $zero, 0
	b false_label46
true_label46:
	addi.d $t2, $zero, 1
false_label46:
	st.b $t2, $fp, -1397
# br i1  %op342, label %label343, label %label347
	ld.b $t0, $fp, -1397
	bnez $t0, .long_func_label343
	b .long_func_label347
.long_func_label343:
# %op344 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1404
# %op345 = srem i32  %op344, 2
	ld.w $t0, $fp, -1404
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1408
# %op346 = icmp ne i32  %op345, 0
	ld.w $t0, $fp, -1408
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -1409
# br i1  %op346, label %label362, label %label355
	ld.b $t0, $fp, -1409
	bnez $t0, .long_func_label362
	b .long_func_label355
.long_func_label347:
# br label %label335
	b .long_func_label335
.long_func_label348:
# %op349 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1416
# %op350 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1420
# %op351 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op350
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1420
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1432
# %op352 = load i32 , i32 * %op351
	ld.d $t0, $fp, -1432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1436
# %op353 = mul i32  1, %op352
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1436
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1440
# %op354 = add i32  %op349, %op353
	ld.w $t0, $fp, -1416
	ld.w $t1, $fp, -1440
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1444
# store i32  %op354, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1444
	st.w $t1, $t0, 0
# br label %label355
	b .long_func_label355
.long_func_label355:
# %op356 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1448
# %op357 = sdiv i32  %op356, 2
	ld.w $t0, $fp, -1448
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1452
# store i32  %op357, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1452
	st.w $t1, $t0, 0
# %op358 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1456
# %op359 = sdiv i32  %op358, 2
	ld.w $t0, $fp, -1456
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1460
# store i32  %op359, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1460
	st.w $t1, $t0, 0
# %op360 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1464
# %op361 = add i32  %op360, 1
	ld.w $t0, $fp, -1464
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1468
# store i32  %op361, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1468
	st.w $t1, $t0, 0
# br label %label338
	b .long_func_label338
.long_func_label362:
# %op363 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1472
# %op364 = srem i32  %op363, 2
	ld.w $t0, $fp, -1472
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1476
# %op365 = icmp ne i32  %op364, 0
	ld.w $t0, $fp, -1476
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label48
	addi.d $t2, $zero, 0
	b false_label48
true_label48:
	addi.d $t2, $zero, 1
false_label48:
	st.b $t2, $fp, -1477
# br i1  %op365, label %label348, label %label355
	ld.b $t0, $fp, -1477
	bnez $t0, .long_func_label348
	b .long_func_label355
.long_func_label366:
# %op367 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1484
# %op368 = icmp slt i32  %op367, 0
	ld.w $t0, $fp, -1484
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1485
# %op369 = zext i1  %op368 to i32 
	ld.b $t0, $fp, -1485
	st.w $t0, $fp, -1492
# %op370 = icmp ne i32  %op369, 0
	ld.w $t0, $fp, -1492
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -1493
# br i1  %op370, label %label378, label %label379
	ld.b $t0, $fp, -1493
	bnez $t0, .long_func_label378
	b .long_func_label379
.long_func_label371:
# %op372 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1500
# %op373 = icmp sgt i32  %op372, 0
	ld.w $t0, $fp, -1500
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1501
# %op374 = zext i1  %op373 to i32 
	ld.b $t0, $fp, -1501
	st.w $t0, $fp, -1508
# %op375 = icmp ne i32  %op374, 0
	ld.w $t0, $fp, -1508
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label52
	addi.d $t2, $zero, 0
	b false_label52
true_label52:
	addi.d $t2, $zero, 1
false_label52:
	st.b $t2, $fp, -1509
# br i1  %op375, label %label381, label %label386
	ld.b $t0, $fp, -1509
	bnez $t0, .long_func_label381
	b .long_func_label386
.long_func_label376:
# %op377 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1516
# store i32  %op377, i32 * %op53
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -1516
	st.w $t1, $t0, 0
# br label %label63
	b .long_func_label63
.long_func_label378:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label380
	b .long_func_label380
.long_func_label379:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label380
	b .long_func_label380
.long_func_label380:
# br label %label376
	b .long_func_label376
.long_func_label381:
# %op382 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1520
# %op383 = icmp sgt i32  %op382, 32767
	ld.w $t0, $fp, -1520
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	st.b $t2, $fp, -1521
# %op384 = zext i1  %op383 to i32 
	ld.b $t0, $fp, -1521
	st.w $t0, $fp, -1528
# %op385 = icmp ne i32  %op384, 0
	ld.w $t0, $fp, -1528
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label54
	addi.d $t2, $zero, 0
	b false_label54
true_label54:
	addi.d $t2, $zero, 1
false_label54:
	st.b $t2, $fp, -1529
# br i1  %op385, label %label389, label %label403
	ld.b $t0, $fp, -1529
	bnez $t0, .long_func_label389
	b .long_func_label403
.long_func_label386:
# %op387 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1536
# store i32  %op387, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1536
	st.w $t1, $t0, 0
# br label %label388
	b .long_func_label388
.long_func_label388:
# br label %label376
	b .long_func_label376
.long_func_label389:
# %op390 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1540
# %op391 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1544
# %op392 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op391
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1544
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1552
# %op393 = load i32 , i32 * %op392
	ld.d $t0, $fp, -1552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1556
# %op394 = sdiv i32  %op390, %op393
	ld.w $t0, $fp, -1540
	ld.w $t1, $fp, -1556
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1560
# store i32  %op394, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1560
	st.w $t1, $t0, 0
# %op395 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1564
# %op396 = add i32  %op395, 65536
	ld.w $t0, $fp, -1564
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1568
# %op397 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1572
# %op398 = sub i32  15, %op397
	addi.w $t0, $zero, 15
	ld.w $t1, $fp, -1572
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1576
# %op399 = add i32  %op398, 1
	ld.w $t0, $fp, -1576
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1580
# %op400 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op399
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1580
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1592
# %op401 = load i32 , i32 * %op400
	ld.d $t0, $fp, -1592
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1596
# %op402 = sub i32  %op396, %op401
	ld.w $t0, $fp, -1568
	ld.w $t1, $fp, -1596
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -1600
# store i32  %op402, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1600
	st.w $t1, $t0, 0
# br label %label409
	b .long_func_label409
.long_func_label403:
# %op404 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1604
# %op405 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1608
# %op406 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op405
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1608
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1616
# %op407 = load i32 , i32 * %op406
	ld.d $t0, $fp, -1616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1620
# %op408 = sdiv i32  %op404, %op407
	ld.w $t0, $fp, -1604
	ld.w $t1, $fp, -1620
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1624
# store i32  %op408, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1624
	st.w $t1, $t0, 0
# br label %label409
	b .long_func_label409
.long_func_label409:
# br label %label388
	b .long_func_label388
.long_func_label410:
# %op411 = load i32 , i32 * %op59
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1628
# %op412 = icmp ne i32  %op411, 0
	ld.w $t0, $fp, -1628
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label55
	addi.d $t2, $zero, 0
	b false_label55
true_label55:
	addi.d $t2, $zero, 1
false_label55:
	st.b $t2, $fp, -1629
# br i1  %op412, label %label413, label %label415
	ld.b $t0, $fp, -1629
	bnez $t0, .long_func_label413
	b .long_func_label415
.long_func_label413:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op414 = load i32 , i32 * %op59
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1636
# store i32  %op414, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1636
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label423
	b .long_func_label423
.long_func_label415:
# %op416 = load i32 , i32 * %op58
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1640
# store i32  %op416, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1640
	st.w $t1, $t0, 0
# %op417 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1644
# store i32  %op417, i32 * %op7
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -1644
	st.w $t1, $t0, 0
# %op418 = load i32 , i32 * %op6
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1648
# store i32  %op418, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1648
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op419 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1652
# %op420 = icmp sge i32  %op419, 15
	ld.w $t0, $fp, -1652
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label56
	addi.d $t2, $zero, 0
	b false_label56
true_label56:
	addi.d $t2, $zero, 1
false_label56:
	st.b $t2, $fp, -1653
# %op421 = zext i1  %op420 to i32 
	ld.b $t0, $fp, -1653
	st.w $t0, $fp, -1660
# %op422 = icmp ne i32  %op421, 0
	ld.w $t0, $fp, -1660
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label57
	addi.d $t2, $zero, 0
	b false_label57
true_label57:
	addi.d $t2, $zero, 1
false_label57:
	st.b $t2, $fp, -1661
# br i1  %op422, label %label762, label %label767
	ld.b $t0, $fp, -1661
	bnez $t0, .long_func_label762
	b .long_func_label767
.long_func_label423:
# %op424 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1668
# %op425 = icmp slt i32  %op424, 16
	ld.w $t0, $fp, -1668
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1669
# %op426 = zext i1  %op425 to i32 
	ld.b $t0, $fp, -1669
	st.w $t0, $fp, -1676
# %op427 = icmp ne i32  %op426, 0
	ld.w $t0, $fp, -1676
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label59
	addi.d $t2, $zero, 0
	b false_label59
true_label59:
	addi.d $t2, $zero, 1
false_label59:
	st.b $t2, $fp, -1677
# br i1  %op427, label %label428, label %label432
	ld.b $t0, $fp, -1677
	bnez $t0, .long_func_label428
	b .long_func_label432
.long_func_label428:
# %op429 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1684
# %op430 = srem i32  %op429, 2
	ld.w $t0, $fp, -1684
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1688
# %op431 = icmp ne i32  %op430, 0
	ld.w $t0, $fp, -1688
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label60
	addi.d $t2, $zero, 0
	b false_label60
true_label60:
	addi.d $t2, $zero, 1
false_label60:
	st.b $t2, $fp, -1689
# br i1  %op431, label %label449, label %label442
	ld.b $t0, $fp, -1689
	bnez $t0, .long_func_label449
	b .long_func_label442
.long_func_label432:
# %op433 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1696
# %op434 = icmp ne i32  %op433, 0
	ld.w $t0, $fp, -1696
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label61
	addi.d $t2, $zero, 0
	b false_label61
true_label61:
	addi.d $t2, $zero, 1
false_label61:
	st.b $t2, $fp, -1697
# br i1  %op434, label %label453, label %label459
	ld.b $t0, $fp, -1697
	bnez $t0, .long_func_label453
	b .long_func_label459
.long_func_label435:
# %op436 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1704
# %op437 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1708
# %op438 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op437
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1708
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -1720
# %op439 = load i32 , i32 * %op438
	ld.d $t0, $fp, -1720
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1724
# %op440 = mul i32  1, %op439
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -1724
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -1728
# %op441 = add i32  %op436, %op440
	ld.w $t0, $fp, -1704
	ld.w $t1, $fp, -1728
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1732
# store i32  %op441, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1732
	st.w $t1, $t0, 0
# br label %label442
	b .long_func_label442
.long_func_label442:
# %op443 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1736
# %op444 = sdiv i32  %op443, 2
	ld.w $t0, $fp, -1736
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1740
# store i32  %op444, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1740
	st.w $t1, $t0, 0
# %op445 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1744
# %op446 = sdiv i32  %op445, 2
	ld.w $t0, $fp, -1744
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1748
# store i32  %op446, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1748
	st.w $t1, $t0, 0
# %op447 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1752
# %op448 = add i32  %op447, 1
	ld.w $t0, $fp, -1752
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1756
# store i32  %op448, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1756
	st.w $t1, $t0, 0
# br label %label423
	b .long_func_label423
.long_func_label449:
# %op450 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1760
# %op451 = srem i32  %op450, 2
	ld.w $t0, $fp, -1760
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1764
# %op452 = icmp ne i32  %op451, 0
	ld.w $t0, $fp, -1764
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label62
	addi.d $t2, $zero, 0
	b false_label62
true_label62:
	addi.d $t2, $zero, 1
false_label62:
	st.b $t2, $fp, -1765
# br i1  %op452, label %label435, label %label442
	ld.b $t0, $fp, -1765
	bnez $t0, .long_func_label435
	b .long_func_label442
.long_func_label453:
# %op454 = alloca i32 
	addi.d $t1, $fp, -1780
	st.d $t1, $fp, -1776
# %op455 = alloca i32 
	addi.d $t1, $fp, -1796
	st.d $t1, $fp, -1792
# %op456 = load i32 , i32 * %op61
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1800
# store i32  %op456, i32 * %op455
	ld.d $t0, $fp, -1792
	ld.w $t1, $fp, -1800
	st.w $t1, $t0, 0
# %op457 = alloca i32 
	addi.d $t1, $fp, -1812
	st.d $t1, $fp, -1808
# %op458 = load i32 , i32 * %op58
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1816
# store i32  %op458, i32 * %op457
	ld.d $t0, $fp, -1808
	ld.w $t1, $fp, -1816
	st.w $t1, $t0, 0
# br label %label465
	b .long_func_label465
.long_func_label459:
# %op460 = alloca i32 
	addi.d $t1, $fp, -1828
	st.d $t1, $fp, -1824
# %op461 = alloca i32 
	addi.d $t1, $fp, -1844
	st.d $t1, $fp, -1840
# %op462 = load i32 , i32 * %op61
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1848
# store i32  %op462, i32 * %op461
	ld.d $t0, $fp, -1840
	ld.w $t1, $fp, -1848
	st.w $t1, $t0, 0
# %op463 = alloca i32 
	addi.d $t1, $fp, -1860
	st.d $t1, $fp, -1856
# %op464 = load i32 , i32 * %op61
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1864
# store i32  %op464, i32 * %op463
	ld.d $t0, $fp, -1856
	ld.w $t1, $fp, -1864
	st.w $t1, $t0, 0
# br label %label589
	b .long_func_label589
.long_func_label465:
# %op466 = load i32 , i32 * %op455
	ld.d $t0, $fp, -1792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1868
# %op467 = icmp ne i32  %op466, 0
	ld.w $t0, $fp, -1868
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label63
	addi.d $t2, $zero, 0
	b false_label63
true_label63:
	addi.d $t2, $zero, 1
false_label63:
	st.b $t2, $fp, -1869
# br i1  %op467, label %label468, label %label471
	ld.b $t0, $fp, -1869
	bnez $t0, .long_func_label468
	b .long_func_label471
.long_func_label468:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op469 = load i32 , i32 * %op457
	ld.d $t0, $fp, -1808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1876
# store i32  %op469, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1876
	st.w $t1, $t0, 0
# %op470 = load i32 , i32 * %op455
	ld.d $t0, $fp, -1792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1880
# store i32  %op470, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1880
	st.w $t1, $t0, 0
# br label %label474
	b .long_func_label474
.long_func_label471:
# %op472 = load i32 , i32 * %op457
	ld.d $t0, $fp, -1808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1884
# store i32  %op472, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -1884
	st.w $t1, $t0, 0
# %op473 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1888
# store i32  %op473, i32 * %op58
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -1888
	st.w $t1, $t0, 0
# br label %label459
	b .long_func_label459
.long_func_label474:
# %op475 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1892
# %op476 = icmp slt i32  %op475, 16
	ld.w $t0, $fp, -1892
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	st.b $t2, $fp, -1893
# %op477 = zext i1  %op476 to i32 
	ld.b $t0, $fp, -1893
	st.w $t0, $fp, -1900
# %op478 = icmp ne i32  %op477, 0
	ld.w $t0, $fp, -1900
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label65
	addi.d $t2, $zero, 0
	b false_label65
true_label65:
	addi.d $t2, $zero, 1
false_label65:
	st.b $t2, $fp, -1901
# br i1  %op478, label %label479, label %label483
	ld.b $t0, $fp, -1901
	bnez $t0, .long_func_label479
	b .long_func_label483
.long_func_label479:
# %op480 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1908
# %op481 = srem i32  %op480, 2
	ld.w $t0, $fp, -1908
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1912
# %op482 = icmp ne i32  %op481, 0
	ld.w $t0, $fp, -1912
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label66
	addi.d $t2, $zero, 0
	b false_label66
true_label66:
	addi.d $t2, $zero, 1
false_label66:
	st.b $t2, $fp, -1913
# br i1  %op482, label %label487, label %label493
	ld.b $t0, $fp, -1913
	bnez $t0, .long_func_label487
	b .long_func_label493
.long_func_label483:
# %op484 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1920
# store i32  %op484, i32 * %op454
	ld.d $t0, $fp, -1776
	ld.w $t1, $fp, -1920
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op485 = load i32 , i32 * %op457
	ld.d $t0, $fp, -1808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1924
# store i32  %op485, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1924
	st.w $t1, $t0, 0
# %op486 = load i32 , i32 * %op455
	ld.d $t0, $fp, -1792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1928
# store i32  %op486, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1928
	st.w $t1, $t0, 0
# br label %label520
	b .long_func_label520
.long_func_label487:
# %op488 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1932
# %op489 = srem i32  %op488, 2
	ld.w $t0, $fp, -1932
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1936
# %op490 = icmp eq i32  %op489, 0
	ld.w $t0, $fp, -1936
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label67
	addi.d $t2, $zero, 0
	b false_label67
true_label67:
	addi.d $t2, $zero, 1
false_label67:
	st.b $t2, $fp, -1937
# %op491 = zext i1  %op490 to i32 
	ld.b $t0, $fp, -1937
	st.w $t0, $fp, -1944
# %op492 = icmp ne i32  %op491, 0
	ld.w $t0, $fp, -1944
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label68
	addi.d $t2, $zero, 0
	b false_label68
true_label68:
	addi.d $t2, $zero, 1
false_label68:
	st.b $t2, $fp, -1945
# br i1  %op492, label %label504, label %label511
	ld.b $t0, $fp, -1945
	bnez $t0, .long_func_label504
	b .long_func_label511
.long_func_label493:
# %op494 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1952
# %op495 = srem i32  %op494, 2
	ld.w $t0, $fp, -1952
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -1956
# %op496 = icmp ne i32  %op495, 0
	ld.w $t0, $fp, -1956
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label69
	addi.d $t2, $zero, 0
	b false_label69
true_label69:
	addi.d $t2, $zero, 1
false_label69:
	st.b $t2, $fp, -1957
# br i1  %op496, label %label512, label %label519
	ld.b $t0, $fp, -1957
	bnez $t0, .long_func_label512
	b .long_func_label519
.long_func_label497:
# %op498 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1964
# %op499 = sdiv i32  %op498, 2
	ld.w $t0, $fp, -1964
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1968
# store i32  %op499, i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -1968
	st.w $t1, $t0, 0
# %op500 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1972
# %op501 = sdiv i32  %op500, 2
	ld.w $t0, $fp, -1972
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -1976
# store i32  %op501, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -1976
	st.w $t1, $t0, 0
# %op502 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1980
# %op503 = add i32  %op502, 1
	ld.w $t0, $fp, -1980
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1984
# store i32  %op503, i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -1984
	st.w $t1, $t0, 0
# br label %label474
	b .long_func_label474
.long_func_label504:
# %op505 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1988
# %op506 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1992
# %op507 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op506
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -1992
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -2000
# %op508 = load i32 , i32 * %op507
	ld.d $t0, $fp, -2000
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2004
# %op509 = mul i32  1, %op508
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -2004
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -2008
# %op510 = add i32  %op505, %op509
	ld.w $t0, $fp, -1988
	ld.w $t1, $fp, -2008
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2012
# store i32  %op510, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -2012
	st.w $t1, $t0, 0
# br label %label511
	b .long_func_label511
.long_func_label511:
# br label %label497
	b .long_func_label497
.long_func_label512:
# %op513 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2016
# %op514 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2020
# %op515 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op514
	la.local $t0, SHIFT_TABLE
	ld.w $t1, $fp, -2020
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -2032
# %op516 = load i32 , i32 * %op515
	ld.d $t0, $fp, -2032
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2036
# %op517 = mul i32  1, %op516
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -2036
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -2040
# %op518 = add i32  %op513, %op517
	ld.w $t0, $fp, -2016
	ld.w $t1, $fp, -2040
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -2044
# store i32  %op518, i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -2044
	st.w $t1, $t0, 0
# br label %label519
	b .long_func_label519
.long_func_label519:
# br label %label497
	b .long_func_label497
.long_func_label520:
# %op521 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -2048
# %op522 = icmp slt i32  %op521, 16
	ld.w $t0, $fp, -2048
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2047
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op523 = zext i1  %op522 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2047
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op524 = icmp ne i32  %op523, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label71
	addi.d $t2, $zero, 0
	b false_label71
true_label71:
	addi.d $t2, $zero, 1
false_label71:
	lu12i.w $t8, -1
	ori $t8, $t8, 2039
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op524, label %label525, label %label529
	lu12i.w $t0, -1
	ori $t0, $t0, 2039
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label525
	b .long_func_label529
.long_func_label525:
# %op526 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op527 = srem i32  %op526, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op528 = icmp ne i32  %op527, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label72
	addi.d $t2, $zero, 0
	b false_label72
true_label72:
	addi.d $t2, $zero, 1
false_label72:
	lu12i.w $t8, -1
	ori $t8, $t8, 2027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op528, label %label548, label %label541
	lu12i.w $t0, -1
	ori $t0, $t0, 2027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label548
	b .long_func_label541
.long_func_label529:
# %op530 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op530, i32 * %op455
	ld.d $t0, $fp, -1792
	lu12i.w $t1, -1
	ori $t1, $t1, 2020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op531 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 2019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op532 = zext i1  %op531 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 2019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op533 = icmp ne i32  %op532, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label74
	addi.d $t2, $zero, 0
	b false_label74
true_label74:
	addi.d $t2, $zero, 1
false_label74:
	lu12i.w $t8, -1
	ori $t8, $t8, 2011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op533, label %label552, label %label553
	lu12i.w $t0, -1
	ori $t0, $t0, 2011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label552
	b .long_func_label553
.long_func_label534:
# %op535 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op536 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op537 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op536
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op538 = load i32 , i32 * %op537
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
# %op539 = mul i32  1, %op538
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op540 = add i32  %op535, %op539
	lu12i.w $t0, -1
	ori $t0, $t0, 2004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op540, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label541
	b .long_func_label541
.long_func_label541:
# %op542 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op543 = sdiv i32  %op542, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op543, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op544 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op545 = sdiv i32  %op544, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op545, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op546 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op547 = add i32  %op546, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op547, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label520
	b .long_func_label520
.long_func_label548:
# %op549 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op550 = srem i32  %op549, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op551 = icmp ne i32  %op550, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label75
	addi.d $t2, $zero, 0
	b false_label75
true_label75:
	addi.d $t2, $zero, 1
false_label75:
	lu12i.w $t8, -1
	ori $t8, $t8, 1947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op551, label %label534, label %label541
	lu12i.w $t0, -1
	ori $t0, $t0, 1947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label534
	b .long_func_label541
.long_func_label552:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label558
	b .long_func_label558
.long_func_label553:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op554 = load i32 , i32 * %op455
	ld.d $t0, $fp, -1792
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op555 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op556 = load i32 , i32 * %op555
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
# %op557 = mul i32  %op554, %op556
	lu12i.w $t0, -1
	ori $t0, $t0, 1940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op557, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label561
	b .long_func_label561
.long_func_label558:
# %op559 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op559, i32 * %op455
	ld.d $t0, $fp, -1792
	lu12i.w $t1, -1
	ori $t1, $t1, 1916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op560 = load i32 , i32 * %op454
	ld.d $t0, $fp, -1776
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op560, i32 * %op457
	ld.d $t0, $fp, -1808
	lu12i.w $t1, -1
	ori $t1, $t1, 1912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label465
	b .long_func_label465
.long_func_label561:
# %op562 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op563 = icmp slt i32  %op562, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1907
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op564 = zext i1  %op563 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1907
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op565 = icmp ne i32  %op564, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label77
	addi.d $t2, $zero, 0
	b false_label77
true_label77:
	addi.d $t2, $zero, 1
false_label77:
	lu12i.w $t8, -1
	ori $t8, $t8, 1899
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op565, label %label566, label %label570
	lu12i.w $t0, -1
	ori $t0, $t0, 1899
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label566
	b .long_func_label570
.long_func_label566:
# %op567 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op568 = srem i32  %op567, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op569 = icmp ne i32  %op568, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label78
	addi.d $t2, $zero, 0
	b false_label78
true_label78:
	addi.d $t2, $zero, 1
false_label78:
	lu12i.w $t8, -1
	ori $t8, $t8, 1887
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op569, label %label585, label %label578
	lu12i.w $t0, -1
	ori $t0, $t0, 1887
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label585
	b .long_func_label578
.long_func_label570:
# br label %label558
	b .long_func_label558
.long_func_label571:
# %op572 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op573 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op574 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op573
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op575 = load i32 , i32 * %op574
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op576 = mul i32  1, %op575
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op577 = add i32  %op572, %op576
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op577, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label578
	b .long_func_label578
.long_func_label578:
# %op579 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op580 = sdiv i32  %op579, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op580, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op581 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op582 = sdiv i32  %op581, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op582, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op583 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op584 = add i32  %op583, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op584, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label561
	b .long_func_label561
.long_func_label585:
# %op586 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op587 = srem i32  %op586, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op588 = icmp ne i32  %op587, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label79
	addi.d $t2, $zero, 0
	b false_label79
true_label79:
	addi.d $t2, $zero, 1
false_label79:
	lu12i.w $t8, -1
	ori $t8, $t8, 1819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op588, label %label571, label %label578
	lu12i.w $t0, -1
	ori $t0, $t0, 1819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label571
	b .long_func_label578
.long_func_label589:
# %op590 = load i32 , i32 * %op461
	ld.d $t0, $fp, -1840
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op591 = icmp ne i32  %op590, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label80
	addi.d $t2, $zero, 0
	b false_label80
true_label80:
	addi.d $t2, $zero, 1
false_label80:
	lu12i.w $t8, -1
	ori $t8, $t8, 1811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op591, label %label592, label %label595
	lu12i.w $t0, -1
	ori $t0, $t0, 1811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label592
	b .long_func_label595
.long_func_label592:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op593 = load i32 , i32 * %op463
	ld.d $t0, $fp, -1856
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op593, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op594 = load i32 , i32 * %op461
	ld.d $t0, $fp, -1840
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op594, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label603
	b .long_func_label603
.long_func_label595:
# %op596 = load i32 , i32 * %op463
	ld.d $t0, $fp, -1856
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op596, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op597 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op597, i32 * %op61
	ld.d $t0, $fp, -400
	lu12i.w $t1, -1
	ori $t1, $t1, 1792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op598 = load i32 , i32 * %op59
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op598, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op599 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op600 = icmp sge i32  %op599, 15
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label81
	addi.d $t2, $zero, 0
	b false_label81
true_label81:
	addi.d $t2, $zero, 1
false_label81:
	lu12i.w $t8, -1
	ori $t8, $t8, 1783
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op601 = zext i1  %op600 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1783
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op602 = icmp ne i32  %op601, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label82
	addi.d $t2, $zero, 0
	b false_label82
true_label82:
	addi.d $t2, $zero, 1
false_label82:
	lu12i.w $t8, -1
	ori $t8, $t8, 1775
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op602, label %label718, label %label723
	lu12i.w $t0, -1
	ori $t0, $t0, 1775
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label718
	b .long_func_label723
.long_func_label603:
# %op604 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op605 = icmp slt i32  %op604, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1767
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op606 = zext i1  %op605 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1767
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op607 = icmp ne i32  %op606, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label84
	addi.d $t2, $zero, 0
	b false_label84
true_label84:
	addi.d $t2, $zero, 1
false_label84:
	lu12i.w $t8, -1
	ori $t8, $t8, 1759
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op607, label %label608, label %label612
	lu12i.w $t0, -1
	ori $t0, $t0, 1759
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label608
	b .long_func_label612
.long_func_label608:
# %op609 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op610 = srem i32  %op609, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op611 = icmp ne i32  %op610, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label85
	addi.d $t2, $zero, 0
	b false_label85
true_label85:
	addi.d $t2, $zero, 1
false_label85:
	lu12i.w $t8, -1
	ori $t8, $t8, 1747
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op611, label %label616, label %label622
	lu12i.w $t0, -1
	ori $t0, $t0, 1747
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label616
	b .long_func_label622
.long_func_label612:
# %op613 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op613, i32 * %op460
	ld.d $t0, $fp, -1824
	lu12i.w $t1, -1
	ori $t1, $t1, 1740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op614 = load i32 , i32 * %op463
	ld.d $t0, $fp, -1856
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op614, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op615 = load i32 , i32 * %op461
	ld.d $t0, $fp, -1840
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op615, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label649
	b .long_func_label649
.long_func_label616:
# %op617 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op618 = srem i32  %op617, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op619 = icmp eq i32  %op618, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label86
	addi.d $t2, $zero, 0
	b false_label86
true_label86:
	addi.d $t2, $zero, 1
false_label86:
	lu12i.w $t8, -1
	ori $t8, $t8, 1723
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op620 = zext i1  %op619 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1723
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op621 = icmp ne i32  %op620, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label87
	addi.d $t2, $zero, 0
	b false_label87
true_label87:
	addi.d $t2, $zero, 1
false_label87:
	lu12i.w $t8, -1
	ori $t8, $t8, 1715
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op621, label %label633, label %label640
	lu12i.w $t0, -1
	ori $t0, $t0, 1715
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label633
	b .long_func_label640
.long_func_label622:
# %op623 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op624 = srem i32  %op623, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op625 = icmp ne i32  %op624, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label88
	addi.d $t2, $zero, 0
	b false_label88
true_label88:
	addi.d $t2, $zero, 1
false_label88:
	lu12i.w $t8, -1
	ori $t8, $t8, 1703
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op625, label %label641, label %label648
	lu12i.w $t0, -1
	ori $t0, $t0, 1703
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label641
	b .long_func_label648
.long_func_label626:
# %op627 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op628 = sdiv i32  %op627, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op628, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op629 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op630 = sdiv i32  %op629, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op630, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op631 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op632 = add i32  %op631, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op632, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label603
	b .long_func_label603
.long_func_label633:
# %op634 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op635 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op636 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op635
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op637 = load i32 , i32 * %op636
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
# %op638 = mul i32  1, %op637
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op639 = add i32  %op634, %op638
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op639, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label640
	b .long_func_label640
.long_func_label640:
# br label %label626
	b .long_func_label626
.long_func_label641:
# %op642 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op643 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op644 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op643
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op645 = load i32 , i32 * %op644
	lu12i.w $t0, -1
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op646 = mul i32  1, %op645
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op647 = add i32  %op642, %op646
	lu12i.w $t0, -1
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op647, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label648
	b .long_func_label648
.long_func_label648:
# br label %label626
	b .long_func_label626
.long_func_label649:
# %op650 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op651 = icmp slt i32  %op650, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1607
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op652 = zext i1  %op651 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1607
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op653 = icmp ne i32  %op652, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label90
	addi.d $t2, $zero, 0
	b false_label90
true_label90:
	addi.d $t2, $zero, 1
false_label90:
	lu12i.w $t8, -1
	ori $t8, $t8, 1599
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op653, label %label654, label %label658
	lu12i.w $t0, -1
	ori $t0, $t0, 1599
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label654
	b .long_func_label658
.long_func_label654:
# %op655 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op656 = srem i32  %op655, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op657 = icmp ne i32  %op656, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label91
	addi.d $t2, $zero, 0
	b false_label91
true_label91:
	addi.d $t2, $zero, 1
false_label91:
	lu12i.w $t8, -1
	ori $t8, $t8, 1587
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op657, label %label677, label %label670
	lu12i.w $t0, -1
	ori $t0, $t0, 1587
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label677
	b .long_func_label670
.long_func_label658:
# %op659 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op659, i32 * %op461
	ld.d $t0, $fp, -1840
	lu12i.w $t1, -1
	ori $t1, $t1, 1580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op660 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1579
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op661 = zext i1  %op660 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1579
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op662 = icmp ne i32  %op661, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label93
	addi.d $t2, $zero, 0
	b false_label93
true_label93:
	addi.d $t2, $zero, 1
false_label93:
	lu12i.w $t8, -1
	ori $t8, $t8, 1571
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op662, label %label681, label %label682
	lu12i.w $t0, -1
	ori $t0, $t0, 1571
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label681
	b .long_func_label682
.long_func_label663:
# %op664 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op665 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op666 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op665
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op667 = load i32 , i32 * %op666
	lu12i.w $t0, -1
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op668 = mul i32  1, %op667
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op669 = add i32  %op664, %op668
	lu12i.w $t0, -1
	ori $t0, $t0, 1564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op669, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label670
	b .long_func_label670
.long_func_label670:
# %op671 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op672 = sdiv i32  %op671, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op672, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op673 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op674 = sdiv i32  %op673, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op674, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op675 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op676 = add i32  %op675, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op676, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label649
	b .long_func_label649
.long_func_label677:
# %op678 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op679 = srem i32  %op678, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op680 = icmp ne i32  %op679, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label94
	addi.d $t2, $zero, 0
	b false_label94
true_label94:
	addi.d $t2, $zero, 1
false_label94:
	lu12i.w $t8, -1
	ori $t8, $t8, 1507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op680, label %label663, label %label670
	lu12i.w $t0, -1
	ori $t0, $t0, 1507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label663
	b .long_func_label670
.long_func_label681:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label687
	b .long_func_label687
.long_func_label682:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op683 = load i32 , i32 * %op461
	ld.d $t0, $fp, -1840
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op684 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op685 = load i32 , i32 * %op684
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op686 = mul i32  %op683, %op685
	lu12i.w $t0, -1
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op686, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label690
	b .long_func_label690
.long_func_label687:
# %op688 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op688, i32 * %op461
	ld.d $t0, $fp, -1840
	lu12i.w $t1, -1
	ori $t1, $t1, 1476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op689 = load i32 , i32 * %op460
	ld.d $t0, $fp, -1824
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op689, i32 * %op463
	ld.d $t0, $fp, -1856
	lu12i.w $t1, -1
	ori $t1, $t1, 1472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label589
	b .long_func_label589
.long_func_label690:
# %op691 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op692 = icmp slt i32  %op691, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1467
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op693 = zext i1  %op692 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1467
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op694 = icmp ne i32  %op693, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label96
	addi.d $t2, $zero, 0
	b false_label96
true_label96:
	addi.d $t2, $zero, 1
false_label96:
	lu12i.w $t8, -1
	ori $t8, $t8, 1459
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op694, label %label695, label %label699
	lu12i.w $t0, -1
	ori $t0, $t0, 1459
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label695
	b .long_func_label699
.long_func_label695:
# %op696 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op697 = srem i32  %op696, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op698 = icmp ne i32  %op697, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label97
	addi.d $t2, $zero, 0
	b false_label97
true_label97:
	addi.d $t2, $zero, 1
false_label97:
	lu12i.w $t8, -1
	ori $t8, $t8, 1447
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op698, label %label714, label %label707
	lu12i.w $t0, -1
	ori $t0, $t0, 1447
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label714
	b .long_func_label707
.long_func_label699:
# br label %label687
	b .long_func_label687
.long_func_label700:
# %op701 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op702 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op703 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op702
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op704 = load i32 , i32 * %op703
	lu12i.w $t0, -1
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op705 = mul i32  1, %op704
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op706 = add i32  %op701, %op705
	lu12i.w $t0, -1
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op706, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label707
	b .long_func_label707
.long_func_label707:
# %op708 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op709 = sdiv i32  %op708, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op709, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op710 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op711 = sdiv i32  %op710, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op711, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 1396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op712 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op713 = add i32  %op712, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op713, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 1388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label690
	b .long_func_label690
.long_func_label714:
# %op715 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op716 = srem i32  %op715, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op717 = icmp ne i32  %op716, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label98
	addi.d $t2, $zero, 0
	b false_label98
true_label98:
	addi.d $t2, $zero, 1
false_label98:
	lu12i.w $t8, -1
	ori $t8, $t8, 1379
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op717, label %label700, label %label707
	lu12i.w $t0, -1
	ori $t0, $t0, 1379
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label700
	b .long_func_label707
.long_func_label718:
# %op719 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op720 = icmp slt i32  %op719, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1371
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op721 = zext i1  %op720 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1371
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op722 = icmp ne i32  %op721, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label100
	addi.d $t2, $zero, 0
	b false_label100
true_label100:
	addi.d $t2, $zero, 1
false_label100:
	lu12i.w $t8, -1
	ori $t8, $t8, 1363
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op722, label %label730, label %label731
	lu12i.w $t0, -1
	ori $t0, $t0, 1363
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label730
	b .long_func_label731
.long_func_label723:
# %op724 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op725 = icmp sgt i32  %op724, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1355
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op726 = zext i1  %op725 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1355
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op727 = icmp ne i32  %op726, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label102
	addi.d $t2, $zero, 0
	b false_label102
true_label102:
	addi.d $t2, $zero, 1
false_label102:
	lu12i.w $t8, -1
	ori $t8, $t8, 1347
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op727, label %label733, label %label738
	lu12i.w $t0, -1
	ori $t0, $t0, 1347
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label733
	b .long_func_label738
.long_func_label728:
# %op729 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op729, i32 * %op59
	ld.d $t0, $fp, -384
	lu12i.w $t1, -1
	ori $t1, $t1, 1340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label410
	b .long_func_label410
.long_func_label730:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label732
	b .long_func_label732
.long_func_label731:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label732
	b .long_func_label732
.long_func_label732:
# br label %label728
	b .long_func_label728
.long_func_label733:
# %op734 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op735 = icmp sgt i32  %op734, 32767
	lu12i.w $t0, -1
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1335
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op736 = zext i1  %op735 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1335
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op737 = icmp ne i32  %op736, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label104
	addi.d $t2, $zero, 0
	b false_label104
true_label104:
	addi.d $t2, $zero, 1
false_label104:
	lu12i.w $t8, -1
	ori $t8, $t8, 1327
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op737, label %label741, label %label755
	lu12i.w $t0, -1
	ori $t0, $t0, 1327
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label741
	b .long_func_label755
.long_func_label738:
# %op739 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op739, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1320
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label740
	b .long_func_label740
.long_func_label740:
# br label %label728
	b .long_func_label728
.long_func_label741:
# %op742 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op743 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op744 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op743
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op745 = load i32 , i32 * %op744
	lu12i.w $t0, -1
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op746 = sdiv i32  %op742, %op745
	lu12i.w $t0, -1
	ori $t0, $t0, 1316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1300
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op746, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op747 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op748 = add i32  %op747, 65536
	lu12i.w $t0, -1
	ori $t0, $t0, 1292
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op749 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op750 = sub i32  15, %op749
	addi.w $t0, $zero, 15
	lu12i.w $t1, -1
	ori $t1, $t1, 1284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op751 = add i32  %op750, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op752 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op751
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op753 = load i32 , i32 * %op752
	lu12i.w $t0, -1
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op754 = sub i32  %op748, %op753
	lu12i.w $t0, -1
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op754, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1256
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label761
	b .long_func_label761
.long_func_label755:
# %op756 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op757 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op758 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op757
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op759 = load i32 , i32 * %op758
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op760 = sdiv i32  %op756, %op759
	lu12i.w $t0, -1
	ori $t0, $t0, 1252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op760, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label761
	b .long_func_label761
.long_func_label761:
# br label %label740
	b .long_func_label740
.long_func_label762:
# %op763 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op764 = icmp slt i32  %op763, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1227
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op765 = zext i1  %op764 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1227
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op766 = icmp ne i32  %op765, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label106
	addi.d $t2, $zero, 0
	b false_label106
true_label106:
	addi.d $t2, $zero, 1
false_label106:
	lu12i.w $t8, -1
	ori $t8, $t8, 1219
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op766, label %label774, label %label775
	lu12i.w $t0, -1
	ori $t0, $t0, 1219
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label774
	b .long_func_label775
.long_func_label767:
# %op768 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op769 = icmp sgt i32  %op768, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1211
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op770 = zext i1  %op769 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1211
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op771 = icmp ne i32  %op770, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label108
	addi.d $t2, $zero, 0
	b false_label108
true_label108:
	addi.d $t2, $zero, 1
false_label108:
	lu12i.w $t8, -1
	ori $t8, $t8, 1203
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op771, label %label777, label %label782
	lu12i.w $t0, -1
	ori $t0, $t0, 1203
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label777
	b .long_func_label782
.long_func_label772:
# %op773 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op773, i32 * %op6
	ld.d $t0, $fp, -120
	lu12i.w $t1, -1
	ori $t1, $t1, 1196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label8
	b .long_func_label8
.long_func_label774:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label776
	b .long_func_label776
.long_func_label775:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label776
	b .long_func_label776
.long_func_label776:
# br label %label772
	b .long_func_label772
.long_func_label777:
# %op778 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op779 = icmp sgt i32  %op778, 32767
	lu12i.w $t0, -1
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1191
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op780 = zext i1  %op779 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1191
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op781 = icmp ne i32  %op780, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label110
	addi.d $t2, $zero, 0
	b false_label110
true_label110:
	addi.d $t2, $zero, 1
false_label110:
	lu12i.w $t8, -1
	ori $t8, $t8, 1183
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op781, label %label785, label %label799
	lu12i.w $t0, -1
	ori $t0, $t0, 1183
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label785
	b .long_func_label799
.long_func_label782:
# %op783 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op783, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label784
	b .long_func_label784
.long_func_label784:
# br label %label772
	b .long_func_label772
.long_func_label785:
# %op786 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op787 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op788 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op787
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op789 = load i32 , i32 * %op788
	lu12i.w $t0, -1
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op790 = sdiv i32  %op786, %op789
	lu12i.w $t0, -1
	ori $t0, $t0, 1172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op790, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op791 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op792 = add i32  %op791, 65536
	lu12i.w $t0, -1
	ori $t0, $t0, 1148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op793 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op794 = sub i32  15, %op793
	addi.w $t0, $zero, 15
	lu12i.w $t1, -1
	ori $t1, $t1, 1140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op795 = add i32  %op794, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op796 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op795
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op797 = load i32 , i32 * %op796
	lu12i.w $t0, -1
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op798 = sub i32  %op792, %op797
	lu12i.w $t0, -1
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op798, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label805
	b .long_func_label805
.long_func_label799:
# %op800 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op801 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op802 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op801
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op803 = load i32 , i32 * %op802
	lu12i.w $t0, -1
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op804 = sdiv i32  %op800, %op803
	lu12i.w $t0, -1
	ori $t0, $t0, 1108
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op804, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label805
	b .long_func_label805
.long_func_label805:
# br label %label784
	b .long_func_label784
.long_func_label806:
# %op807 = load i32 , i32 * %op19
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op808 = icmp sgt i32  %op807, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 1083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op809 = zext i1  %op808 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op810 = icmp ne i32  %op809, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label112
	addi.d $t2, $zero, 0
	b false_label112
true_label112:
	addi.d $t2, $zero, 1
false_label112:
	lu12i.w $t8, -1
	ori $t8, $t8, 1075
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op810, label %label811, label %label813
	lu12i.w $t0, -1
	ori $t0, $t0, 1075
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label811
	b .long_func_label813
.long_func_label811:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op812 = load i32 , i32 * %op19
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op812, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 1068
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label816
	b .long_func_label816
.long_func_label813:
# %op814 = load i32 , i32 * %op18
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op814, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 1064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op815 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @putint(i32  %op815)
	lu12i.w $a0, -1
	ori $a0, $a0, 1060
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# store i32  2, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label1601
	b .long_func_label1601
.long_func_label816:
# %op817 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op818 = icmp slt i32  %op817, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1055
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op819 = zext i1  %op818 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 1055
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op820 = icmp ne i32  %op819, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label114
	addi.d $t2, $zero, 0
	b false_label114
true_label114:
	addi.d $t2, $zero, 1
false_label114:
	lu12i.w $t8, -1
	ori $t8, $t8, 1047
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op820, label %label821, label %label825
	lu12i.w $t0, -1
	ori $t0, $t0, 1047
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label821
	b .long_func_label825
.long_func_label821:
# %op822 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op823 = srem i32  %op822, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op824 = icmp ne i32  %op823, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label115
	addi.d $t2, $zero, 0
	b false_label115
true_label115:
	addi.d $t2, $zero, 1
false_label115:
	lu12i.w $t8, -1
	ori $t8, $t8, 1035
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op824, label %label842, label %label835
	lu12i.w $t0, -1
	ori $t0, $t0, 1035
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label842
	b .long_func_label835
.long_func_label825:
# %op826 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op827 = icmp ne i32  %op826, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label116
	addi.d $t2, $zero, 0
	b false_label116
true_label116:
	addi.d $t2, $zero, 1
false_label116:
	lu12i.w $t8, -1
	ori $t8, $t8, 1027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op827, label %label846, label %label852
	lu12i.w $t0, -1
	ori $t0, $t0, 1027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label846
	b .long_func_label852
.long_func_label828:
# %op829 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op830 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op831 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op830
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 1016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op832 = load i32 , i32 * %op831
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 1004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op833 = mul i32  1, %op832
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 1004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op834 = add i32  %op829, %op833
	lu12i.w $t0, -1
	ori $t0, $t0, 1020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 1000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op834, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label835
	b .long_func_label835
.long_func_label835:
# %op836 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op837 = sdiv i32  %op836, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op837, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op838 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op839 = sdiv i32  %op838, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op839, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op840 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op841 = add i32  %op840, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op841, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label816
	b .long_func_label816
.long_func_label842:
# %op843 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op844 = srem i32  %op843, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op845 = icmp ne i32  %op844, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label117
	addi.d $t2, $zero, 0
	b false_label117
true_label117:
	addi.d $t2, $zero, 1
false_label117:
	lu12i.w $t8, -1
	ori $t8, $t8, 963
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op845, label %label828, label %label835
	lu12i.w $t0, -1
	ori $t0, $t0, 963
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label828
	b .long_func_label835
.long_func_label846:
# %op847 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op847
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op848 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op849 = load i32 , i32 * %op20
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op849, i32 * %op848
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op850 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op851 = load i32 , i32 * %op18
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op851, i32 * %op850
	lu12i.w $t0, -1
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label858
	b .long_func_label858
.long_func_label852:
# %op853 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op853
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op854 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op855 = load i32 , i32 * %op20
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op855, i32 * %op854
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 880
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op856 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op857 = load i32 , i32 * %op20
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op857, i32 * %op856
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1205
	b .long_func_label1205
.long_func_label858:
# %op859 = load i32 , i32 * %op848
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op860 = icmp ne i32  %op859, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label118
	addi.d $t2, $zero, 0
	b false_label118
true_label118:
	addi.d $t2, $zero, 1
false_label118:
	lu12i.w $t8, -1
	ori $t8, $t8, 859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op860, label %label861, label %label863
	lu12i.w $t0, -1
	ori $t0, $t0, 859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label861
	b .long_func_label863
.long_func_label861:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op862 = load i32 , i32 * %op848
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op862, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label866
	b .long_func_label866
.long_func_label863:
# %op864 = load i32 , i32 * %op847
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op864, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op865 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op865, i32 * %op18
	ld.d $t0, $fp, -176
	lu12i.w $t1, -1
	ori $t1, $t1, 844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label852
	b .long_func_label852
.long_func_label866:
# %op867 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op868 = icmp slt i32  %op867, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 839
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op869 = zext i1  %op868 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 839
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op870 = icmp ne i32  %op869, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label120
	addi.d $t2, $zero, 0
	b false_label120
true_label120:
	addi.d $t2, $zero, 1
false_label120:
	lu12i.w $t8, -1
	ori $t8, $t8, 831
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op870, label %label871, label %label875
	lu12i.w $t0, -1
	ori $t0, $t0, 831
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label871
	b .long_func_label875
.long_func_label871:
# %op872 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op873 = srem i32  %op872, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op874 = icmp ne i32  %op873, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label121
	addi.d $t2, $zero, 0
	b false_label121
true_label121:
	addi.d $t2, $zero, 1
false_label121:
	lu12i.w $t8, -1
	ori $t8, $t8, 819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op874, label %label892, label %label885
	lu12i.w $t0, -1
	ori $t0, $t0, 819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label892
	b .long_func_label885
.long_func_label875:
# %op876 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op877 = icmp ne i32  %op876, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label122
	addi.d $t2, $zero, 0
	b false_label122
true_label122:
	addi.d $t2, $zero, 1
false_label122:
	lu12i.w $t8, -1
	ori $t8, $t8, 811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op877, label %label896, label %label902
	lu12i.w $t0, -1
	ori $t0, $t0, 811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label896
	b .long_func_label902
.long_func_label878:
# %op879 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op880 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op881 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op880
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op882 = load i32 , i32 * %op881
	lu12i.w $t0, -1
	ori $t0, $t0, 792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op883 = mul i32  1, %op882
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op884 = add i32  %op879, %op883
	lu12i.w $t0, -1
	ori $t0, $t0, 804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op884, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label885
	b .long_func_label885
.long_func_label885:
# %op886 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op887 = sdiv i32  %op886, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op887, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op888 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op889 = sdiv i32  %op888, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op889, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op890 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op891 = add i32  %op890, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op891, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label866
	b .long_func_label866
.long_func_label892:
# %op893 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op894 = srem i32  %op893, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op895 = icmp ne i32  %op894, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label123
	addi.d $t2, $zero, 0
	b false_label123
true_label123:
	addi.d $t2, $zero, 1
false_label123:
	lu12i.w $t8, -1
	ori $t8, $t8, 747
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op895, label %label878, label %label885
	lu12i.w $t0, -1
	ori $t0, $t0, 747
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label878
	b .long_func_label885
.long_func_label896:
# %op897 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op898 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op899 = load i32 , i32 * %op850
	lu12i.w $t0, -1
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op899, i32 * %op898
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op900 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op901 = load i32 , i32 * %op847
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op901, i32 * %op900
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 696
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label908
	b .long_func_label908
.long_func_label902:
# %op903 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op904 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op905 = load i32 , i32 * %op850
	lu12i.w $t0, -1
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op905, i32 * %op904
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op906 = alloca i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op907 = load i32 , i32 * %op850
	lu12i.w $t0, -1
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op907, i32 * %op906
	lu12i.w $t0, -1
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1032
	b .long_func_label1032
.long_func_label908:
# %op909 = load i32 , i32 * %op898
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op910 = icmp ne i32  %op909, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label124
	addi.d $t2, $zero, 0
	b false_label124
true_label124:
	addi.d $t2, $zero, 1
false_label124:
	lu12i.w $t8, -1
	ori $t8, $t8, 643
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op910, label %label911, label %label914
	lu12i.w $t0, -1
	ori $t0, $t0, 643
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label911
	b .long_func_label914
.long_func_label911:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op912 = load i32 , i32 * %op900
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op912, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op913 = load i32 , i32 * %op898
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op913, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 632
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label917
	b .long_func_label917
.long_func_label914:
# %op915 = load i32 , i32 * %op900
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op915, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op916 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op916, i32 * %op847
	lu12i.w $t0, -1
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label902
	b .long_func_label902
.long_func_label917:
# %op918 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op919 = icmp slt i32  %op918, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 619
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op920 = zext i1  %op919 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 619
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op921 = icmp ne i32  %op920, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label126
	addi.d $t2, $zero, 0
	b false_label126
true_label126:
	addi.d $t2, $zero, 1
false_label126:
	lu12i.w $t8, -1
	ori $t8, $t8, 611
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op921, label %label922, label %label926
	lu12i.w $t0, -1
	ori $t0, $t0, 611
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label922
	b .long_func_label926
.long_func_label922:
# %op923 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op924 = srem i32  %op923, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op925 = icmp ne i32  %op924, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label127
	addi.d $t2, $zero, 0
	b false_label127
true_label127:
	addi.d $t2, $zero, 1
false_label127:
	lu12i.w $t8, -1
	ori $t8, $t8, 599
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op925, label %label930, label %label936
	lu12i.w $t0, -1
	ori $t0, $t0, 599
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label930
	b .long_func_label936
.long_func_label926:
# %op927 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op927, i32 * %op897
	lu12i.w $t0, -1
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op928 = load i32 , i32 * %op900
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op928, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op929 = load i32 , i32 * %op898
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op929, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label963
	b .long_func_label963
.long_func_label930:
# %op931 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op932 = srem i32  %op931, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op933 = icmp eq i32  %op932, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label128
	addi.d $t2, $zero, 0
	b false_label128
true_label128:
	addi.d $t2, $zero, 1
false_label128:
	lu12i.w $t8, -1
	ori $t8, $t8, 575
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op934 = zext i1  %op933 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 575
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op935 = icmp ne i32  %op934, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label129
	addi.d $t2, $zero, 0
	b false_label129
true_label129:
	addi.d $t2, $zero, 1
false_label129:
	lu12i.w $t8, -1
	ori $t8, $t8, 567
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op935, label %label947, label %label954
	lu12i.w $t0, -1
	ori $t0, $t0, 567
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label947
	b .long_func_label954
.long_func_label936:
# %op937 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op938 = srem i32  %op937, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op939 = icmp ne i32  %op938, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label130
	addi.d $t2, $zero, 0
	b false_label130
true_label130:
	addi.d $t2, $zero, 1
false_label130:
	lu12i.w $t8, -1
	ori $t8, $t8, 555
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op939, label %label955, label %label962
	lu12i.w $t0, -1
	ori $t0, $t0, 555
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label955
	b .long_func_label962
.long_func_label940:
# %op941 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op942 = sdiv i32  %op941, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op942, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op943 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op944 = sdiv i32  %op943, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op944, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op945 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op946 = add i32  %op945, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op946, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label917
	b .long_func_label917
.long_func_label947:
# %op948 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op949 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op950 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op949
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op951 = load i32 , i32 * %op950
	lu12i.w $t0, -1
	ori $t0, $t0, 512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op952 = mul i32  1, %op951
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 508
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op953 = add i32  %op948, %op952
	lu12i.w $t0, -1
	ori $t0, $t0, 524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op953, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 500
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label954
	b .long_func_label954
.long_func_label954:
# br label %label940
	b .long_func_label940
.long_func_label955:
# %op956 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op957 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op958 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op957
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op959 = load i32 , i32 * %op958
	lu12i.w $t0, -1
	ori $t0, $t0, 480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op960 = mul i32  1, %op959
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op961 = add i32  %op956, %op960
	lu12i.w $t0, -1
	ori $t0, $t0, 496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op961, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label962
	b .long_func_label962
.long_func_label962:
# br label %label940
	b .long_func_label940
.long_func_label963:
# %op964 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op965 = icmp slt i32  %op964, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 463
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op966 = zext i1  %op965 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 463
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op967 = icmp ne i32  %op966, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label132
	addi.d $t2, $zero, 0
	b false_label132
true_label132:
	addi.d $t2, $zero, 1
false_label132:
	lu12i.w $t8, -1
	ori $t8, $t8, 455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op967, label %label968, label %label972
	lu12i.w $t0, -1
	ori $t0, $t0, 455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label968
	b .long_func_label972
.long_func_label968:
# %op969 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op970 = srem i32  %op969, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op971 = icmp ne i32  %op970, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label133
	addi.d $t2, $zero, 0
	b false_label133
true_label133:
	addi.d $t2, $zero, 1
false_label133:
	lu12i.w $t8, -1
	ori $t8, $t8, 443
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op971, label %label991, label %label984
	lu12i.w $t0, -1
	ori $t0, $t0, 443
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label991
	b .long_func_label984
.long_func_label972:
# %op973 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op973, i32 * %op898
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op974 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 435
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op975 = zext i1  %op974 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 435
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op976 = icmp ne i32  %op975, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label135
	addi.d $t2, $zero, 0
	b false_label135
true_label135:
	addi.d $t2, $zero, 1
false_label135:
	lu12i.w $t8, -1
	ori $t8, $t8, 427
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op976, label %label995, label %label996
	lu12i.w $t0, -1
	ori $t0, $t0, 427
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label995
	b .long_func_label996
.long_func_label977:
# %op978 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op979 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op980 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op979
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op981 = load i32 , i32 * %op980
	lu12i.w $t0, -1
	ori $t0, $t0, 408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op982 = mul i32  1, %op981
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op983 = add i32  %op978, %op982
	lu12i.w $t0, -1
	ori $t0, $t0, 420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 400
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op983, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label984
	b .long_func_label984
.long_func_label984:
# %op985 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op986 = sdiv i32  %op985, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op986, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op987 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op988 = sdiv i32  %op987, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op988, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op989 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op990 = add i32  %op989, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op990, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label963
	b .long_func_label963
.long_func_label991:
# %op992 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op993 = srem i32  %op992, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op994 = icmp ne i32  %op993, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label136
	addi.d $t2, $zero, 0
	b false_label136
true_label136:
	addi.d $t2, $zero, 1
false_label136:
	lu12i.w $t8, -1
	ori $t8, $t8, 363
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op994, label %label977, label %label984
	lu12i.w $t0, -1
	ori $t0, $t0, 363
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label977
	b .long_func_label984
.long_func_label995:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1001
	b .long_func_label1001
.long_func_label996:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op997 = load i32 , i32 * %op898
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op998 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -1
	ori $t8, $t8, 344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op999 = load i32 , i32 * %op998
	lu12i.w $t0, -1
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1000 = mul i32  %op997, %op999
	lu12i.w $t0, -1
	ori $t0, $t0, 356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1000, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 336
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1004
	b .long_func_label1004
.long_func_label1001:
# %op1002 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1002, i32 * %op898
	lu12i.w $t0, -1
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1003 = load i32 , i32 * %op897
	lu12i.w $t0, -1
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1003, i32 * %op900
	lu12i.w $t0, -1
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label908
	b .long_func_label908
.long_func_label1004:
# %op1005 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1006 = icmp slt i32  %op1005, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 323
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1007 = zext i1  %op1006 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 323
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1008 = icmp ne i32  %op1007, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label138
	addi.d $t2, $zero, 0
	b false_label138
true_label138:
	addi.d $t2, $zero, 1
false_label138:
	lu12i.w $t8, -1
	ori $t8, $t8, 315
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1008, label %label1009, label %label1013
	lu12i.w $t0, -1
	ori $t0, $t0, 315
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1009
	b .long_func_label1013
.long_func_label1009:
# %op1010 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1011 = srem i32  %op1010, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1012 = icmp ne i32  %op1011, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label139
	addi.d $t2, $zero, 0
	b false_label139
true_label139:
	addi.d $t2, $zero, 1
false_label139:
	lu12i.w $t8, -1
	ori $t8, $t8, 303
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1012, label %label1028, label %label1021
	lu12i.w $t0, -1
	ori $t0, $t0, 303
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1028
	b .long_func_label1021
.long_func_label1013:
# br label %label1001
	b .long_func_label1001
.long_func_label1014:
# %op1015 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1016 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1017 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1016
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1018 = load i32 , i32 * %op1017
	lu12i.w $t0, -1
	ori $t0, $t0, 280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1019 = mul i32  1, %op1018
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1020 = add i32  %op1015, %op1019
	lu12i.w $t0, -1
	ori $t0, $t0, 296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1020, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1021
	b .long_func_label1021
.long_func_label1021:
# %op1022 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1023 = sdiv i32  %op1022, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1023, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1024 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1025 = sdiv i32  %op1024, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1025, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1026 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1027 = add i32  %op1026, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1027, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1004
	b .long_func_label1004
.long_func_label1028:
# %op1029 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1030 = srem i32  %op1029, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1031 = icmp ne i32  %op1030, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 236
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label140
	addi.d $t2, $zero, 0
	b false_label140
true_label140:
	addi.d $t2, $zero, 1
false_label140:
	lu12i.w $t8, -1
	ori $t8, $t8, 235
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1031, label %label1014, label %label1021
	lu12i.w $t0, -1
	ori $t0, $t0, 235
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1014
	b .long_func_label1021
.long_func_label1032:
# %op1033 = load i32 , i32 * %op904
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1034 = icmp ne i32  %op1033, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 228
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label141
	addi.d $t2, $zero, 0
	b false_label141
true_label141:
	addi.d $t2, $zero, 1
false_label141:
	lu12i.w $t8, -1
	ori $t8, $t8, 227
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1034, label %label1035, label %label1038
	lu12i.w $t0, -1
	ori $t0, $t0, 227
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1035
	b .long_func_label1038
.long_func_label1035:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1036 = load i32 , i32 * %op906
	lu12i.w $t0, -1
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1036, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1037 = load i32 , i32 * %op904
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1037, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 216
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1046
	b .long_func_label1046
.long_func_label1038:
# %op1039 = load i32 , i32 * %op906
	lu12i.w $t0, -1
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1039, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1040 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1040, i32 * %op850
	lu12i.w $t0, -1
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1041 = load i32 , i32 * %op848
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1041, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1042 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1043 = icmp sge i32  %op1042, 15
	lu12i.w $t0, -1
	ori $t0, $t0, 200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label142
	addi.d $t2, $zero, 0
	b false_label142
true_label142:
	addi.d $t2, $zero, 1
false_label142:
	lu12i.w $t8, -1
	ori $t8, $t8, 199
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1044 = zext i1  %op1043 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 199
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1045 = icmp ne i32  %op1044, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label143
	addi.d $t2, $zero, 0
	b false_label143
true_label143:
	addi.d $t2, $zero, 1
false_label143:
	lu12i.w $t8, -1
	ori $t8, $t8, 191
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1045, label %label1161, label %label1166
	lu12i.w $t0, -1
	ori $t0, $t0, 191
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1161
	b .long_func_label1166
.long_func_label1046:
# %op1047 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1048 = icmp slt i32  %op1047, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 183
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1049 = zext i1  %op1048 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 183
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1050 = icmp ne i32  %op1049, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label145
	addi.d $t2, $zero, 0
	b false_label145
true_label145:
	addi.d $t2, $zero, 1
false_label145:
	lu12i.w $t8, -1
	ori $t8, $t8, 175
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1050, label %label1051, label %label1055
	lu12i.w $t0, -1
	ori $t0, $t0, 175
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1051
	b .long_func_label1055
.long_func_label1051:
# %op1052 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1053 = srem i32  %op1052, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1054 = icmp ne i32  %op1053, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label146
	addi.d $t2, $zero, 0
	b false_label146
true_label146:
	addi.d $t2, $zero, 1
false_label146:
	lu12i.w $t8, -1
	ori $t8, $t8, 163
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1054, label %label1059, label %label1065
	lu12i.w $t0, -1
	ori $t0, $t0, 163
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1059
	b .long_func_label1065
.long_func_label1055:
# %op1056 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1056, i32 * %op903
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1057 = load i32 , i32 * %op906
	lu12i.w $t0, -1
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1057, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 152
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1058 = load i32 , i32 * %op904
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1058, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1092
	b .long_func_label1092
.long_func_label1059:
# %op1060 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1061 = srem i32  %op1060, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1062 = icmp eq i32  %op1061, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 140
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label147
	addi.d $t2, $zero, 0
	b false_label147
true_label147:
	addi.d $t2, $zero, 1
false_label147:
	lu12i.w $t8, -1
	ori $t8, $t8, 139
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1063 = zext i1  %op1062 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 139
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1064 = icmp ne i32  %op1063, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label148
	addi.d $t2, $zero, 0
	b false_label148
true_label148:
	addi.d $t2, $zero, 1
false_label148:
	lu12i.w $t8, -1
	ori $t8, $t8, 131
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1064, label %label1076, label %label1083
	lu12i.w $t0, -1
	ori $t0, $t0, 131
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1076
	b .long_func_label1083
.long_func_label1065:
# %op1066 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1067 = srem i32  %op1066, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1068 = icmp ne i32  %op1067, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label149
	addi.d $t2, $zero, 0
	b false_label149
true_label149:
	addi.d $t2, $zero, 1
false_label149:
	lu12i.w $t8, -1
	ori $t8, $t8, 119
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1068, label %label1084, label %label1091
	lu12i.w $t0, -1
	ori $t0, $t0, 119
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1084
	b .long_func_label1091
.long_func_label1069:
# %op1070 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1071 = sdiv i32  %op1070, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1071, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -1
	ori $t1, $t1, 108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1072 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1073 = sdiv i32  %op1072, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1073, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -1
	ori $t1, $t1, 100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1074 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 96
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1075 = add i32  %op1074, 1
	lu12i.w $t0, -1
	ori $t0, $t0, 96
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 92
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1075, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -1
	ori $t1, $t1, 92
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1046
	b .long_func_label1046
.long_func_label1076:
# %op1077 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 88
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1078 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1079 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1078
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 84
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1080 = load i32 , i32 * %op1079
	lu12i.w $t0, -1
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 68
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1081 = mul i32  1, %op1080
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 68
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1082 = add i32  %op1077, %op1081
	lu12i.w $t0, -1
	ori $t0, $t0, 88
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 64
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1082, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 60
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1083
	b .long_func_label1083
.long_func_label1083:
# br label %label1069
	b .long_func_label1069
.long_func_label1084:
# %op1085 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 56
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1086 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 52
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1087 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1086
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -1
	ori $t1, $t1, 52
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 40
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1088 = load i32 , i32 * %op1087
	lu12i.w $t0, -1
	ori $t0, $t0, 40
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 36
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1089 = mul i32  1, %op1088
	addi.w $t0, $zero, 1
	lu12i.w $t1, -1
	ori $t1, $t1, 36
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1090 = add i32  %op1085, %op1089
	lu12i.w $t0, -1
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -1
	ori $t1, $t1, 32
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1090, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -1
	ori $t1, $t1, 28
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1091
	b .long_func_label1091
.long_func_label1091:
# br label %label1069
	b .long_func_label1069
.long_func_label1092:
# %op1093 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1094 = icmp slt i32  %op1093, 16
	lu12i.w $t0, -1
	ori $t0, $t0, 24
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 23
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1095 = zext i1  %op1094 to i32 
	lu12i.w $t0, -1
	ori $t0, $t0, 23
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1096 = icmp ne i32  %op1095, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 16
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label151
	addi.d $t2, $zero, 0
	b false_label151
true_label151:
	addi.d $t2, $zero, 1
false_label151:
	lu12i.w $t8, -1
	ori $t8, $t8, 15
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1096, label %label1097, label %label1101
	lu12i.w $t0, -1
	ori $t0, $t0, 15
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1097
	b .long_func_label1101
.long_func_label1097:
# %op1098 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -1
	ori $t8, $t8, 8
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1099 = srem i32  %op1098, 2
	lu12i.w $t0, -1
	ori $t0, $t0, 8
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -1
	ori $t8, $t8, 4
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1100 = icmp ne i32  %op1099, 0
	lu12i.w $t0, -1
	ori $t0, $t0, 4
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label152
	addi.d $t2, $zero, 0
	b false_label152
true_label152:
	addi.d $t2, $zero, 1
false_label152:
	lu12i.w $t8, -1
	ori $t8, $t8, 3
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1100, label %label1120, label %label1113
	lu12i.w $t0, -1
	ori $t0, $t0, 3
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1120
	b .long_func_label1113
.long_func_label1101:
# %op1102 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1102, i32 * %op904
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1103 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 4091
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1104 = zext i1  %op1103 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 4091
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1105 = icmp ne i32  %op1104, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label154
	addi.d $t2, $zero, 0
	b false_label154
true_label154:
	addi.d $t2, $zero, 1
false_label154:
	lu12i.w $t8, -2
	ori $t8, $t8, 4083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1105, label %label1124, label %label1125
	lu12i.w $t0, -2
	ori $t0, $t0, 4083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1124
	b .long_func_label1125
.long_func_label1106:
# %op1107 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1108 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1109 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1108
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 4072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1110 = load i32 , i32 * %op1109
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1111 = mul i32  1, %op1110
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 4060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1112 = add i32  %op1107, %op1111
	lu12i.w $t0, -2
	ori $t0, $t0, 4076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 4056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1112, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 4052
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1113
	b .long_func_label1113
.long_func_label1113:
# %op1114 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1115 = sdiv i32  %op1114, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1115, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 4044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1116 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1117 = sdiv i32  %op1116, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1117, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 4036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1118 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1119 = add i32  %op1118, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1119, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 4028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1092
	b .long_func_label1092
.long_func_label1120:
# %op1121 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1122 = srem i32  %op1121, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1123 = icmp ne i32  %op1122, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 4020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label155
	addi.d $t2, $zero, 0
	b false_label155
true_label155:
	addi.d $t2, $zero, 1
false_label155:
	lu12i.w $t8, -2
	ori $t8, $t8, 4019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1123, label %label1106, label %label1113
	lu12i.w $t0, -2
	ori $t0, $t0, 4019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1106
	b .long_func_label1113
.long_func_label1124:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1130
	b .long_func_label1130
.long_func_label1125:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1126 = load i32 , i32 * %op904
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1127 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1128 = load i32 , i32 * %op1127
	lu12i.w $t0, -2
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1129 = mul i32  %op1126, %op1128
	lu12i.w $t0, -2
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1129, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3992
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1133
	b .long_func_label1133
.long_func_label1130:
# %op1131 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1131, i32 * %op904
	lu12i.w $t0, -1
	ori $t0, $t0, 672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1132 = load i32 , i32 * %op903
	lu12i.w $t0, -1
	ori $t0, $t0, 688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1132, i32 * %op906
	lu12i.w $t0, -1
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1032
	b .long_func_label1032
.long_func_label1133:
# %op1134 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1135 = icmp slt i32  %op1134, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3979
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1136 = zext i1  %op1135 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3979
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1137 = icmp ne i32  %op1136, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label157
	addi.d $t2, $zero, 0
	b false_label157
true_label157:
	addi.d $t2, $zero, 1
false_label157:
	lu12i.w $t8, -2
	ori $t8, $t8, 3971
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1137, label %label1138, label %label1142
	lu12i.w $t0, -2
	ori $t0, $t0, 3971
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1138
	b .long_func_label1142
.long_func_label1138:
# %op1139 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1140 = srem i32  %op1139, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1141 = icmp ne i32  %op1140, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label158
	addi.d $t2, $zero, 0
	b false_label158
true_label158:
	addi.d $t2, $zero, 1
false_label158:
	lu12i.w $t8, -2
	ori $t8, $t8, 3959
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1141, label %label1157, label %label1150
	lu12i.w $t0, -2
	ori $t0, $t0, 3959
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1157
	b .long_func_label1150
.long_func_label1142:
# br label %label1130
	b .long_func_label1130
.long_func_label1143:
# %op1144 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1145 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1146 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1145
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1147 = load i32 , i32 * %op1146
	lu12i.w $t0, -2
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1148 = mul i32  1, %op1147
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1149 = add i32  %op1144, %op1148
	lu12i.w $t0, -2
	ori $t0, $t0, 3952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1149, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1150
	b .long_func_label1150
.long_func_label1150:
# %op1151 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1152 = sdiv i32  %op1151, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1152, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1153 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1154 = sdiv i32  %op1153, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1154, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1155 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1156 = add i32  %op1155, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1156, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1133
	b .long_func_label1133
.long_func_label1157:
# %op1158 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1159 = srem i32  %op1158, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1160 = icmp ne i32  %op1159, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label159
	addi.d $t2, $zero, 0
	b false_label159
true_label159:
	addi.d $t2, $zero, 1
false_label159:
	lu12i.w $t8, -2
	ori $t8, $t8, 3891
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1160, label %label1143, label %label1150
	lu12i.w $t0, -2
	ori $t0, $t0, 3891
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1143
	b .long_func_label1150
.long_func_label1161:
# %op1162 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1163 = icmp slt i32  %op1162, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3883
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1164 = zext i1  %op1163 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3883
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1165 = icmp ne i32  %op1164, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label161
	addi.d $t2, $zero, 0
	b false_label161
true_label161:
	addi.d $t2, $zero, 1
false_label161:
	lu12i.w $t8, -2
	ori $t8, $t8, 3875
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1165, label %label1173, label %label1174
	lu12i.w $t0, -2
	ori $t0, $t0, 3875
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1173
	b .long_func_label1174
.long_func_label1166:
# %op1167 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1168 = icmp sgt i32  %op1167, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3867
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1169 = zext i1  %op1168 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3867
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1170 = icmp ne i32  %op1169, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label163
	addi.d $t2, $zero, 0
	b false_label163
true_label163:
	addi.d $t2, $zero, 1
false_label163:
	lu12i.w $t8, -2
	ori $t8, $t8, 3859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1170, label %label1176, label %label1181
	lu12i.w $t0, -2
	ori $t0, $t0, 3859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1176
	b .long_func_label1181
.long_func_label1171:
# %op1172 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1172, i32 * %op848
	lu12i.w $t0, -1
	ori $t0, $t0, 936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label858
	b .long_func_label858
.long_func_label1173:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1175
	b .long_func_label1175
.long_func_label1174:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1175
	b .long_func_label1175
.long_func_label1175:
# br label %label1171
	b .long_func_label1171
.long_func_label1176:
# %op1177 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1178 = icmp sgt i32  %op1177, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 3848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3847
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1179 = zext i1  %op1178 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3847
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1180 = icmp ne i32  %op1179, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label165
	addi.d $t2, $zero, 0
	b false_label165
true_label165:
	addi.d $t2, $zero, 1
false_label165:
	lu12i.w $t8, -2
	ori $t8, $t8, 3839
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1180, label %label1184, label %label1198
	lu12i.w $t0, -2
	ori $t0, $t0, 3839
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1184
	b .long_func_label1198
.long_func_label1181:
# %op1182 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1182, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1183
	b .long_func_label1183
.long_func_label1183:
# br label %label1171
	b .long_func_label1171
.long_func_label1184:
# %op1185 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1186 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1187 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1186
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1188 = load i32 , i32 * %op1187
	lu12i.w $t0, -2
	ori $t0, $t0, 3816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1189 = sdiv i32  %op1185, %op1188
	lu12i.w $t0, -2
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1189, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1190 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1191 = add i32  %op1190, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 3804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1192 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1193 = sub i32  15, %op1192
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 3796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1194 = add i32  %op1193, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1195 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1194
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1196 = load i32 , i32 * %op1195
	lu12i.w $t0, -2
	ori $t0, $t0, 3776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1197 = sub i32  %op1191, %op1196
	lu12i.w $t0, -2
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1197, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3768
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1204
	b .long_func_label1204
.long_func_label1198:
# %op1199 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1200 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1201 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1200
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3760
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1202 = load i32 , i32 * %op1201
	lu12i.w $t0, -2
	ori $t0, $t0, 3752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1203 = sdiv i32  %op1199, %op1202
	lu12i.w $t0, -2
	ori $t0, $t0, 3764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1203, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1204
	b .long_func_label1204
.long_func_label1204:
# br label %label1183
	b .long_func_label1183
.long_func_label1205:
# %op1206 = load i32 , i32 * %op854
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1207 = icmp ne i32  %op1206, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label166
	addi.d $t2, $zero, 0
	b false_label166
true_label166:
	addi.d $t2, $zero, 1
false_label166:
	lu12i.w $t8, -2
	ori $t8, $t8, 3739
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1207, label %label1208, label %label1210
	lu12i.w $t0, -2
	ori $t0, $t0, 3739
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1208
	b .long_func_label1210
.long_func_label1208:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1209 = load i32 , i32 * %op854
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1209, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1218
	b .long_func_label1218
.long_func_label1210:
# %op1211 = load i32 , i32 * %op853
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1211, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1212 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1212, i32 * %op20
	ld.d $t0, $fp, -208
	lu12i.w $t1, -2
	ori $t1, $t1, 3724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1213 = load i32 , i32 * %op19
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1213, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1214 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1215 = icmp sge i32  %op1214, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 3716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label167
	addi.d $t2, $zero, 0
	b false_label167
true_label167:
	addi.d $t2, $zero, 1
false_label167:
	lu12i.w $t8, -2
	ori $t8, $t8, 3715
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1216 = zext i1  %op1215 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3715
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1217 = icmp ne i32  %op1216, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label168
	addi.d $t2, $zero, 0
	b false_label168
true_label168:
	addi.d $t2, $zero, 1
false_label168:
	lu12i.w $t8, -2
	ori $t8, $t8, 3707
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1217, label %label1557, label %label1562
	lu12i.w $t0, -2
	ori $t0, $t0, 3707
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1557
	b .long_func_label1562
.long_func_label1218:
# %op1219 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1220 = icmp slt i32  %op1219, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1221 = zext i1  %op1220 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1222 = icmp ne i32  %op1221, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label170
	addi.d $t2, $zero, 0
	b false_label170
true_label170:
	addi.d $t2, $zero, 1
false_label170:
	lu12i.w $t8, -2
	ori $t8, $t8, 3691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1222, label %label1223, label %label1227
	lu12i.w $t0, -2
	ori $t0, $t0, 3691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1223
	b .long_func_label1227
.long_func_label1223:
# %op1224 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1225 = srem i32  %op1224, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1226 = icmp ne i32  %op1225, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label171
	addi.d $t2, $zero, 0
	b false_label171
true_label171:
	addi.d $t2, $zero, 1
false_label171:
	lu12i.w $t8, -2
	ori $t8, $t8, 3679
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1226, label %label1244, label %label1237
	lu12i.w $t0, -2
	ori $t0, $t0, 3679
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1244
	b .long_func_label1237
.long_func_label1227:
# %op1228 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1229 = icmp ne i32  %op1228, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label172
	addi.d $t2, $zero, 0
	b false_label172
true_label172:
	addi.d $t2, $zero, 1
false_label172:
	lu12i.w $t8, -2
	ori $t8, $t8, 3671
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1229, label %label1248, label %label1254
	lu12i.w $t0, -2
	ori $t0, $t0, 3671
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1248
	b .long_func_label1254
.long_func_label1230:
# %op1231 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1232 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1233 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1232
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1234 = load i32 , i32 * %op1233
	lu12i.w $t0, -2
	ori $t0, $t0, 3648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1235 = mul i32  1, %op1234
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1236 = add i32  %op1231, %op1235
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1236, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1237
	b .long_func_label1237
.long_func_label1237:
# %op1238 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1239 = sdiv i32  %op1238, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1239, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1240 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1241 = sdiv i32  %op1240, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1241, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1242 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1243 = add i32  %op1242, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1243, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1218
	b .long_func_label1218
.long_func_label1244:
# %op1245 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1246 = srem i32  %op1245, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1247 = icmp ne i32  %op1246, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label173
	addi.d $t2, $zero, 0
	b false_label173
true_label173:
	addi.d $t2, $zero, 1
false_label173:
	lu12i.w $t8, -2
	ori $t8, $t8, 3603
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1247, label %label1230, label %label1237
	lu12i.w $t0, -2
	ori $t0, $t0, 3603
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1230
	b .long_func_label1237
.long_func_label1248:
# %op1249 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1250 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1251 = load i32 , i32 * %op856
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1251, i32 * %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1252 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1253 = load i32 , i32 * %op853
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1253, i32 * %op1252
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3552
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1260
	b .long_func_label1260
.long_func_label1254:
# %op1255 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1256 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1257 = load i32 , i32 * %op856
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1257, i32 * %op1256
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1258 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1259 = load i32 , i32 * %op856
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1259, i32 * %op1258
	lu12i.w $t0, -2
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1384
	b .long_func_label1384
.long_func_label1260:
# %op1261 = load i32 , i32 * %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1262 = icmp ne i32  %op1261, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label174
	addi.d $t2, $zero, 0
	b false_label174
true_label174:
	addi.d $t2, $zero, 1
false_label174:
	lu12i.w $t8, -2
	ori $t8, $t8, 3499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1262, label %label1263, label %label1266
	lu12i.w $t0, -2
	ori $t0, $t0, 3499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1263
	b .long_func_label1266
.long_func_label1263:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1264 = load i32 , i32 * %op1252
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1264, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1265 = load i32 , i32 * %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1265, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1269
	b .long_func_label1269
.long_func_label1266:
# %op1267 = load i32 , i32 * %op1252
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1267, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1268 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1268, i32 * %op853
	lu12i.w $t0, -1
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1254
	b .long_func_label1254
.long_func_label1269:
# %op1270 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1271 = icmp slt i32  %op1270, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3475
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1272 = zext i1  %op1271 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3475
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1273 = icmp ne i32  %op1272, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label176
	addi.d $t2, $zero, 0
	b false_label176
true_label176:
	addi.d $t2, $zero, 1
false_label176:
	lu12i.w $t8, -2
	ori $t8, $t8, 3467
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1273, label %label1274, label %label1278
	lu12i.w $t0, -2
	ori $t0, $t0, 3467
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1274
	b .long_func_label1278
.long_func_label1274:
# %op1275 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1276 = srem i32  %op1275, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1277 = icmp ne i32  %op1276, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label177
	addi.d $t2, $zero, 0
	b false_label177
true_label177:
	addi.d $t2, $zero, 1
false_label177:
	lu12i.w $t8, -2
	ori $t8, $t8, 3455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1277, label %label1282, label %label1288
	lu12i.w $t0, -2
	ori $t0, $t0, 3455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1282
	b .long_func_label1288
.long_func_label1278:
# %op1279 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1279, i32 * %op1249
	lu12i.w $t0, -2
	ori $t0, $t0, 3592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1280 = load i32 , i32 * %op1252
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1280, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1281 = load i32 , i32 * %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1281, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3440
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1315
	b .long_func_label1315
.long_func_label1282:
# %op1283 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1284 = srem i32  %op1283, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1285 = icmp eq i32  %op1284, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label178
	addi.d $t2, $zero, 0
	b false_label178
true_label178:
	addi.d $t2, $zero, 1
false_label178:
	lu12i.w $t8, -2
	ori $t8, $t8, 3431
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1286 = zext i1  %op1285 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3431
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1287 = icmp ne i32  %op1286, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label179
	addi.d $t2, $zero, 0
	b false_label179
true_label179:
	addi.d $t2, $zero, 1
false_label179:
	lu12i.w $t8, -2
	ori $t8, $t8, 3423
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1287, label %label1299, label %label1306
	lu12i.w $t0, -2
	ori $t0, $t0, 3423
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1299
	b .long_func_label1306
.long_func_label1288:
# %op1289 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1290 = srem i32  %op1289, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1291 = icmp ne i32  %op1290, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label180
	addi.d $t2, $zero, 0
	b false_label180
true_label180:
	addi.d $t2, $zero, 1
false_label180:
	lu12i.w $t8, -2
	ori $t8, $t8, 3411
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1291, label %label1307, label %label1314
	lu12i.w $t0, -2
	ori $t0, $t0, 3411
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1307
	b .long_func_label1314
.long_func_label1292:
# %op1293 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1294 = sdiv i32  %op1293, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1294, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3400
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1295 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1296 = sdiv i32  %op1295, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3396
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1296, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3392
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1297 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1298 = add i32  %op1297, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1298, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1269
	b .long_func_label1269
.long_func_label1299:
# %op1300 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1301 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1302 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1301
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1303 = load i32 , i32 * %op1302
	lu12i.w $t0, -2
	ori $t0, $t0, 3368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1304 = mul i32  1, %op1303
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1305 = add i32  %op1300, %op1304
	lu12i.w $t0, -2
	ori $t0, $t0, 3380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1305, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1306
	b .long_func_label1306
.long_func_label1306:
# br label %label1292
	b .long_func_label1292
.long_func_label1307:
# %op1308 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1309 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1310 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1309
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1311 = load i32 , i32 * %op1310
	lu12i.w $t0, -2
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1312 = mul i32  1, %op1311
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1313 = add i32  %op1308, %op1312
	lu12i.w $t0, -2
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3328
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1313, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1314
	b .long_func_label1314
.long_func_label1314:
# br label %label1292
	b .long_func_label1292
.long_func_label1315:
# %op1316 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1317 = icmp slt i32  %op1316, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3319
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1318 = zext i1  %op1317 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3319
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1319 = icmp ne i32  %op1318, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label182
	addi.d $t2, $zero, 0
	b false_label182
true_label182:
	addi.d $t2, $zero, 1
false_label182:
	lu12i.w $t8, -2
	ori $t8, $t8, 3311
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1319, label %label1320, label %label1324
	lu12i.w $t0, -2
	ori $t0, $t0, 3311
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1320
	b .long_func_label1324
.long_func_label1320:
# %op1321 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1322 = srem i32  %op1321, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1323 = icmp ne i32  %op1322, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label183
	addi.d $t2, $zero, 0
	b false_label183
true_label183:
	addi.d $t2, $zero, 1
false_label183:
	lu12i.w $t8, -2
	ori $t8, $t8, 3299
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1323, label %label1343, label %label1336
	lu12i.w $t0, -2
	ori $t0, $t0, 3299
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1343
	b .long_func_label1336
.long_func_label1324:
# %op1325 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1325, i32 * %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1326 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 3291
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1327 = zext i1  %op1326 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3291
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1328 = icmp ne i32  %op1327, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label185
	addi.d $t2, $zero, 0
	b false_label185
true_label185:
	addi.d $t2, $zero, 1
false_label185:
	lu12i.w $t8, -2
	ori $t8, $t8, 3283
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1328, label %label1347, label %label1348
	lu12i.w $t0, -2
	ori $t0, $t0, 3283
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1347
	b .long_func_label1348
.long_func_label1329:
# %op1330 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1331 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1332 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1331
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1333 = load i32 , i32 * %op1332
	lu12i.w $t0, -2
	ori $t0, $t0, 3264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1334 = mul i32  1, %op1333
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1335 = add i32  %op1330, %op1334
	lu12i.w $t0, -2
	ori $t0, $t0, 3276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3256
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1335, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1336
	b .long_func_label1336
.long_func_label1336:
# %op1337 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1338 = sdiv i32  %op1337, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1338, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1339 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1340 = sdiv i32  %op1339, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1340, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1341 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1342 = add i32  %op1341, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1342, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1315
	b .long_func_label1315
.long_func_label1343:
# %op1344 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1345 = srem i32  %op1344, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1346 = icmp ne i32  %op1345, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3220
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label186
	addi.d $t2, $zero, 0
	b false_label186
true_label186:
	addi.d $t2, $zero, 1
false_label186:
	lu12i.w $t8, -2
	ori $t8, $t8, 3219
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1346, label %label1329, label %label1336
	lu12i.w $t0, -2
	ori $t0, $t0, 3219
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1329
	b .long_func_label1336
.long_func_label1347:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1353
	b .long_func_label1353
.long_func_label1348:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1349 = load i32 , i32 * %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1350 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 3200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1351 = load i32 , i32 * %op1350
	lu12i.w $t0, -2
	ori $t0, $t0, 3200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1352 = mul i32  %op1349, %op1351
	lu12i.w $t0, -2
	ori $t0, $t0, 3212
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1352, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3192
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1356
	b .long_func_label1356
.long_func_label1353:
# %op1354 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1354, i32 * %op1250
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1355 = load i32 , i32 * %op1249
	lu12i.w $t0, -2
	ori $t0, $t0, 3592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1355, i32 * %op1252
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3184
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1260
	b .long_func_label1260
.long_func_label1356:
# %op1357 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1358 = icmp slt i32  %op1357, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3179
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1359 = zext i1  %op1358 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3179
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1360 = icmp ne i32  %op1359, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label188
	addi.d $t2, $zero, 0
	b false_label188
true_label188:
	addi.d $t2, $zero, 1
false_label188:
	lu12i.w $t8, -2
	ori $t8, $t8, 3171
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1360, label %label1361, label %label1365
	lu12i.w $t0, -2
	ori $t0, $t0, 3171
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1361
	b .long_func_label1365
.long_func_label1361:
# %op1362 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1363 = srem i32  %op1362, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1364 = icmp ne i32  %op1363, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label189
	addi.d $t2, $zero, 0
	b false_label189
true_label189:
	addi.d $t2, $zero, 1
false_label189:
	lu12i.w $t8, -2
	ori $t8, $t8, 3159
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1364, label %label1380, label %label1373
	lu12i.w $t0, -2
	ori $t0, $t0, 3159
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1380
	b .long_func_label1373
.long_func_label1365:
# br label %label1353
	b .long_func_label1353
.long_func_label1366:
# %op1367 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1368 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1369 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1368
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 3148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1370 = load i32 , i32 * %op1369
	lu12i.w $t0, -2
	ori $t0, $t0, 3136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1371 = mul i32  1, %op1370
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 3132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1372 = add i32  %op1367, %op1371
	lu12i.w $t0, -2
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3128
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1372, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3124
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1373
	b .long_func_label1373
.long_func_label1373:
# %op1374 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1375 = sdiv i32  %op1374, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1375, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1376 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1377 = sdiv i32  %op1376, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1377, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1378 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1379 = add i32  %op1378, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1379, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 3100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1356
	b .long_func_label1356
.long_func_label1380:
# %op1381 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1382 = srem i32  %op1381, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1383 = icmp ne i32  %op1382, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label190
	addi.d $t2, $zero, 0
	b false_label190
true_label190:
	addi.d $t2, $zero, 1
false_label190:
	lu12i.w $t8, -2
	ori $t8, $t8, 3091
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1383, label %label1366, label %label1373
	lu12i.w $t0, -2
	ori $t0, $t0, 3091
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1366
	b .long_func_label1373
.long_func_label1384:
# %op1385 = load i32 , i32 * %op1256
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1386 = icmp ne i32  %op1385, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label191
	addi.d $t2, $zero, 0
	b false_label191
true_label191:
	addi.d $t2, $zero, 1
false_label191:
	lu12i.w $t8, -2
	ori $t8, $t8, 3083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1386, label %label1387, label %label1390
	lu12i.w $t0, -2
	ori $t0, $t0, 3083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1387
	b .long_func_label1390
.long_func_label1387:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1388 = load i32 , i32 * %op1258
	lu12i.w $t0, -2
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1388, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1389 = load i32 , i32 * %op1256
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1389, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3072
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1398
	b .long_func_label1398
.long_func_label1390:
# %op1391 = load i32 , i32 * %op1258
	lu12i.w $t0, -2
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1391, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 3068
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1392 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1392, i32 * %op856
	lu12i.w $t0, -1
	ori $t0, $t0, 872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1393 = load i32 , i32 * %op854
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1393, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1394 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1395 = icmp sge i32  %op1394, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label192
	addi.d $t2, $zero, 0
	b false_label192
true_label192:
	addi.d $t2, $zero, 1
false_label192:
	lu12i.w $t8, -2
	ori $t8, $t8, 3055
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1396 = zext i1  %op1395 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3055
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1397 = icmp ne i32  %op1396, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label193
	addi.d $t2, $zero, 0
	b false_label193
true_label193:
	addi.d $t2, $zero, 1
false_label193:
	lu12i.w $t8, -2
	ori $t8, $t8, 3047
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1397, label %label1513, label %label1518
	lu12i.w $t0, -2
	ori $t0, $t0, 3047
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1513
	b .long_func_label1518
.long_func_label1398:
# %op1399 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1400 = icmp slt i32  %op1399, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3039
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1401 = zext i1  %op1400 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 3039
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1402 = icmp ne i32  %op1401, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label195
	addi.d $t2, $zero, 0
	b false_label195
true_label195:
	addi.d $t2, $zero, 1
false_label195:
	lu12i.w $t8, -2
	ori $t8, $t8, 3031
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1402, label %label1403, label %label1407
	lu12i.w $t0, -2
	ori $t0, $t0, 3031
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1403
	b .long_func_label1407
.long_func_label1403:
# %op1404 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1405 = srem i32  %op1404, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 3020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1406 = icmp ne i32  %op1405, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 3020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label196
	addi.d $t2, $zero, 0
	b false_label196
true_label196:
	addi.d $t2, $zero, 1
false_label196:
	lu12i.w $t8, -2
	ori $t8, $t8, 3019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1406, label %label1411, label %label1417
	lu12i.w $t0, -2
	ori $t0, $t0, 3019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1411
	b .long_func_label1417
.long_func_label1407:
# %op1408 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1408, i32 * %op1255
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 3012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1409 = load i32 , i32 * %op1258
	lu12i.w $t0, -2
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1409, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 3008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1410 = load i32 , i32 * %op1256
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1410, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 3004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1444
	b .long_func_label1444
.long_func_label1411:
# %op1412 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1413 = srem i32  %op1412, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1414 = icmp eq i32  %op1413, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label197
	addi.d $t2, $zero, 0
	b false_label197
true_label197:
	addi.d $t2, $zero, 1
false_label197:
	lu12i.w $t8, -2
	ori $t8, $t8, 2995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1415 = zext i1  %op1414 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1416 = icmp ne i32  %op1415, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label198
	addi.d $t2, $zero, 0
	b false_label198
true_label198:
	addi.d $t2, $zero, 1
false_label198:
	lu12i.w $t8, -2
	ori $t8, $t8, 2987
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1416, label %label1428, label %label1435
	lu12i.w $t0, -2
	ori $t0, $t0, 2987
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1428
	b .long_func_label1435
.long_func_label1417:
# %op1418 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1419 = srem i32  %op1418, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1420 = icmp ne i32  %op1419, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label199
	addi.d $t2, $zero, 0
	b false_label199
true_label199:
	addi.d $t2, $zero, 1
false_label199:
	lu12i.w $t8, -2
	ori $t8, $t8, 2975
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1420, label %label1436, label %label1443
	lu12i.w $t0, -2
	ori $t0, $t0, 2975
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1436
	b .long_func_label1443
.long_func_label1421:
# %op1422 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1423 = sdiv i32  %op1422, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1423, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1424 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1425 = sdiv i32  %op1424, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1425, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1426 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1427 = add i32  %op1426, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1427, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1398
	b .long_func_label1398
.long_func_label1428:
# %op1429 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1430 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1431 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1430
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2940
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1432 = load i32 , i32 * %op1431
	lu12i.w $t0, -2
	ori $t0, $t0, 2928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1433 = mul i32  1, %op1432
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1434 = add i32  %op1429, %op1433
	lu12i.w $t0, -2
	ori $t0, $t0, 2944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1434, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1435
	b .long_func_label1435
.long_func_label1435:
# br label %label1421
	b .long_func_label1421
.long_func_label1436:
# %op1437 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1438 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1439 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1438
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1440 = load i32 , i32 * %op1439
	lu12i.w $t0, -2
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1441 = mul i32  1, %op1440
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1442 = add i32  %op1437, %op1441
	lu12i.w $t0, -2
	ori $t0, $t0, 2912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1442, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1443
	b .long_func_label1443
.long_func_label1443:
# br label %label1421
	b .long_func_label1421
.long_func_label1444:
# %op1445 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1446 = icmp slt i32  %op1445, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2879
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1447 = zext i1  %op1446 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2879
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1448 = icmp ne i32  %op1447, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label201
	addi.d $t2, $zero, 0
	b false_label201
true_label201:
	addi.d $t2, $zero, 1
false_label201:
	lu12i.w $t8, -2
	ori $t8, $t8, 2871
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1448, label %label1449, label %label1453
	lu12i.w $t0, -2
	ori $t0, $t0, 2871
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1449
	b .long_func_label1453
.long_func_label1449:
# %op1450 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1451 = srem i32  %op1450, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1452 = icmp ne i32  %op1451, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label202
	addi.d $t2, $zero, 0
	b false_label202
true_label202:
	addi.d $t2, $zero, 1
false_label202:
	lu12i.w $t8, -2
	ori $t8, $t8, 2859
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1452, label %label1472, label %label1465
	lu12i.w $t0, -2
	ori $t0, $t0, 2859
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1472
	b .long_func_label1465
.long_func_label1453:
# %op1454 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1454, i32 * %op1256
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1455 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2851
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1456 = zext i1  %op1455 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2851
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1457 = icmp ne i32  %op1456, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label204
	addi.d $t2, $zero, 0
	b false_label204
true_label204:
	addi.d $t2, $zero, 1
false_label204:
	lu12i.w $t8, -2
	ori $t8, $t8, 2843
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1457, label %label1476, label %label1477
	lu12i.w $t0, -2
	ori $t0, $t0, 2843
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1476
	b .long_func_label1477
.long_func_label1458:
# %op1459 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1460 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1461 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1460
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1462 = load i32 , i32 * %op1461
	lu12i.w $t0, -2
	ori $t0, $t0, 2824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1463 = mul i32  1, %op1462
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1464 = add i32  %op1459, %op1463
	lu12i.w $t0, -2
	ori $t0, $t0, 2836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1464, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1465
	b .long_func_label1465
.long_func_label1465:
# %op1466 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1467 = sdiv i32  %op1466, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1467, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1468 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1469 = sdiv i32  %op1468, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1469, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1470 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1471 = add i32  %op1470, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1471, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1444
	b .long_func_label1444
.long_func_label1472:
# %op1473 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1474 = srem i32  %op1473, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1475 = icmp ne i32  %op1474, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label205
	addi.d $t2, $zero, 0
	b false_label205
true_label205:
	addi.d $t2, $zero, 1
false_label205:
	lu12i.w $t8, -2
	ori $t8, $t8, 2779
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1475, label %label1458, label %label1465
	lu12i.w $t0, -2
	ori $t0, $t0, 2779
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1458
	b .long_func_label1465
.long_func_label1476:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1482
	b .long_func_label1482
.long_func_label1477:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1478 = load i32 , i32 * %op1256
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1479 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1480 = load i32 , i32 * %op1479
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1481 = mul i32  %op1478, %op1480
	lu12i.w $t0, -2
	ori $t0, $t0, 2772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1481, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2752
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1485
	b .long_func_label1485
.long_func_label1482:
# %op1483 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1483, i32 * %op1256
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1484 = load i32 , i32 * %op1255
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1484, i32 * %op1258
	lu12i.w $t0, -2
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1384
	b .long_func_label1384
.long_func_label1485:
# %op1486 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1487 = icmp slt i32  %op1486, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2739
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1488 = zext i1  %op1487 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2739
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1489 = icmp ne i32  %op1488, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label207
	addi.d $t2, $zero, 0
	b false_label207
true_label207:
	addi.d $t2, $zero, 1
false_label207:
	lu12i.w $t8, -2
	ori $t8, $t8, 2731
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1489, label %label1490, label %label1494
	lu12i.w $t0, -2
	ori $t0, $t0, 2731
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1490
	b .long_func_label1494
.long_func_label1490:
# %op1491 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1492 = srem i32  %op1491, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1493 = icmp ne i32  %op1492, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label208
	addi.d $t2, $zero, 0
	b false_label208
true_label208:
	addi.d $t2, $zero, 1
false_label208:
	lu12i.w $t8, -2
	ori $t8, $t8, 2719
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1493, label %label1509, label %label1502
	lu12i.w $t0, -2
	ori $t0, $t0, 2719
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1509
	b .long_func_label1502
.long_func_label1494:
# br label %label1482
	b .long_func_label1482
.long_func_label1495:
# %op1496 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1497 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1498 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1497
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1499 = load i32 , i32 * %op1498
	lu12i.w $t0, -2
	ori $t0, $t0, 2696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1500 = mul i32  1, %op1499
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1501 = add i32  %op1496, %op1500
	lu12i.w $t0, -2
	ori $t0, $t0, 2712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1501, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2684
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1502
	b .long_func_label1502
.long_func_label1502:
# %op1503 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1504 = sdiv i32  %op1503, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1504, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1505 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1506 = sdiv i32  %op1505, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1506, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1507 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1508 = add i32  %op1507, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1508, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1485
	b .long_func_label1485
.long_func_label1509:
# %op1510 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1511 = srem i32  %op1510, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1512 = icmp ne i32  %op1511, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2652
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label209
	addi.d $t2, $zero, 0
	b false_label209
true_label209:
	addi.d $t2, $zero, 1
false_label209:
	lu12i.w $t8, -2
	ori $t8, $t8, 2651
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1512, label %label1495, label %label1502
	lu12i.w $t0, -2
	ori $t0, $t0, 2651
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1495
	b .long_func_label1502
.long_func_label1513:
# %op1514 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1515 = icmp slt i32  %op1514, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2643
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1516 = zext i1  %op1515 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2643
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1517 = icmp ne i32  %op1516, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2636
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label211
	addi.d $t2, $zero, 0
	b false_label211
true_label211:
	addi.d $t2, $zero, 1
false_label211:
	lu12i.w $t8, -2
	ori $t8, $t8, 2635
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1517, label %label1525, label %label1526
	lu12i.w $t0, -2
	ori $t0, $t0, 2635
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1525
	b .long_func_label1526
.long_func_label1518:
# %op1519 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1520 = icmp sgt i32  %op1519, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2627
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1521 = zext i1  %op1520 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2627
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1522 = icmp ne i32  %op1521, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label213
	addi.d $t2, $zero, 0
	b false_label213
true_label213:
	addi.d $t2, $zero, 1
false_label213:
	lu12i.w $t8, -2
	ori $t8, $t8, 2619
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1522, label %label1528, label %label1533
	lu12i.w $t0, -2
	ori $t0, $t0, 2619
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1528
	b .long_func_label1533
.long_func_label1523:
# %op1524 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1524, i32 * %op854
	lu12i.w $t0, -1
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1205
	b .long_func_label1205
.long_func_label1525:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1527
	b .long_func_label1527
.long_func_label1526:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1527
	b .long_func_label1527
.long_func_label1527:
# br label %label1523
	b .long_func_label1523
.long_func_label1528:
# %op1529 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1530 = icmp sgt i32  %op1529, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2607
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1531 = zext i1  %op1530 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2607
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1532 = icmp ne i32  %op1531, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label215
	addi.d $t2, $zero, 0
	b false_label215
true_label215:
	addi.d $t2, $zero, 1
false_label215:
	lu12i.w $t8, -2
	ori $t8, $t8, 2599
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1532, label %label1536, label %label1550
	lu12i.w $t0, -2
	ori $t0, $t0, 2599
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1536
	b .long_func_label1550
.long_func_label1533:
# %op1534 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1534, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1535
	b .long_func_label1535
.long_func_label1535:
# br label %label1523
	b .long_func_label1523
.long_func_label1536:
# %op1537 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1538 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1539 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1538
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1540 = load i32 , i32 * %op1539
	lu12i.w $t0, -2
	ori $t0, $t0, 2576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1541 = sdiv i32  %op1537, %op1540
	lu12i.w $t0, -2
	ori $t0, $t0, 2588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1541, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2568
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1542 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1543 = add i32  %op1542, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 2564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1544 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1545 = sub i32  15, %op1544
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 2556
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1546 = add i32  %op1545, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1547 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1546
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1548 = load i32 , i32 * %op1547
	lu12i.w $t0, -2
	ori $t0, $t0, 2536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1549 = sub i32  %op1543, %op1548
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1549, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1556
	b .long_func_label1556
.long_func_label1550:
# %op1551 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1552 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1553 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1552
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2520
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1554 = load i32 , i32 * %op1553
	lu12i.w $t0, -2
	ori $t0, $t0, 2512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1555 = sdiv i32  %op1551, %op1554
	lu12i.w $t0, -2
	ori $t0, $t0, 2524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2508
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1555, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1556
	b .long_func_label1556
.long_func_label1556:
# br label %label1535
	b .long_func_label1535
.long_func_label1557:
# %op1558 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1559 = icmp slt i32  %op1558, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2499
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1560 = zext i1  %op1559 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2499
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1561 = icmp ne i32  %op1560, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label217
	addi.d $t2, $zero, 0
	b false_label217
true_label217:
	addi.d $t2, $zero, 1
false_label217:
	lu12i.w $t8, -2
	ori $t8, $t8, 2491
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1561, label %label1569, label %label1570
	lu12i.w $t0, -2
	ori $t0, $t0, 2491
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1569
	b .long_func_label1570
.long_func_label1562:
# %op1563 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1564 = icmp sgt i32  %op1563, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2483
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1565 = zext i1  %op1564 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2483
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1566 = icmp ne i32  %op1565, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2476
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label219
	addi.d $t2, $zero, 0
	b false_label219
true_label219:
	addi.d $t2, $zero, 1
false_label219:
	lu12i.w $t8, -2
	ori $t8, $t8, 2475
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1566, label %label1572, label %label1577
	lu12i.w $t0, -2
	ori $t0, $t0, 2475
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1572
	b .long_func_label1577
.long_func_label1567:
# %op1568 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1568, i32 * %op19
	ld.d $t0, $fp, -192
	lu12i.w $t1, -2
	ori $t1, $t1, 2468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label806
	b .long_func_label806
.long_func_label1569:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1571
	b .long_func_label1571
.long_func_label1570:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1571
	b .long_func_label1571
.long_func_label1571:
# br label %label1567
	b .long_func_label1567
.long_func_label1572:
# %op1573 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1574 = icmp sgt i32  %op1573, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 2464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2463
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1575 = zext i1  %op1574 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2463
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1576 = icmp ne i32  %op1575, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label221
	addi.d $t2, $zero, 0
	b false_label221
true_label221:
	addi.d $t2, $zero, 1
false_label221:
	lu12i.w $t8, -2
	ori $t8, $t8, 2455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1576, label %label1580, label %label1594
	lu12i.w $t0, -2
	ori $t0, $t0, 2455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1580
	b .long_func_label1594
.long_func_label1577:
# %op1578 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1578, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1579
	b .long_func_label1579
.long_func_label1579:
# br label %label1567
	b .long_func_label1567
.long_func_label1580:
# %op1581 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1582 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1583 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1582
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2440
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1584 = load i32 , i32 * %op1583
	lu12i.w $t0, -2
	ori $t0, $t0, 2432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1585 = sdiv i32  %op1581, %op1584
	lu12i.w $t0, -2
	ori $t0, $t0, 2444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1585, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1586 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1587 = add i32  %op1586, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1588 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1589 = sub i32  15, %op1588
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 2412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1590 = add i32  %op1589, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1591 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1590
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1592 = load i32 , i32 * %op1591
	lu12i.w $t0, -2
	ori $t0, $t0, 2392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1593 = sub i32  %op1587, %op1592
	lu12i.w $t0, -2
	ori $t0, $t0, 2416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1593, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1600
	b .long_func_label1600
.long_func_label1594:
# %op1595 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1596 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1597 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1596
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1598 = load i32 , i32 * %op1597
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1599 = sdiv i32  %op1595, %op1598
	lu12i.w $t0, -2
	ori $t0, $t0, 2380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1599, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1600
	b .long_func_label1600
.long_func_label1600:
# br label %label1579
	b .long_func_label1579
.long_func_label1601:
# %op1602 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1603 = icmp slt i32  %op1602, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2355
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1604 = zext i1  %op1603 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2355
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1605 = icmp ne i32  %op1604, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label223
	addi.d $t2, $zero, 0
	b false_label223
true_label223:
	addi.d $t2, $zero, 1
false_label223:
	lu12i.w $t8, -2
	ori $t8, $t8, 2347
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1605, label %label1606, label %label1611
	lu12i.w $t0, -2
	ori $t0, $t0, 2347
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1606
	b .long_func_label1611
.long_func_label1606:
# %op1607 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  1, i32 * %op1607
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1608 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1609 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1609, i32 * %op1608
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1610 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  2, i32 * %op1610
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label1612
	b .long_func_label1612
.long_func_label1611:
# store i32  0, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2409
	b .long_func_label2409
.long_func_label1612:
# %op1613 = load i32 , i32 * %op1608
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1614 = icmp sgt i32  %op1613, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2295
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1615 = zext i1  %op1614 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2295
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1616 = icmp ne i32  %op1615, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label225
	addi.d $t2, $zero, 0
	b false_label225
true_label225:
	addi.d $t2, $zero, 1
false_label225:
	lu12i.w $t8, -2
	ori $t8, $t8, 2287
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1616, label %label1617, label %label1619
	lu12i.w $t0, -2
	ori $t0, $t0, 2287
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1617
	b .long_func_label1619
.long_func_label1617:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1618 = load i32 , i32 * %op1608
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1618, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1624
	b .long_func_label1624
.long_func_label1619:
# %op1620 = load i32 , i32 * %op1607
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1620, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1621 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @putint(i32  %op1621)
	lu12i.w $a0, -2
	ori $a0, $a0, 2272
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op1622 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1623 = add i32  %op1622, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1623, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -2
	ori $t1, $t1, 2264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1601
	b .long_func_label1601
.long_func_label1624:
# %op1625 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1626 = icmp slt i32  %op1625, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2259
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1627 = zext i1  %op1626 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2259
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1628 = icmp ne i32  %op1627, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label227
	addi.d $t2, $zero, 0
	b false_label227
true_label227:
	addi.d $t2, $zero, 1
false_label227:
	lu12i.w $t8, -2
	ori $t8, $t8, 2251
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1628, label %label1629, label %label1633
	lu12i.w $t0, -2
	ori $t0, $t0, 2251
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1629
	b .long_func_label1633
.long_func_label1629:
# %op1630 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1631 = srem i32  %op1630, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1632 = icmp ne i32  %op1631, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label228
	addi.d $t2, $zero, 0
	b false_label228
true_label228:
	addi.d $t2, $zero, 1
false_label228:
	lu12i.w $t8, -2
	ori $t8, $t8, 2239
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1632, label %label1650, label %label1643
	lu12i.w $t0, -2
	ori $t0, $t0, 2239
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1650
	b .long_func_label1643
.long_func_label1633:
# %op1634 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1635 = icmp ne i32  %op1634, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label229
	addi.d $t2, $zero, 0
	b false_label229
true_label229:
	addi.d $t2, $zero, 1
false_label229:
	lu12i.w $t8, -2
	ori $t8, $t8, 2231
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1635, label %label1654, label %label1660
	lu12i.w $t0, -2
	ori $t0, $t0, 2231
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1654
	b .long_func_label1660
.long_func_label1636:
# %op1637 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1638 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1639 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1638
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1640 = load i32 , i32 * %op1639
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1641 = mul i32  1, %op1640
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 2204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1642 = add i32  %op1637, %op1641
	lu12i.w $t0, -2
	ori $t0, $t0, 2224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2200
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1642, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1643
	b .long_func_label1643
.long_func_label1643:
# %op1644 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1645 = sdiv i32  %op1644, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1645, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1646 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1647 = sdiv i32  %op1646, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1647, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 2180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1648 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1649 = add i32  %op1648, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1649, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 2172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1624
	b .long_func_label1624
.long_func_label1650:
# %op1651 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1652 = srem i32  %op1651, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1653 = icmp ne i32  %op1652, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label230
	addi.d $t2, $zero, 0
	b false_label230
true_label230:
	addi.d $t2, $zero, 1
false_label230:
	lu12i.w $t8, -2
	ori $t8, $t8, 2163
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1653, label %label1636, label %label1643
	lu12i.w $t0, -2
	ori $t0, $t0, 2163
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1636
	b .long_func_label1643
.long_func_label1654:
# %op1655 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op1655
	lu12i.w $t0, -2
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1656 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1657 = load i32 , i32 * %op1610
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1657, i32 * %op1656
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2128
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1658 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1659 = load i32 , i32 * %op1607
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1659, i32 * %op1658
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1666
	b .long_func_label1666
.long_func_label1660:
# %op1661 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op1661
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1662 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1663 = load i32 , i32 * %op1610
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1663, i32 * %op1662
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1664 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 2072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1665 = load i32 , i32 * %op1610
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1665, i32 * %op1664
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2064
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2013
	b .long_func_label2013
.long_func_label1666:
# %op1667 = load i32 , i32 * %op1656
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1668 = icmp ne i32  %op1667, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label231
	addi.d $t2, $zero, 0
	b false_label231
true_label231:
	addi.d $t2, $zero, 1
false_label231:
	lu12i.w $t8, -2
	ori $t8, $t8, 2059
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1668, label %label1669, label %label1671
	lu12i.w $t0, -2
	ori $t0, $t0, 2059
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1669
	b .long_func_label1671
.long_func_label1669:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1670 = load i32 , i32 * %op1656
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1670, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 2052
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label1674
	b .long_func_label1674
.long_func_label1671:
# %op1672 = load i32 , i32 * %op1655
	lu12i.w $t0, -2
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1672, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 2048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1673 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1673, i32 * %op1607
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1660
	b .long_func_label1660
.long_func_label1674:
# %op1675 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1676 = icmp slt i32  %op1675, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2039
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1677 = zext i1  %op1676 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2039
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1678 = icmp ne i32  %op1677, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label233
	addi.d $t2, $zero, 0
	b false_label233
true_label233:
	addi.d $t2, $zero, 1
false_label233:
	lu12i.w $t8, -2
	ori $t8, $t8, 2031
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1678, label %label1679, label %label1683
	lu12i.w $t0, -2
	ori $t0, $t0, 2031
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1679
	b .long_func_label1683
.long_func_label1679:
# %op1680 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1681 = srem i32  %op1680, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1682 = icmp ne i32  %op1681, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label234
	addi.d $t2, $zero, 0
	b false_label234
true_label234:
	addi.d $t2, $zero, 1
false_label234:
	lu12i.w $t8, -2
	ori $t8, $t8, 2019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1682, label %label1700, label %label1693
	lu12i.w $t0, -2
	ori $t0, $t0, 2019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1700
	b .long_func_label1693
.long_func_label1683:
# %op1684 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1685 = icmp ne i32  %op1684, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label235
	addi.d $t2, $zero, 0
	b false_label235
true_label235:
	addi.d $t2, $zero, 1
false_label235:
	lu12i.w $t8, -2
	ori $t8, $t8, 2011
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1685, label %label1704, label %label1710
	lu12i.w $t0, -2
	ori $t0, $t0, 2011
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1704
	b .long_func_label1710
.long_func_label1686:
# %op1687 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1688 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1689 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1688
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 2000
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1690 = load i32 , i32 * %op1689
	lu12i.w $t0, -2
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1691 = mul i32  1, %op1690
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1692 = add i32  %op1687, %op1691
	lu12i.w $t0, -2
	ori $t0, $t0, 2004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1984
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1692, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1693
	b .long_func_label1693
.long_func_label1693:
# %op1694 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1695 = sdiv i32  %op1694, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1695, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1696 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1697 = sdiv i32  %op1696, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1697, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1698 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1699 = add i32  %op1698, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1699, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1674
	b .long_func_label1674
.long_func_label1700:
# %op1701 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1702 = srem i32  %op1701, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1703 = icmp ne i32  %op1702, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label236
	addi.d $t2, $zero, 0
	b false_label236
true_label236:
	addi.d $t2, $zero, 1
false_label236:
	lu12i.w $t8, -2
	ori $t8, $t8, 1947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1703, label %label1686, label %label1693
	lu12i.w $t0, -2
	ori $t0, $t0, 1947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1686
	b .long_func_label1693
.long_func_label1704:
# %op1705 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1706 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1707 = load i32 , i32 * %op1658
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1707, i32 * %op1706
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1708 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1900
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1709 = load i32 , i32 * %op1655
	lu12i.w $t0, -2
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1709, i32 * %op1708
	lu12i.w $t0, -2
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1896
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1716
	b .long_func_label1716
.long_func_label1710:
# %op1711 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1712 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1713 = load i32 , i32 * %op1658
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1713, i32 * %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1714 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op1715 = load i32 , i32 * %op1658
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1715, i32 * %op1714
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1840
	b .long_func_label1840
.long_func_label1716:
# %op1717 = load i32 , i32 * %op1706
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1718 = icmp ne i32  %op1717, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label237
	addi.d $t2, $zero, 0
	b false_label237
true_label237:
	addi.d $t2, $zero, 1
false_label237:
	lu12i.w $t8, -2
	ori $t8, $t8, 1843
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1718, label %label1719, label %label1722
	lu12i.w $t0, -2
	ori $t0, $t0, 1843
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1719
	b .long_func_label1722
.long_func_label1719:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1720 = load i32 , i32 * %op1708
	lu12i.w $t0, -2
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1720, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1721 = load i32 , i32 * %op1706
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1721, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1725
	b .long_func_label1725
.long_func_label1722:
# %op1723 = load i32 , i32 * %op1708
	lu12i.w $t0, -2
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1723, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1724 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1724, i32 * %op1655
	lu12i.w $t0, -2
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1710
	b .long_func_label1710
.long_func_label1725:
# %op1726 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1727 = icmp slt i32  %op1726, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1728 = zext i1  %op1727 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1729 = icmp ne i32  %op1728, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label239
	addi.d $t2, $zero, 0
	b false_label239
true_label239:
	addi.d $t2, $zero, 1
false_label239:
	lu12i.w $t8, -2
	ori $t8, $t8, 1811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1729, label %label1730, label %label1734
	lu12i.w $t0, -2
	ori $t0, $t0, 1811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1730
	b .long_func_label1734
.long_func_label1730:
# %op1731 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1732 = srem i32  %op1731, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1733 = icmp ne i32  %op1732, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label240
	addi.d $t2, $zero, 0
	b false_label240
true_label240:
	addi.d $t2, $zero, 1
false_label240:
	lu12i.w $t8, -2
	ori $t8, $t8, 1799
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1733, label %label1738, label %label1744
	lu12i.w $t0, -2
	ori $t0, $t0, 1799
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1738
	b .long_func_label1744
.long_func_label1734:
# %op1735 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1735, i32 * %op1705
	lu12i.w $t0, -2
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1736 = load i32 , i32 * %op1708
	lu12i.w $t0, -2
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1736, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1737 = load i32 , i32 * %op1706
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1737, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1771
	b .long_func_label1771
.long_func_label1738:
# %op1739 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1740 = srem i32  %op1739, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1741 = icmp eq i32  %op1740, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label241
	addi.d $t2, $zero, 0
	b false_label241
true_label241:
	addi.d $t2, $zero, 1
false_label241:
	lu12i.w $t8, -2
	ori $t8, $t8, 1775
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1742 = zext i1  %op1741 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1775
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1743 = icmp ne i32  %op1742, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label242
	addi.d $t2, $zero, 0
	b false_label242
true_label242:
	addi.d $t2, $zero, 1
false_label242:
	lu12i.w $t8, -2
	ori $t8, $t8, 1767
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1743, label %label1755, label %label1762
	lu12i.w $t0, -2
	ori $t0, $t0, 1767
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1755
	b .long_func_label1762
.long_func_label1744:
# %op1745 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1746 = srem i32  %op1745, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1747 = icmp ne i32  %op1746, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label243
	addi.d $t2, $zero, 0
	b false_label243
true_label243:
	addi.d $t2, $zero, 1
false_label243:
	lu12i.w $t8, -2
	ori $t8, $t8, 1755
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1747, label %label1763, label %label1770
	lu12i.w $t0, -2
	ori $t0, $t0, 1755
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1763
	b .long_func_label1770
.long_func_label1748:
# %op1749 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1750 = sdiv i32  %op1749, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1750, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1751 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1752 = sdiv i32  %op1751, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1752, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1753 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1754 = add i32  %op1753, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1754, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1725
	b .long_func_label1725
.long_func_label1755:
# %op1756 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1757 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1758 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1757
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1759 = load i32 , i32 * %op1758
	lu12i.w $t0, -2
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1760 = mul i32  1, %op1759
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1761 = add i32  %op1756, %op1760
	lu12i.w $t0, -2
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1704
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1761, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1762
	b .long_func_label1762
.long_func_label1762:
# br label %label1748
	b .long_func_label1748
.long_func_label1763:
# %op1764 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1765 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1766 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1765
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1767 = load i32 , i32 * %op1766
	lu12i.w $t0, -2
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1768 = mul i32  1, %op1767
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1769 = add i32  %op1764, %op1768
	lu12i.w $t0, -2
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1769, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1770
	b .long_func_label1770
.long_func_label1770:
# br label %label1748
	b .long_func_label1748
.long_func_label1771:
# %op1772 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1773 = icmp slt i32  %op1772, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1663
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1774 = zext i1  %op1773 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1663
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1775 = icmp ne i32  %op1774, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label245
	addi.d $t2, $zero, 0
	b false_label245
true_label245:
	addi.d $t2, $zero, 1
false_label245:
	lu12i.w $t8, -2
	ori $t8, $t8, 1655
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1775, label %label1776, label %label1780
	lu12i.w $t0, -2
	ori $t0, $t0, 1655
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1776
	b .long_func_label1780
.long_func_label1776:
# %op1777 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1778 = srem i32  %op1777, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1779 = icmp ne i32  %op1778, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label246
	addi.d $t2, $zero, 0
	b false_label246
true_label246:
	addi.d $t2, $zero, 1
false_label246:
	lu12i.w $t8, -2
	ori $t8, $t8, 1643
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1779, label %label1799, label %label1792
	lu12i.w $t0, -2
	ori $t0, $t0, 1643
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1799
	b .long_func_label1792
.long_func_label1780:
# %op1781 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1781, i32 * %op1706
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1782 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1635
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1783 = zext i1  %op1782 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1635
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1784 = icmp ne i32  %op1783, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label248
	addi.d $t2, $zero, 0
	b false_label248
true_label248:
	addi.d $t2, $zero, 1
false_label248:
	lu12i.w $t8, -2
	ori $t8, $t8, 1627
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1784, label %label1803, label %label1804
	lu12i.w $t0, -2
	ori $t0, $t0, 1627
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1803
	b .long_func_label1804
.long_func_label1785:
# %op1786 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1787 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1788 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1787
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1789 = load i32 , i32 * %op1788
	lu12i.w $t0, -2
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1790 = mul i32  1, %op1789
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1791 = add i32  %op1786, %op1790
	lu12i.w $t0, -2
	ori $t0, $t0, 1620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1791, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1792
	b .long_func_label1792
.long_func_label1792:
# %op1793 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1794 = sdiv i32  %op1793, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1794, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1795 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1796 = sdiv i32  %op1795, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1796, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1797 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1798 = add i32  %op1797, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1798, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1572
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1771
	b .long_func_label1771
.long_func_label1799:
# %op1800 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1801 = srem i32  %op1800, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1802 = icmp ne i32  %op1801, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label249
	addi.d $t2, $zero, 0
	b false_label249
true_label249:
	addi.d $t2, $zero, 1
false_label249:
	lu12i.w $t8, -2
	ori $t8, $t8, 1563
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1802, label %label1785, label %label1792
	lu12i.w $t0, -2
	ori $t0, $t0, 1563
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1785
	b .long_func_label1792
.long_func_label1803:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1809
	b .long_func_label1809
.long_func_label1804:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1805 = load i32 , i32 * %op1706
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1806 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1807 = load i32 , i32 * %op1806
	lu12i.w $t0, -2
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1808 = mul i32  %op1805, %op1807
	lu12i.w $t0, -2
	ori $t0, $t0, 1556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1808, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1812
	b .long_func_label1812
.long_func_label1809:
# %op1810 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1810, i32 * %op1706
	lu12i.w $t0, -2
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1811 = load i32 , i32 * %op1705
	lu12i.w $t0, -2
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1811, i32 * %op1708
	lu12i.w $t0, -2
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1528
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1716
	b .long_func_label1716
.long_func_label1812:
# %op1813 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1814 = icmp slt i32  %op1813, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1523
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1815 = zext i1  %op1814 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1523
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1816 = icmp ne i32  %op1815, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label251
	addi.d $t2, $zero, 0
	b false_label251
true_label251:
	addi.d $t2, $zero, 1
false_label251:
	lu12i.w $t8, -2
	ori $t8, $t8, 1515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1816, label %label1817, label %label1821
	lu12i.w $t0, -2
	ori $t0, $t0, 1515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1817
	b .long_func_label1821
.long_func_label1817:
# %op1818 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1819 = srem i32  %op1818, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1820 = icmp ne i32  %op1819, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label252
	addi.d $t2, $zero, 0
	b false_label252
true_label252:
	addi.d $t2, $zero, 1
false_label252:
	lu12i.w $t8, -2
	ori $t8, $t8, 1503
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1820, label %label1836, label %label1829
	lu12i.w $t0, -2
	ori $t0, $t0, 1503
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1836
	b .long_func_label1829
.long_func_label1821:
# br label %label1809
	b .long_func_label1809
.long_func_label1822:
# %op1823 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1824 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1825 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1824
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1826 = load i32 , i32 * %op1825
	lu12i.w $t0, -2
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1827 = mul i32  1, %op1826
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1828 = add i32  %op1823, %op1827
	lu12i.w $t0, -2
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1828, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1829
	b .long_func_label1829
.long_func_label1829:
# %op1830 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1831 = sdiv i32  %op1830, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1831, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1832 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1833 = sdiv i32  %op1832, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1833, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1834 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1835 = add i32  %op1834, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1835, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1812
	b .long_func_label1812
.long_func_label1836:
# %op1837 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1838 = srem i32  %op1837, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1839 = icmp ne i32  %op1838, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label253
	addi.d $t2, $zero, 0
	b false_label253
true_label253:
	addi.d $t2, $zero, 1
false_label253:
	lu12i.w $t8, -2
	ori $t8, $t8, 1435
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1839, label %label1822, label %label1829
	lu12i.w $t0, -2
	ori $t0, $t0, 1435
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1822
	b .long_func_label1829
.long_func_label1840:
# %op1841 = load i32 , i32 * %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1842 = icmp ne i32  %op1841, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label254
	addi.d $t2, $zero, 0
	b false_label254
true_label254:
	addi.d $t2, $zero, 1
false_label254:
	lu12i.w $t8, -2
	ori $t8, $t8, 1427
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1842, label %label1843, label %label1846
	lu12i.w $t0, -2
	ori $t0, $t0, 1427
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1843
	b .long_func_label1846
.long_func_label1843:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1844 = load i32 , i32 * %op1714
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1844, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1845 = load i32 , i32 * %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1845, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1854
	b .long_func_label1854
.long_func_label1846:
# %op1847 = load i32 , i32 * %op1714
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1847, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1848 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1848, i32 * %op1658
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1408
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1849 = load i32 , i32 * %op1656
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1849, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1850 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1851 = icmp sge i32  %op1850, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label255
	addi.d $t2, $zero, 0
	b false_label255
true_label255:
	addi.d $t2, $zero, 1
false_label255:
	lu12i.w $t8, -2
	ori $t8, $t8, 1399
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1852 = zext i1  %op1851 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1399
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1853 = icmp ne i32  %op1852, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label256
	addi.d $t2, $zero, 0
	b false_label256
true_label256:
	addi.d $t2, $zero, 1
false_label256:
	lu12i.w $t8, -2
	ori $t8, $t8, 1391
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1853, label %label1969, label %label1974
	lu12i.w $t0, -2
	ori $t0, $t0, 1391
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1969
	b .long_func_label1974
.long_func_label1854:
# %op1855 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1856 = icmp slt i32  %op1855, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1383
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1857 = zext i1  %op1856 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1383
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1858 = icmp ne i32  %op1857, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label258
	addi.d $t2, $zero, 0
	b false_label258
true_label258:
	addi.d $t2, $zero, 1
false_label258:
	lu12i.w $t8, -2
	ori $t8, $t8, 1375
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1858, label %label1859, label %label1863
	lu12i.w $t0, -2
	ori $t0, $t0, 1375
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1859
	b .long_func_label1863
.long_func_label1859:
# %op1860 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1861 = srem i32  %op1860, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1862 = icmp ne i32  %op1861, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label259
	addi.d $t2, $zero, 0
	b false_label259
true_label259:
	addi.d $t2, $zero, 1
false_label259:
	lu12i.w $t8, -2
	ori $t8, $t8, 1363
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1862, label %label1867, label %label1873
	lu12i.w $t0, -2
	ori $t0, $t0, 1363
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1867
	b .long_func_label1873
.long_func_label1863:
# %op1864 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1864, i32 * %op1711
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1865 = load i32 , i32 * %op1714
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1865, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1866 = load i32 , i32 * %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1866, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1900
	b .long_func_label1900
.long_func_label1867:
# %op1868 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1869 = srem i32  %op1868, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1870 = icmp eq i32  %op1869, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1340
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label260
	addi.d $t2, $zero, 0
	b false_label260
true_label260:
	addi.d $t2, $zero, 1
false_label260:
	lu12i.w $t8, -2
	ori $t8, $t8, 1339
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1871 = zext i1  %op1870 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1339
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1872 = icmp ne i32  %op1871, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label261
	addi.d $t2, $zero, 0
	b false_label261
true_label261:
	addi.d $t2, $zero, 1
false_label261:
	lu12i.w $t8, -2
	ori $t8, $t8, 1331
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1872, label %label1884, label %label1891
	lu12i.w $t0, -2
	ori $t0, $t0, 1331
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1884
	b .long_func_label1891
.long_func_label1873:
# %op1874 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1875 = srem i32  %op1874, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1876 = icmp ne i32  %op1875, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label262
	addi.d $t2, $zero, 0
	b false_label262
true_label262:
	addi.d $t2, $zero, 1
false_label262:
	lu12i.w $t8, -2
	ori $t8, $t8, 1319
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1876, label %label1892, label %label1899
	lu12i.w $t0, -2
	ori $t0, $t0, 1319
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1892
	b .long_func_label1899
.long_func_label1877:
# %op1878 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1879 = sdiv i32  %op1878, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1879, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1308
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1880 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1881 = sdiv i32  %op1880, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1881, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1300
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1882 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1883 = add i32  %op1882, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1883, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1854
	b .long_func_label1854
.long_func_label1884:
# %op1885 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1886 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1887 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1886
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1888 = load i32 , i32 * %op1887
	lu12i.w $t0, -2
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1889 = mul i32  1, %op1888
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1268
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1890 = add i32  %op1885, %op1889
	lu12i.w $t0, -2
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1890, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1260
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1891
	b .long_func_label1891
.long_func_label1891:
# br label %label1877
	b .long_func_label1877
.long_func_label1892:
# %op1893 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1894 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1895 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1894
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1896 = load i32 , i32 * %op1895
	lu12i.w $t0, -2
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1897 = mul i32  1, %op1896
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1898 = add i32  %op1893, %op1897
	lu12i.w $t0, -2
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1898, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1899
	b .long_func_label1899
.long_func_label1899:
# br label %label1877
	b .long_func_label1877
.long_func_label1900:
# %op1901 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1902 = icmp slt i32  %op1901, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1223
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1903 = zext i1  %op1902 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1223
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1904 = icmp ne i32  %op1903, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label264
	addi.d $t2, $zero, 0
	b false_label264
true_label264:
	addi.d $t2, $zero, 1
false_label264:
	lu12i.w $t8, -2
	ori $t8, $t8, 1215
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1904, label %label1905, label %label1909
	lu12i.w $t0, -2
	ori $t0, $t0, 1215
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1905
	b .long_func_label1909
.long_func_label1905:
# %op1906 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1907 = srem i32  %op1906, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1908 = icmp ne i32  %op1907, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label265
	addi.d $t2, $zero, 0
	b false_label265
true_label265:
	addi.d $t2, $zero, 1
false_label265:
	lu12i.w $t8, -2
	ori $t8, $t8, 1203
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1908, label %label1928, label %label1921
	lu12i.w $t0, -2
	ori $t0, $t0, 1203
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1928
	b .long_func_label1921
.long_func_label1909:
# %op1910 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1910, i32 * %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1911 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 1195
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1912 = zext i1  %op1911 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1195
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1913 = icmp ne i32  %op1912, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label267
	addi.d $t2, $zero, 0
	b false_label267
true_label267:
	addi.d $t2, $zero, 1
false_label267:
	lu12i.w $t8, -2
	ori $t8, $t8, 1187
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1913, label %label1932, label %label1933
	lu12i.w $t0, -2
	ori $t0, $t0, 1187
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1932
	b .long_func_label1933
.long_func_label1914:
# %op1915 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1916 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1917 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1916
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1918 = load i32 , i32 * %op1917
	lu12i.w $t0, -2
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1919 = mul i32  1, %op1918
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1920 = add i32  %op1915, %op1919
	lu12i.w $t0, -2
	ori $t0, $t0, 1180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1160
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1920, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1921
	b .long_func_label1921
.long_func_label1921:
# %op1922 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1923 = sdiv i32  %op1922, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1923, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1924 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1925 = sdiv i32  %op1924, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1925, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1926 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1927 = add i32  %op1926, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1927, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1132
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1900
	b .long_func_label1900
.long_func_label1928:
# %op1929 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1930 = srem i32  %op1929, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1931 = icmp ne i32  %op1930, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label268
	addi.d $t2, $zero, 0
	b false_label268
true_label268:
	addi.d $t2, $zero, 1
false_label268:
	lu12i.w $t8, -2
	ori $t8, $t8, 1123
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1931, label %label1914, label %label1921
	lu12i.w $t0, -2
	ori $t0, $t0, 1123
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1914
	b .long_func_label1921
.long_func_label1932:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1938
	b .long_func_label1938
.long_func_label1933:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op1934 = load i32 , i32 * %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1935 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1936 = load i32 , i32 * %op1935
	lu12i.w $t0, -2
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1937 = mul i32  %op1934, %op1936
	lu12i.w $t0, -2
	ori $t0, $t0, 1116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1937, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1096
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1941
	b .long_func_label1941
.long_func_label1938:
# %op1939 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1939, i32 * %op1712
	lu12i.w $t0, -2
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1940 = load i32 , i32 * %op1711
	lu12i.w $t0, -2
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1940, i32 * %op1714
	lu12i.w $t0, -2
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1840
	b .long_func_label1840
.long_func_label1941:
# %op1942 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1943 = icmp slt i32  %op1942, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 1084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1083
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1944 = zext i1  %op1943 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1083
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1945 = icmp ne i32  %op1944, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1076
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label270
	addi.d $t2, $zero, 0
	b false_label270
true_label270:
	addi.d $t2, $zero, 1
false_label270:
	lu12i.w $t8, -2
	ori $t8, $t8, 1075
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1945, label %label1946, label %label1950
	lu12i.w $t0, -2
	ori $t0, $t0, 1075
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1946
	b .long_func_label1950
.long_func_label1946:
# %op1947 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1948 = srem i32  %op1947, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1949 = icmp ne i32  %op1948, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label271
	addi.d $t2, $zero, 0
	b false_label271
true_label271:
	addi.d $t2, $zero, 1
false_label271:
	lu12i.w $t8, -2
	ori $t8, $t8, 1063
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1949, label %label1965, label %label1958
	lu12i.w $t0, -2
	ori $t0, $t0, 1063
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1965
	b .long_func_label1958
.long_func_label1950:
# br label %label1938
	b .long_func_label1938
.long_func_label1951:
# %op1952 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1953 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1954 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1953
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 1052
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1955 = load i32 , i32 * %op1954
	lu12i.w $t0, -2
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1956 = mul i32  1, %op1955
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 1036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1957 = add i32  %op1952, %op1956
	lu12i.w $t0, -2
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1957, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 1028
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1958
	b .long_func_label1958
.long_func_label1958:
# %op1959 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1960 = sdiv i32  %op1959, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1960, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 1020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1961 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1962 = sdiv i32  %op1961, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1962, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 1012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1963 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1964 = add i32  %op1963, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 1004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1964, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 1004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1941
	b .long_func_label1941
.long_func_label1965:
# %op1966 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1967 = srem i32  %op1966, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op1968 = icmp ne i32  %op1967, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label272
	addi.d $t2, $zero, 0
	b false_label272
true_label272:
	addi.d $t2, $zero, 1
false_label272:
	lu12i.w $t8, -2
	ori $t8, $t8, 995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1968, label %label1951, label %label1958
	lu12i.w $t0, -2
	ori $t0, $t0, 995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1951
	b .long_func_label1958
.long_func_label1969:
# %op1970 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1971 = icmp slt i32  %op1970, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 987
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1972 = zext i1  %op1971 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 987
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1973 = icmp ne i32  %op1972, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label274
	addi.d $t2, $zero, 0
	b false_label274
true_label274:
	addi.d $t2, $zero, 1
false_label274:
	lu12i.w $t8, -2
	ori $t8, $t8, 979
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1973, label %label1981, label %label1982
	lu12i.w $t0, -2
	ori $t0, $t0, 979
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1981
	b .long_func_label1982
.long_func_label1974:
# %op1975 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1976 = icmp sgt i32  %op1975, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 971
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1977 = zext i1  %op1976 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 971
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1978 = icmp ne i32  %op1977, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label276
	addi.d $t2, $zero, 0
	b false_label276
true_label276:
	addi.d $t2, $zero, 1
false_label276:
	lu12i.w $t8, -2
	ori $t8, $t8, 963
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1978, label %label1984, label %label1989
	lu12i.w $t0, -2
	ori $t0, $t0, 963
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1984
	b .long_func_label1989
.long_func_label1979:
# %op1980 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1980, i32 * %op1656
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1666
	b .long_func_label1666
.long_func_label1981:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label1983
	b .long_func_label1983
.long_func_label1982:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label1983
	b .long_func_label1983
.long_func_label1983:
# br label %label1979
	b .long_func_label1979
.long_func_label1984:
# %op1985 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1986 = icmp sgt i32  %op1985, 32767
	lu12i.w $t0, -2
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 951
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op1987 = zext i1  %op1986 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 951
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op1988 = icmp ne i32  %op1987, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label278
	addi.d $t2, $zero, 0
	b false_label278
true_label278:
	addi.d $t2, $zero, 1
false_label278:
	lu12i.w $t8, -2
	ori $t8, $t8, 943
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op1988, label %label1992, label %label2006
	lu12i.w $t0, -2
	ori $t0, $t0, 943
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label1992
	b .long_func_label2006
.long_func_label1989:
# %op1990 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op1990, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 936
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1991
	b .long_func_label1991
.long_func_label1991:
# br label %label1979
	b .long_func_label1979
.long_func_label1992:
# %op1993 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1994 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1995 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op1994
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op1996 = load i32 , i32 * %op1995
	lu12i.w $t0, -2
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1997 = sdiv i32  %op1993, %op1996
	lu12i.w $t0, -2
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op1997, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op1998 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op1999 = add i32  %op1998, 65536
	lu12i.w $t0, -2
	ori $t0, $t0, 908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2000 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2001 = sub i32  15, %op2000
	addi.w $t0, $zero, 15
	lu12i.w $t1, -2
	ori $t1, $t1, 900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2002 = add i32  %op2001, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2003 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2002
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2004 = load i32 , i32 * %op2003
	lu12i.w $t0, -2
	ori $t0, $t0, 880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2005 = sub i32  %op1999, %op2004
	lu12i.w $t0, -2
	ori $t0, $t0, 904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2005, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2012
	b .long_func_label2012
.long_func_label2006:
# %op2007 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2008 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2009 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2008
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 864
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2010 = load i32 , i32 * %op2009
	lu12i.w $t0, -2
	ori $t0, $t0, 856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2011 = sdiv i32  %op2007, %op2010
	lu12i.w $t0, -2
	ori $t0, $t0, 868
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2011, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 848
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2012
	b .long_func_label2012
.long_func_label2012:
# br label %label1991
	b .long_func_label1991
.long_func_label2013:
# %op2014 = load i32 , i32 * %op1662
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2015 = icmp ne i32  %op2014, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label279
	addi.d $t2, $zero, 0
	b false_label279
true_label279:
	addi.d $t2, $zero, 1
false_label279:
	lu12i.w $t8, -2
	ori $t8, $t8, 843
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2015, label %label2016, label %label2018
	lu12i.w $t0, -2
	ori $t0, $t0, 843
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2016
	b .long_func_label2018
.long_func_label2016:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2017 = load i32 , i32 * %op1662
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2017, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2026
	b .long_func_label2026
.long_func_label2018:
# %op2019 = load i32 , i32 * %op1661
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2019, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 832
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2020 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2020, i32 * %op1610
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2021 = load i32 , i32 * %op1608
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2021, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2022 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2023 = icmp sge i32  %op2022, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label280
	addi.d $t2, $zero, 0
	b false_label280
true_label280:
	addi.d $t2, $zero, 1
false_label280:
	lu12i.w $t8, -2
	ori $t8, $t8, 819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2024 = zext i1  %op2023 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2025 = icmp ne i32  %op2024, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label281
	addi.d $t2, $zero, 0
	b false_label281
true_label281:
	addi.d $t2, $zero, 1
false_label281:
	lu12i.w $t8, -2
	ori $t8, $t8, 811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2025, label %label2365, label %label2370
	lu12i.w $t0, -2
	ori $t0, $t0, 811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2365
	b .long_func_label2370
.long_func_label2026:
# %op2027 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2028 = icmp slt i32  %op2027, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2029 = zext i1  %op2028 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2030 = icmp ne i32  %op2029, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label283
	addi.d $t2, $zero, 0
	b false_label283
true_label283:
	addi.d $t2, $zero, 1
false_label283:
	lu12i.w $t8, -2
	ori $t8, $t8, 795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2030, label %label2031, label %label2035
	lu12i.w $t0, -2
	ori $t0, $t0, 795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2031
	b .long_func_label2035
.long_func_label2031:
# %op2032 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2033 = srem i32  %op2032, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2034 = icmp ne i32  %op2033, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label284
	addi.d $t2, $zero, 0
	b false_label284
true_label284:
	addi.d $t2, $zero, 1
false_label284:
	lu12i.w $t8, -2
	ori $t8, $t8, 783
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2034, label %label2052, label %label2045
	lu12i.w $t0, -2
	ori $t0, $t0, 783
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2052
	b .long_func_label2045
.long_func_label2035:
# %op2036 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2037 = icmp ne i32  %op2036, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label285
	addi.d $t2, $zero, 0
	b false_label285
true_label285:
	addi.d $t2, $zero, 1
false_label285:
	lu12i.w $t8, -2
	ori $t8, $t8, 775
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2037, label %label2056, label %label2062
	lu12i.w $t0, -2
	ori $t0, $t0, 775
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2056
	b .long_func_label2062
.long_func_label2038:
# %op2039 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2040 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2041 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2040
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2042 = load i32 , i32 * %op2041
	lu12i.w $t0, -2
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2043 = mul i32  1, %op2042
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2044 = add i32  %op2039, %op2043
	lu12i.w $t0, -2
	ori $t0, $t0, 768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 744
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2044, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2045
	b .long_func_label2045
.long_func_label2045:
# %op2046 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2047 = sdiv i32  %op2046, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2047, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2048 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2049 = sdiv i32  %op2048, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2049, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2050 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2051 = add i32  %op2050, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2051, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2026
	b .long_func_label2026
.long_func_label2052:
# %op2053 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2054 = srem i32  %op2053, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2055 = icmp ne i32  %op2054, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label286
	addi.d $t2, $zero, 0
	b false_label286
true_label286:
	addi.d $t2, $zero, 1
false_label286:
	lu12i.w $t8, -2
	ori $t8, $t8, 707
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2055, label %label2038, label %label2045
	lu12i.w $t0, -2
	ori $t0, $t0, 707
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2038
	b .long_func_label2045
.long_func_label2056:
# %op2057 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2058 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2059 = load i32 , i32 * %op1664
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2059, i32 * %op2058
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2060 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2061 = load i32 , i32 * %op1661
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2061, i32 * %op2060
	lu12i.w $t0, -2
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2068
	b .long_func_label2068
.long_func_label2062:
# %op2063 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2064 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2065 = load i32 , i32 * %op1664
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2065, i32 * %op2064
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2066 = alloca i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2067 = load i32 , i32 * %op1664
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2067, i32 * %op2066
	lu12i.w $t0, -2
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 608
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2192
	b .long_func_label2192
.long_func_label2068:
# %op2069 = load i32 , i32 * %op2058
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2070 = icmp ne i32  %op2069, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 604
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label287
	addi.d $t2, $zero, 0
	b false_label287
true_label287:
	addi.d $t2, $zero, 1
false_label287:
	lu12i.w $t8, -2
	ori $t8, $t8, 603
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2070, label %label2071, label %label2074
	lu12i.w $t0, -2
	ori $t0, $t0, 603
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2071
	b .long_func_label2074
.long_func_label2071:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2072 = load i32 , i32 * %op2060
	lu12i.w $t0, -2
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2072, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2073 = load i32 , i32 * %op2058
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2073, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2077
	b .long_func_label2077
.long_func_label2074:
# %op2075 = load i32 , i32 * %op2060
	lu12i.w $t0, -2
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2075, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2076 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2076, i32 * %op1661
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2062
	b .long_func_label2062
.long_func_label2077:
# %op2078 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2079 = icmp slt i32  %op2078, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 579
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2080 = zext i1  %op2079 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 579
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2081 = icmp ne i32  %op2080, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label289
	addi.d $t2, $zero, 0
	b false_label289
true_label289:
	addi.d $t2, $zero, 1
false_label289:
	lu12i.w $t8, -2
	ori $t8, $t8, 571
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2081, label %label2082, label %label2086
	lu12i.w $t0, -2
	ori $t0, $t0, 571
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2082
	b .long_func_label2086
.long_func_label2082:
# %op2083 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2084 = srem i32  %op2083, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2085 = icmp ne i32  %op2084, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label290
	addi.d $t2, $zero, 0
	b false_label290
true_label290:
	addi.d $t2, $zero, 1
false_label290:
	lu12i.w $t8, -2
	ori $t8, $t8, 559
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2085, label %label2090, label %label2096
	lu12i.w $t0, -2
	ori $t0, $t0, 559
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2090
	b .long_func_label2096
.long_func_label2086:
# %op2087 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2087, i32 * %op2057
	lu12i.w $t0, -2
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 552
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2088 = load i32 , i32 * %op2060
	lu12i.w $t0, -2
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2088, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2089 = load i32 , i32 * %op2058
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2089, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2123
	b .long_func_label2123
.long_func_label2090:
# %op2091 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2092 = srem i32  %op2091, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 540
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2093 = icmp eq i32  %op2092, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label291
	addi.d $t2, $zero, 0
	b false_label291
true_label291:
	addi.d $t2, $zero, 1
false_label291:
	lu12i.w $t8, -2
	ori $t8, $t8, 535
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2094 = zext i1  %op2093 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 535
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2095 = icmp ne i32  %op2094, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label292
	addi.d $t2, $zero, 0
	b false_label292
true_label292:
	addi.d $t2, $zero, 1
false_label292:
	lu12i.w $t8, -2
	ori $t8, $t8, 527
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2095, label %label2107, label %label2114
	lu12i.w $t0, -2
	ori $t0, $t0, 527
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2107
	b .long_func_label2114
.long_func_label2096:
# %op2097 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2098 = srem i32  %op2097, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2099 = icmp ne i32  %op2098, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label293
	addi.d $t2, $zero, 0
	b false_label293
true_label293:
	addi.d $t2, $zero, 1
false_label293:
	lu12i.w $t8, -2
	ori $t8, $t8, 515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2099, label %label2115, label %label2122
	lu12i.w $t0, -2
	ori $t0, $t0, 515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2115
	b .long_func_label2122
.long_func_label2100:
# %op2101 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2102 = sdiv i32  %op2101, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2102, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 504
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2103 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2104 = sdiv i32  %op2103, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2104, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 496
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2105 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2106 = add i32  %op2105, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 492
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2106, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 488
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2077
	b .long_func_label2077
.long_func_label2107:
# %op2108 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2109 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2110 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2109
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2111 = load i32 , i32 * %op2110
	lu12i.w $t0, -2
	ori $t0, $t0, 472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2112 = mul i32  1, %op2111
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2113 = add i32  %op2108, %op2112
	lu12i.w $t0, -2
	ori $t0, $t0, 484
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 464
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2113, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 460
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2114
	b .long_func_label2114
.long_func_label2114:
# br label %label2100
	b .long_func_label2100
.long_func_label2115:
# %op2116 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2117 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2118 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2117
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2119 = load i32 , i32 * %op2118
	lu12i.w $t0, -2
	ori $t0, $t0, 440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2120 = mul i32  1, %op2119
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2121 = add i32  %op2116, %op2120
	lu12i.w $t0, -2
	ori $t0, $t0, 456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 432
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2121, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 428
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2122
	b .long_func_label2122
.long_func_label2122:
# br label %label2100
	b .long_func_label2100
.long_func_label2123:
# %op2124 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2125 = icmp slt i32  %op2124, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 423
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2126 = zext i1  %op2125 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 423
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2127 = icmp ne i32  %op2126, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label295
	addi.d $t2, $zero, 0
	b false_label295
true_label295:
	addi.d $t2, $zero, 1
false_label295:
	lu12i.w $t8, -2
	ori $t8, $t8, 415
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2127, label %label2128, label %label2132
	lu12i.w $t0, -2
	ori $t0, $t0, 415
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2128
	b .long_func_label2132
.long_func_label2128:
# %op2129 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2130 = srem i32  %op2129, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2131 = icmp ne i32  %op2130, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label296
	addi.d $t2, $zero, 0
	b false_label296
true_label296:
	addi.d $t2, $zero, 1
false_label296:
	lu12i.w $t8, -2
	ori $t8, $t8, 403
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2131, label %label2151, label %label2144
	lu12i.w $t0, -2
	ori $t0, $t0, 403
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2151
	b .long_func_label2144
.long_func_label2132:
# %op2133 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2133, i32 * %op2058
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2134 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -2
	ori $t8, $t8, 395
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2135 = zext i1  %op2134 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 395
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2136 = icmp ne i32  %op2135, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label298
	addi.d $t2, $zero, 0
	b false_label298
true_label298:
	addi.d $t2, $zero, 1
false_label298:
	lu12i.w $t8, -2
	ori $t8, $t8, 387
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2136, label %label2155, label %label2156
	lu12i.w $t0, -2
	ori $t0, $t0, 387
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2155
	b .long_func_label2156
.long_func_label2137:
# %op2138 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2139 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2140 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2139
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 376
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2141 = load i32 , i32 * %op2140
	lu12i.w $t0, -2
	ori $t0, $t0, 368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2142 = mul i32  1, %op2141
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2143 = add i32  %op2138, %op2142
	lu12i.w $t0, -2
	ori $t0, $t0, 380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2143, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2144
	b .long_func_label2144
.long_func_label2144:
# %op2145 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2146 = sdiv i32  %op2145, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2146, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2147 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2148 = sdiv i32  %op2147, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2148, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2149 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2150 = add i32  %op2149, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2150, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2123
	b .long_func_label2123
.long_func_label2151:
# %op2152 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2153 = srem i32  %op2152, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2154 = icmp ne i32  %op2153, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 324
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label299
	addi.d $t2, $zero, 0
	b false_label299
true_label299:
	addi.d $t2, $zero, 1
false_label299:
	lu12i.w $t8, -2
	ori $t8, $t8, 323
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2154, label %label2137, label %label2144
	lu12i.w $t0, -2
	ori $t0, $t0, 323
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2137
	b .long_func_label2144
.long_func_label2155:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2161
	b .long_func_label2161
.long_func_label2156:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2157 = load i32 , i32 * %op2058
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2158 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2159 = load i32 , i32 * %op2158
	lu12i.w $t0, -2
	ori $t0, $t0, 304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2160 = mul i32  %op2157, %op2159
	lu12i.w $t0, -2
	ori $t0, $t0, 316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 300
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2160, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2164
	b .long_func_label2164
.long_func_label2161:
# %op2162 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2162, i32 * %op2058
	lu12i.w $t0, -2
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2163 = load i32 , i32 * %op2057
	lu12i.w $t0, -2
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2163, i32 * %op2060
	lu12i.w $t0, -2
	ori $t0, $t0, 664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 288
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2068
	b .long_func_label2068
.long_func_label2164:
# %op2165 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2166 = icmp slt i32  %op2165, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 283
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2167 = zext i1  %op2166 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 283
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2168 = icmp ne i32  %op2167, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label301
	addi.d $t2, $zero, 0
	b false_label301
true_label301:
	addi.d $t2, $zero, 1
false_label301:
	lu12i.w $t8, -2
	ori $t8, $t8, 275
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2168, label %label2169, label %label2173
	lu12i.w $t0, -2
	ori $t0, $t0, 275
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2169
	b .long_func_label2173
.long_func_label2169:
# %op2170 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2171 = srem i32  %op2170, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2172 = icmp ne i32  %op2171, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label302
	addi.d $t2, $zero, 0
	b false_label302
true_label302:
	addi.d $t2, $zero, 1
false_label302:
	lu12i.w $t8, -2
	ori $t8, $t8, 263
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2172, label %label2188, label %label2181
	lu12i.w $t0, -2
	ori $t0, $t0, 263
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2188
	b .long_func_label2181
.long_func_label2173:
# br label %label2161
	b .long_func_label2161
.long_func_label2174:
# %op2175 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2176 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2177 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2176
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2178 = load i32 , i32 * %op2177
	lu12i.w $t0, -2
	ori $t0, $t0, 240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2179 = mul i32  1, %op2178
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2180 = add i32  %op2175, %op2179
	lu12i.w $t0, -2
	ori $t0, $t0, 256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2180, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2181
	b .long_func_label2181
.long_func_label2181:
# %op2182 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2183 = sdiv i32  %op2182, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2183, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2184 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2185 = sdiv i32  %op2184, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2185, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2186 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2187 = add i32  %op2186, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2187, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2164
	b .long_func_label2164
.long_func_label2188:
# %op2189 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2190 = srem i32  %op2189, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2191 = icmp ne i32  %op2190, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label303
	addi.d $t2, $zero, 0
	b false_label303
true_label303:
	addi.d $t2, $zero, 1
false_label303:
	lu12i.w $t8, -2
	ori $t8, $t8, 195
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2191, label %label2174, label %label2181
	lu12i.w $t0, -2
	ori $t0, $t0, 195
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2174
	b .long_func_label2181
.long_func_label2192:
# %op2193 = load i32 , i32 * %op2064
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2194 = icmp ne i32  %op2193, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label304
	addi.d $t2, $zero, 0
	b false_label304
true_label304:
	addi.d $t2, $zero, 1
false_label304:
	lu12i.w $t8, -2
	ori $t8, $t8, 187
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2194, label %label2195, label %label2198
	lu12i.w $t0, -2
	ori $t0, $t0, 187
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2195
	b .long_func_label2198
.long_func_label2195:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2196 = load i32 , i32 * %op2066
	lu12i.w $t0, -2
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2196, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2197 = load i32 , i32 * %op2064
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2197, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2206
	b .long_func_label2206
.long_func_label2198:
# %op2199 = load i32 , i32 * %op2066
	lu12i.w $t0, -2
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2199, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2200 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2200, i32 * %op1664
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2201 = load i32 , i32 * %op1662
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2201, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2202 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2203 = icmp sge i32  %op2202, 15
	lu12i.w $t0, -2
	ori $t0, $t0, 160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label305
	addi.d $t2, $zero, 0
	b false_label305
true_label305:
	addi.d $t2, $zero, 1
false_label305:
	lu12i.w $t8, -2
	ori $t8, $t8, 159
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2204 = zext i1  %op2203 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 159
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2205 = icmp ne i32  %op2204, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label306
	addi.d $t2, $zero, 0
	b false_label306
true_label306:
	addi.d $t2, $zero, 1
false_label306:
	lu12i.w $t8, -2
	ori $t8, $t8, 151
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2205, label %label2321, label %label2326
	lu12i.w $t0, -2
	ori $t0, $t0, 151
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2321
	b .long_func_label2326
.long_func_label2206:
# %op2207 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2208 = icmp slt i32  %op2207, 16
	lu12i.w $t0, -2
	ori $t0, $t0, 144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 143
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2209 = zext i1  %op2208 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 143
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2210 = icmp ne i32  %op2209, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label308
	addi.d $t2, $zero, 0
	b false_label308
true_label308:
	addi.d $t2, $zero, 1
false_label308:
	lu12i.w $t8, -2
	ori $t8, $t8, 135
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2210, label %label2211, label %label2215
	lu12i.w $t0, -2
	ori $t0, $t0, 135
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2211
	b .long_func_label2215
.long_func_label2211:
# %op2212 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2213 = srem i32  %op2212, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2214 = icmp ne i32  %op2213, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label309
	addi.d $t2, $zero, 0
	b false_label309
true_label309:
	addi.d $t2, $zero, 1
false_label309:
	lu12i.w $t8, -2
	ori $t8, $t8, 123
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2214, label %label2219, label %label2225
	lu12i.w $t0, -2
	ori $t0, $t0, 123
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2219
	b .long_func_label2225
.long_func_label2215:
# %op2216 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2216, i32 * %op2063
	lu12i.w $t0, -2
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 116
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2217 = load i32 , i32 * %op2066
	lu12i.w $t0, -2
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2217, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2218 = load i32 , i32 * %op2064
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2218, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2252
	b .long_func_label2252
.long_func_label2219:
# %op2220 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2221 = srem i32  %op2220, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2222 = icmp eq i32  %op2221, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label310
	addi.d $t2, $zero, 0
	b false_label310
true_label310:
	addi.d $t2, $zero, 1
false_label310:
	lu12i.w $t8, -2
	ori $t8, $t8, 99
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2223 = zext i1  %op2222 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 99
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 92
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2224 = icmp ne i32  %op2223, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 92
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label311
	addi.d $t2, $zero, 0
	b false_label311
true_label311:
	addi.d $t2, $zero, 1
false_label311:
	lu12i.w $t8, -2
	ori $t8, $t8, 91
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2224, label %label2236, label %label2243
	lu12i.w $t0, -2
	ori $t0, $t0, 91
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2236
	b .long_func_label2243
.long_func_label2225:
# %op2226 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 84
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2227 = srem i32  %op2226, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 84
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 80
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2228 = icmp ne i32  %op2227, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 80
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label312
	addi.d $t2, $zero, 0
	b false_label312
true_label312:
	addi.d $t2, $zero, 1
false_label312:
	lu12i.w $t8, -2
	ori $t8, $t8, 79
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2228, label %label2244, label %label2251
	lu12i.w $t0, -2
	ori $t0, $t0, 79
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2244
	b .long_func_label2251
.long_func_label2229:
# %op2230 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 72
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2231 = sdiv i32  %op2230, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 72
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 68
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2231, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -2
	ori $t1, $t1, 68
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2232 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 64
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2233 = sdiv i32  %op2232, 2
	lu12i.w $t0, -2
	ori $t0, $t0, 64
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 60
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2233, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -2
	ori $t1, $t1, 60
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2234 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 56
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2235 = add i32  %op2234, 1
	lu12i.w $t0, -2
	ori $t0, $t0, 56
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 52
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2235, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -2
	ori $t1, $t1, 52
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2206
	b .long_func_label2206
.long_func_label2236:
# %op2237 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 48
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2238 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 44
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2239 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2238
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 44
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 32
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2240 = load i32 , i32 * %op2239
	lu12i.w $t0, -2
	ori $t0, $t0, 32
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 28
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2241 = mul i32  1, %op2240
	addi.w $t0, $zero, 1
	lu12i.w $t1, -2
	ori $t1, $t1, 28
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 24
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2242 = add i32  %op2237, %op2241
	lu12i.w $t0, -2
	ori $t0, $t0, 48
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 24
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 20
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2242, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -2
	ori $t1, $t1, 20
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2243
	b .long_func_label2243
.long_func_label2243:
# br label %label2229
	b .long_func_label2229
.long_func_label2244:
# %op2245 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 16
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2246 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 12
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2247 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2246
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -2
	ori $t1, $t1, 12
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -2
	ori $t8, $t8, 0
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2248 = load i32 , i32 * %op2247
	lu12i.w $t0, -2
	ori $t0, $t0, 0
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2249 = mul i32  1, %op2248
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 4092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2250 = add i32  %op2245, %op2249
	lu12i.w $t0, -2
	ori $t0, $t0, 16
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4088
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2250, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 4084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2251
	b .long_func_label2251
.long_func_label2251:
# br label %label2229
	b .long_func_label2229
.long_func_label2252:
# %op2253 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2254 = icmp slt i32  %op2253, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 4080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4079
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2255 = zext i1  %op2254 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 4079
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2256 = icmp ne i32  %op2255, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label314
	addi.d $t2, $zero, 0
	b false_label314
true_label314:
	addi.d $t2, $zero, 1
false_label314:
	lu12i.w $t8, -3
	ori $t8, $t8, 4071
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2256, label %label2257, label %label2261
	lu12i.w $t0, -3
	ori $t0, $t0, 4071
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2257
	b .long_func_label2261
.long_func_label2257:
# %op2258 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2259 = srem i32  %op2258, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2260 = icmp ne i32  %op2259, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label315
	addi.d $t2, $zero, 0
	b false_label315
true_label315:
	addi.d $t2, $zero, 1
false_label315:
	lu12i.w $t8, -3
	ori $t8, $t8, 4059
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2260, label %label2280, label %label2273
	lu12i.w $t0, -3
	ori $t0, $t0, 4059
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2280
	b .long_func_label2273
.long_func_label2261:
# %op2262 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2262, i32 * %op2064
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4052
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2263 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 4051
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2264 = zext i1  %op2263 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 4051
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2265 = icmp ne i32  %op2264, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label317
	addi.d $t2, $zero, 0
	b false_label317
true_label317:
	addi.d $t2, $zero, 1
false_label317:
	lu12i.w $t8, -3
	ori $t8, $t8, 4043
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2265, label %label2284, label %label2285
	lu12i.w $t0, -3
	ori $t0, $t0, 4043
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2284
	b .long_func_label2285
.long_func_label2266:
# %op2267 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2268 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2269 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2268
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 4032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2270 = load i32 , i32 * %op2269
	lu12i.w $t0, -3
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2271 = mul i32  1, %op2270
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 4020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2272 = add i32  %op2267, %op2271
	lu12i.w $t0, -3
	ori $t0, $t0, 4036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 4016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2272, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 4012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2273
	b .long_func_label2273
.long_func_label2273:
# %op2274 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2275 = sdiv i32  %op2274, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 4004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2275, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 4004
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2276 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2277 = sdiv i32  %op2276, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2277, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2278 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2279 = add i32  %op2278, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2279, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3988
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2252
	b .long_func_label2252
.long_func_label2280:
# %op2281 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2282 = srem i32  %op2281, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2283 = icmp ne i32  %op2282, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label318
	addi.d $t2, $zero, 0
	b false_label318
true_label318:
	addi.d $t2, $zero, 1
false_label318:
	lu12i.w $t8, -3
	ori $t8, $t8, 3979
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2283, label %label2266, label %label2273
	lu12i.w $t0, -3
	ori $t0, $t0, 3979
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2266
	b .long_func_label2273
.long_func_label2284:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2290
	b .long_func_label2290
.long_func_label2285:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2286 = load i32 , i32 * %op2064
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2287 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -3
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2288 = load i32 , i32 * %op2287
	lu12i.w $t0, -3
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2289 = mul i32  %op2286, %op2288
	lu12i.w $t0, -3
	ori $t0, $t0, 3972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2289, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3952
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2293
	b .long_func_label2293
.long_func_label2290:
# %op2291 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2291, i32 * %op2064
	lu12i.w $t0, -2
	ori $t0, $t0, 632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2292 = load i32 , i32 * %op2063
	lu12i.w $t0, -2
	ori $t0, $t0, 648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2292, i32 * %op2066
	lu12i.w $t0, -2
	ori $t0, $t0, 616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3944
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2192
	b .long_func_label2192
.long_func_label2293:
# %op2294 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2295 = icmp slt i32  %op2294, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2296 = zext i1  %op2295 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2297 = icmp ne i32  %op2296, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label320
	addi.d $t2, $zero, 0
	b false_label320
true_label320:
	addi.d $t2, $zero, 1
false_label320:
	lu12i.w $t8, -3
	ori $t8, $t8, 3931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2297, label %label2298, label %label2302
	lu12i.w $t0, -3
	ori $t0, $t0, 3931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2298
	b .long_func_label2302
.long_func_label2298:
# %op2299 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2300 = srem i32  %op2299, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2301 = icmp ne i32  %op2300, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label321
	addi.d $t2, $zero, 0
	b false_label321
true_label321:
	addi.d $t2, $zero, 1
false_label321:
	lu12i.w $t8, -3
	ori $t8, $t8, 3919
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2301, label %label2317, label %label2310
	lu12i.w $t0, -3
	ori $t0, $t0, 3919
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2317
	b .long_func_label2310
.long_func_label2302:
# br label %label2290
	b .long_func_label2290
.long_func_label2303:
# %op2304 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2305 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2306 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2305
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2307 = load i32 , i32 * %op2306
	lu12i.w $t0, -3
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2308 = mul i32  1, %op2307
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2309 = add i32  %op2304, %op2308
	lu12i.w $t0, -3
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2309, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2310
	b .long_func_label2310
.long_func_label2310:
# %op2311 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2312 = sdiv i32  %op2311, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2312, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2313 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2314 = sdiv i32  %op2313, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2314, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2315 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2316 = add i32  %op2315, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2316, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2293
	b .long_func_label2293
.long_func_label2317:
# %op2318 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2319 = srem i32  %op2318, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2320 = icmp ne i32  %op2319, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label322
	addi.d $t2, $zero, 0
	b false_label322
true_label322:
	addi.d $t2, $zero, 1
false_label322:
	lu12i.w $t8, -3
	ori $t8, $t8, 3851
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2320, label %label2303, label %label2310
	lu12i.w $t0, -3
	ori $t0, $t0, 3851
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2303
	b .long_func_label2310
.long_func_label2321:
# %op2322 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2323 = icmp slt i32  %op2322, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3843
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2324 = zext i1  %op2323 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3843
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2325 = icmp ne i32  %op2324, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3836
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label324
	addi.d $t2, $zero, 0
	b false_label324
true_label324:
	addi.d $t2, $zero, 1
false_label324:
	lu12i.w $t8, -3
	ori $t8, $t8, 3835
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2325, label %label2333, label %label2334
	lu12i.w $t0, -3
	ori $t0, $t0, 3835
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2333
	b .long_func_label2334
.long_func_label2326:
# %op2327 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2328 = icmp sgt i32  %op2327, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3827
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2329 = zext i1  %op2328 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3827
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2330 = icmp ne i32  %op2329, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3820
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label326
	addi.d $t2, $zero, 0
	b false_label326
true_label326:
	addi.d $t2, $zero, 1
false_label326:
	lu12i.w $t8, -3
	ori $t8, $t8, 3819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2330, label %label2336, label %label2341
	lu12i.w $t0, -3
	ori $t0, $t0, 3819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2336
	b .long_func_label2341
.long_func_label2331:
# %op2332 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2332, i32 * %op1662
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3812
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2013
	b .long_func_label2013
.long_func_label2333:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2335
	b .long_func_label2335
.long_func_label2334:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2335
	b .long_func_label2335
.long_func_label2335:
# br label %label2331
	b .long_func_label2331
.long_func_label2336:
# %op2337 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2338 = icmp sgt i32  %op2337, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 3808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3807
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2339 = zext i1  %op2338 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3807
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2340 = icmp ne i32  %op2339, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label328
	addi.d $t2, $zero, 0
	b false_label328
true_label328:
	addi.d $t2, $zero, 1
false_label328:
	lu12i.w $t8, -3
	ori $t8, $t8, 3799
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2340, label %label2344, label %label2358
	lu12i.w $t0, -3
	ori $t0, $t0, 3799
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2344
	b .long_func_label2358
.long_func_label2341:
# %op2342 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2342, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2343
	b .long_func_label2343
.long_func_label2343:
# br label %label2331
	b .long_func_label2331
.long_func_label2344:
# %op2345 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2346 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2347 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2346
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2348 = load i32 , i32 * %op2347
	lu12i.w $t0, -3
	ori $t0, $t0, 3776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2349 = sdiv i32  %op2345, %op2348
	lu12i.w $t0, -3
	ori $t0, $t0, 3788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2349, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3768
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2350 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2351 = add i32  %op2350, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 3764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2352 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2353 = sub i32  15, %op2352
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 3756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2354 = add i32  %op2353, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2355 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2354
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3748
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2356 = load i32 , i32 * %op2355
	lu12i.w $t0, -3
	ori $t0, $t0, 3736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2357 = sub i32  %op2351, %op2356
	lu12i.w $t0, -3
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2357, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2364
	b .long_func_label2364
.long_func_label2358:
# %op2359 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2360 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2361 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2360
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2362 = load i32 , i32 * %op2361
	lu12i.w $t0, -3
	ori $t0, $t0, 3712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2363 = sdiv i32  %op2359, %op2362
	lu12i.w $t0, -3
	ori $t0, $t0, 3724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2363, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3704
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2364
	b .long_func_label2364
.long_func_label2364:
# br label %label2343
	b .long_func_label2343
.long_func_label2365:
# %op2366 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2367 = icmp slt i32  %op2366, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2368 = zext i1  %op2367 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2369 = icmp ne i32  %op2368, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label330
	addi.d $t2, $zero, 0
	b false_label330
true_label330:
	addi.d $t2, $zero, 1
false_label330:
	lu12i.w $t8, -3
	ori $t8, $t8, 3691
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2369, label %label2377, label %label2378
	lu12i.w $t0, -3
	ori $t0, $t0, 3691
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2377
	b .long_func_label2378
.long_func_label2370:
# %op2371 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2372 = icmp sgt i32  %op2371, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3683
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2373 = zext i1  %op2372 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3683
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2374 = icmp ne i32  %op2373, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label332
	addi.d $t2, $zero, 0
	b false_label332
true_label332:
	addi.d $t2, $zero, 1
false_label332:
	lu12i.w $t8, -3
	ori $t8, $t8, 3675
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2374, label %label2380, label %label2385
	lu12i.w $t0, -3
	ori $t0, $t0, 3675
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2380
	b .long_func_label2385
.long_func_label2375:
# %op2376 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2376, i32 * %op1608
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label1612
	b .long_func_label1612
.long_func_label2377:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2379
	b .long_func_label2379
.long_func_label2378:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2379
	b .long_func_label2379
.long_func_label2379:
# br label %label2375
	b .long_func_label2375
.long_func_label2380:
# %op2381 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2382 = icmp sgt i32  %op2381, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3663
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2383 = zext i1  %op2382 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3663
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2384 = icmp ne i32  %op2383, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label334
	addi.d $t2, $zero, 0
	b false_label334
true_label334:
	addi.d $t2, $zero, 1
false_label334:
	lu12i.w $t8, -3
	ori $t8, $t8, 3655
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2384, label %label2388, label %label2402
	lu12i.w $t0, -3
	ori $t0, $t0, 3655
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2388
	b .long_func_label2402
.long_func_label2385:
# %op2386 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2386, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2387
	b .long_func_label2387
.long_func_label2387:
# br label %label2375
	b .long_func_label2375
.long_func_label2388:
# %op2389 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2390 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2391 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2390
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2392 = load i32 , i32 * %op2391
	lu12i.w $t0, -3
	ori $t0, $t0, 3632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2393 = sdiv i32  %op2389, %op2392
	lu12i.w $t0, -3
	ori $t0, $t0, 3644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2393, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3624
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2394 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2395 = add i32  %op2394, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 3620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2396 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2397 = sub i32  15, %op2396
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 3612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2398 = add i32  %op2397, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2399 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2398
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2400 = load i32 , i32 * %op2399
	lu12i.w $t0, -3
	ori $t0, $t0, 3592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2401 = sub i32  %op2395, %op2400
	lu12i.w $t0, -3
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2401, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3584
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2408
	b .long_func_label2408
.long_func_label2402:
# %op2403 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2404 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2405 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2404
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3576
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2406 = load i32 , i32 * %op2405
	lu12i.w $t0, -3
	ori $t0, $t0, 3568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2407 = sdiv i32  %op2403, %op2406
	lu12i.w $t0, -3
	ori $t0, $t0, 3580
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3564
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2407, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2408
	b .long_func_label2408
.long_func_label2408:
# br label %label2387
	b .long_func_label2387
.long_func_label2409:
# %op2410 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2411 = icmp slt i32  %op2410, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3555
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2412 = zext i1  %op2411 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3555
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2413 = icmp ne i32  %op2412, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label336
	addi.d $t2, $zero, 0
	b false_label336
true_label336:
	addi.d $t2, $zero, 1
false_label336:
	lu12i.w $t8, -3
	ori $t8, $t8, 3547
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2413, label %label2414, label %label2419
	lu12i.w $t0, -3
	ori $t0, $t0, 3547
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2414
	b .long_func_label2419
.long_func_label2414:
# %op2415 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3532
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  1, i32 * %op2415
	lu12i.w $t0, -3
	ori $t0, $t0, 3536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2416 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2417 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2417, i32 * %op2416
	lu12i.w $t0, -3
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3512
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2418 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  2, i32 * %op2418
	lu12i.w $t0, -3
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# br label %label2420
	b .long_func_label2420
.long_func_label2419:
# ret i32  0
	addi.w $a0, $zero, 0
	b long_func_ret
.long_func_label2420:
# %op2421 = load i32 , i32 * %op2416
	lu12i.w $t0, -3
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2422 = icmp sgt i32  %op2421, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3495
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2423 = zext i1  %op2422 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3495
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2424 = icmp ne i32  %op2423, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label338
	addi.d $t2, $zero, 0
	b false_label338
true_label338:
	addi.d $t2, $zero, 1
false_label338:
	lu12i.w $t8, -3
	ori $t8, $t8, 3487
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2424, label %label2425, label %label2427
	lu12i.w $t0, -3
	ori $t0, $t0, 3487
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2425
	b .long_func_label2427
.long_func_label2425:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2426 = load i32 , i32 * %op2416
	lu12i.w $t0, -3
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2426, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2436
	b .long_func_label2436
.long_func_label2427:
# %op2428 = load i32 , i32 * %op2415
	lu12i.w $t0, -3
	ori $t0, $t0, 3536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2428, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2429 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2430 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2429
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2431 = load i32 , i32 * %op2430
	lu12i.w $t0, -3
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2432 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2433 = icmp ne i32  %op2431, %op2432
	lu12i.w $t0, -3
	ori $t0, $t0, 3460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3456
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label339
	addi.d $t2, $zero, 0
	b false_label339
true_label339:
	addi.d $t2, $zero, 1
false_label339:
	lu12i.w $t8, -3
	ori $t8, $t8, 3455
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2434 = zext i1  %op2433 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3455
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2435 = icmp ne i32  %op2434, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label340
	addi.d $t2, $zero, 0
	b false_label340
true_label340:
	addi.d $t2, $zero, 1
false_label340:
	lu12i.w $t8, -3
	ori $t8, $t8, 3447
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2435, label %label3221, label %label3222
	lu12i.w $t0, -3
	ori $t0, $t0, 3447
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3221
	b .long_func_label3222
.long_func_label2436:
# %op2437 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2438 = icmp slt i32  %op2437, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3439
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2439 = zext i1  %op2438 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3439
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2440 = icmp ne i32  %op2439, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label342
	addi.d $t2, $zero, 0
	b false_label342
true_label342:
	addi.d $t2, $zero, 1
false_label342:
	lu12i.w $t8, -3
	ori $t8, $t8, 3431
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2440, label %label2441, label %label2445
	lu12i.w $t0, -3
	ori $t0, $t0, 3431
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2441
	b .long_func_label2445
.long_func_label2441:
# %op2442 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2443 = srem i32  %op2442, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2444 = icmp ne i32  %op2443, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label343
	addi.d $t2, $zero, 0
	b false_label343
true_label343:
	addi.d $t2, $zero, 1
false_label343:
	lu12i.w $t8, -3
	ori $t8, $t8, 3419
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2444, label %label2462, label %label2455
	lu12i.w $t0, -3
	ori $t0, $t0, 3419
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2462
	b .long_func_label2455
.long_func_label2445:
# %op2446 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2447 = icmp ne i32  %op2446, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3412
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label344
	addi.d $t2, $zero, 0
	b false_label344
true_label344:
	addi.d $t2, $zero, 1
false_label344:
	lu12i.w $t8, -3
	ori $t8, $t8, 3411
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2447, label %label2466, label %label2472
	lu12i.w $t0, -3
	ori $t0, $t0, 3411
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2466
	b .long_func_label2472
.long_func_label2448:
# %op2449 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2450 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2451 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2450
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3400
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2452 = load i32 , i32 * %op2451
	lu12i.w $t0, -3
	ori $t0, $t0, 3392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2453 = mul i32  1, %op2452
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2454 = add i32  %op2449, %op2453
	lu12i.w $t0, -3
	ori $t0, $t0, 3404
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3384
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2454, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2455
	b .long_func_label2455
.long_func_label2455:
# %op2456 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2457 = sdiv i32  %op2456, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2457, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3372
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2458 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2459 = sdiv i32  %op2458, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2459, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2460 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2461 = add i32  %op2460, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2461, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2436
	b .long_func_label2436
.long_func_label2462:
# %op2463 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2464 = srem i32  %op2463, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2465 = icmp ne i32  %op2464, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3348
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label345
	addi.d $t2, $zero, 0
	b false_label345
true_label345:
	addi.d $t2, $zero, 1
false_label345:
	lu12i.w $t8, -3
	ori $t8, $t8, 3347
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2465, label %label2448, label %label2455
	lu12i.w $t0, -3
	ori $t0, $t0, 3347
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2448
	b .long_func_label2455
.long_func_label2466:
# %op2467 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3332
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op2467
	lu12i.w $t0, -3
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2468 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2469 = load i32 , i32 * %op2418
	lu12i.w $t0, -3
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2469, i32 * %op2468
	lu12i.w $t0, -3
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3312
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2470 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2471 = load i32 , i32 * %op2415
	lu12i.w $t0, -3
	ori $t0, $t0, 3536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2471, i32 * %op2470
	lu12i.w $t0, -3
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2478
	b .long_func_label2478
.long_func_label2472:
# %op2473 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op2473
	lu12i.w $t0, -3
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2474 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2475 = load i32 , i32 * %op2418
	lu12i.w $t0, -3
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2475, i32 * %op2474
	lu12i.w $t0, -3
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3264
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2476 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2477 = load i32 , i32 * %op2418
	lu12i.w $t0, -3
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2477, i32 * %op2476
	lu12i.w $t0, -3
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3248
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2825
	b .long_func_label2825
.long_func_label2478:
# %op2479 = load i32 , i32 * %op2468
	lu12i.w $t0, -3
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2480 = icmp ne i32  %op2479, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3244
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label346
	addi.d $t2, $zero, 0
	b false_label346
true_label346:
	addi.d $t2, $zero, 1
false_label346:
	lu12i.w $t8, -3
	ori $t8, $t8, 3243
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2480, label %label2481, label %label2483
	lu12i.w $t0, -3
	ori $t0, $t0, 3243
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2481
	b .long_func_label2483
.long_func_label2481:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2482 = load i32 , i32 * %op2468
	lu12i.w $t0, -3
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2482, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2486
	b .long_func_label2486
.long_func_label2483:
# %op2484 = load i32 , i32 * %op2467
	lu12i.w $t0, -3
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2484, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3232
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2485 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2485, i32 * %op2415
	lu12i.w $t0, -3
	ori $t0, $t0, 3536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2472
	b .long_func_label2472
.long_func_label2486:
# %op2487 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2488 = icmp slt i32  %op2487, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3223
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2489 = zext i1  %op2488 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3223
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2490 = icmp ne i32  %op2489, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label348
	addi.d $t2, $zero, 0
	b false_label348
true_label348:
	addi.d $t2, $zero, 1
false_label348:
	lu12i.w $t8, -3
	ori $t8, $t8, 3215
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2490, label %label2491, label %label2495
	lu12i.w $t0, -3
	ori $t0, $t0, 3215
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2491
	b .long_func_label2495
.long_func_label2491:
# %op2492 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2493 = srem i32  %op2492, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2494 = icmp ne i32  %op2493, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3204
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label349
	addi.d $t2, $zero, 0
	b false_label349
true_label349:
	addi.d $t2, $zero, 1
false_label349:
	lu12i.w $t8, -3
	ori $t8, $t8, 3203
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2494, label %label2512, label %label2505
	lu12i.w $t0, -3
	ori $t0, $t0, 3203
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2512
	b .long_func_label2505
.long_func_label2495:
# %op2496 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2497 = icmp ne i32  %op2496, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3196
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label350
	addi.d $t2, $zero, 0
	b false_label350
true_label350:
	addi.d $t2, $zero, 1
false_label350:
	lu12i.w $t8, -3
	ori $t8, $t8, 3195
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2497, label %label2516, label %label2522
	lu12i.w $t0, -3
	ori $t0, $t0, 3195
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2516
	b .long_func_label2522
.long_func_label2498:
# %op2499 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2500 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2501 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2500
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 3184
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2502 = load i32 , i32 * %op2501
	lu12i.w $t0, -3
	ori $t0, $t0, 3176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2503 = mul i32  1, %op2502
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 3172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2504 = add i32  %op2499, %op2503
	lu12i.w $t0, -3
	ori $t0, $t0, 3188
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3168
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2504, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3164
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2505
	b .long_func_label2505
.long_func_label2505:
# %op2506 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2507 = sdiv i32  %op2506, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2507, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3156
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2508 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2509 = sdiv i32  %op2508, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2509, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3148
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2510 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2511 = add i32  %op2510, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 3144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2511, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 3140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2486
	b .long_func_label2486
.long_func_label2512:
# %op2513 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2514 = srem i32  %op2513, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 3136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2515 = icmp ne i32  %op2514, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label351
	addi.d $t2, $zero, 0
	b false_label351
true_label351:
	addi.d $t2, $zero, 1
false_label351:
	lu12i.w $t8, -3
	ori $t8, $t8, 3131
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2515, label %label2498, label %label2505
	lu12i.w $t0, -3
	ori $t0, $t0, 3131
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2498
	b .long_func_label2505
.long_func_label2516:
# %op2517 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2518 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3100
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2519 = load i32 , i32 * %op2470
	lu12i.w $t0, -3
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2519, i32 * %op2518
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3096
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2520 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3084
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2521 = load i32 , i32 * %op2467
	lu12i.w $t0, -3
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2521, i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3080
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2528
	b .long_func_label2528
.long_func_label2522:
# %op2523 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2524 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2525 = load i32 , i32 * %op2470
	lu12i.w $t0, -3
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2525, i32 * %op2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2526 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3036
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2527 = load i32 , i32 * %op2470
	lu12i.w $t0, -3
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2527, i32 * %op2526
	lu12i.w $t0, -3
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2652
	b .long_func_label2652
.long_func_label2528:
# %op2529 = load i32 , i32 * %op2518
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2530 = icmp ne i32  %op2529, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 3028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label352
	addi.d $t2, $zero, 0
	b false_label352
true_label352:
	addi.d $t2, $zero, 1
false_label352:
	lu12i.w $t8, -3
	ori $t8, $t8, 3027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2530, label %label2531, label %label2534
	lu12i.w $t0, -3
	ori $t0, $t0, 3027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2531
	b .long_func_label2534
.long_func_label2531:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2532 = load i32 , i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2532, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 3020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2533 = load i32 , i32 * %op2518
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2533, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 3016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2537
	b .long_func_label2537
.long_func_label2534:
# %op2535 = load i32 , i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 3012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2536 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2536, i32 * %op2467
	lu12i.w $t0, -3
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 3008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2522
	b .long_func_label2522
.long_func_label2537:
# %op2538 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 3004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2539 = icmp slt i32  %op2538, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 3004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 3003
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2540 = zext i1  %op2539 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 3003
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2541 = icmp ne i32  %op2540, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label354
	addi.d $t2, $zero, 0
	b false_label354
true_label354:
	addi.d $t2, $zero, 1
false_label354:
	lu12i.w $t8, -3
	ori $t8, $t8, 2995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2541, label %label2542, label %label2546
	lu12i.w $t0, -3
	ori $t0, $t0, 2995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2542
	b .long_func_label2546
.long_func_label2542:
# %op2543 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2544 = srem i32  %op2543, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2545 = icmp ne i32  %op2544, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label355
	addi.d $t2, $zero, 0
	b false_label355
true_label355:
	addi.d $t2, $zero, 1
false_label355:
	lu12i.w $t8, -3
	ori $t8, $t8, 2983
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2545, label %label2550, label %label2556
	lu12i.w $t0, -3
	ori $t0, $t0, 2983
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2550
	b .long_func_label2556
.long_func_label2546:
# %op2547 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2547, i32 * %op2517
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2548 = load i32 , i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2548, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2549 = load i32 , i32 * %op2518
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2549, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2583
	b .long_func_label2583
.long_func_label2550:
# %op2551 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2552 = srem i32  %op2551, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2553 = icmp eq i32  %op2552, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label356
	addi.d $t2, $zero, 0
	b false_label356
true_label356:
	addi.d $t2, $zero, 1
false_label356:
	lu12i.w $t8, -3
	ori $t8, $t8, 2959
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2554 = zext i1  %op2553 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2959
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2555 = icmp ne i32  %op2554, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label357
	addi.d $t2, $zero, 0
	b false_label357
true_label357:
	addi.d $t2, $zero, 1
false_label357:
	lu12i.w $t8, -3
	ori $t8, $t8, 2951
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2555, label %label2567, label %label2574
	lu12i.w $t0, -3
	ori $t0, $t0, 2951
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2567
	b .long_func_label2574
.long_func_label2556:
# %op2557 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2558 = srem i32  %op2557, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2559 = icmp ne i32  %op2558, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label358
	addi.d $t2, $zero, 0
	b false_label358
true_label358:
	addi.d $t2, $zero, 1
false_label358:
	lu12i.w $t8, -3
	ori $t8, $t8, 2939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2559, label %label2575, label %label2582
	lu12i.w $t0, -3
	ori $t0, $t0, 2939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2575
	b .long_func_label2582
.long_func_label2560:
# %op2561 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2562 = sdiv i32  %op2561, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2562, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2563 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2564 = sdiv i32  %op2563, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2564, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2565 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2566 = add i32  %op2565, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2566, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2912
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2537
	b .long_func_label2537
.long_func_label2567:
# %op2568 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2569 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2570 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2569
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2904
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2571 = load i32 , i32 * %op2570
	lu12i.w $t0, -3
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2572 = mul i32  1, %op2571
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2892
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2573 = add i32  %op2568, %op2572
	lu12i.w $t0, -3
	ori $t0, $t0, 2908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2888
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2573, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2884
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2574
	b .long_func_label2574
.long_func_label2574:
# br label %label2560
	b .long_func_label2560
.long_func_label2575:
# %op2576 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2577 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2578 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2577
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2876
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2579 = load i32 , i32 * %op2578
	lu12i.w $t0, -3
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2580 = mul i32  1, %op2579
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2581 = add i32  %op2576, %op2580
	lu12i.w $t0, -3
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2581, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2852
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2582
	b .long_func_label2582
.long_func_label2582:
# br label %label2560
	b .long_func_label2560
.long_func_label2583:
# %op2584 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2585 = icmp slt i32  %op2584, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2847
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2586 = zext i1  %op2585 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2847
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2587 = icmp ne i32  %op2586, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label360
	addi.d $t2, $zero, 0
	b false_label360
true_label360:
	addi.d $t2, $zero, 1
false_label360:
	lu12i.w $t8, -3
	ori $t8, $t8, 2839
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2587, label %label2588, label %label2592
	lu12i.w $t0, -3
	ori $t0, $t0, 2839
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2588
	b .long_func_label2592
.long_func_label2588:
# %op2589 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2590 = srem i32  %op2589, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2591 = icmp ne i32  %op2590, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label361
	addi.d $t2, $zero, 0
	b false_label361
true_label361:
	addi.d $t2, $zero, 1
false_label361:
	lu12i.w $t8, -3
	ori $t8, $t8, 2827
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2591, label %label2611, label %label2604
	lu12i.w $t0, -3
	ori $t0, $t0, 2827
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2611
	b .long_func_label2604
.long_func_label2592:
# %op2593 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2593, i32 * %op2518
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2594 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2819
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2595 = zext i1  %op2594 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2819
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2596 = icmp ne i32  %op2595, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label363
	addi.d $t2, $zero, 0
	b false_label363
true_label363:
	addi.d $t2, $zero, 1
false_label363:
	lu12i.w $t8, -3
	ori $t8, $t8, 2811
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2596, label %label2615, label %label2616
	lu12i.w $t0, -3
	ori $t0, $t0, 2811
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2615
	b .long_func_label2616
.long_func_label2597:
# %op2598 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2599 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2600 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2599
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2800
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2601 = load i32 , i32 * %op2600
	lu12i.w $t0, -3
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2602 = mul i32  1, %op2601
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2788
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2603 = add i32  %op2598, %op2602
	lu12i.w $t0, -3
	ori $t0, $t0, 2804
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2603, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2604
	b .long_func_label2604
.long_func_label2604:
# %op2605 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2606 = sdiv i32  %op2605, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2606, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2607 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2608 = sdiv i32  %op2607, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2608, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2764
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2609 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2610 = add i32  %op2609, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2610, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2583
	b .long_func_label2583
.long_func_label2611:
# %op2612 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2613 = srem i32  %op2612, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2614 = icmp ne i32  %op2613, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label364
	addi.d $t2, $zero, 0
	b false_label364
true_label364:
	addi.d $t2, $zero, 1
false_label364:
	lu12i.w $t8, -3
	ori $t8, $t8, 2747
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2614, label %label2597, label %label2604
	lu12i.w $t0, -3
	ori $t0, $t0, 2747
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2597
	b .long_func_label2604
.long_func_label2615:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2621
	b .long_func_label2621
.long_func_label2616:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2617 = load i32 , i32 * %op2518
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2618 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -3
	ori $t8, $t8, 2728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2619 = load i32 , i32 * %op2618
	lu12i.w $t0, -3
	ori $t0, $t0, 2728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2620 = mul i32  %op2617, %op2619
	lu12i.w $t0, -3
	ori $t0, $t0, 2740
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2724
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2620, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2720
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2624
	b .long_func_label2624
.long_func_label2621:
# %op2622 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2622, i32 * %op2518
	lu12i.w $t0, -3
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2623 = load i32 , i32 * %op2517
	lu12i.w $t0, -3
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2623, i32 * %op2520
	lu12i.w $t0, -3
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2528
	b .long_func_label2528
.long_func_label2624:
# %op2625 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2626 = icmp slt i32  %op2625, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2707
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2627 = zext i1  %op2626 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2707
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2628 = icmp ne i32  %op2627, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label366
	addi.d $t2, $zero, 0
	b false_label366
true_label366:
	addi.d $t2, $zero, 1
false_label366:
	lu12i.w $t8, -3
	ori $t8, $t8, 2699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2628, label %label2629, label %label2633
	lu12i.w $t0, -3
	ori $t0, $t0, 2699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2629
	b .long_func_label2633
.long_func_label2629:
# %op2630 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2631 = srem i32  %op2630, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2632 = icmp ne i32  %op2631, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label367
	addi.d $t2, $zero, 0
	b false_label367
true_label367:
	addi.d $t2, $zero, 1
false_label367:
	lu12i.w $t8, -3
	ori $t8, $t8, 2687
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2632, label %label2648, label %label2641
	lu12i.w $t0, -3
	ori $t0, $t0, 2687
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2648
	b .long_func_label2641
.long_func_label2633:
# br label %label2621
	b .long_func_label2621
.long_func_label2634:
# %op2635 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2636 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2637 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2636
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2638 = load i32 , i32 * %op2637
	lu12i.w $t0, -3
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2639 = mul i32  1, %op2638
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2660
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2640 = add i32  %op2635, %op2639
	lu12i.w $t0, -3
	ori $t0, $t0, 2680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2656
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2640, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2641
	b .long_func_label2641
.long_func_label2641:
# %op2642 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2643 = sdiv i32  %op2642, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2643, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2644 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2645 = sdiv i32  %op2644, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2645, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2646 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2647 = add i32  %op2646, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2647, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2628
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2624
	b .long_func_label2624
.long_func_label2648:
# %op2649 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2650 = srem i32  %op2649, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2651 = icmp ne i32  %op2650, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label368
	addi.d $t2, $zero, 0
	b false_label368
true_label368:
	addi.d $t2, $zero, 1
false_label368:
	lu12i.w $t8, -3
	ori $t8, $t8, 2619
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2651, label %label2634, label %label2641
	lu12i.w $t0, -3
	ori $t0, $t0, 2619
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2634
	b .long_func_label2641
.long_func_label2652:
# %op2653 = load i32 , i32 * %op2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2654 = icmp ne i32  %op2653, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2612
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label369
	addi.d $t2, $zero, 0
	b false_label369
true_label369:
	addi.d $t2, $zero, 1
false_label369:
	lu12i.w $t8, -3
	ori $t8, $t8, 2611
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2654, label %label2655, label %label2658
	lu12i.w $t0, -3
	ori $t0, $t0, 2611
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2655
	b .long_func_label2658
.long_func_label2655:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2656 = load i32 , i32 * %op2526
	lu12i.w $t0, -3
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2604
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2656, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2604
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2657 = load i32 , i32 * %op2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2657, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2600
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2666
	b .long_func_label2666
.long_func_label2658:
# %op2659 = load i32 , i32 * %op2526
	lu12i.w $t0, -3
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2596
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2659, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2596
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2660 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2660, i32 * %op2470
	lu12i.w $t0, -3
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2592
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2661 = load i32 , i32 * %op2468
	lu12i.w $t0, -3
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2661, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2588
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2662 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2663 = icmp sge i32  %op2662, 15
	lu12i.w $t0, -3
	ori $t0, $t0, 2584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label370
	addi.d $t2, $zero, 0
	b false_label370
true_label370:
	addi.d $t2, $zero, 1
false_label370:
	lu12i.w $t8, -3
	ori $t8, $t8, 2583
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2664 = zext i1  %op2663 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2583
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2665 = icmp ne i32  %op2664, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label371
	addi.d $t2, $zero, 0
	b false_label371
true_label371:
	addi.d $t2, $zero, 1
false_label371:
	lu12i.w $t8, -3
	ori $t8, $t8, 2575
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2665, label %label2781, label %label2786
	lu12i.w $t0, -3
	ori $t0, $t0, 2575
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2781
	b .long_func_label2786
.long_func_label2666:
# %op2667 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2668 = icmp slt i32  %op2667, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2567
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2669 = zext i1  %op2668 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2567
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2670 = icmp ne i32  %op2669, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label373
	addi.d $t2, $zero, 0
	b false_label373
true_label373:
	addi.d $t2, $zero, 1
false_label373:
	lu12i.w $t8, -3
	ori $t8, $t8, 2559
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2670, label %label2671, label %label2675
	lu12i.w $t0, -3
	ori $t0, $t0, 2559
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2671
	b .long_func_label2675
.long_func_label2671:
# %op2672 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2673 = srem i32  %op2672, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2674 = icmp ne i32  %op2673, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label374
	addi.d $t2, $zero, 0
	b false_label374
true_label374:
	addi.d $t2, $zero, 1
false_label374:
	lu12i.w $t8, -3
	ori $t8, $t8, 2547
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2674, label %label2679, label %label2685
	lu12i.w $t0, -3
	ori $t0, $t0, 2547
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2679
	b .long_func_label2685
.long_func_label2675:
# %op2676 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2676, i32 * %op2523
	lu12i.w $t0, -3
	ori $t0, $t0, 3072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2677 = load i32 , i32 * %op2526
	lu12i.w $t0, -3
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2677, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2536
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2678 = load i32 , i32 * %op2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2678, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2712
	b .long_func_label2712
.long_func_label2679:
# %op2680 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2681 = srem i32  %op2680, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2682 = icmp eq i32  %op2681, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label375
	addi.d $t2, $zero, 0
	b false_label375
true_label375:
	addi.d $t2, $zero, 1
false_label375:
	lu12i.w $t8, -3
	ori $t8, $t8, 2523
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2683 = zext i1  %op2682 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2523
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2684 = icmp ne i32  %op2683, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2516
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label376
	addi.d $t2, $zero, 0
	b false_label376
true_label376:
	addi.d $t2, $zero, 1
false_label376:
	lu12i.w $t8, -3
	ori $t8, $t8, 2515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2684, label %label2696, label %label2703
	lu12i.w $t0, -3
	ori $t0, $t0, 2515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2696
	b .long_func_label2703
.long_func_label2685:
# %op2686 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2687 = srem i32  %op2686, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2688 = icmp ne i32  %op2687, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label377
	addi.d $t2, $zero, 0
	b false_label377
true_label377:
	addi.d $t2, $zero, 1
false_label377:
	lu12i.w $t8, -3
	ori $t8, $t8, 2503
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2688, label %label2704, label %label2711
	lu12i.w $t0, -3
	ori $t0, $t0, 2503
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2704
	b .long_func_label2711
.long_func_label2689:
# %op2690 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2691 = sdiv i32  %op2690, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2691, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2692 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2693 = sdiv i32  %op2692, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2693, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2694 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2695 = add i32  %op2694, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2695, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2666
	b .long_func_label2666
.long_func_label2696:
# %op2697 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2698 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2699 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2698
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2468
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2700 = load i32 , i32 * %op2699
	lu12i.w $t0, -3
	ori $t0, $t0, 2456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2701 = mul i32  1, %op2700
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2452
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2702 = add i32  %op2697, %op2701
	lu12i.w $t0, -3
	ori $t0, $t0, 2472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2448
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2702, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2444
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2703
	b .long_func_label2703
.long_func_label2703:
# br label %label2689
	b .long_func_label2689
.long_func_label2704:
# %op2705 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2706 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2707 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2706
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2708 = load i32 , i32 * %op2707
	lu12i.w $t0, -3
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2709 = mul i32  1, %op2708
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2710 = add i32  %op2705, %op2709
	lu12i.w $t0, -3
	ori $t0, $t0, 2440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2710, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2711
	b .long_func_label2711
.long_func_label2711:
# br label %label2689
	b .long_func_label2689
.long_func_label2712:
# %op2713 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2714 = icmp slt i32  %op2713, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2407
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2715 = zext i1  %op2714 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2407
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2716 = icmp ne i32  %op2715, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label379
	addi.d $t2, $zero, 0
	b false_label379
true_label379:
	addi.d $t2, $zero, 1
false_label379:
	lu12i.w $t8, -3
	ori $t8, $t8, 2399
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2716, label %label2717, label %label2721
	lu12i.w $t0, -3
	ori $t0, $t0, 2399
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2717
	b .long_func_label2721
.long_func_label2717:
# %op2718 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2719 = srem i32  %op2718, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2720 = icmp ne i32  %op2719, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2388
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label380
	addi.d $t2, $zero, 0
	b false_label380
true_label380:
	addi.d $t2, $zero, 1
false_label380:
	lu12i.w $t8, -3
	ori $t8, $t8, 2387
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2720, label %label2740, label %label2733
	lu12i.w $t0, -3
	ori $t0, $t0, 2387
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2740
	b .long_func_label2733
.long_func_label2721:
# %op2722 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2722, i32 * %op2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2723 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2379
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2724 = zext i1  %op2723 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2379
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2725 = icmp ne i32  %op2724, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label382
	addi.d $t2, $zero, 0
	b false_label382
true_label382:
	addi.d $t2, $zero, 1
false_label382:
	lu12i.w $t8, -3
	ori $t8, $t8, 2371
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2725, label %label2744, label %label2745
	lu12i.w $t0, -3
	ori $t0, $t0, 2371
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2744
	b .long_func_label2745
.long_func_label2726:
# %op2727 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2728 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2729 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2728
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2730 = load i32 , i32 * %op2729
	lu12i.w $t0, -3
	ori $t0, $t0, 2352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2731 = mul i32  1, %op2730
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2732 = add i32  %op2727, %op2731
	lu12i.w $t0, -3
	ori $t0, $t0, 2364
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2344
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2732, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2733
	b .long_func_label2733
.long_func_label2733:
# %op2734 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2735 = sdiv i32  %op2734, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2332
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2735, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2332
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2736 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2737 = sdiv i32  %op2736, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2737, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2738 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2739 = add i32  %op2738, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2739, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2316
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2712
	b .long_func_label2712
.long_func_label2740:
# %op2741 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2742 = srem i32  %op2741, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2743 = icmp ne i32  %op2742, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label383
	addi.d $t2, $zero, 0
	b false_label383
true_label383:
	addi.d $t2, $zero, 1
false_label383:
	lu12i.w $t8, -3
	ori $t8, $t8, 2307
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2743, label %label2726, label %label2733
	lu12i.w $t0, -3
	ori $t0, $t0, 2307
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2726
	b .long_func_label2733
.long_func_label2744:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2750
	b .long_func_label2750
.long_func_label2745:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2746 = load i32 , i32 * %op2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2747 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -3
	ori $t8, $t8, 2288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2748 = load i32 , i32 * %op2747
	lu12i.w $t0, -3
	ori $t0, $t0, 2288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2749 = mul i32  %op2746, %op2748
	lu12i.w $t0, -3
	ori $t0, $t0, 2300
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2284
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2749, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2280
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2753
	b .long_func_label2753
.long_func_label2750:
# %op2751 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2751, i32 * %op2524
	lu12i.w $t0, -3
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2276
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2752 = load i32 , i32 * %op2523
	lu12i.w $t0, -3
	ori $t0, $t0, 3072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2752, i32 * %op2526
	lu12i.w $t0, -3
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2272
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2652
	b .long_func_label2652
.long_func_label2753:
# %op2754 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2755 = icmp slt i32  %op2754, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 2268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2267
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2756 = zext i1  %op2755 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2267
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2260
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2757 = icmp ne i32  %op2756, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2260
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label385
	addi.d $t2, $zero, 0
	b false_label385
true_label385:
	addi.d $t2, $zero, 1
false_label385:
	lu12i.w $t8, -3
	ori $t8, $t8, 2259
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2757, label %label2758, label %label2762
	lu12i.w $t0, -3
	ori $t0, $t0, 2259
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2758
	b .long_func_label2762
.long_func_label2758:
# %op2759 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2760 = srem i32  %op2759, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2252
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2761 = icmp ne i32  %op2760, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label386
	addi.d $t2, $zero, 0
	b false_label386
true_label386:
	addi.d $t2, $zero, 1
false_label386:
	lu12i.w $t8, -3
	ori $t8, $t8, 2247
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2761, label %label2777, label %label2770
	lu12i.w $t0, -3
	ori $t0, $t0, 2247
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2777
	b .long_func_label2770
.long_func_label2762:
# br label %label2750
	b .long_func_label2750
.long_func_label2763:
# %op2764 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2765 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2766 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2765
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2767 = load i32 , i32 * %op2766
	lu12i.w $t0, -3
	ori $t0, $t0, 2224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2220
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2768 = mul i32  1, %op2767
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 2220
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2769 = add i32  %op2764, %op2768
	lu12i.w $t0, -3
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2216
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2769, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2770
	b .long_func_label2770
.long_func_label2770:
# %op2771 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2772 = sdiv i32  %op2771, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2772, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2773 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2774 = sdiv i32  %op2773, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2774, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 2196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2775 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2776 = add i32  %op2775, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2188
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2776, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 2188
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2753
	b .long_func_label2753
.long_func_label2777:
# %op2778 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2779 = srem i32  %op2778, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 2184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2780 = icmp ne i32  %op2779, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2180
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label387
	addi.d $t2, $zero, 0
	b false_label387
true_label387:
	addi.d $t2, $zero, 1
false_label387:
	lu12i.w $t8, -3
	ori $t8, $t8, 2179
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2780, label %label2763, label %label2770
	lu12i.w $t0, -3
	ori $t0, $t0, 2179
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2763
	b .long_func_label2770
.long_func_label2781:
# %op2782 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2783 = icmp slt i32  %op2782, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2172
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2171
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2784 = zext i1  %op2783 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2171
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2164
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2785 = icmp ne i32  %op2784, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2164
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label389
	addi.d $t2, $zero, 0
	b false_label389
true_label389:
	addi.d $t2, $zero, 1
false_label389:
	lu12i.w $t8, -3
	ori $t8, $t8, 2163
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2785, label %label2793, label %label2794
	lu12i.w $t0, -3
	ori $t0, $t0, 2163
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2793
	b .long_func_label2794
.long_func_label2786:
# %op2787 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2156
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2788 = icmp sgt i32  %op2787, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2156
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2155
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2789 = zext i1  %op2788 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2155
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2790 = icmp ne i32  %op2789, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label391
	addi.d $t2, $zero, 0
	b false_label391
true_label391:
	addi.d $t2, $zero, 1
false_label391:
	lu12i.w $t8, -3
	ori $t8, $t8, 2147
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2790, label %label2796, label %label2801
	lu12i.w $t0, -3
	ori $t0, $t0, 2147
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2796
	b .long_func_label2801
.long_func_label2791:
# %op2792 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2792, i32 * %op2468
	lu12i.w $t0, -3
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2478
	b .long_func_label2478
.long_func_label2793:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2795
	b .long_func_label2795
.long_func_label2794:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2795
	b .long_func_label2795
.long_func_label2795:
# br label %label2791
	b .long_func_label2791
.long_func_label2796:
# %op2797 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2798 = icmp sgt i32  %op2797, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 2135
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2799 = zext i1  %op2798 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2135
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2800 = icmp ne i32  %op2799, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label393
	addi.d $t2, $zero, 0
	b false_label393
true_label393:
	addi.d $t2, $zero, 1
false_label393:
	lu12i.w $t8, -3
	ori $t8, $t8, 2127
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2800, label %label2804, label %label2818
	lu12i.w $t0, -3
	ori $t0, $t0, 2127
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2804
	b .long_func_label2818
.long_func_label2801:
# %op2802 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2802, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2803
	b .long_func_label2803
.long_func_label2803:
# br label %label2791
	b .long_func_label2791
.long_func_label2804:
# %op2805 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2116
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2806 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2807 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2806
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2112
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2808 = load i32 , i32 * %op2807
	lu12i.w $t0, -3
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2809 = sdiv i32  %op2805, %op2808
	lu12i.w $t0, -3
	ori $t0, $t0, 2116
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2809, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2096
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2810 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2811 = add i32  %op2810, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 2092
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2812 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2813 = sub i32  15, %op2812
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 2084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2814 = add i32  %op2813, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 2080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2815 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2814
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2816 = load i32 , i32 * %op2815
	lu12i.w $t0, -3
	ori $t0, $t0, 2064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2817 = sub i32  %op2811, %op2816
	lu12i.w $t0, -3
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2060
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2817, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2056
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2824
	b .long_func_label2824
.long_func_label2818:
# %op2819 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2820 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2821 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2820
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 2048
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2822 = load i32 , i32 * %op2821
	lu12i.w $t0, -3
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2823 = sdiv i32  %op2819, %op2822
	lu12i.w $t0, -3
	ori $t0, $t0, 2052
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2823, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2824
	b .long_func_label2824
.long_func_label2824:
# br label %label2803
	b .long_func_label2803
.long_func_label2825:
# %op2826 = load i32 , i32 * %op2474
	lu12i.w $t0, -3
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2827 = icmp ne i32  %op2826, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 2028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label394
	addi.d $t2, $zero, 0
	b false_label394
true_label394:
	addi.d $t2, $zero, 1
false_label394:
	lu12i.w $t8, -3
	ori $t8, $t8, 2027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2827, label %label2828, label %label2830
	lu12i.w $t0, -3
	ori $t0, $t0, 2027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2828
	b .long_func_label2830
.long_func_label2828:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2829 = load i32 , i32 * %op2474
	lu12i.w $t0, -3
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2829, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2020
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2838
	b .long_func_label2838
.long_func_label2830:
# %op2831 = load i32 , i32 * %op2473
	lu12i.w $t0, -3
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2831, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 2016
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2832 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2832, i32 * %op2418
	lu12i.w $t0, -3
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 2012
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2833 = load i32 , i32 * %op2416
	lu12i.w $t0, -3
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2833, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 2008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op2834 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 2004
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2835 = icmp sge i32  %op2834, 15
	lu12i.w $t0, -3
	ori $t0, $t0, 2004
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label395
	addi.d $t2, $zero, 0
	b false_label395
true_label395:
	addi.d $t2, $zero, 1
false_label395:
	lu12i.w $t8, -3
	ori $t8, $t8, 2003
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2836 = zext i1  %op2835 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 2003
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2837 = icmp ne i32  %op2836, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label396
	addi.d $t2, $zero, 0
	b false_label396
true_label396:
	addi.d $t2, $zero, 1
false_label396:
	lu12i.w $t8, -3
	ori $t8, $t8, 1995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2837, label %label3177, label %label3182
	lu12i.w $t0, -3
	ori $t0, $t0, 1995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3177
	b .long_func_label3182
.long_func_label2838:
# %op2839 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2840 = icmp slt i32  %op2839, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1987
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2841 = zext i1  %op2840 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1987
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2842 = icmp ne i32  %op2841, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label398
	addi.d $t2, $zero, 0
	b false_label398
true_label398:
	addi.d $t2, $zero, 1
false_label398:
	lu12i.w $t8, -3
	ori $t8, $t8, 1979
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2842, label %label2843, label %label2847
	lu12i.w $t0, -3
	ori $t0, $t0, 1979
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2843
	b .long_func_label2847
.long_func_label2843:
# %op2844 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2845 = srem i32  %op2844, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2846 = icmp ne i32  %op2845, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label399
	addi.d $t2, $zero, 0
	b false_label399
true_label399:
	addi.d $t2, $zero, 1
false_label399:
	lu12i.w $t8, -3
	ori $t8, $t8, 1967
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2846, label %label2864, label %label2857
	lu12i.w $t0, -3
	ori $t0, $t0, 1967
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2864
	b .long_func_label2857
.long_func_label2847:
# %op2848 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2849 = icmp ne i32  %op2848, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label400
	addi.d $t2, $zero, 0
	b false_label400
true_label400:
	addi.d $t2, $zero, 1
false_label400:
	lu12i.w $t8, -3
	ori $t8, $t8, 1959
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2849, label %label2868, label %label2874
	lu12i.w $t0, -3
	ori $t0, $t0, 1959
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2868
	b .long_func_label2874
.long_func_label2850:
# %op2851 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2852 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2853 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2852
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2854 = load i32 , i32 * %op2853
	lu12i.w $t0, -3
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2855 = mul i32  1, %op2854
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1932
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2856 = add i32  %op2851, %op2855
	lu12i.w $t0, -3
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1928
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2856, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1924
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2857
	b .long_func_label2857
.long_func_label2857:
# %op2858 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2859 = sdiv i32  %op2858, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2859, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1916
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2860 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2861 = sdiv i32  %op2860, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2861, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1908
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2862 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2863 = add i32  %op2862, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2863, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2838
	b .long_func_label2838
.long_func_label2864:
# %op2865 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2866 = srem i32  %op2865, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2867 = icmp ne i32  %op2866, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1892
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label401
	addi.d $t2, $zero, 0
	b false_label401
true_label401:
	addi.d $t2, $zero, 1
false_label401:
	lu12i.w $t8, -3
	ori $t8, $t8, 1891
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2867, label %label2850, label %label2857
	lu12i.w $t0, -3
	ori $t0, $t0, 1891
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2850
	b .long_func_label2857
.long_func_label2868:
# %op2869 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2870 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1860
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2871 = load i32 , i32 * %op2476
	lu12i.w $t0, -3
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2871, i32 * %op2870
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2872 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2873 = load i32 , i32 * %op2473
	lu12i.w $t0, -3
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2873, i32 * %op2872
	lu12i.w $t0, -3
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2880
	b .long_func_label2880
.long_func_label2874:
# %op2875 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2876 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2877 = load i32 , i32 * %op2476
	lu12i.w $t0, -3
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2877, i32 * %op2876
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2878 = alloca i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2879 = load i32 , i32 * %op2476
	lu12i.w $t0, -3
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2879, i32 * %op2878
	lu12i.w $t0, -3
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3004
	b .long_func_label3004
.long_func_label2880:
# %op2881 = load i32 , i32 * %op2870
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2882 = icmp ne i32  %op2881, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label402
	addi.d $t2, $zero, 0
	b false_label402
true_label402:
	addi.d $t2, $zero, 1
false_label402:
	lu12i.w $t8, -3
	ori $t8, $t8, 1787
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2882, label %label2883, label %label2886
	lu12i.w $t0, -3
	ori $t0, $t0, 1787
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2883
	b .long_func_label2886
.long_func_label2883:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2884 = load i32 , i32 * %op2872
	lu12i.w $t0, -3
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2884, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2885 = load i32 , i32 * %op2870
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2885, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1776
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2889
	b .long_func_label2889
.long_func_label2886:
# %op2887 = load i32 , i32 * %op2872
	lu12i.w $t0, -3
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2887, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1772
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2888 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2888, i32 * %op2473
	lu12i.w $t0, -3
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1768
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2874
	b .long_func_label2874
.long_func_label2889:
# %op2890 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2891 = icmp slt i32  %op2890, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1763
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2892 = zext i1  %op2891 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1763
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2893 = icmp ne i32  %op2892, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label404
	addi.d $t2, $zero, 0
	b false_label404
true_label404:
	addi.d $t2, $zero, 1
false_label404:
	lu12i.w $t8, -3
	ori $t8, $t8, 1755
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2893, label %label2894, label %label2898
	lu12i.w $t0, -3
	ori $t0, $t0, 1755
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2894
	b .long_func_label2898
.long_func_label2894:
# %op2895 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1748
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2896 = srem i32  %op2895, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1748
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2897 = icmp ne i32  %op2896, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label405
	addi.d $t2, $zero, 0
	b false_label405
true_label405:
	addi.d $t2, $zero, 1
false_label405:
	lu12i.w $t8, -3
	ori $t8, $t8, 1743
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2897, label %label2902, label %label2908
	lu12i.w $t0, -3
	ori $t0, $t0, 1743
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2902
	b .long_func_label2908
.long_func_label2898:
# %op2899 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2899, i32 * %op2869
	lu12i.w $t0, -3
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2900 = load i32 , i32 * %op2872
	lu12i.w $t0, -3
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2900, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2901 = load i32 , i32 * %op2870
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2901, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2935
	b .long_func_label2935
.long_func_label2902:
# %op2903 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2904 = srem i32  %op2903, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1724
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2905 = icmp eq i32  %op2904, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label406
	addi.d $t2, $zero, 0
	b false_label406
true_label406:
	addi.d $t2, $zero, 1
false_label406:
	lu12i.w $t8, -3
	ori $t8, $t8, 1719
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2906 = zext i1  %op2905 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1719
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2907 = icmp ne i32  %op2906, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label407
	addi.d $t2, $zero, 0
	b false_label407
true_label407:
	addi.d $t2, $zero, 1
false_label407:
	lu12i.w $t8, -3
	ori $t8, $t8, 1711
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2907, label %label2919, label %label2926
	lu12i.w $t0, -3
	ori $t0, $t0, 1711
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2919
	b .long_func_label2926
.long_func_label2908:
# %op2909 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2910 = srem i32  %op2909, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2911 = icmp ne i32  %op2910, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label408
	addi.d $t2, $zero, 0
	b false_label408
true_label408:
	addi.d $t2, $zero, 1
false_label408:
	lu12i.w $t8, -3
	ori $t8, $t8, 1699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2911, label %label2927, label %label2934
	lu12i.w $t0, -3
	ori $t0, $t0, 1699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2927
	b .long_func_label2934
.long_func_label2912:
# %op2913 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2914 = sdiv i32  %op2913, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1692
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2914, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1688
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2915 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2916 = sdiv i32  %op2915, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2916, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1680
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2917 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2918 = add i32  %op2917, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1676
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2918, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2889
	b .long_func_label2889
.long_func_label2919:
# %op2920 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2921 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2922 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2921
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2923 = load i32 , i32 * %op2922
	lu12i.w $t0, -3
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2924 = mul i32  1, %op2923
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2925 = add i32  %op2920, %op2924
	lu12i.w $t0, -3
	ori $t0, $t0, 1668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2925, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2926
	b .long_func_label2926
.long_func_label2926:
# br label %label2912
	b .long_func_label2912
.long_func_label2927:
# %op2928 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2929 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1636
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2930 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2929
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1636
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2931 = load i32 , i32 * %op2930
	lu12i.w $t0, -3
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2932 = mul i32  1, %op2931
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2933 = add i32  %op2928, %op2932
	lu12i.w $t0, -3
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1612
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2933, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1612
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2934
	b .long_func_label2934
.long_func_label2934:
# br label %label2912
	b .long_func_label2912
.long_func_label2935:
# %op2936 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2937 = icmp slt i32  %op2936, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1607
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2938 = zext i1  %op2937 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1607
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2939 = icmp ne i32  %op2938, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label410
	addi.d $t2, $zero, 0
	b false_label410
true_label410:
	addi.d $t2, $zero, 1
false_label410:
	lu12i.w $t8, -3
	ori $t8, $t8, 1599
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2939, label %label2940, label %label2944
	lu12i.w $t0, -3
	ori $t0, $t0, 1599
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2940
	b .long_func_label2944
.long_func_label2940:
# %op2941 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2942 = srem i32  %op2941, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1588
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2943 = icmp ne i32  %op2942, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1588
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label411
	addi.d $t2, $zero, 0
	b false_label411
true_label411:
	addi.d $t2, $zero, 1
false_label411:
	lu12i.w $t8, -3
	ori $t8, $t8, 1587
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2943, label %label2963, label %label2956
	lu12i.w $t0, -3
	ori $t0, $t0, 1587
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2963
	b .long_func_label2956
.long_func_label2944:
# %op2945 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2945, i32 * %op2870
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2946 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1579
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2947 = zext i1  %op2946 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1579
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2948 = icmp ne i32  %op2947, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label413
	addi.d $t2, $zero, 0
	b false_label413
true_label413:
	addi.d $t2, $zero, 1
false_label413:
	lu12i.w $t8, -3
	ori $t8, $t8, 1571
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2948, label %label2967, label %label2968
	lu12i.w $t0, -3
	ori $t0, $t0, 1571
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2967
	b .long_func_label2968
.long_func_label2949:
# %op2950 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2951 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2952 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2951
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1560
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2953 = load i32 , i32 * %op2952
	lu12i.w $t0, -3
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2954 = mul i32  1, %op2953
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1548
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2955 = add i32  %op2950, %op2954
	lu12i.w $t0, -3
	ori $t0, $t0, 1564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1544
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1540
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2955, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1540
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2956
	b .long_func_label2956
.long_func_label2956:
# %op2957 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2958 = sdiv i32  %op2957, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1532
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2958, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1532
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2959 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2960 = sdiv i32  %op2959, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2960, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2961 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2962 = add i32  %op2961, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2962, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2935
	b .long_func_label2935
.long_func_label2963:
# %op2964 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2965 = srem i32  %op2964, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2966 = icmp ne i32  %op2965, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label414
	addi.d $t2, $zero, 0
	b false_label414
true_label414:
	addi.d $t2, $zero, 1
false_label414:
	lu12i.w $t8, -3
	ori $t8, $t8, 1507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2966, label %label2949, label %label2956
	lu12i.w $t0, -3
	ori $t0, $t0, 1507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2949
	b .long_func_label2956
.long_func_label2967:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label2973
	b .long_func_label2973
.long_func_label2968:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2969 = load i32 , i32 * %op2870
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1500
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2970 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -3
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2971 = load i32 , i32 * %op2970
	lu12i.w $t0, -3
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1484
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2972 = mul i32  %op2969, %op2971
	lu12i.w $t0, -3
	ori $t0, $t0, 1500
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1484
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2972, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1480
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label2976
	b .long_func_label2976
.long_func_label2973:
# %op2974 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2974, i32 * %op2870
	lu12i.w $t0, -3
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2975 = load i32 , i32 * %op2869
	lu12i.w $t0, -3
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op2975, i32 * %op2872
	lu12i.w $t0, -3
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1472
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2880
	b .long_func_label2880
.long_func_label2976:
# %op2977 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2978 = icmp slt i32  %op2977, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1467
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op2979 = zext i1  %op2978 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1467
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op2980 = icmp ne i32  %op2979, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label416
	addi.d $t2, $zero, 0
	b false_label416
true_label416:
	addi.d $t2, $zero, 1
false_label416:
	lu12i.w $t8, -3
	ori $t8, $t8, 1459
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2980, label %label2981, label %label2985
	lu12i.w $t0, -3
	ori $t0, $t0, 1459
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2981
	b .long_func_label2985
.long_func_label2981:
# %op2982 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1452
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2983 = srem i32  %op2982, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1452
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2984 = icmp ne i32  %op2983, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label417
	addi.d $t2, $zero, 0
	b false_label417
true_label417:
	addi.d $t2, $zero, 1
false_label417:
	lu12i.w $t8, -3
	ori $t8, $t8, 1447
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op2984, label %label3000, label %label2993
	lu12i.w $t0, -3
	ori $t0, $t0, 1447
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3000
	b .long_func_label2993
.long_func_label2985:
# br label %label2973
	b .long_func_label2973
.long_func_label2986:
# %op2987 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2988 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2989 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op2988
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1436
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op2990 = load i32 , i32 * %op2989
	lu12i.w $t0, -3
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2991 = mul i32  1, %op2990
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1420
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op2992 = add i32  %op2987, %op2991
	lu12i.w $t0, -3
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1412
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2992, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1412
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2993
	b .long_func_label2993
.long_func_label2993:
# %op2994 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2995 = sdiv i32  %op2994, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1404
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2995, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1404
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2996 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2997 = sdiv i32  %op2996, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1396
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2997, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1396
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op2998 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op2999 = add i32  %op2998, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1388
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op2999, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1388
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2976
	b .long_func_label2976
.long_func_label3000:
# %op3001 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3002 = srem i32  %op3001, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3003 = icmp ne i32  %op3002, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1380
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label418
	addi.d $t2, $zero, 0
	b false_label418
true_label418:
	addi.d $t2, $zero, 1
false_label418:
	lu12i.w $t8, -3
	ori $t8, $t8, 1379
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3003, label %label2986, label %label2993
	lu12i.w $t0, -3
	ori $t0, $t0, 1379
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label2986
	b .long_func_label2993
.long_func_label3004:
# %op3005 = load i32 , i32 * %op2876
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1372
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3006 = icmp ne i32  %op3005, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1372
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label419
	addi.d $t2, $zero, 0
	b false_label419
true_label419:
	addi.d $t2, $zero, 1
false_label419:
	lu12i.w $t8, -3
	ori $t8, $t8, 1371
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3006, label %label3007, label %label3010
	lu12i.w $t0, -3
	ori $t0, $t0, 1371
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3007
	b .long_func_label3010
.long_func_label3007:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3008 = load i32 , i32 * %op2878
	lu12i.w $t0, -3
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3008, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3009 = load i32 , i32 * %op2876
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3009, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1360
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3018
	b .long_func_label3018
.long_func_label3010:
# %op3011 = load i32 , i32 * %op2878
	lu12i.w $t0, -3
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3011, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1356
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3012 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3012, i32 * %op2476
	lu12i.w $t0, -3
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1352
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3013 = load i32 , i32 * %op2474
	lu12i.w $t0, -3
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1348
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3013, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1348
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op3014 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3015 = icmp sge i32  %op3014, 15
	lu12i.w $t0, -3
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 15
	bge  $t0, $t1, true_label420
	addi.d $t2, $zero, 0
	b false_label420
true_label420:
	addi.d $t2, $zero, 1
false_label420:
	lu12i.w $t8, -3
	ori $t8, $t8, 1343
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3016 = zext i1  %op3015 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1343
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3017 = icmp ne i32  %op3016, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label421
	addi.d $t2, $zero, 0
	b false_label421
true_label421:
	addi.d $t2, $zero, 1
false_label421:
	lu12i.w $t8, -3
	ori $t8, $t8, 1335
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3017, label %label3133, label %label3138
	lu12i.w $t0, -3
	ori $t0, $t0, 1335
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3133
	b .long_func_label3138
.long_func_label3018:
# %op3019 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3020 = icmp slt i32  %op3019, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1327
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3021 = zext i1  %op3020 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1327
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3022 = icmp ne i32  %op3021, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label423
	addi.d $t2, $zero, 0
	b false_label423
true_label423:
	addi.d $t2, $zero, 1
false_label423:
	lu12i.w $t8, -3
	ori $t8, $t8, 1319
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3022, label %label3023, label %label3027
	lu12i.w $t0, -3
	ori $t0, $t0, 1319
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3023
	b .long_func_label3027
.long_func_label3023:
# %op3024 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3025 = srem i32  %op3024, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3026 = icmp ne i32  %op3025, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label424
	addi.d $t2, $zero, 0
	b false_label424
true_label424:
	addi.d $t2, $zero, 1
false_label424:
	lu12i.w $t8, -3
	ori $t8, $t8, 1307
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3026, label %label3031, label %label3037
	lu12i.w $t0, -3
	ori $t0, $t0, 1307
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3031
	b .long_func_label3037
.long_func_label3027:
# %op3028 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1300
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3028, i32 * %op2875
	lu12i.w $t0, -3
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1300
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3029 = load i32 , i32 * %op2878
	lu12i.w $t0, -3
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3029, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1296
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3030 = load i32 , i32 * %op2876
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1292
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3030, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1292
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3064
	b .long_func_label3064
.long_func_label3031:
# %op3032 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3033 = srem i32  %op3032, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1284
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3034 = icmp eq i32  %op3033, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1284
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label425
	addi.d $t2, $zero, 0
	b false_label425
true_label425:
	addi.d $t2, $zero, 1
false_label425:
	lu12i.w $t8, -3
	ori $t8, $t8, 1283
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3035 = zext i1  %op3034 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1283
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1276
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3036 = icmp ne i32  %op3035, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1276
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label426
	addi.d $t2, $zero, 0
	b false_label426
true_label426:
	addi.d $t2, $zero, 1
false_label426:
	lu12i.w $t8, -3
	ori $t8, $t8, 1275
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3036, label %label3048, label %label3055
	lu12i.w $t0, -3
	ori $t0, $t0, 1275
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3048
	b .long_func_label3055
.long_func_label3037:
# %op3038 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1268
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3039 = srem i32  %op3038, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1268
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3040 = icmp ne i32  %op3039, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label427
	addi.d $t2, $zero, 0
	b false_label427
true_label427:
	addi.d $t2, $zero, 1
false_label427:
	lu12i.w $t8, -3
	ori $t8, $t8, 1263
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3040, label %label3056, label %label3063
	lu12i.w $t0, -3
	ori $t0, $t0, 1263
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3056
	b .long_func_label3063
.long_func_label3041:
# %op3042 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3043 = sdiv i32  %op3042, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1252
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3043, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1252
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3044 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3045 = sdiv i32  %op3044, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1244
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3045, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1244
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3046 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3047 = add i32  %op3046, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1236
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3047, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1236
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3018
	b .long_func_label3018
.long_func_label3048:
# %op3049 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3050 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1228
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3051 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3050
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1228
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3052 = load i32 , i32 * %op3051
	lu12i.w $t0, -3
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1212
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3053 = mul i32  1, %op3052
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1212
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3054 = add i32  %op3049, %op3053
	lu12i.w $t0, -3
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1208
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1204
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3054, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1204
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3055
	b .long_func_label3055
.long_func_label3055:
# br label %label3041
	b .long_func_label3041
.long_func_label3056:
# %op3057 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3058 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1196
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3059 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3058
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1196
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3060 = load i32 , i32 * %op3059
	lu12i.w $t0, -3
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1180
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3061 = mul i32  1, %op3060
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1180
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3062 = add i32  %op3057, %op3061
	lu12i.w $t0, -3
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1176
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1172
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3062, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1172
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3063
	b .long_func_label3063
.long_func_label3063:
# br label %label3041
	b .long_func_label3041
.long_func_label3064:
# %op3065 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3066 = icmp slt i32  %op3065, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1167
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3067 = zext i1  %op3066 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1167
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3068 = icmp ne i32  %op3067, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label429
	addi.d $t2, $zero, 0
	b false_label429
true_label429:
	addi.d $t2, $zero, 1
false_label429:
	lu12i.w $t8, -3
	ori $t8, $t8, 1159
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3068, label %label3069, label %label3073
	lu12i.w $t0, -3
	ori $t0, $t0, 1159
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3069
	b .long_func_label3073
.long_func_label3069:
# %op3070 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3071 = srem i32  %op3070, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1148
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3072 = icmp ne i32  %op3071, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1148
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label430
	addi.d $t2, $zero, 0
	b false_label430
true_label430:
	addi.d $t2, $zero, 1
false_label430:
	lu12i.w $t8, -3
	ori $t8, $t8, 1147
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3072, label %label3092, label %label3085
	lu12i.w $t0, -3
	ori $t0, $t0, 1147
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3092
	b .long_func_label3085
.long_func_label3073:
# %op3074 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1140
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3074, i32 * %op2876
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1140
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3075 = icmp sgt i32  1, 15
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 15
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 1139
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3076 = zext i1  %op3075 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1139
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1132
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3077 = icmp ne i32  %op3076, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1132
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label432
	addi.d $t2, $zero, 0
	b false_label432
true_label432:
	addi.d $t2, $zero, 1
false_label432:
	lu12i.w $t8, -3
	ori $t8, $t8, 1131
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3077, label %label3096, label %label3097
	lu12i.w $t0, -3
	ori $t0, $t0, 1131
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3096
	b .long_func_label3097
.long_func_label3078:
# %op3079 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1124
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3080 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3081 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3080
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 1120
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3082 = load i32 , i32 * %op3081
	lu12i.w $t0, -3
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1108
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3083 = mul i32  1, %op3082
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 1108
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3084 = add i32  %op3079, %op3083
	lu12i.w $t0, -3
	ori $t0, $t0, 1124
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1104
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1100
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3084, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 1100
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3085
	b .long_func_label3085
.long_func_label3085:
# %op3086 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3087 = sdiv i32  %op3086, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1092
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3087, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1092
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3088 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3089 = sdiv i32  %op3088, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1084
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3089, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 1084
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3090 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3091 = add i32  %op3090, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1076
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3091, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 1076
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3064
	b .long_func_label3064
.long_func_label3092:
# %op3093 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3094 = srem i32  %op3093, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1068
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3095 = icmp ne i32  %op3094, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1068
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label433
	addi.d $t2, $zero, 0
	b false_label433
true_label433:
	addi.d $t2, $zero, 1
false_label433:
	lu12i.w $t8, -3
	ori $t8, $t8, 1067
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3095, label %label3078, label %label3085
	lu12i.w $t0, -3
	ori $t0, $t0, 1067
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3078
	b .long_func_label3085
.long_func_label3096:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3102
	b .long_func_label3102
.long_func_label3097:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3098 = load i32 , i32 * %op2876
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1060
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3099 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  1
	la.local $t0, SHIFT_TABLE
	addi.d $t2, $t0, 4
	lu12i.w $t8, -3
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3100 = load i32 , i32 * %op3099
	lu12i.w $t0, -3
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3101 = mul i32  %op3098, %op3100
	lu12i.w $t0, -3
	ori $t0, $t0, 1060
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3101, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 1040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# store i32  65535, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label3105
	b .long_func_label3105
.long_func_label3102:
# %op3103 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3103, i32 * %op2876
	lu12i.w $t0, -3
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1036
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3104 = load i32 , i32 * %op2875
	lu12i.w $t0, -3
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3104, i32 * %op2878
	lu12i.w $t0, -3
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 1032
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3004
	b .long_func_label3004
.long_func_label3105:
# %op3106 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3107 = icmp slt i32  %op3106, 16
	lu12i.w $t0, -3
	ori $t0, $t0, 1028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 16
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3108 = zext i1  %op3107 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 1027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1020
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3109 = icmp ne i32  %op3108, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1020
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label435
	addi.d $t2, $zero, 0
	b false_label435
true_label435:
	addi.d $t2, $zero, 1
false_label435:
	lu12i.w $t8, -3
	ori $t8, $t8, 1019
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3109, label %label3110, label %label3114
	lu12i.w $t0, -3
	ori $t0, $t0, 1019
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3110
	b .long_func_label3114
.long_func_label3110:
# %op3111 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3112 = srem i32  %op3111, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 1012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3113 = icmp ne i32  %op3112, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label436
	addi.d $t2, $zero, 0
	b false_label436
true_label436:
	addi.d $t2, $zero, 1
false_label436:
	lu12i.w $t8, -3
	ori $t8, $t8, 1007
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3113, label %label3129, label %label3122
	lu12i.w $t0, -3
	ori $t0, $t0, 1007
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3129
	b .long_func_label3122
.long_func_label3114:
# br label %label3102
	b .long_func_label3102
.long_func_label3115:
# %op3116 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3117 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3118 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3117
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3119 = load i32 , i32 * %op3118
	lu12i.w $t0, -3
	ori $t0, $t0, 984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3120 = mul i32  1, %op3119
	addi.w $t0, $zero, 1
	lu12i.w $t1, -3
	ori $t1, $t1, 980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3121 = add i32  %op3116, %op3120
	lu12i.w $t0, -3
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3121, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 972
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3122
	b .long_func_label3122
.long_func_label3122:
# %op3123 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3124 = sdiv i32  %op3123, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3124, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 964
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3125 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3126 = sdiv i32  %op3125, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3126, i32 * %op1
	ld.d $t0, $fp, -40
	lu12i.w $t1, -3
	ori $t1, $t1, 956
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3127 = load i32 , i32 * %op3
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3128 = add i32  %op3127, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3128, i32 * %op3
	ld.d $t0, $fp, -72
	lu12i.w $t1, -3
	ori $t1, $t1, 948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3105
	b .long_func_label3105
.long_func_label3129:
# %op3130 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3131 = srem i32  %op3130, 2
	lu12i.w $t0, -3
	ori $t0, $t0, 944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3132 = icmp ne i32  %op3131, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label437
	addi.d $t2, $zero, 0
	b false_label437
true_label437:
	addi.d $t2, $zero, 1
false_label437:
	lu12i.w $t8, -3
	ori $t8, $t8, 939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3132, label %label3115, label %label3122
	lu12i.w $t0, -3
	ori $t0, $t0, 939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3115
	b .long_func_label3122
.long_func_label3133:
# %op3134 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3135 = icmp slt i32  %op3134, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 931
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3136 = zext i1  %op3135 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 931
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3137 = icmp ne i32  %op3136, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label439
	addi.d $t2, $zero, 0
	b false_label439
true_label439:
	addi.d $t2, $zero, 1
false_label439:
	lu12i.w $t8, -3
	ori $t8, $t8, 923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3137, label %label3145, label %label3146
	lu12i.w $t0, -3
	ori $t0, $t0, 923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3145
	b .long_func_label3146
.long_func_label3138:
# %op3139 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3140 = icmp sgt i32  %op3139, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 915
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3141 = zext i1  %op3140 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 915
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3142 = icmp ne i32  %op3141, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 908
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label441
	addi.d $t2, $zero, 0
	b false_label441
true_label441:
	addi.d $t2, $zero, 1
false_label441:
	lu12i.w $t8, -3
	ori $t8, $t8, 907
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3142, label %label3148, label %label3153
	lu12i.w $t0, -3
	ori $t0, $t0, 907
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3148
	b .long_func_label3153
.long_func_label3143:
# %op3144 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3144, i32 * %op2474
	lu12i.w $t0, -3
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 900
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2825
	b .long_func_label2825
.long_func_label3145:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label3147
	b .long_func_label3147
.long_func_label3146:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3147
	b .long_func_label3147
.long_func_label3147:
# br label %label3143
	b .long_func_label3143
.long_func_label3148:
# %op3149 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3150 = icmp sgt i32  %op3149, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 895
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3151 = zext i1  %op3150 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 895
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3152 = icmp ne i32  %op3151, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label443
	addi.d $t2, $zero, 0
	b false_label443
true_label443:
	addi.d $t2, $zero, 1
false_label443:
	lu12i.w $t8, -3
	ori $t8, $t8, 887
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3152, label %label3156, label %label3170
	lu12i.w $t0, -3
	ori $t0, $t0, 887
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3156
	b .long_func_label3170
.long_func_label3153:
# %op3154 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3154, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 880
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3155
	b .long_func_label3155
.long_func_label3155:
# br label %label3143
	b .long_func_label3143
.long_func_label3156:
# %op3157 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3158 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3159 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3158
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3160 = load i32 , i32 * %op3159
	lu12i.w $t0, -3
	ori $t0, $t0, 864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3161 = sdiv i32  %op3157, %op3160
	lu12i.w $t0, -3
	ori $t0, $t0, 876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 860
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3161, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 856
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3162 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 852
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3163 = add i32  %op3162, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 852
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3164 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3165 = sub i32  15, %op3164
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 844
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3166 = add i32  %op3165, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3167 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3166
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3168 = load i32 , i32 * %op3167
	lu12i.w $t0, -3
	ori $t0, $t0, 824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3169 = sub i32  %op3163, %op3168
	lu12i.w $t0, -3
	ori $t0, $t0, 848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3169, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 816
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3176
	b .long_func_label3176
.long_func_label3170:
# %op3171 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3172 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3173 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3172
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 808
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3174 = load i32 , i32 * %op3173
	lu12i.w $t0, -3
	ori $t0, $t0, 800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3175 = sdiv i32  %op3171, %op3174
	lu12i.w $t0, -3
	ori $t0, $t0, 812
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 796
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3175, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3176
	b .long_func_label3176
.long_func_label3176:
# br label %label3155
	b .long_func_label3155
.long_func_label3177:
# %op3178 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3179 = icmp slt i32  %op3178, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 787
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3180 = zext i1  %op3179 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 787
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3181 = icmp ne i32  %op3180, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 780
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label445
	addi.d $t2, $zero, 0
	b false_label445
true_label445:
	addi.d $t2, $zero, 1
false_label445:
	lu12i.w $t8, -3
	ori $t8, $t8, 779
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3181, label %label3189, label %label3190
	lu12i.w $t0, -3
	ori $t0, $t0, 779
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3189
	b .long_func_label3190
.long_func_label3182:
# %op3183 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3184 = icmp sgt i32  %op3183, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 771
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3185 = zext i1  %op3184 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 771
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 764
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3186 = icmp ne i32  %op3185, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 764
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label447
	addi.d $t2, $zero, 0
	b false_label447
true_label447:
	addi.d $t2, $zero, 1
false_label447:
	lu12i.w $t8, -3
	ori $t8, $t8, 763
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3186, label %label3192, label %label3197
	lu12i.w $t0, -3
	ori $t0, $t0, 763
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3192
	b .long_func_label3197
.long_func_label3187:
# %op3188 = load i32 , i32 * %op4
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3188, i32 * %op2416
	lu12i.w $t0, -3
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 756
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2420
	b .long_func_label2420
.long_func_label3189:
# store i32  65535, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, 15
	ori $t1, $t1, 4095
	st.w $t1, $t0, 0
# br label %label3191
	b .long_func_label3191
.long_func_label3190:
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3191
	b .long_func_label3191
.long_func_label3191:
# br label %label3187
	b .long_func_label3187
.long_func_label3192:
# %op3193 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3194 = icmp sgt i32  %op3193, 32767
	lu12i.w $t0, -3
	ori $t0, $t0, 752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 7
	ori $t1, $t1, 4095
	slt $t2, $t1, $t0
	lu12i.w $t8, -3
	ori $t8, $t8, 751
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op3195 = zext i1  %op3194 to i32 
	lu12i.w $t0, -3
	ori $t0, $t0, 751
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op3196 = icmp ne i32  %op3195, 0
	lu12i.w $t0, -3
	ori $t0, $t0, 744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label449
	addi.d $t2, $zero, 0
	b false_label449
true_label449:
	addi.d $t2, $zero, 1
false_label449:
	lu12i.w $t8, -3
	ori $t8, $t8, 743
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op3196, label %label3200, label %label3214
	lu12i.w $t0, -3
	ori $t0, $t0, 743
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_func_label3200
	b .long_func_label3214
.long_func_label3197:
# %op3198 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op3198, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 736
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3199
	b .long_func_label3199
.long_func_label3199:
# br label %label3187
	b .long_func_label3187
.long_func_label3200:
# %op3201 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3202 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3203 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3202
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 728
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3204 = load i32 , i32 * %op3203
	lu12i.w $t0, -3
	ori $t0, $t0, 720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3205 = sdiv i32  %op3201, %op3204
	lu12i.w $t0, -3
	ori $t0, $t0, 732
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 716
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3205, i32 * %op2
	ld.d $t0, $fp, -56
	lu12i.w $t1, -3
	ori $t1, $t1, 712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op3206 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3207 = add i32  %op3206, 65536
	lu12i.w $t0, -3
	ori $t0, $t0, 708
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 16
	ori $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3208 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3209 = sub i32  15, %op3208
	addi.w $t0, $zero, 15
	lu12i.w $t1, -3
	ori $t1, $t1, 700
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3210 = add i32  %op3209, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op3211 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3210
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 692
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3212 = load i32 , i32 * %op3211
	lu12i.w $t0, -3
	ori $t0, $t0, 680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3213 = sub i32  %op3207, %op3212
	lu12i.w $t0, -3
	ori $t0, $t0, 704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 676
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3213, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 672
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3220
	b .long_func_label3220
.long_func_label3214:
# %op3215 = load i32 , i32 * %op2
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3216 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3217 = getelementptr [16 x i32 ], [16 x i32 ]* @SHIFT_TABLE, i32  0, i32  %op3216
	la.local $t0, SHIFT_TABLE
	lu12i.w $t1, -3
	ori $t1, $t1, 664
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3218 = load i32 , i32 * %op3217
	lu12i.w $t0, -3
	ori $t0, $t0, 656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 652
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3219 = sdiv i32  %op3215, %op3218
	lu12i.w $t0, -3
	ori $t0, $t0, 668
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -3
	ori $t1, $t1, 652
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	div.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3219, i32 * %op4
	ld.d $t0, $fp, -88
	lu12i.w $t1, -3
	ori $t1, $t1, 648
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label3220
	b .long_func_label3220
.long_func_label3220:
# br label %label3199
	b .long_func_label3199
.long_func_label3221:
# ret i32  1
	addi.w $a0, $zero, 1
	b long_func_ret
.long_func_label3222:
# %op3223 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	lu12i.w $t8, -3
	ori $t8, $t8, 644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op3224 = add i32  %op3223, 1
	lu12i.w $t0, -3
	ori $t0, $t0, 644
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -3
	ori $t8, $t8, 640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op3224, i32 * %op0
	ld.d $t0, $fp, -24
	lu12i.w $t1, -3
	ori $t1, $t1, 640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label2409
	b .long_func_label2409
long_func_ret:
	lu12i.w $t0, 2
	ori $t0, $t0, 3456
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = call i32  @long_func()
	bl long_func
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
