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
	addi.d $sp, $sp, -576
.Dijkstra_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label2
	b .Dijkstra_label2
.Dijkstra_label2:
# %op3 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op4 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op5 = icmp sle i32  %op3, %op4
	ld.w $t0, $fp, -48
	ld.w $t1, $fp, -52
	bge  $t1, $t0, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -53
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -61
# br i1  %op7, label %label8, label %label19
	ld.b $t0, $fp, -61
	bnez $t0, .Dijkstra_label8
	b .Dijkstra_label19
.Dijkstra_label8:
# %op9 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  1
	la.local $t0, e
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -72
# %op10 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op11 = getelementptr [16 x i32 ], [16 x i32 ]* %op9, i32  0, i32  %op10
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -76
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op13 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op14 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op13
	la.local $t0, dis
	ld.w $t1, $fp, -96
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -104
# store i32  %op12, i32 * %op14
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -92
	st.w $t1, $t0, 0
# %op15 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op16 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op15
	la.local $t0, book
	ld.w $t1, $fp, -108
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -120
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op18 = add i32  %op17, 1
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# store i32  %op18, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# br label %label2
	b .Dijkstra_label2
.Dijkstra_label19:
# %op20 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  1
	la.local $t0, book
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -136
# store i32  1, i32 * %op20
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  1, i32 * %op1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label21
	b .Dijkstra_label21
.Dijkstra_label21:
# %op22 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op23 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# %op24 = sub i32  %op23, 1
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -148
# %op25 = icmp sle i32  %op22, %op24
	ld.w $t0, $fp, -140
	ld.w $t1, $fp, -148
	bge  $t1, $t0, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -149
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -157
# br i1  %op27, label %label28, label %label33
	ld.b $t0, $fp, -157
	bnez $t0, .Dijkstra_label28
	b .Dijkstra_label33
.Dijkstra_label28:
# %op29 = alloca i32 
	addi.d $t1, $fp, -172
	st.d $t1, $fp, -168
# %op30 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# store i32  %op30, i32 * %op29
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -176
	st.w $t1, $t0, 0
# %op31 = alloca i32 
	addi.d $t1, $fp, -188
	st.d $t1, $fp, -184
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = alloca i32 
	addi.d $t1, $fp, -204
	st.d $t1, $fp, -200
# store i32  1, i32 * %op32
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label34
	b .Dijkstra_label34
.Dijkstra_label33:
# ret void
	addi.d $a0, $zero, 0
	b Dijkstra_ret
.Dijkstra_label34:
# %op35 = load i32 , i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -208
# %op36 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -212
# %op37 = icmp sle i32  %op35, %op36
	ld.w $t0, $fp, -208
	ld.w $t1, $fp, -212
	bge  $t1, $t0, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -213
# %op38 = zext i1  %op37 to i32 
	ld.b $t0, $fp, -213
	st.w $t0, $fp, -220
# %op39 = icmp ne i32  %op38, 0
	ld.w $t0, $fp, -220
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -221
# br i1  %op39, label %label40, label %label48
	ld.b $t0, $fp, -221
	bnez $t0, .Dijkstra_label40
	b .Dijkstra_label48
.Dijkstra_label40:
# %op41 = load i32 , i32 * %op29
	ld.d $t0, $fp, -168
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -228
# %op42 = load i32 , i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -232
# %op43 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op42
	la.local $t0, dis
	ld.w $t1, $fp, -232
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op45 = icmp sgt i32  %op41, %op44
	ld.w $t0, $fp, -228
	ld.w $t1, $fp, -244
	slt $t2, $t1, $t0
	st.b $t2, $fp, -245
# %op46 = zext i1  %op45 to i32 
	ld.b $t0, $fp, -245
	st.w $t0, $fp, -252
# %op47 = icmp ne i32  %op46, 0
	ld.w $t0, $fp, -252
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -253
# br i1  %op47, label %label60, label %label57
	ld.b $t0, $fp, -253
	bnez $t0, .Dijkstra_label60
	b .Dijkstra_label57
.Dijkstra_label48:
# %op49 = load i32 , i32 * %op31
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op50 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op49
	la.local $t0, book
	ld.w $t1, $fp, -260
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -272
# store i32  1, i32 * %op50
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op51 = alloca i32 
	addi.d $t1, $fp, -284
	st.d $t1, $fp, -280
# store i32  1, i32 * %op51
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label67
	b .Dijkstra_label67
.Dijkstra_label52:
# %op53 = load i32 , i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op54 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op53
	la.local $t0, dis
	ld.w $t1, $fp, -288
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -296
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# store i32  %op55, i32 * %op29
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -300
	st.w $t1, $t0, 0
# %op56 = load i32 , i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# store i32  %op56, i32 * %op31
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -304
	st.w $t1, $t0, 0
# br label %label57
	b .Dijkstra_label57
.Dijkstra_label57:
# %op58 = load i32 , i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -308
# %op59 = add i32  %op58, 1
	ld.w $t0, $fp, -308
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# store i32  %op59, i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $fp, -312
	st.w $t1, $t0, 0
# br label %label34
	b .Dijkstra_label34
.Dijkstra_label60:
# %op61 = load i32 , i32 * %op32
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op62 = getelementptr [16 x i32 ], [16 x i32 ]* @book, i32  0, i32  %op61
	la.local $t0, book
	ld.w $t1, $fp, -316
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -328
# %op63 = load i32 , i32 * %op62
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op64 = icmp eq i32  %op63, 0
	ld.w $t0, $fp, -332
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -333
# %op65 = zext i1  %op64 to i32 
	ld.b $t0, $fp, -333
	st.w $t0, $fp, -340
# %op66 = icmp ne i32  %op65, 0
	ld.w $t0, $fp, -340
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -341
# br i1  %op66, label %label52, label %label57
	ld.b $t0, $fp, -341
	bnez $t0, .Dijkstra_label52
	b .Dijkstra_label57
.Dijkstra_label67:
# %op68 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op69 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -352
# %op70 = icmp sle i32  %op68, %op69
	ld.w $t0, $fp, -348
	ld.w $t1, $fp, -352
	bge  $t1, $t0, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -353
# %op71 = zext i1  %op70 to i32 
	ld.b $t0, $fp, -353
	st.w $t0, $fp, -360
# %op72 = icmp ne i32  %op71, 0
	ld.w $t0, $fp, -360
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -361
# br i1  %op72, label %label73, label %label83
	ld.b $t0, $fp, -361
	bnez $t0, .Dijkstra_label73
	b .Dijkstra_label83
.Dijkstra_label73:
# %op74 = load i32 , i32 * %op31
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -368
# %op75 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op74
	la.local $t0, e
	ld.w $t1, $fp, -368
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# %op76 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op77 = getelementptr [16 x i32 ], [16 x i32 ]* %op75, i32  0, i32  %op76
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -380
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -392
# %op78 = load i32 , i32 * %op77
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op79 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -400
# %op80 = icmp slt i32  %op78, %op79
	ld.w $t0, $fp, -396
	ld.w $t1, $fp, -400
	slt $t2, $t0, $t1
	st.b $t2, $fp, -401
# %op81 = zext i1  %op80 to i32 
	ld.b $t0, $fp, -401
	st.w $t0, $fp, -408
# %op82 = icmp ne i32  %op81, 0
	ld.w $t0, $fp, -408
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -409
# br i1  %op82, label %label86, label %label102
	ld.b $t0, $fp, -409
	bnez $t0, .Dijkstra_label86
	b .Dijkstra_label102
.Dijkstra_label83:
# %op84 = load i32 , i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -416
# %op85 = add i32  %op84, 1
	ld.w $t0, $fp, -416
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -420
# store i32  %op85, i32 * %op1
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -420
	st.w $t1, $t0, 0
# br label %label21
	b .Dijkstra_label21
.Dijkstra_label86:
# %op87 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op88 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op87
	la.local $t0, dis
	ld.w $t1, $fp, -424
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -432
# %op89 = load i32 , i32 * %op88
	ld.d $t0, $fp, -432
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -436
# %op90 = load i32 , i32 * %op31
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -440
# %op91 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op90
	la.local $t0, dis
	ld.w $t1, $fp, -440
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -448
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -448
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -452
# %op93 = load i32 , i32 * %op31
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -456
# %op94 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op93
	la.local $t0, e
	ld.w $t1, $fp, -456
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -464
# %op95 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -468
# %op96 = getelementptr [16 x i32 ], [16 x i32 ]* %op94, i32  0, i32  %op95
	ld.d $t0, $fp, -464
	ld.w $t1, $fp, -468
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -480
# %op97 = load i32 , i32 * %op96
	ld.d $t0, $fp, -480
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -484
# %op98 = add i32  %op92, %op97
	ld.w $t0, $fp, -452
	ld.w $t1, $fp, -484
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -488
# %op99 = icmp sgt i32  %op89, %op98
	ld.w $t0, $fp, -436
	ld.w $t1, $fp, -488
	slt $t2, $t1, $t0
	st.b $t2, $fp, -489
# %op100 = zext i1  %op99 to i32 
	ld.b $t0, $fp, -489
	st.w $t0, $fp, -496
# %op101 = icmp ne i32  %op100, 0
	ld.w $t0, $fp, -496
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -497
# br i1  %op101, label %label105, label %label117
	ld.b $t0, $fp, -497
	bnez $t0, .Dijkstra_label105
	b .Dijkstra_label117
.Dijkstra_label102:
# %op103 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -504
# %op104 = add i32  %op103, 1
	ld.w $t0, $fp, -504
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -508
# store i32  %op104, i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -508
	st.w $t1, $t0, 0
# br label %label67
	b .Dijkstra_label67
.Dijkstra_label105:
# %op106 = load i32 , i32 * %op31
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op107 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op106
	la.local $t0, dis
	ld.w $t1, $fp, -512
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -520
# %op108 = load i32 , i32 * %op107
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op109 = load i32 , i32 * %op31
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -528
# %op110 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op109
	la.local $t0, e
	ld.w $t1, $fp, -528
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -536
# %op111 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op112 = getelementptr [16 x i32 ], [16 x i32 ]* %op110, i32  0, i32  %op111
	ld.d $t0, $fp, -536
	ld.w $t1, $fp, -540
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -552
# %op113 = load i32 , i32 * %op112
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op114 = add i32  %op108, %op113
	ld.w $t0, $fp, -524
	ld.w $t1, $fp, -556
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -560
# %op115 = load i32 , i32 * %op51
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -564
# %op116 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op115
	la.local $t0, dis
	ld.w $t1, $fp, -564
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -576
# store i32  %op114, i32 * %op116
	ld.d $t0, $fp, -576
	ld.w $t1, $fp, -560
	st.w $t1, $t0, 0
# br label %label117
	b .Dijkstra_label117
.Dijkstra_label117:
# br label %label102
	b .Dijkstra_label102
Dijkstra_ret:
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
	addi.d $sp, $sp, -336
.main_label_entry:
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op1, i32 * @n
	la.local $t0, n
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# store i32  %op2, i32 * @m
	la.local $t0, m
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# %op5 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op6 = icmp sle i32  %op4, %op5
	ld.w $t0, $fp, -40
	ld.w $t1, $fp, -44
	bge  $t1, $t0, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -45
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -53
# br i1  %op8, label %label9, label %label11
	ld.b $t0, $fp, -53
	bnez $t0, .main_label9
	b .main_label11
.main_label9:
# %op10 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  1, i32 * %op10
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label12
	b .main_label12
.main_label11:
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label12:
# %op13 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op14 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -76
# %op15 = icmp sle i32  %op13, %op14
	ld.w $t0, $fp, -72
	ld.w $t1, $fp, -76
	bge  $t1, $t0, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -77
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -85
# br i1  %op17, label %label18, label %label24
	ld.b $t0, $fp, -85
	bnez $t0, .main_label18
	b .main_label24
.main_label18:
# %op19 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op20 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op21 = icmp eq i32  %op19, %op20
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -96
	beq  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -97
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -105
# br i1  %op23, label %label27, label %label32
	ld.b $t0, $fp, -105
	bnez $t0, .main_label27
	b .main_label32
.main_label24:
# %op25 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op26 = add i32  %op25, 1
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# store i32  %op26, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -116
	st.w $t1, $t0, 0
# br label %label3
	b .main_label3
.main_label27:
# %op28 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op29 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op28
	la.local $t0, e
	ld.w $t1, $fp, -120
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# %op30 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op31 = getelementptr [16 x i32 ], [16 x i32 ]* %op29, i32  0, i32  %op30
	ld.d $t0, $fp, -128
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -144
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label38
	b .main_label38
.main_label32:
# %op33 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op34 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op35 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op34
	la.local $t0, e
	ld.w $t1, $fp, -152
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# %op36 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op37 = getelementptr [16 x i32 ], [16 x i32 ]* %op35, i32  0, i32  %op36
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  %op33, i32 * %op37
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# br label %label38
	b .main_label38
.main_label38:
# %op39 = load i32 , i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# %op40 = add i32  %op39, 1
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -184
# store i32  %op40, i32 * %op10
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -184
	st.w $t1, $t0, 0
# br label %label12
	b .main_label12
.main_label41:
# %op42 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op43 = load i32 , i32 * @m
	la.local $t0, m
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -192
# %op44 = icmp sle i32  %op42, %op43
	ld.w $t0, $fp, -188
	ld.w $t1, $fp, -192
	bge  $t1, $t0, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -193
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -193
	st.w $t0, $fp, -200
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -200
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -201
# br i1  %op46, label %label47, label %label59
	ld.b $t0, $fp, -201
	bnez $t0, .main_label47
	b .main_label59
.main_label47:
# %op48 = alloca i32 
	addi.d $t1, $fp, -220
	st.d $t1, $fp, -216
# %op49 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -224
# store i32  %op49, i32 * %op48
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -224
	st.w $t1, $t0, 0
# %op50 = alloca i32 
	addi.d $t1, $fp, -236
	st.d $t1, $fp, -232
# %op51 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -240
# store i32  %op51, i32 * %op50
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -240
	st.w $t1, $t0, 0
# %op52 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -244
# %op53 = load i32 , i32 * %op50
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op54 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* @e, i32  0, i32  %op53
	la.local $t0, e
	ld.w $t1, $fp, -248
	addi.d $t3, $zero, 16
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# %op55 = load i32 , i32 * %op48
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -260
# %op56 = getelementptr [16 x i32 ], [16 x i32 ]* %op54, i32  0, i32  %op55
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -260
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -272
# store i32  %op52, i32 * %op56
	ld.d $t0, $fp, -272
	ld.w $t1, $fp, -244
	st.w $t1, $t0, 0
# %op57 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -276
# %op58 = add i32  %op57, 1
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -280
# store i32  %op58, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -280
	st.w $t1, $t0, 0
# br label %label41
	b .main_label41
.main_label59:
# call void @Dijkstra()
	bl Dijkstra
# store i32  1, i32 * %op0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label60
	b .main_label60
.main_label60:
# %op61 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op62 = load i32 , i32 * @n
	la.local $t0, n
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -288
# %op63 = icmp sle i32  %op61, %op62
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -288
	bge  $t1, $t0, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -289
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -289
	st.w $t0, $fp, -296
# %op65 = icmp ne i32  %op64, 0
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -297
# br i1  %op65, label %label66, label %label72
	ld.b $t0, $fp, -297
	bnez $t0, .main_label66
	b .main_label72
.main_label66:
# %op67 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op68 = getelementptr [16 x i32 ], [16 x i32 ]* @dis, i32  0, i32  %op67
	la.local $t0, dis
	ld.w $t1, $fp, -304
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op69 = load i32 , i32 * %op68
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# call void @putint(i32  %op69)
	ld.w $a0, $fp, -316
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op70 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op71 = add i32  %op70, 1
	ld.w $t0, $fp, -320
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -324
# store i32  %op71, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -324
	st.w $t1, $t0, 0
# br label %label60
	b .main_label60
.main_label72:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 336
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
