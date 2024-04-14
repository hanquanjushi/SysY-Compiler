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
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.set_a_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# store i32  %op2, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b set_a_ret
set_a_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl set_b
	.type set_b, @function
set_b:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.set_b_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# store i32  %op2, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b set_b_ret
set_b_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl set_d
	.type set_d, @function
set_d:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.set_d_label_entry:
# %op1 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -40
# store i32  %op2, i32 * @d
	la.local $t0, d
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# %op3 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op3
	ld.w $a0, $fp, -44
	b set_d_ret
set_d_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -560
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
# br i1  %op7, label %label20, label %label12
	ld.b $t0, $fp, -37
	bnez $t0, .main_label20
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
# %op15 = alloca i32 
	addi.d $t1, $fp, -68
	st.d $t1, $fp, -64
# store i32  1, i32 * %op15
	ld.d $t0, $fp, -64
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# store i32  2, i32 * @d
	la.local $t0, d
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op16 = load i32 , i32 * %op15
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -72
# %op17 = icmp sge i32  %op16, 1
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 1
	bge  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -73
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -73
	st.w $t0, $fp, -80
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -81
# br i1  %op19, label %label30, label %label24
	ld.b $t0, $fp, -81
	bnez $t0, .main_label30
	b .main_label24
.main_label20:
# %op21 = call i32  @set_b(i32  1)
	addi.w $a0, $zero, 1
	bl set_b
	st.w $a0, $fp, -88
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -89
# br i1  %op22, label %label11, label %label12
	ld.b $t0, $fp, -89
	bnez $t0, .main_label11
	b .main_label12
.main_label23:
# br label %label24
	b .main_label24
.main_label24:
# %op25 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# call void @putint(i32  %op25)
	ld.w $a0, $fp, -96
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op26 = load i32 , i32 * %op15
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op27 = icmp sle i32  %op26, 1
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 1
	bge  $t1, $t0, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -101
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -101
	st.w $t0, $fp, -108
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -108
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -109
# br i1  %op29, label %label33, label %label39
	ld.b $t0, $fp, -109
	bnez $t0, .main_label33
	b .main_label39
.main_label30:
# %op31 = call i32  @set_d(i32  3)
	addi.w $a0, $zero, 3
	bl set_d
	st.w $a0, $fp, -116
# %op32 = icmp ne i32  %op31, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -117
# br i1  %op32, label %label23, label %label24
	ld.b $t0, $fp, -117
	bnez $t0, .main_label23
	b .main_label24
.main_label33:
# br label %label34
	b .main_label34
.main_label34:
# %op35 = load i32 , i32 * @d
	la.local $t0, d
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -124
# call void @putint(i32  %op35)
	ld.w $a0, $fp, -124
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op36 = icmp sge i32  16, 0
	addi.w $t0, $zero, 16
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -125
# %op37 = zext i1  %op36 to i32 
	ld.b $t0, $fp, -125
	st.w $t0, $fp, -132
# %op38 = icmp ne i32  %op37, 0
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -133
# br i1  %op38, label %label42, label %label43
	ld.b $t0, $fp, -133
	bnez $t0, .main_label42
	b .main_label43
.main_label39:
# %op40 = call i32  @set_d(i32  4)
	addi.w $a0, $zero, 4
	bl set_d
	st.w $a0, $fp, -140
# %op41 = icmp ne i32  %op40, 0
	ld.w $t0, $fp, -140
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -141
# br i1  %op41, label %label33, label %label34
	ld.b $t0, $fp, -141
	bnez $t0, .main_label33
	b .main_label34
.main_label42:
# call void @putch(i32  65)
	addi.w $a0, $zero, 65
	bl putch
# br label %label43
	b .main_label43
.main_label43:
# %op44 = icmp ne i32  18, 18
	addi.w $t0, $zero, 18
	addi.w $t1, $zero, 18
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -142
# %op45 = zext i1  %op44 to i32 
	ld.b $t0, $fp, -142
	st.w $t0, $fp, -148
# %op46 = icmp ne i32  %op45, 0
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -149
# br i1  %op46, label %label47, label %label48
	ld.b $t0, $fp, -149
	bnez $t0, .main_label47
	b .main_label48
.main_label47:
# call void @putch(i32  66)
	addi.w $a0, $zero, 66
	bl putch
# br label %label48
	b .main_label48
.main_label48:
# %op49 = icmp slt i32  1, 8
	addi.w $t0, $zero, 1
	addi.w $t1, $zero, 8
	slt $t2, $t0, $t1
	st.b $t2, $fp, -150
# %op50 = zext i1  %op49 to i32 
	ld.b $t0, $fp, -150
	st.w $t0, $fp, -156
# %op51 = icmp ne i32  %op50, 1
	ld.w $t0, $fp, -156
	addi.w $t1, $zero, 1
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -157
# %op52 = zext i1  %op51 to i32 
	ld.b $t0, $fp, -157
	st.w $t0, $fp, -164
# %op53 = icmp ne i32  %op52, 0
	ld.w $t0, $fp, -164
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -165
# br i1  %op53, label %label54, label %label55
	ld.b $t0, $fp, -165
	bnez $t0, .main_label54
	b .main_label55
.main_label54:
# call void @putch(i32  67)
	addi.w $a0, $zero, 67
	bl putch
# br label %label55
	b .main_label55
.main_label55:
# %op56 = icmp sgt i32  3, 4
	addi.w $t0, $zero, 3
	addi.w $t1, $zero, 4
	slt $t2, $t1, $t0
	st.b $t2, $fp, -166
# %op57 = zext i1  %op56 to i32 
	ld.b $t0, $fp, -166
	st.w $t0, $fp, -172
# %op58 = icmp eq i32  %op57, 0
	ld.w $t0, $fp, -172
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -173
# %op59 = zext i1  %op58 to i32 
	ld.b $t0, $fp, -173
	st.w $t0, $fp, -180
# %op60 = icmp ne i32  %op59, 0
	ld.w $t0, $fp, -180
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -181
# br i1  %op60, label %label61, label %label62
	ld.b $t0, $fp, -181
	bnez $t0, .main_label61
	b .main_label62
.main_label61:
# call void @putch(i32  68)
	addi.w $a0, $zero, 68
	bl putch
# br label %label62
	b .main_label62
.main_label62:
# %op63 = icmp sle i32  102, 63
	addi.w $t0, $zero, 102
	addi.w $t1, $zero, 63
	bge  $t1, $t0, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -182
# %op64 = zext i1  %op63 to i32 
	ld.b $t0, $fp, -182
	st.w $t0, $fp, -188
# %op65 = icmp eq i32  1, %op64
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -188
	beq  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -189
# %op66 = zext i1  %op65 to i32 
	ld.b $t0, $fp, -189
	st.w $t0, $fp, -196
# %op67 = icmp ne i32  %op66, 0
	ld.w $t0, $fp, -196
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -197
# br i1  %op67, label %label68, label %label69
	ld.b $t0, $fp, -197
	bnez $t0, .main_label68
	b .main_label69
.main_label68:
# call void @putch(i32  69)
	addi.w $a0, $zero, 69
	bl putch
# br label %label69
	b .main_label69
.main_label69:
# %op70 = icmp eq i32  0, 0
	addi.w $t0, $zero, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -198
# %op71 = zext i1  %op70 to i32 
	ld.b $t0, $fp, -198
	st.w $t0, $fp, -204
# %op72 = sub i32  0, %op71
	addi.w $t0, $zero, 0
	ld.w $t1, $fp, -204
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -208
# %op73 = icmp eq i32  -1, %op72
	addi.w $t0, $zero, -1
	ld.w $t1, $fp, -208
	beq  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -209
# %op74 = zext i1  %op73 to i32 
	ld.b $t0, $fp, -209
	st.w $t0, $fp, -216
# %op75 = icmp ne i32  %op74, 0
	ld.w $t0, $fp, -216
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -217
# br i1  %op75, label %label76, label %label77
	ld.b $t0, $fp, -217
	bnez $t0, .main_label76
	b .main_label77
.main_label76:
# call void @putch(i32  70)
	addi.w $a0, $zero, 70
	bl putch
# br label %label77
	b .main_label77
.main_label77:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op78 = alloca i32 
	addi.d $t1, $fp, -236
	st.d $t1, $fp, -232
# store i32  4, i32 * %op78
	ld.d $t0, $fp, -232
	addi.w $t1, $zero, 4
	st.w $t1, $t0, 0
# %op79 = alloca i32 
	addi.d $t1, $fp, -252
	st.d $t1, $fp, -248
# store i32  3, i32 * %op79
	ld.d $t0, $fp, -248
	addi.w $t1, $zero, 3
	st.w $t1, $t0, 0
# %op80 = alloca i32 
	addi.d $t1, $fp, -268
	st.d $t1, $fp, -264
# store i32  2, i32 * %op80
	ld.d $t0, $fp, -264
	addi.w $t1, $zero, 2
	st.w $t1, $t0, 0
# %op81 = alloca i32 
	addi.d $t1, $fp, -284
	st.d $t1, $fp, -280
# store i32  1, i32 * %op81
	ld.d $t0, $fp, -280
	addi.w $t1, $zero, 1
	st.w $t1, $t0, 0
# %op82 = alloca i32 
	addi.d $t1, $fp, -300
	st.d $t1, $fp, -296
# store i32  0, i32 * %op82
	ld.d $t0, $fp, -296
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# br label %label83
	b .main_label83
.main_label83:
# %op84 = load i32 , i32 * %op82
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -304
# %op85 = icmp ne i32  %op84, 0
	ld.w $t0, $fp, -304
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -305
# br i1  %op85, label %label90, label %label87
	ld.b $t0, $fp, -305
	bnez $t0, .main_label90
	b .main_label87
.main_label86:
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# br label %label83
	b .main_label83
.main_label87:
# %op88 = load i32 , i32 * %op82
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -312
# %op89 = icmp ne i32  %op88, 0
	ld.w $t0, $fp, -312
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -313
# br i1  %op89, label %label93, label %label100
	ld.b $t0, $fp, -313
	bnez $t0, .main_label93
	b .main_label100
.main_label90:
# %op91 = load i32 , i32 * %op81
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -320
# %op92 = icmp ne i32  %op91, 0
	ld.w $t0, $fp, -320
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -321
# br i1  %op92, label %label86, label %label87
	ld.b $t0, $fp, -321
	bnez $t0, .main_label86
	b .main_label87
.main_label93:
# call void @putch(i32  67)
	addi.w $a0, $zero, 67
	bl putch
# br label %label94
	b .main_label94
.main_label94:
# %op95 = load i32 , i32 * %op82
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -328
# %op96 = load i32 , i32 * %op81
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -332
# %op97 = icmp sge i32  %op95, %op96
	ld.w $t0, $fp, -328
	ld.w $t1, $fp, -332
	bge  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -333
# %op98 = zext i1  %op97 to i32 
	ld.b $t0, $fp, -333
	st.w $t0, $fp, -340
# %op99 = icmp ne i32  %op98, 0
	ld.w $t0, $fp, -340
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -341
# br i1  %op99, label %label103, label %label110
	ld.b $t0, $fp, -341
	bnez $t0, .main_label103
	b .main_label110
.main_label100:
# %op101 = load i32 , i32 * %op81
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -348
# %op102 = icmp ne i32  %op101, 0
	ld.w $t0, $fp, -348
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	st.b $t2, $fp, -349
# br i1  %op102, label %label93, label %label94
	ld.b $t0, $fp, -349
	bnez $t0, .main_label93
	b .main_label94
.main_label103:
# call void @putch(i32  72)
	addi.w $a0, $zero, 72
	bl putch
# br label %label104
	b .main_label104
.main_label104:
# %op105 = load i32 , i32 * %op80
	ld.d $t0, $fp, -264
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -356
# %op106 = load i32 , i32 * %op81
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -360
# %op107 = icmp sge i32  %op105, %op106
	ld.w $t0, $fp, -356
	ld.w $t1, $fp, -360
	bge  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	st.b $t2, $fp, -361
# %op108 = zext i1  %op107 to i32 
	ld.b $t0, $fp, -361
	st.w $t0, $fp, -368
# %op109 = icmp ne i32  %op108, 0
	ld.w $t0, $fp, -368
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	st.b $t2, $fp, -369
# br i1  %op109, label %label125, label %label117
	ld.b $t0, $fp, -369
	bnez $t0, .main_label125
	b .main_label117
.main_label110:
# %op111 = load i32 , i32 * %op81
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -376
# %op112 = load i32 , i32 * %op82
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -380
# %op113 = icmp sle i32  %op111, %op112
	ld.w $t0, $fp, -376
	ld.w $t1, $fp, -380
	bge  $t1, $t0, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	st.b $t2, $fp, -381
# %op114 = zext i1  %op113 to i32 
	ld.b $t0, $fp, -381
	st.w $t0, $fp, -388
# %op115 = icmp ne i32  %op114, 0
	ld.w $t0, $fp, -388
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	st.b $t2, $fp, -389
# br i1  %op115, label %label103, label %label104
	ld.b $t0, $fp, -389
	bnez $t0, .main_label103
	b .main_label104
.main_label116:
# call void @putch(i32  73)
	addi.w $a0, $zero, 73
	bl putch
# br label %label117
	b .main_label117
.main_label117:
# %op118 = load i32 , i32 * %op82
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -396
# %op119 = load i32 , i32 * %op81
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -400
# %op120 = icmp eq i32  %op119, 0
	ld.w $t0, $fp, -400
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	st.b $t2, $fp, -401
# %op121 = zext i1  %op120 to i32 
	ld.b $t0, $fp, -401
	st.w $t0, $fp, -408
# %op122 = icmp eq i32  %op118, %op121
	ld.w $t0, $fp, -396
	ld.w $t1, $fp, -408
	beq  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	st.b $t2, $fp, -409
# %op123 = zext i1  %op122 to i32 
	ld.b $t0, $fp, -409
	st.w $t0, $fp, -416
# %op124 = icmp ne i32  %op123, 0
	ld.w $t0, $fp, -416
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	st.b $t2, $fp, -417
# br i1  %op124, label %label146, label %label140
	ld.b $t0, $fp, -417
	bnez $t0, .main_label146
	b .main_label140
.main_label125:
# %op126 = load i32 , i32 * %op78
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -424
# %op127 = load i32 , i32 * %op79
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -428
# %op128 = icmp ne i32  %op126, %op127
	ld.w $t0, $fp, -424
	ld.w $t1, $fp, -428
	bne  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	st.b $t2, $fp, -429
# %op129 = zext i1  %op128 to i32 
	ld.b $t0, $fp, -429
	st.w $t0, $fp, -436
# %op130 = icmp ne i32  %op129, 0
	ld.w $t0, $fp, -436
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	st.b $t2, $fp, -437
# br i1  %op130, label %label116, label %label117
	ld.b $t0, $fp, -437
	bnez $t0, .main_label116
	b .main_label117
.main_label131:
# call void @putch(i32  74)
	addi.w $a0, $zero, 74
	bl putch
# br label %label132
	b .main_label132
.main_label132:
# %op133 = load i32 , i32 * %op82
	ld.d $t0, $fp, -296
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -444
# %op134 = load i32 , i32 * %op81
	ld.d $t0, $fp, -280
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -448
# %op135 = icmp eq i32  %op134, 0
	ld.w $t0, $fp, -448
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	st.b $t2, $fp, -449
# %op136 = zext i1  %op135 to i32 
	ld.b $t0, $fp, -449
	st.w $t0, $fp, -456
# %op137 = icmp eq i32  %op133, %op136
	ld.w $t0, $fp, -444
	ld.w $t1, $fp, -456
	beq  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -457
# %op138 = zext i1  %op137 to i32 
	ld.b $t0, $fp, -457
	st.w $t0, $fp, -464
# %op139 = icmp ne i32  %op138, 0
	ld.w $t0, $fp, -464
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label43
	addi.d $t2, $zero, 0
	b false_label43
true_label43:
	addi.d $t2, $zero, 1
false_label43:
	st.b $t2, $fp, -465
# br i1  %op139, label %label152, label %label154
	ld.b $t0, $fp, -465
	bnez $t0, .main_label152
	b .main_label154
.main_label140:
# %op141 = load i32 , i32 * %op78
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -472
# %op142 = load i32 , i32 * %op78
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -476
# %op143 = icmp sge i32  %op141, %op142
	ld.w $t0, $fp, -472
	ld.w $t1, $fp, -476
	bge  $t0, $t1, true_label44
	addi.d $t2, $zero, 0
	b false_label44
true_label44:
	addi.d $t2, $zero, 1
false_label44:
	st.b $t2, $fp, -477
# %op144 = zext i1  %op143 to i32 
	ld.b $t0, $fp, -477
	st.w $t0, $fp, -484
# %op145 = icmp ne i32  %op144, 0
	ld.w $t0, $fp, -484
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label45
	addi.d $t2, $zero, 0
	b false_label45
true_label45:
	addi.d $t2, $zero, 1
false_label45:
	st.b $t2, $fp, -485
# br i1  %op145, label %label131, label %label132
	ld.b $t0, $fp, -485
	bnez $t0, .main_label131
	b .main_label132
.main_label146:
# %op147 = load i32 , i32 * %op79
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -492
# %op148 = load i32 , i32 * %op79
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -496
# %op149 = icmp slt i32  %op147, %op148
	ld.w $t0, $fp, -492
	ld.w $t1, $fp, -496
	slt $t2, $t0, $t1
	st.b $t2, $fp, -497
# %op150 = zext i1  %op149 to i32 
	ld.b $t0, $fp, -497
	st.w $t0, $fp, -504
# %op151 = icmp ne i32  %op150, 0
	ld.w $t0, $fp, -504
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label47
	addi.d $t2, $zero, 0
	b false_label47
true_label47:
	addi.d $t2, $zero, 1
false_label47:
	st.b $t2, $fp, -505
# br i1  %op151, label %label131, label %label140
	ld.b $t0, $fp, -505
	bnez $t0, .main_label131
	b .main_label140
.main_label152:
# call void @putch(i32  75)
	addi.w $a0, $zero, 75
	bl putch
# br label %label153
	b .main_label153
.main_label153:
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
.main_label154:
# %op155 = load i32 , i32 * %op79
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -512
# %op156 = load i32 , i32 * %op79
	ld.d $t0, $fp, -248
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -516
# %op157 = icmp slt i32  %op155, %op156
	ld.w $t0, $fp, -512
	ld.w $t1, $fp, -516
	slt $t2, $t0, $t1
	st.b $t2, $fp, -517
# %op158 = zext i1  %op157 to i32 
	ld.b $t0, $fp, -517
	st.w $t0, $fp, -524
# %op159 = icmp ne i32  %op158, 0
	ld.w $t0, $fp, -524
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label49
	addi.d $t2, $zero, 0
	b false_label49
true_label49:
	addi.d $t2, $zero, 1
false_label49:
	st.b $t2, $fp, -525
# br i1  %op159, label %label160, label %label153
	ld.b $t0, $fp, -525
	bnez $t0, .main_label160
	b .main_label153
.main_label160:
# %op161 = load i32 , i32 * %op78
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -532
# %op162 = load i32 , i32 * %op78
	ld.d $t0, $fp, -232
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -536
# %op163 = icmp sge i32  %op161, %op162
	ld.w $t0, $fp, -532
	ld.w $t1, $fp, -536
	bge  $t0, $t1, true_label50
	addi.d $t2, $zero, 0
	b false_label50
true_label50:
	addi.d $t2, $zero, 1
false_label50:
	st.b $t2, $fp, -537
# %op164 = zext i1  %op163 to i32 
	ld.b $t0, $fp, -537
	st.w $t0, $fp, -544
# %op165 = icmp ne i32  %op164, 0
	ld.w $t0, $fp, -544
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label51
	addi.d $t2, $zero, 0
	b false_label51
true_label51:
	addi.d $t2, $zero, 1
false_label51:
	st.b $t2, $fp, -545
# br i1  %op165, label %label152, label %label153
	ld.b $t0, $fp, -545
	bnez $t0, .main_label152
	b .main_label153
main_ret:
	addi.d $sp, $sp, 560
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
