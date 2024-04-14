# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl INF
	.data
	.type INF, @object
	.size INF, 4
INF:
	.word 1879048192
	.globl size
	.type size, @object
	.size size, 40
size:
	.space 40
	.globl to
	.type to, @object
	.size to, 400
to:
	.space 400
	.globl cap
	.type cap, @object
	.size cap, 400
cap:
	.space 400
	.globl rev
	.type rev, @object
	.size rev, 400
rev:
	.space 400
	.globl used
	.type used, @object
	.size used, 40
used:
	.space 40
	.text
	.globl my_memset
	.type my_memset, @function
my_memset:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.my_memset_label_entry:
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
# %op6 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label7
	b .my_memset_label7
.my_memset_label7:
# %op8 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op9 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op10 = icmp slt i32  %op8, %op9
	ld.w $t0, $fp, -96
	ld.w $t1, $fp, -100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -101
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -109
# br i1  %op12, label %label13, label %label20
	ld.b $t0, $fp, -109
	bnez $t0, .my_memset_label13
	b .my_memset_label20
.my_memset_label13:
# %op14 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op15 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op16 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -128
# %op17 = getelementptr i32 , i32 * %op16, i32  %op15
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -120
	lu12i.w $t2, 0
	ori $t2, $t2, 4
	mul.w $t1, $t1, $t2
	bstrpick.d $t1, $t1, 31, 0
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# store i32  %op14, i32 * %op17
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op18 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op19 = add i32  %op18, 1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# store i32  %op19, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -144
	st.w $t1, $t0, 0
# br label %label7
	b .my_memset_label7
.my_memset_label20:
# ret void
	addi.d $a0, $zero, 0
	b my_memset_ret
my_memset_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl add_node
	.type add_node, @function
add_node:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -480
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.add_node_label_entry:
# %op3 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  %arg0, i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op7
	la.local $t0, to
	ld.w $t1, $fp, -84
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -96
# %op9 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op10 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op9
	la.local $t0, size
	ld.w $t1, $fp, -100
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# %op11 = load i32 , i32 * %op10
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op12 = getelementptr [10 x i32 ], [10 x i32 ]* %op8, i32  0, i32  %op11
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -116
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# store i32  %op6, i32 * %op12
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op13 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op15 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op14
	la.local $t0, cap
	ld.w $t1, $fp, -136
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -144
# %op16 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op17 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op16
	la.local $t0, size
	ld.w $t1, $fp, -148
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# %op18 = load i32 , i32 * %op17
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op19 = getelementptr [10 x i32 ], [10 x i32 ]* %op15, i32  0, i32  %op18
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  %op13, i32 * %op19
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# %op20 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op21 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op20
	la.local $t0, size
	ld.w $t1, $fp, -180
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op22 = load i32 , i32 * %op21
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op23 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -200
# %op24 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op23
	la.local $t0, rev
	ld.w $t1, $fp, -200
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op25 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op26 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op25
	la.local $t0, size
	ld.w $t1, $fp, -212
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# %op27 = load i32 , i32 * %op26
	ld.d $t0, $fp, -224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op28 = getelementptr [10 x i32 ], [10 x i32 ]* %op24, i32  0, i32  %op27
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -228
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# store i32  %op22, i32 * %op28
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -196
	st.w $t1, $t0, 0
# %op29 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op30 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op31 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op30
	la.local $t0, to
	ld.w $t1, $fp, -248
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# %op32 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op33 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op32
	la.local $t0, size
	ld.w $t1, $fp, -260
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -272
# %op34 = load i32 , i32 * %op33
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op35 = getelementptr [10 x i32 ], [10 x i32 ]* %op31, i32  0, i32  %op34
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -276
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -288
# store i32  %op29, i32 * %op35
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# %op36 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op37 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op36
	la.local $t0, cap
	ld.w $t1, $fp, -292
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# %op38 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op39 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op38
	la.local $t0, size
	ld.w $t1, $fp, -308
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# %op40 = load i32 , i32 * %op39
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op41 = getelementptr [10 x i32 ], [10 x i32 ]* %op37, i32  0, i32  %op40
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -324
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -336
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op42 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -340
# %op43 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op42
	la.local $t0, size
	ld.w $t1, $fp, -340
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op45 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op46 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op45
	la.local $t0, rev
	ld.w $t1, $fp, -360
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -368
# %op47 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op48 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op47
	la.local $t0, size
	ld.w $t1, $fp, -372
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op49 = load i32 , i32 * %op48
	ld.d $t0, $fp, -384
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -388
# %op50 = getelementptr [10 x i32 ], [10 x i32 ]* %op46, i32  0, i32  %op49
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -388
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -400
# store i32  %op44, i32 * %op50
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -356
	st.w $t1, $t0, 0
# %op51 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op52 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op51
	la.local $t0, size
	ld.w $t1, $fp, -404
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# %op53 = load i32 , i32 * %op52
	ld.d $t0, $fp, -416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op54 = add i32  %op53, 1
	ld.w $t0, $fp, -420
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -424
# %op55 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op56 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op55
	la.local $t0, size
	ld.w $t1, $fp, -428
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -440
# store i32  %op54, i32 * %op56
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -424
	st.w $t1, $t0, 0
# %op57 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op58 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op57
	la.local $t0, size
	ld.w $t1, $fp, -444
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -456
# %op59 = load i32 , i32 * %op58
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op60 = add i32  %op59, 1
	ld.w $t0, $fp, -460
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -464
# %op61 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op62 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op61
	la.local $t0, size
	ld.w $t1, $fp, -468
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# store i32  %op60, i32 * %op62
	ld.d $t0, $fp, -480
	ld.w $t1, $fp, -464
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b add_node_ret
add_node_ret:
	addi.d $sp, $sp, 480
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl dfs
	.type dfs, @function
dfs:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -752
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.dfs_label_entry:
# %op3 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  %arg0, i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op4 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op6 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op7 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op8 = icmp eq i32  %op6, %op7
	ld.w $t0, $fp, -80
	ld.w $t1, $fp, -84
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -85
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -93
# br i1  %op10, label %label11, label %label13
	ld.b $t0, $fp, -93
	bnez $t0, .dfs_label11
	b .dfs_label13
.dfs_label11:
# %op12 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# ret i32  %op12
	ld.w $a0, $fp, -100
	b dfs_ret
.dfs_label13:
# %op14 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op15 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op14
	la.local $t0, used
	ld.w $t1, $fp, -104
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# store i32  1, i32 * %op15
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op16 = alloca i32 
	addi.d $t1, $fp, -124
	st.d $t1, $fp, -120
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label17
	b .dfs_label17
.dfs_label17:
# %op18 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op19 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op20 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %op19
	la.local $t0, size
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -144
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op22 = icmp slt i32  %op18, %op21
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -148
	slt $t2, $t0, $t1
	st.b $t2, $fp, -149
# %op23 = zext i1  %op22 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op24 = icmp ne i32  %op23, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -157
# br i1  %op24, label %label25, label %label34
	ld.b $t0, $fp, -157
	bnez $t0, .dfs_label25
	b .dfs_label34
.dfs_label25:
# %op26 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op27 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op26
	la.local $t0, to
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# %op28 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op29 = getelementptr [10 x i32 ], [10 x i32 ]* %op27, i32  0, i32  %op28
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -180
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op31 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op30
	la.local $t0, used
	ld.w $t1, $fp, -196
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op32 = load i32 , i32 * %op31
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op33 = icmp ne i32  %op32, 0
	ld.w $t0, $fp, -212
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -213
# br i1  %op33, label %label35, label %label38
	ld.b $t0, $fp, -213
	bnez $t0, .dfs_label35
	b .dfs_label38
.dfs_label34:
# ret i32  0
	addi.w $a0, $zero, 0
	b dfs_ret
.dfs_label35:
# %op36 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op37 = add i32  %op36, 1
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -224
# store i32  %op37, i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -224
	st.w $t1, $t0, 0
# br label %label17
	b .dfs_label17
.dfs_label38:
# %op39 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op40 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op39
	la.local $t0, cap
	ld.w $t1, $fp, -228
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# %op41 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op42 = getelementptr [10 x i32 ], [10 x i32 ]* %op40, i32  0, i32  %op41
	ld.d $t0, $fp, -240
	ld.w $t1, $fp, -244
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op44 = icmp sle i32  %op43, 0
	ld.w $t0, $fp, -260
	addi.w $t1, $zero, 0
	bge  $t1, $t0, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -261
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -261
	st.w $t0, $fp, -268
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -269
# br i1  %op46, label %label47, label %label50
	ld.b $t0, $fp, -269
	bnez $t0, .dfs_label47
	b .dfs_label50
.dfs_label47:
# %op48 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op49 = add i32  %op48, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32  %op49, i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# br label %label17
	b .dfs_label17
.dfs_label50:
# %op51 = alloca i32 
	addi.d $t1, $fp, -292
	st.d $t1, $fp, -288
# %op52 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -296
# %op53 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op54 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op53
	la.local $t0, cap
	ld.w $t1, $fp, -300
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op55 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op56 = getelementptr [10 x i32 ], [10 x i32 ]* %op54, i32  0, i32  %op55
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -316
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op58 = icmp slt i32  %op52, %op57
	ld.w $t0, $fp, -296
	ld.w $t1, $fp, -332
	slt $t2, $t0, $t1
	st.b $t2, $fp, -333
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -333
	st.w $t0, $fp, -340
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -340
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -341
# br i1  %op60, label %label61, label %label63
	ld.b $t0, $fp, -341
	bnez $t0, .dfs_label61
	b .dfs_label63
.dfs_label61:
# %op62 = load i32 , i32 * %op5
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# store i32  %op62, i32 * %op51
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -348
	st.w $t1, $t0, 0
# br label %label69
	b .dfs_label69
.dfs_label63:
# %op64 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op65 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op64
	la.local $t0, cap
	ld.w $t1, $fp, -352
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -360
# %op66 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op67 = getelementptr [10 x i32 ], [10 x i32 ]* %op65, i32  0, i32  %op66
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -364
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# %op68 = load i32 , i32 * %op67
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# store i32  %op68, i32 * %op51
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -380
	st.w $t1, $t0, 0
# br label %label69
	b .dfs_label69
.dfs_label69:
# %op70 = alloca i32 
	addi.d $t1, $fp, -396
	st.d $t1, $fp, -392
# %op71 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -400
# %op72 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op71
	la.local $t0, to
	ld.w $t1, $fp, -400
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op73 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op74 = getelementptr [10 x i32 ], [10 x i32 ]* %op72, i32  0, i32  %op73
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -412
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -424
# %op75 = load i32 , i32 * %op74
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op76 = load i32 , i32 * %op4
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -432
# %op77 = load i32 , i32 * %op51
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op78 = call i32  @dfs(i32  %op75, i32  %op76, i32  %op77)
	ld.w $a0, $fp, -428
	ld.w $a1, $fp, -432
	ld.w $a2, $fp, -436
	bl dfs
	st.w $a0, $fp, -440
# store i32  %op78, i32 * %op70
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -440
	st.w $t1, $t0, 0
# %op79 = load i32 , i32 * %op70
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op80 = icmp sgt i32  %op79, 0
	ld.w $t0, $fp, -444
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -445
# %op81 = zext i1  %op80 to i32 
	ld.b $t0, $fp, -445
	st.w $t0, $fp, -452
# %op82 = icmp ne i32  %op81, 0
	ld.w $t0, $fp, -452
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -453
# br i1  %op82, label %label83, label %label123
	ld.b $t0, $fp, -453
	bnez $t0, .dfs_label83
	b .dfs_label123
.dfs_label83:
# %op84 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op85 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op84
	la.local $t0, cap
	ld.w $t1, $fp, -460
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -472
# %op86 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op87 = getelementptr [10 x i32 ], [10 x i32 ]* %op85, i32  0, i32  %op86
	ld.d $t0, $fp, -472
	ld.w $t1, $fp, -476
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -488
# %op88 = load i32 , i32 * %op87
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op89 = load i32 , i32 * %op70
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op90 = sub i32  %op88, %op89
	ld.w $t0, $fp, -492
	ld.w $t1, $fp, -496
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -500
# %op91 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -504
# %op92 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op91
	la.local $t0, cap
	ld.w $t1, $fp, -504
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -512
# %op93 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op94 = getelementptr [10 x i32 ], [10 x i32 ]* %op92, i32  0, i32  %op93
	ld.d $t0, $fp, -512
	ld.w $t1, $fp, -516
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -528
# store i32  %op90, i32 * %op94
	ld.d $t0, $fp, -528
	ld.w $t1, $fp, -500
	st.w $t1, $t0, 0
# %op95 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op96 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op95
	la.local $t0, to
	ld.w $t1, $fp, -532
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -544
# %op97 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -548
# %op98 = getelementptr [10 x i32 ], [10 x i32 ]* %op96, i32  0, i32  %op97
	ld.d $t0, $fp, -544
	ld.w $t1, $fp, -548
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -560
# %op99 = load i32 , i32 * %op98
	ld.d $t0, $fp, -560
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op100 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op99
	la.local $t0, cap
	ld.w $t1, $fp, -564
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -576
# %op101 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -580
# %op102 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op101
	la.local $t0, rev
	ld.w $t1, $fp, -580
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -592
# %op103 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -596
# %op104 = getelementptr [10 x i32 ], [10 x i32 ]* %op102, i32  0, i32  %op103
	ld.d $t0, $fp, -592
	ld.w $t1, $fp, -596
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -608
# %op105 = load i32 , i32 * %op104
	ld.d $t0, $fp, -608
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -612
# %op106 = getelementptr [10 x i32 ], [10 x i32 ]* %op100, i32  0, i32  %op105
	ld.d $t0, $fp, -576
	ld.w $t1, $fp, -612
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -624
# %op107 = load i32 , i32 * %op106
	ld.d $t0, $fp, -624
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -628
# %op108 = load i32 , i32 * %op70
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -632
# %op109 = add i32  %op107, %op108
	ld.w $t0, $fp, -628
	ld.w $t1, $fp, -632
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -636
# %op110 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -640
# %op111 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %op110
	la.local $t0, to
	ld.w $t1, $fp, -640
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -648
# %op112 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op113 = getelementptr [10 x i32 ], [10 x i32 ]* %op111, i32  0, i32  %op112
	ld.d $t0, $fp, -648
	ld.w $t1, $fp, -652
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -664
# %op114 = load i32 , i32 * %op113
	ld.d $t0, $fp, -664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op115 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op114
	la.local $t0, cap
	ld.w $t1, $fp, -668
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -680
# %op116 = load i32 , i32 * %op3
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op117 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %op116
	la.local $t0, rev
	ld.w $t1, $fp, -684
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -696
# %op118 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op119 = getelementptr [10 x i32 ], [10 x i32 ]* %op117, i32  0, i32  %op118
	ld.d $t0, $fp, -696
	ld.w $t1, $fp, -700
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -712
# %op120 = load i32 , i32 * %op119
	ld.d $t0, $fp, -712
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op121 = getelementptr [10 x i32 ], [10 x i32 ]* %op115, i32  0, i32  %op120
	ld.d $t0, $fp, -680
	ld.w $t1, $fp, -716
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -728
# store i32  %op109, i32 * %op121
	ld.d $t0, $fp, -728
	ld.w $t1, $fp, -636
	st.w $t1, $t0, 0
# %op122 = load i32 , i32 * %op70
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# ret i32  %op122
	ld.w $a0, $fp, -732
	b dfs_ret
.dfs_label123:
# %op124 = load i32 , i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -736
# %op125 = add i32  %op124, 1
	ld.w $t0, $fp, -736
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -740
# store i32  %op125, i32 * %op16
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -740
	st.w $t1, $t0, 0
# br label %label17
	b .dfs_label17
dfs_ret:
	addi.d $sp, $sp, 752
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl max_flow
	.type max_flow, @function
max_flow:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -144
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.max_flow_label_entry:
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
# %op4 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label5
	b .max_flow_label5
.max_flow_label5:
# %op6 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -69
# br i1  %op6, label %label7, label %label18
	ld.b $t0, $fp, -69
	bnez $t0, .max_flow_label7
	b .max_flow_label18
.max_flow_label7:
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  0
	la.local $t0, used
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -80
# call void @my_memset(i32 * %op8, i32  0, i32  10)
	ld.d $a0, $fp, -80
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
# %op9 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op11 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op12 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op13 = call i32  @dfs(i32  %op10, i32  %op11, i32  %op12)
	ld.w $a0, $fp, -96
	ld.w $a1, $fp, -100
	ld.w $a2, $fp, -104
	bl dfs
	st.w $a0, $fp, -108
# store i32  %op13, i32 * %op9
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op14 = load i32 , i32 * %op9
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op15 = icmp eq i32  %op14, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -113
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -113
	st.w $t0, $fp, -120
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -121
# br i1  %op17, label %label19, label %label21
	ld.b $t0, $fp, -121
	bnez $t0, .max_flow_label19
	b .max_flow_label21
.max_flow_label18:
# ret i32  0
	addi.w $a0, $zero, 0
	b max_flow_ret
.max_flow_label19:
# %op20 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# ret i32  %op20
	ld.w $a0, $fp, -128
	b max_flow_ret
.max_flow_label21:
# %op22 = load i32 , i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op23 = load i32 , i32 * %op9
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# %op24 = add i32  %op22, %op23
	ld.w $t0, $fp, -132
	ld.w $t1, $fp, -136
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# store i32  %op24, i32 * %op4
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -140
	st.w $t1, $t0, 0
# br label %label5
	b .max_flow_label5
max_flow_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -48
# store i32  %op2, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -52
# store i32  %op3, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op4 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  0
	la.local $t0, size
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -64
# call void @my_memset(i32 * %op4, i32  0, i32  10)
	ld.d $a0, $fp, -64
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
# br label %label5
	b .main_label5
.main_label5:
# %op6 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op7 = icmp sgt i32  %op6, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -69
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -77
# br i1  %op9, label %label10, label %label22
	ld.b $t0, $fp, -77
	bnez $t0, .main_label10
	b .main_label22
.main_label10:
# %op11 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# %op12 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# %op13 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -112
# store i32  %op13, i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -112
	st.w $t1, $t0, 0
# %op14 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -116
# store i32  %op14, i32 * %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# %op15 = alloca i32 
	addi.d $t1, $fp, -132
	st.d $t1, $fp, -128
# %op16 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -136
# store i32  %op16, i32 * %op15
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -136
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op18 = load i32 , i32 * %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op19 = load i32 , i32 * %op15
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# call void @add_node(i32  %op17, i32  %op18, i32  %op19)
	ld.w $a0, $fp, -140
	ld.w $a1, $fp, -144
	ld.w $a2, $fp, -148
	bl add_node
# %op20 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op21 = sub i32  %op20, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# store i32  %op21, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# br label %label5
	b .main_label5
.main_label22:
# %op23 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op24 = call i32  @max_flow(i32  1, i32  %op23)
	addi.w $a0, $zero, 1
	ld.w $a1, $fp, -160
	bl max_flow
	st.w $a0, $fp, -164
# call void @putint(i32  %op24)
	ld.w $a0, $fp, -164
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
