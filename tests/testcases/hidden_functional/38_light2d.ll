; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/38_light2d.sy"

@W = constant i32  192
@H = constant i32  192
@N = constant i32  24
@PI = constant float 0x400921fb60000000
@TWO_PI = constant float 0x401921fb60000000
@MAX_STEP = constant i32  10
@MAX_DISTANCE = constant float 0x4000000000000000
@EPSILON = constant float 0x3ff0000000000000
@RAND_MAX = constant i32  100000006
@seed = global i32  0
declare i32  @getint()

declare i32  @getch()

declare i32  @getarray(i32 *)

declare float @getfloat()

declare float @getfarray(float*)

declare void @putint(i32 )

declare void @putfloat(float)

declare void @putch(i32 )

declare void @putf(i8 )

declare void @putarray(i32 , i32 *)

declare void @putfarray(float)

define i32  @rand() {
label_entry:
  %op0 = load i32 , i32 * @seed
  %op1 = mul i32  %op0, 19980130
  %op2 = add i32  %op1, 23333
  %op3 = srem i32  %op2, 100000007
  store i32  %op3, i32 * @seed
  %op4 = load i32 , i32 * @seed
  %op5 = icmp slt i32  %op4, 0
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label11
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * @seed
  %op10 = add i32  %op9, 100000007
  store i32  %op10, i32 * @seed
  br label %label11
label11:                                                ; preds = %label_entry, %label8
  %op12 = load i32 , i32 * @seed
  ret i32  %op12
}
define float @my_fabs(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  0 to float
  %op4 = fcmp ugt float %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label9
label7:                                                ; preds = %label_entry
  %op8 = load float, float* %op1
  ret float %op8
label9:                                                ; preds = %label_entry
  %op10 = load float, float* %op1
  %op11 = fsub float 0x0, %op10
  ret float %op11
}
define float @my_sqrt(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = alloca float
  %op3 = load float, float* %op1
  %op4 = sitofp i32  8 to float
  %op5 = fdiv float %op3, %op4
  %op6 = fadd float %op5, 0x3fe0000000000000
  %op7 = load float, float* %op1
  %op8 = sitofp i32  2 to float
  %op9 = fmul float %op8, %op7
  %op10 = load float, float* %op1
  %op11 = sitofp i32  4 to float
  %op12 = fadd float %op11, %op10
  %op13 = fdiv float %op9, %op12
  %op14 = fadd float %op6, %op13
  store float %op14, float* %op2
  %op15 = alloca i32 
  store i32  10, i32 * %op15
  br label %label16
label16:                                                ; preds = %label_entry, %label19
  %op17 = load i32 , i32 * %op15
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label29
label19:                                                ; preds = %label16
  %op20 = load float, float* %op2
  %op21 = load float, float* %op1
  %op22 = load float, float* %op2
  %op23 = fdiv float %op21, %op22
  %op24 = fadd float %op20, %op23
  %op25 = sitofp i32  2 to float
  %op26 = fdiv float %op24, %op25
  store float %op26, float* %op2
  %op27 = load i32 , i32 * %op15
  %op28 = sub i32  %op27, 1
  store i32  %op28, i32 * %op15
  br label %label16
label29:                                                ; preds = %label16
  %op30 = load float, float* %op2
  ret float %op30
}
define float @p(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  3 to float
  %op4 = fmul float %op3, %op2
  %op5 = load float, float* %op1
  %op6 = sitofp i32  4 to float
  %op7 = fmul float %op6, %op5
  %op8 = load float, float* %op1
  %op9 = fmul float %op7, %op8
  %op10 = load float, float* %op1
  %op11 = fmul float %op9, %op10
  %op12 = fsub float %op4, %op11
  ret float %op12
}
define float @my_sin_impl(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = call float @my_fabs(float %op2)
  %op4 = load float, float* @EPSILON
  %op5 = fcmp ule float %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label10
label8:                                                ; preds = %label_entry
  %op9 = load float, float* %op1
  ret float %op9
label10:                                                ; preds = %label_entry
  %op11 = load float, float* %op1
  %op12 = fdiv float %op11, 0x4008000000000000
  %op13 = call float @my_sin_impl(float %op12)
  %op14 = call float @p(float %op13)
  ret float %op14
}
define float @my_sin(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = load float, float* @TWO_PI
  %op4 = fcmp ugt float %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label25
label7:                                                ; preds = %label_entry, %label25
  %op8 = alloca i32 
  %op9 = load float, float* %op1
  %op10 = load float, float* @TWO_PI
  %op11 = fdiv float %op9, %op10
  %op12 = fptosi float %op11 to i32 
  store i32  %op12, i32 * %op8
  %op13 = load float, float* %op1
  %op14 = load i32 , i32 * %op8
  %op15 = load float, float* @TWO_PI
  %op16 = sitofp i32  %op14 to float
  %op17 = fmul float %op16, %op15
  %op18 = fsub float %op13, %op17
  store float %op18, float* %op1
  br label %label19
label19:                                                ; preds = %label25, %label7
  %op20 = load float, float* %op1
  %op21 = load float, float* @PI
  %op22 = fcmp ugt float %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label32, label %label36
label25:                                                ; preds = %label_entry
  %op26 = load float, float* %op1
  %op27 = load float, float* @TWO_PI
  %op28 = fsub float 0x0, %op27
  %op29 = fcmp ult float %op26, %op28
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label7, label %label19
label32:                                                ; preds = %label19
  %op33 = load float, float* %op1
  %op34 = load float, float* @TWO_PI
  %op35 = fsub float %op33, %op34
  store float %op35, float* %op1
  br label %label36
label36:                                                ; preds = %label19, %label32
  %op37 = load float, float* %op1
  %op38 = load float, float* @PI
  %op39 = fsub float 0x0, %op38
  %op40 = fcmp ult float %op37, %op39
  %op41 = zext i1  %op40 to i32 
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label43, label %label47
label43:                                                ; preds = %label36
  %op44 = load float, float* %op1
  %op45 = load float, float* @TWO_PI
  %op46 = fadd float %op44, %op45
  store float %op46, float* %op1
  br label %label47
label47:                                                ; preds = %label36, %label43
  %op48 = load float, float* %op1
  %op49 = call float @my_sin_impl(float %op48)
  ret float %op49
}
define float @my_cos(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = load float, float* @PI
  %op4 = sitofp i32  2 to float
  %op5 = fdiv float %op3, %op4
  %op6 = fadd float %op2, %op5
  %op7 = call float @my_sin(float %op6)
  ret float %op7
}
define float @circle_sdf(float %arg0, float %arg1, float %arg2, float %arg3, float %arg4) {
label_entry:
  %op5 = alloca float
  store float %arg0, float* %op5
  %op6 = alloca float
  store float %arg1, float* %op6
  %op7 = alloca float
  store float %arg2, float* %op7
  %op8 = alloca float
  store float %arg3, float* %op8
  %op9 = alloca float
  store float %arg4, float* %op9
  %op10 = alloca float
  %op11 = load float, float* %op6
  %op12 = load float, float* %op8
  %op13 = fsub float %op11, %op12
  store float %op13, float* %op10
  %op14 = alloca float
  %op15 = load float, float* %op5
  %op16 = load float, float* %op7
  %op17 = fsub float %op15, %op16
  store float %op17, float* %op14
  %op18 = load float, float* %op14
  %op19 = load float, float* %op14
  %op20 = fmul float %op18, %op19
  %op21 = load float, float* %op10
  %op22 = load float, float* %op10
  %op23 = fmul float %op21, %op22
  %op24 = fadd float %op20, %op23
  %op25 = call float @my_sqrt(float %op24)
  %op26 = load float, float* %op9
  %op27 = fsub float %op25, %op26
  ret float %op27
}
define void @scene(float %arg0, float %arg1, float* %arg2) {
label_entry:
  %op3 = alloca float
  store float %arg0, float* %op3
  %op4 = alloca float
  store float %arg1, float* %op4
  %op5 = alloca float*
  store float* %arg2, float** %op5
  %op6 = alloca float
  %op7 = load float, float* %op3
  %op8 = load float, float* %op4
  %op9 = call float @circle_sdf(float %op7, float %op8, float 0x3fe3333340000000, float 0x3fe3333340000000, float 0x3fa99999a0000000)
  store float %op9, float* %op6
  %op10 = alloca float
  %op11 = load float, float* %op3
  %op12 = load float, float* %op4
  %op13 = call float @circle_sdf(float %op11, float %op12, float 0x3fd99999a0000000, float 0x3fd99999a0000000, float 0x3fb99999a0000000)
  store float %op13, float* %op10
  %op14 = load float, float* %op10
  %op15 = load float, float* %op6
  %op16 = fcmp ult float %op14, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label25
label19:                                                ; preds = %label_entry
  %op20 = load float, float* %op10
  %op21 = load float*, float** %op5
  %op22 = getelementptr float, float* %op21, i32  0
  store float %op20, float* %op22
  %op23 = load float*, float** %op5
  %op24 = getelementptr float, float* %op23, i32  1
  store float 0x4008000000000000, float* %op24
  br label %label31
label25:                                                ; preds = %label_entry
  %op26 = load float, float* %op6
  %op27 = load float*, float** %op5
  %op28 = getelementptr float, float* %op27, i32  0
  store float %op26, float* %op28
  %op29 = load float*, float** %op5
  %op30 = getelementptr float, float* %op29, i32  1
  store float 0x0, float* %op30
  br label %label31
label31:                                                ; preds = %label19, %label25
  ret void
}
define float @trace(float %arg0, float %arg1, float %arg2, float %arg3) {
label_entry:
  %op4 = alloca float
  store float %arg0, float* %op4
  %op5 = alloca float
  store float %arg1, float* %op5
  %op6 = alloca float
  store float %arg2, float* %op6
  %op7 = alloca float
  store float %arg3, float* %op7
  %op8 = alloca float
  store float 0x0, float* %op8
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  br label %label10
label10:                                                ; preds = %label_entry, %label45
  %op11 = load i32 , i32 * %op9
  %op12 = load i32 , i32 * @MAX_STEP
  %op13 = icmp slt i32  %op11, %op12
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label36, label %label35
label16:                                                ; preds = %label36
  %op17 = alloca [2 x float]
  %op18 = load float, float* %op4
  %op19 = load float, float* %op6
  %op20 = load float, float* %op8
  %op21 = fmul float %op19, %op20
  %op22 = fadd float %op18, %op21
  %op23 = load float, float* %op5
  %op24 = load float, float* %op7
  %op25 = load float, float* %op8
  %op26 = fmul float %op24, %op25
  %op27 = fadd float %op23, %op26
  %op28 = getelementptr [2 x float], [2 x float]* %op17, i32  0, i32  0
  call void @scene(float %op22, float %op27, float* %op28)
  %op29 = getelementptr [2 x float], [2 x float]* %op17, i32  0, i32  0
  %op30 = load float, float* %op29
  %op31 = load float, float* @EPSILON
  %op32 = fcmp ult float %op30, %op31
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label42, label %label45
label35:                                                ; preds = %label10, %label36
  ret float 0x0
label36:                                                ; preds = %label10
  %op37 = load float, float* %op8
  %op38 = load float, float* @MAX_DISTANCE
  %op39 = fcmp ult float %op37, %op38
  %op40 = zext i1  %op39 to i32 
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label16, label %label35
label42:                                                ; preds = %label16
  %op43 = getelementptr [2 x float], [2 x float]* %op17, i32  0, i32  1
  %op44 = load float, float* %op43
  ret float %op44
label45:                                                ; preds = %label16
  %op46 = load float, float* %op8
  %op47 = getelementptr [2 x float], [2 x float]* %op17, i32  0, i32  0
  %op48 = load float, float* %op47
  %op49 = fadd float %op46, %op48
  store float %op49, float* %op8
  %op50 = load i32 , i32 * %op9
  %op51 = add i32  %op50, 1
  store i32  %op51, i32 * %op9
  br label %label10
}
define float @sample(float %arg0, float %arg1) {
label_entry:
  %op2 = alloca float
  store float %arg0, float* %op2
  %op3 = alloca float
  store float %arg1, float* %op3
  %op4 = alloca float
  store float 0x0, float* %op4
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  br label %label6
label6:                                                ; preds = %label_entry, %label12
  %op7 = load i32 , i32 * %op5
  %op8 = load i32 , i32 * @N
  %op9 = icmp slt i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label40
label12:                                                ; preds = %label6
  %op13 = alloca float
  %op14 = call i32  @rand()
  %op15 = sitofp i32  %op14 to float
  store float %op15, float* %op13
  %op16 = alloca float
  %op17 = load float, float* @TWO_PI
  %op18 = load i32 , i32 * %op5
  %op19 = load float, float* %op13
  %op20 = load i32 , i32 * @RAND_MAX
  %op21 = sitofp i32  %op20 to float
  %op22 = fdiv float %op19, %op21
  %op23 = sitofp i32  %op18 to float
  %op24 = fadd float %op23, %op22
  %op25 = fmul float %op17, %op24
  %op26 = load i32 , i32 * @N
  %op27 = sitofp i32  %op26 to float
  %op28 = fdiv float %op25, %op27
  store float %op28, float* %op16
  %op29 = load float, float* %op4
  %op30 = load float, float* %op2
  %op31 = load float, float* %op3
  %op32 = load float, float* %op16
  %op33 = call float @my_cos(float %op32)
  %op34 = load float, float* %op16
  %op35 = call float @my_sin(float %op34)
  %op36 = call float @trace(float %op30, float %op31, float %op33, float %op35)
  %op37 = fadd float %op29, %op36
  store float %op37, float* %op4
  %op38 = load i32 , i32 * %op5
  %op39 = add i32  %op38, 1
  store i32  %op39, i32 * %op5
  br label %label6
label40:                                                ; preds = %label6
  %op41 = load float, float* %op4
  %op42 = load i32 , i32 * @N
  %op43 = sitofp i32  %op42 to float
  %op44 = fdiv float %op41, %op43
  ret float %op44
}
define void @write_pgm() {
label_entry:
  call void @putch(i32  80)
  call void @putch(i32  50)
  call void @putch(i32  10)
  %op0 = load i32 , i32 * @W
  call void @putint(i32  %op0)
  call void @putch(i32  32)
  %op1 = load i32 , i32 * @H
  call void @putint(i32  %op1)
  call void @putch(i32  32)
  call void @putint(i32  255)
  call void @putch(i32  10)
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label41
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * @H
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label3
  %op10 = alloca i32 
  store i32  0, i32 * %op10
  br label %label12
label11:                                                ; preds = %label3
  ret void
label12:                                                ; preds = %label9, %label45
  %op13 = load i32 , i32 * %op10
  %op14 = load i32 , i32 * @W
  %op15 = icmp slt i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label18, label %label41
label18:                                                ; preds = %label12
  %op19 = alloca float
  %op20 = load i32 , i32 * %op2
  %op21 = sitofp i32  %op20 to float
  store float %op21, float* %op19
  %op22 = alloca float
  %op23 = load i32 , i32 * %op10
  %op24 = sitofp i32  %op23 to float
  store float %op24, float* %op22
  %op25 = alloca i32 
  %op26 = load float, float* %op22
  %op27 = load i32 , i32 * @W
  %op28 = sitofp i32  %op27 to float
  %op29 = fdiv float %op26, %op28
  %op30 = load float, float* %op19
  %op31 = load i32 , i32 * @H
  %op32 = sitofp i32  %op31 to float
  %op33 = fdiv float %op30, %op32
  %op34 = call float @sample(float %op29, float %op33)
  %op35 = fmul float %op34, 0x406fe00000000000
  %op36 = fptosi float %op35 to i32 
  store i32  %op36, i32 * %op25
  %op37 = load i32 , i32 * %op25
  %op38 = icmp sgt i32  %op37, 255
  %op39 = zext i1  %op38 to i32 
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label44, label %label45
label41:                                                ; preds = %label12
  call void @putch(i32  10)
  %op42 = load i32 , i32 * %op2
  %op43 = add i32  %op42, 1
  store i32  %op43, i32 * %op2
  br label %label3
label44:                                                ; preds = %label18
  store i32  255, i32 * %op25
  br label %label45
label45:                                                ; preds = %label18, %label44
  %op46 = load i32 , i32 * %op25
  call void @putint(i32  %op46)
  call void @putch(i32  32)
  %op47 = load i32 , i32 * %op10
  %op48 = add i32  %op47, 1
  store i32  %op48, i32 * %op10
  br label %label12
}
define i32  @main() {
label_entry:
  call void @write_pgm()
  ret i32  0
}
