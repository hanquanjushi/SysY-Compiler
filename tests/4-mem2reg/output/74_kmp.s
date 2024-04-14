	.text
	.globl get_next
	.type get_next, @function
get_next:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -160
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
.get_next_label_entry:
# %op2 = getelementptr i32 , i32 * %arg1, i32  0
	ld.d $t0, $fp, -32
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -40
# store i32  -1, i32 * %op2
	ld.d $t0, $fp, -40
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# br label %label3
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -44
	addi.w $t0, $zero, -1
	st.w $t0, $fp, -48
	b .get_next_label3
.get_next_label3:
# %op4 = phi i32  [ 0, %label_entry ], [ %op22, %label21 ]
# %op5 = phi i32  [ -1, %label_entry ], [ %op23, %label21 ]
# %op6 = getelementptr i32 , i32 * %arg0, i32  %op4
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -44
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op7 = load i32 , i32 * %op6
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -61
# br i1  %op8, label %label9, label %label13
	ld.b $t0, $fp, -61
	bnez $t0, .get_next_label9
	b .get_next_label13
.get_next_label9:
# %op10 = icmp eq i32  %op5, -1
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, -1
	beq  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -62
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -62
	st.w $t0, $fp, -68
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -69
# br i1  %op12, label %label14, label %label24
	ld.b $t0, $fp, -69
	bnez $t0, .get_next_label14
	b .get_next_label24
.get_next_label13:
# ret void
	addi.d $a0, $zero, 0
	b get_next_ret
.get_next_label14:
# %op15 = add i32  %op5, 1
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# %op16 = add i32  %op4, 1
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op17 = getelementptr i32 , i32 * %arg1, i32  %op16
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -80
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -88
# store i32  %op15, i32 * %op17
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -76
	st.w $t1, $t0, 0
# br label %label21
	ld.w $t0, $fp, -80
	st.w $t0, $fp, -104
	ld.w $t0, $fp, -76
	st.w $t0, $fp, -108
	b .get_next_label21
.get_next_label18:
# %op19 = getelementptr i32 , i32 * %arg1, i32  %op5
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -48
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -96
# %op20 = load i32 , i32 * %op19
	ld.d $t0, $fp, -96
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# br label %label21
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -104
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -108
	b .get_next_label21
.get_next_label21:
# %op22 = phi i32  [ %op16, %label14 ], [ %op4, %label18 ]
# %op23 = phi i32  [ %op15, %label14 ], [ %op20, %label18 ]
# br label %label3
	ld.w $t0, $fp, -104
	st.w $t0, $fp, -44
	ld.w $t0, $fp, -108
	st.w $t0, $fp, -48
	b .get_next_label3
.get_next_label24:
# %op25 = getelementptr i32 , i32 * %arg0, i32  %op4
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -44
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -120
# %op26 = load i32 , i32 * %op25
	ld.d $t0, $fp, -120
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op27 = getelementptr i32 , i32 * %arg0, i32  %op5
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -48
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -136
# %op28 = load i32 , i32 * %op27
	ld.d $t0, $fp, -136
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op29 = icmp eq i32  %op26, %op28
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -140
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -141
# %op30 = zext i1  %op29 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op31 = icmp ne i32  %op30, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -149
# br i1  %op31, label %label14, label %label18
	ld.b $t0, $fp, -149
	bnez $t0, .get_next_label14
	b .get_next_label18
get_next_ret:
	addi.d $sp, $sp, 160
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl KMP
	.type KMP, @function
KMP:
	lu12i.w $t0, 4
	ori $t0, $t0, 192
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
.KMP_label_entry:
# %op2 = alloca [4096 x i32 ]
	lu12i.w $t0, -5
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	st.d $t1, $fp, -40
# %op3 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op2, i32  0, i32  0
	ld.d $t0, $fp, -40
	addi.d $t2, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# call void @get_next(i32 * %arg0, i32 * %op3)
	ld.d $a0, $fp, -24
	lu12i.w $a1, -5
	ori $a1, $a1, 4048
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.d $a1, $a1, 0
	bl get_next
# br label %label4
	addi.w $t0, $zero, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .KMP_label4
.KMP_label4:
# %op5 = phi i32  [ 0, %label_entry ], [ %op32, %label31 ]
# %op6 = phi i32  [ 0, %label_entry ], [ %op33, %label31 ]
# %op7 = getelementptr i32 , i32 * %arg1, i32  %op6
	ld.d $t0, $fp, -32
	lu12i.w $t1, -5
	ori $t1, $t1, 4040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op8 = load i32 , i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4028
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op9 = icmp ne i32  %op8, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 4028
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	lu12i.w $t8, -5
	ori $t8, $t8, 4027
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op9, label %label10, label %label18
	lu12i.w $t0, -5
	ori $t0, $t0, 4027
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label10
	b .KMP_label18
.KMP_label10:
# %op11 = getelementptr i32 , i32 * %arg0, i32  %op5
	ld.d $t0, $fp, -24
	lu12i.w $t1, -5
	ori $t1, $t1, 4044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op12 = load i32 , i32 * %op11
	lu12i.w $t0, -5
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op13 = getelementptr i32 , i32 * %arg1, i32  %op6
	ld.d $t0, $fp, -32
	lu12i.w $t1, -5
	ori $t1, $t1, 4040
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op14 = load i32 , i32 * %op13
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3996
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op15 = icmp eq i32  %op12, %op14
	lu12i.w $t0, -5
	ori $t0, $t0, 4012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3996
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	beq  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	lu12i.w $t8, -5
	ori $t8, $t8, 3995
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op16 = zext i1  %op15 to i32 
	lu12i.w $t0, -5
	ori $t0, $t0, 3995
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3988
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op17 = icmp ne i32  %op16, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3988
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	lu12i.w $t8, -5
	ori $t8, $t8, 3987
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op17, label %label19, label %label25
	lu12i.w $t0, -5
	ori $t0, $t0, 3987
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label19
	b .KMP_label25
.KMP_label18:
# ret i32  -1
	addi.w $a0, $zero, -1
	b KMP_ret
.KMP_label19:
# %op20 = add i32  %op5, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 4044
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op21 = add i32  %op6, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op22 = getelementptr i32 , i32 * %arg0, i32  %op20
	ld.d $t0, $fp, -24
	lu12i.w $t1, -5
	ori $t1, $t1, 3980
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op23 = load i32 , i32 * %op22
	lu12i.w $t0, -5
	ori $t0, $t0, 3968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3964
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op24 = icmp eq i32  %op23, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3964
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	lu12i.w $t8, -5
	ori $t8, $t8, 3963
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op24, label %label34, label %label35
	lu12i.w $t0, -5
	ori $t0, $t0, 3963
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label34
	b .KMP_label35
.KMP_label25:
# %op26 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op2, i32  0, i32  %op5
	ld.d $t0, $fp, -40
	lu12i.w $t1, -5
	ori $t1, $t1, 4044
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op27 = load i32 , i32 * %op26
	lu12i.w $t0, -5
	ori $t0, $t0, 3952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op28 = icmp eq i32  %op27, -1
	lu12i.w $t0, -5
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, -1
	beq  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	lu12i.w $t8, -5
	ori $t8, $t8, 3947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op29 = zext i1  %op28 to i32 
	lu12i.w $t0, -5
	ori $t0, $t0, 3947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op30 = icmp ne i32  %op29, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3940
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	lu12i.w $t8, -5
	ori $t8, $t8, 3939
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op30, label %label36, label %label39
	lu12i.w $t0, -5
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3939
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label36
	b .KMP_label39
.KMP_label31:
# %op32 = phi i32  [ %op20, %label35 ], [ %op40, %label39 ]
# %op33 = phi i32  [ %op21, %label35 ], [ %op41, %label39 ]
# br label %label4
	lu12i.w $t0, -5
	ori $t0, $t0, 3932
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4044
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .KMP_label4
.KMP_label34:
# ret i32  %op21
	lu12i.w $a0, -5
	ori $a0, $a0, 3976
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b KMP_ret
.KMP_label35:
# br label %label31
	lu12i.w $t0, -5
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .KMP_label31
.KMP_label36:
# %op37 = add i32  %op27, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 3948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op38 = add i32  %op6, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label39
	lu12i.w $t0, -5
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3916
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .KMP_label39
.KMP_label39:
# %op40 = phi i32  [ %op27, %label25 ], [ %op37, %label36 ]
# %op41 = phi i32  [ %op6, %label25 ], [ %op38, %label36 ]
# br label %label31
	lu12i.w $t0, -5
	ori $t0, $t0, 3916
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3932
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .KMP_label31
KMP_ret:
	lu12i.w $t0, 4
	ori $t0, $t0, 192
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl read_str
	.type read_str, @function
read_str:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
	st.d $a0, $fp, -24
.read_str_label_entry:
# br label %label1
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -28
	b .read_str_label1
.read_str_label1:
# %op2 = phi i32  [ 0, %label_entry ], [ %op16, %label15 ]
# %op3 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -29
# br i1  %op3, label %label4, label %label12
	ld.b $t0, $fp, -29
	bnez $t0, .read_str_label4
	b .read_str_label12
.read_str_label4:
# %op5 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -36
# %op6 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -48
# store i32  %op5, i32 * %op6
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -36
	st.w $t1, $t0, 0
# %op7 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# %op8 = load i32 , i32 * %op7
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# %op9 = icmp eq i32  %op8, 10
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -61
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -69
# br i1  %op11, label %label14, label %label15
	ld.b $t0, $fp, -69
	bnez $t0, .read_str_label14
	b .read_str_label15
.read_str_label12:
# %op13 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -28
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# ret i32  %op2
	ld.w $a0, $fp, -28
	b read_str_ret
.read_str_label14:
# br label %label12
	b .read_str_label12
.read_str_label15:
# %op16 = add i32  %op2, 1
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# br label %label1
	ld.w $t0, $fp, -84
	st.w $t0, $fp, -28
	b .read_str_label1
read_str_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	lu12i.w $t0, 8
	ori $t0, $t0, 96
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.main_label_entry:
# %op0 = alloca [4096 x i32 ]
	lu12i.w $t0, -5
	ori $t0, $t0, 4072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	st.d $t1, $fp, -24
# %op1 = alloca [4096 x i32 ]
	lu12i.w $t0, -9
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -5
	ori $t8, $t8, 4064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op2 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op1, i32  0, i32  0
	lu12i.w $t0, -5
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -9
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op3 = call i32  @read_str(i32 * %op2)
	lu12i.w $a0, -9
	ori $a0, $a0, 4056
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl read_str
	lu12i.w $t8, -9
	ori $t8, $t8, 4052
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op4 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -9
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op5 = call i32  @read_str(i32 * %op4)
	lu12i.w $a0, -9
	ori $a0, $a0, 4040
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl read_str
	lu12i.w $t8, -9
	ori $t8, $t8, 4036
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op6 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op1, i32  0, i32  0
	lu12i.w $t0, -5
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -9
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op7 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -9
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op8 = call i32  @KMP(i32 * %op6, i32 * %op7)
	lu12i.w $a0, -9
	ori $a0, $a0, 4024
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -9
	ori $a1, $a1, 4016
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.d $a1, $a1, 0
	bl KMP
	lu12i.w $t8, -9
	ori $t8, $t8, 4012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# call void @putint(i32  %op8)
	lu12i.w $a0, -9
	ori $a0, $a0, 4012
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	lu12i.w $t0, 8
	ori $t0, $t0, 96
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
