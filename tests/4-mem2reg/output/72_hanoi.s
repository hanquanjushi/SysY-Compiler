	.text
	.globl move
	.type move, @function
move:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
.move_label_entry:
# call void @putint(i32  %arg0)
	ld.w $a0, $fp, -20
	bl putint
# call void @putch(i32  32)
	addi.w $a0, $zero, 32
	bl putch
# call void @putint(i32  %arg1)
	ld.w $a0, $fp, -24
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
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
	.globl hanoi
	.type hanoi, @function
hanoi:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -64
	st.w $a0, $fp, -20
	st.w $a1, $fp, -24
	st.w $a2, $fp, -28
	st.w $a3, $fp, -32
.hanoi_label_entry:
# %op4 = icmp eq i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -33
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -33
	st.w $t0, $fp, -40
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -41
# br i1  %op6, label %label7, label %label8
	ld.b $t0, $fp, -41
	bnez $t0, .hanoi_label7
	b .hanoi_label8
.hanoi_label7:
# call void @move(i32  %arg1, i32  %arg3)
	ld.w $a0, $fp, -24
	ld.w $a1, $fp, -32
	bl move
# br label %label11
	b .hanoi_label11
.hanoi_label8:
# %op9 = sub i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -48
# call void @hanoi(i32  %op9, i32  %arg1, i32  %arg3, i32  %arg2)
	ld.w $a0, $fp, -48
	ld.w $a1, $fp, -24
	ld.w $a2, $fp, -32
	ld.w $a3, $fp, -28
	bl hanoi
# call void @move(i32  %arg1, i32  %arg3)
	ld.w $a0, $fp, -24
	ld.w $a1, $fp, -32
	bl move
# %op10 = sub i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -52
# call void @hanoi(i32  %op10, i32  %arg2, i32  %arg1, i32  %arg3)
	ld.w $a0, $fp, -52
	ld.w $a1, $fp, -28
	ld.w $a2, $fp, -24
	ld.w $a3, $fp, -32
	bl hanoi
# br label %label11
	b .hanoi_label11
.hanoi_label11:
# ret void
	addi.d $a0, $zero, 0
	b hanoi_ret
hanoi_ret:
	addi.d $sp, $sp, 64
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
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -33
# br i1  %op5, label %label6, label %label9
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label9
.main_label6:
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -40
# call void @hanoi(i32  %op7, i32  1, i32  2, i32  3)
	ld.w $a0, $fp, -40
	addi.w $a1, $zero, 1
	addi.w $a2, $zero, 2
	addi.w $a3, $zero, 3
	bl hanoi
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
