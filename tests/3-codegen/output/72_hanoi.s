	.text
	.globl move
	.type move, @function
move:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.move_label_entry:
# %op2 = alloca i32 
	addi.d $t1, $fp, -36
	st.d $t1, $fp, -32
# store i32  %arg0, i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op3 = alloca i32 
	addi.d $t1, $fp, -52
	st.d $t1, $fp, -48
# store i32  %arg1, i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op4 = load i32 , i32 * %op2
	ld.d $t0, $fp, -32
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# call void @putint(i32  %op4)
	ld.w $a0, $fp, -56
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# %op5 = load i32 , i32 * %op3
	ld.d $t0, $fp, -48
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -60
# call void @putint(i32  %op5)
	ld.w $a0, $fp, -60
	bl putint
# call void @putch(i32  44)
	addi.w $a0, $zero, 44
	bl putch
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# ret void
	addi.d $a0, $zero, 0
	b move_ret
move_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl hanoi
	.type hanoi, @function
hanoi:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -176
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
.hanoi_label_entry:
# %op4 = alloca i32 
	addi.d $t1, $fp, -44
	st.d $t1, $fp, -40
# store i32  %arg0, i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $fp, -20
	st.w $t1, $t0, 0
# %op5 = alloca i32 
	addi.d $t1, $fp, -60
	st.d $t1, $fp, -56
# store i32  %arg1, i32 * %op5
	ld.d $t0, $fp, -56
	ld.w $t1, $fp, -24
	st.w $t1, $t0, 0
# %op6 = alloca i32 
	addi.d $t1, $fp, -76
	st.d $t1, $fp, -72
# store i32  %arg2, i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $fp, -28
	st.w $t1, $t0, 0
# %op7 = alloca i32 
	addi.d $t1, $fp, -92
	st.d $t1, $fp, -88
# store i32  %arg3, i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# %op8 = load i32 , i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -96
# %op9 = icmp eq i32  %op8, 1
	ld.w $t0, $fp, -96
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -97
# %op10 = zext i1  %op9 to i32 
	ld.b $t0, $fp, -97
	st.w $t0, $fp, -104
# %op11 = icmp ne i32  %op10, 0
	ld.w $t0, $fp, -104
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -105
# br i1  %op11, label %label12, label %label15
	ld.b $t0, $fp, -105
	bnez $t0, .hanoi_label12
	b .hanoi_label15
.hanoi_label12:
# %op13 = load i32 , i32 * %op5
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -112
# %op14 = load i32 , i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -116
# call void @move(i32  %op13, i32  %op14)
	ld.w $a0, $fp, -112
	ld.w $a1, $fp, -116
	bl move
# br label %label28
	b .hanoi_label28
.hanoi_label15:
# %op16 = load i32 , i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -120
# %op17 = sub i32  %op16, 1
	ld.w $t0, $fp, -120
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -124
# %op18 = load i32 , i32 * %op5
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -128
# %op19 = load i32 , i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -132
# %op20 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -136
# call void @hanoi(i32  %op17, i32  %op18, i32  %op19, i32  %op20)
	ld.w $a0, $fp, -124
	ld.w $a1, $fp, -128
	ld.w $a2, $fp, -132
	ld.w $a3, $fp, -136
	bl hanoi
# %op21 = load i32 , i32 * %op5
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -140
# %op22 = load i32 , i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -144
# call void @move(i32  %op21, i32  %op22)
	ld.w $a0, $fp, -140
	ld.w $a1, $fp, -144
	bl move
# %op23 = load i32 , i32 * %op4
	ld.d $t0, $fp, -40
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -148
# %op24 = sub i32  %op23, 1
	ld.w $t0, $fp, -148
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -152
# %op25 = load i32 , i32 * %op6
	ld.d $t0, $fp, -72
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -156
# %op26 = load i32 , i32 * %op5
	ld.d $t0, $fp, -56
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -160
# %op27 = load i32 , i32 * %op7
	ld.d $t0, $fp, -88
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -164
# call void @hanoi(i32  %op24, i32  %op25, i32  %op26, i32  %op27)
	ld.w $a0, $fp, -152
	ld.w $a1, $fp, -156
	ld.w $a2, $fp, -160
	ld.w $a3, $fp, -164
	bl hanoi
# br label %label28
	b .hanoi_label28
.hanoi_label28:
# ret void
	addi.d $a0, $zero, 0
	b hanoi_ret
hanoi_ret:
	addi.d $sp, $sp, 176
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
# %op0 = alloca i32 
	addi.d $t1, $fp, -28
	st.d $t1, $fp, -24
# %op1 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -32
# store i32  %op1, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -32
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label2:
# %op3 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op4 = icmp sgt i32  %op3, 0
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 0
	slt $t2, $t1, $t0
	st.b $t2, $fp, -37
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -37
	st.w $t0, $fp, -44
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -44
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -45
# br i1  %op6, label %label7, label %label11
	ld.b $t0, $fp, -45
	bnez $t0, .main_label7
	b .main_label11
.main_label7:
# %op8 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -52
# call void @hanoi(i32  %op8, i32  1, i32  2, i32  3)
	ld.w $a0, $fp, -52
	addi.w $a1, $zero, 1
	addi.w $a2, $zero, 2
	addi.w $a3, $zero, 3
	bl hanoi
# call void @putch(i32  10)
	addi.w $a0, $zero, 10
	bl putch
# %op9 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -56
# %op10 = sub i32  %op9, 1
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -60
# store i32  %op10, i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $fp, -60
	st.w $t1, $t0, 0
# br label %label2
	b .main_label2
.main_label11:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 64
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
