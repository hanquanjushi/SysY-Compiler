	.text
	.globl sort
	.type sort, @function
sort:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.sort_label_entry:
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -32
	b .sort_label2
.sort_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op25, %label24 ]
# %op4 = sub i32  %arg1, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op5 = icmp slt i32  %op3, %op4
	ld.w $t0, $fp, -32
	ld.w $t1, $fp, -36
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
# br i1  %op7, label %label8, label %label10
	ld.b $t0, $fp, -45
	bnez $t0, .sort_label8
	b .sort_label10
.sort_label8:
# %op9 = add i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# br label %label11
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -56
	b .sort_label11
.sort_label10:
# ret void
	addi.d $a0, $zero, 0
	b sort_ret
.sort_label11:
# %op12 = phi i32  [ %op9, %label8 ], [ %op34, %label33 ]
# %op13 = icmp slt i32  %op12, %arg1
	ld.w $t0, $fp, -56
	ld.w $t1, $fp, -28
	slt $t2, $t0, $t1
	st.b $t2, $fp, -57
# %op14 = zext i1  %op13 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op15 = icmp ne i32  %op14, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -65
# br i1  %op15, label %label16, label %label24
	ld.b $t0, $fp, -65
	bnez $t0, .sort_label16
	b .sort_label24
.sort_label16:
# %op17 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# %op18 = load i32 , i32 * %op17
	ld.d $t0, $fp, -80
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op19 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -56
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op21 = icmp slt i32  %op18, %op20
	ld.w $t0, $fp, -84
	ld.w $t1, $fp, -100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -101
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -109
# br i1  %op23, label %label26, label %label33
	ld.b $t0, $fp, -109
	bnez $t0, .sort_label26
	b .sort_label33
.sort_label24:
# %op25 = add i32  %op3, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -116
# br label %label2
	ld.w $t0, $fp, -116
	st.w $t0, $fp, -32
	b .sort_label2
.sort_label26:
# %op27 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op28 = load i32 , i32 * %op27
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op29 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -56
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# %op30 = load i32 , i32 * %op29
	ld.d $t0, $fp, -144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op31 = getelementptr i32 , i32 * %arg0, i32  %op3
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -160
# store i32  %op30, i32 * %op31
	ld.d $t0, $fp, -160
	ld.w $t1, $fp, -148
	st.w $t1, $t0, 0
# %op32 = getelementptr i32 , i32 * %arg0, i32  %op12
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -56
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -168
# store i32  %op28, i32 * %op32
	ld.d $t0, $fp, -168
	ld.w $t1, $fp, -132
	st.w $t1, $t0, 0
# br label %label33
	b .sort_label33
.sort_label33:
# %op34 = add i32  %op12, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -172
# br label %label11
	ld.w $t0, $fp, -172
	st.w $t0, $fp, -56
	b .sort_label11
sort_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl param32_rec
	.type param32_rec, @function
param32_rec:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
.param32_rec_label_entry:
# %op32 = icmp eq i32  %arg0, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -145
# %op33 = zext i1  %op32 to i32 
	ld.b $t0, $fp, -145
	st.w $t0, $fp, -152
# %op34 = icmp ne i32  %op33, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -153
# br i1  %op34, label %label35, label %label36
	ld.b $t0, $fp, -153
	bnez $t0, .param32_rec_label35
	b .param32_rec_label36
.param32_rec_label35:
# ret i32  %arg1
	ld.w $a0, $fp, -24
	b param32_rec_ret
.param32_rec_label36:
# %op37 = sub i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# %op38 = add i32  %arg1, %arg2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op39 = srem i32  %op38, 998244353
	ld.w $t0, $fp, -164
	lu12i.w $t1, 243712
	ori $t1, $t1, 1
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# %op40 = call i32  @param32_rec(i32  %op37, i32  %op39, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6, i32  %arg7, i32  %arg8, i32  %arg9, i32  %arg10, i32  %arg11, i32  %arg12, i32  %arg13, i32  %arg14, i32  %arg15, i32  %arg16, i32  %arg17, i32  %arg18, i32  %arg19, i32  %arg20, i32  %arg21, i32  %arg22, i32  %arg23, i32  %arg24, i32  %arg25, i32  %arg26, i32  %arg27, i32  %arg28, i32  %arg29, i32  %arg30, i32  %arg31, i32  0)
# ret i32  %op40
	ld.w $a0, $fp, -172
	b param32_rec_ret
param32_rec_ret:
	addi.d $sp, $sp, 176
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl param32_arr
	.type param32_arr, @function
param32_arr:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1296
.param32_arr_label_entry:
# %op32 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -280
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -284
# %op34 = getelementptr i32 , i32 * %arg0, i32  1
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -296
# %op35 = load i32 , i32 * %op34
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -300
# %op36 = add i32  %op33, %op35
	ld.w $t0, $fp, -284
	ld.w $t1, $fp, -300
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -304
# %op37 = getelementptr i32 , i32 * %arg1, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -312
# %op38 = load i32 , i32 * %op37
	ld.d $t0, $fp, -312
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -316
# %op39 = add i32  %op36, %op38
	ld.w $t0, $fp, -304
	ld.w $t1, $fp, -316
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -320
# %op40 = getelementptr i32 , i32 * %arg1, i32  1
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -328
# %op41 = load i32 , i32 * %op40
	ld.d $t0, $fp, -328
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op42 = add i32  %op39, %op41
	ld.w $t0, $fp, -320
	ld.w $t1, $fp, -332
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -336
# %op43 = getelementptr i32 , i32 * %arg2, i32  0
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -344
# %op44 = load i32 , i32 * %op43
	ld.d $t0, $fp, -344
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op45 = add i32  %op42, %op44
	ld.w $t0, $fp, -336
	ld.w $t1, $fp, -348
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -352
# %op46 = getelementptr i32 , i32 * %arg2, i32  1
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -360
# %op47 = load i32 , i32 * %op46
	ld.d $t0, $fp, -360
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -364
# %op48 = add i32  %op45, %op47
	ld.w $t0, $fp, -352
	ld.w $t1, $fp, -364
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -368
# %op49 = getelementptr i32 , i32 * %arg3, i32  0
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -376
# %op50 = load i32 , i32 * %op49
	ld.d $t0, $fp, -376
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op51 = add i32  %op48, %op50
	ld.w $t0, $fp, -368
	ld.w $t1, $fp, -380
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -384
# %op52 = getelementptr i32 , i32 * %arg3, i32  1
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -392
# %op53 = load i32 , i32 * %op52
	ld.d $t0, $fp, -392
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op54 = add i32  %op51, %op53
	ld.w $t0, $fp, -384
	ld.w $t1, $fp, -396
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -400
# %op55 = getelementptr i32 , i32 * %arg4, i32  0
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -408
# %op56 = load i32 , i32 * %op55
	ld.d $t0, $fp, -408
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -412
# %op57 = add i32  %op54, %op56
	ld.w $t0, $fp, -400
	ld.w $t1, $fp, -412
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -416
# %op58 = getelementptr i32 , i32 * %arg4, i32  1
	ld.d $t0, $fp, -56
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -424
# %op59 = load i32 , i32 * %op58
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op60 = add i32  %op57, %op59
	ld.w $t0, $fp, -416
	ld.w $t1, $fp, -428
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -432
# %op61 = getelementptr i32 , i32 * %arg5, i32  0
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -440
# %op62 = load i32 , i32 * %op61
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op63 = add i32  %op60, %op62
	ld.w $t0, $fp, -432
	ld.w $t1, $fp, -444
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -448
# %op64 = getelementptr i32 , i32 * %arg5, i32  1
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -456
# %op65 = load i32 , i32 * %op64
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op66 = add i32  %op63, %op65
	ld.w $t0, $fp, -448
	ld.w $t1, $fp, -460
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -464
# %op67 = getelementptr i32 , i32 * %arg6, i32  0
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -472
# %op68 = load i32 , i32 * %op67
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op69 = add i32  %op66, %op68
	ld.w $t0, $fp, -464
	ld.w $t1, $fp, -476
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -480
# %op70 = getelementptr i32 , i32 * %arg6, i32  1
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -488
# %op71 = load i32 , i32 * %op70
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op72 = add i32  %op69, %op71
	ld.w $t0, $fp, -480
	ld.w $t1, $fp, -492
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -496
# %op73 = getelementptr i32 , i32 * %arg7, i32  0
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -504
# %op74 = load i32 , i32 * %op73
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op75 = add i32  %op72, %op74
	ld.w $t0, $fp, -496
	ld.w $t1, $fp, -508
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -512
# %op76 = getelementptr i32 , i32 * %arg7, i32  1
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -520
# %op77 = load i32 , i32 * %op76
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op78 = add i32  %op75, %op77
	ld.w $t0, $fp, -512
	ld.w $t1, $fp, -524
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -528
# %op79 = getelementptr i32 , i32 * %arg8, i32  0
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -536
# %op80 = load i32 , i32 * %op79
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op81 = add i32  %op78, %op80
	ld.w $t0, $fp, -528
	ld.w $t1, $fp, -540
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -544
# %op82 = getelementptr i32 , i32 * %arg8, i32  1
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -552
# %op83 = load i32 , i32 * %op82
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op84 = add i32  %op81, %op83
	ld.w $t0, $fp, -544
	ld.w $t1, $fp, -556
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -560
# %op85 = getelementptr i32 , i32 * %arg9, i32  0
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -568
# %op86 = load i32 , i32 * %op85
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op87 = add i32  %op84, %op86
	ld.w $t0, $fp, -560
	ld.w $t1, $fp, -572
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -576
# %op88 = getelementptr i32 , i32 * %arg9, i32  1
	ld.d $t0, $fp, -96
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -584
# %op89 = load i32 , i32 * %op88
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op90 = add i32  %op87, %op89
	ld.w $t0, $fp, -576
	ld.w $t1, $fp, -588
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -592
# %op91 = getelementptr i32 , i32 * %arg10, i32  0
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -600
# %op92 = load i32 , i32 * %op91
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op93 = add i32  %op90, %op92
	ld.w $t0, $fp, -592
	ld.w $t1, $fp, -604
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -608
# %op94 = getelementptr i32 , i32 * %arg10, i32  1
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -616
# %op95 = load i32 , i32 * %op94
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op96 = add i32  %op93, %op95
	ld.w $t0, $fp, -608
	ld.w $t1, $fp, -620
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -624
# %op97 = getelementptr i32 , i32 * %arg11, i32  0
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -632
# %op98 = load i32 , i32 * %op97
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op99 = add i32  %op96, %op98
	ld.w $t0, $fp, -624
	ld.w $t1, $fp, -636
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -640
# %op100 = getelementptr i32 , i32 * %arg11, i32  1
	ld.d $t0, $fp, -112
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -648
# %op101 = load i32 , i32 * %op100
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op102 = add i32  %op99, %op101
	ld.w $t0, $fp, -640
	ld.w $t1, $fp, -652
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -656
# %op103 = getelementptr i32 , i32 * %arg12, i32  0
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -664
# %op104 = load i32 , i32 * %op103
	ld.d $t0, $fp, -664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op105 = add i32  %op102, %op104
	ld.w $t0, $fp, -656
	ld.w $t1, $fp, -668
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -672
# %op106 = getelementptr i32 , i32 * %arg12, i32  1
	ld.d $t0, $fp, -120
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -680
# %op107 = load i32 , i32 * %op106
	ld.d $t0, $fp, -680
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -684
# %op108 = add i32  %op105, %op107
	ld.w $t0, $fp, -672
	ld.w $t1, $fp, -684
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -688
# %op109 = getelementptr i32 , i32 * %arg13, i32  0
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -696
# %op110 = load i32 , i32 * %op109
	ld.d $t0, $fp, -696
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -700
# %op111 = add i32  %op108, %op110
	ld.w $t0, $fp, -688
	ld.w $t1, $fp, -700
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -704
# %op112 = getelementptr i32 , i32 * %arg13, i32  1
	ld.d $t0, $fp, -128
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -712
# %op113 = load i32 , i32 * %op112
	ld.d $t0, $fp, -712
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -716
# %op114 = add i32  %op111, %op113
	ld.w $t0, $fp, -704
	ld.w $t1, $fp, -716
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -720
# %op115 = getelementptr i32 , i32 * %arg14, i32  0
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -728
# %op116 = load i32 , i32 * %op115
	ld.d $t0, $fp, -728
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -732
# %op117 = add i32  %op114, %op116
	ld.w $t0, $fp, -720
	ld.w $t1, $fp, -732
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -736
# %op118 = getelementptr i32 , i32 * %arg14, i32  1
	ld.d $t0, $fp, -136
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -744
# %op119 = load i32 , i32 * %op118
	ld.d $t0, $fp, -744
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -748
# %op120 = add i32  %op117, %op119
	ld.w $t0, $fp, -736
	ld.w $t1, $fp, -748
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -752
# %op121 = getelementptr i32 , i32 * %arg15, i32  0
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -760
# %op122 = load i32 , i32 * %op121
	ld.d $t0, $fp, -760
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -764
# %op123 = add i32  %op120, %op122
	ld.w $t0, $fp, -752
	ld.w $t1, $fp, -764
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -768
# %op124 = getelementptr i32 , i32 * %arg15, i32  1
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -776
# %op125 = load i32 , i32 * %op124
	ld.d $t0, $fp, -776
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -780
# %op126 = add i32  %op123, %op125
	ld.w $t0, $fp, -768
	ld.w $t1, $fp, -780
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -784
# %op127 = getelementptr i32 , i32 * %arg16, i32  0
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -792
# %op128 = load i32 , i32 * %op127
	ld.d $t0, $fp, -792
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -796
# %op129 = add i32  %op126, %op128
	ld.w $t0, $fp, -784
	ld.w $t1, $fp, -796
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -800
# %op130 = getelementptr i32 , i32 * %arg16, i32  1
	ld.d $t0, $fp, -152
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -808
# %op131 = load i32 , i32 * %op130
	ld.d $t0, $fp, -808
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -812
# %op132 = add i32  %op129, %op131
	ld.w $t0, $fp, -800
	ld.w $t1, $fp, -812
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -816
# %op133 = getelementptr i32 , i32 * %arg17, i32  0
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -824
# %op134 = load i32 , i32 * %op133
	ld.d $t0, $fp, -824
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -828
# %op135 = add i32  %op132, %op134
	ld.w $t0, $fp, -816
	ld.w $t1, $fp, -828
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -832
# %op136 = getelementptr i32 , i32 * %arg17, i32  1
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -840
# %op137 = load i32 , i32 * %op136
	ld.d $t0, $fp, -840
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -844
# %op138 = add i32  %op135, %op137
	ld.w $t0, $fp, -832
	ld.w $t1, $fp, -844
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -848
# %op139 = getelementptr i32 , i32 * %arg18, i32  0
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -856
# %op140 = load i32 , i32 * %op139
	ld.d $t0, $fp, -856
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -860
# %op141 = add i32  %op138, %op140
	ld.w $t0, $fp, -848
	ld.w $t1, $fp, -860
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -864
# %op142 = getelementptr i32 , i32 * %arg18, i32  1
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -872
# %op143 = load i32 , i32 * %op142
	ld.d $t0, $fp, -872
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -876
# %op144 = add i32  %op141, %op143
	ld.w $t0, $fp, -864
	ld.w $t1, $fp, -876
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -880
# %op145 = getelementptr i32 , i32 * %arg19, i32  0
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -888
# %op146 = load i32 , i32 * %op145
	ld.d $t0, $fp, -888
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -892
# %op147 = add i32  %op144, %op146
	ld.w $t0, $fp, -880
	ld.w $t1, $fp, -892
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -896
# %op148 = getelementptr i32 , i32 * %arg19, i32  1
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -904
# %op149 = load i32 , i32 * %op148
	ld.d $t0, $fp, -904
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -908
# %op150 = add i32  %op147, %op149
	ld.w $t0, $fp, -896
	ld.w $t1, $fp, -908
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -912
# %op151 = getelementptr i32 , i32 * %arg20, i32  0
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -920
# %op152 = load i32 , i32 * %op151
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# %op153 = add i32  %op150, %op152
	ld.w $t0, $fp, -912
	ld.w $t1, $fp, -924
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -928
# %op154 = getelementptr i32 , i32 * %arg20, i32  1
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -936
# %op155 = load i32 , i32 * %op154
	ld.d $t0, $fp, -936
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -940
# %op156 = add i32  %op153, %op155
	ld.w $t0, $fp, -928
	ld.w $t1, $fp, -940
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -944
# %op157 = getelementptr i32 , i32 * %arg21, i32  0
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -952
# %op158 = load i32 , i32 * %op157
	ld.d $t0, $fp, -952
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -956
# %op159 = add i32  %op156, %op158
	ld.w $t0, $fp, -944
	ld.w $t1, $fp, -956
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -960
# %op160 = getelementptr i32 , i32 * %arg21, i32  1
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -968
# %op161 = load i32 , i32 * %op160
	ld.d $t0, $fp, -968
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op162 = add i32  %op159, %op161
	ld.w $t0, $fp, -960
	ld.w $t1, $fp, -972
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -976
# %op163 = getelementptr i32 , i32 * %arg22, i32  0
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -984
# %op164 = load i32 , i32 * %op163
	ld.d $t0, $fp, -984
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -988
# %op165 = add i32  %op162, %op164
	ld.w $t0, $fp, -976
	ld.w $t1, $fp, -988
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -992
# %op166 = getelementptr i32 , i32 * %arg22, i32  1
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1000
# %op167 = load i32 , i32 * %op166
	ld.d $t0, $fp, -1000
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1004
# %op168 = add i32  %op165, %op167
	ld.w $t0, $fp, -992
	ld.w $t1, $fp, -1004
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1008
# %op169 = getelementptr i32 , i32 * %arg23, i32  0
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1016
# %op170 = load i32 , i32 * %op169
	ld.d $t0, $fp, -1016
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1020
# %op171 = add i32  %op168, %op170
	ld.w $t0, $fp, -1008
	ld.w $t1, $fp, -1020
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1024
# %op172 = getelementptr i32 , i32 * %arg23, i32  1
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1032
# %op173 = load i32 , i32 * %op172
	ld.d $t0, $fp, -1032
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1036
# %op174 = add i32  %op171, %op173
	ld.w $t0, $fp, -1024
	ld.w $t1, $fp, -1036
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1040
# %op175 = getelementptr i32 , i32 * %arg24, i32  0
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1048
# %op176 = load i32 , i32 * %op175
	ld.d $t0, $fp, -1048
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1052
# %op177 = add i32  %op174, %op176
	ld.w $t0, $fp, -1040
	ld.w $t1, $fp, -1052
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1056
# %op178 = getelementptr i32 , i32 * %arg24, i32  1
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1064
# %op179 = load i32 , i32 * %op178
	ld.d $t0, $fp, -1064
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1068
# %op180 = add i32  %op177, %op179
	ld.w $t0, $fp, -1056
	ld.w $t1, $fp, -1068
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1072
# %op181 = getelementptr i32 , i32 * %arg25, i32  0
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1080
# %op182 = load i32 , i32 * %op181
	ld.d $t0, $fp, -1080
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1084
# %op183 = add i32  %op180, %op182
	ld.w $t0, $fp, -1072
	ld.w $t1, $fp, -1084
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1088
# %op184 = getelementptr i32 , i32 * %arg25, i32  1
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1096
# %op185 = load i32 , i32 * %op184
	ld.d $t0, $fp, -1096
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1100
# %op186 = add i32  %op183, %op185
	ld.w $t0, $fp, -1088
	ld.w $t1, $fp, -1100
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1104
# %op187 = getelementptr i32 , i32 * %arg26, i32  0
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1112
# %op188 = load i32 , i32 * %op187
	ld.d $t0, $fp, -1112
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1116
# %op189 = add i32  %op186, %op188
	ld.w $t0, $fp, -1104
	ld.w $t1, $fp, -1116
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1120
# %op190 = getelementptr i32 , i32 * %arg26, i32  1
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1128
# %op191 = load i32 , i32 * %op190
	ld.d $t0, $fp, -1128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1132
# %op192 = add i32  %op189, %op191
	ld.w $t0, $fp, -1120
	ld.w $t1, $fp, -1132
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1136
# %op193 = getelementptr i32 , i32 * %arg27, i32  0
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1144
# %op194 = load i32 , i32 * %op193
	ld.d $t0, $fp, -1144
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1148
# %op195 = add i32  %op192, %op194
	ld.w $t0, $fp, -1136
	ld.w $t1, $fp, -1148
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1152
# %op196 = getelementptr i32 , i32 * %arg27, i32  1
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1160
# %op197 = load i32 , i32 * %op196
	ld.d $t0, $fp, -1160
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1164
# %op198 = add i32  %op195, %op197
	ld.w $t0, $fp, -1152
	ld.w $t1, $fp, -1164
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1168
# %op199 = getelementptr i32 , i32 * %arg28, i32  0
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1176
# %op200 = load i32 , i32 * %op199
	ld.d $t0, $fp, -1176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1180
# %op201 = add i32  %op198, %op200
	ld.w $t0, $fp, -1168
	ld.w $t1, $fp, -1180
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1184
# %op202 = getelementptr i32 , i32 * %arg28, i32  1
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1192
# %op203 = load i32 , i32 * %op202
	ld.d $t0, $fp, -1192
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1196
# %op204 = add i32  %op201, %op203
	ld.w $t0, $fp, -1184
	ld.w $t1, $fp, -1196
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1200
# %op205 = getelementptr i32 , i32 * %arg29, i32  0
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1208
# %op206 = load i32 , i32 * %op205
	ld.d $t0, $fp, -1208
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1212
# %op207 = add i32  %op204, %op206
	ld.w $t0, $fp, -1200
	ld.w $t1, $fp, -1212
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1216
# %op208 = getelementptr i32 , i32 * %arg29, i32  1
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1224
# %op209 = load i32 , i32 * %op208
	ld.d $t0, $fp, -1224
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1228
# %op210 = add i32  %op207, %op209
	ld.w $t0, $fp, -1216
	ld.w $t1, $fp, -1228
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1232
# %op211 = getelementptr i32 , i32 * %arg30, i32  0
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1240
# %op212 = load i32 , i32 * %op211
	ld.d $t0, $fp, -1240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1244
# %op213 = add i32  %op210, %op212
	ld.w $t0, $fp, -1232
	ld.w $t1, $fp, -1244
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1248
# %op214 = getelementptr i32 , i32 * %arg30, i32  1
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1256
# %op215 = load i32 , i32 * %op214
	ld.d $t0, $fp, -1256
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1260
# %op216 = add i32  %op213, %op215
	ld.w $t0, $fp, -1248
	ld.w $t1, $fp, -1260
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1264
# %op217 = getelementptr i32 , i32 * %arg31, i32  0
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1272
# %op218 = load i32 , i32 * %op217
	ld.d $t0, $fp, -1272
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1276
# %op219 = add i32  %op216, %op218
	ld.w $t0, $fp, -1264
	ld.w $t1, $fp, -1276
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1280
# %op220 = getelementptr i32 , i32 * %arg31, i32  1
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 1
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -1288
# %op221 = load i32 , i32 * %op220
	ld.d $t0, $fp, -1288
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -1292
# %op222 = add i32  %op219, %op221
	ld.w $t0, $fp, -1280
	ld.w $t1, $fp, -1292
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -1296
# ret i32  %op222
	ld.w $a0, $fp, -1296
	b param32_arr_ret
param32_arr_ret:
	addi.d $sp, $sp, 1296
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl param16
	.type param16, @function
param16:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -672
.param16_label_entry:
# %op16 = alloca [16 x i32 ]
	addi.d $t1, $fp, -152
	st.d $t1, $fp, -88
# %op17 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  0
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -160
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  1
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -168
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  2
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -176
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  3
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -184
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  4
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -192
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  5
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -200
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  6
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -208
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  7
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -216
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  8
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -224
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  9
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -232
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  10
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -240
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  11
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -248
# store i32  0, i32 * %op28
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op29 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  12
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -256
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  13
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -264
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  14
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -272
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  15
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -280
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  0
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -288
# store i32  %arg0, i32 * %op33
	ld.d $t0, $fp, -288
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op34 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  1
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -296
# store i32  %arg1, i32 * %op34
	ld.d $t0, $fp, -296
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op35 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  2
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -304
# store i32  %arg2, i32 * %op35
	ld.d $t0, $fp, -304
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op36 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  3
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -312
# store i32  %arg3, i32 * %op36
	ld.d $t0, $fp, -312
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op37 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  4
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -320
# store i32  %arg4, i32 * %op37
	ld.d $t0, $fp, -320
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op38 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  5
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -328
# store i32  %arg5, i32 * %op38
	ld.d $t0, $fp, -328
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op39 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  6
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -336
# store i32  %arg6, i32 * %op39
	ld.d $t0, $fp, -336
	ld.w $t1, $fp, -44
	st.w $t1, $t0, 0
# %op40 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  7
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -344
# store i32  %arg7, i32 * %op40
	ld.d $t0, $fp, -344
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op41 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  8
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -352
# store i32  %arg8, i32 * %op41
	ld.d $t0, $fp, -352
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# %op42 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  9
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -360
# store i32  %arg9, i32 * %op42
	ld.d $t0, $fp, -360
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op43 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  10
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -368
# store i32  %arg10, i32 * %op43
	ld.d $t0, $fp, -368
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op44 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  11
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -376
# store i32  %arg11, i32 * %op44
	ld.d $t0, $fp, -376
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# %op45 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  12
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -384
# store i32  %arg12, i32 * %op45
	ld.d $t0, $fp, -384
	ld.w $t1, $fp, -68
	st.w $t1, $t0, 0
# %op46 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  13
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -392
# store i32  %arg13, i32 * %op46
	ld.d $t0, $fp, -392
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# %op47 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  14
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -400
# store i32  %arg14, i32 * %op47
	ld.d $t0, $fp, -400
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# %op48 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  15
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -408
# store i32  %arg15, i32 * %op48
	ld.d $t0, $fp, -408
	ld.w $t1, $fp, -80
	st.w $t1, $t0, 0
# %op49 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  0
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -416
# call void @sort(i32 * %op49, i32  16)
	ld.d $a0, $fp, -416
	addi.w $a1, $zero, 16
	bl sort
# %op50 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  0
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -424
# %op51 = load i32 , i32 * %op50
	ld.d $t0, $fp, -424
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op52 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  1
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -440
# %op53 = load i32 , i32 * %op52
	ld.d $t0, $fp, -440
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op54 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  2
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -456
# %op55 = load i32 , i32 * %op54
	ld.d $t0, $fp, -456
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -460
# %op56 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  3
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -472
# %op57 = load i32 , i32 * %op56
	ld.d $t0, $fp, -472
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op58 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  4
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -488
# %op59 = load i32 , i32 * %op58
	ld.d $t0, $fp, -488
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op60 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  5
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -504
# %op61 = load i32 , i32 * %op60
	ld.d $t0, $fp, -504
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -508
# %op62 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  6
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -520
# %op63 = load i32 , i32 * %op62
	ld.d $t0, $fp, -520
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -524
# %op64 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  7
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -536
# %op65 = load i32 , i32 * %op64
	ld.d $t0, $fp, -536
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -540
# %op66 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  8
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -552
# %op67 = load i32 , i32 * %op66
	ld.d $t0, $fp, -552
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -556
# %op68 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  9
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -568
# %op69 = load i32 , i32 * %op68
	ld.d $t0, $fp, -568
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -572
# %op70 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  10
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -584
# %op71 = load i32 , i32 * %op70
	ld.d $t0, $fp, -584
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -588
# %op72 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  11
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -600
# %op73 = load i32 , i32 * %op72
	ld.d $t0, $fp, -600
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -604
# %op74 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  12
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -616
# %op75 = load i32 , i32 * %op74
	ld.d $t0, $fp, -616
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -620
# %op76 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  13
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -632
# %op77 = load i32 , i32 * %op76
	ld.d $t0, $fp, -632
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -636
# %op78 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  14
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -648
# %op79 = load i32 , i32 * %op78
	ld.d $t0, $fp, -648
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -652
# %op80 = getelementptr [16 x i32 ], [16 x i32 ]* %op16, i32  0, i32  15
	ld.d $t0, $fp, -88
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -664
# %op81 = load i32 , i32 * %op80
	ld.d $t0, $fp, -664
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -668
# %op82 = call i32  @param32_rec(i32  %op51, i32  %op53, i32  %op55, i32  %op57, i32  %op59, i32  %op61, i32  %op63, i32  %op65, i32  %op67, i32  %op69, i32  %op71, i32  %op73, i32  %op75, i32  %op77, i32  %op79, i32  %op81, i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6, i32  %arg7, i32  %arg8, i32  %arg9, i32  %arg10, i32  %arg11, i32  %arg12, i32  %arg13, i32  %arg14, i32  %arg15)
# ret i32  %op82
	ld.w $a0, $fp, -672
	b param16_ret
param16_ret:
	addi.d $sp, $sp, 672
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -1520
.main_label_entry:
# %op0 = alloca [32 x [2 x i32 ]]
	addi.d $t1, $fp, -280
	st.d $t1, $fp, -24
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -284
# %op2 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -288
# %op3 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -292
# %op4 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -296
# %op5 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -300
# %op6 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -304
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -308
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -312
# %op9 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -316
# %op10 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -320
# %op11 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -324
# %op12 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -328
# %op13 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -332
# %op14 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -336
# %op15 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -340
# %op16 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -344
# %op17 = call i32  @param16(i32  %op1, i32  %op2, i32  %op3, i32  %op4, i32  %op5, i32  %op6, i32  %op7, i32  %op8, i32  %op9, i32  %op10, i32  %op11, i32  %op12, i32  %op13, i32  %op14, i32  %op15, i32  %op16)
# %op18 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -360
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -360
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -368
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -368
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -376
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -384
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -392
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -392
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -400
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -408
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -408
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -416
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  4, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -424
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  4, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -432
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  5, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -440
# store i32  0, i32 * %op28
	ld.d $t0, $fp, -440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op29 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  5, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -448
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  6, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -456
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  6, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -464
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  7, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -472
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  7, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -480
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op34 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  8, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -488
# store i32  0, i32 * %op34
	ld.d $t0, $fp, -488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op35 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  8, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -496
# store i32  0, i32 * %op35
	ld.d $t0, $fp, -496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op36 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  9, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -504
# store i32  0, i32 * %op36
	ld.d $t0, $fp, -504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op37 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  9, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -512
# store i32  0, i32 * %op37
	ld.d $t0, $fp, -512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op38 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  10, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -520
# store i32  0, i32 * %op38
	ld.d $t0, $fp, -520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op39 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  10, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -528
# store i32  0, i32 * %op39
	ld.d $t0, $fp, -528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op40 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  11, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -536
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  11, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -544
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op42 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  12, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -552
# store i32  0, i32 * %op42
	ld.d $t0, $fp, -552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op43 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  12, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -560
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  13, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -568
# store i32  0, i32 * %op44
	ld.d $t0, $fp, -568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op45 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  13, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -576
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  14, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -584
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  14, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -592
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  15, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -600
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  15, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -608
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  16, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -616
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  16, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -624
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  17, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -632
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  17, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 140
	st.d $t2, $fp, -640
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  18, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -648
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  18, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 148
	st.d $t2, $fp, -656
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  19, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -664
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  19, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 156
	st.d $t2, $fp, -672
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  20, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 160
	st.d $t2, $fp, -680
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  20, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 164
	st.d $t2, $fp, -688
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -688
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  21, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 168
	st.d $t2, $fp, -696
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -696
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  21, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 172
	st.d $t2, $fp, -704
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -704
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  22, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 176
	st.d $t2, $fp, -712
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -712
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  22, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 180
	st.d $t2, $fp, -720
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  23, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 184
	st.d $t2, $fp, -728
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  23, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 188
	st.d $t2, $fp, -736
# store i32  0, i32 * %op65
	ld.d $t0, $fp, -736
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op66 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  24, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 192
	st.d $t2, $fp, -744
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  24, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 196
	st.d $t2, $fp, -752
# store i32  0, i32 * %op67
	ld.d $t0, $fp, -752
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  25, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 200
	st.d $t2, $fp, -760
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -760
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  25, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 204
	st.d $t2, $fp, -768
# store i32  0, i32 * %op69
	ld.d $t0, $fp, -768
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  26, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 208
	st.d $t2, $fp, -776
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -776
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  26, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 212
	st.d $t2, $fp, -784
# store i32  0, i32 * %op71
	ld.d $t0, $fp, -784
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op72 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  27, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 216
	st.d $t2, $fp, -792
# store i32  0, i32 * %op72
	ld.d $t0, $fp, -792
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op73 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  27, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 220
	st.d $t2, $fp, -800
# store i32  0, i32 * %op73
	ld.d $t0, $fp, -800
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op74 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  28, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 224
	st.d $t2, $fp, -808
# store i32  0, i32 * %op74
	ld.d $t0, $fp, -808
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op75 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  28, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 228
	st.d $t2, $fp, -816
# store i32  0, i32 * %op75
	ld.d $t0, $fp, -816
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op76 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  29, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 232
	st.d $t2, $fp, -824
# store i32  0, i32 * %op76
	ld.d $t0, $fp, -824
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op77 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  29, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 236
	st.d $t2, $fp, -832
# store i32  0, i32 * %op77
	ld.d $t0, $fp, -832
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op78 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  30, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 240
	st.d $t2, $fp, -840
# store i32  0, i32 * %op78
	ld.d $t0, $fp, -840
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op79 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  30, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 244
	st.d $t2, $fp, -848
# store i32  0, i32 * %op79
	ld.d $t0, $fp, -848
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op80 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  31, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 248
	st.d $t2, $fp, -856
# store i32  0, i32 * %op80
	ld.d $t0, $fp, -856
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op81 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  31, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 252
	st.d $t2, $fp, -864
# store i32  0, i32 * %op81
	ld.d $t0, $fp, -864
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op82 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -872
# store i32  %op17, i32 * %op82
	ld.d $t0, $fp, -872
	ld.w $t1, $fp, -348
	st.w $t1, $t0, 0
# %op83 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -880
# store i32  8848, i32 * %op83
	ld.d $t0, $fp, -880
	lu12i.w $t1, 2
	ori $t1, $t1, 656
	st.w $t1, $t0, 0
# br label %label84
	addi.w $t0, $zero, 1
	st.w $t0, $fp, -884
	b .main_label84
.main_label84:
# %op85 = phi i32  [ 1, %label_entry ], [ %op104, %label89 ]
# %op86 = icmp slt i32  %op85, 32
	ld.w $t0, $fp, -884
	addi.w $t1, $zero, 32
	slt $t2, $t0, $t1
	st.b $t2, $fp, -885
# %op87 = zext i1  %op86 to i32 
	ld.b $t0, $fp, -885
	st.w $t0, $fp, -892
# %op88 = icmp ne i32  %op87, 0
	ld.w $t0, $fp, -892
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -893
# br i1  %op88, label %label89, label %label105
	ld.b $t0, $fp, -893
	bnez $t0, .main_label89
	b .main_label105
.main_label89:
# %op90 = sub i32  %op85, 1
	ld.w $t0, $fp, -884
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -900
# %op91 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  %op90
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -900
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -912
# %op92 = getelementptr [2 x i32 ], [2 x i32 ]* %op91, i32  0, i32  1
	ld.d $t0, $fp, -912
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -920
# %op93 = load i32 , i32 * %op92
	ld.d $t0, $fp, -920
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -924
# %op94 = sub i32  %op93, 1
	ld.w $t0, $fp, -924
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -928
# %op95 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  %op85
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -884
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -936
# %op96 = getelementptr [2 x i32 ], [2 x i32 ]* %op95, i32  0, i32  0
	ld.d $t0, $fp, -936
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -944
# store i32  %op94, i32 * %op96
	ld.d $t0, $fp, -944
	ld.w $t1, $fp, -928
	st.w $t1, $t0, 0
# %op97 = sub i32  %op85, 1
	ld.w $t0, $fp, -884
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -948
# %op98 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  %op97
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -948
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -960
# %op99 = getelementptr [2 x i32 ], [2 x i32 ]* %op98, i32  0, i32  0
	ld.d $t0, $fp, -960
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -968
# %op100 = load i32 , i32 * %op99
	ld.d $t0, $fp, -968
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -972
# %op101 = sub i32  %op100, 2
	ld.w $t0, $fp, -972
	addi.w $t1, $zero, 2
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -976
# %op102 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  %op85
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -884
	addi.d $t3, $zero, 2
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -984
# %op103 = getelementptr [2 x i32 ], [2 x i32 ]* %op102, i32  0, i32  1
	ld.d $t0, $fp, -984
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -992
# store i32  %op101, i32 * %op103
	ld.d $t0, $fp, -992
	ld.w $t1, $fp, -976
	st.w $t1, $t0, 0
# %op104 = add i32  %op85, 1
	ld.w $t0, $fp, -884
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -996
# br label %label84
	ld.w $t0, $fp, -996
	st.w $t0, $fp, -884
	b .main_label84
.main_label105:
# %op106 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1008
# %op107 = getelementptr [2 x i32 ], [2 x i32 ]* %op106, i32  0, i32  0
	ld.d $t0, $fp, -1008
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1016
# %op108 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -1024
# %op109 = getelementptr [2 x i32 ], [2 x i32 ]* %op108, i32  0, i32  0
	ld.d $t0, $fp, -1024
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1032
# %op110 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -1040
# %op111 = getelementptr [2 x i32 ], [2 x i32 ]* %op110, i32  0, i32  0
	ld.d $t0, $fp, -1040
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1048
# %op112 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -1056
# %op113 = getelementptr [2 x i32 ], [2 x i32 ]* %op112, i32  0, i32  0
	ld.d $t0, $fp, -1056
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1064
# %op114 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -1072
# %op115 = getelementptr [2 x i32 ], [2 x i32 ]* %op114, i32  0, i32  0
	ld.d $t0, $fp, -1072
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1080
# %op116 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -1088
# %op117 = getelementptr [2 x i32 ], [2 x i32 ]* %op116, i32  0, i32  0
	ld.d $t0, $fp, -1088
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1096
# %op118 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -1104
# %op119 = getelementptr [2 x i32 ], [2 x i32 ]* %op118, i32  0, i32  0
	ld.d $t0, $fp, -1104
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1112
# %op120 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -1120
# %op121 = getelementptr [2 x i32 ], [2 x i32 ]* %op120, i32  0, i32  0
	ld.d $t0, $fp, -1120
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1128
# %op122 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -1136
# %op123 = getelementptr [2 x i32 ], [2 x i32 ]* %op122, i32  0, i32  0
	ld.d $t0, $fp, -1136
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1144
# %op124 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -1152
# %op125 = getelementptr [2 x i32 ], [2 x i32 ]* %op124, i32  0, i32  0
	ld.d $t0, $fp, -1152
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1160
# %op126 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -1168
# %op127 = getelementptr [2 x i32 ], [2 x i32 ]* %op126, i32  0, i32  0
	ld.d $t0, $fp, -1168
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1176
# %op128 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -1184
# %op129 = getelementptr [2 x i32 ], [2 x i32 ]* %op128, i32  0, i32  0
	ld.d $t0, $fp, -1184
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1192
# %op130 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -1200
# %op131 = getelementptr [2 x i32 ], [2 x i32 ]* %op130, i32  0, i32  0
	ld.d $t0, $fp, -1200
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1208
# %op132 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -1216
# %op133 = getelementptr [2 x i32 ], [2 x i32 ]* %op132, i32  0, i32  0
	ld.d $t0, $fp, -1216
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1224
# %op134 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -1232
# %op135 = getelementptr [2 x i32 ], [2 x i32 ]* %op134, i32  0, i32  0
	ld.d $t0, $fp, -1232
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1240
# %op136 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -1248
# %op137 = getelementptr [2 x i32 ], [2 x i32 ]* %op136, i32  0, i32  0
	ld.d $t0, $fp, -1248
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1256
# %op138 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  16
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -1264
# %op139 = getelementptr [2 x i32 ], [2 x i32 ]* %op138, i32  0, i32  0
	ld.d $t0, $fp, -1264
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1272
# %op140 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  17
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -1280
# %op141 = getelementptr [2 x i32 ], [2 x i32 ]* %op140, i32  0, i32  0
	ld.d $t0, $fp, -1280
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1288
# %op142 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  18
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -1296
# %op143 = getelementptr [2 x i32 ], [2 x i32 ]* %op142, i32  0, i32  0
	ld.d $t0, $fp, -1296
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1304
# %op144 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  19
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -1312
# %op145 = getelementptr [2 x i32 ], [2 x i32 ]* %op144, i32  0, i32  0
	ld.d $t0, $fp, -1312
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1320
# %op146 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  20
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 160
	st.d $t2, $fp, -1328
# %op147 = getelementptr [2 x i32 ], [2 x i32 ]* %op146, i32  0, i32  0
	ld.d $t0, $fp, -1328
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1336
# %op148 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  21
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 168
	st.d $t2, $fp, -1344
# %op149 = getelementptr [2 x i32 ], [2 x i32 ]* %op148, i32  0, i32  0
	ld.d $t0, $fp, -1344
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1352
# %op150 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  22
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 176
	st.d $t2, $fp, -1360
# %op151 = getelementptr [2 x i32 ], [2 x i32 ]* %op150, i32  0, i32  0
	ld.d $t0, $fp, -1360
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1368
# %op152 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  23
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 184
	st.d $t2, $fp, -1376
# %op153 = getelementptr [2 x i32 ], [2 x i32 ]* %op152, i32  0, i32  0
	ld.d $t0, $fp, -1376
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1384
# %op154 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  24
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 192
	st.d $t2, $fp, -1392
# %op155 = getelementptr [2 x i32 ], [2 x i32 ]* %op154, i32  0, i32  0
	ld.d $t0, $fp, -1392
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1400
# %op156 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  25
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 200
	st.d $t2, $fp, -1408
# %op157 = getelementptr [2 x i32 ], [2 x i32 ]* %op156, i32  0, i32  0
	ld.d $t0, $fp, -1408
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1416
# %op158 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  26
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 208
	st.d $t2, $fp, -1424
# %op159 = getelementptr [2 x i32 ], [2 x i32 ]* %op158, i32  0, i32  0
	ld.d $t0, $fp, -1424
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1432
# %op160 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  27
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 216
	st.d $t2, $fp, -1440
# %op161 = getelementptr [2 x i32 ], [2 x i32 ]* %op160, i32  0, i32  0
	ld.d $t0, $fp, -1440
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1448
# %op162 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  28
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 224
	st.d $t2, $fp, -1456
# %op163 = getelementptr [2 x i32 ], [2 x i32 ]* %op162, i32  0, i32  0
	ld.d $t0, $fp, -1456
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1464
# %op164 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  29
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 232
	st.d $t2, $fp, -1472
# %op165 = getelementptr [2 x i32 ], [2 x i32 ]* %op164, i32  0, i32  0
	ld.d $t0, $fp, -1472
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1480
# %op166 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  30
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 240
	st.d $t2, $fp, -1488
# %op167 = getelementptr [2 x i32 ], [2 x i32 ]* %op166, i32  0, i32  0
	ld.d $t0, $fp, -1488
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1496
# %op168 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op0, i32  0, i32  31
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 248
	st.d $t2, $fp, -1504
# %op169 = getelementptr [2 x i32 ], [2 x i32 ]* %op168, i32  0, i32  0
	ld.d $t0, $fp, -1504
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1512
# %op170 = call i32  @param32_arr(i32 * %op107, i32 * %op109, i32 * %op111, i32 * %op113, i32 * %op115, i32 * %op117, i32 * %op119, i32 * %op121, i32 * %op123, i32 * %op125, i32 * %op127, i32 * %op129, i32 * %op131, i32 * %op133, i32 * %op135, i32 * %op137, i32 * %op139, i32 * %op141, i32 * %op143, i32 * %op145, i32 * %op147, i32 * %op149, i32 * %op151, i32 * %op153, i32 * %op155, i32 * %op157, i32 * %op159, i32 * %op161, i32 * %op163, i32 * %op165, i32 * %op167, i32 * %op169)
# call void @putint(i32  %op170)
	ld.w $a0, $fp, -1516
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 1520
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
