	.text
	.globl get_next
	.type get_next, @function
get_next:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -288
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
.get_next_label_entry:
# %op2 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op3 = alloca i32 *
	addi.d $t1, $fp, -64
	st.d $t1, $fp, -56
# store i32 * %arg1, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op4 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -72
# %op5 = getelementptr i32 , i32 * %op4, i32  0
	ld.d $t0, $fp, -72
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  -1, i32 * %op5
	ld.d $t0, $fp, -80
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  -1, i32 * %op6
	ld.d $t0, $fp, -88
	addi.w $t1, $zero, -1
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -108
	st.d $t1, $fp, -104
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label8
	b .get_next_label8
.get_next_label8:
# %op9 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op10 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -120
# %op11 = getelementptr i32 , i32 * %op10, i32  %op9
	ld.d $t0, $fp, -120
	ld.w $t1, $fp, -112
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -128
# %op12 = load i32 , i32 * %op11
	ld.d $t0, $fp, -128
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -133
# br i1  %op13, label %label14, label %label19
	ld.b $t0, $fp, -133
	bnez $t0, .get_next_label14
	b .get_next_label19
.get_next_label14:
# %op15 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op16 = icmp eq i32  %op15, -1
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, -1
	beq  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -141
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -141
	st.w $t0, $fp, -148
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -149
# br i1  %op18, label %label20, label %label35
	ld.b $t0, $fp, -149
	bnez $t0, .get_next_label20
	b .get_next_label35
.get_next_label19:
# ret void
	addi.d $a0, $zero, 0
	b get_next_ret
.get_next_label20:
# %op21 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op22 = add i32  %op21, 1
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -160
# store i32  %op22, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -160
	st.w $t1, $t0, 0
# %op23 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# %op24 = add i32  %op23, 1
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -168
# store i32  %op24, i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $fp, -168
	st.w $t1, $t0, 0
# %op25 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -172
# %op26 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -176
# %op27 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -184
# %op28 = getelementptr i32 , i32 * %op27, i32  %op26
	ld.d $t0, $fp, -184
	ld.w $t1, $fp, -176
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -192
# store i32  %op25, i32 * %op28
	ld.d $t0, $fp, -192
	ld.w $t1, $fp, -172
	st.w $t1, $t0, 0
# br label %label34
	b .get_next_label34
.get_next_label29:
# %op30 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -196
# %op31 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -208
# %op32 = getelementptr i32 , i32 * %op31, i32  %op30
	ld.d $t0, $fp, -208
	ld.w $t1, $fp, -196
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -216
# %op33 = load i32 , i32 * %op32
	ld.d $t0, $fp, -216
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -220
# store i32  %op33, i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -220
	st.w $t1, $t0, 0
# br label %label34
	b .get_next_label34
.get_next_label34:
# br label %label8
	b .get_next_label8
.get_next_label35:
# %op36 = load i32 , i32 * %op7
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -224
# %op37 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -232
# %op38 = getelementptr i32 , i32 * %op37, i32  %op36
	ld.d $t0, $fp, -232
	ld.w $t1, $fp, -224
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -240
# %op39 = load i32 , i32 * %op38
	ld.d $t0, $fp, -240
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -244
# %op40 = load i32 , i32 * %op6
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -248
# %op41 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -256
# %op42 = getelementptr i32 , i32 * %op41, i32  %op40
	ld.d $t0, $fp, -256
	ld.w $t1, $fp, -248
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -264
# %op43 = load i32 , i32 * %op42
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -268
# %op44 = icmp eq i32  %op39, %op43
	ld.w $t0, $fp, -244
	ld.w $t1, $fp, -268
	beq  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -269
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -269
	st.w $t0, $fp, -276
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -276
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -277
# br i1  %op46, label %label20, label %label29
	ld.b $t0, $fp, -277
	bnez $t0, .get_next_label20
	b .get_next_label29
get_next_ret:
	addi.d $sp, $sp, 288
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl KMP
	.type KMP, @function
KMP:
	lu12i.w $t0, 4
	ori $t0, $t0, 320
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.d $a0, $fp, -24
	st.d $a1, $fp, -32
.KMP_label_entry:
# %op2 = alloca i32 *
	addi.d $t1, $fp, -48
	st.d $t1, $fp, -40
# store i32 * %arg0, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op3 = alloca i32 *
	addi.d $t1, $fp, -64
	st.d $t1, $fp, -56
# store i32 * %arg1, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $fp, -32
	st.d $t1, $t0, 0
# %op4 = alloca [4096 x i32 ]
	lu12i.w $t0, -5
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	st.d $t1, $fp, -72
# %op5 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op6 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  0
	ld.d $t0, $fp, -72
	addi.d $t2, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# call void @get_next(i32 * %op5, i32 * %op6)
	lu12i.w $a0, -5
	ori $a0, $a0, 4016
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -5
	ori $a1, $a1, 4008
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.d $a1, $a1, 0
	bl get_next
# %op7 = alloca i32 
	lu12i.w $t0, -5
	ori $t0, $t0, 3996
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -5
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = alloca i32 
	lu12i.w $t0, -5
	ori $t0, $t0, 3980
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -5
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# store i32  0, i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label9
	b .KMP_label9
.KMP_label9:
# %op10 = load i32 , i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op11 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op12 = getelementptr i32 , i32 * %op11, i32  %op10
	lu12i.w $t0, -5
	ori $t0, $t0, 3968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3976
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op13 = load i32 , i32 * %op12
	lu12i.w $t0, -5
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3956
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op14 = icmp ne i32  %op13, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3956
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
	ori $t8, $t8, 3955
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op14, label %label15, label %label27
	lu12i.w $t0, -5
	ori $t0, $t0, 3955
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label15
	b .KMP_label27
.KMP_label15:
# %op16 = load i32 , i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
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
# %op17 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op18 = getelementptr i32 , i32 * %op17, i32  %op16
	lu12i.w $t0, -5
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3948
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op19 = load i32 , i32 * %op18
	lu12i.w $t0, -5
	ori $t0, $t0, 3928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op20 = load i32 , i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op21 = load i32 *, i32 ** %op3
	ld.d $t0, $fp, -56
	ld.d $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op22 = getelementptr i32 , i32 * %op21, i32  %op20
	lu12i.w $t0, -5
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3920
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op23 = load i32 , i32 * %op22
	lu12i.w $t0, -5
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3900
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op24 = icmp eq i32  %op19, %op23
	lu12i.w $t0, -5
	ori $t0, $t0, 3924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3900
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
	ori $t8, $t8, 3899
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op25 = zext i1  %op24 to i32 
	lu12i.w $t0, -5
	ori $t0, $t0, 3899
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op26 = icmp ne i32  %op25, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3892
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
	ori $t8, $t8, 3891
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op26, label %label28, label %label38
	lu12i.w $t0, -5
	ori $t0, $t0, 3891
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label28
	b .KMP_label38
.KMP_label27:
# ret i32  -1
	addi.w $a0, $zero, -1
	b KMP_ret
.KMP_label28:
# %op29 = load i32 , i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3884
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op30 = add i32  %op29, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 3884
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op30, i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3880
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op31 = load i32 , i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op32 = add i32  %op31, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 3876
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op32, i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3872
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op33 = load i32 , i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3868
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op34 = load i32 *, i32 ** %op2
	ld.d $t0, $fp, -40
	ld.d $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op35 = getelementptr i32 , i32 * %op34, i32  %op33
	lu12i.w $t0, -5
	ori $t0, $t0, 3856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3868
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t0, $t8, 0
# %op36 = load i32 , i32 * %op35
	lu12i.w $t0, -5
	ori $t0, $t0, 3848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op37 = icmp eq i32  %op36, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3844
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
	ori $t8, $t8, 3843
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op37, label %label47, label %label49
	lu12i.w $t0, -5
	ori $t0, $t0, 3843
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label47
	b .KMP_label49
.KMP_label38:
# %op39 = load i32 , i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3836
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op40 = getelementptr [4096 x i32 ], [4096 x i32 ]* %op4, i32  0, i32  %op39
	ld.d $t0, $fp, -72
	lu12i.w $t1, -5
	ori $t1, $t1, 3836
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op41 = load i32 , i32 * %op40
	lu12i.w $t0, -5
	ori $t0, $t0, 3824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3820
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# store i32  %op41, i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3820
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op42 = load i32 , i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op43 = icmp eq i32  %op42, -1
	lu12i.w $t0, -5
	ori $t0, $t0, 3816
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
	ori $t8, $t8, 3815
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op44 = zext i1  %op43 to i32 
	lu12i.w $t0, -5
	ori $t0, $t0, 3815
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op45 = icmp ne i32  %op44, 0
	lu12i.w $t0, -5
	ori $t0, $t0, 3808
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
	ori $t8, $t8, 3807
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op45, label %label50, label %label55
	lu12i.w $t0, -5
	ori $t0, $t0, 3807
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .KMP_label50
	b .KMP_label55
.KMP_label46:
# br label %label9
	b .KMP_label9
.KMP_label47:
# %op48 = load i32 , i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# ret i32  %op48
	lu12i.w $a0, -5
	ori $a0, $a0, 3800
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b KMP_ret
.KMP_label49:
# br label %label46
	b .KMP_label46
.KMP_label50:
# %op51 = load i32 , i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op52 = add i32  %op51, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 3796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op52, i32 * %op8
	lu12i.w $t0, -5
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3792
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op53 = load i32 , i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -5
	ori $t8, $t8, 3788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op54 = add i32  %op53, 1
	lu12i.w $t0, -5
	ori $t0, $t0, 3788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -5
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# store i32  %op54, i32 * %op7
	lu12i.w $t0, -5
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -5
	ori $t1, $t1, 3784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# br label %label55
	b .KMP_label55
.KMP_label55:
# br label %label46
	b .KMP_label46
KMP_ret:
	lu12i.w $t0, 4
	ori $t0, $t0, 320
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
	addi.d $sp, $sp, -160
	st.d $a0, $fp, -24
.read_str_label_entry:
# %op1 = alloca i32 *
	addi.d $t1, $fp, -40
	st.d $t1, $fp, -32
# store i32 * %arg0, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $fp, -24
	st.d $t1, $t0, 0
# %op2 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -48
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label3
	b .read_str_label3
.read_str_label3:
# %op4 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -53
# br i1  %op4, label %label5, label %label17
	ld.b $t0, $fp, -53
	bnez $t0, .read_str_label5
	b .read_str_label17
.read_str_label5:
# %op6 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -60
# %op7 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# %op8 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -72
# %op9 = getelementptr i32 , i32 * %op8, i32  %op7
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -64
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  %op6, i32 * %op9
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# %op10 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op11 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -96
# %op12 = getelementptr i32 , i32 * %op11, i32  %op10
	ld.d $t0, $fp, -96
	ld.w $t1, $fp, -84
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -104
# %op13 = load i32 , i32 * %op12
	ld.d $t0, $fp, -104
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -108
# %op14 = icmp eq i32  %op13, 10
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -109
# %op15 = zext i1  %op14 to i32 
	ld.b $t0, $fp, -109
	st.w $t0, $fp, -116
# %op16 = icmp ne i32  %op15, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -117
# br i1  %op16, label %label22, label %label23
	ld.b $t0, $fp, -117
	bnez $t0, .read_str_label22
	b .read_str_label23
.read_str_label17:
# %op18 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op19 = load i32 *, i32 ** %op1
	ld.d $t0, $fp, -32
	ld.d $t1, $t0, 0
	st.d $t1, $fp, -136
# %op20 = getelementptr i32 , i32 * %op19, i32  %op18
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -124
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -144
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# ret i32  %op21
	ld.w $a0, $fp, -148
	b read_str_ret
.read_str_label22:
# br label %label17
	b .read_str_label17
.read_str_label23:
# %op24 = load i32 , i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -152
# %op25 = add i32  %op24, 1
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -156
# store i32  %op25, i32 * %op2
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -156
	st.w $t1, $t0, 0
# br label %label3
	b .read_str_label3
read_str_ret:
	addi.d $sp, $sp, 160
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
