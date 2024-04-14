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
	addi.d $sp, $sp, -912
.main_label_entry:
# call void @putint(i32  3)
	addi.w $a0, $zero, 3
	bl putint
# call void @putint(i32  3)
	addi.w $a0, $zero, 3
	bl putint
# call void @putint(i32  1)
	addi.w $a0, $zero, 1
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label0
	b .main_label0
.main_label0:
# %op1 = icmp slt i32  1, 5
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 5
	slt $t2, $t0, $t1
	st.b $t2, $fp, -17
# %op2 = zext i1  %op1 to i32 
	ld.b $t0, $fp, -17
	st.w $t0, $fp, -24
# %op3 = icmp ne i32  %op2, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -25
# br i1  %op3, label %label4, label %label7
	ld.b $t0, $fp, -25
	bnez $t0, .main_label4
	b .main_label7
.main_label4:
# %op5 = add i32  0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -32
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -33
# br i1  %op6, label %label33, label %label34
	ld.b $t0, $fp, -33
	bnez $t0, .main_label33
	b .main_label34
.main_label7:
# call void @putint(i32  1)
	addi.w $a0, $zero, 1
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op8 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
	la.local $t0, c
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -48
# store i32  1, i32 * %op8
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op9 = alloca [2 x [8 x i32 ]]
	addi.d $t1, $fp, -120
	st.d $t1, $fp, -56
# %op10 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -128
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -136
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  2
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -144
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  3
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -152
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  4
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -160
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  5
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -168
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  6
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -176
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  7
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -184
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -192
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -200
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  2
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -208
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  3
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -216
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  4
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -224
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  5
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -232
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  6
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -240
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  7
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -248
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -256
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -264
# store i32  9, i32 * %op27
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 9
	st.w $t1, $t0, 0
# %op28 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -272
# store i32  8, i32 * %op28
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op29 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op9, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -56
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -280
# store i32  3, i32 * %op29
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op30 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
	la.local $t0, c
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -288
# %op31 = load i32 , i32 * %op30
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -293
# br i1  %op32, label %label35, label %label87
	ld.b $t0, $fp, -293
	bnez $t0, .main_label35
	b .main_label87
.main_label33:
# br label %label7
	b .main_label7
.main_label34:
# br label %label0
	b .main_label0
.main_label35:
# %op36 = alloca [7 x [1 x [5 x i32 ]]]
	addi.d $t1, $fp, -444
	st.d $t1, $fp, -304
# %op37 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -456
# store i32  0, i32 * %op37
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op38 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -464
# store i32  0, i32 * %op38
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op39 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  0, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -472
# store i32  0, i32 * %op39
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op40 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  0, i32  0, i32  3
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -480
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  0, i32  0, i32  4
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -488
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op42 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  1, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -496
# store i32  0, i32 * %op42
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op43 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  1, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -504
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  1, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -512
# store i32  0, i32 * %op44
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op45 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  1, i32  0, i32  3
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -520
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  1, i32  0, i32  4
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -528
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -536
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -544
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -552
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  3
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -560
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  4
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -568
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  3, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -576
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  3, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -584
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  3, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -592
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  3, i32  0, i32  3
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -600
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  3, i32  0, i32  4
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -608
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  4, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -616
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  4, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -624
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  4, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -632
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  4, i32  0, i32  3
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -640
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  4, i32  0, i32  4
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -648
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  5, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -656
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  5, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -664
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  5, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -672
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  5, i32  0, i32  3
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -680
# store i32  0, i32 * %op65
	ld.d $t0, $fp, -680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op66 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  5, i32  0, i32  4
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -688
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -688
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  6, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -696
# store i32  0, i32 * %op67
	ld.d $t0, $fp, -696
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  6, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -704
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -704
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  6, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -712
# store i32  0, i32 * %op69
	ld.d $t0, $fp, -712
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  6, i32  0, i32  3
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -720
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  6, i32  0, i32  4
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -728
# store i32  0, i32 * %op71
	ld.d $t0, $fp, -728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op72 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  0
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -736
# store i32  2, i32 * %op72
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op73 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  1
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -744
# store i32  1, i32 * %op73
	ld.d $t0, $fp, -744
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op74 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -752
# store i32  8, i32 * %op74
	ld.d $t0, $fp, -752
	addi.w $t1, $zero, 8
	st.w $t1, $t0, 0
# %op75 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -760
# %op76 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op75, i32  0, i32  0
	ld.d $t0, $fp, -760
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -768
# %op77 = getelementptr [5 x i32 ], [5 x i32 ]* %op76, i32  0, i32  0
	ld.d $t0, $fp, -768
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -776
# %op78 = load i32 , i32 * %op77
	ld.d $t0, $fp, -776
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# call void @putint(i32  %op78)
	ld.w $a0, $fp, -780
	bl putint
# %op79 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -792
# %op80 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op79, i32  0, i32  0
	ld.d $t0, $fp, -792
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -800
# %op81 = getelementptr [5 x i32 ], [5 x i32 ]* %op80, i32  0, i32  1
	ld.d $t0, $fp, -800
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -808
# %op82 = load i32 , i32 * %op81
	ld.d $t0, $fp, -808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# call void @putint(i32  %op82)
	ld.w $a0, $fp, -812
	bl putint
# %op83 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op36, i32  0, i32  2
	ld.d $t0, $fp, -304
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -824
# %op84 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op83, i32  0, i32  0
	ld.d $t0, $fp, -824
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -832
# %op85 = getelementptr [5 x i32 ], [5 x i32 ]* %op84, i32  0, i32  2
	ld.d $t0, $fp, -832
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -840
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# call void @putint(i32  %op86)
	ld.w $a0, $fp, -844
	bl putint
# br label %label87
	b .main_label87
.main_label87:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op88 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -848
# call void @putint(i32  %op88)
	ld.w $a0, $fp, -848
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op89 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  0
	la.local $t0, c
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -856
# %op90 = load i32 , i32 * %op89
	ld.d $t0, $fp, -856
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -860
# call void @putint(i32  %op90)
	ld.w $a0, $fp, -860
	bl putint
# %op91 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  1
	la.local $t0, c
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -872
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# call void @putint(i32  %op92)
	ld.w $a0, $fp, -876
	bl putint
# %op93 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
	la.local $t0, c
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -888
# %op94 = load i32 , i32 * %op93
	ld.d $t0, $fp, -888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# call void @putint(i32  %op94)
	ld.w $a0, $fp, -892
	bl putint
# %op95 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  3
	la.local $t0, c
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -904
# %op96 = load i32 , i32 * %op95
	ld.d $t0, $fp, -904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# call void @putint(i32  %op96)
	ld.w $a0, $fp, -908
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 912
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
