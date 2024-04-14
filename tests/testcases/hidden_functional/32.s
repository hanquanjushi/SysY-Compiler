	.file	"32.c"
	.text
	.align	2
	.globl	func
	.type	func, @function
func:
.LFB0 = .
	.cfi_startproc
	addi.d	$r3,$r3,-48
	.cfi_def_cfa_offset 48
	st.d	$r22,$r3,40
	.cfi_offset 22, -8
	addi.d	$r22,$r3,48
	.cfi_def_cfa 22, 0
	or	$r19,$r4,$r0
	or	$r18,$r5,$r0
	or	$r17,$r6,$r0
	or	$r16,$r7,$r0
	or	$r15,$r8,$r0
	or	$r14,$r9,$r0
	or	$r13,$r10,$r0
	or	$r12,$r11,$r0
	slli.w	$r19,$r19,0
	st.w	$r19,$r22,-20
	slli.w	$r18,$r18,0
	st.w	$r18,$r22,-24
	slli.w	$r17,$r17,0
	st.w	$r17,$r22,-28
	slli.w	$r16,$r16,0
	st.w	$r16,$r22,-32
	slli.w	$r15,$r15,0
	st.w	$r15,$r22,-36
	slli.w	$r14,$r14,0
	st.w	$r14,$r22,-40
	slli.w	$r13,$r13,0
	st.w	$r13,$r22,-44
	slli.w	$r12,$r12,0
	st.w	$r12,$r22,-48
	ldptr.w	$r13,$r22,5200
	ldptr.w	$r12,$r22,4912
	mul.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4336
	mul.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5224
	mul.w	$r12,$r13,$r12
	ld.w	$r13,$r22,640
	mul.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4160
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3704
	ld.w	$r12,$r22,328
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3400
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2096
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3344
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1960
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4792
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4600
	ldptr.w	$r12,$r22,4560
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,2024
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1664
	ldptr.w	$r12,$r22,4376
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2848
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3064
	ldptr.w	$r12,$r22,2176
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,800
	ld.w	$r12,$r22,1144
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1392
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,240
	ld.w	$r12,$r22,1976
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,2016
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2568
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1352
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3320
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,416
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,136
	ldptr.w	$r12,$r22,2296
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1632
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3256
	ldptr.w	$r12,$r22,5184
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1952
	ldptr.w	$r12,$r22,4584
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1688
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1160
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4448
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,792
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3920
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2048
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3808
	ld.w	$r12,$r22,1520
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,560
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4312
	ld.w	$r12,$r22,1304
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,-24
	ldptr.w	$r12,$r22,2200
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2240
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3160
	ld.w	$r12,$r22,-36
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,496
	ldptr.w	$r12,$r22,2952
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4752
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5200
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2472
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3696
	ld.w	$r12,$r22,16
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2128
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1576
	ld.w	$r12,$r22,120
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1200
	ld.w	$r12,$r22,448
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,280
	ld.w	$r12,$r22,1064
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4184
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,856
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2792
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4040
	ld.w	$r12,$r22,824
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1312
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4216
	ldptr.w	$r12,$r22,4168
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2216
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5000
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,-48
	ld.w	$r12,$r22,648
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4920
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1688
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2112
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3384
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,5112
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2240
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3504
	ldptr.w	$r12,$r22,3272
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2728
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2952
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1312
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5280
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,352
	ldptr.w	$r12,$r22,2280
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3472
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,672
	ldptr.w	$r12,$r22,2968
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,440
	ld.w	$r12,$r22,920
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,-32
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,2024
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3904
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,152
	ldptr.w	$r12,$r22,2960
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2480
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4656
	ldptr.w	$r12,$r22,4792
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3536
	ldptr.w	$r12,$r22,4080
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2592
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,544
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,680
	ldptr.w	$r12,$r22,4608
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4664
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,736
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3224
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1752
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1792
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1752
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,5136
	ld.w	$r12,$r22,1568
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2200
	ldptr.w	$r12,$r22,3072
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,5280
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1544
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3848
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,2000
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1264
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,480
	ldptr.w	$r12,$r22,5024
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4504
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,592
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1232
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,992
	ld.w	$r12,$r22,640
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4936
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4608
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5296
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3944
	ld.w	$r12,$r22,248
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1792
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,672
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,24
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4376
	ld.w	$r12,$r22,952
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,624
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1816
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3824
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,168
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2120
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5128
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2192
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4056
	ldptr.w	$r12,$r22,4144
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1640
	ldptr.w	$r12,$r22,4696
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1080
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4184
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4040
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1096
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1496
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,728
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,5304
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,24
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4648
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,976
	ldptr.w	$r12,$r22,4472
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2368
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1600
	ld.w	$r12,$r22,1720
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4264
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2288
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5280
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,864
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3056
	ldptr.w	$r12,$r22,5176
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5144
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,296
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,-32
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1928
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4248
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3984
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,920
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,504
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1408
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,872
	ld.w	$r12,$r22,1416
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1432
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,488
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2320
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3176
	ldptr.w	$r12,$r22,4584
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2664
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,2016
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3888
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3632
	ld.w	$r12,$r22,1912
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,872
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1200
	ld.w	$r12,$r22,1816
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2064
	ld.w	$r12,$r22,184
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3768
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3192
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4112
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5096
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4328
	ldptr.w	$r12,$r22,3912
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4768
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,472
	ldptr.w	$r12,$r22,3544
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3424
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4480
	ld.w	$r12,$r22,48
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3048
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5176
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3336
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2104
	ldptr.w	$r12,$r22,3832
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2952
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3392
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2600
	ld.w	$r12,$r22,928
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,128
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1656
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3888
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3984
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4360
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3672
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,5032
	ld.w	$r12,$r22,264
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3192
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4872
	ldptr.w	$r12,$r22,2400
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4208
	ldptr.w	$r12,$r22,5224
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3640
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1176
	ldptr.w	$r12,$r22,3672
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1176
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2472
	ldptr.w	$r12,$r22,3752
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4920
	ldptr.w	$r12,$r22,5080
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3336
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2080
	ld.w	$r12,$r22,1224
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2672
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1208
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4504
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2904
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1448
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1016
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,784
	ldptr.w	$r12,$r22,4800
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1400
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3088
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2632
	ldptr.w	$r12,$r22,5112
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,112
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1672
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,664
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,5208
	ldptr.w	$r12,$r22,2736
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1880
	ldptr.w	$r12,$r22,2216
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1616
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3728
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4128
	ldptr.w	$r12,$r22,5040
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2256
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1024
	ldptr.w	$r12,$r22,2168
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,280
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,5112
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3792
	ldptr.w	$r12,$r22,3456
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,168
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,560
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1728
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1296
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4256
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1880
	ldptr.w	$r12,$r22,2256
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4720
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4448
	ldptr.w	$r12,$r22,3408
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2560
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4440
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4096
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1576
	ldptr.w	$r12,$r22,3048
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3768
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,424
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1440
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3496
	ld.w	$r12,$r22,344
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4384
	ld.w	$r12,$r22,1616
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1608
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1048
	ld.w	$r12,$r22,96
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,656
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4336
	ldptr.w	$r12,$r22,2160
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3144
	ldptr.w	$r12,$r22,2912
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,2040
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1760
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,176
	ldptr.w	$r12,$r22,3608
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4304
	ld.w	$r12,$r22,1408
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3976
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4608
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3600
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2856
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3104
	ld.w	$r12,$r22,1520
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3088
	ldptr.w	$r12,$r22,4688
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,832
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3576
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5008
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2864
	ldptr.w	$r12,$r22,3736
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1648
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4256
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,400
	ldptr.w	$r12,$r22,4464
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,5032
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4792
	ldptr.w	$r12,$r22,4568
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4760
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4624
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2776
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4344
	ldptr.w	$r12,$r22,3680
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4976
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4168
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3688
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,712
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3160
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4160
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2656
	ld.w	$r12,$r22,312
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3264
	ldptr.w	$r12,$r22,5168
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,2120
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,5288
	ld.w	$r12,$r22,560
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,2192
	ldptr.w	$r12,$r22,4840
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1584
	ld.w	$r12,$r22,1536
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3064
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3032
	ldptr.w	$r12,$r22,4296
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3088
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,176
	ld.w	$r12,$r22,1696
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3728
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3984
	ld.w	$r12,$r22,1696
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1240
	ld.w	$r12,$r22,1968
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,5320
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,992
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3160
	ld.w	$r12,$r22,832
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4544
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,-36
	ldptr.w	$r12,$r22,3504
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4632
	ld.w	$r12,$r22,8
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3072
	ldptr.w	$r12,$r22,2112
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,3152
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,1408
	ld.w	$r12,$r22,296
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,56
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1680
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,32
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,5088
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2624
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,4568
	ld.w	$r12,$r22,-48
	mul.w	$r12,$r14,$r12
	ldptr.w	$r14,$r22,4040
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,1088
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ldptr.w	$r14,$r22,3656
	ldptr.w	$r12,$r22,3920
	mul.w	$r12,$r14,$r12
	ld.w	$r14,$r22,24
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,4016
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1048
	add.w	$r12,$r13,$r12
	or	$r13,$r12,$r0
	ld.w	$r14,$r22,600
	ldptr.w	$r12,$r22,4032
	mul.w	$r12,$r14,$r12
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1896
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,2408
	add.w	$r12,$r13,$r12
	ldptr.w	$r13,$r22,3016
	add.w	$r12,$r13,$r12
	ld.w	$r13,$r22,1704
	add.w	$r12,$r13,$r12
	or	$r4,$r12,$r0
	ld.d	$r22,$r3,40
	.cfi_restore 22
	addi.d	$r3,$r3,48
	.cfi_def_cfa_register 3
	jr	$r1
	.cfi_endproc
.LFE0:
	.size	func, .-func
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB1 = .
	.cfi_startproc
	addi.d	$r3,$r3,-1264
	.cfi_def_cfa_offset 1264
	st.d	$r1,$r3,1256
	st.d	$r22,$r3,1248
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	addi.d	$r22,$r3,1264
	.cfi_def_cfa 22, 0
	lu12i.w	$r13,-4096>>12			# 0xfffffffffffff000
	add.d	$r3,$r3,$r13
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5336
	stptr.d	$r0,$r3,5328
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,5320
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,5312
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,5304
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,5296
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,5288
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,5280
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,5272
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,5264
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,5256
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,5248
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,5240
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5232
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,5224
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,5216
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,5208
	stptr.d	$r0,$r3,5200
	stptr.d	$r0,$r3,5192
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5184
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,5176
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5168
	stptr.d	$r0,$r3,5160
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5152
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5144
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,5136
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,5128
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,5120
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,5112
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,5104
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5096
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,5088
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,5080
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5072
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,5064
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,5056
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,5048
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,5040
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,5032
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,5024
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,5016
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,5008
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,5000
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4992
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4984
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4976
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4968
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4960
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4952
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4944
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4936
	stptr.d	$r0,$r3,4928
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4920
	stptr.d	$r0,$r3,4912
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4904
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4896
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4888
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4880
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4872
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4864
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4856
	stptr.d	$r0,$r3,4848
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4840
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4832
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4824
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4816
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4808
	stptr.d	$r0,$r3,4800
	stptr.d	$r0,$r3,4792
	stptr.d	$r0,$r3,4784
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4776
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4768
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4760
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4752
	stptr.d	$r0,$r3,4744
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4736
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4728
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4720
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4712
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4704
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4696
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4688
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4680
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4672
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4664
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4656
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4648
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4640
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4632
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4624
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4616
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4608
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4600
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4592
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4584
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4576
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4568
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4560
	stptr.d	$r0,$r3,4552
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4544
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4536
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4528
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4520
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4512
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4504
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4496
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4488
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4480
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4472
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4464
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4456
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4448
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4440
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4432
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4424
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4416
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4408
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4400
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4392
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4384
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4376
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4368
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4360
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4352
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4344
	stptr.d	$r0,$r3,4336
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4328
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4320
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,4312
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4304
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4296
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4288
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4280
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4272
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4264
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4256
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4248
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4240
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4232
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4224
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4216
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4208
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4200
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4192
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4184
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4176
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4168
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4160
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4152
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4144
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4136
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4128
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4120
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4112
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4104
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,4096
	stptr.d	$r0,$r3,4088
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4080
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,4072
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,4064
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,4056
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4048
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4040
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,4032
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,4024
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4016
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,4008
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,4000
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3992
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3984
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3976
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3968
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3960
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3952
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3944
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3936
	stptr.d	$r0,$r3,3928
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3920
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3912
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3904
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3896
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3888
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3880
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3872
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3864
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3856
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3848
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3840
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3832
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3824
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3816
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3808
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3800
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3792
	stptr.d	$r0,$r3,3784
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3776
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3768
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3760
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3752
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3744
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3736
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3728
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3720
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3712
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3704
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3696
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3688
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3680
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3672
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3664
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3656
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3648
	stptr.d	$r0,$r3,3640
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3632
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3624
	stptr.d	$r0,$r3,3616
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3608
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3600
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3592
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3584
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3576
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3568
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3560
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3552
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3544
	stptr.d	$r0,$r3,3536
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3528
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3520
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3512
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3504
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3496
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3488
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3480
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3472
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3464
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3456
	stptr.d	$r0,$r3,3448
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3440
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3432
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3424
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3416
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3408
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3400
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3392
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3384
	stptr.d	$r0,$r3,3376
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3368
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3360
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3352
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3344
	stptr.d	$r0,$r3,3336
	stptr.d	$r0,$r3,3328
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3320
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3312
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3304
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3296
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3288
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3280
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3272
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3264
	stptr.d	$r0,$r3,3256
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3248
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3240
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3232
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3224
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3216
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3208
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3200
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3192
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3184
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3176
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3168
	stptr.d	$r0,$r3,3160
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3152
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3144
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3136
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3128
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3120
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,3112
	stptr.d	$r0,$r3,3104
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3096
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,3088
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,3080
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3072
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3064
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,3056
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3048
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,3040
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,3032
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3024
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,3016
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,3008
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,3000
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2992
	stptr.d	$r0,$r3,2984
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2976
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2968
	stptr.d	$r0,$r3,2960
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2952
	stptr.d	$r0,$r3,2944
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2936
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2928
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2920
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2912
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2904
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2896
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2888
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2880
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2872
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2864
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2856
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2848
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2840
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2832
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2824
	stptr.d	$r0,$r3,2816
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2808
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2800
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2792
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2784
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2776
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2768
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2760
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2752
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2744
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2736
	stptr.d	$r0,$r3,2728
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2720
	stptr.d	$r0,$r3,2712
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2704
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2696
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2688
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2680
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2672
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2664
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2656
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2648
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2640
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2632
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2624
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2616
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2608
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2600
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2592
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2584
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2576
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2568
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2560
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2552
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2544
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2536
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2528
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2520
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2512
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2504
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2496
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2488
	stptr.d	$r0,$r3,2480
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2472
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2464
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2456
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2448
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2440
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2432
	stptr.d	$r0,$r3,2424
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2416
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2408
	stptr.d	$r0,$r3,2400
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2392
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2384
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2376
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2368
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2360
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2352
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2344
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2336
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2328
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2320
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2312
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2304
	stptr.d	$r0,$r3,2296
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2288
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2280
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2272
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2264
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2256
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2248
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2240
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2232
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2224
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2216
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2208
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2200
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2192
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2184
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2176
	stptr.d	$r0,$r3,2168
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2160
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2152
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2144
	stptr.d	$r0,$r3,2136
	addi.w	$r12,$r0,1			# 0x1
	stptr.d	$r12,$r3,2128
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2120
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2112
	addi.w	$r12,$r0,5			# 0x5
	stptr.d	$r12,$r3,2104
	addi.w	$r12,$r0,8			# 0x8
	stptr.d	$r12,$r3,2096
	addi.w	$r12,$r0,7			# 0x7
	stptr.d	$r12,$r3,2088
	addi.w	$r12,$r0,3			# 0x3
	stptr.d	$r12,$r3,2080
	addi.w	$r12,$r0,9			# 0x9
	stptr.d	$r12,$r3,2072
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,2064
	addi.w	$r12,$r0,2			# 0x2
	stptr.d	$r12,$r3,2056
	addi.w	$r12,$r0,4			# 0x4
	stptr.d	$r12,$r3,2048
	st.d	$r0,$r3,2040
	st.d	$r0,$r3,2032
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,2024
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,2016
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,2008
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,2000
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1992
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1984
	st.d	$r0,$r3,1976
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1968
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,1960
	st.d	$r0,$r3,1952
	st.d	$r0,$r3,1944
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1936
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1928
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1920
	st.d	$r0,$r3,1912
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1904
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1896
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1888
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1880
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1872
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1864
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1856
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1848
	st.d	$r0,$r3,1840
	st.d	$r0,$r3,1832
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1824
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1816
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,1808
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1800
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1792
	st.d	$r0,$r3,1784
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1776
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1768
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1760
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1752
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1744
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1736
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1728
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1720
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1712
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1704
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1696
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1688
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,1680
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1672
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1664
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1656
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1648
	st.d	$r0,$r3,1640
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1632
	st.d	$r0,$r3,1624
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1616
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,1608
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1600
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1592
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1584
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1576
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1568
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1560
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,1552
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1544
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1536
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1528
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1520
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1512
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,1504
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1496
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1488
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1480
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1472
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1464
	st.d	$r0,$r3,1456
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1448
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1440
	st.d	$r0,$r3,1432
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1424
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1416
	st.d	$r0,$r3,1408
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1400
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1392
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,1384
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1376
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,1368
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1360
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1352
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1344
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,1336
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1328
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,1320
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1312
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1304
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1296
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1288
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1280
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1272
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1264
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1256
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1248
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1240
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1232
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1224
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1216
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1208
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1200
	st.d	$r0,$r3,1192
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1184
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1176
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1168
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1160
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1152
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1144
	st.d	$r0,$r3,1136
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1128
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1120
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1112
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1104
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,1096
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,1088
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,1080
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1072
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1064
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1056
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1048
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,1040
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1032
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,1024
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,1016
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,1008
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,1000
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,992
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,984
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,976
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,968
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,960
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,952
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,944
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,936
	st.d	$r0,$r3,928
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,920
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,912
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,904
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,896
	st.d	$r0,$r3,888
	st.d	$r0,$r3,880
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,872
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,864
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,856
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,848
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,840
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,832
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,824
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,816
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,808
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,800
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,792
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,784
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,776
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,768
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,760
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,752
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,744
	st.d	$r0,$r3,736
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,728
	st.d	$r0,$r3,720
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,712
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,704
	st.d	$r0,$r3,696
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,688
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,680
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,672
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,664
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,656
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,648
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,640
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,632
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,624
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,616
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,608
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,600
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,592
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,584
	st.d	$r0,$r3,576
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,568
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,560
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,552
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,544
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,536
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,528
	st.d	$r0,$r3,520
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,512
	st.d	$r0,$r3,504
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,496
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,488
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,480
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,472
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,464
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,456
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,448
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,440
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,432
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,424
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,416
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,408
	st.d	$r0,$r3,400
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,392
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,384
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,376
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,368
	st.d	$r0,$r3,360
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,352
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,344
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,336
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,328
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,320
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,312
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,304
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,296
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,288
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,280
	st.d	$r0,$r3,272
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,264
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,256
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,248
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,240
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,232
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,224
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,216
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,208
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,200
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,192
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,184
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,176
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,168
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,160
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,152
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,144
	st.d	$r0,$r3,136
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,128
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,120
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,112
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,104
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,96
	addi.w	$r12,$r0,8			# 0x8
	st.d	$r12,$r3,88
	st.d	$r0,$r3,80
	addi.w	$r12,$r0,5			# 0x5
	st.d	$r12,$r3,72
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,64
	addi.w	$r12,$r0,3			# 0x3
	st.d	$r12,$r3,56
	addi.w	$r12,$r0,9			# 0x9
	st.d	$r12,$r3,48
	addi.w	$r12,$r0,6			# 0x6
	st.d	$r12,$r3,40
	addi.w	$r12,$r0,1			# 0x1
	st.d	$r12,$r3,32
	addi.w	$r12,$r0,7			# 0x7
	st.d	$r12,$r3,24
	addi.w	$r12,$r0,4			# 0x4
	st.d	$r12,$r3,16
	addi.w	$r12,$r0,2			# 0x2
	st.d	$r12,$r3,8
	addi.w	$r12,$r0,6			# 0x6
	stptr.d	$r12,$r3,0
	or	$r11,$r0,$r0
	addi.w	$r10,$r0,2			# 0x2
	addi.w	$r9,$r0,5			# 0x5
	addi.w	$r8,$r0,9			# 0x9
	addi.w	$r7,$r0,8			# 0x8
	addi.w	$r6,$r0,1			# 0x1
	addi.w	$r5,$r0,1			# 0x1
	or	$r4,$r0,$r0
	bl	func
	or	$r12,$r4,$r0
	or	$r4,$r12,$r0
	lu12i.w	$r13,4096>>12			# 0x1000
	add.d	$r3,$r3,$r13
	.cfi_def_cfa 3, 1264
	ld.d	$r1,$r3,1256
	.cfi_restore 1
	ld.d	$r22,$r3,1248
	.cfi_restore 22
	addi.d	$r3,$r3,1264
	.cfi_def_cfa_offset 0
	jr	$r1
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (GNU) 12.0.1 20220210 (experimental)"
	.section	.note.GNU-stack,"",@progbits
