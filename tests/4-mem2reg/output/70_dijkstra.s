# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl INF
	.data
	.type INF, @object
	.size INF, 4
INF:
	.word 65535
	.globl e
	.type e, @object
	.size e, 1024
e:
	.space 1024
	.globl book
	.type book, @object
	.size book, 64
book:
	.space 64
	.globl dis
	.type dis, @object
	.size dis, 64
dis:
	.space 64
	.globl n
	.type n, @object
	.size n, 4
n:
	.space 4
	.globl m
	.type m, @object
	.size m, 4
m:
	.space 4
	.globl v1
	.type v1, @object
	.size v1, 4
v1:
	.space 4
	.globl v2
	.type v2, @object
	.size v2, 4
v2:
	.space 4
	.globl w
	.type w, @object
	.size w, 4
w:
	.space 4
	.text
	.globl Dijkstra
	.type Dijkstra, @function
Dijkstra:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -416
.Dijkstra_label_entry:
# br label %label0
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -20
	b .Dijkstra_label0
.Dijkstra_label0:
# %op1 = phi i32  [ 1, %label_entry ], [ %op12, %label6 ]
# %op2 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# %op3 = icmp sle i32  %op1, %op2
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -25
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -33
# br i1  %op5, label %label6, label %label13
	ld.b $t0, $fp, -33
	bnez $t0, .Dijkstra_label6
	b .Dijkstra_label13
.Dijkstra_label6:
# %op7 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  1
	la.local $t0, e
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -48
# %op8 = getelementptr [16 x i32 ], [16 x i32 ]* %op7, i32  0, i32  %op1
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -56
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op10 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op1
	la.local $t0, dis
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# store i32  %op9, i32 * %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op11 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op1
	la.local $t0, book
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -80
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = add i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# br label %label0
	ld.w $t0, $fp, -84
	st.w $t0, $fp, -20
	b .Dijkstra_label0
.Dijkstra_label13:
# %op14 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  1
	la.local $t0, book
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -96
# store i32  1, i32 * %op14
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label15
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -100
	b .Dijkstra_label15
.Dijkstra_label15:
# %op16 = phi i32  [ 1, %label13 ], [ %op69, %label68 ]
# %op17 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# %op18 = sub i32  %op17, 1
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# %op19 = icmp sle i32  %op16, %op18
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -108
	bge  $t1, $t0, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -109
# %op20 = zext i1  %op19 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op21 = icmp ne i32  %op20, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -117
# br i1  %op21, label %label22, label %label24
	ld.b $t0, $fp, -117
	bnez $t0, .Dijkstra_label22
	b .Dijkstra_label24
.Dijkstra_label22:
# %op23 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# br label %label25
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -128
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -132
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -136
	b .Dijkstra_label25
.Dijkstra_label24:
# ret void
	addi.d $a0, $zero, 0
	b Dijkstra_ret
.Dijkstra_label25:
# %op26 = phi i32  [ 1, %label22 ], [ %op47, %label44 ]
# %op27 = phi i32  [ 0, %label22 ], [ %op45, %label44 ]
# %op28 = phi i32  [ %op23, %label22 ], [ %op46, %label44 ]
# %op29 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op30 = icmp sle i32  %op26, %op29
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -140
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -141
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -149
# br i1  %op32, label %label33, label %label39
	ld.b $t0, $fp, -149
	bnez $t0, .Dijkstra_label33
	b .Dijkstra_label39
.Dijkstra_label33:
# %op34 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op26
	la.local $t0, dis
	ld.w $t1, $fp, -128
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op36 = icmp sgt i32  %op28, %op35
	ld.w $t0, $fp, -136
	ld.w $t1, $fp, -164
	slt $t2, $t1, $t0
	st.b $t2, $fp, -165
# %op37 = zext i1  %op36 to i32 
	ld.b $t0, $fp, -165
	st.w $t0, $fp, -172
# %op38 = icmp ne i32  %op37, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -173
# br i1  %op38, label %label48, label %label44
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -200
	ld.w $t0, $fp, -136
	st.w $t0, $fp, -204
	ld.b $t0, $fp, -173
	bnez $t0, .Dijkstra_label48
	b .Dijkstra_label44
.Dijkstra_label39:
# %op40 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op27
	la.local $t0, book
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -184
# store i32  1, i32 * %op40
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label54
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -236
	b .Dijkstra_label54
.Dijkstra_label41:
# %op42 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op26
	la.local $t0, dis
	ld.w $t1, $fp, -128
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# br label %label44
	ld.w $t0, $fp, -128
	st.w $t0, $fp, -200
	ld.w $t0, $fp, -196
	st.w $t0, $fp, -204
	b .Dijkstra_label44
.Dijkstra_label44:
# %op45 = phi i32  [ %op27, %label33 ], [ %op27, %label48 ], [ %op26, %label41 ]
# %op46 = phi i32  [ %op28, %label33 ], [ %op28, %label48 ], [ %op43, %label41 ]
# %op47 = add i32  %op26, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# br label %label25
	ld.w $t0, $fp, -208
	st.w $t0, $fp, -128
	ld.w $t0, $fp, -200
	st.w $t0, $fp, -132
	ld.w $t0, $fp, -204
	st.w $t0, $fp, -136
	b .Dijkstra_label25
.Dijkstra_label48:
# %op49 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op26
	la.local $t0, book
	ld.w $t1, $fp, -128
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# %op50 = load i32 , i32 * %op49
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op51 = icmp eq i32  %op50, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -221
# %op52 = zext i1  %op51 to i32 
	ld.b $t0, $fp, -221
	st.w $t0, $fp, -228
# %op53 = icmp ne i32  %op52, 0
	ld.w $t0, $fp, -228
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -229
# br i1  %op53, label %label41, label %label44
	ld.w $t0, $fp, -132
	st.w $t0, $fp, -200
	ld.w $t0, $fp, -136
	st.w $t0, $fp, -204
	ld.b $t0, $fp, -229
	bnez $t0, .Dijkstra_label41
	b .Dijkstra_label44
.Dijkstra_label54:
# %op55 = phi i32  [ 1, %label39 ], [ %op83, %label82 ]
# %op56 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -240
# %op57 = icmp sle i32  %op55, %op56
	ld.w $t0, $fp, -236
	ld.w $t1, $fp, -240
	bge  $t1, $t0, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -241
# %op58 = zext i1  %op57 to i32 
	ld.b $t0, $fp, -241
	st.w $t0, $fp, -248
# %op59 = icmp ne i32  %op58, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -249
# br i1  %op59, label %label60, label %label68
	ld.b $t0, $fp, -249
	bnez $t0, .Dijkstra_label60
	b .Dijkstra_label68
.Dijkstra_label60:
# %op61 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op27
	la.local $t0, e
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# %op62 = getelementptr [16 x i32 ], [16 x i32 ]* %op61, i32  0, i32  %op55
	ld.d $t0, $fp, -264
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -272
# %op63 = load i32 , i32 * %op62
	ld.d $t0, $fp, -272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op64 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -280
# %op65 = icmp slt i32  %op63, %op64
	ld.w $t0, $fp, -276
	ld.w $t1, $fp, -280
	slt $t2, $t0, $t1
	st.b $t2, $fp, -281
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -281
	st.w $t0, $fp, -288
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -289
# br i1  %op67, label %label70, label %label82
	ld.b $t0, $fp, -289
	bnez $t0, .Dijkstra_label70
	b .Dijkstra_label82
.Dijkstra_label68:
# %op69 = add i32  %op16, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -296
# br label %label15
	ld.w $t0, $fp, -296
	st.w $t0, $fp, -100
	b .Dijkstra_label15
.Dijkstra_label70:
# %op71 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op55
	la.local $t0, dis
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# %op72 = load i32 , i32 * %op71
	ld.d $t0, $fp, -304
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op73 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op27
	la.local $t0, dis
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# %op74 = load i32 , i32 * %op73
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op75 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op27
	la.local $t0, e
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# %op76 = getelementptr [16 x i32 ], [16 x i32 ]* %op75, i32  0, i32  %op55
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# %op77 = load i32 , i32 * %op76
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op78 = add i32  %op74, %op77
	ld.w $t0, $fp, -324
	ld.w $t1, $fp, -348
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op79 = icmp sgt i32  %op72, %op78
	ld.w $t0, $fp, -308
	ld.w $t1, $fp, -352
	slt $t2, $t1, $t0
	st.b $t2, $fp, -353
# %op80 = zext i1  %op79 to i32 
	ld.b $t0, $fp, -353
	st.w $t0, $fp, -360
# %op81 = icmp ne i32  %op80, 0
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -361
# br i1  %op81, label %label84, label %label92
	ld.b $t0, $fp, -361
	bnez $t0, .Dijkstra_label84
	b .Dijkstra_label92
.Dijkstra_label82:
# %op83 = add i32  %op55, 1
	ld.w $t0, $fp, -236
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# br label %label54
	ld.w $t0, $fp, -368
	st.w $t0, $fp, -236
	b .Dijkstra_label54
.Dijkstra_label84:
# %op85 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op27
	la.local $t0, dis
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op87 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op27
	la.local $t0, e
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -392
# %op88 = getelementptr [16 x i32 ], [16 x i32 ]* %op87, i32  0, i32  %op55
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -400
# %op89 = load i32 , i32 * %op88
	ld.d $t0, $fp, -400
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -404
# %op90 = add i32  %op86, %op89
	ld.w $t0, $fp, -380
	ld.w $t1, $fp, -404
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -408
# %op91 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op55
	la.local $t0, dis
	ld.w $t1, $fp, -236
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# store i32  %op90, i32 * %op91
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -408
	st.w $t1, $t0, 0
# br label %label92
	b .Dijkstra_label92
.Dijkstra_label92:
# br label %label82
	b .Dijkstra_label82
Dijkstra_ret:
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
	addi.d $sp, $sp, -224
.main_label_entry:
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @n
	la.local $t0, n
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -24
# store i32  %op1, i32 * @m
	la.local $t0, m
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# br label %label2
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -28
	b .main_label2
.main_label2:
# %op3 = phi i32  [ 1, %label_entry ], [ %op21, %label20 ]
# %op4 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op5 = icmp sle i32  %op3, %op4
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	bge  $t1, $t0, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -33
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -41
# br i1  %op7, label %label8, label %label9
	ld.b $t0, $fp, -41
	bnez $t0, .main_label8
	b .main_label9
.main_label8:
# br label %label10
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -48
	b .main_label10
.main_label9:
# br label %label31
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -128
	b .main_label31
.main_label10:
# %op11 = phi i32  [ 1, %label8 ], [ %op30, %label29 ]
# %op12 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op13 = icmp sle i32  %op11, %op12
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	bge  $t1, $t0, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -53
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -61
# br i1  %op15, label %label16, label %label20
	ld.b $t0, $fp, -61
	bnez $t0, .main_label16
	b .main_label20
.main_label16:
# %op17 = icmp eq i32  %op3, %op11
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -48
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -62
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -62
	st.w $t0, $fp, -68
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -69
# br i1  %op19, label %label22, label %label25
	ld.b $t0, $fp, -69
	bnez $t0, .main_label22
	b .main_label25
.main_label20:
# %op21 = add i32  %op3, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# br label %label2
	ld.w $t0, $fp, -76
	st.w $t0, $fp, -28
	b .main_label2
.main_label22:
# %op23 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op3
	la.local $t0, e
	ld.w $t1, $fp, -28
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op24 = getelementptr [16 x i32 ], [16 x i32 ]* %op23, i32  0, i32  %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -48
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -96
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label29
	b .main_label29
.main_label25:
# %op26 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op27 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op3
	la.local $t0, e
	ld.w $t1, $fp, -28
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# %op28 = getelementptr [16 x i32 ], [16 x i32 ]* %op27, i32  0, i32  %op11
	ld.d $t0, $fp, -112
	ld.w $t1, $fp, -48
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -120
# store i32  %op26, i32 * %op28
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# br label %label29
	b .main_label29
.main_label29:
# %op30 = add i32  %op11, 1
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# br label %label10
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -48
	b .main_label10
.main_label31:
# %op32 = phi i32  [ 1, %label9 ], [ %op43, %label37 ]
# %op33 = load i32 , i32 * @m
	la.local $t0, m
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op34 = icmp sle i32  %op32, %op33
	ld.w $t0, $fp, -128
	ld.w $t1, $fp, -132
	bge  $t1, $t0, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -133
# %op35 = zext i1  %op34 to i32 
	ld.b $t0, $fp, -133
	st.w $t0, $fp, -140
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -141
# br i1  %op36, label %label37, label %label44
	ld.b $t0, $fp, -141
	bnez $t0, .main_label37
	b .main_label44
.main_label37:
# %op38 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -148
# %op39 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -152
# %op40 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -156
# %op41 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op39
	la.local $t0, e
	ld.w $t1, $fp, -152
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -168
# %op42 = getelementptr [16 x i32 ], [16 x i32 ]* %op41, i32  0, i32  %op38
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -148
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  %op40, i32 * %op42
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op43 = add i32  %op32, 1
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# br label %label31
	ld.w $t0, $fp, -180
	st.w $t0, $fp, -128
	b .main_label31
.main_label44:
# call void @Dijkstra()
	bl Dijkstra
# br label %label45
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -184
	b .main_label45
.main_label45:
# %op46 = phi i32  [ 1, %label44 ], [ %op54, %label51 ]
# %op47 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op48 = icmp sle i32  %op46, %op47
	ld.w $t0, $fp, -184
	ld.w $t1, $fp, -188
	bge  $t1, $t0, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -189
# %op49 = zext i1  %op48 to i32 
	ld.b $t0, $fp, -189
	st.w $t0, $fp, -196
# %op50 = icmp ne i32  %op49, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -197
# br i1  %op50, label %label51, label %label55
	ld.b $t0, $fp, -197
	bnez $t0, .main_label51
	b .main_label55
.main_label51:
# %op52 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op46
	la.local $t0, dis
	ld.w $t1, $fp, -184
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op53 = load i32 , i32 * %op52
	ld.d $t0, $fp, -208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# call void @putint(i32  %op53)
	ld.w $a0, $fp, -212
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op54 = add i32  %op46, 1
	ld.w $t0, $fp, -184
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -216
# br label %label45
	ld.w $t0, $fp, -216
	st.w $t0, $fp, -184
	b .main_label45
.main_label55:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 224
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
