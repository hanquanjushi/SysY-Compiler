# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl k
	.type k, @object
	.size k, 4
k:
	.space 4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -96
.main_label_entry:
# store i32  3389, i32 * @k
	la.local $t0, k
	lu12i.w $t1, 0
	ori $t1, $t1, 3389
	st.w $t1, $t0, 0
# %op0 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -20
# %op1 = icmp slt i32  %op0, 10000
	ld.w $t0, $fp, -20
	lu12i.w $t1, 2
	ori $t1, $t1, 1808
	slt $t2, $t0, $t1
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
# br i1  %op3, label %label4, label %label7
	ld.b $t0, $fp, -29
	bnez $t0, .main_label4
	b .main_label7
.main_label4:
# %op5 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -36
# %op6 = add i32  %op5, 1
	ld.w $t0, $fp, -36
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -40
# store i32  %op6, i32 * @k
	la.local $t0, k
	ld.w $t1, $fp, -40
	st.w $t1, $t0, 0
# br label %label9
	addi.w $t0, $zero, 112
	st.w $t0, $fp, -48
	b .main_label9
.main_label7:
# %op8 = load i32 , i32 * @k
	la.local $t0, k
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -44
# ret i32  %op8
	ld.w $a0, $fp, -44
	b main_ret
.main_label9:
# %op10 = phi i32  [ 112, %label4 ], [ %op25, %label24 ]
# %op11 = icmp sgt i32  %op10, 10
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 10
	slt $t2, $t1, $t0
	st.b $t2, $fp, -49
# %op12 = zext i1  %op11 to i32 
	ld.b $t0, $fp, -49
	st.w $t0, $fp, -56
# %op13 = icmp ne i32  %op12, 0
	ld.w $t0, $fp, -56
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	st.b $t2, $fp, -57
# br i1  %op13, label %label14, label %label19
	ld.b $t0, $fp, -57
	bnez $t0, .main_label14
	b .main_label19
.main_label14:
# %op15 = sub i32  %op10, 88
	ld.w $t0, $fp, -48
	addi.w $t1, $zero, 88
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -64
# %op16 = icmp slt i32  %op15, 1000
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 1000
	slt $t2, $t0, $t1
	st.b $t2, $fp, -65
# %op17 = zext i1  %op16 to i32 
	ld.b $t0, $fp, -65
	st.w $t0, $fp, -72
# %op18 = icmp ne i32  %op17, 0
	ld.w $t0, $fp, -72
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	st.b $t2, $fp, -73
# br i1  %op18, label %label20, label %label24
	ld.w $t0, $fp, -64
	st.w $t0, $fp, -92
	ld.b $t0, $fp, -73
	bnez $t0, .main_label20
	b .main_label24
.main_label19:
# call void @putint(i32  %op10)
	ld.w $a0, $fp, -48
	bl putint
# br label %label7
	b .main_label7
.main_label20:
# %op21 = sub i32  %op15, 10
	ld.w $t0, $fp, -64
	addi.w $t1, $zero, 10
	sub.w $t2, $t0, $t1
	st.w $t2, $fp, -80
# %op22 = add i32  %op21, 11
	ld.w $t0, $fp, -80
	addi.w $t1, $zero, 11
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -84
# %op23 = add i32  %op22, 11
	ld.w $t0, $fp, -84
	addi.w $t1, $zero, 11
	add.w $t2, $t0, $t1
	st.w $t2, $fp, -88
# br label %label24
	ld.w $t0, $fp, -88
	st.w $t0, $fp, -92
	b .main_label24
.main_label24:
# %op25 = phi i32  [ %op15, %label14 ], [ %op23, %label20 ]
# br label %label9
	ld.w $t0, $fp, -92
	st.w $t0, $fp, -48
	b .main_label9
main_ret:
	addi.d $sp, $sp, 96
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
