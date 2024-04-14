	.text
	.globl reverse
	.type reverse, @function
reverse:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
	st.w $a0, $fp, -20
.reverse_label_entry:
# %op1 = icmp sle i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	bge  $t1, $t0, true_label0
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
	bnez $t0, .reverse_label4
	b .reverse_label6
.reverse_label4:
# %op5 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -36
# call void @putint(i32  %op5)
	ld.w $a0, $fp, -36
	bl putint
# br label %label9
	b .reverse_label9
.reverse_label6:
# %op7 = call i32  @getint()
	bl getint
	st.w $a0, $fp, -40
# %op8 = sub i32  %arg0, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# call void @reverse(i32  %op8)
	ld.w $a0, $fp, -44
	bl reverse
# call void @putint(i32  %op7)
	ld.w $a0, $fp, -40
	bl putint
# br label %label9
	b .reverse_label9
.reverse_label9:
# ret void
	addi.d $a0, $zero, 0
	b reverse_ret
reverse_ret:
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
	addi.d $sp, $sp, -16
.main_label_entry:
# call void @reverse(i32  200)
	addi.w $a0, $zero, 200
	bl reverse
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 16
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
