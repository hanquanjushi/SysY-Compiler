# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl TOKEN_NUM
	.data
	.type TOKEN_NUM, @object
	.size TOKEN_NUM, 4
TOKEN_NUM:
	.word 0
	.globl TOKEN_OTHER
	.data
	.type TOKEN_OTHER, @object
	.size TOKEN_OTHER, 4
TOKEN_OTHER:
	.word 1
	.globl last_char
	.data
	.type last_char, @object
	.size last_char, 4
last_char:
	.word 32
	.globl num
	.type num, @object
	.size num, 4
num:
	.space 4
	.globl other
	.type other, @object
	.size other, 4
other:
	.space 4
	.globl cur_token
	.type cur_token, @object
	.size cur_token, 4
cur_token:
	.space 4
	.text
	.globl next_char
	.type next_char, @function
next_char:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.next_char_label_entry:
# %op0 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -20
# store i32  %op0, i32 * @last_char
	la.local $t0, last_char
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op1 = load i32 , i32 * @last_char
	la.local $t0, last_char
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -24
# ret i32  %op1
	ld.w $a0, $fp, -24
	b next_char_ret
next_char_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl is_space
	.type is_space, @function
is_space:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.is_space_label_entry:
# %op1 = icmp eq i32  %arg0, 32
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 32
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -21
# %op2 = zext i1  %op1 to i32 
	ld.b $t0, $fp, -21
	st.w $t0, $fp, -28
# %op3 = icmp ne i32  %op2, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -29
# br i1  %op3, label %label4, label %label6
	ld.b $t0, $fp, -29
	bnez $t0, .is_space_label4
	b .is_space_label6
.is_space_label4:
# ret i32  1
	addi.w $a0, $zero, 1
	b is_space_ret
.is_space_label5:
# ret i32  0
	addi.w $a0, $zero, 0
	b is_space_ret
.is_space_label6:
# %op7 = icmp eq i32  %arg0, 10
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -30
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -30
	st.w $t0, $fp, -36
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -37
# br i1  %op9, label %label4, label %label5
	ld.b $t0, $fp, -37
	bnez $t0, .is_space_label4
	b .is_space_label5
is_space_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl is_num
	.type is_num, @function
is_num:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.is_num_label_entry:
# %op1 = icmp sge i32  %arg0, 48
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 48
	bge  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -21
# %op2 = zext i1  %op1 to i32 
	ld.b $t0, $fp, -21
	st.w $t0, $fp, -28
# %op3 = icmp ne i32  %op2, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -29
# br i1  %op3, label %label6, label %label5
	ld.b $t0, $fp, -29
	bnez $t0, .is_num_label6
	b .is_num_label5
.is_num_label4:
# ret i32  1
	addi.w $a0, $zero, 1
	b is_num_ret
.is_num_label5:
# ret i32  0
	addi.w $a0, $zero, 0
	b is_num_ret
.is_num_label6:
# %op7 = icmp sle i32  %arg0, 57
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 57
	bge  $t1, $t0, true_label6
	addi.d $t2, $zero, 0
	b false_label6
true_label6:
	addi.d $t2, $zero, 1
false_label6:
	st.b $t2, $fp, -30
# %op8 = zext i1  %op7 to i32 
	ld.b $t0, $fp, -30
	st.w $t0, $fp, -36
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -37
# br i1  %op9, label %label4, label %label5
	ld.b $t0, $fp, -37
	bnez $t0, .is_num_label4
	b .is_num_label5
is_num_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl next_token
	.type next_token, @function
next_token:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
.next_token_label_entry:
# br label %label0
	b .next_token_label0
.next_token_label0:
# %op1 = load i32 , i32 * @last_char
	la.local $t0, last_char
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op2 = call i32  @is_space(i32  %op1)
	ld.w $a0, $fp, -20
	bl is_space
	st.w $a0, $fp, -24
# %op3 = icmp ne i32  %op2, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label8
	addi.d $t2, $zero, 0
	b false_label8
true_label8:
	addi.d $t2, $zero, 1
false_label8:
	st.b $t2, $fp, -25
# br i1  %op3, label %label4, label %label6
	ld.b $t0, $fp, -25
	bnez $t0, .next_token_label4
	b .next_token_label6
.next_token_label4:
# %op5 = call i32  @next_char()
	bl next_char
	st.w $a0, $fp, -32
# br label %label0
	b .next_token_label0
.next_token_label6:
# %op7 = load i32 , i32 * @last_char
	la.local $t0, last_char
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op8 = call i32  @is_num(i32  %op7)
	ld.w $a0, $fp, -36
	bl is_num
	st.w $a0, $fp, -40
# %op9 = icmp ne i32  %op8, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	st.b $t2, $fp, -41
# br i1  %op9, label %label10, label %label13
	ld.b $t0, $fp, -41
	bnez $t0, .next_token_label10
	b .next_token_label13
.next_token_label10:
# %op11 = load i32 , i32 * @last_char
	la.local $t0, last_char
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -48
# %op12 = sub i32  %op11, 48
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# store i32  %op12, i32 * @num
	la.local $t0, num
	ld.w $t1, $fp, -52
	st.w $t1, $t0, 0
# br label %label19
	b .next_token_label19
.next_token_label13:
# %op14 = load i32 , i32 * @last_char
	la.local $t0, last_char
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# store i32  %op14, i32 * @other
	la.local $t0, other
	ld.w $t1, $fp, -56
	st.w $t1, $t0, 0
# %op15 = call i32  @next_char()
	bl next_char
	st.w $a0, $fp, -60
# %op16 = load i32 , i32 * @TOKEN_OTHER
	la.local $t0, TOKEN_OTHER
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -64
# store i32  %op16, i32 * @cur_token
	la.local $t0, cur_token
	ld.w $t1, $fp, -64
	st.w $t1, $t0, 0
# br label %label17
	b .next_token_label17
.next_token_label17:
# %op18 = load i32 , i32 * @cur_token
	la.local $t0, cur_token
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# ret i32  %op18
	ld.w $a0, $fp, -68
	b next_token_ret
.next_token_label19:
# %op20 = call i32  @next_char()
	bl next_char
	st.w $a0, $fp, -72
# %op21 = call i32  @is_num(i32  %op20)
	ld.w $a0, $fp, -72
	bl is_num
	st.w $a0, $fp, -76
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -76
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label10
	addi.d $t2, $zero, 0
	b false_label10
true_label10:
	addi.d $t2, $zero, 1
false_label10:
	st.b $t2, $fp, -77
# br i1  %op22, label %label23, label %label29
	ld.b $t0, $fp, -77
	bnez $t0, .next_token_label23
	b .next_token_label29
.next_token_label23:
# %op24 = load i32 , i32 * @num
	la.local $t0, num
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -84
# %op25 = mul i32  %op24, 10
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 10
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# %op26 = load i32 , i32 * @last_char
	la.local $t0, last_char
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -92
# %op27 = add i32  %op25, %op26
	ld.w $t0, $fp, -88
	ld.w $t1, $fp, -92
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -96
# %op28 = sub i32  %op27, 48
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 48
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -100
# store i32  %op28, i32 * @num
	la.local $t0, num
	ld.w $t1, $fp, -100
	st.w $t1, $t0, 0
# br label %label19
	b .next_token_label19
.next_token_label29:
# %op30 = load i32 , i32 * @TOKEN_NUM
	la.local $t0, TOKEN_NUM
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -104
# store i32  %op30, i32 * @cur_token
	la.local $t0, cur_token
	ld.w $t1, $fp, -104
	st.w $t1, $t0, 0
# br label %label17
	b .next_token_label17
next_token_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl panic
	.type panic, @function
panic:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -16
.panic_label_entry:
# call void @putch(i32  112)
	addi.w $a0, $zero, 112
	bl putch
# call void @putch(i32  97)
	addi.w $a0, $zero, 97
	bl putch
# call void @putch(i32  110)
	addi.w $a0, $zero, 110
	bl putch
# call void @putch(i32  105)
	addi.w $a0, $zero, 105
	bl putch
# call void @putch(i32  99)
	addi.w $a0, $zero, 99
	bl putch
# call void @putch(i32  33)
	addi.w $a0, $zero, 33
	bl putch
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# ret i32  -1
	addi.w $a0, $zero, -1
	b panic_ret
panic_ret:
	addi.d $sp, $sp, 16
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl get_op_prec
	.type get_op_prec, @function
get_op_prec:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
.get_op_prec_label_entry:
# %op1 = icmp eq i32  %arg0, 43
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	st.b $t2, $fp, -21
# %op2 = zext i1  %op1 to i32 
	ld.b $t0, $fp, -21
	st.w $t0, $fp, -28
# %op3 = icmp ne i32  %op2, 0
	ld.w $t0, $fp, -28
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label12
	addi.d $t2, $zero, 0
	b false_label12
true_label12:
	addi.d $t2, $zero, 1
false_label12:
	st.b $t2, $fp, -29
# br i1  %op3, label %label4, label %label9
	ld.b $t0, $fp, -29
	bnez $t0, .get_op_prec_label4
	b .get_op_prec_label9
.get_op_prec_label4:
# ret i32  10
	addi.w $a0, $zero, 10
	b get_op_prec_ret
.get_op_prec_label5:
# %op6 = icmp eq i32  %arg0, 42
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	st.b $t2, $fp, -30
# %op7 = zext i1  %op6 to i32 
	ld.b $t0, $fp, -30
	st.w $t0, $fp, -36
# %op8 = icmp ne i32  %op7, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label14
	addi.d $t2, $zero, 0
	b false_label14
true_label14:
	addi.d $t2, $zero, 1
false_label14:
	st.b $t2, $fp, -37
# br i1  %op8, label %label13, label %label19
	ld.b $t0, $fp, -37
	bnez $t0, .get_op_prec_label13
	b .get_op_prec_label19
.get_op_prec_label9:
# %op10 = icmp eq i32  %arg0, 45
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	st.b $t2, $fp, -38
# %op11 = zext i1  %op10 to i32 
	ld.b $t0, $fp, -38
	st.w $t0, $fp, -44
# %op12 = icmp ne i32  %op11, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label16
	addi.d $t2, $zero, 0
	b false_label16
true_label16:
	addi.d $t2, $zero, 1
false_label16:
	st.b $t2, $fp, -45
# br i1  %op12, label %label4, label %label5
	ld.b $t0, $fp, -45
	bnez $t0, .get_op_prec_label4
	b .get_op_prec_label5
.get_op_prec_label13:
# ret i32  20
	addi.w $a0, $zero, 20
	b get_op_prec_ret
.get_op_prec_label14:
# ret i32  0
	addi.w $a0, $zero, 0
	b get_op_prec_ret
.get_op_prec_label15:
# %op16 = icmp eq i32  %arg0, 37
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	st.b $t2, $fp, -46
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -46
	st.w $t0, $fp, -52
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label18
	addi.d $t2, $zero, 0
	b false_label18
true_label18:
	addi.d $t2, $zero, 1
false_label18:
	st.b $t2, $fp, -53
# br i1  %op18, label %label13, label %label14
	ld.b $t0, $fp, -53
	bnez $t0, .get_op_prec_label13
	b .get_op_prec_label14
.get_op_prec_label19:
# %op20 = icmp eq i32  %arg0, 47
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	st.b $t2, $fp, -54
# %op21 = zext i1  %op20 to i32 
	ld.b $t0, $fp, -54
	st.w $t0, $fp, -60
# %op22 = icmp ne i32  %op21, 0
	ld.w $t0, $fp, -60
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label20
	addi.d $t2, $zero, 0
	b false_label20
true_label20:
	addi.d $t2, $zero, 1
false_label20:
	st.b $t2, $fp, -61
# br i1  %op22, label %label13, label %label15
	ld.b $t0, $fp, -61
	bnez $t0, .get_op_prec_label13
	b .get_op_prec_label15
get_op_prec_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl stack_push
	.type stack_push, @function
stack_push:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.d $a0, $fp, -24
	st.w $a1, $fp, -28
.stack_push_label_entry:
# %op2 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -40
# %op3 = load i32 , i32 * %op2
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# %op4 = add i32  %op3, 1
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# %op5 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -56
# store i32  %op4, i32 * %op5
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -48
	st.w $t1, $t0, 0
# %op6 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# %op7 = load i32 , i32 * %op6
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op8 = getelementptr i32 , i32 * %arg0, i32  %op7
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -68
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  %arg1, i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# ret void
	addi.d $a0, $zero, 0
	b stack_push_ret
stack_push_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl stack_pop
	.type stack_pop, @function
stack_pop:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -80
	st.d $a0, $fp, -24
.stack_pop_label_entry:
# %op1 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -32
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -36
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -48
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# %op5 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -64
# %op6 = load i32 , i32 * %op5
	ld.d $t0, $fp, -64
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -68
# %op7 = sub i32  %op6, 1
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# %op8 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -80
# store i32  %op7, i32 * %op8
	ld.d $t0, $fp, -80
	ld.w $t1, $fp, -72
	st.w $t1, $t0, 0
# ret i32  %op4
	ld.w $a0, $fp, -52
	b stack_pop_ret
stack_pop_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl stack_peek
	.type stack_peek, @function
stack_peek:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.d $a0, $fp, -24
.stack_peek_label_entry:
# %op1 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -32
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op3 = getelementptr i32 , i32 * %arg0, i32  %op2
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -36
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -48
# %op4 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -52
# ret i32  %op4
	ld.w $a0, $fp, -52
	b stack_peek_ret
stack_peek_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl stack_size
	.type stack_size, @function
stack_size:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.d $a0, $fp, -24
.stack_size_label_entry:
# %op1 = getelementptr i32 , i32 * %arg0, i32  0
	ld.d $t0, $fp, -24
	addi.w $t1, $zero, 0
	slli.d $t1, $t1, 2
	add.d $t0, $t0, $t1
	st.d $t0, $fp, -32
# %op2 = load i32 , i32 * %op1
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# ret i32  %op2
	ld.w $a0, $fp, -36
	b stack_size_ret
stack_size_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl eval_op
	.type eval_op, @function
eval_op:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -112
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
.eval_op_label_entry:
# %op3 = icmp eq i32  %arg0, 43
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 43
	beq  $t0, $t1, true_label21
	addi.d $t2, $zero, 0
	b false_label21
true_label21:
	addi.d $t2, $zero, 1
false_label21:
	st.b $t2, $fp, -29
# %op4 = zext i1  %op3 to i32 
	ld.b $t0, $fp, -29
	st.w $t0, $fp, -36
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label22
	addi.d $t2, $zero, 0
	b false_label22
true_label22:
	addi.d $t2, $zero, 1
false_label22:
	st.b $t2, $fp, -37
# br i1  %op5, label %label6, label %label8
	ld.b $t0, $fp, -37
	bnez $t0, .eval_op_label6
	b .eval_op_label8
.eval_op_label6:
# %op7 = add i32  %arg1, %arg2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# ret i32  %op7
	ld.w $a0, $fp, -44
	b eval_op_ret
.eval_op_label8:
# %op9 = icmp eq i32  %arg0, 45
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 45
	beq  $t0, $t1, true_label23
	addi.d $t2, $zero, 0
	b false_label23
true_label23:
	addi.d $t2, $zero, 1
false_label23:
	st.b $t2, $fp, -45
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -45
	st.w $t0, $fp, -52
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -52
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label24
	addi.d $t2, $zero, 0
	b false_label24
true_label24:
	addi.d $t2, $zero, 1
false_label24:
	st.b $t2, $fp, -53
# br i1  %op11, label %label12, label %label14
	ld.b $t0, $fp, -53
	bnez $t0, .eval_op_label12
	b .eval_op_label14
.eval_op_label12:
# %op13 = sub i32  %arg1, %arg2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# ret i32  %op13
	ld.w $a0, $fp, -60
	b eval_op_ret
.eval_op_label14:
# %op15 = icmp eq i32  %arg0, 42
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 42
	beq  $t0, $t1, true_label25
	addi.d $t2, $zero, 0
	b false_label25
true_label25:
	addi.d $t2, $zero, 1
false_label25:
	st.b $t2, $fp, -61
# %op16 = zext i1  %op15 to i32 
	ld.b $t0, $fp, -61
	st.w $t0, $fp, -68
# %op17 = icmp ne i32  %op16, 0
	ld.w $t0, $fp, -68
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label26
	addi.d $t2, $zero, 0
	b false_label26
true_label26:
	addi.d $t2, $zero, 1
false_label26:
	st.b $t2, $fp, -69
# br i1  %op17, label %label18, label %label20
	ld.b $t0, $fp, -69
	bnez $t0, .eval_op_label18
	b .eval_op_label20
.eval_op_label18:
# %op19 = mul i32  %arg1, %arg2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	mul.w $t2, $t0, $t1
	st.w $t2, $fp, -76
# ret i32  %op19
	ld.w $a0, $fp, -76
	b eval_op_ret
.eval_op_label20:
# %op21 = icmp eq i32  %arg0, 47
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 47
	beq  $t0, $t1, true_label27
	addi.d $t2, $zero, 0
	b false_label27
true_label27:
	addi.d $t2, $zero, 1
false_label27:
	st.b $t2, $fp, -77
# %op22 = zext i1  %op21 to i32 
	ld.b $t0, $fp, -77
	st.w $t0, $fp, -84
# %op23 = icmp ne i32  %op22, 0
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label28
	addi.d $t2, $zero, 0
	b false_label28
true_label28:
	addi.d $t2, $zero, 1
false_label28:
	st.b $t2, $fp, -85
# br i1  %op23, label %label24, label %label26
	ld.b $t0, $fp, -85
	bnez $t0, .eval_op_label24
	b .eval_op_label26
.eval_op_label24:
# %op25 = sdiv i32  %arg1, %arg2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	div.w $t2, $t0, $t1
	st.w $t2, $fp, -92
# ret i32  %op25
	ld.w $a0, $fp, -92
	b eval_op_ret
.eval_op_label26:
# %op27 = icmp eq i32  %arg0, 37
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 37
	beq  $t0, $t1, true_label29
	addi.d $t2, $zero, 0
	b false_label29
true_label29:
	addi.d $t2, $zero, 1
false_label29:
	st.b $t2, $fp, -93
# %op28 = zext i1  %op27 to i32 
	ld.b $t0, $fp, -93
	st.w $t0, $fp, -100
# %op29 = icmp ne i32  %op28, 0
	ld.w $t0, $fp, -100
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label30
	addi.d $t2, $zero, 0
	b false_label30
true_label30:
	addi.d $t2, $zero, 1
false_label30:
	st.b $t2, $fp, -101
# br i1  %op29, label %label30, label %label32
	ld.b $t0, $fp, -101
	bnez $t0, .eval_op_label30
	b .eval_op_label32
.eval_op_label30:
# %op31 = srem i32  %arg1, %arg2
	ld.w $t0, $fp, -24
	ld.w $t1, $fp, -28
	mod.w $t2, $t0, $t1
	st.w $t2, $fp, -108
# ret i32  %op31
	ld.w $a0, $fp, -108
	b eval_op_ret
.eval_op_label32:
# ret i32  0
	addi.w $a0, $zero, 0
	b eval_op_ret
eval_op_ret:
	addi.d $sp, $sp, 112
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl eval
	.type eval, @function
eval:
	lu12i.w $t0, 1
	ori $t0, $t0, 2432
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
.eval_label_entry:
# %op0 = alloca [256 x i32 ]
	addi.d $t1, $fp, -1048
	st.d $t1, $fp, -24
# %op1 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	st.d $t2, $fp, -1056
# store i32  0, i32 * %op1
	ld.d $t0, $fp, -1056
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op2 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  1
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 4
	st.d $t2, $fp, -1064
# store i32  0, i32 * %op2
	ld.d $t0, $fp, -1064
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op3 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  2
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 8
	st.d $t2, $fp, -1072
# store i32  0, i32 * %op3
	ld.d $t0, $fp, -1072
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op4 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  3
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 12
	st.d $t2, $fp, -1080
# store i32  0, i32 * %op4
	ld.d $t0, $fp, -1080
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op5 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  4
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -1088
# store i32  0, i32 * %op5
	ld.d $t0, $fp, -1088
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op6 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  5
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 20
	st.d $t2, $fp, -1096
# store i32  0, i32 * %op6
	ld.d $t0, $fp, -1096
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op7 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  6
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 24
	st.d $t2, $fp, -1104
# store i32  0, i32 * %op7
	ld.d $t0, $fp, -1104
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op8 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  7
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 28
	st.d $t2, $fp, -1112
# store i32  0, i32 * %op8
	ld.d $t0, $fp, -1112
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op9 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  8
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 32
	st.d $t2, $fp, -1120
# store i32  0, i32 * %op9
	ld.d $t0, $fp, -1120
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op10 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  9
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 36
	st.d $t2, $fp, -1128
# store i32  0, i32 * %op10
	ld.d $t0, $fp, -1128
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op11 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  10
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 40
	st.d $t2, $fp, -1136
# store i32  0, i32 * %op11
	ld.d $t0, $fp, -1136
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op12 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  11
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 44
	st.d $t2, $fp, -1144
# store i32  0, i32 * %op12
	ld.d $t0, $fp, -1144
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op13 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  12
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 48
	st.d $t2, $fp, -1152
# store i32  0, i32 * %op13
	ld.d $t0, $fp, -1152
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op14 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  13
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 52
	st.d $t2, $fp, -1160
# store i32  0, i32 * %op14
	ld.d $t0, $fp, -1160
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op15 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  14
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 56
	st.d $t2, $fp, -1168
# store i32  0, i32 * %op15
	ld.d $t0, $fp, -1168
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op16 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  15
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 60
	st.d $t2, $fp, -1176
# store i32  0, i32 * %op16
	ld.d $t0, $fp, -1176
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op17 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  16
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 64
	st.d $t2, $fp, -1184
# store i32  0, i32 * %op17
	ld.d $t0, $fp, -1184
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op18 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  17
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 68
	st.d $t2, $fp, -1192
# store i32  0, i32 * %op18
	ld.d $t0, $fp, -1192
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op19 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  18
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 72
	st.d $t2, $fp, -1200
# store i32  0, i32 * %op19
	ld.d $t0, $fp, -1200
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op20 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  19
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 76
	st.d $t2, $fp, -1208
# store i32  0, i32 * %op20
	ld.d $t0, $fp, -1208
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op21 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  20
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 80
	st.d $t2, $fp, -1216
# store i32  0, i32 * %op21
	ld.d $t0, $fp, -1216
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op22 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  21
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 84
	st.d $t2, $fp, -1224
# store i32  0, i32 * %op22
	ld.d $t0, $fp, -1224
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op23 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  22
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 88
	st.d $t2, $fp, -1232
# store i32  0, i32 * %op23
	ld.d $t0, $fp, -1232
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op24 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  23
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 92
	st.d $t2, $fp, -1240
# store i32  0, i32 * %op24
	ld.d $t0, $fp, -1240
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op25 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  24
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 96
	st.d $t2, $fp, -1248
# store i32  0, i32 * %op25
	ld.d $t0, $fp, -1248
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op26 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  25
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 100
	st.d $t2, $fp, -1256
# store i32  0, i32 * %op26
	ld.d $t0, $fp, -1256
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op27 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  26
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 104
	st.d $t2, $fp, -1264
# store i32  0, i32 * %op27
	ld.d $t0, $fp, -1264
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op28 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  27
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 108
	st.d $t2, $fp, -1272
# store i32  0, i32 * %op28
	ld.d $t0, $fp, -1272
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op29 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  28
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 112
	st.d $t2, $fp, -1280
# store i32  0, i32 * %op29
	ld.d $t0, $fp, -1280
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op30 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  29
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 116
	st.d $t2, $fp, -1288
# store i32  0, i32 * %op30
	ld.d $t0, $fp, -1288
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op31 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  30
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 120
	st.d $t2, $fp, -1296
# store i32  0, i32 * %op31
	ld.d $t0, $fp, -1296
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op32 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  31
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 124
	st.d $t2, $fp, -1304
# store i32  0, i32 * %op32
	ld.d $t0, $fp, -1304
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op33 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  32
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 128
	st.d $t2, $fp, -1312
# store i32  0, i32 * %op33
	ld.d $t0, $fp, -1312
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op34 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  33
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 132
	st.d $t2, $fp, -1320
# store i32  0, i32 * %op34
	ld.d $t0, $fp, -1320
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op35 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  34
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 136
	st.d $t2, $fp, -1328
# store i32  0, i32 * %op35
	ld.d $t0, $fp, -1328
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op36 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  35
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 140
	st.d $t2, $fp, -1336
# store i32  0, i32 * %op36
	ld.d $t0, $fp, -1336
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op37 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  36
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 144
	st.d $t2, $fp, -1344
# store i32  0, i32 * %op37
	ld.d $t0, $fp, -1344
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op38 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  37
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 148
	st.d $t2, $fp, -1352
# store i32  0, i32 * %op38
	ld.d $t0, $fp, -1352
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op39 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  38
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 152
	st.d $t2, $fp, -1360
# store i32  0, i32 * %op39
	ld.d $t0, $fp, -1360
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op40 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  39
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 156
	st.d $t2, $fp, -1368
# store i32  0, i32 * %op40
	ld.d $t0, $fp, -1368
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op41 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  40
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 160
	st.d $t2, $fp, -1376
# store i32  0, i32 * %op41
	ld.d $t0, $fp, -1376
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op42 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  41
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 164
	st.d $t2, $fp, -1384
# store i32  0, i32 * %op42
	ld.d $t0, $fp, -1384
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op43 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  42
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 168
	st.d $t2, $fp, -1392
# store i32  0, i32 * %op43
	ld.d $t0, $fp, -1392
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op44 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  43
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 172
	st.d $t2, $fp, -1400
# store i32  0, i32 * %op44
	ld.d $t0, $fp, -1400
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op45 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  44
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 176
	st.d $t2, $fp, -1408
# store i32  0, i32 * %op45
	ld.d $t0, $fp, -1408
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op46 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  45
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 180
	st.d $t2, $fp, -1416
# store i32  0, i32 * %op46
	ld.d $t0, $fp, -1416
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op47 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  46
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 184
	st.d $t2, $fp, -1424
# store i32  0, i32 * %op47
	ld.d $t0, $fp, -1424
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op48 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  47
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 188
	st.d $t2, $fp, -1432
# store i32  0, i32 * %op48
	ld.d $t0, $fp, -1432
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op49 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  48
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 192
	st.d $t2, $fp, -1440
# store i32  0, i32 * %op49
	ld.d $t0, $fp, -1440
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op50 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  49
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 196
	st.d $t2, $fp, -1448
# store i32  0, i32 * %op50
	ld.d $t0, $fp, -1448
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op51 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  50
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 200
	st.d $t2, $fp, -1456
# store i32  0, i32 * %op51
	ld.d $t0, $fp, -1456
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op52 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  51
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 204
	st.d $t2, $fp, -1464
# store i32  0, i32 * %op52
	ld.d $t0, $fp, -1464
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op53 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  52
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 208
	st.d $t2, $fp, -1472
# store i32  0, i32 * %op53
	ld.d $t0, $fp, -1472
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op54 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  53
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 212
	st.d $t2, $fp, -1480
# store i32  0, i32 * %op54
	ld.d $t0, $fp, -1480
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op55 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  54
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 216
	st.d $t2, $fp, -1488
# store i32  0, i32 * %op55
	ld.d $t0, $fp, -1488
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op56 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  55
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 220
	st.d $t2, $fp, -1496
# store i32  0, i32 * %op56
	ld.d $t0, $fp, -1496
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op57 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  56
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 224
	st.d $t2, $fp, -1504
# store i32  0, i32 * %op57
	ld.d $t0, $fp, -1504
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op58 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  57
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 228
	st.d $t2, $fp, -1512
# store i32  0, i32 * %op58
	ld.d $t0, $fp, -1512
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op59 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  58
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 232
	st.d $t2, $fp, -1520
# store i32  0, i32 * %op59
	ld.d $t0, $fp, -1520
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op60 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  59
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 236
	st.d $t2, $fp, -1528
# store i32  0, i32 * %op60
	ld.d $t0, $fp, -1528
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op61 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  60
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 240
	st.d $t2, $fp, -1536
# store i32  0, i32 * %op61
	ld.d $t0, $fp, -1536
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op62 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  61
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 244
	st.d $t2, $fp, -1544
# store i32  0, i32 * %op62
	ld.d $t0, $fp, -1544
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op63 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  62
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 248
	st.d $t2, $fp, -1552
# store i32  0, i32 * %op63
	ld.d $t0, $fp, -1552
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op64 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  63
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 252
	st.d $t2, $fp, -1560
# store i32  0, i32 * %op64
	ld.d $t0, $fp, -1560
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op65 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  64
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 256
	st.d $t2, $fp, -1568
# store i32  0, i32 * %op65
	ld.d $t0, $fp, -1568
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op66 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  65
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 260
	st.d $t2, $fp, -1576
# store i32  0, i32 * %op66
	ld.d $t0, $fp, -1576
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op67 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  66
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 264
	st.d $t2, $fp, -1584
# store i32  0, i32 * %op67
	ld.d $t0, $fp, -1584
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op68 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  67
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 268
	st.d $t2, $fp, -1592
# store i32  0, i32 * %op68
	ld.d $t0, $fp, -1592
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op69 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  68
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 272
	st.d $t2, $fp, -1600
# store i32  0, i32 * %op69
	ld.d $t0, $fp, -1600
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op70 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  69
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 276
	st.d $t2, $fp, -1608
# store i32  0, i32 * %op70
	ld.d $t0, $fp, -1608
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op71 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  70
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 280
	st.d $t2, $fp, -1616
# store i32  0, i32 * %op71
	ld.d $t0, $fp, -1616
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op72 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  71
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 284
	st.d $t2, $fp, -1624
# store i32  0, i32 * %op72
	ld.d $t0, $fp, -1624
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op73 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  72
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 288
	st.d $t2, $fp, -1632
# store i32  0, i32 * %op73
	ld.d $t0, $fp, -1632
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op74 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  73
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 292
	st.d $t2, $fp, -1640
# store i32  0, i32 * %op74
	ld.d $t0, $fp, -1640
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op75 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  74
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 296
	st.d $t2, $fp, -1648
# store i32  0, i32 * %op75
	ld.d $t0, $fp, -1648
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op76 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  75
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 300
	st.d $t2, $fp, -1656
# store i32  0, i32 * %op76
	ld.d $t0, $fp, -1656
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op77 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  76
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 304
	st.d $t2, $fp, -1664
# store i32  0, i32 * %op77
	ld.d $t0, $fp, -1664
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op78 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  77
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 308
	st.d $t2, $fp, -1672
# store i32  0, i32 * %op78
	ld.d $t0, $fp, -1672
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op79 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  78
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 312
	st.d $t2, $fp, -1680
# store i32  0, i32 * %op79
	ld.d $t0, $fp, -1680
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op80 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  79
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 316
	st.d $t2, $fp, -1688
# store i32  0, i32 * %op80
	ld.d $t0, $fp, -1688
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op81 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  80
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 320
	st.d $t2, $fp, -1696
# store i32  0, i32 * %op81
	ld.d $t0, $fp, -1696
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op82 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  81
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 324
	st.d $t2, $fp, -1704
# store i32  0, i32 * %op82
	ld.d $t0, $fp, -1704
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op83 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  82
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 328
	st.d $t2, $fp, -1712
# store i32  0, i32 * %op83
	ld.d $t0, $fp, -1712
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op84 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  83
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 332
	st.d $t2, $fp, -1720
# store i32  0, i32 * %op84
	ld.d $t0, $fp, -1720
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op85 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  84
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 336
	st.d $t2, $fp, -1728
# store i32  0, i32 * %op85
	ld.d $t0, $fp, -1728
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op86 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  85
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 340
	st.d $t2, $fp, -1736
# store i32  0, i32 * %op86
	ld.d $t0, $fp, -1736
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op87 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  86
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 344
	st.d $t2, $fp, -1744
# store i32  0, i32 * %op87
	ld.d $t0, $fp, -1744
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op88 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  87
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 348
	st.d $t2, $fp, -1752
# store i32  0, i32 * %op88
	ld.d $t0, $fp, -1752
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op89 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  88
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 352
	st.d $t2, $fp, -1760
# store i32  0, i32 * %op89
	ld.d $t0, $fp, -1760
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op90 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  89
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 356
	st.d $t2, $fp, -1768
# store i32  0, i32 * %op90
	ld.d $t0, $fp, -1768
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op91 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  90
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 360
	st.d $t2, $fp, -1776
# store i32  0, i32 * %op91
	ld.d $t0, $fp, -1776
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op92 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  91
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 364
	st.d $t2, $fp, -1784
# store i32  0, i32 * %op92
	ld.d $t0, $fp, -1784
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op93 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  92
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 368
	st.d $t2, $fp, -1792
# store i32  0, i32 * %op93
	ld.d $t0, $fp, -1792
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op94 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  93
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 372
	st.d $t2, $fp, -1800
# store i32  0, i32 * %op94
	ld.d $t0, $fp, -1800
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op95 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  94
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 376
	st.d $t2, $fp, -1808
# store i32  0, i32 * %op95
	ld.d $t0, $fp, -1808
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op96 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  95
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 380
	st.d $t2, $fp, -1816
# store i32  0, i32 * %op96
	ld.d $t0, $fp, -1816
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op97 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  96
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 384
	st.d $t2, $fp, -1824
# store i32  0, i32 * %op97
	ld.d $t0, $fp, -1824
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op98 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  97
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 388
	st.d $t2, $fp, -1832
# store i32  0, i32 * %op98
	ld.d $t0, $fp, -1832
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op99 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  98
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 392
	st.d $t2, $fp, -1840
# store i32  0, i32 * %op99
	ld.d $t0, $fp, -1840
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op100 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  99
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 396
	st.d $t2, $fp, -1848
# store i32  0, i32 * %op100
	ld.d $t0, $fp, -1848
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op101 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  100
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 400
	st.d $t2, $fp, -1856
# store i32  0, i32 * %op101
	ld.d $t0, $fp, -1856
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op102 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  101
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 404
	st.d $t2, $fp, -1864
# store i32  0, i32 * %op102
	ld.d $t0, $fp, -1864
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op103 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  102
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 408
	st.d $t2, $fp, -1872
# store i32  0, i32 * %op103
	ld.d $t0, $fp, -1872
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op104 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  103
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 412
	st.d $t2, $fp, -1880
# store i32  0, i32 * %op104
	ld.d $t0, $fp, -1880
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op105 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  104
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 416
	st.d $t2, $fp, -1888
# store i32  0, i32 * %op105
	ld.d $t0, $fp, -1888
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op106 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  105
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 420
	st.d $t2, $fp, -1896
# store i32  0, i32 * %op106
	ld.d $t0, $fp, -1896
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op107 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  106
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 424
	st.d $t2, $fp, -1904
# store i32  0, i32 * %op107
	ld.d $t0, $fp, -1904
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op108 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  107
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 428
	st.d $t2, $fp, -1912
# store i32  0, i32 * %op108
	ld.d $t0, $fp, -1912
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op109 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  108
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 432
	st.d $t2, $fp, -1920
# store i32  0, i32 * %op109
	ld.d $t0, $fp, -1920
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op110 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  109
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 436
	st.d $t2, $fp, -1928
# store i32  0, i32 * %op110
	ld.d $t0, $fp, -1928
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op111 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  110
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 440
	st.d $t2, $fp, -1936
# store i32  0, i32 * %op111
	ld.d $t0, $fp, -1936
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op112 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  111
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 444
	st.d $t2, $fp, -1944
# store i32  0, i32 * %op112
	ld.d $t0, $fp, -1944
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op113 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  112
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 448
	st.d $t2, $fp, -1952
# store i32  0, i32 * %op113
	ld.d $t0, $fp, -1952
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op114 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  113
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 452
	st.d $t2, $fp, -1960
# store i32  0, i32 * %op114
	ld.d $t0, $fp, -1960
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op115 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  114
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 456
	st.d $t2, $fp, -1968
# store i32  0, i32 * %op115
	ld.d $t0, $fp, -1968
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op116 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  115
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 460
	st.d $t2, $fp, -1976
# store i32  0, i32 * %op116
	ld.d $t0, $fp, -1976
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op117 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  116
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 464
	st.d $t2, $fp, -1984
# store i32  0, i32 * %op117
	ld.d $t0, $fp, -1984
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op118 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  117
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 468
	st.d $t2, $fp, -1992
# store i32  0, i32 * %op118
	ld.d $t0, $fp, -1992
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op119 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  118
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 472
	st.d $t2, $fp, -2000
# store i32  0, i32 * %op119
	ld.d $t0, $fp, -2000
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op120 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  119
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 476
	st.d $t2, $fp, -2008
# store i32  0, i32 * %op120
	ld.d $t0, $fp, -2008
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op121 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  120
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 480
	st.d $t2, $fp, -2016
# store i32  0, i32 * %op121
	ld.d $t0, $fp, -2016
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op122 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  121
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 484
	st.d $t2, $fp, -2024
# store i32  0, i32 * %op122
	ld.d $t0, $fp, -2024
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op123 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  122
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 488
	st.d $t2, $fp, -2032
# store i32  0, i32 * %op123
	ld.d $t0, $fp, -2032
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op124 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  123
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 492
	st.d $t2, $fp, -2040
# store i32  0, i32 * %op124
	ld.d $t0, $fp, -2040
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op125 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  124
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 496
	st.d $t2, $fp, -2048
# store i32  0, i32 * %op125
	ld.d $t0, $fp, -2048
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op126 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  125
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 500
	lu12i.w $t8, -1
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op126
	lu12i.w $t0, -1
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op127 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  126
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 504
	lu12i.w $t8, -1
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op127
	lu12i.w $t0, -1
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op128 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  127
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 508
	lu12i.w $t8, -1
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op128
	lu12i.w $t0, -1
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op129 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  128
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 512
	lu12i.w $t8, -1
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op129
	lu12i.w $t0, -1
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op130 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  129
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 516
	lu12i.w $t8, -1
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op130
	lu12i.w $t0, -1
	ori $t0, $t0, 2008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op131 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  130
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 520
	lu12i.w $t8, -1
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op131
	lu12i.w $t0, -1
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op132 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  131
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 524
	lu12i.w $t8, -1
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op132
	lu12i.w $t0, -1
	ori $t0, $t0, 1992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op133 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  132
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 528
	lu12i.w $t8, -1
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op133
	lu12i.w $t0, -1
	ori $t0, $t0, 1984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op134 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  133
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 532
	lu12i.w $t8, -1
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op134
	lu12i.w $t0, -1
	ori $t0, $t0, 1976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op135 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  134
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 536
	lu12i.w $t8, -1
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op135
	lu12i.w $t0, -1
	ori $t0, $t0, 1968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op136 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  135
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 540
	lu12i.w $t8, -1
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op136
	lu12i.w $t0, -1
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op137 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  136
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 544
	lu12i.w $t8, -1
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op137
	lu12i.w $t0, -1
	ori $t0, $t0, 1952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op138 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  137
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 548
	lu12i.w $t8, -1
	ori $t8, $t8, 1944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op138
	lu12i.w $t0, -1
	ori $t0, $t0, 1944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op139 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  138
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 552
	lu12i.w $t8, -1
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op139
	lu12i.w $t0, -1
	ori $t0, $t0, 1936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op140 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  139
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 556
	lu12i.w $t8, -1
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op140
	lu12i.w $t0, -1
	ori $t0, $t0, 1928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op141 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  140
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 560
	lu12i.w $t8, -1
	ori $t8, $t8, 1920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op141
	lu12i.w $t0, -1
	ori $t0, $t0, 1920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op142 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  141
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 564
	lu12i.w $t8, -1
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op142
	lu12i.w $t0, -1
	ori $t0, $t0, 1912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op143 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  142
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 568
	lu12i.w $t8, -1
	ori $t8, $t8, 1904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op143
	lu12i.w $t0, -1
	ori $t0, $t0, 1904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op144 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  143
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 572
	lu12i.w $t8, -1
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op144
	lu12i.w $t0, -1
	ori $t0, $t0, 1896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op145 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  144
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 576
	lu12i.w $t8, -1
	ori $t8, $t8, 1888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op145
	lu12i.w $t0, -1
	ori $t0, $t0, 1888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op146 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  145
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 580
	lu12i.w $t8, -1
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op146
	lu12i.w $t0, -1
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op147 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  146
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 584
	lu12i.w $t8, -1
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op147
	lu12i.w $t0, -1
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op148 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  147
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 588
	lu12i.w $t8, -1
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op148
	lu12i.w $t0, -1
	ori $t0, $t0, 1864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op149 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  148
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 592
	lu12i.w $t8, -1
	ori $t8, $t8, 1856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op149
	lu12i.w $t0, -1
	ori $t0, $t0, 1856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op150 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  149
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 596
	lu12i.w $t8, -1
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op150
	lu12i.w $t0, -1
	ori $t0, $t0, 1848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op151 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  150
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 600
	lu12i.w $t8, -1
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op151
	lu12i.w $t0, -1
	ori $t0, $t0, 1840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op152 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  151
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 604
	lu12i.w $t8, -1
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op152
	lu12i.w $t0, -1
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op153 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  152
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 608
	lu12i.w $t8, -1
	ori $t8, $t8, 1824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op153
	lu12i.w $t0, -1
	ori $t0, $t0, 1824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op154 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  153
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 612
	lu12i.w $t8, -1
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op154
	lu12i.w $t0, -1
	ori $t0, $t0, 1816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op155 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  154
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 616
	lu12i.w $t8, -1
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op155
	lu12i.w $t0, -1
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op156 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  155
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 620
	lu12i.w $t8, -1
	ori $t8, $t8, 1800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op156
	lu12i.w $t0, -1
	ori $t0, $t0, 1800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op157 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  156
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 624
	lu12i.w $t8, -1
	ori $t8, $t8, 1792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op157
	lu12i.w $t0, -1
	ori $t0, $t0, 1792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op158 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  157
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 628
	lu12i.w $t8, -1
	ori $t8, $t8, 1784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op158
	lu12i.w $t0, -1
	ori $t0, $t0, 1784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op159 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  158
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 632
	lu12i.w $t8, -1
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op159
	lu12i.w $t0, -1
	ori $t0, $t0, 1776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op160 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  159
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 636
	lu12i.w $t8, -1
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op160
	lu12i.w $t0, -1
	ori $t0, $t0, 1768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op161 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  160
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 640
	lu12i.w $t8, -1
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op161
	lu12i.w $t0, -1
	ori $t0, $t0, 1760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op162 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  161
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 644
	lu12i.w $t8, -1
	ori $t8, $t8, 1752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op162
	lu12i.w $t0, -1
	ori $t0, $t0, 1752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op163 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  162
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 648
	lu12i.w $t8, -1
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op163
	lu12i.w $t0, -1
	ori $t0, $t0, 1744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op164 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  163
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 652
	lu12i.w $t8, -1
	ori $t8, $t8, 1736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op164
	lu12i.w $t0, -1
	ori $t0, $t0, 1736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op165 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  164
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 656
	lu12i.w $t8, -1
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op165
	lu12i.w $t0, -1
	ori $t0, $t0, 1728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op166 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  165
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 660
	lu12i.w $t8, -1
	ori $t8, $t8, 1720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op166
	lu12i.w $t0, -1
	ori $t0, $t0, 1720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op167 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  166
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 664
	lu12i.w $t8, -1
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op167
	lu12i.w $t0, -1
	ori $t0, $t0, 1712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op168 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  167
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 668
	lu12i.w $t8, -1
	ori $t8, $t8, 1704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op168
	lu12i.w $t0, -1
	ori $t0, $t0, 1704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op169 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  168
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 672
	lu12i.w $t8, -1
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op169
	lu12i.w $t0, -1
	ori $t0, $t0, 1696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op170 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  169
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 676
	lu12i.w $t8, -1
	ori $t8, $t8, 1688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op170
	lu12i.w $t0, -1
	ori $t0, $t0, 1688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op171 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  170
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 680
	lu12i.w $t8, -1
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op171
	lu12i.w $t0, -1
	ori $t0, $t0, 1680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op172 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  171
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 684
	lu12i.w $t8, -1
	ori $t8, $t8, 1672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op172
	lu12i.w $t0, -1
	ori $t0, $t0, 1672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op173 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  172
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 688
	lu12i.w $t8, -1
	ori $t8, $t8, 1664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op173
	lu12i.w $t0, -1
	ori $t0, $t0, 1664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op174 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  173
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 692
	lu12i.w $t8, -1
	ori $t8, $t8, 1656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op174
	lu12i.w $t0, -1
	ori $t0, $t0, 1656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op175 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  174
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 696
	lu12i.w $t8, -1
	ori $t8, $t8, 1648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op175
	lu12i.w $t0, -1
	ori $t0, $t0, 1648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op176 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  175
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 700
	lu12i.w $t8, -1
	ori $t8, $t8, 1640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op176
	lu12i.w $t0, -1
	ori $t0, $t0, 1640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op177 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  176
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 704
	lu12i.w $t8, -1
	ori $t8, $t8, 1632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op177
	lu12i.w $t0, -1
	ori $t0, $t0, 1632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op178 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  177
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 708
	lu12i.w $t8, -1
	ori $t8, $t8, 1624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op178
	lu12i.w $t0, -1
	ori $t0, $t0, 1624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op179 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  178
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 712
	lu12i.w $t8, -1
	ori $t8, $t8, 1616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op179
	lu12i.w $t0, -1
	ori $t0, $t0, 1616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op180 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  179
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 716
	lu12i.w $t8, -1
	ori $t8, $t8, 1608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op180
	lu12i.w $t0, -1
	ori $t0, $t0, 1608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op181 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  180
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 720
	lu12i.w $t8, -1
	ori $t8, $t8, 1600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op181
	lu12i.w $t0, -1
	ori $t0, $t0, 1600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op182 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  181
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 724
	lu12i.w $t8, -1
	ori $t8, $t8, 1592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op182
	lu12i.w $t0, -1
	ori $t0, $t0, 1592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op183 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  182
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 728
	lu12i.w $t8, -1
	ori $t8, $t8, 1584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op183
	lu12i.w $t0, -1
	ori $t0, $t0, 1584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op184 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  183
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 732
	lu12i.w $t8, -1
	ori $t8, $t8, 1576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op184
	lu12i.w $t0, -1
	ori $t0, $t0, 1576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op185 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  184
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 736
	lu12i.w $t8, -1
	ori $t8, $t8, 1568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op185
	lu12i.w $t0, -1
	ori $t0, $t0, 1568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op186 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  185
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 740
	lu12i.w $t8, -1
	ori $t8, $t8, 1560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op186
	lu12i.w $t0, -1
	ori $t0, $t0, 1560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op187 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  186
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 744
	lu12i.w $t8, -1
	ori $t8, $t8, 1552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op187
	lu12i.w $t0, -1
	ori $t0, $t0, 1552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op188 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  187
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 748
	lu12i.w $t8, -1
	ori $t8, $t8, 1544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op188
	lu12i.w $t0, -1
	ori $t0, $t0, 1544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op189 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  188
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 752
	lu12i.w $t8, -1
	ori $t8, $t8, 1536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op189
	lu12i.w $t0, -1
	ori $t0, $t0, 1536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op190 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  189
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 756
	lu12i.w $t8, -1
	ori $t8, $t8, 1528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op190
	lu12i.w $t0, -1
	ori $t0, $t0, 1528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op191 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  190
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 760
	lu12i.w $t8, -1
	ori $t8, $t8, 1520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op191
	lu12i.w $t0, -1
	ori $t0, $t0, 1520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op192 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  191
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 764
	lu12i.w $t8, -1
	ori $t8, $t8, 1512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op192
	lu12i.w $t0, -1
	ori $t0, $t0, 1512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op193 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  192
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 768
	lu12i.w $t8, -1
	ori $t8, $t8, 1504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op193
	lu12i.w $t0, -1
	ori $t0, $t0, 1504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op194 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  193
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 772
	lu12i.w $t8, -1
	ori $t8, $t8, 1496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op194
	lu12i.w $t0, -1
	ori $t0, $t0, 1496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op195 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  194
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 776
	lu12i.w $t8, -1
	ori $t8, $t8, 1488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op195
	lu12i.w $t0, -1
	ori $t0, $t0, 1488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op196 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  195
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 780
	lu12i.w $t8, -1
	ori $t8, $t8, 1480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op196
	lu12i.w $t0, -1
	ori $t0, $t0, 1480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op197 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  196
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 784
	lu12i.w $t8, -1
	ori $t8, $t8, 1472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op197
	lu12i.w $t0, -1
	ori $t0, $t0, 1472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op198 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  197
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 788
	lu12i.w $t8, -1
	ori $t8, $t8, 1464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op198
	lu12i.w $t0, -1
	ori $t0, $t0, 1464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op199 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  198
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 792
	lu12i.w $t8, -1
	ori $t8, $t8, 1456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op199
	lu12i.w $t0, -1
	ori $t0, $t0, 1456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op200 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  199
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 796
	lu12i.w $t8, -1
	ori $t8, $t8, 1448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op200
	lu12i.w $t0, -1
	ori $t0, $t0, 1448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op201 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  200
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 800
	lu12i.w $t8, -1
	ori $t8, $t8, 1440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op201
	lu12i.w $t0, -1
	ori $t0, $t0, 1440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op202 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  201
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 804
	lu12i.w $t8, -1
	ori $t8, $t8, 1432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op202
	lu12i.w $t0, -1
	ori $t0, $t0, 1432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op203 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  202
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 808
	lu12i.w $t8, -1
	ori $t8, $t8, 1424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op203
	lu12i.w $t0, -1
	ori $t0, $t0, 1424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op204 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  203
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 812
	lu12i.w $t8, -1
	ori $t8, $t8, 1416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op204
	lu12i.w $t0, -1
	ori $t0, $t0, 1416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op205 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  204
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 816
	lu12i.w $t8, -1
	ori $t8, $t8, 1408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op205
	lu12i.w $t0, -1
	ori $t0, $t0, 1408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op206 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  205
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 820
	lu12i.w $t8, -1
	ori $t8, $t8, 1400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op206
	lu12i.w $t0, -1
	ori $t0, $t0, 1400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op207 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  206
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 824
	lu12i.w $t8, -1
	ori $t8, $t8, 1392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op207
	lu12i.w $t0, -1
	ori $t0, $t0, 1392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op208 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  207
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 828
	lu12i.w $t8, -1
	ori $t8, $t8, 1384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op208
	lu12i.w $t0, -1
	ori $t0, $t0, 1384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op209 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  208
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 832
	lu12i.w $t8, -1
	ori $t8, $t8, 1376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op209
	lu12i.w $t0, -1
	ori $t0, $t0, 1376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op210 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  209
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 836
	lu12i.w $t8, -1
	ori $t8, $t8, 1368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op210
	lu12i.w $t0, -1
	ori $t0, $t0, 1368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op211 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  210
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 840
	lu12i.w $t8, -1
	ori $t8, $t8, 1360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op211
	lu12i.w $t0, -1
	ori $t0, $t0, 1360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op212 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  211
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 844
	lu12i.w $t8, -1
	ori $t8, $t8, 1352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op212
	lu12i.w $t0, -1
	ori $t0, $t0, 1352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op213 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  212
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 848
	lu12i.w $t8, -1
	ori $t8, $t8, 1344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op213
	lu12i.w $t0, -1
	ori $t0, $t0, 1344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op214 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  213
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 852
	lu12i.w $t8, -1
	ori $t8, $t8, 1336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op214
	lu12i.w $t0, -1
	ori $t0, $t0, 1336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op215 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  214
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 856
	lu12i.w $t8, -1
	ori $t8, $t8, 1328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op215
	lu12i.w $t0, -1
	ori $t0, $t0, 1328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op216 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  215
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 860
	lu12i.w $t8, -1
	ori $t8, $t8, 1320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op216
	lu12i.w $t0, -1
	ori $t0, $t0, 1320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op217 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  216
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 864
	lu12i.w $t8, -1
	ori $t8, $t8, 1312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op217
	lu12i.w $t0, -1
	ori $t0, $t0, 1312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op218 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  217
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 868
	lu12i.w $t8, -1
	ori $t8, $t8, 1304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op218
	lu12i.w $t0, -1
	ori $t0, $t0, 1304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op219 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  218
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 872
	lu12i.w $t8, -1
	ori $t8, $t8, 1296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op219
	lu12i.w $t0, -1
	ori $t0, $t0, 1296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op220 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  219
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 876
	lu12i.w $t8, -1
	ori $t8, $t8, 1288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op220
	lu12i.w $t0, -1
	ori $t0, $t0, 1288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op221 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  220
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 880
	lu12i.w $t8, -1
	ori $t8, $t8, 1280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op221
	lu12i.w $t0, -1
	ori $t0, $t0, 1280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op222 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  221
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 884
	lu12i.w $t8, -1
	ori $t8, $t8, 1272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op222
	lu12i.w $t0, -1
	ori $t0, $t0, 1272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op223 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  222
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 888
	lu12i.w $t8, -1
	ori $t8, $t8, 1264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op223
	lu12i.w $t0, -1
	ori $t0, $t0, 1264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op224 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  223
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 892
	lu12i.w $t8, -1
	ori $t8, $t8, 1256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op224
	lu12i.w $t0, -1
	ori $t0, $t0, 1256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op225 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  224
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 896
	lu12i.w $t8, -1
	ori $t8, $t8, 1248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op225
	lu12i.w $t0, -1
	ori $t0, $t0, 1248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op226 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  225
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 900
	lu12i.w $t8, -1
	ori $t8, $t8, 1240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op226
	lu12i.w $t0, -1
	ori $t0, $t0, 1240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op227 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  226
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 904
	lu12i.w $t8, -1
	ori $t8, $t8, 1232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op227
	lu12i.w $t0, -1
	ori $t0, $t0, 1232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op228 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  227
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 908
	lu12i.w $t8, -1
	ori $t8, $t8, 1224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op228
	lu12i.w $t0, -1
	ori $t0, $t0, 1224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op229 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  228
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 912
	lu12i.w $t8, -1
	ori $t8, $t8, 1216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op229
	lu12i.w $t0, -1
	ori $t0, $t0, 1216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op230 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  229
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 916
	lu12i.w $t8, -1
	ori $t8, $t8, 1208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op230
	lu12i.w $t0, -1
	ori $t0, $t0, 1208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op231 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  230
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 920
	lu12i.w $t8, -1
	ori $t8, $t8, 1200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op231
	lu12i.w $t0, -1
	ori $t0, $t0, 1200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op232 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  231
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 924
	lu12i.w $t8, -1
	ori $t8, $t8, 1192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op232
	lu12i.w $t0, -1
	ori $t0, $t0, 1192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op233 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  232
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 928
	lu12i.w $t8, -1
	ori $t8, $t8, 1184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op233
	lu12i.w $t0, -1
	ori $t0, $t0, 1184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op234 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  233
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 932
	lu12i.w $t8, -1
	ori $t8, $t8, 1176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op234
	lu12i.w $t0, -1
	ori $t0, $t0, 1176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op235 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  234
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 936
	lu12i.w $t8, -1
	ori $t8, $t8, 1168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op235
	lu12i.w $t0, -1
	ori $t0, $t0, 1168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op236 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  235
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 940
	lu12i.w $t8, -1
	ori $t8, $t8, 1160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op236
	lu12i.w $t0, -1
	ori $t0, $t0, 1160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op237 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  236
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 944
	lu12i.w $t8, -1
	ori $t8, $t8, 1152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op237
	lu12i.w $t0, -1
	ori $t0, $t0, 1152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op238 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  237
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 948
	lu12i.w $t8, -1
	ori $t8, $t8, 1144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op238
	lu12i.w $t0, -1
	ori $t0, $t0, 1144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op239 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  238
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 952
	lu12i.w $t8, -1
	ori $t8, $t8, 1136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op239
	lu12i.w $t0, -1
	ori $t0, $t0, 1136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op240 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  239
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 956
	lu12i.w $t8, -1
	ori $t8, $t8, 1128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op240
	lu12i.w $t0, -1
	ori $t0, $t0, 1128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op241 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  240
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 960
	lu12i.w $t8, -1
	ori $t8, $t8, 1120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op241
	lu12i.w $t0, -1
	ori $t0, $t0, 1120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op242 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  241
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 964
	lu12i.w $t8, -1
	ori $t8, $t8, 1112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op242
	lu12i.w $t0, -1
	ori $t0, $t0, 1112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op243 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  242
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 968
	lu12i.w $t8, -1
	ori $t8, $t8, 1104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op243
	lu12i.w $t0, -1
	ori $t0, $t0, 1104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op244 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  243
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 972
	lu12i.w $t8, -1
	ori $t8, $t8, 1096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op244
	lu12i.w $t0, -1
	ori $t0, $t0, 1096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op245 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  244
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 976
	lu12i.w $t8, -1
	ori $t8, $t8, 1088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op245
	lu12i.w $t0, -1
	ori $t0, $t0, 1088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op246 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  245
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 980
	lu12i.w $t8, -1
	ori $t8, $t8, 1080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op246
	lu12i.w $t0, -1
	ori $t0, $t0, 1080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op247 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  246
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 984
	lu12i.w $t8, -1
	ori $t8, $t8, 1072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op247
	lu12i.w $t0, -1
	ori $t0, $t0, 1072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op248 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  247
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 988
	lu12i.w $t8, -1
	ori $t8, $t8, 1064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op248
	lu12i.w $t0, -1
	ori $t0, $t0, 1064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op249 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  248
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 992
	lu12i.w $t8, -1
	ori $t8, $t8, 1056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op249
	lu12i.w $t0, -1
	ori $t0, $t0, 1056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op250 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  249
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 996
	lu12i.w $t8, -1
	ori $t8, $t8, 1048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op250
	lu12i.w $t0, -1
	ori $t0, $t0, 1048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op251 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  250
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 1000
	lu12i.w $t8, -1
	ori $t8, $t8, 1040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op251
	lu12i.w $t0, -1
	ori $t0, $t0, 1040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op252 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  251
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 1004
	lu12i.w $t8, -1
	ori $t8, $t8, 1032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op252
	lu12i.w $t0, -1
	ori $t0, $t0, 1032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op253 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  252
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 1008
	lu12i.w $t8, -1
	ori $t8, $t8, 1024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op253
	lu12i.w $t0, -1
	ori $t0, $t0, 1024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op254 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  253
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 1012
	lu12i.w $t8, -1
	ori $t8, $t8, 1016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op254
	lu12i.w $t0, -1
	ori $t0, $t0, 1016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op255 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  254
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 1016
	lu12i.w $t8, -1
	ori $t8, $t8, 1008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op255
	lu12i.w $t0, -1
	ori $t0, $t0, 1008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op256 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  255
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 1020
	lu12i.w $t8, -1
	ori $t8, $t8, 1000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op256
	lu12i.w $t0, -1
	ori $t0, $t0, 1000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op257 = alloca [256 x i32 ]
	lu12i.w $t0, -2
	ori $t0, $t0, 4064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -1
	ori $t8, $t8, 992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op258 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 4056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op258
	lu12i.w $t0, -2
	ori $t0, $t0, 4056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op259 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  1
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 4
	lu12i.w $t8, -2
	ori $t8, $t8, 4048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op259
	lu12i.w $t0, -2
	ori $t0, $t0, 4048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op260 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  2
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 8
	lu12i.w $t8, -2
	ori $t8, $t8, 4040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op260
	lu12i.w $t0, -2
	ori $t0, $t0, 4040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op261 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  3
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 12
	lu12i.w $t8, -2
	ori $t8, $t8, 4032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op261
	lu12i.w $t0, -2
	ori $t0, $t0, 4032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op262 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  4
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 16
	lu12i.w $t8, -2
	ori $t8, $t8, 4024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op262
	lu12i.w $t0, -2
	ori $t0, $t0, 4024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op263 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  5
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 20
	lu12i.w $t8, -2
	ori $t8, $t8, 4016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op263
	lu12i.w $t0, -2
	ori $t0, $t0, 4016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op264 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  6
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 24
	lu12i.w $t8, -2
	ori $t8, $t8, 4008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op264
	lu12i.w $t0, -2
	ori $t0, $t0, 4008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op265 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  7
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 28
	lu12i.w $t8, -2
	ori $t8, $t8, 4000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op265
	lu12i.w $t0, -2
	ori $t0, $t0, 4000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op266 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  8
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 32
	lu12i.w $t8, -2
	ori $t8, $t8, 3992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op266
	lu12i.w $t0, -2
	ori $t0, $t0, 3992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op267 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  9
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 36
	lu12i.w $t8, -2
	ori $t8, $t8, 3984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op267
	lu12i.w $t0, -2
	ori $t0, $t0, 3984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op268 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  10
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 40
	lu12i.w $t8, -2
	ori $t8, $t8, 3976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op268
	lu12i.w $t0, -2
	ori $t0, $t0, 3976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op269 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  11
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 44
	lu12i.w $t8, -2
	ori $t8, $t8, 3968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op269
	lu12i.w $t0, -2
	ori $t0, $t0, 3968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op270 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  12
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 48
	lu12i.w $t8, -2
	ori $t8, $t8, 3960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op270
	lu12i.w $t0, -2
	ori $t0, $t0, 3960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op271 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  13
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 52
	lu12i.w $t8, -2
	ori $t8, $t8, 3952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op271
	lu12i.w $t0, -2
	ori $t0, $t0, 3952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op272 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  14
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 56
	lu12i.w $t8, -2
	ori $t8, $t8, 3944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op272
	lu12i.w $t0, -2
	ori $t0, $t0, 3944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op273 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  15
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 60
	lu12i.w $t8, -2
	ori $t8, $t8, 3936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op273
	lu12i.w $t0, -2
	ori $t0, $t0, 3936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op274 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  16
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 64
	lu12i.w $t8, -2
	ori $t8, $t8, 3928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op274
	lu12i.w $t0, -2
	ori $t0, $t0, 3928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op275 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  17
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 68
	lu12i.w $t8, -2
	ori $t8, $t8, 3920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op275
	lu12i.w $t0, -2
	ori $t0, $t0, 3920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op276 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  18
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 72
	lu12i.w $t8, -2
	ori $t8, $t8, 3912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op276
	lu12i.w $t0, -2
	ori $t0, $t0, 3912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op277 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  19
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 76
	lu12i.w $t8, -2
	ori $t8, $t8, 3904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op277
	lu12i.w $t0, -2
	ori $t0, $t0, 3904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op278 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  20
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 80
	lu12i.w $t8, -2
	ori $t8, $t8, 3896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op278
	lu12i.w $t0, -2
	ori $t0, $t0, 3896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op279 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  21
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 84
	lu12i.w $t8, -2
	ori $t8, $t8, 3888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op279
	lu12i.w $t0, -2
	ori $t0, $t0, 3888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op280 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  22
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 88
	lu12i.w $t8, -2
	ori $t8, $t8, 3880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op280
	lu12i.w $t0, -2
	ori $t0, $t0, 3880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op281 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  23
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 92
	lu12i.w $t8, -2
	ori $t8, $t8, 3872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op281
	lu12i.w $t0, -2
	ori $t0, $t0, 3872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op282 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  24
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 96
	lu12i.w $t8, -2
	ori $t8, $t8, 3864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op282
	lu12i.w $t0, -2
	ori $t0, $t0, 3864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op283 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  25
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 100
	lu12i.w $t8, -2
	ori $t8, $t8, 3856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op283
	lu12i.w $t0, -2
	ori $t0, $t0, 3856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op284 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  26
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 104
	lu12i.w $t8, -2
	ori $t8, $t8, 3848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op284
	lu12i.w $t0, -2
	ori $t0, $t0, 3848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op285 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  27
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 108
	lu12i.w $t8, -2
	ori $t8, $t8, 3840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op285
	lu12i.w $t0, -2
	ori $t0, $t0, 3840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op286 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  28
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 112
	lu12i.w $t8, -2
	ori $t8, $t8, 3832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op286
	lu12i.w $t0, -2
	ori $t0, $t0, 3832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op287 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  29
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 116
	lu12i.w $t8, -2
	ori $t8, $t8, 3824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op287
	lu12i.w $t0, -2
	ori $t0, $t0, 3824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op288 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  30
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 120
	lu12i.w $t8, -2
	ori $t8, $t8, 3816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op288
	lu12i.w $t0, -2
	ori $t0, $t0, 3816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op289 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  31
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 124
	lu12i.w $t8, -2
	ori $t8, $t8, 3808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op289
	lu12i.w $t0, -2
	ori $t0, $t0, 3808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op290 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  32
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 128
	lu12i.w $t8, -2
	ori $t8, $t8, 3800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op290
	lu12i.w $t0, -2
	ori $t0, $t0, 3800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op291 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  33
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 132
	lu12i.w $t8, -2
	ori $t8, $t8, 3792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op291
	lu12i.w $t0, -2
	ori $t0, $t0, 3792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op292 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  34
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 136
	lu12i.w $t8, -2
	ori $t8, $t8, 3784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op292
	lu12i.w $t0, -2
	ori $t0, $t0, 3784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op293 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  35
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 140
	lu12i.w $t8, -2
	ori $t8, $t8, 3776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op293
	lu12i.w $t0, -2
	ori $t0, $t0, 3776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op294 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  36
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 144
	lu12i.w $t8, -2
	ori $t8, $t8, 3768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op294
	lu12i.w $t0, -2
	ori $t0, $t0, 3768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op295 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  37
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 148
	lu12i.w $t8, -2
	ori $t8, $t8, 3760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op295
	lu12i.w $t0, -2
	ori $t0, $t0, 3760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op296 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  38
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 152
	lu12i.w $t8, -2
	ori $t8, $t8, 3752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op296
	lu12i.w $t0, -2
	ori $t0, $t0, 3752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op297 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  39
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 156
	lu12i.w $t8, -2
	ori $t8, $t8, 3744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op297
	lu12i.w $t0, -2
	ori $t0, $t0, 3744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op298 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  40
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 160
	lu12i.w $t8, -2
	ori $t8, $t8, 3736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op298
	lu12i.w $t0, -2
	ori $t0, $t0, 3736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op299 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  41
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 164
	lu12i.w $t8, -2
	ori $t8, $t8, 3728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op299
	lu12i.w $t0, -2
	ori $t0, $t0, 3728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op300 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  42
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 168
	lu12i.w $t8, -2
	ori $t8, $t8, 3720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op300
	lu12i.w $t0, -2
	ori $t0, $t0, 3720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op301 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  43
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 172
	lu12i.w $t8, -2
	ori $t8, $t8, 3712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op301
	lu12i.w $t0, -2
	ori $t0, $t0, 3712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op302 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  44
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 176
	lu12i.w $t8, -2
	ori $t8, $t8, 3704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op302
	lu12i.w $t0, -2
	ori $t0, $t0, 3704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op303 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  45
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 180
	lu12i.w $t8, -2
	ori $t8, $t8, 3696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op303
	lu12i.w $t0, -2
	ori $t0, $t0, 3696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op304 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  46
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 184
	lu12i.w $t8, -2
	ori $t8, $t8, 3688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op304
	lu12i.w $t0, -2
	ori $t0, $t0, 3688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op305 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  47
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 188
	lu12i.w $t8, -2
	ori $t8, $t8, 3680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op305
	lu12i.w $t0, -2
	ori $t0, $t0, 3680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op306 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  48
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 192
	lu12i.w $t8, -2
	ori $t8, $t8, 3672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op306
	lu12i.w $t0, -2
	ori $t0, $t0, 3672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op307 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  49
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 196
	lu12i.w $t8, -2
	ori $t8, $t8, 3664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op307
	lu12i.w $t0, -2
	ori $t0, $t0, 3664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op308 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  50
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 200
	lu12i.w $t8, -2
	ori $t8, $t8, 3656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op308
	lu12i.w $t0, -2
	ori $t0, $t0, 3656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op309 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  51
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 204
	lu12i.w $t8, -2
	ori $t8, $t8, 3648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op309
	lu12i.w $t0, -2
	ori $t0, $t0, 3648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op310 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  52
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 208
	lu12i.w $t8, -2
	ori $t8, $t8, 3640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op310
	lu12i.w $t0, -2
	ori $t0, $t0, 3640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op311 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  53
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 212
	lu12i.w $t8, -2
	ori $t8, $t8, 3632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op311
	lu12i.w $t0, -2
	ori $t0, $t0, 3632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op312 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  54
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 216
	lu12i.w $t8, -2
	ori $t8, $t8, 3624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op312
	lu12i.w $t0, -2
	ori $t0, $t0, 3624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op313 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  55
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 220
	lu12i.w $t8, -2
	ori $t8, $t8, 3616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op313
	lu12i.w $t0, -2
	ori $t0, $t0, 3616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op314 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  56
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 224
	lu12i.w $t8, -2
	ori $t8, $t8, 3608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op314
	lu12i.w $t0, -2
	ori $t0, $t0, 3608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op315 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  57
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 228
	lu12i.w $t8, -2
	ori $t8, $t8, 3600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op315
	lu12i.w $t0, -2
	ori $t0, $t0, 3600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op316 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  58
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 232
	lu12i.w $t8, -2
	ori $t8, $t8, 3592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op316
	lu12i.w $t0, -2
	ori $t0, $t0, 3592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op317 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  59
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 236
	lu12i.w $t8, -2
	ori $t8, $t8, 3584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op317
	lu12i.w $t0, -2
	ori $t0, $t0, 3584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op318 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  60
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 240
	lu12i.w $t8, -2
	ori $t8, $t8, 3576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op318
	lu12i.w $t0, -2
	ori $t0, $t0, 3576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op319 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  61
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 244
	lu12i.w $t8, -2
	ori $t8, $t8, 3568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op319
	lu12i.w $t0, -2
	ori $t0, $t0, 3568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op320 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  62
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 248
	lu12i.w $t8, -2
	ori $t8, $t8, 3560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op320
	lu12i.w $t0, -2
	ori $t0, $t0, 3560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op321 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  63
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 252
	lu12i.w $t8, -2
	ori $t8, $t8, 3552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op321
	lu12i.w $t0, -2
	ori $t0, $t0, 3552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op322 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  64
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 256
	lu12i.w $t8, -2
	ori $t8, $t8, 3544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op322
	lu12i.w $t0, -2
	ori $t0, $t0, 3544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op323 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  65
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 260
	lu12i.w $t8, -2
	ori $t8, $t8, 3536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op323
	lu12i.w $t0, -2
	ori $t0, $t0, 3536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op324 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  66
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 264
	lu12i.w $t8, -2
	ori $t8, $t8, 3528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op324
	lu12i.w $t0, -2
	ori $t0, $t0, 3528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op325 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  67
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 268
	lu12i.w $t8, -2
	ori $t8, $t8, 3520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op325
	lu12i.w $t0, -2
	ori $t0, $t0, 3520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op326 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  68
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 272
	lu12i.w $t8, -2
	ori $t8, $t8, 3512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op326
	lu12i.w $t0, -2
	ori $t0, $t0, 3512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op327 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  69
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 276
	lu12i.w $t8, -2
	ori $t8, $t8, 3504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op327
	lu12i.w $t0, -2
	ori $t0, $t0, 3504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op328 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  70
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 280
	lu12i.w $t8, -2
	ori $t8, $t8, 3496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op328
	lu12i.w $t0, -2
	ori $t0, $t0, 3496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op329 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  71
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 284
	lu12i.w $t8, -2
	ori $t8, $t8, 3488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op329
	lu12i.w $t0, -2
	ori $t0, $t0, 3488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op330 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  72
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 288
	lu12i.w $t8, -2
	ori $t8, $t8, 3480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op330
	lu12i.w $t0, -2
	ori $t0, $t0, 3480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op331 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  73
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 292
	lu12i.w $t8, -2
	ori $t8, $t8, 3472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op331
	lu12i.w $t0, -2
	ori $t0, $t0, 3472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op332 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  74
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 296
	lu12i.w $t8, -2
	ori $t8, $t8, 3464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op332
	lu12i.w $t0, -2
	ori $t0, $t0, 3464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op333 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  75
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 300
	lu12i.w $t8, -2
	ori $t8, $t8, 3456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op333
	lu12i.w $t0, -2
	ori $t0, $t0, 3456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op334 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  76
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 304
	lu12i.w $t8, -2
	ori $t8, $t8, 3448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op334
	lu12i.w $t0, -2
	ori $t0, $t0, 3448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op335 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  77
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 308
	lu12i.w $t8, -2
	ori $t8, $t8, 3440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op335
	lu12i.w $t0, -2
	ori $t0, $t0, 3440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op336 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  78
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 312
	lu12i.w $t8, -2
	ori $t8, $t8, 3432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op336
	lu12i.w $t0, -2
	ori $t0, $t0, 3432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op337 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  79
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 316
	lu12i.w $t8, -2
	ori $t8, $t8, 3424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op337
	lu12i.w $t0, -2
	ori $t0, $t0, 3424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op338 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  80
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 320
	lu12i.w $t8, -2
	ori $t8, $t8, 3416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op338
	lu12i.w $t0, -2
	ori $t0, $t0, 3416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op339 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  81
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 324
	lu12i.w $t8, -2
	ori $t8, $t8, 3408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op339
	lu12i.w $t0, -2
	ori $t0, $t0, 3408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op340 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  82
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 328
	lu12i.w $t8, -2
	ori $t8, $t8, 3400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op340
	lu12i.w $t0, -2
	ori $t0, $t0, 3400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op341 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  83
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 332
	lu12i.w $t8, -2
	ori $t8, $t8, 3392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op341
	lu12i.w $t0, -2
	ori $t0, $t0, 3392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op342 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  84
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 336
	lu12i.w $t8, -2
	ori $t8, $t8, 3384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op342
	lu12i.w $t0, -2
	ori $t0, $t0, 3384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op343 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  85
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 340
	lu12i.w $t8, -2
	ori $t8, $t8, 3376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op343
	lu12i.w $t0, -2
	ori $t0, $t0, 3376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op344 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  86
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 344
	lu12i.w $t8, -2
	ori $t8, $t8, 3368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op344
	lu12i.w $t0, -2
	ori $t0, $t0, 3368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op345 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  87
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 348
	lu12i.w $t8, -2
	ori $t8, $t8, 3360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op345
	lu12i.w $t0, -2
	ori $t0, $t0, 3360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op346 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  88
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 352
	lu12i.w $t8, -2
	ori $t8, $t8, 3352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op346
	lu12i.w $t0, -2
	ori $t0, $t0, 3352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op347 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  89
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 356
	lu12i.w $t8, -2
	ori $t8, $t8, 3344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op347
	lu12i.w $t0, -2
	ori $t0, $t0, 3344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op348 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  90
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 360
	lu12i.w $t8, -2
	ori $t8, $t8, 3336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op348
	lu12i.w $t0, -2
	ori $t0, $t0, 3336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op349 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  91
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 364
	lu12i.w $t8, -2
	ori $t8, $t8, 3328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op349
	lu12i.w $t0, -2
	ori $t0, $t0, 3328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op350 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  92
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 368
	lu12i.w $t8, -2
	ori $t8, $t8, 3320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op350
	lu12i.w $t0, -2
	ori $t0, $t0, 3320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op351 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  93
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 372
	lu12i.w $t8, -2
	ori $t8, $t8, 3312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op351
	lu12i.w $t0, -2
	ori $t0, $t0, 3312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op352 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  94
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 376
	lu12i.w $t8, -2
	ori $t8, $t8, 3304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op352
	lu12i.w $t0, -2
	ori $t0, $t0, 3304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op353 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  95
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 380
	lu12i.w $t8, -2
	ori $t8, $t8, 3296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op353
	lu12i.w $t0, -2
	ori $t0, $t0, 3296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op354 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  96
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 384
	lu12i.w $t8, -2
	ori $t8, $t8, 3288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op354
	lu12i.w $t0, -2
	ori $t0, $t0, 3288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op355 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  97
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 388
	lu12i.w $t8, -2
	ori $t8, $t8, 3280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op355
	lu12i.w $t0, -2
	ori $t0, $t0, 3280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op356 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  98
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 392
	lu12i.w $t8, -2
	ori $t8, $t8, 3272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op356
	lu12i.w $t0, -2
	ori $t0, $t0, 3272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op357 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  99
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 396
	lu12i.w $t8, -2
	ori $t8, $t8, 3264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op357
	lu12i.w $t0, -2
	ori $t0, $t0, 3264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op358 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  100
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 400
	lu12i.w $t8, -2
	ori $t8, $t8, 3256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op358
	lu12i.w $t0, -2
	ori $t0, $t0, 3256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op359 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  101
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 404
	lu12i.w $t8, -2
	ori $t8, $t8, 3248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op359
	lu12i.w $t0, -2
	ori $t0, $t0, 3248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op360 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  102
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 408
	lu12i.w $t8, -2
	ori $t8, $t8, 3240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op360
	lu12i.w $t0, -2
	ori $t0, $t0, 3240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op361 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  103
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 412
	lu12i.w $t8, -2
	ori $t8, $t8, 3232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op361
	lu12i.w $t0, -2
	ori $t0, $t0, 3232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op362 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  104
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 416
	lu12i.w $t8, -2
	ori $t8, $t8, 3224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op362
	lu12i.w $t0, -2
	ori $t0, $t0, 3224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op363 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  105
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 420
	lu12i.w $t8, -2
	ori $t8, $t8, 3216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op363
	lu12i.w $t0, -2
	ori $t0, $t0, 3216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op364 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  106
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 424
	lu12i.w $t8, -2
	ori $t8, $t8, 3208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op364
	lu12i.w $t0, -2
	ori $t0, $t0, 3208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op365 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  107
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 428
	lu12i.w $t8, -2
	ori $t8, $t8, 3200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op365
	lu12i.w $t0, -2
	ori $t0, $t0, 3200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op366 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  108
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 432
	lu12i.w $t8, -2
	ori $t8, $t8, 3192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op366
	lu12i.w $t0, -2
	ori $t0, $t0, 3192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op367 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  109
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 436
	lu12i.w $t8, -2
	ori $t8, $t8, 3184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op367
	lu12i.w $t0, -2
	ori $t0, $t0, 3184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op368 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  110
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 440
	lu12i.w $t8, -2
	ori $t8, $t8, 3176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op368
	lu12i.w $t0, -2
	ori $t0, $t0, 3176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op369 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  111
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 444
	lu12i.w $t8, -2
	ori $t8, $t8, 3168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op369
	lu12i.w $t0, -2
	ori $t0, $t0, 3168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op370 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  112
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 448
	lu12i.w $t8, -2
	ori $t8, $t8, 3160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op370
	lu12i.w $t0, -2
	ori $t0, $t0, 3160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op371 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  113
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 452
	lu12i.w $t8, -2
	ori $t8, $t8, 3152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op371
	lu12i.w $t0, -2
	ori $t0, $t0, 3152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op372 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  114
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 456
	lu12i.w $t8, -2
	ori $t8, $t8, 3144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op372
	lu12i.w $t0, -2
	ori $t0, $t0, 3144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op373 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  115
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 460
	lu12i.w $t8, -2
	ori $t8, $t8, 3136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op373
	lu12i.w $t0, -2
	ori $t0, $t0, 3136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op374 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  116
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 464
	lu12i.w $t8, -2
	ori $t8, $t8, 3128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op374
	lu12i.w $t0, -2
	ori $t0, $t0, 3128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op375 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  117
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 468
	lu12i.w $t8, -2
	ori $t8, $t8, 3120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op375
	lu12i.w $t0, -2
	ori $t0, $t0, 3120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op376 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  118
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 472
	lu12i.w $t8, -2
	ori $t8, $t8, 3112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op376
	lu12i.w $t0, -2
	ori $t0, $t0, 3112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op377 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  119
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 476
	lu12i.w $t8, -2
	ori $t8, $t8, 3104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op377
	lu12i.w $t0, -2
	ori $t0, $t0, 3104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op378 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  120
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 480
	lu12i.w $t8, -2
	ori $t8, $t8, 3096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op378
	lu12i.w $t0, -2
	ori $t0, $t0, 3096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op379 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  121
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 484
	lu12i.w $t8, -2
	ori $t8, $t8, 3088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op379
	lu12i.w $t0, -2
	ori $t0, $t0, 3088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op380 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  122
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 488
	lu12i.w $t8, -2
	ori $t8, $t8, 3080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op380
	lu12i.w $t0, -2
	ori $t0, $t0, 3080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op381 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  123
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 492
	lu12i.w $t8, -2
	ori $t8, $t8, 3072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op381
	lu12i.w $t0, -2
	ori $t0, $t0, 3072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op382 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  124
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 496
	lu12i.w $t8, -2
	ori $t8, $t8, 3064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op382
	lu12i.w $t0, -2
	ori $t0, $t0, 3064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op383 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  125
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 500
	lu12i.w $t8, -2
	ori $t8, $t8, 3056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op383
	lu12i.w $t0, -2
	ori $t0, $t0, 3056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op384 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  126
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 504
	lu12i.w $t8, -2
	ori $t8, $t8, 3048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op384
	lu12i.w $t0, -2
	ori $t0, $t0, 3048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op385 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  127
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 508
	lu12i.w $t8, -2
	ori $t8, $t8, 3040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op385
	lu12i.w $t0, -2
	ori $t0, $t0, 3040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op386 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  128
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 512
	lu12i.w $t8, -2
	ori $t8, $t8, 3032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op386
	lu12i.w $t0, -2
	ori $t0, $t0, 3032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op387 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  129
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 516
	lu12i.w $t8, -2
	ori $t8, $t8, 3024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op387
	lu12i.w $t0, -2
	ori $t0, $t0, 3024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op388 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  130
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 520
	lu12i.w $t8, -2
	ori $t8, $t8, 3016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op388
	lu12i.w $t0, -2
	ori $t0, $t0, 3016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op389 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  131
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 524
	lu12i.w $t8, -2
	ori $t8, $t8, 3008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op389
	lu12i.w $t0, -2
	ori $t0, $t0, 3008
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op390 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  132
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 528
	lu12i.w $t8, -2
	ori $t8, $t8, 3000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op390
	lu12i.w $t0, -2
	ori $t0, $t0, 3000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op391 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  133
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 532
	lu12i.w $t8, -2
	ori $t8, $t8, 2992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op391
	lu12i.w $t0, -2
	ori $t0, $t0, 2992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op392 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  134
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 536
	lu12i.w $t8, -2
	ori $t8, $t8, 2984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op392
	lu12i.w $t0, -2
	ori $t0, $t0, 2984
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op393 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  135
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 540
	lu12i.w $t8, -2
	ori $t8, $t8, 2976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op393
	lu12i.w $t0, -2
	ori $t0, $t0, 2976
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op394 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  136
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 544
	lu12i.w $t8, -2
	ori $t8, $t8, 2968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op394
	lu12i.w $t0, -2
	ori $t0, $t0, 2968
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op395 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  137
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 548
	lu12i.w $t8, -2
	ori $t8, $t8, 2960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op395
	lu12i.w $t0, -2
	ori $t0, $t0, 2960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op396 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  138
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 552
	lu12i.w $t8, -2
	ori $t8, $t8, 2952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op396
	lu12i.w $t0, -2
	ori $t0, $t0, 2952
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op397 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  139
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 556
	lu12i.w $t8, -2
	ori $t8, $t8, 2944
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op397
	lu12i.w $t0, -2
	ori $t0, $t0, 2944
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op398 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  140
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 560
	lu12i.w $t8, -2
	ori $t8, $t8, 2936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op398
	lu12i.w $t0, -2
	ori $t0, $t0, 2936
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op399 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  141
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 564
	lu12i.w $t8, -2
	ori $t8, $t8, 2928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op399
	lu12i.w $t0, -2
	ori $t0, $t0, 2928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op400 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  142
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 568
	lu12i.w $t8, -2
	ori $t8, $t8, 2920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op400
	lu12i.w $t0, -2
	ori $t0, $t0, 2920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op401 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  143
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 572
	lu12i.w $t8, -2
	ori $t8, $t8, 2912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op401
	lu12i.w $t0, -2
	ori $t0, $t0, 2912
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op402 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  144
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 576
	lu12i.w $t8, -2
	ori $t8, $t8, 2904
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op402
	lu12i.w $t0, -2
	ori $t0, $t0, 2904
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op403 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  145
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 580
	lu12i.w $t8, -2
	ori $t8, $t8, 2896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op403
	lu12i.w $t0, -2
	ori $t0, $t0, 2896
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op404 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  146
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 584
	lu12i.w $t8, -2
	ori $t8, $t8, 2888
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op404
	lu12i.w $t0, -2
	ori $t0, $t0, 2888
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op405 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  147
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 588
	lu12i.w $t8, -2
	ori $t8, $t8, 2880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op405
	lu12i.w $t0, -2
	ori $t0, $t0, 2880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op406 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  148
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 592
	lu12i.w $t8, -2
	ori $t8, $t8, 2872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op406
	lu12i.w $t0, -2
	ori $t0, $t0, 2872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op407 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  149
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 596
	lu12i.w $t8, -2
	ori $t8, $t8, 2864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op407
	lu12i.w $t0, -2
	ori $t0, $t0, 2864
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op408 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  150
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 600
	lu12i.w $t8, -2
	ori $t8, $t8, 2856
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op408
	lu12i.w $t0, -2
	ori $t0, $t0, 2856
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op409 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  151
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 604
	lu12i.w $t8, -2
	ori $t8, $t8, 2848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op409
	lu12i.w $t0, -2
	ori $t0, $t0, 2848
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op410 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  152
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 608
	lu12i.w $t8, -2
	ori $t8, $t8, 2840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op410
	lu12i.w $t0, -2
	ori $t0, $t0, 2840
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op411 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  153
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 612
	lu12i.w $t8, -2
	ori $t8, $t8, 2832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op411
	lu12i.w $t0, -2
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op412 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  154
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 616
	lu12i.w $t8, -2
	ori $t8, $t8, 2824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op412
	lu12i.w $t0, -2
	ori $t0, $t0, 2824
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op413 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  155
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 620
	lu12i.w $t8, -2
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op413
	lu12i.w $t0, -2
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op414 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  156
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 624
	lu12i.w $t8, -2
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op414
	lu12i.w $t0, -2
	ori $t0, $t0, 2808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op415 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  157
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 628
	lu12i.w $t8, -2
	ori $t8, $t8, 2800
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op415
	lu12i.w $t0, -2
	ori $t0, $t0, 2800
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op416 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  158
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 632
	lu12i.w $t8, -2
	ori $t8, $t8, 2792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op416
	lu12i.w $t0, -2
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op417 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  159
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 636
	lu12i.w $t8, -2
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op417
	lu12i.w $t0, -2
	ori $t0, $t0, 2784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op418 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  160
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 640
	lu12i.w $t8, -2
	ori $t8, $t8, 2776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op418
	lu12i.w $t0, -2
	ori $t0, $t0, 2776
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op419 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  161
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 644
	lu12i.w $t8, -2
	ori $t8, $t8, 2768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op419
	lu12i.w $t0, -2
	ori $t0, $t0, 2768
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op420 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  162
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 648
	lu12i.w $t8, -2
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op420
	lu12i.w $t0, -2
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op421 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  163
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 652
	lu12i.w $t8, -2
	ori $t8, $t8, 2752
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op421
	lu12i.w $t0, -2
	ori $t0, $t0, 2752
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op422 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  164
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 656
	lu12i.w $t8, -2
	ori $t8, $t8, 2744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op422
	lu12i.w $t0, -2
	ori $t0, $t0, 2744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op423 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  165
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 660
	lu12i.w $t8, -2
	ori $t8, $t8, 2736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op423
	lu12i.w $t0, -2
	ori $t0, $t0, 2736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op424 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  166
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 664
	lu12i.w $t8, -2
	ori $t8, $t8, 2728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op424
	lu12i.w $t0, -2
	ori $t0, $t0, 2728
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op425 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  167
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 668
	lu12i.w $t8, -2
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op425
	lu12i.w $t0, -2
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op426 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  168
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 672
	lu12i.w $t8, -2
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op426
	lu12i.w $t0, -2
	ori $t0, $t0, 2712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op427 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  169
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 676
	lu12i.w $t8, -2
	ori $t8, $t8, 2704
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op427
	lu12i.w $t0, -2
	ori $t0, $t0, 2704
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op428 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  170
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 680
	lu12i.w $t8, -2
	ori $t8, $t8, 2696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op428
	lu12i.w $t0, -2
	ori $t0, $t0, 2696
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op429 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  171
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 684
	lu12i.w $t8, -2
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op429
	lu12i.w $t0, -2
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op430 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  172
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 688
	lu12i.w $t8, -2
	ori $t8, $t8, 2680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op430
	lu12i.w $t0, -2
	ori $t0, $t0, 2680
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op431 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  173
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 692
	lu12i.w $t8, -2
	ori $t8, $t8, 2672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op431
	lu12i.w $t0, -2
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op432 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  174
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 696
	lu12i.w $t8, -2
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op432
	lu12i.w $t0, -2
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op433 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  175
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 700
	lu12i.w $t8, -2
	ori $t8, $t8, 2656
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op433
	lu12i.w $t0, -2
	ori $t0, $t0, 2656
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op434 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  176
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 704
	lu12i.w $t8, -2
	ori $t8, $t8, 2648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op434
	lu12i.w $t0, -2
	ori $t0, $t0, 2648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op435 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  177
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 708
	lu12i.w $t8, -2
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op435
	lu12i.w $t0, -2
	ori $t0, $t0, 2640
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op436 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  178
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 712
	lu12i.w $t8, -2
	ori $t8, $t8, 2632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op436
	lu12i.w $t0, -2
	ori $t0, $t0, 2632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op437 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  179
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 716
	lu12i.w $t8, -2
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op437
	lu12i.w $t0, -2
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op438 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  180
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 720
	lu12i.w $t8, -2
	ori $t8, $t8, 2616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op438
	lu12i.w $t0, -2
	ori $t0, $t0, 2616
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op439 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  181
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 724
	lu12i.w $t8, -2
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op439
	lu12i.w $t0, -2
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op440 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  182
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 728
	lu12i.w $t8, -2
	ori $t8, $t8, 2600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op440
	lu12i.w $t0, -2
	ori $t0, $t0, 2600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op441 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  183
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 732
	lu12i.w $t8, -2
	ori $t8, $t8, 2592
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op441
	lu12i.w $t0, -2
	ori $t0, $t0, 2592
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op442 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  184
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 736
	lu12i.w $t8, -2
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op442
	lu12i.w $t0, -2
	ori $t0, $t0, 2584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op443 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  185
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 740
	lu12i.w $t8, -2
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op443
	lu12i.w $t0, -2
	ori $t0, $t0, 2576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op444 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  186
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 744
	lu12i.w $t8, -2
	ori $t8, $t8, 2568
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op444
	lu12i.w $t0, -2
	ori $t0, $t0, 2568
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op445 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  187
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 748
	lu12i.w $t8, -2
	ori $t8, $t8, 2560
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op445
	lu12i.w $t0, -2
	ori $t0, $t0, 2560
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op446 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  188
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 752
	lu12i.w $t8, -2
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op446
	lu12i.w $t0, -2
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op447 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  189
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 756
	lu12i.w $t8, -2
	ori $t8, $t8, 2544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op447
	lu12i.w $t0, -2
	ori $t0, $t0, 2544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op448 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  190
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 760
	lu12i.w $t8, -2
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op448
	lu12i.w $t0, -2
	ori $t0, $t0, 2536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op449 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  191
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 764
	lu12i.w $t8, -2
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op449
	lu12i.w $t0, -2
	ori $t0, $t0, 2528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op450 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  192
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 768
	lu12i.w $t8, -2
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op450
	lu12i.w $t0, -2
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op451 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  193
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 772
	lu12i.w $t8, -2
	ori $t8, $t8, 2512
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op451
	lu12i.w $t0, -2
	ori $t0, $t0, 2512
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op452 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  194
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 776
	lu12i.w $t8, -2
	ori $t8, $t8, 2504
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op452
	lu12i.w $t0, -2
	ori $t0, $t0, 2504
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op453 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  195
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 780
	lu12i.w $t8, -2
	ori $t8, $t8, 2496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op453
	lu12i.w $t0, -2
	ori $t0, $t0, 2496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op454 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  196
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 784
	lu12i.w $t8, -2
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op454
	lu12i.w $t0, -2
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op455 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  197
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 788
	lu12i.w $t8, -2
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op455
	lu12i.w $t0, -2
	ori $t0, $t0, 2480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op456 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  198
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 792
	lu12i.w $t8, -2
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op456
	lu12i.w $t0, -2
	ori $t0, $t0, 2472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op457 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  199
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 796
	lu12i.w $t8, -2
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op457
	lu12i.w $t0, -2
	ori $t0, $t0, 2464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op458 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  200
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 800
	lu12i.w $t8, -2
	ori $t8, $t8, 2456
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op458
	lu12i.w $t0, -2
	ori $t0, $t0, 2456
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op459 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  201
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 804
	lu12i.w $t8, -2
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op459
	lu12i.w $t0, -2
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op460 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  202
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 808
	lu12i.w $t8, -2
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op460
	lu12i.w $t0, -2
	ori $t0, $t0, 2440
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op461 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  203
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 812
	lu12i.w $t8, -2
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op461
	lu12i.w $t0, -2
	ori $t0, $t0, 2432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op462 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  204
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 816
	lu12i.w $t8, -2
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op462
	lu12i.w $t0, -2
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op463 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  205
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 820
	lu12i.w $t8, -2
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op463
	lu12i.w $t0, -2
	ori $t0, $t0, 2416
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op464 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  206
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 824
	lu12i.w $t8, -2
	ori $t8, $t8, 2408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op464
	lu12i.w $t0, -2
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op465 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  207
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 828
	lu12i.w $t8, -2
	ori $t8, $t8, 2400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op465
	lu12i.w $t0, -2
	ori $t0, $t0, 2400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op466 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  208
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 832
	lu12i.w $t8, -2
	ori $t8, $t8, 2392
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op466
	lu12i.w $t0, -2
	ori $t0, $t0, 2392
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op467 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  209
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 836
	lu12i.w $t8, -2
	ori $t8, $t8, 2384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op467
	lu12i.w $t0, -2
	ori $t0, $t0, 2384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op468 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  210
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 840
	lu12i.w $t8, -2
	ori $t8, $t8, 2376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op468
	lu12i.w $t0, -2
	ori $t0, $t0, 2376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op469 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  211
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 844
	lu12i.w $t8, -2
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op469
	lu12i.w $t0, -2
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op470 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  212
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 848
	lu12i.w $t8, -2
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op470
	lu12i.w $t0, -2
	ori $t0, $t0, 2360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op471 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  213
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 852
	lu12i.w $t8, -2
	ori $t8, $t8, 2352
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op471
	lu12i.w $t0, -2
	ori $t0, $t0, 2352
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op472 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  214
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 856
	lu12i.w $t8, -2
	ori $t8, $t8, 2344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op472
	lu12i.w $t0, -2
	ori $t0, $t0, 2344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op473 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  215
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 860
	lu12i.w $t8, -2
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op473
	lu12i.w $t0, -2
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op474 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  216
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 864
	lu12i.w $t8, -2
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op474
	lu12i.w $t0, -2
	ori $t0, $t0, 2328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op475 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  217
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 868
	lu12i.w $t8, -2
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op475
	lu12i.w $t0, -2
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op476 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  218
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 872
	lu12i.w $t8, -2
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op476
	lu12i.w $t0, -2
	ori $t0, $t0, 2312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op477 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  219
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 876
	lu12i.w $t8, -2
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op477
	lu12i.w $t0, -2
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op478 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  220
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 880
	lu12i.w $t8, -2
	ori $t8, $t8, 2296
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op478
	lu12i.w $t0, -2
	ori $t0, $t0, 2296
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op479 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  221
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 884
	lu12i.w $t8, -2
	ori $t8, $t8, 2288
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op479
	lu12i.w $t0, -2
	ori $t0, $t0, 2288
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op480 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  222
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 888
	lu12i.w $t8, -2
	ori $t8, $t8, 2280
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op480
	lu12i.w $t0, -2
	ori $t0, $t0, 2280
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op481 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  223
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 892
	lu12i.w $t8, -2
	ori $t8, $t8, 2272
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op481
	lu12i.w $t0, -2
	ori $t0, $t0, 2272
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op482 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  224
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 896
	lu12i.w $t8, -2
	ori $t8, $t8, 2264
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op482
	lu12i.w $t0, -2
	ori $t0, $t0, 2264
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op483 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  225
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 900
	lu12i.w $t8, -2
	ori $t8, $t8, 2256
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op483
	lu12i.w $t0, -2
	ori $t0, $t0, 2256
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op484 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  226
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 904
	lu12i.w $t8, -2
	ori $t8, $t8, 2248
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op484
	lu12i.w $t0, -2
	ori $t0, $t0, 2248
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op485 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  227
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 908
	lu12i.w $t8, -2
	ori $t8, $t8, 2240
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op485
	lu12i.w $t0, -2
	ori $t0, $t0, 2240
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op486 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  228
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 912
	lu12i.w $t8, -2
	ori $t8, $t8, 2232
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op486
	lu12i.w $t0, -2
	ori $t0, $t0, 2232
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op487 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  229
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 916
	lu12i.w $t8, -2
	ori $t8, $t8, 2224
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op487
	lu12i.w $t0, -2
	ori $t0, $t0, 2224
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op488 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  230
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 920
	lu12i.w $t8, -2
	ori $t8, $t8, 2216
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op488
	lu12i.w $t0, -2
	ori $t0, $t0, 2216
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op489 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  231
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 924
	lu12i.w $t8, -2
	ori $t8, $t8, 2208
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op489
	lu12i.w $t0, -2
	ori $t0, $t0, 2208
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op490 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  232
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 928
	lu12i.w $t8, -2
	ori $t8, $t8, 2200
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op490
	lu12i.w $t0, -2
	ori $t0, $t0, 2200
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op491 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  233
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 932
	lu12i.w $t8, -2
	ori $t8, $t8, 2192
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op491
	lu12i.w $t0, -2
	ori $t0, $t0, 2192
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op492 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  234
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 936
	lu12i.w $t8, -2
	ori $t8, $t8, 2184
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op492
	lu12i.w $t0, -2
	ori $t0, $t0, 2184
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op493 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  235
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 940
	lu12i.w $t8, -2
	ori $t8, $t8, 2176
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op493
	lu12i.w $t0, -2
	ori $t0, $t0, 2176
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op494 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  236
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 944
	lu12i.w $t8, -2
	ori $t8, $t8, 2168
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op494
	lu12i.w $t0, -2
	ori $t0, $t0, 2168
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op495 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  237
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 948
	lu12i.w $t8, -2
	ori $t8, $t8, 2160
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op495
	lu12i.w $t0, -2
	ori $t0, $t0, 2160
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op496 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  238
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 952
	lu12i.w $t8, -2
	ori $t8, $t8, 2152
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op496
	lu12i.w $t0, -2
	ori $t0, $t0, 2152
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op497 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  239
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 956
	lu12i.w $t8, -2
	ori $t8, $t8, 2144
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op497
	lu12i.w $t0, -2
	ori $t0, $t0, 2144
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op498 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  240
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 960
	lu12i.w $t8, -2
	ori $t8, $t8, 2136
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op498
	lu12i.w $t0, -2
	ori $t0, $t0, 2136
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op499 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  241
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 964
	lu12i.w $t8, -2
	ori $t8, $t8, 2128
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op499
	lu12i.w $t0, -2
	ori $t0, $t0, 2128
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op500 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  242
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 968
	lu12i.w $t8, -2
	ori $t8, $t8, 2120
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op500
	lu12i.w $t0, -2
	ori $t0, $t0, 2120
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op501 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  243
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 972
	lu12i.w $t8, -2
	ori $t8, $t8, 2112
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op501
	lu12i.w $t0, -2
	ori $t0, $t0, 2112
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op502 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  244
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 976
	lu12i.w $t8, -2
	ori $t8, $t8, 2104
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op502
	lu12i.w $t0, -2
	ori $t0, $t0, 2104
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op503 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  245
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 980
	lu12i.w $t8, -2
	ori $t8, $t8, 2096
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op503
	lu12i.w $t0, -2
	ori $t0, $t0, 2096
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op504 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  246
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 984
	lu12i.w $t8, -2
	ori $t8, $t8, 2088
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op504
	lu12i.w $t0, -2
	ori $t0, $t0, 2088
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op505 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  247
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 988
	lu12i.w $t8, -2
	ori $t8, $t8, 2080
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op505
	lu12i.w $t0, -2
	ori $t0, $t0, 2080
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op506 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  248
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 992
	lu12i.w $t8, -2
	ori $t8, $t8, 2072
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op506
	lu12i.w $t0, -2
	ori $t0, $t0, 2072
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op507 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  249
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 996
	lu12i.w $t8, -2
	ori $t8, $t8, 2064
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op507
	lu12i.w $t0, -2
	ori $t0, $t0, 2064
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op508 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  250
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 1000
	lu12i.w $t8, -2
	ori $t8, $t8, 2056
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op508
	lu12i.w $t0, -2
	ori $t0, $t0, 2056
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op509 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  251
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 1004
	lu12i.w $t8, -2
	ori $t8, $t8, 2048
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op509
	lu12i.w $t0, -2
	ori $t0, $t0, 2048
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op510 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  252
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 1008
	lu12i.w $t8, -2
	ori $t8, $t8, 2040
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op510
	lu12i.w $t0, -2
	ori $t0, $t0, 2040
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op511 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  253
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 1012
	lu12i.w $t8, -2
	ori $t8, $t8, 2032
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op511
	lu12i.w $t0, -2
	ori $t0, $t0, 2032
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op512 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  254
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 1016
	lu12i.w $t8, -2
	ori $t8, $t8, 2024
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op512
	lu12i.w $t0, -2
	ori $t0, $t0, 2024
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op513 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  255
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 1020
	lu12i.w $t8, -2
	ori $t8, $t8, 2016
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  0, i32 * %op513
	lu12i.w $t0, -2
	ori $t0, $t0, 2016
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.w $t1, $zero, 0
	st.w $t1, $t0, 0
# %op514 = load i32 , i32 * @cur_token
	la.local $t0, cur_token
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2012
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op515 = load i32 , i32 * @TOKEN_NUM
	la.local $t0, TOKEN_NUM
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2008
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op516 = icmp ne i32  %op514, %op515
	lu12i.w $t0, -2
	ori $t0, $t0, 2012
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 2008
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label31
	addi.d $t2, $zero, 0
	b false_label31
true_label31:
	addi.d $t2, $zero, 1
false_label31:
	lu12i.w $t8, -2
	ori $t8, $t8, 2007
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op517 = zext i1  %op516 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 2007
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 2000
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op518 = icmp ne i32  %op517, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 2000
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label32
	addi.d $t2, $zero, 0
	b false_label32
true_label32:
	addi.d $t2, $zero, 1
false_label32:
	lu12i.w $t8, -2
	ori $t8, $t8, 1999
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op518, label %label519, label %label521
	lu12i.w $t0, -2
	ori $t0, $t0, 1999
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .eval_label519
	b .eval_label521
.eval_label519:
# %op520 = call i32  @panic()
	bl panic
	lu12i.w $t8, -2
	ori $t8, $t8, 1992
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# ret i32  %op520
	lu12i.w $a0, -2
	ori $a0, $a0, 1992
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b eval_ret
.eval_label521:
# %op522 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1984
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op523 = load i32 , i32 * @num
	la.local $t0, num
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1980
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @stack_push(i32 * %op522, i32  %op523)
	lu12i.w $a0, -2
	ori $a0, $a0, 1984
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -2
	ori $a1, $a1, 1980
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl stack_push
# %op524 = call i32  @next_token()
	bl next_token
	lu12i.w $t8, -2
	ori $t8, $t8, 1976
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# br label %label525
	b .eval_label525
.eval_label525:
# %op526 = load i32 , i32 * @cur_token
	la.local $t0, cur_token
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1972
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op527 = load i32 , i32 * @TOKEN_OTHER
	la.local $t0, TOKEN_OTHER
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1968
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op528 = icmp eq i32  %op526, %op527
	lu12i.w $t0, -2
	ori $t0, $t0, 1972
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1968
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	beq  $t0, $t1, true_label33
	addi.d $t2, $zero, 0
	b false_label33
true_label33:
	addi.d $t2, $zero, 1
false_label33:
	lu12i.w $t8, -2
	ori $t8, $t8, 1967
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op529 = zext i1  %op528 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1967
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1960
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op530 = icmp ne i32  %op529, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1960
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label34
	addi.d $t2, $zero, 0
	b false_label34
true_label34:
	addi.d $t2, $zero, 1
false_label34:
	lu12i.w $t8, -2
	ori $t8, $t8, 1959
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op530, label %label531, label %label535
	lu12i.w $t0, -2
	ori $t0, $t0, 1959
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .eval_label531
	b .eval_label535
.eval_label531:
# %op532 = load i32 , i32 * @other
	la.local $t0, other
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1952
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op533 = call i32  @get_op_prec(i32  %op532)
	lu12i.w $a0, -2
	ori $a0, $a0, 1952
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl get_op_prec
	lu12i.w $t8, -2
	ori $t8, $t8, 1948
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op534 = icmp eq i32  %op533, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1948
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	beq  $t0, $t1, true_label35
	addi.d $t2, $zero, 0
	b false_label35
true_label35:
	addi.d $t2, $zero, 1
false_label35:
	lu12i.w $t8, -2
	ori $t8, $t8, 1947
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op534, label %label537, label %label538
	lu12i.w $t0, -2
	ori $t0, $t0, 1947
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .eval_label537
	b .eval_label538
.eval_label535:
# %op536 = call i32  @next_token()
	bl next_token
	lu12i.w $t8, -2
	ori $t8, $t8, 1940
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# br label %label574
	b .eval_label574
.eval_label537:
# br label %label535
	b .eval_label535
.eval_label538:
# %op539 = call i32  @next_token()
	bl next_token
	lu12i.w $t8, -2
	ori $t8, $t8, 1936
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# br label %label540
	b .eval_label540
.eval_label540:
# %op541 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1928
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op542 = call i32  @stack_size(i32 * %op541)
	lu12i.w $a0, -2
	ori $a0, $a0, 1928
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_size
	lu12i.w $t8, -2
	ori $t8, $t8, 1924
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op543 = icmp ne i32  %op542, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1924
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label36
	addi.d $t2, $zero, 0
	b false_label36
true_label36:
	addi.d $t2, $zero, 1
false_label36:
	lu12i.w $t8, -2
	ori $t8, $t8, 1923
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op543, label %label560, label %label553
	lu12i.w $t0, -2
	ori $t0, $t0, 1923
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .eval_label560
	b .eval_label553
.eval_label544:
# %op545 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1912
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op546 = call i32  @stack_pop(i32 * %op545)
	lu12i.w $a0, -2
	ori $a0, $a0, 1912
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_pop
	lu12i.w $t8, -2
	ori $t8, $t8, 1908
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op547 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1896
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op548 = call i32  @stack_pop(i32 * %op547)
	lu12i.w $a0, -2
	ori $a0, $a0, 1896
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_pop
	lu12i.w $t8, -2
	ori $t8, $t8, 1892
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op549 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1880
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op550 = call i32  @stack_pop(i32 * %op549)
	lu12i.w $a0, -2
	ori $a0, $a0, 1880
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_pop
	lu12i.w $t8, -2
	ori $t8, $t8, 1876
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op551 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1864
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op552 = call i32  @eval_op(i32  %op546, i32  %op548, i32  %op550)
	lu12i.w $a0, -2
	ori $a0, $a0, 1908
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	lu12i.w $a1, -2
	ori $a1, $a1, 1892
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	lu12i.w $a2, -2
	ori $a2, $a2, 1876
	lu32i.d $a2, -1
	lu52i.d $a2, $a2, -1
	add.d $a2, $fp, $a2
	ld.w $a2, $a2, 0
	bl eval_op
	lu12i.w $t8, -2
	ori $t8, $t8, 1860
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# call void @stack_push(i32 * %op551, i32  %op552)
	lu12i.w $a0, -2
	ori $a0, $a0, 1864
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -2
	ori $a1, $a1, 1860
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl stack_push
# br label %label540
	b .eval_label540
.eval_label553:
# %op554 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1848
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# call void @stack_push(i32 * %op554, i32  %op532)
	lu12i.w $a0, -2
	ori $a0, $a0, 1848
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -2
	ori $a1, $a1, 1952
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl stack_push
# %op555 = load i32 , i32 * @cur_token
	la.local $t0, cur_token
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1844
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op556 = load i32 , i32 * @TOKEN_NUM
	la.local $t0, TOKEN_NUM
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1840
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op557 = icmp ne i32  %op555, %op556
	lu12i.w $t0, -2
	ori $t0, $t0, 1844
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1840
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bne  $t0, $t1, true_label37
	addi.d $t2, $zero, 0
	b false_label37
true_label37:
	addi.d $t2, $zero, 1
false_label37:
	lu12i.w $t8, -2
	ori $t8, $t8, 1839
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op558 = zext i1  %op557 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1839
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1832
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op559 = icmp ne i32  %op558, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label38
	addi.d $t2, $zero, 0
	b false_label38
true_label38:
	addi.d $t2, $zero, 1
false_label38:
	lu12i.w $t8, -2
	ori $t8, $t8, 1831
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op559, label %label568, label %label570
	lu12i.w $t0, -2
	ori $t0, $t0, 1831
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .eval_label568
	b .eval_label570
.eval_label560:
# %op561 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op562 = call i32  @stack_peek(i32 * %op561)
	lu12i.w $a0, -2
	ori $a0, $a0, 1816
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_peek
	lu12i.w $t8, -2
	ori $t8, $t8, 1812
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op563 = call i32  @get_op_prec(i32  %op562)
	lu12i.w $a0, -2
	ori $a0, $a0, 1812
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl get_op_prec
	lu12i.w $t8, -2
	ori $t8, $t8, 1808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op564 = call i32  @get_op_prec(i32  %op532)
	lu12i.w $a0, -2
	ori $a0, $a0, 1952
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl get_op_prec
	lu12i.w $t8, -2
	ori $t8, $t8, 1804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op565 = icmp sge i32  %op563, %op564
	lu12i.w $t0, -2
	ori $t0, $t0, 1808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -2
	ori $t1, $t1, 1804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	bge  $t0, $t1, true_label39
	addi.d $t2, $zero, 0
	b false_label39
true_label39:
	addi.d $t2, $zero, 1
false_label39:
	lu12i.w $t8, -2
	ori $t8, $t8, 1803
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op566 = zext i1  %op565 to i32 
	lu12i.w $t0, -2
	ori $t0, $t0, 1803
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1796
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op567 = icmp ne i32  %op566, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1796
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label40
	addi.d $t2, $zero, 0
	b false_label40
true_label40:
	addi.d $t2, $zero, 1
false_label40:
	lu12i.w $t8, -2
	ori $t8, $t8, 1795
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op567, label %label544, label %label553
	lu12i.w $t0, -2
	ori $t0, $t0, 1795
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .eval_label544
	b .eval_label553
.eval_label568:
# %op569 = call i32  @panic()
	bl panic
	lu12i.w $t8, -2
	ori $t8, $t8, 1788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# ret i32  %op569
	lu12i.w $a0, -2
	ori $a0, $a0, 1788
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b eval_ret
.eval_label570:
# %op571 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1776
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op572 = load i32 , i32 * @num
	la.local $t0, num
	ld.w $t1, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# call void @stack_push(i32 * %op571, i32  %op572)
	lu12i.w $a0, -2
	ori $a0, $a0, 1776
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -2
	ori $a1, $a1, 1772
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl stack_push
# %op573 = call i32  @next_token()
	bl next_token
	lu12i.w $t8, -2
	ori $t8, $t8, 1768
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# br label %label525
	b .eval_label525
.eval_label574:
# %op575 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op576 = call i32  @stack_size(i32 * %op575)
	lu12i.w $a0, -2
	ori $a0, $a0, 1760
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_size
	lu12i.w $t8, -2
	ori $t8, $t8, 1756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op577 = icmp ne i32  %op576, 0
	lu12i.w $t0, -2
	ori $t0, $t0, 1756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label41
	addi.d $t2, $zero, 0
	b false_label41
true_label41:
	addi.d $t2, $zero, 1
false_label41:
	lu12i.w $t8, -2
	ori $t8, $t8, 1755
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op577, label %label578, label %label587
	lu12i.w $t0, -2
	ori $t0, $t0, 1755
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .eval_label578
	b .eval_label587
.eval_label578:
# %op579 = getelementptr [256 x i32 ], [256 x i32 ]* %op0, i32  0, i32  0
	ld.d $t0, $fp, -24
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op580 = call i32  @stack_pop(i32 * %op579)
	lu12i.w $a0, -2
	ori $a0, $a0, 1744
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_pop
	lu12i.w $t8, -2
	ori $t8, $t8, 1740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op581 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1728
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op582 = call i32  @stack_pop(i32 * %op581)
	lu12i.w $a0, -2
	ori $a0, $a0, 1728
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_pop
	lu12i.w $t8, -2
	ori $t8, $t8, 1724
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op583 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op584 = call i32  @stack_pop(i32 * %op583)
	lu12i.w $a0, -2
	ori $a0, $a0, 1712
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_pop
	lu12i.w $t8, -2
	ori $t8, $t8, 1708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# %op585 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1696
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op586 = call i32  @eval_op(i32  %op580, i32  %op582, i32  %op584)
	lu12i.w $a0, -2
	ori $a0, $a0, 1740
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	lu12i.w $a1, -2
	ori $a1, $a1, 1724
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	lu12i.w $a2, -2
	ori $a2, $a2, 1708
	lu32i.d $a2, -1
	lu52i.d $a2, $a2, -1
	add.d $a2, $fp, $a2
	ld.w $a2, $a2, 0
	bl eval_op
	lu12i.w $t8, -2
	ori $t8, $t8, 1692
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# call void @stack_push(i32 * %op585, i32  %op586)
	lu12i.w $a0, -2
	ori $a0, $a0, 1696
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	lu12i.w $a1, -2
	ori $a1, $a1, 1692
	lu32i.d $a1, -1
	lu52i.d $a1, $a1, -1
	add.d $a1, $fp, $a1
	ld.w $a1, $a1, 0
	bl stack_push
# br label %label574
	b .eval_label574
.eval_label587:
# %op588 = getelementptr [256 x i32 ], [256 x i32 ]* %op257, i32  0, i32  0
	lu12i.w $t0, -1
	ori $t0, $t0, 992
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	addi.d $t2, $t0, 0
	lu12i.w $t8, -2
	ori $t8, $t8, 1680
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op589 = call i32  @stack_peek(i32 * %op588)
	lu12i.w $a0, -2
	ori $a0, $a0, 1680
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.d $a0, $a0, 0
	bl stack_peek
	lu12i.w $t8, -2
	ori $t8, $t8, 1676
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $a0, $t8, 0
# ret i32  %op589
	lu12i.w $a0, -2
	ori $a0, $a0, 1676
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b eval_ret
eval_ret:
	lu12i.w $t0, 1
	ori $t0, $t0, 2432
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	sub.d $t0, $zero, $t0
	add.d $sp, $sp, $t0
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
# %op0 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -20
# %op1 = call i32  @getch()
	bl getch
	st.w $a0, $fp, -24
# %op2 = call i32  @next_token()
	bl next_token
	st.w $a0, $fp, -28
# br label %label3
	ld.w $t0, $fp, -20
	st.w $t0, $fp, -32
	b .main_label3
.main_label3:
# %op4 = phi i32  [ %op0, %label_entry ], [ %op8, %label6 ]
# %op5 = icmp ne i32  %op4, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label42
	addi.d $t2, $zero, 0
	b false_label42
true_label42:
	addi.d $t2, $zero, 1
false_label42:
	st.b $t2, $fp, -33
# br i1  %op5, label %label6, label %label9
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label9
.main_label6:
# %op7 = call i32  @eval()
	bl eval
	st.w $a0, $fp, -40
# call void @putint(i32  %op7)
	ld.w $a0, $fp, -40
	bl putint
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op8 = sub i32  %op4, 1
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# br label %label3
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -32
	b .main_label3
.main_label9:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 48
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
