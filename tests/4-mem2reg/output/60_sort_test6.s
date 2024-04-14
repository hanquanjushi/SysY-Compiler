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
	addi.d $sp, $sp, -416
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
	st.w $a2, $fp, -36
.counting_sort_label_entry:
# %op3 = alloca [10 x i32 ]
	addi.d $t1, $fp, -88
	st.d $t1, $fp, -48
# br label %label4
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -92
	b .counting_sort_label4
.counting_sort_label4:
# %op5 = phi i32  [ 0, %label_entry ], [ %op11, %label9 ]
# %op6 = icmp slt i32  %op5, 10
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -93
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -101
# br i1  %op8, label %label9, label %label12
	ld.b $t0, $fp, -101
	bnez $t0, .counting_sort_label9
	b .counting_sort_label12
.counting_sort_label9:
# %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op5
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -92
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = add i32  %op5, 1
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# br label %label4
	ld.w $t0, $fp, -116
	st.w $t0, $fp, -92
	b .counting_sort_label4
.counting_sort_label12:
# br label %label13
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -120
	b .counting_sort_label13
.counting_sort_label13:
# %op14 = phi i32  [ 0, %label12 ], [ %op27, %label18 ]
# %op15 = icmp slt i32  %op14, %arg2
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -36
	slt $t2, $t0, $t1
	st.b $t2, $fp, -121
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -121
	st.w $t0, $fp, -128
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -129
# br i1  %op17, label %label18, label %label28
	ld.b $t0, $fp, -129
	bnez $t0, .counting_sort_label18
	b .counting_sort_label28
.counting_sort_label18:
# %op19 = getelementptr i32 , i32 * %arg0, i32  %op14
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -120
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op21 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op20
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -148
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op23 = add i32  %op22, 1
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op24 = getelementptr i32 , i32 * %arg0, i32  %op14
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -120
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -176
# %op25 = load i32 , i32 * %op24
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op26 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op25
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -180
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# store i32  %op23, i32 * %op26
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -168
	st.w $t1, $t0, 0
# %op27 = add i32  %op14, 1
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -196
# br label %label13
	ld.w $t0, $fp, -196
	st.w $t0, $fp, -120
	b .counting_sort_label13
.counting_sort_label28:
# br label %label29
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -200
	b .counting_sort_label29
.counting_sort_label29:
# %op30 = phi i32  [ 1, %label28 ], [ %op42, %label34 ]
# %op31 = icmp slt i32  %op30, 10
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	st.b $t2, $fp, -201
# %op32 = zext i1  %op31 to i32 
	ld.b $t0, $fp, -201
	st.w $t0, $fp, -208
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -209
# br i1  %op33, label %label34, label %label43
	ld.b $t0, $fp, -209
	bnez $t0, .counting_sort_label34
	b .counting_sort_label43
.counting_sort_label34:
# %op35 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op30
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -200
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op36 = load i32 , i32 * %op35
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op37 = sub i32  %op30, 1
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -232
# %op38 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op37
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -232
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op40 = add i32  %op36, %op39
	ld.w $t0, $fp, -228
	ld.w $t1, $fp, -244
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -248
# %op41 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op30
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -200
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# store i32  %op40, i32 * %op41
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -248
	st.w $t1, $t0, 0
# %op42 = add i32  %op30, 1
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -260
# br label %label29
	ld.w $t0, $fp, -260
	st.w $t0, $fp, -200
	b .counting_sort_label29
.counting_sort_label43:
# br label %label44
	ld.w $t0, $fp, -36
	st.w $t0, $fp, -264
	b .counting_sort_label44
.counting_sort_label44:
# %op45 = phi i32  [ %arg2, %label43 ], [ %op69, %label49 ]
# %op46 = icmp sgt i32  %op45, 0
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -265
# %op47 = zext i1  %op46 to i32 
	ld.b $t0, $fp, -265
	st.w $t0, $fp, -272
# %op48 = icmp ne i32  %op47, 0
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -273
# br i1  %op48, label %label49, label %label70
	ld.b $t0, $fp, -273
	bnez $t0, .counting_sort_label49
	b .counting_sort_label70
.counting_sort_label49:
# %op50 = sub i32  %op45, 1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# %op51 = getelementptr i32 , i32 * %arg0, i32  %op50
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -280
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -288
# %op52 = load i32 , i32 * %op51
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op53 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op52
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -292
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# %op54 = load i32 , i32 * %op53
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op55 = sub i32  %op54, 1
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# %op56 = sub i32  %op45, 1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -316
# %op57 = getelementptr i32 , i32 * %arg0, i32  %op56
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -316
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# %op58 = load i32 , i32 * %op57
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op59 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op58
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -332
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# store i32  %op55, i32 * %op59
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# %op60 = sub i32  %op45, 1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -348
# %op61 = getelementptr i32 , i32 * %arg0, i32  %op60
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -348
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# %op62 = load i32 , i32 * %op61
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op63 = sub i32  %op45, 1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op64 = getelementptr i32 , i32 * %arg0, i32  %op63
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -368
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -376
# %op65 = load i32 , i32 * %op64
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op66 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op65
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -380
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -392
# %op67 = load i32 , i32 * %op66
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op68 = getelementptr i32 , i32 * %arg1, i32  %op67
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -396
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -408
# store i32  %op62, i32 * %op68
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -364
	st.w $t1, $t0, 0
# %op69 = sub i32  %op45, 1
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -412
# br label %label44
	ld.w $t0, $fp, -412
	st.w $t0, $fp, -264
	b .counting_sort_label44
.counting_sort_label70:
# ret i32  0
	addi.w $a0, $zero, 0
	b counting_sort_ret
counting_sort_ret:
	addi.d $sp, $sp, 416
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -256
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
# %op11 = alloca [10 x i32 ]
	addi.d $t1, $fp, -192
	st.d $t1, $fp, -152
# %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -200
# %op13 = getelementptr [10 x i32 ], [10 x i32 ]* %op11, i32  0, i32  0
	ld.d $t0, $fp, -152
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -208
# %op14 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op15 = call i32  @counting_sort(i32 * %op12, i32 * %op13, i32  %op14)
	ld.d $a0, $fp, -200
	ld.d $a1, $fp, -208
	ld.w $a2, $fp, -212
	bl counting_sort
	st.w $a0, $fp, -216
# br label %label16
	ld.w $t0, $fp, -216
	st.w $t0, $fp, -220
	b .main_label16
.main_label16:
# %op17 = phi i32  [ %op15, %label_entry ], [ %op25, %label22 ]
# %op18 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op19 = icmp slt i32  %op17, %op18
	ld.w $t0, $fp, -220
	ld.w $t1, $fp, -224
	slt $t2, $t0, $t1
	st.b $t2, $fp, -225
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -225
	st.w $t0, $fp, -232
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -232
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -233
# br i1  %op21, label %label22, label %label26
	ld.b $t0, $fp, -233
	bnez $t0, .main_label22
	b .main_label26
.main_label22:
# %op23 = getelementptr [10 x i32 ], [10 x i32 ]* %op11, i32  0, i32  %op17
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -220
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -248
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -252
# call void @putint(i32  %op24)
	ld.w $a0, $fp, -252
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op25 = add i32  %op17, 1
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -256
# br label %label16
	ld.w $t0, $fp, -256
	st.w $t0, $fp, -220
	b .main_label16
.main_label26:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 256
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
