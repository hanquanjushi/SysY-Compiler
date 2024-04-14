# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 4
a:
	.word 7
	.text
	.globl func
	.type func, @function
func:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.func_label_entry:
# %op0 = load i32 , i32 * @a
	la.local $t0, a
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = icmp eq i32  1, %op0
	addi.w $t0, $zero, 1
	ld.w $t1, $fp, -20
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
# br i1  %op3, label %label4, label %label5
	ld.b $t0, $fp, -29
	bnez $t0, .func_label4
	b .func_label5
.func_label4:
# ret i32  1
	addi.w $a0, $zero, 1
	b func_ret
.func_label5:
# ret i32  0
	addi.w $a0, $zero, 0
	b func_ret
func_ret:
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
	addi.d $sp, $sp, -80
.main_label_entry:
# br label %label0
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -20
	addi.w $t0, $zero, 0
	st.w $t0, $fp, -24
	b .main_label0
.main_label0:
# %op1 = phi i32  [ 0, %label_entry ], [ %op19, %label17 ]
# %op2 = phi i32  [ 0, %label_entry ], [ %op18, %label17 ]
# %op3 = icmp slt i32  %op1, 100
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
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
# br i1  %op5, label %label6, label %label11
	ld.b $t0, $fp, -33
	bnez $t0, .main_label6
	b .main_label11
.main_label6:
# %op7 = call i32  @func()
	bl func
	st.w $a0, $fp, -40
# %op8 = icmp eq i32  %op7, 1
	ld.w $t0, $fp, -40
	addi.w $t1, $zero, 1
	beq  $t0, $t1, true_label4
	addi.d $t2, $zero, 0
	b false_label4
true_label4:
	addi.d $t2, $zero, 1
false_label4:
	st.b $t2, $fp, -41
# %op9 = zext i1  %op8 to i32 
	ld.b $t0, $fp, -41
	st.w $t0, $fp, -48
# %op10 = icmp ne i32  %op9, 0
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -49
# br i1  %op10, label %label15, label %label17
	ld.w $t0, $fp, -24
	st.w $t0, $fp, -68
	ld.b $t0, $fp, -49
	bnez $t0, .main_label15
	b .main_label17
.main_label11:
# %op12 = icmp slt i32  %op2, 100
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 100
	slt $t2, $t0, $t1
	st.b $t2, $fp, -50
# %op13 = zext i1  %op12 to i32 
	ld.b $t0, $fp, -50
	st.w $t0, $fp, -56
# %op14 = icmp ne i32  %op13, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	st.b $t2, $fp, -57
# br i1  %op14, label %label20, label %label21
	ld.b $t0, $fp, -57
	bnez $t0, .main_label20
	b .main_label21
.main_label15:
# %op16 = add i32  %op2, 1
	ld.w $t0, $fp, -24
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# br label %label17
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -68
	b .main_label17
.main_label17:
# %op18 = phi i32  [ %op2, %label6 ], [ %op16, %label15 ]
# %op19 = add i32  %op1, 1
	ld.w $t0, $fp, -20
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -72
# br label %label0
	ld.w $t0, $fp, -72
	st.w $t0, $fp, -20
	ld.w $t0, $fp, -68
	st.w $t0, $fp, -24
	b .main_label0
.main_label20:
# call void @putint(i32  1)
	addi.w $a0, $zero, 1
	bl putint
# br label %label22
	b .main_label22
.main_label21:
# call void @putint(i32  0)
	addi.w $a0, $zero, 0
	bl putint
# br label %label22
	b .main_label22
.main_label22:
# ret i32  0
	addi.w $a0, $zero, 0
	b main_ret
main_ret:
	addi.d $sp, $sp, 80
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
