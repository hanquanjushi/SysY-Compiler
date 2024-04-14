# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl a
	.data
	.type a, @object
	.size a, 20
a:
	.word  0
	.word  1
	.word  2
	.word  3
	.word  4
	.text
	.globl main
	.type main, @function
main:
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	addi.d $fp, $sp, 0
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = getelementptr [5 x i32 ], [5 x i32 ]* @a, i32  0, i32  4
	la.local $t0, a
	addi.d $t2, $t0, 16
	st.d $t2, $fp, -24
# %op1 = load i32 , i32 * %op0
	ld.d $t0, $fp, -24
	ld.w $t1, $t0, 0
	st.w $t1, $fp, -28
# ret i32  %op1
	ld.w $a0, $fp, -28
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
