# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl b
	.data
	.type b, @object
	.size b, 4
b:
	.word 5
	.globl c
	.data
	.type c, @object
	.size c, 16
c:
	.word  6
	.word  7
	.word  8
	.word  9
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1008
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  2, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# call void @putint(i32  %op2)
	ld.w $a0, $fp, -48
	bl putint
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# call void @putint(i32  %op3)
	ld.w $a0, $fp, -52
	bl putint
# %op4 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @putint(i32  %op4)
	ld.w $a0, $fp, -56
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label5
	b .main_label5
.main_label5:
# %op6 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op7 = icmp slt i32  %op6, 5
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 5
	slt $t2, $t0, $t1
	st.b $t2, $fp, -61
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -69
# br i1  %op9, label %label10, label %label16
	ld.b $t0, $fp, -69
	bnez $t0, .main_label10
	b .main_label16
.main_label10:
# %op11 = alloca i32 
	addi.d $t1, $fp, -84
	st.d $t1, $fp, -80
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -88
# %op13 = add i32  %op12, 1
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# store i32  %op13, i32 * %op11
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op11
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -97
# br i1  %op15, label %label44, label %label45
	ld.b $t0, $fp, -97
	bnez $t0, .main_label44
	b .main_label45
.main_label16:
# %op17 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# call void @putint(i32  %op17)
	ld.w $a0, $fp, -104
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op18 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
	la.local $t0, c
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -112
# store i32  1, i32 * %op18
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op19 = alloca [2 x [8 x i32 ]]
	addi.d $t1, $fp, -184
	st.d $t1, $fp, -120
# %op20 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -192
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -200
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -208
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -216
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -224
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -232
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -240
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -248
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -256
# store i32  0, i32 * %op28
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op29 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -264
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  2
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -272
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  3
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -280
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  4
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -288
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  5
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -296
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op34 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  6
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -304
# store i32  0, i32 * %op34
	ld.d $t0, $fp, -304
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op35 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  7
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -312
# store i32  0, i32 * %op35
	ld.d $t0, $fp, -312
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op36 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -320
# store i32  0, i32 * %op36
	ld.d $t0, $fp, -320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op37 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -328
# store i32  9, i32 * %op37
	ld.d $t0, $fp, -328
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op38 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -336
# store i32  8, i32 * %op38
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op39 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -120
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -344
# store i32  3, i32 * %op39
	ld.d $t0, $fp, -344
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op40 = alloca i32 
	addi.d $t1, $fp, -356
	st.d $t1, $fp, -352
# store i32  2, i32 * %op40
	ld.d $t0, $fp, -352
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op41 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
	la.local $t0, c
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -368
# %op42 = load i32 , i32 * %op41
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -372
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -373
# br i1  %op43, label %label46, label %label101
	ld.b $t0, $fp, -373
	bnez $t0, .main_label46
	b .main_label101
.main_label44:
# br label %label16
	b .main_label16
.main_label45:
# br label %label5
	b .main_label5
.main_label46:
# %op47 = alloca [7 x [1 x [5 x i32 ]]]
	addi.d $t1, $fp, -524
	st.d $t1, $fp, -384
# %op48 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -536
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -544
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -552
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  3
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -560
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  4
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -568
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -576
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -584
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -592
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  3
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -600
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  4
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -608
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -616
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -624
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -632
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  3
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -640
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  4
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -648
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -656
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -664
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -672
# store i32  0, i32 * %op65
	ld.d $t0, $fp, -672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op66 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  3
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -680
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  4
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -688
# store i32  0, i32 * %op67
	ld.d $t0, $fp, -688
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -696
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -696
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -704
# store i32  0, i32 * %op69
	ld.d $t0, $fp, -704
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -712
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -712
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  3
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -720
# store i32  0, i32 * %op71
	ld.d $t0, $fp, -720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op72 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  4
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -728
# store i32  0, i32 * %op72
	ld.d $t0, $fp, -728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op73 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -736
# store i32  0, i32 * %op73
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op74 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -744
# store i32  0, i32 * %op74
	ld.d $t0, $fp, -744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op75 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -752
# store i32  0, i32 * %op75
	ld.d $t0, $fp, -752
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op76 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  3
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -760
# store i32  0, i32 * %op76
	ld.d $t0, $fp, -760
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op77 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  4
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -768
# store i32  0, i32 * %op77
	ld.d $t0, $fp, -768
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op78 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -776
# store i32  0, i32 * %op78
	ld.d $t0, $fp, -776
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op79 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -784
# store i32  0, i32 * %op79
	ld.d $t0, $fp, -784
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op80 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -792
# store i32  0, i32 * %op80
	ld.d $t0, $fp, -792
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op81 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  3
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -800
# store i32  0, i32 * %op81
	ld.d $t0, $fp, -800
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op82 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  4
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -808
# store i32  0, i32 * %op82
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op83 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  0
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -816
# store i32  2, i32 * %op83
	ld.d $t0, $fp, -816
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op84 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  1
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -824
# store i32  1, i32 * %op84
	ld.d $t0, $fp, -824
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op85 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  2
	ld.d $t0, $fp, -384
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -832
# store i32  8, i32 * %op85
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op86 = load i32 , i32 * %op40
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -836
# %op87 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  %op86
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -836
	addi.d $t3, $zero, 5
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -848
# %op88 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op87, i32  0, i32  0
	ld.d $t0, $fp, -848
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -856
# %op89 = getelementptr [5 x i32 ], [5 x i32 ]* %op88, i32  0, i32  0
	ld.d $t0, $fp, -856
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -864
# %op90 = load i32 , i32 * %op89
	ld.d $t0, $fp, -864
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -868
# call void @putint(i32  %op90)
	ld.w $a0, $fp, -868
	bl putint
# %op91 = load i32 , i32 * %op40
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -872
# %op92 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  %op91
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -872
	addi.d $t3, $zero, 5
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -880
# %op93 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op92, i32  0, i32  0
	ld.d $t0, $fp, -880
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -888
# %op94 = getelementptr [5 x i32 ], [5 x i32 ]* %op93, i32  0, i32  1
	ld.d $t0, $fp, -888
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -896
# %op95 = load i32 , i32 * %op94
	ld.d $t0, $fp, -896
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -900
# call void @putint(i32  %op95)
	ld.w $a0, $fp, -900
	bl putint
# %op96 = load i32 , i32 * %op40
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -904
# %op97 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  %op96
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -904
	addi.d $t3, $zero, 5
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -912
# %op98 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op97, i32  0, i32  0
	ld.d $t0, $fp, -912
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -920
# %op99 = getelementptr [5 x i32 ], [5 x i32 ]* %op98, i32  0, i32  2
	ld.d $t0, $fp, -920
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -928
# %op100 = load i32 , i32 * %op99
	ld.d $t0, $fp, -928
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -932
# call void @putint(i32  %op100)
	ld.w $a0, $fp, -932
	bl putint
# br label %label101
	b .main_label101
.main_label101:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op102 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -936
# call void @putint(i32  %op102)
	ld.w $a0, $fp, -936
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op103 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  0
	la.local $t0, c
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -944
# %op104 = load i32 , i32 * %op103
	ld.d $t0, $fp, -944
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -948
# call void @putint(i32  %op104)
	ld.w $a0, $fp, -948
	bl putint
# %op105 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  1
	la.local $t0, c
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -960
# %op106 = load i32 , i32 * %op105
	ld.d $t0, $fp, -960
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -964
# call void @putint(i32  %op106)
	ld.w $a0, $fp, -964
	bl putint
# %op107 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
	la.local $t0, c
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -976
# %op108 = load i32 , i32 * %op107
	ld.d $t0, $fp, -976
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -980
# call void @putint(i32  %op108)
	ld.w $a0, $fp, -980
	bl putint
# %op109 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  3
	la.local $t0, c
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -992
# %op110 = load i32 , i32 * %op109
	ld.d $t0, $fp, -992
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -996
# call void @putint(i32  %op110)
	ld.w $a0, $fp, -996
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 1008
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
