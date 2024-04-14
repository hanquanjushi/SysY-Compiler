# Global variables
	.text
	.section .bss, "aw", @nobits
	.globl N
	.data
	.type N, @object
	.size N, 4
N:
	.word 10000
	.text
	.globl long_array
	.type long_array, @function
long_array:
	lu12i.w $t0, 29
	ori $t0, $t0, 1792
	lu32i.d $t0, 0
	lu52i.d $t0, $t0, 0
	st.d $ra, $sp, -8
	st.d $fp, $sp, -16
	sub.d $sp, $sp, $t0
	add.d $fp, $sp, $t0
	st.w $a0, $fp, -20
.long_array_label_entry:
# %op1 = alloca [10000 x i32 ]
	lu12i.w $t0, -10
	ori $t0, $t0, 928
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	st.d $t1, $fp, -32
# %op2 = alloca [10000 x i32 ]
	lu12i.w $t0, -20
	ori $t0, $t0, 1880
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -10
	ori $t8, $t8, 920
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# %op3 = alloca [10000 x i32 ]
	lu12i.w $t0, -30
	ori $t0, $t0, 2832
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t1, $fp, $t0
	lu12i.w $t8, -20
	ori $t8, $t8, 1872
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t1, $t8, 0
# br label %label4
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label4
.long_array_label4:
# %op5 = phi i32  [ 0, %label_entry ], [ %op14, %label10 ]
# %op6 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2824
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op7 = icmp slt i32  %op5, %op6
	lu12i.w $t0, -30
	ori $t0, $t0, 2828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2824
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2823
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op8 = zext i1  %op7 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2823
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2816
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op9 = icmp ne i32  %op8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2816
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label1
	addi.d $t2, $zero, 0
	b false_label1
true_label1:
	addi.d $t2, $zero, 1
false_label1:
	lu12i.w $t8, -30
	ori $t8, $t8, 2815
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op9, label %label10, label %label15
	lu12i.w $t0, -30
	ori $t0, $t0, 2815
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label10
	b .long_array_label15
.long_array_label10:
# %op11 = mul i32  %op5, %op5
	lu12i.w $t0, -30
	ori $t0, $t0, 2828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2808
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op12 = srem i32  %op11, 10
	lu12i.w $t0, -30
	ori $t0, $t0, 2808
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 10
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2804
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op13 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op1, i32  0, i32  %op5
	ld.d $t0, $fp, -32
	lu12i.w $t1, -30
	ori $t1, $t1, 2828
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2792
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op12, i32 * %op13
	lu12i.w $t0, -30
	ori $t0, $t0, 2792
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2804
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op14 = add i32  %op5, 1
	lu12i.w $t0, -30
	ori $t0, $t0, 2828
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2788
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label4
	lu12i.w $t0, -30
	ori $t0, $t0, 2788
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2828
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label4
.long_array_label15:
# br label %label16
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label16
.long_array_label16:
# %op17 = phi i32  [ 0, %label15 ], [ %op30, %label22 ]
# %op18 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2780
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op19 = icmp slt i32  %op17, %op18
	lu12i.w $t0, -30
	ori $t0, $t0, 2784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2780
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2779
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op20 = zext i1  %op19 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2779
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2772
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op21 = icmp ne i32  %op20, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2772
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label3
	addi.d $t2, $zero, 0
	b false_label3
true_label3:
	addi.d $t2, $zero, 1
false_label3:
	lu12i.w $t8, -30
	ori $t8, $t8, 2771
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op21, label %label22, label %label31
	lu12i.w $t0, -30
	ori $t0, $t0, 2771
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label22
	b .long_array_label31
.long_array_label22:
# %op23 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op1, i32  0, i32  %op17
	ld.d $t0, $fp, -32
	lu12i.w $t1, -30
	ori $t1, $t1, 2784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2760
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op24 = load i32 , i32 * %op23
	lu12i.w $t0, -30
	ori $t0, $t0, 2760
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2756
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op25 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op1, i32  0, i32  %op17
	ld.d $t0, $fp, -32
	lu12i.w $t1, -30
	ori $t1, $t1, 2784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2744
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op26 = load i32 , i32 * %op25
	lu12i.w $t0, -30
	ori $t0, $t0, 2744
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2740
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op27 = mul i32  %op24, %op26
	lu12i.w $t0, -30
	ori $t0, $t0, 2756
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2740
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2736
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op28 = srem i32  %op27, 10
	lu12i.w $t0, -30
	ori $t0, $t0, 2736
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 10
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2732
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op29 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op17
	lu12i.w $t0, -10
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2784
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2720
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op28, i32 * %op29
	lu12i.w $t0, -30
	ori $t0, $t0, 2720
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2732
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op30 = add i32  %op17, 1
	lu12i.w $t0, -30
	ori $t0, $t0, 2784
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2716
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label16
	lu12i.w $t0, -30
	ori $t0, $t0, 2716
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2784
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label16
.long_array_label31:
# br label %label32
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label32
.long_array_label32:
# %op33 = phi i32  [ 0, %label31 ], [ %op49, %label38 ]
# %op34 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2708
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op35 = icmp slt i32  %op33, %op34
	lu12i.w $t0, -30
	ori $t0, $t0, 2712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2708
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2707
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op36 = zext i1  %op35 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2707
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2700
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op37 = icmp ne i32  %op36, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2700
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label5
	addi.d $t2, $zero, 0
	b false_label5
true_label5:
	addi.d $t2, $zero, 1
false_label5:
	lu12i.w $t8, -30
	ori $t8, $t8, 2699
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op37, label %label38, label %label50
	lu12i.w $t0, -30
	ori $t0, $t0, 2699
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label38
	b .long_array_label50
.long_array_label38:
# %op39 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op33
	lu12i.w $t0, -10
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2688
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op40 = load i32 , i32 * %op39
	lu12i.w $t0, -30
	ori $t0, $t0, 2688
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2684
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op41 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op33
	lu12i.w $t0, -10
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2672
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op42 = load i32 , i32 * %op41
	lu12i.w $t0, -30
	ori $t0, $t0, 2672
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2668
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op43 = mul i32  %op40, %op42
	lu12i.w $t0, -30
	ori $t0, $t0, 2684
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2668
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2664
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op44 = srem i32  %op43, 100
	lu12i.w $t0, -30
	ori $t0, $t0, 2664
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 100
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2660
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op45 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op1, i32  0, i32  %op33
	ld.d $t0, $fp, -32
	lu12i.w $t1, -30
	ori $t1, $t1, 2712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2648
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op46 = load i32 , i32 * %op45
	lu12i.w $t0, -30
	ori $t0, $t0, 2648
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2644
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op47 = add i32  %op44, %op46
	lu12i.w $t0, -30
	ori $t0, $t0, 2660
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2644
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2640
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op48 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op33
	lu12i.w $t0, -20
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2712
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2632
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# store i32  %op47, i32 * %op48
	lu12i.w $t0, -30
	ori $t0, $t0, 2632
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2640
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	st.w $t1, $t0, 0
# %op49 = add i32  %op33, 1
	lu12i.w $t0, -30
	ori $t0, $t0, 2712
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2628
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label32
	lu12i.w $t0, -30
	ori $t0, $t0, 2628
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2712
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label32
.long_array_label50:
# br label %label51
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	addi.w $t0, $zero, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label51
.long_array_label51:
# %op52 = phi i32  [ 0, %label50 ], [ %op73, %label72 ]
# %op53 = phi i32  [ 0, %label50 ], [ %op74, %label72 ]
# %op54 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2616
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op55 = icmp slt i32  %op53, %op54
	lu12i.w $t0, -30
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2616
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2615
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op56 = zext i1  %op55 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2615
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2608
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op57 = icmp ne i32  %op56, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2608
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label7
	addi.d $t2, $zero, 0
	b false_label7
true_label7:
	addi.d $t2, $zero, 1
false_label7:
	lu12i.w $t8, -30
	ori $t8, $t8, 2607
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op57, label %label58, label %label62
	lu12i.w $t0, -30
	ori $t0, $t0, 2607
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label58
	b .long_array_label62
.long_array_label58:
# %op59 = icmp slt i32  %op53, 10
	lu12i.w $t0, -30
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 10
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2606
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op60 = zext i1  %op59 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2606
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2600
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op61 = icmp ne i32  %op60, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2600
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label9
	addi.d $t2, $zero, 0
	b false_label9
true_label9:
	addi.d $t2, $zero, 1
false_label9:
	lu12i.w $t8, -30
	ori $t8, $t8, 2599
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op61, label %label63, label %label68
	lu12i.w $t0, -30
	ori $t0, $t0, 2599
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label63
	b .long_array_label68
.long_array_label62:
# ret i32  %op52
	lu12i.w $a0, -30
	ori $a0, $a0, 2624
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	b long_array_ret
.long_array_label63:
# %op64 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op53
	lu12i.w $t0, -20
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2584
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op65 = load i32 , i32 * %op64
	lu12i.w $t0, -30
	ori $t0, $t0, 2584
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2580
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op66 = add i32  %op52, %op65
	lu12i.w $t0, -30
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2580
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2576
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op67 = srem i32  %op66, 1333
	lu12i.w $t0, -30
	ori $t0, $t0, 2576
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1333
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2572
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# call void @putint(i32  %op67)
	lu12i.w $a0, -30
	ori $a0, $a0, 2572
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# br label %label72
	lu12i.w $t0, -30
	ori $t0, $t0, 2572
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label72
.long_array_label68:
# %op69 = icmp slt i32  %op53, 20
	lu12i.w $t0, -30
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 20
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2571
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op70 = zext i1  %op69 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2571
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2564
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op71 = icmp ne i32  %op70, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2564
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label11
	addi.d $t2, $zero, 0
	b false_label11
true_label11:
	addi.d $t2, $zero, 1
false_label11:
	lu12i.w $t8, -30
	ori $t8, $t8, 2563
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op71, label %label75, label %label78
	lu12i.w $t0, -30
	ori $t0, $t0, 2563
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label75
	b .long_array_label78
.long_array_label72:
# %op73 = phi i32  [ %op67, %label63 ], [ %op83, %label82 ]
# %op74 = add i32  %op53, 1
	lu12i.w $t0, -30
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2552
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label51
	lu12i.w $t0, -30
	ori $t0, $t0, 2556
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2624
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2552
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2620
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label51
.long_array_label75:
# %op76 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2548
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op77 = sdiv i32  %op76, 2
	lu12i.w $t0, -30
	ori $t0, $t0, 2548
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2544
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label84
	lu12i.w $t0, -30
	ori $t0, $t0, 2544
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label84
.long_array_label78:
# %op79 = icmp slt i32  %op53, 30
	lu12i.w $t0, -30
	ori $t0, $t0, 2620
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 30
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2543
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op80 = zext i1  %op79 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2543
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2536
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op81 = icmp ne i32  %op80, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2536
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label13
	addi.d $t2, $zero, 0
	b false_label13
true_label13:
	addi.d $t2, $zero, 1
false_label13:
	lu12i.w $t8, -30
	ori $t8, $t8, 2535
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op81, label %label100, label %label103
	lu12i.w $t0, -30
	ori $t0, $t0, 2535
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label100
	b .long_array_label103
.long_array_label82:
# %op83 = phi i32  [ %op86, %label99 ], [ %op110, %label109 ]
# br label %label72
	lu12i.w $t0, -30
	ori $t0, $t0, 2528
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2556
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label72
.long_array_label84:
# %op85 = phi i32  [ %op77, %label75 ], [ %op98, %label91 ]
# %op86 = phi i32  [ %op52, %label75 ], [ %op97, %label91 ]
# %op87 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2516
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op88 = icmp slt i32  %op85, %op87
	lu12i.w $t0, -30
	ori $t0, $t0, 2524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2516
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2515
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op89 = zext i1  %op88 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2515
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2508
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op90 = icmp ne i32  %op89, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2508
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label15
	addi.d $t2, $zero, 0
	b false_label15
true_label15:
	addi.d $t2, $zero, 1
false_label15:
	lu12i.w $t8, -30
	ori $t8, $t8, 2507
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op90, label %label91, label %label99
	lu12i.w $t0, -30
	ori $t0, $t0, 2507
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label91
	b .long_array_label99
.long_array_label91:
# %op92 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op53
	lu12i.w $t0, -20
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2496
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op93 = load i32 , i32 * %op92
	lu12i.w $t0, -30
	ori $t0, $t0, 2496
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2492
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op94 = add i32  %op86, %op93
	lu12i.w $t0, -30
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2492
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2488
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op95 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op1, i32  0, i32  %op85
	ld.d $t0, $fp, -32
	lu12i.w $t1, -30
	ori $t1, $t1, 2524
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2480
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op96 = load i32 , i32 * %op95
	lu12i.w $t0, -30
	ori $t0, $t0, 2480
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2476
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op97 = sub i32  %op94, %op96
	lu12i.w $t0, -30
	ori $t0, $t0, 2488
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2476
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2472
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op98 = add i32  %op85, 1
	lu12i.w $t0, -30
	ori $t0, $t0, 2524
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2468
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label84
	lu12i.w $t0, -30
	ori $t0, $t0, 2468
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2524
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2472
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2520
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label84
.long_array_label99:
# call void @putint(i32  %op86)
	lu12i.w $a0, -30
	ori $a0, $a0, 2520
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# br label %label82
	lu12i.w $t0, -30
	ori $t0, $t0, 2520
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label82
.long_array_label100:
# %op101 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2464
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op102 = sdiv i32  %op101, 2
	lu12i.w $t0, -30
	ori $t0, $t0, 2464
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	div.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2460
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label111
	lu12i.w $t0, -30
	ori $t0, $t0, 2460
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label111
.long_array_label103:
# %op104 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op53
	lu12i.w $t0, -20
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2448
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op105 = load i32 , i32 * %op104
	lu12i.w $t0, -30
	ori $t0, $t0, 2448
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2444
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op106 = mul i32  %op105, %arg0
	lu12i.w $t0, -30
	ori $t0, $t0, 2444
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	ld.w $t1, $fp, -20
	mul.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2440
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op107 = add i32  %op52, %op106
	lu12i.w $t0, -30
	ori $t0, $t0, 2624
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2440
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2436
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op108 = srem i32  %op107, 99988
	lu12i.w $t0, -30
	ori $t0, $t0, 2436
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 24
	ori $t1, $t1, 1684
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2432
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label109
	lu12i.w $t0, -30
	ori $t0, $t0, 2432
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label109
.long_array_label109:
# %op110 = phi i32  [ %op113, %label122 ], [ %op108, %label103 ]
# br label %label82
	lu12i.w $t0, -30
	ori $t0, $t0, 2428
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2528
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label82
.long_array_label111:
# %op112 = phi i32  [ %op102, %label100 ], [ %op141, %label140 ]
# %op113 = phi i32  [ %op52, %label100 ], [ %op142, %label140 ]
# %op114 = load i32 , i32 * @N
	la.local $t0, N
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2416
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op115 = icmp slt i32  %op112, %op114
	lu12i.w $t0, -30
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2416
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	slt $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2415
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op116 = zext i1  %op115 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2415
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2408
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op117 = icmp ne i32  %op116, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2408
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label17
	addi.d $t2, $zero, 0
	b false_label17
true_label17:
	addi.d $t2, $zero, 1
false_label17:
	lu12i.w $t8, -30
	ori $t8, $t8, 2407
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op117, label %label118, label %label122
	lu12i.w $t0, -30
	ori $t0, $t0, 2407
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label118
	b .long_array_label122
.long_array_label118:
# %op119 = icmp sgt i32  %op112, 2233
	lu12i.w $t0, -30
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 0
	ori $t1, $t1, 2233
	slt $t2, $t1, $t0
	lu12i.w $t8, -30
	ori $t8, $t8, 2406
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# %op120 = zext i1  %op119 to i32 
	lu12i.w $t0, -30
	ori $t0, $t0, 2406
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2400
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
# %op121 = icmp ne i32  %op120, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2400
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 0
	bne  $t0, $t1, true_label19
	addi.d $t2, $zero, 0
	b false_label19
true_label19:
	addi.d $t2, $zero, 1
false_label19:
	lu12i.w $t8, -30
	ori $t8, $t8, 2399
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.b $t2, $t8, 0
# br i1  %op121, label %label123, label %label131
	lu12i.w $t0, -30
	ori $t0, $t0, 2399
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.b $t0, $t0, 0
	bnez $t0, .long_array_label123
	b .long_array_label131
.long_array_label122:
# call void @putint(i32  %op113)
	lu12i.w $a0, -30
	ori $a0, $a0, 2420
	lu32i.d $a0, -1
	lu52i.d $a0, $a0, -1
	add.d $a0, $fp, $a0
	ld.w $a0, $a0, 0
	bl putint
# br label %label109
	lu12i.w $t0, -30
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2428
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label109
.long_array_label123:
# %op124 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op53
	lu12i.w $t0, -10
	ori $t0, $t0, 920
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2384
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op125 = load i32 , i32 * %op124
	lu12i.w $t0, -30
	ori $t0, $t0, 2384
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2380
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op126 = add i32  %op113, %op125
	lu12i.w $t0, -30
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2380
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2376
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op127 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op1, i32  0, i32  %op112
	ld.d $t0, $fp, -32
	lu12i.w $t1, -30
	ori $t1, $t1, 2424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2368
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op128 = load i32 , i32 * %op127
	lu12i.w $t0, -30
	ori $t0, $t0, 2368
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2364
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op129 = sub i32  %op126, %op128
	lu12i.w $t0, -30
	ori $t0, $t0, 2376
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2364
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	sub.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2360
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op130 = add i32  %op112, 1
	lu12i.w $t0, -30
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 1
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2356
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label140
	lu12i.w $t0, -30
	ori $t0, $t0, 2356
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2360
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label140
.long_array_label131:
# %op132 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op1, i32  0, i32  %op53
	ld.d $t0, $fp, -32
	lu12i.w $t1, -30
	ori $t1, $t1, 2620
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2344
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op133 = load i32 , i32 * %op132
	lu12i.w $t0, -30
	ori $t0, $t0, 2344
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2340
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op134 = add i32  %op113, %op133
	lu12i.w $t0, -30
	ori $t0, $t0, 2420
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2340
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2336
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op135 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op112
	lu12i.w $t0, -20
	ori $t0, $t0, 1872
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2424
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	addi.d $t3, $zero, 1
	mul.d $t1, $t1, $t3 
	slli.d $t1, $t1, 2
	add.d $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2328
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.d $t2, $t8, 0
# %op136 = load i32 , i32 * %op135
	lu12i.w $t0, -30
	ori $t0, $t0, 2328
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.d $t0, $t0, 0
	ld.w $t1, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2324
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t1, $t8, 0
# %op137 = add i32  %op134, %op136
	lu12i.w $t0, -30
	ori $t0, $t0, 2336
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, -30
	ori $t1, $t1, 2324
	lu32i.d $t1, -1
	lu52i.d $t1, $t1, -1
	add.d $t1, $fp, $t1
	ld.w $t1, $t1, 0
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2320
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op138 = srem i32  %op137, 13333
	lu12i.w $t0, -30
	ori $t0, $t0, 2320
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t1, 3
	ori $t1, $t1, 1045
	mod.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2316
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# %op139 = add i32  %op112, 2
	lu12i.w $t0, -30
	ori $t0, $t0, 2424
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	addi.w $t1, $zero, 2
	add.w $t2, $t0, $t1
	lu12i.w $t8, -30
	ori $t8, $t8, 2312
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t2, $t8, 0
# br label %label140
	lu12i.w $t0, -30
	ori $t0, $t0, 2312
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2308
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2316
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2304
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label140
.long_array_label140:
# %op141 = phi i32  [ %op130, %label123 ], [ %op139, %label131 ]
# %op142 = phi i32  [ %op129, %label123 ], [ %op138, %label131 ]
# br label %label111
	lu12i.w $t0, -30
	ori $t0, $t0, 2308
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2424
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	lu12i.w $t0, -30
	ori $t0, $t0, 2304
	lu32i.d $t0, -1
	lu52i.d $t0, $t0, -1
	add.d $t0, $fp, $t0
	ld.w $t0, $t0, 0
	lu12i.w $t8, -30
	ori $t8, $t8, 2420
	lu32i.d $t8, -1
	lu52i.d $t8, $t8, -1
	add.d $t8, $fp, $t8
	st.w $t0, $t8, 0
	b .long_array_label111
long_array_ret:
	lu12i.w $t0, 29
	ori $t0, $t0, 1792
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
	addi.d $sp, $sp, -32
.main_label_entry:
# %op0 = call i32  @long_array(i32  9)
	addi.w $a0, $zero, 9
	bl long_array
	st.w $a0, $fp, -20
# ret i32  %op0
	ld.w $a0, $fp, -20
	b main_ret
main_ret:
	addi.d $sp, $sp, 32
	ld.d $ra, $sp, -8
	ld.d $fp, $sp, -16
	jr $ra
