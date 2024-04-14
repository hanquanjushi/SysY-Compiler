# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.type a, @object
	.size a, 4
a:
	.space 4
	.globl b
	.type b, @object
	.size b, 4
b:
	.space 4
	.globl d
	.type d, @object
	.size d, 4
d:
	.space 4
	.text
	.globl set_a
	.type set_a, @function
set_a:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
.set_a_label_entry:
# store i32  %arg0, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# ret i32  %op1
	ld.w $a0, $fp, -24
	b set_a_ret
set_a_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl set_b
	.type set_b, @function
set_b:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
.set_b_label_entry:
# store i32  %arg0, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# ret i32  %op1
	ld.w $a0, $fp, -24
	b set_b_ret
set_b_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl set_d
	.type set_d, @function
set_d:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
.set_d_label_entry:
# store i32  %arg0, i32 * @d
	la.local $t0, d
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# ret i32  %op1
	ld.w $a0, $fp, -24
	b set_d_ret
set_d_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -304
.main_label_entry:
# store i32  2, i32 * @a
	la.local $t0, a
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * @b
	la.local $t0, b
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op0 = call i32  @set_a(i32  0)
	addi.w $a0, $zero, 0
	bl set_a
	st.w $a0, $fp, -20
# %op1 = icmp ne i32  %op0, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -21
# br i1  %op1, label %label8, label %label3
	ld.b $t0, $fp, -21
	bnez $t0, .main_label8
	b .main_label3
.main_label2:
# br label %label3
	b .main_label3
.main_label3:
# %op4 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# call void @putint(i32  %op4)
	ld.w $a0, $fp, -28
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op5 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -32
# call void @putint(i32  %op5)
	ld.w $a0, $fp, -32
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# store i32  2, i32 * @a
	la.local $t0, a
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# store i32  3, i32 * @b
	la.local $t0, b
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op6 = call i32  @set_a(i32  0)
	addi.w $a0, $zero, 0
	bl set_a
	st.w $a0, $fp, -36
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -37
# br i1  %op7, label %label18, label %label12
	ld.b $t0, $fp, -37
	bnez $t0, .main_label18
	b .main_label12
.main_label8:
# %op9 = call i32  @set_b(i32  1)
	addi.w $a0, $zero, 1
	bl set_b
	st.w $a0, $fp, -44
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -45
# br i1  %op10, label %label2, label %label3
	ld.b $t0, $fp, -45
	bnez $t0, .main_label2
	b .main_label3
.main_label11:
# br label %label12
	b .main_label12
.main_label12:
# %op13 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# call void @putint(i32  %op13)
	ld.w $a0, $fp, -52
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op14 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -56
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# store i32  2, i32 * @d
	la.local $t0, d
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op15 = icmp sge i32  1, 1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 1
	bge  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -57
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -57
	st.w $t0, $fp, -64
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -65
# br i1  %op17, label %label27, label %label22
	ld.b $t0, $fp, -65
	bnez $t0, .main_label27
	b .main_label22
.main_label18:
# %op19 = call i32  @set_b(i32  1)
	addi.w $a0, $zero, 1
	bl set_b
	st.w $a0, $fp, -72
# %op20 = icmp ne i32  %op19, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -73
# br i1  %op20, label %label11, label %label12
	ld.b $t0, $fp, -73
	bnez $t0, .main_label11
	b .main_label12
.main_label21:
# br label %label22
	b .main_label22
.main_label22:
# %op23 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -80
# call void @putint(i32  %op23)
	ld.w $a0, $fp, -80
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op24 = icmp sle i32  1, 1
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 1
	bge  $t1, $t0, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -81
# %op25 = zext i1  %op24 to i32 
	ld.b $t0, $fp, -81
	st.w $t0, $fp, -88
# %op26 = icmp ne i32  %op25, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -89
# br i1  %op26, label %label30, label %label36
	ld.b $t0, $fp, -89
	bnez $t0, .main_label30
	b .main_label36
.main_label27:
# %op28 = call i32  @set_d(i32  3)
	addi.w $a0, $zero, 3
	bl set_d
	st.w $a0, $fp, -96
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -97
# br i1  %op29, label %label21, label %label22
	ld.b $t0, $fp, -97
	bnez $t0, .main_label21
	b .main_label22
.main_label30:
# br label %label31
	b .main_label31
.main_label31:
# %op32 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# call void @putint(i32  %op32)
	ld.w $a0, $fp, -104
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op33 = icmp sge i32  16, 0
	addi.w $t0, $zero, 16
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -105
# %op34 = zext i1  %op33 to i32 
	ld.b $t0, $fp, -105
	st.w $t0, $fp, -112
# %op35 = icmp ne i32  %op34, 0
	ld.w $t0, $fp, -112
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -113
# br i1  %op35, label %label39, label %label40
	ld.b $t0, $fp, -113
	bnez $t0, .main_label39
	b .main_label40
.main_label36:
# %op37 = call i32  @set_d(i32  4)
	addi.w $a0, $zero, 4
	bl set_d
	st.w $a0, $fp, -120
# %op38 = icmp ne i32  %op37, 0
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -121
# br i1  %op38, label %label30, label %label31
	ld.b $t0, $fp, -121
	bnez $t0, .main_label30
	b .main_label31
.main_label39:
# call void @putch(i32  65)
	addi.w $a0, $zero, 65
	bl putch
# br label %label40
	b .main_label40
.main_label40:
# %op41 = icmp ne i32  18, 18
	addi.w $t0, $zero, 18
	addi.w $t1, $zero, 18
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -122
# %op42 = zext i1  %op41 to i32 
	ld.b $t0, $fp, -122
	st.w $t0, $fp, -128
# %op43 = icmp ne i32  %op42, 0
	ld.w $t0, $fp, -128
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -129
# br i1  %op43, label %label44, label %label45
	ld.b $t0, $fp, -129
	bnez $t0, .main_label44
	b .main_label45
.main_label44:
# call void @putch(i32  66)
	addi.w $a0, $zero, 66
	bl putch
# br label %label45
	b .main_label45
.main_label45:
# %op46 = icmp slt i32  1, 8
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 8
	slt $t2, $t0, $t1
	st.b $t2, $fp, -130
# %op47 = zext i1  %op46 to i32 
	ld.b $t0, $fp, -130
	st.w $t0, $fp, -136
# %op48 = icmp ne i32  %op47, 1
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -137
# %op49 = zext i1  %op48 to i32 
	ld.b $t0, $fp, -137
	st.w $t0, $fp, -144
# %op50 = icmp ne i32  %op49, 0
	ld.w $t0, $fp, -144
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -145
# br i1  %op50, label %label51, label %label52
	ld.b $t0, $fp, -145
	bnez $t0, .main_label51
	b .main_label52
.main_label51:
# call void @putch(i32  67)
	addi.w $a0, $zero, 67
	bl putch
# br label %label52
	b .main_label52
.main_label52:
# %op53 = icmp sgt i32  3, 4
	addi.w $t0, $zero, 3
	addi.w $t1, $zero, 4
	slt $t2, $t1, $t0
	st.b $t2, $fp, -146
# %op54 = zext i1  %op53 to i32 
	ld.b $t0, $fp, -146
	st.w $t0, $fp, -152
# %op55 = icmp eq i32  %op54, 0
	ld.w $t0, $fp, -152
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -153
# %op56 = zext i1  %op55 to i32 
	ld.b $t0, $fp, -153
	st.w $t0, $fp, -160
# %op57 = icmp ne i32  %op56, 0
	ld.w $t0, $fp, -160
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -161
# br i1  %op57, label %label58, label %label59
	ld.b $t0, $fp, -161
	bnez $t0, .main_label58
	b .main_label59
.main_label58:
# call void @putch(i32  68)
	addi.w $a0, $zero, 68
	bl putch
# br label %label59
	b .main_label59
.main_label59:
# %op60 = icmp sle i32  102, 63
	addi.w $t0, $zero, 102
	addi.w $t1, $zero, 63
	bge  $t1, $t0, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -162
# %op61 = zext i1  %op60 to i32 
	ld.b $t0, $fp, -162
	st.w $t0, $fp, -168
# %op62 = icmp eq i32  1, %op61
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -168
	beq  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -169
# %op63 = zext i1  %op62 to i32 
	ld.b $t0, $fp, -169
	st.w $t0, $fp, -176
# %op64 = icmp ne i32  %op63, 0
	ld.w $t0, $fp, -176
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -177
# br i1  %op64, label %label65, label %label66
	ld.b $t0, $fp, -177
	bnez $t0, .main_label65
	b .main_label66
.main_label65:
# call void @putch(i32  69)
	addi.w $a0, $zero, 69
	bl putch
# br label %label66
	b .main_label66
.main_label66:
# %op67 = icmp eq i32  0, 0
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -178
# %op68 = zext i1  %op67 to i32 
	ld.b $t0, $fp, -178
	st.w $t0, $fp, -184
# %op69 = sub i32  0, %op68
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -184
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -188
# %op70 = icmp eq i32  -1, %op69
	addi.w $t0, $zero, -1
	ld.w $t1, $fp, -188
	beq  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -189
# %op71 = zext i1  %op70 to i32 
	ld.b $t0, $fp, -189
	st.w $t0, $fp, -196
# %op72 = icmp ne i32  %op71, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -197
# br i1  %op72, label %label73, label %label74
	ld.b $t0, $fp, -197
	bnez $t0, .main_label73
	b .main_label74
.main_label73:
# call void @putch(i32  70)
	addi.w $a0, $zero, 70
	bl putch
# br label %label74
	b .main_label74
.main_label74:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label75
	b .main_label75
.main_label75:
# %op76 = icmp ne i32  0, 0
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -198
# br i1  %op76, label %label80, label %label78
	ld.b $t0, $fp, -198
	bnez $t0, .main_label80
	b .main_label78
.main_label77:
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# br label %label75
	b .main_label75
.main_label78:
# %op79 = icmp ne i32  0, 0
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -199
# br i1  %op79, label %label82, label %label87
	ld.b $t0, $fp, -199
	bnez $t0, .main_label82
	b .main_label87
.main_label80:
# %op81 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -200
# br i1  %op81, label %label77, label %label78
	ld.b $t0, $fp, -200
	bnez $t0, .main_label77
	b .main_label78
.main_label82:
# call void @putch(i32  67)
	addi.w $a0, $zero, 67
	bl putch
# br label %label83
	b .main_label83
.main_label83:
# %op84 = icmp sge i32  0, 1
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 1
	bge  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -201
# %op85 = zext i1  %op84 to i32 
	ld.b $t0, $fp, -201
	st.w $t0, $fp, -208
# %op86 = icmp ne i32  %op85, 0
	ld.w $t0, $fp, -208
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -209
# br i1  %op86, label %label89, label %label94
	ld.b $t0, $fp, -209
	bnez $t0, .main_label89
	b .main_label94
.main_label87:
# %op88 = icmp ne i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -210
# br i1  %op88, label %label82, label %label83
	ld.b $t0, $fp, -210
	bnez $t0, .main_label82
	b .main_label83
.main_label89:
# call void @putch(i32  72)
	addi.w $a0, $zero, 72
	bl putch
# br label %label90
	b .main_label90
.main_label90:
# %op91 = icmp sge i32  2, 1
	addi.w $t0, $zero, 2
	addi.w $t1, $zero, 1
	bge  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -211
# %op92 = zext i1  %op91 to i32 
	ld.b $t0, $fp, -211
	st.w $t0, $fp, -216
# %op93 = icmp ne i32  %op92, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -217
# br i1  %op93, label %label105, label %label99
	ld.b $t0, $fp, -217
	bnez $t0, .main_label105
	b .main_label99
.main_label94:
# %op95 = icmp sle i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	bge  $t1, $t0, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -218
# %op96 = zext i1  %op95 to i32 
	ld.b $t0, $fp, -218
	st.w $t0, $fp, -224
# %op97 = icmp ne i32  %op96, 0
	ld.w $t0, $fp, -224
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -225
# br i1  %op97, label %label89, label %label90
	ld.b $t0, $fp, -225
	bnez $t0, .main_label89
	b .main_label90
.main_label98:
# call void @putch(i32  73)
	addi.w $a0, $zero, 73
	bl putch
# br label %label99
	b .main_label99
.main_label99:
# %op100 = icmp eq i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -226
# %op101 = zext i1  %op100 to i32 
	ld.b $t0, $fp, -226
	st.w $t0, $fp, -232
# %op102 = icmp eq i32  0, %op101
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -232
	beq  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -233
# %op103 = zext i1  %op102 to i32 
	ld.b $t0, $fp, -233
	st.w $t0, $fp, -240
# %op104 = icmp ne i32  %op103, 0
	ld.w $t0, $fp, -240
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -241
# br i1  %op104, label %label120, label %label116
	ld.b $t0, $fp, -241
	bnez $t0, .main_label120
	b .main_label116
.main_label105:
# %op106 = icmp ne i32  4, 3
	addi.w $t0, $zero, 4
	addi.w $t1, $zero, 3
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -242
# %op107 = zext i1  %op106 to i32 
	ld.b $t0, $fp, -242
	st.w $t0, $fp, -248
# %op108 = icmp ne i32  %op107, 0
	ld.w $t0, $fp, -248
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -249
# br i1  %op108, label %label98, label %label99
	ld.b $t0, $fp, -249
	bnez $t0, .main_label98
	b .main_label99
.main_label109:
# call void @putch(i32  74)
	addi.w $a0, $zero, 74
	bl putch
# br label %label110
	b .main_label110
.main_label110:
# %op111 = icmp eq i32  1, 0
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -250
# %op112 = zext i1  %op111 to i32 
	ld.b $t0, $fp, -250
	st.w $t0, $fp, -256
# %op113 = icmp eq i32  0, %op112
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -256
	beq  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -257
# %op114 = zext i1  %op113 to i32 
	ld.b $t0, $fp, -257
	st.w $t0, $fp, -264
# %op115 = icmp ne i32  %op114, 0
	ld.w $t0, $fp, -264
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -265
# br i1  %op115, label %label124, label %label126
	ld.b $t0, $fp, -265
	bnez $t0, .main_label124
	b .main_label126
.main_label116:
# %op117 = icmp sge i32  4, 4
	addi.w $t0, $zero, 4
	addi.w $t1, $zero, 4
	bge  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -266
# %op118 = zext i1  %op117 to i32 
	ld.b $t0, $fp, -266
	st.w $t0, $fp, -272
# %op119 = icmp ne i32  %op118, 0
	ld.w $t0, $fp, -272
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -273
# br i1  %op119, label %label109, label %label110
	ld.b $t0, $fp, -273
	bnez $t0, .main_label109
	b .main_label110
.main_label120:
# %op121 = icmp slt i32  3, 3
	addi.w $t0, $zero, 3
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -274
# %op122 = zext i1  %op121 to i32 
	ld.b $t0, $fp, -274
	st.w $t0, $fp, -280
# %op123 = icmp ne i32  %op122, 0
	ld.w $t0, $fp, -280
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -281
# br i1  %op123, label %label109, label %label116
	ld.b $t0, $fp, -281
	bnez $t0, .main_label109
	b .main_label116
.main_label124:
# call void @putch(i32  75)
	addi.w $a0, $zero, 75
	bl putch
# br label %label125
	b .main_label125
.main_label125:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label126:
# %op127 = icmp slt i32  3, 3
	addi.w $t0, $zero, 3
	addi.w $t1, $zero, 3
	slt $t2, $t0, $t1
	st.b $t2, $fp, -282
# %op128 = zext i1  %op127 to i32 
	ld.b $t0, $fp, -282
	st.w $t0, $fp, -288
# %op129 = icmp ne i32  %op128, 0
	ld.w $t0, $fp, -288
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -289
# br i1  %op129, label %label130, label %label125
	ld.b $t0, $fp, -289
	bnez $t0, .main_label130
	b .main_label125
.main_label130:
# %op131 = icmp sge i32  4, 4
	addi.w $t0, $zero, 4
	addi.w $t1, $zero, 4
	bge  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -290
# %op132 = zext i1  %op131 to i32 
	ld.b $t0, $fp, -290
	st.w $t0, $fp, -296
# %op133 = icmp ne i32  %op132, 0
	ld.w $t0, $fp, -296
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -297
# br i1  %op133, label %label124, label %label125
	ld.b $t0, $fp, -297
	bnez $t0, .main_label124
	b .main_label125
main_ret:
	addi.d $sp, $sp, 304
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
