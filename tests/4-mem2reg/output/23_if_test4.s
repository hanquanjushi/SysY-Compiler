	.text
	.globl if_ifElse_
	.type if_ifElse_, @function
if_ifElse_:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -48
.if_ifElse__label_entry:
# %op0 = icmp eq i32  5, 5
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 5
	beq  $t0, $t1, true_label0
	addi.d $t2, $zero, 0
	b false_label0
true_label0:
	addi.d $t2, $zero, 1
false_label0:
	st.b $t2, $fp, -17
# %op1 = zext i1  %op0 to i32 
	ld.b $t0, $fp, -17
	st.w $t0, $fp, -24
# %op2 = icmp ne i32  %op1, 0
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	st.b $t2, $fp, -25
# br i1  %op2, label %label3, label %label7
	addi.w $t0, $zero, 5
	st.w $t0, $fp, -40
	ld.b $t0, $fp, -25
	bnez $t0, .if_ifElse__label3
	b .if_ifElse__label7
.if_ifElse__label3:
# %op4 = icmp eq i32  10, 10
	addi.w $t0, $zero, 10
	addi.w $t1, $zero, 10
	beq  $t0, $t1, true_label2
	addi.d $t2, $zero, 0
	b false_label2
true_label2:
	addi.d $t2, $zero, 1
false_label2:
	st.b $t2, $fp, -26
# %op5 = zext i1  %op4 to i32 
	ld.b $t0, $fp, -26
	st.w $t0, $fp, -32
# %op6 = icmp ne i32  %op5, 0
	ld.w $t0, $fp, -32
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -33
# br i1  %op6, label %label9, label %label10
	ld.b $t0, $fp, -33
	bnez $t0, .if_ifElse__label9
	b .if_ifElse__label10
.if_ifElse__label7:
# %op8 = phi i32  [ 5, %label_entry ], [ %op13, %label12 ]
# ret i32  %op8
	ld.w $a0, $fp, -40
	b if_ifElse__ret
.if_ifElse__label9:
# br label %label12
	addi.w $t0, $zero, 25
	st.w $t0, $fp, -48
	b .if_ifElse__label12
.if_ifElse__label10:
# %op11 = add i32  5, 15
	addi.w $t0, $zero, 5
	addi.w $t1, $zero, 15
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -44
# br label %label12
	ld.w $t0, $fp, -44
	st.w $t0, $fp, -48
	b .if_ifElse__label12
.if_ifElse__label12:
# %op13 = phi i32  [ 25, %label9 ], [ %op11, %label10 ]
# br label %label7
	ld.w $t0, $fp, -48
	st.w $t0, $fp, -40
	b .if_ifElse__label7
if_ifElse__ret:
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
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = call i32  @if_ifElse_()
	bl if_ifElse_
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
