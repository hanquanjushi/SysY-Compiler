# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl ascii_0
	.data
	.type ascii_0, @object
	.size ascii_0, 4
ascii_0:
	.word 48
	.text
	.globl my_getint
	.type my_getint, @function
my_getint:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -128
.my_getint_label_entry:
# br label %label0
	b .my_getint_label0
.my_getint_label0:
# %op1 = phi i32  [ %op6, %label12 ], [ undef, %label_entry ]
# %op2 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -21
# br i1  %op2, label %label3, label %label10
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -52
	ld.b $t0, $fp, -21
	bnez $t0, .my_getint_label3
	b .my_getint_label10
.my_getint_label3:
# %op4 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -28
# %op5 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# %op6 = sub i32  %op4, %op5
	ld.w $t0, $fp, -28
	ld.w $t1, $fp, -32
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -36
# %op7 = icmp slt i32  %op6, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	slt $t2, $t0, $t1
	st.b $t2, $fp, -37
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -45
# br i1  %op9, label %label12, label %label14
	ld.b $t0, $fp, -45
	bnez $t0, .my_getint_label12
	b .my_getint_label14
.my_getint_label10:
# %op11 = phi i32  [ %op1, %label0 ], [ %op6, %label13 ]
# br label %label18
	ld.w $t0, $fp, -52
	st.w $t0, $fp, -68
	b .my_getint_label18
.my_getint_label12:
# br label %label0
	ld.w $t0, $fp, -36
	st.w $t0, $fp, -20
	b .my_getint_label0
.my_getint_label13:
# br label %label10
	ld.w $t0, $fp, -36
	st.w $t0, $fp, -52
	b .my_getint_label10
.my_getint_label14:
# %op15 = icmp sgt i32  %op6, 9
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 9
	slt $t2, $t1, $t0
	st.b $t2, $fp, -53
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -53
	st.w $t0, $fp, -60
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -61
# br i1  %op17, label %label12, label %label13
	ld.b $t0, $fp, -61
	bnez $t0, .my_getint_label12
	b .my_getint_label13
.my_getint_label18:
# %op19 = phi i32  [ %op11, %label10 ], [ %op31, %label33 ]
# %op20 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -69
# br i1  %op20, label %label21, label %label28
	ld.b $t0, $fp, -69
	bnez $t0, .my_getint_label21
	b .my_getint_label28
.my_getint_label21:
# %op22 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -76
# %op23 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# %op24 = sub i32  %op22, %op23
	ld.w $t0, $fp, -76
	ld.w $t1, $fp, -80
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# %op25 = icmp sge i32  %op24, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -85
# %op26 = zext i1  %op25 to i32 
	ld.b $t0, $fp, -85
	st.w $t0, $fp, -92
# %op27 = icmp ne i32  %op26, 0
	ld.w $t0, $fp, -92
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -93
# br i1  %op27, label %label34, label %label32
	ld.b $t0, $fp, -93
	bnez $t0, .my_getint_label34
	b .my_getint_label32
.my_getint_label28:
# ret i32  %op19
	ld.w $a0, $fp, -68
	b my_getint_ret
.my_getint_label29:
# %op30 = mul i32  %op19, 10
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# %op31 = add i32  %op30, %op24
	ld.w $t0, $fp, -100
	ld.w $t1, $fp, -84
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# br label %label33
	b .my_getint_label33
.my_getint_label32:
# br label %label28
	b .my_getint_label28
.my_getint_label33:
# br label %label18
	ld.w $t0, $fp, -104
	st.w $t0, $fp, -68
	b .my_getint_label18
.my_getint_label34:
# %op35 = icmp sle i32  %op24, 9
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 9
	bge  $t1, $t0, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -105
# %op36 = zext i1  %op35 to i32 
	ld.b $t0, $fp, -105
	st.w $t0, $fp, -112
# %op37 = icmp ne i32  %op36, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -113
# br i1  %op37, label %label29, label %label32
	ld.b $t0, $fp, -113
	bnez $t0, .my_getint_label29
	b .my_getint_label32
my_getint_ret:
	addi.d $sp, $sp, 128
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl my_putint
	.type my_putint, @function
my_putint:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -192
	st.w $a0, $fp, -20
.my_putint_label_entry:
# %op1 = alloca [16 x i32 ]
	addi.d $t1, $fp, -96
	st.d $t1, $fp, -32
# br label %label2
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -100
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -104
	b .my_putint_label2
.my_putint_label2:
# %op3 = phi i32  [ 0, %label_entry ], [ %op14, %label8 ]
# %op4 = phi i32  [ %arg0, %label_entry ], [ %op13, %label8 ]
# %op5 = icmp sgt i32  %op4, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -105
# %op6 = zext i1  %op5 to i32 
	ld.b $t0, $fp, -105
	st.w $t0, $fp, -112
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -113
# br i1  %op7, label %label8, label %label15
	ld.b $t0, $fp, -113
	bnez $t0, .my_putint_label8
	b .my_putint_label15
.my_putint_label8:
# %op9 = srem i32  %op4, 10
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 10
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -120
# %op10 = load i32 , i32 * @ascii_0
	la.local $t0, ascii_0
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# %op11 = add i32  %op9, %op10
	ld.w $t0, $fp, -120
	ld.w $t1, $fp, -124
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -128
# %op12 = getelementptr [16 x i32 ], [16 x i32 ]* %op1, i32  0, i32  %op3
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -100
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -136
# store i32  %op11, i32 * %op12
	ld.d $t0, $fp, -136
	ld.w $t1, $fp, -128
	st.w $t1, $t0, 0
# %op13 = sdiv i32  %op4, 10
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 10
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -140
# %op14 = add i32  %op3, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -144
# br label %label2
	ld.w $t0, $fp, -144
	st.w $t0, $fp, -100
	ld.w $t0, $fp, -140
	st.w $t0, $fp, -104
	b .my_putint_label2
.my_putint_label15:
# br label %label16
	ld.w $t0, $fp, -100
	st.w $t0, $fp, -148
	b .my_putint_label16
.my_putint_label16:
# %op17 = phi i32  [ %op3, %label15 ], [ %op22, %label21 ]
# %op18 = icmp sgt i32  %op17, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -149
# %op19 = zext i1  %op18 to i32 
	ld.b $t0, $fp, -149
	st.w $t0, $fp, -156
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -157
# br i1  %op20, label %label21, label %label25
	ld.b $t0, $fp, -157
	bnez $t0, .my_putint_label21
	b .my_putint_label25
.my_putint_label21:
# %op22 = sub i32  %op17, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -164
# %op23 = getelementptr [16 x i32 ], [16 x i32 ]* %op1, i32  0, i32  %op22
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -164
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	st.d $t2, $fp, -176
# %op24 = load i32 , i32 * %op23
	ld.d $t0, $fp, -176
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -180
# call void @putch(i32  %op24)
	ld.w $a0, $fp, -180
	bl putch
# br label %label16
	ld.w $t0, $fp, -164
	st.w $t0, $fp, -148
	b .my_putint_label16
.my_putint_label25:
# ret void
	addi.d $a0, $zero, 0
	b my_putint_ret
my_putint_ret:
	addi.d $sp, $sp, 192
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.main_label_entry:
# %op0 = call i32  @my_getint()
	bl my_getint
	st.w $a0, $fp, -20
# br label %label1
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -24
	b .main_label1
.main_label1:
# %op2 = phi i32  [ %op0, %label_entry ], [ %op8, %label6 ]
# %op3 = icmp sgt i32  %op2, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -25
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -25
	st.w $t0, $fp, -32
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -33
# br i1  %op5, label %label6, label %label9
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label9
.main_label6:
# %op7 = call i32  @my_getint()
	bl my_getint
	st.w $a0, $fp, -40
# call void @my_putint(i32  %op7)
	ld.w $a0, $fp, -40
	bl my_putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op8 = sub i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# br label %label1
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -24
	b .main_label1
.main_label9:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
