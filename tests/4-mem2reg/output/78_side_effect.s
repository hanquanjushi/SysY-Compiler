# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 4
a:
	.word -1
	.globl b
	.data
	.type b, @object
	.size b, 4
b:
	.word 1
	.text
	.globl inc_a
	.type inc_a, @function
inc_a:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.inc_a_label_entry:
# %op0 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = add i32  %op0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -24
# store i32  %op1, i32 * @a
	la.local $t0, a
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op2 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# ret i32  %op2
	ld.w $a0, $fp, -28
	b inc_a_ret
inc_a_ret:
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
	addi.d $sp, $sp, -144
.main_label_entry:
# br label %label0
	addi.w $t0, $zero, 5
	st.w $t0, $fp, -20
	b .main_label0
.main_label0:
# %op1 = phi i32  [ 5, %label_entry ], [ %op33, %label32 ]
# %op2 = icmp sge i32  %op1, 0
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 0
	bge  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -21
# %op3 = zext i1  %op2 to i32 
	ld.b $t0, $fp, -21
	st.w $t0, $fp, -28
# %op4 = icmp ne i32  %op3, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -29
# br i1  %op4, label %label5, label %label8
	ld.b $t0, $fp, -29
	bnez $t0, .main_label5
	b .main_label8
.main_label5:
# %op6 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -36
# %op7 = icmp ne i32  %op6, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -37
# br i1  %op7, label %label23, label %label15
	ld.b $t0, $fp, -37
	bnez $t0, .main_label23
	b .main_label15
.main_label8:
# %op9 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# call void @putint(i32  %op9)
	ld.w $a0, $fp, -44
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op10 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# call void @putint(i32  %op10)
	ld.w $a0, $fp, -48
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op11 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# ret i32  %op11
	ld.w $a0, $fp, -52
	b main_ret
.main_label12:
# %op13 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @putint(i32  %op13)
	ld.w $a0, $fp, -56
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op14 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# call void @putint(i32  %op14)
	ld.w $a0, $fp, -60
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# br label %label15
	b .main_label15
.main_label15:
# %op16 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -64
# %op17 = icmp slt i32  %op16, 14
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 14
	slt $t2, $t0, $t1
	st.b $t2, $fp, -65
# %op18 = zext i1  %op17 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op19 = icmp ne i32  %op18, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -73
# br i1  %op19, label %label26, label %label34
	ld.b $t0, $fp, -73
	bnez $t0, .main_label26
	b .main_label34
.main_label20:
# %op21 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -80
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -81
# br i1  %op22, label %label12, label %label15
	ld.b $t0, $fp, -81
	bnez $t0, .main_label12
	b .main_label15
.main_label23:
# %op24 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -88
# %op25 = icmp ne i32  %op24, 0
	ld.w $t0, $fp, -88
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -89
# br i1  %op25, label %label20, label %label15
	ld.b $t0, $fp, -89
	bnez $t0, .main_label20
	b .main_label15
.main_label26:
# %op27 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# call void @putint(i32  %op27)
	ld.w $a0, $fp, -96
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op28 = load i32 , i32 * @b
	la.local $t0, b
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -100
# %op29 = mul i32  %op28, 2
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 2
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -104
# store i32  %op29, i32 * @b
	la.local $t0, b
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label32
	b .main_label32
.main_label30:
# %op31 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -108
# br label %label32
	b .main_label32
.main_label32:
# %op33 = sub i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -112
# br label %label0
	ld.w $t0, $fp, -112
	st.w $t0, $fp, -20
	b .main_label0
.main_label34:
# %op35 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -116
# %op36 = icmp ne i32  %op35, 0
	ld.w $t0, $fp, -116
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -117
# br i1  %op36, label %label37, label %label30
	ld.b $t0, $fp, -117
	bnez $t0, .main_label37
	b .main_label30
.main_label37:
# %op38 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -124
# %op39 = call i32  @inc_a()
	bl inc_a
	st.w $a0, $fp, -128
# %op40 = sub i32  %op38, %op39
	ld.w $t0, $fp, -124
	ld.w $t1, $fp, -128
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -132
# %op41 = add i32  %op40, 1
	ld.w $t0, $fp, -132
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -136
# %op42 = icmp ne i32  %op41, 0
	ld.w $t0, $fp, -136
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -137
# br i1  %op42, label %label26, label %label30
	ld.b $t0, $fp, -137
	bnez $t0, .main_label26
	b .main_label30
main_ret:
	addi.d $sp, $sp, 144
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
