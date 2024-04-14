# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl buf
	.type buf, @object
	.size buf, 800
buf:
	.space 800
	.text
	.globl merge_sort
	.type merge_sort, @function
merge_sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -448
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.merge_sort_label_entry:
# %op2 = add i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -28
# %op3 = icmp sge i32  %op2, %arg1
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -24
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -29
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -37
# br i1  %op5, label %label6, label %label7
	ld.b $t0, $fp, -37
	bnez $t0, .merge_sort_label6
	b .merge_sort_label7
.merge_sort_label6:
# ret void
	addi.d $a0, $zero, 0
	b merge_sort_ret
.merge_sort_label7:
# %op8 = add i32  %arg0, %arg1
	ld.w $t0, $fp, -20
	ld.w $t1, $fp, -24
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# %op9 = sdiv i32  %op8, 2
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# call void @merge_sort(i32  %arg0, i32  %op9)
	ld.w $a0, $fp, -20
	ld.w $a1, $fp, -48
	bl merge_sort
# call void @merge_sort(i32  %op9, i32  %arg1)
	ld.w $a0, $fp, -48
	ld.w $a1, $fp, -24
	bl merge_sort
# br label %label10
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -52
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -56
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -60
	b .merge_sort_label10
.merge_sort_label10:
# %op11 = phi i32  [ %arg0, %label7 ], [ %op47, %label46 ]
# %op12 = phi i32  [ %op9, %label7 ], [ %op48, %label46 ]
# %op13 = phi i32  [ %arg0, %label7 ], [ %op49, %label46 ]
# %op14 = icmp slt i32  %op11, %op9
	ld.w $t0, $fp, -52
	ld.w $t1, $fp, -48
	slt $t2, $t0, $t1
	st.b $t2, $fp, -61
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -69
# br i1  %op16, label %label28, label %label27
	ld.b $t0, $fp, -69
	bnez $t0, .merge_sort_label28
	b .merge_sort_label27
.merge_sort_label17:
# %op18 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -80
# %op19 = getelementptr [100 x i32 ], [100 x i32 ]* %op18, i32  0, i32  %op11
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -88
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op21 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -104
# %op22 = getelementptr [100 x i32 ], [100 x i32 ]* %op21, i32  0, i32  %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -56
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -112
# %op23 = load i32 , i32 * %op22
	ld.d $t0, $fp, -112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# %op24 = icmp slt i32  %op20, %op23
	ld.w $t0, $fp, -92
	ld.w $t1, $fp, -116
	slt $t2, $t0, $t1
	st.b $t2, $fp, -117
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -117
	st.w $t0, $fp, -124
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -124
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -125
# br i1  %op26, label %label32, label %label39
	ld.b $t0, $fp, -125
	bnez $t0, .merge_sort_label32
	b .merge_sort_label39
.merge_sort_label27:
# br label %label50
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -244
	ld.w $t0, $fp, -60
	st.w $t0, $fp, -248
	b .merge_sort_label50
.merge_sort_label28:
# %op29 = icmp slt i32  %op12, %arg1
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -24
	slt $t2, $t0, $t1
	st.b $t2, $fp, -126
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -126
	st.w $t0, $fp, -132
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -133
# br i1  %op31, label %label17, label %label27
	ld.b $t0, $fp, -133
	bnez $t0, .merge_sort_label17
	b .merge_sort_label27
.merge_sort_label32:
# %op33 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -144
# %op34 = getelementptr [100 x i32 ], [100 x i32 ]* %op33, i32  0, i32  %op11
	ld.d $t0, $fp, -144
	ld.w $t1, $fp, -52
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -152
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -152
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op36 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -168
# %op37 = getelementptr [100 x i32 ], [100 x i32 ]* %op36, i32  0, i32  %op13
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -60
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# store i32  %op35, i32 * %op37
	ld.d $t0, $fp, -176
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# %op38 = add i32  %op11, 1
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -180
# br label %label46
	ld.w $t0, $fp, -180
	st.w $t0, $fp, -232
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -236
	b .merge_sort_label46
.merge_sort_label39:
# %op40 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -192
# %op41 = getelementptr [100 x i32 ], [100 x i32 ]* %op40, i32  0, i32  %op12
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -56
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -200
# %op42 = load i32 , i32 * %op41
	ld.d $t0, $fp, -200
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -204
# %op43 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -216
# %op44 = getelementptr [100 x i32 ], [100 x i32 ]* %op43, i32  0, i32  %op13
	ld.d $t0, $fp, -216
	ld.w $t1, $fp, -60
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -224
# store i32  %op42, i32 * %op44
	ld.d $t0, $fp, -224
	ld.w $t1, $fp, -204
	st.w $t1, $t0, 0
# %op45 = add i32  %op12, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -228
# br label %label46
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -232
	ld.w $t0, $fp, -228
	st.w $t0, $fp, -236
	b .merge_sort_label46
.merge_sort_label46:
# %op47 = phi i32  [ %op38, %label32 ], [ %op11, %label39 ]
# %op48 = phi i32  [ %op12, %label32 ], [ %op45, %label39 ]
# %op49 = add i32  %op13, 1
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -240
# br label %label10
	ld.w $t0, $fp, -232
	st.w $t0, $fp, -52
	ld.w $t0, $fp, -236
	st.w $t0, $fp, -56
	ld.w $t0, $fp, -240
	st.w $t0, $fp, -60
	b .merge_sort_label10
.merge_sort_label50:
# %op51 = phi i32  [ %op11, %label27 ], [ %op62, %label56 ]
# %op52 = phi i32  [ %op13, %label27 ], [ %op63, %label56 ]
# %op53 = icmp slt i32  %op51, %op9
	ld.w $t0, $fp, -244
	ld.w $t1, $fp, -48
	slt $t2, $t0, $t1
	st.b $t2, $fp, -249
# %op54 = zext i1  %op53 to i32 
	ld.b $t0, $fp, -249
	st.w $t0, $fp, -256
# %op55 = icmp ne i32  %op54, 0
	ld.w $t0, $fp, -256
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -257
# br i1  %op55, label %label56, label %label64
	ld.b $t0, $fp, -257
	bnez $t0, .merge_sort_label56
	b .merge_sort_label64
.merge_sort_label56:
# %op57 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -272
# %op58 = getelementptr [100 x i32 ], [100 x i32 ]* %op57, i32  0, i32  %op51
	ld.d $t0, $fp, -272
	ld.w $t1, $fp, -244
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -280
# %op59 = load i32 , i32 * %op58
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op60 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -296
# %op61 = getelementptr [100 x i32 ], [100 x i32 ]* %op60, i32  0, i32  %op52
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -248
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -304
# store i32  %op59, i32 * %op61
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -284
	st.w $t1, $t0, 0
# %op62 = add i32  %op51, 1
	ld.w $t0, $fp, -244
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -308
# %op63 = add i32  %op52, 1
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -312
# br label %label50
	ld.w $t0, $fp, -308
	st.w $t0, $fp, -244
	ld.w $t0, $fp, -312
	st.w $t0, $fp, -248
	b .merge_sort_label50
.merge_sort_label64:
# br label %label65
	ld.w $t0, $fp, -56
	st.w $t0, $fp, -316
	ld.w $t0, $fp, -248
	st.w $t0, $fp, -320
	b .merge_sort_label65
.merge_sort_label65:
# %op66 = phi i32  [ %op12, %label64 ], [ %op77, %label71 ]
# %op67 = phi i32  [ %op52, %label64 ], [ %op78, %label71 ]
# %op68 = icmp slt i32  %op66, %arg1
	ld.w $t0, $fp, -316
	ld.w $t1, $fp, -24
	slt $t2, $t0, $t1
	st.b $t2, $fp, -321
# %op69 = zext i1  %op68 to i32 
	ld.b $t0, $fp, -321
	st.w $t0, $fp, -328
# %op70 = icmp ne i32  %op69, 0
	ld.w $t0, $fp, -328
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -329
# br i1  %op70, label %label71, label %label79
	ld.b $t0, $fp, -329
	bnez $t0, .merge_sort_label71
	b .merge_sort_label79
.merge_sort_label71:
# %op72 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -344
# %op73 = getelementptr [100 x i32 ], [100 x i32 ]* %op72, i32  0, i32  %op66
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -316
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -352
# %op74 = load i32 , i32 * %op73
	ld.d $t0, $fp, -352
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op75 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -368
# %op76 = getelementptr [100 x i32 ], [100 x i32 ]* %op75, i32  0, i32  %op67
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -320
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -376
# store i32  %op74, i32 * %op76
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -356
	st.w $t1, $t0, 0
# %op77 = add i32  %op66, 1
	ld.w $t0, $fp, -316
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -380
# %op78 = add i32  %op67, 1
	ld.w $t0, $fp, -320
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# br label %label65
	ld.w $t0, $fp, -380
	st.w $t0, $fp, -316
	ld.w $t0, $fp, -384
	st.w $t0, $fp, -320
	b .merge_sort_label65
.merge_sort_label79:
# br label %label80
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -388
	b .merge_sort_label80
.merge_sort_label80:
# %op81 = phi i32  [ %arg0, %label79 ], [ %op91, %label85 ]
# %op82 = icmp slt i32  %op81, %arg1
	ld.w $t0, $fp, -388
	ld.w $t1, $fp, -24
	slt $t2, $t0, $t1
	st.b $t2, $fp, -389
# %op83 = zext i1  %op82 to i32 
	ld.b $t0, $fp, -389
	st.w $t0, $fp, -396
# %op84 = icmp ne i32  %op83, 0
	ld.w $t0, $fp, -396
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -397
# br i1  %op84, label %label85, label %label92
	ld.b $t0, $fp, -397
	bnez $t0, .merge_sort_label85
	b .merge_sort_label92
.merge_sort_label85:
# %op86 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
	la.local $t0, buf
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -408
# %op87 = getelementptr [100 x i32 ], [100 x i32 ]* %op86, i32  0, i32  %op81
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -388
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -416
# %op88 = load i32 , i32 * %op87
	ld.d $t0, $fp, -416
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -420
# %op89 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -432
# %op90 = getelementptr [100 x i32 ], [100 x i32 ]* %op89, i32  0, i32  %op81
	ld.d $t0, $fp, -432
	ld.w $t1, $fp, -388
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -440
# store i32  %op88, i32 * %op90
	ld.d $t0, $fp, -440
	ld.w $t1, $fp, -420
	st.w $t1, $t0, 0
# %op91 = add i32  %op81, 1
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -444
# br label %label80
	ld.w $t0, $fp, -444
	st.w $t0, $fp, -388
	b .merge_sort_label80
.merge_sort_label92:
# ret void
	addi.d $a0, $zero, 0
	b merge_sort_ret
merge_sort_ret:
	addi.d $sp, $sp, 448
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
.main_label_entry:
# %op0 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -24
# %op1 = getelementptr [100 x i32 ], [100 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -32
# %op2 = call i32  @getarray(i32 * %op1)
	ld.d $a0, $fp, -32
	bl getarray
	st.w $a0, $fp, -36
# call void @merge_sort(i32  0, i32  %op2)
	addi.w $a0, $zero, 0
	ld.w $a1, $fp, -36
	bl merge_sort
# %op3 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
	la.local $t0, buf
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -48
# %op4 = getelementptr [100 x i32 ], [100 x i32 ]* %op3, i32  0, i32  0
	ld.d $t0, $fp, -48
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -56
# call void @putarray(i32  %op2, i32 * %op4)
	ld.w $a0, $fp, -36
	ld.d $a1, $fp, -56
	bl putarray
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
