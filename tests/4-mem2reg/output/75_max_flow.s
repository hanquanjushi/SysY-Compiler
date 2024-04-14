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
	addi.d $sp, $sp, -64
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
	st.w $a2, $fp, -32
.my_memset_label_entry:
# br label %label3
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -36
	b .my_memset_label3
.my_memset_label3:
# %op4 = phi i32  [ 0, %label_entry ], [ %op10, %label8 ]
# %op5 = icmp slt i32  %op4, %arg2
	ld.w $t0, $fp, -36
	ld.w $t1, $fp, -32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -37
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -45
# br i1  %op7, label %label8, label %label11
	ld.b $t0, $fp, -45
	bnez $t0, .my_memset_label8
	b .my_memset_label11
.my_memset_label8:
# %op9 = getelementptr i32 , i32 * %arg0, i32  %op4
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -36
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# store i32  %arg1, i32 * %op9
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op10 = add i32  %op4, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# br label %label3
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -36
	b .my_memset_label3
.my_memset_label11:
# ret void
	addi.d $a0, $zero, 0
	b my_memset_ret
my_memset_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl add_node
	.type add_node, @function
add_node:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -304
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.add_node_label_entry:
# %op3 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %arg0
	la.local $t0, to
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -40
# %op4 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg0
	la.local $t0, size
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# %op5 = load i32 , i32 * %op4
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op6 = getelementptr [10 x i32 ], [10 x i32 ]* %op3, i32  0, i32  %op5
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -64
# store i32  %arg1, i32 * %op6
	ld.d $t0, $fp, -64
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op7 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %arg0
	la.local $t0, cap
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -72
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg0
	la.local $t0, size
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -80
# %op9 = load i32 , i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op10 = getelementptr [10 x i32 ], [10 x i32 ]* %op7, i32  0, i32  %op9
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -84
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -96
# store i32  %arg2, i32 * %op10
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op11 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg1
	la.local $t0, size
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -104
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op13 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %arg0
	la.local $t0, rev
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -120
# %op14 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg0
	la.local $t0, size
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -128
# %op15 = load i32 , i32 * %op14
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op16 = getelementptr [10 x i32 ], [10 x i32 ]* %op13, i32  0, i32  %op15
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -132
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -144
# store i32  %op12, i32 * %op16
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -108
	st.w $t1, $t0, 0
# %op17 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %arg1
	la.local $t0, to
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -152
# %op18 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg1
	la.local $t0, size
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -160
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op20 = getelementptr [10 x i32 ], [10 x i32 ]* %op17, i32  0, i32  %op19
	ld.d $t0, $fp, -152
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  %arg0, i32 * %op20
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op21 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %arg1
	la.local $t0, cap
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -184
# %op22 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg1
	la.local $t0, size
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -192
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op24 = getelementptr [10 x i32 ], [10 x i32 ]* %op21, i32  0, i32  %op23
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -196
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg0
	la.local $t0, size
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# %op26 = load i32 , i32 * %op25
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# %op27 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %arg1
	la.local $t0, rev
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -232
# %op28 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg1
	la.local $t0, size
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op30 = getelementptr [10 x i32 ], [10 x i32 ]* %op27, i32  0, i32  %op29
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -244
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -256
# store i32  %op26, i32 * %op30
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -220
	st.w $t1, $t0, 0
# %op31 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg0
	la.local $t0, size
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -264
# %op32 = load i32 , i32 * %op31
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op33 = add i32  %op32, 1
	ld.w $t0, $fp, -268
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -272
# %op34 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg0
	la.local $t0, size
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# store i32  %op33, i32 * %op34
	ld.d $t0, $fp, -280
	ld.w $t1, $fp, -272
	st.w $t1, $t0, 0
# %op35 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg1
	la.local $t0, size
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -288
# %op36 = load i32 , i32 * %op35
	ld.d $t0, $fp, -288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -292
# %op37 = add i32  %op36, 1
	ld.w $t0, $fp, -292
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -296
# %op38 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg1
	la.local $t0, size
	ld.w $t1, $fp, -24
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# store i32  %op37, i32 * %op38
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -296
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b add_node_ret
add_node_ret:
	addi.d $sp, $sp, 304
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl dfs
	.type dfs, @function
dfs:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -448
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.dfs_label_entry:
# %op3 = icmp eq i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -29
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -37
# br i1  %op5, label %label6, label %label7
	ld.b $t0, $fp, -37
	bnez $t0, .dfs_label6
	b .dfs_label7
.dfs_label6:
# ret i32  %arg2
	ld.w $a0, $fp, -28
	b dfs_ret
.dfs_label7:
# %op8 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %arg0
	la.local $t0, used
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -48
# store i32  1, i32 * %op8
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# br label %label9
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -52
	b .dfs_label9
.dfs_label9:
# %op10 = phi i32  [ 0, %label7 ], [ %op25, %label24 ], [ %op34, %label33 ], [ %op82, %label81 ]
# %op11 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  %arg0
	la.local $t0, size
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -64
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op13 = icmp slt i32  %op10, %op12
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -68
	slt $t2, $t0, $t1
	st.b $t2, $fp, -69
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -69
	st.w $t0, $fp, -76
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -77
# br i1  %op15, label %label16, label %label23
	ld.b $t0, $fp, -77
	bnez $t0, .dfs_label16
	b .dfs_label23
.dfs_label16:
# %op17 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %arg0
	la.local $t0, to
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op18 = getelementptr [10 x i32 ], [10 x i32 ]* %op17, i32  0, i32  %op10
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -96
# %op19 = load i32 , i32 * %op18
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op20 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  %op19
	la.local $t0, used
	ld.w $t1, $fp, -100
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# %op21 = load i32 , i32 * %op20
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -117
# br i1  %op22, label %label24, label %label26
	ld.b $t0, $fp, -117
	bnez $t0, .dfs_label24
	b .dfs_label26
.dfs_label23:
# ret i32  0
	addi.w $a0, $zero, 0
	b dfs_ret
.dfs_label24:
# %op25 = add i32  %op10, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# br label %label9
	ld.w $t0, $fp, -124
	st.w $t0, $fp, -52
	b .dfs_label9
.dfs_label26:
# %op27 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %arg0
	la.local $t0, cap
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -136
# %op28 = getelementptr [10 x i32 ], [10 x i32 ]* %op27, i32  0, i32  %op10
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -144
# %op29 = load i32 , i32 * %op28
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op30 = icmp sle i32  %op29, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bge  $t1, $t0, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -149
# %op31 = zext i1  %op30 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -157
# br i1  %op32, label %label33, label %label35
	ld.b $t0, $fp, -157
	bnez $t0, .dfs_label33
	b .dfs_label35
.dfs_label33:
# %op34 = add i32  %op10, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# br label %label9
	ld.w $t0, $fp, -164
	st.w $t0, $fp, -52
	b .dfs_label9
.dfs_label35:
# %op36 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %arg0
	la.local $t0, cap
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# %op37 = getelementptr [10 x i32 ], [10 x i32 ]* %op36, i32  0, i32  %op10
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -184
# %op38 = load i32 , i32 * %op37
	ld.d $t0, $fp, -184
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -188
# %op39 = icmp slt i32  %arg2, %op38
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -188
	slt $t2, $t0, $t1
	st.b $t2, $fp, -189
# %op40 = zext i1  %op39 to i32 
	ld.b $t0, $fp, -189
	st.w $t0, $fp, -196
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -197
# br i1  %op41, label %label42, label %label43
	ld.b $t0, $fp, -197
	bnez $t0, .dfs_label42
	b .dfs_label43
.dfs_label42:
# br label %label47
	ld.w $t0, $fp, -28
	st.w $t0, $fp, -224
	b .dfs_label47
.dfs_label43:
# %op44 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %arg0
	la.local $t0, cap
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -208
# %op45 = getelementptr [10 x i32 ], [10 x i32 ]* %op44, i32  0, i32  %op10
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -216
# %op46 = load i32 , i32 * %op45
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# br label %label47
	ld.w $t0, $fp, -220
	st.w $t0, $fp, -224
	b .dfs_label47
.dfs_label47:
# %op48 = phi i32  [ %arg2, %label42 ], [ %op46, %label43 ]
# %op49 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %arg0
	la.local $t0, to
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -232
# %op50 = getelementptr [10 x i32 ], [10 x i32 ]* %op49, i32  0, i32  %op10
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -240
# %op51 = load i32 , i32 * %op50
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op52 = call i32  @dfs(i32  %op51, i32  %arg1, i32  %op48)
	ld.w $a0, $fp, -244
	ld.w $a1, $fp, -24
	ld.w $a2, $fp, -224
	bl dfs
	st.w $a0, $fp, -248
# %op53 = icmp sgt i32  %op52, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -249
# %op54 = zext i1  %op53 to i32 
	ld.b $t0, $fp, -249
	st.w $t0, $fp, -256
# %op55 = icmp ne i32  %op54, 0
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -257
# br i1  %op55, label %label56, label %label81
	ld.b $t0, $fp, -257
	bnez $t0, .dfs_label56
	b .dfs_label81
.dfs_label56:
# %op57 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %arg0
	la.local $t0, cap
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -272
# %op58 = getelementptr [10 x i32 ], [10 x i32 ]* %op57, i32  0, i32  %op10
	ld.d $t0, $fp, -272
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op59 = load i32 , i32 * %op58
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op60 = sub i32  %op59, %op52
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -248
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -288
# %op61 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %arg0
	la.local $t0, cap
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -296
# %op62 = getelementptr [10 x i32 ], [10 x i32 ]* %op61, i32  0, i32  %op10
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# store i32  %op60, i32 * %op62
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -288
	st.w $t1, $t0, 0
# %op63 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %arg0
	la.local $t0, to
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -312
# %op64 = getelementptr [10 x i32 ], [10 x i32 ]* %op63, i32  0, i32  %op10
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -320
# %op65 = load i32 , i32 * %op64
	ld.d $t0, $fp, -320
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -324
# %op66 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op65
	la.local $t0, cap
	ld.w $t1, $fp, -324
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -336
# %op67 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %arg0
	la.local $t0, rev
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -344
# %op68 = getelementptr [10 x i32 ], [10 x i32 ]* %op67, i32  0, i32  %op10
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# %op69 = load i32 , i32 * %op68
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op70 = getelementptr [10 x i32 ], [10 x i32 ]* %op66, i32  0, i32  %op69
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -356
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -368
# %op71 = load i32 , i32 * %op70
	ld.d $t0, $fp, -368
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -372
# %op72 = add i32  %op71, %op52
	ld.w $t0, $fp, -372
	ld.w $t1, $fp, -248
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -376
# %op73 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @to, i32  0, i32  %arg0
	la.local $t0, to
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -384
# %op74 = getelementptr [10 x i32 ], [10 x i32 ]* %op73, i32  0, i32  %op10
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -392
# %op75 = load i32 , i32 * %op74
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op76 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @cap, i32  0, i32  %op75
	la.local $t0, cap
	ld.w $t1, $fp, -396
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -408
# %op77 = getelementptr [10 x [10 x i32 ]], [10 x [10 x i32 ]]* @rev, i32  0, i32  %arg0
	la.local $t0, rev
	ld.w $t1, $fp, -20
	addi.d $t3, $zero, 10
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# %op78 = getelementptr [10 x i32 ], [10 x i32 ]* %op77, i32  0, i32  %op10
	ld.d $t0, $fp, -416
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -424
# %op79 = load i32 , i32 * %op78
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op80 = getelementptr [10 x i32 ], [10 x i32 ]* %op76, i32  0, i32  %op79
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -428
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -440
# store i32  %op72, i32 * %op80
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -376
	st.w $t1, $t0, 0
# ret i32  %op52
	ld.w $a0, $fp, -248
	b dfs_ret
.dfs_label81:
# %op82 = add i32  %op10, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -444
# br label %label9
	ld.w $t0, $fp, -444
	st.w $t0, $fp, -52
	b .dfs_label9
dfs_ret:
	addi.d $sp, $sp, 448
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl max_flow
	.type max_flow, @function
max_flow:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.max_flow_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -28
	b .max_flow_label2
.max_flow_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op15, %label14 ]
# %op4 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -29
# br i1  %op4, label %label5, label %label12
	ld.b $t0, $fp, -29
	bnez $t0, .max_flow_label5
	b .max_flow_label12
.max_flow_label5:
# %op6 = getelementptr [10 x i32 ], [10 x i32 ]* @used, i32  0, i32  0
	la.local $t0, used
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -40
# call void @my_memset(i32 * %op6, i32  0, i32  10)
	ld.d $a0, $fp, -40
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
# %op7 = load i32 , i32 * @INF
	la.local $t0, INF
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op8 = call i32  @dfs(i32  %arg0, i32  %arg1, i32  %op7)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -24
	ld.w $a2, $fp, -44
	bl dfs
	st.w $a0, $fp, -48
# %op9 = icmp eq i32  %op8, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -49
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -57
# br i1  %op11, label %label13, label %label14
	ld.b $t0, $fp, -57
	bnez $t0, .max_flow_label13
	b .max_flow_label14
.max_flow_label12:
# ret i32  0
	addi.w $a0, $zero, 0
	b max_flow_ret
.max_flow_label13:
# ret i32  %op3
	ld.w $a0, $fp, -28
	b max_flow_ret
.max_flow_label14:
# %op15 = add i32  %op3, %op8
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -48
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label2
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -28
	b .max_flow_label2
max_flow_ret:
	addi.d $sp, $sp, 64
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
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -24
# %op2 = getelementptr [10 x i32 ], [10 x i32 ]* @size, i32  0, i32  0
	la.local $t0, size
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -32
# call void @my_memset(i32 * %op2, i32  0, i32  10)
	ld.d $a0, $fp, -32
	addi.w $a1, $zero, 0
	addi.w $a2, $zero, 10
	bl my_memset
# br label %label3
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -36
	b .main_label3
.main_label3:
# %op4 = phi i32  [ %op1, %label_entry ], [ %op12, %label8 ]
# %op5 = icmp sgt i32  %op4, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -37
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -45
# br i1  %op7, label %label8, label %label13
	ld.b $t0, $fp, -45
	bnez $t0, .main_label8
	b .main_label13
.main_label8:
# %op9 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -52
# %op10 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -56
# %op11 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -60
# call void @add_node(i32  %op9, i32  %op10, i32  %op11)
	ld.w $a0, $fp, -52
	ld.w $a1, $fp, -56
	ld.w $a2, $fp, -60
	bl add_node
# %op12 = sub i32  %op4, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label3
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -36
	b .main_label3
.main_label13:
# %op14 = call i32  @max_flow(i32  1, i32  %op0)
	addi.w $a0, $zero, 1
	ld.w $a1, $fp, -20
	bl max_flow
	st.w $a0, $fp, -68
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -68
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
