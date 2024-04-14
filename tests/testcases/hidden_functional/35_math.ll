; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/35_math.sy"

@e = constant float 0x4005bf0a80000000
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
define float @my_pow(float %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca float
  store float %arg0, float* %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op3
  %op5 = icmp slt i32  %op4, 0
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label15
label8:                                                ; preds = %label_entry
  %op9 = load float, float* %op2
  %op10 = load i32 , i32 * %op3
  %op11 = sub i32  0, %op10
  %op12 = call float @my_pow(float %op9, i32  %op11)
  %op13 = sitofp i32  1 to float
  %op14 = fdiv float %op13, %op12
  ret float %op14
label15:                                                ; preds = %label_entry
  %op16 = alloca float
  store float 0x3ff0000000000000, float* %op16
  br label %label17
label17:                                                ; preds = %label15, %label30
  %op18 = load i32 , i32 * %op3
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label20, label %label24
label20:                                                ; preds = %label17
  %op21 = load i32 , i32 * %op3
  %op22 = srem i32  %op21, 2
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label26, label %label30
label24:                                                ; preds = %label17
  %op25 = load float, float* %op16
  ret float %op25
label26:                                                ; preds = %label20
  %op27 = load float, float* %op16
  %op28 = load float, float* %op2
  %op29 = fmul float %op27, %op28
  store float %op29, float* %op16
  br label %label30
label30:                                                ; preds = %label20, %label26
  %op31 = load float, float* %op2
  %op32 = load float, float* %op2
  %op33 = fmul float %op31, %op32
  store float %op33, float* %op2
  %op34 = load i32 , i32 * %op3
  %op35 = sdiv i32  %op34, 2
  store i32  %op35, i32 * %op3
  br label %label17
}
define float @my_sqrt(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  100 to float
  %op4 = fcmp ugt float %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label13
label7:                                                ; preds = %label_entry
  %op8 = load float, float* %op1
  %op9 = sitofp i32  100 to float
  %op10 = fdiv float %op8, %op9
  %op11 = call float @my_sqrt(float %op10)
  %op12 = fmul float 0x4024000000000000, %op11
  ret float %op12
label13:                                                ; preds = %label_entry
  %op14 = alloca float
  %op15 = load float, float* %op1
  %op16 = sitofp i32  8 to float
  %op17 = fdiv float %op15, %op16
  %op18 = fadd float %op17, 0x3fe0000000000000
  %op19 = load float, float* %op1
  %op20 = sitofp i32  2 to float
  %op21 = fmul float %op20, %op19
  %op22 = load float, float* %op1
  %op23 = sitofp i32  4 to float
  %op24 = fadd float %op23, %op22
  %op25 = fdiv float %op21, %op24
  %op26 = fadd float %op18, %op25
  store float %op26, float* %op14
  %op27 = alloca i32 
  store i32  10, i32 * %op27
  br label %label28
label28:                                                ; preds = %label13, %label31
  %op29 = load i32 , i32 * %op27
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label31, label %label41
label31:                                                ; preds = %label28
  %op32 = load float, float* %op14
  %op33 = load float, float* %op1
  %op34 = load float, float* %op14
  %op35 = fdiv float %op33, %op34
  %op36 = fadd float %op32, %op35
  %op37 = sitofp i32  2 to float
  %op38 = fdiv float %op36, %op37
  store float %op38, float* %op14
  %op39 = load i32 , i32 * %op27
  %op40 = sub i32  %op39, 1
  store i32  %op40, i32 * %op27
  br label %label28
label41:                                                ; preds = %label28
  %op42 = load float, float* %op14
  ret float %op42
}
define float @F1(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  1 to float
  %op4 = fdiv float %op3, %op2
  ret float %op4
}
define float @F2(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = load float, float* %op1
  %op4 = fmul float %op2, %op3
  %op5 = sitofp i32  1 to float
  %op6 = fsub float %op5, %op4
  %op7 = call float @my_sqrt(float %op6)
  %op8 = sitofp i32  1 to float
  %op9 = fdiv float %op8, %op7
  ret float %op9
}
define float @simpson(float %arg0, float %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca float
  store float %arg0, float* %op3
  %op4 = alloca float
  store float %arg1, float* %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = alloca float
  %op7 = load float, float* %op3
  %op8 = load float, float* %op4
  %op9 = load float, float* %op3
  %op10 = fsub float %op8, %op9
  %op11 = sitofp i32  2 to float
  %op12 = fdiv float %op10, %op11
  %op13 = fadd float %op7, %op12
  store float %op13, float* %op6
  %op14 = load i32 , i32 * %op5
  %op15 = icmp eq i32  %op14, 1
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label18, label %label35
label18:                                                ; preds = %label_entry
  %op19 = load float, float* %op3
  %op20 = call float @F1(float %op19)
  %op21 = load float, float* %op6
  %op22 = call float @F1(float %op21)
  %op23 = sitofp i32  4 to float
  %op24 = fmul float %op23, %op22
  %op25 = fadd float %op20, %op24
  %op26 = load float, float* %op4
  %op27 = call float @F1(float %op26)
  %op28 = fadd float %op25, %op27
  %op29 = load float, float* %op4
  %op30 = load float, float* %op3
  %op31 = fsub float %op29, %op30
  %op32 = fmul float %op28, %op31
  %op33 = sitofp i32  6 to float
  %op34 = fdiv float %op32, %op33
  ret float %op34
label35:                                                ; preds = %label_entry
  %op36 = load i32 , i32 * %op5
  %op37 = icmp eq i32  %op36, 2
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label40, label %label57
label40:                                                ; preds = %label35
  %op41 = load float, float* %op3
  %op42 = call float @F2(float %op41)
  %op43 = load float, float* %op6
  %op44 = call float @F2(float %op43)
  %op45 = sitofp i32  4 to float
  %op46 = fmul float %op45, %op44
  %op47 = fadd float %op42, %op46
  %op48 = load float, float* %op4
  %op49 = call float @F2(float %op48)
  %op50 = fadd float %op47, %op49
  %op51 = load float, float* %op4
  %op52 = load float, float* %op3
  %op53 = fsub float %op51, %op52
  %op54 = fmul float %op50, %op53
  %op55 = sitofp i32  6 to float
  %op56 = fdiv float %op54, %op55
  ret float %op56
label57:                                                ; preds = %label35
  %op58 = sitofp i32  0 to float
  ret float %op58
}
define float @asr5(float %arg0, float %arg1, float %arg2, float %arg3, i32  %arg4) {
label_entry:
  %op5 = alloca float
  store float %arg0, float* %op5
  %op6 = alloca float
  store float %arg1, float* %op6
  %op7 = alloca float
  store float %arg2, float* %op7
  %op8 = alloca float
  store float %arg3, float* %op8
  %op9 = alloca i32 
  store i32  %arg4, i32 * %op9
  %op10 = alloca float
  %op11 = load float, float* %op5
  %op12 = load float, float* %op6
  %op13 = load float, float* %op5
  %op14 = fsub float %op12, %op13
  %op15 = sitofp i32  2 to float
  %op16 = fdiv float %op14, %op15
  %op17 = fadd float %op11, %op16
  store float %op17, float* %op10
  %op18 = alloca float
  %op19 = load float, float* %op10
  %op20 = load float, float* %op6
  %op21 = load i32 , i32 * %op9
  %op22 = call float @simpson(float %op19, float %op20, i32  %op21)
  store float %op22, float* %op18
  %op23 = alloca float
  %op24 = load float, float* %op5
  %op25 = load float, float* %op10
  %op26 = load i32 , i32 * %op9
  %op27 = call float @simpson(float %op24, float %op25, i32  %op26)
  store float %op27, float* %op23
  %op28 = load float, float* %op23
  %op29 = load float, float* %op18
  %op30 = fadd float %op28, %op29
  %op31 = load float, float* %op8
  %op32 = fsub float %op30, %op31
  %op33 = call float @my_fabs(float %op32)
  %op34 = load float, float* %op7
  %op35 = sitofp i32  15 to float
  %op36 = fmul float %op35, %op34
  %op37 = fcmp ule float %op33, %op36
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label40, label %label51
label40:                                                ; preds = %label_entry
  %op41 = load float, float* %op23
  %op42 = load float, float* %op18
  %op43 = fadd float %op41, %op42
  %op44 = load float, float* %op23
  %op45 = load float, float* %op18
  %op46 = fadd float %op44, %op45
  %op47 = load float, float* %op8
  %op48 = fsub float %op46, %op47
  %op49 = fdiv float %op48, 0x402e000000000000
  %op50 = fadd float %op43, %op49
  ret float %op50
label51:                                                ; preds = %label_entry
  %op52 = load float, float* %op5
  %op53 = load float, float* %op10
  %op54 = load float, float* %op7
  %op55 = sitofp i32  2 to float
  %op56 = fdiv float %op54, %op55
  %op57 = load float, float* %op23
  %op58 = load i32 , i32 * %op9
  %op59 = call float @asr5(float %op52, float %op53, float %op56, float %op57, i32  %op58)
  %op60 = load float, float* %op10
  %op61 = load float, float* %op6
  %op62 = load float, float* %op7
  %op63 = sitofp i32  2 to float
  %op64 = fdiv float %op62, %op63
  %op65 = load float, float* %op18
  %op66 = load i32 , i32 * %op9
  %op67 = call float @asr5(float %op60, float %op61, float %op64, float %op65, i32  %op66)
  %op68 = fadd float %op59, %op67
  ret float %op68
}
define float @asr4(float %arg0, float %arg1, float %arg2, i32  %arg3) {
label_entry:
  %op4 = alloca float
  store float %arg0, float* %op4
  %op5 = alloca float
  store float %arg1, float* %op5
  %op6 = alloca float
  store float %arg2, float* %op6
  %op7 = alloca i32 
  store i32  %arg3, i32 * %op7
  %op8 = load float, float* %op4
  %op9 = load float, float* %op5
  %op10 = load float, float* %op6
  %op11 = load float, float* %op4
  %op12 = load float, float* %op5
  %op13 = load i32 , i32 * %op7
  %op14 = call float @simpson(float %op11, float %op12, i32  %op13)
  %op15 = load i32 , i32 * %op7
  %op16 = call float @asr5(float %op8, float %op9, float %op10, float %op14, i32  %op15)
  ret float %op16
}
define float @eee(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  1 to float
  %op4 = fcmp ugt float %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label16
label7:                                                ; preds = %label_entry
  %op8 = alloca float
  %op9 = load float, float* %op1
  %op10 = sitofp i32  2 to float
  %op11 = fdiv float %op9, %op10
  %op12 = call float @eee(float %op11)
  store float %op12, float* %op8
  %op13 = load float, float* %op8
  %op14 = load float, float* %op8
  %op15 = fmul float %op13, %op14
  ret float %op15
label16:                                                ; preds = %label_entry
  %op17 = load float, float* %op1
  %op18 = sitofp i32  1 to float
  %op19 = fadd float %op18, %op17
  %op20 = load float, float* %op1
  %op21 = load float, float* %op1
  %op22 = fmul float %op20, %op21
  %op23 = sitofp i32  2 to float
  %op24 = fdiv float %op22, %op23
  %op25 = fadd float %op19, %op24
  %op26 = load float, float* %op1
  %op27 = call float @my_pow(float %op26, i32  3)
  %op28 = sitofp i32  6 to float
  %op29 = fdiv float %op27, %op28
  %op30 = fadd float %op25, %op29
  %op31 = load float, float* %op1
  %op32 = call float @my_pow(float %op31, i32  4)
  %op33 = sitofp i32  24 to float
  %op34 = fdiv float %op32, %op33
  %op35 = fadd float %op30, %op34
  %op36 = load float, float* %op1
  %op37 = call float @my_pow(float %op36, i32  5)
  %op38 = sitofp i32  120 to float
  %op39 = fdiv float %op37, %op38
  %op40 = fadd float %op35, %op39
  ret float %op40
}
define float @my_exp(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = load float, float* %op1
  %op3 = sitofp i32  0 to float
  %op4 = fcmp ult float %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label13
label7:                                                ; preds = %label_entry
  %op8 = load float, float* %op1
  %op9 = fsub float 0x0, %op8
  %op10 = call float @my_exp(float %op9)
  %op11 = sitofp i32  1 to float
  %op12 = fdiv float %op11, %op10
  ret float %op12
label13:                                                ; preds = %label_entry
  %op14 = alloca i32 
  %op15 = load float, float* %op1
  %op16 = fptosi float %op15 to i32 
  store i32  %op16, i32 * %op14
  %op17 = load float, float* %op1
  %op18 = load i32 , i32 * %op14
  %op19 = sitofp i32  %op18 to float
  %op20 = fsub float %op17, %op19
  store float %op20, float* %op1
  %op21 = alloca float
  %op22 = load float, float* @e
  %op23 = load i32 , i32 * %op14
  %op24 = call float @my_pow(float %op22, i32  %op23)
  store float %op24, float* %op21
  %op25 = alloca float
  %op26 = load float, float* %op1
  %op27 = call float @eee(float %op26)
  store float %op27, float* %op25
  %op28 = load float, float* %op21
  %op29 = load float, float* %op25
  %op30 = fmul float %op28, %op29
  ret float %op30
}
define float @my_ln(float %arg0) {
label_entry:
  %op1 = alloca float
  store float %arg0, float* %op1
  %op2 = sitofp i32  1 to float
  %op3 = load float, float* %op1
  %op4 = sitofp i32  1 to float
  %op5 = call float @asr4(float %op2, float %op3, float %op4, i32  1)
  ret float %op5
}
define float @my_log(float %arg0, float %arg1) {
label_entry:
  %op2 = alloca float
  store float %arg0, float* %op2
  %op3 = alloca float
  store float %arg1, float* %op3
  %op4 = load float, float* %op3
  %op5 = call float @my_ln(float %op4)
  %op6 = load float, float* %op2
  %op7 = call float @my_ln(float %op6)
  %op8 = fdiv float %op5, %op7
  ret float %op8
}
define float @my_powf(float %arg0, float %arg1) {
label_entry:
  %op2 = alloca float
  store float %arg0, float* %op2
  %op3 = alloca float
  store float %arg1, float* %op3
  %op4 = load float, float* %op3
  %op5 = load float, float* %op2
  %op6 = call float @my_ln(float %op5)
  %op7 = fmul float %op4, %op6
  %op8 = call float @my_exp(float %op7)
  ret float %op8
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  br label %label2
label2:                                                ; preds = %label_entry, %label56
  %op3 = load i32 , i32 * %op0
  %op4 = icmp ne i32  %op3, 0
  br i1  %op4, label %label5, label %label23
label5:                                                ; preds = %label2
  %op6 = alloca float
  %op7 = call float @getfloat()
  store float %op7, float* %op6
  %op8 = alloca float
  %op9 = call float @getfloat()
  store float %op9, float* %op8
  %op10 = load float, float* %op8
  %op11 = call float @my_fabs(float %op10)
  call void @putfloat(float %op11)
  call void @putch(i32  32)
  %op12 = load float, float* %op8
  %op13 = call float @my_pow(float %op12, i32  2)
  call void @putfloat(float %op13)
  call void @putch(i32  32)
  %op14 = load float, float* %op8
  %op15 = call float @my_sqrt(float %op14)
  call void @putfloat(float %op15)
  call void @putch(i32  32)
  %op16 = load float, float* %op8
  %op17 = call float @my_exp(float %op16)
  call void @putfloat(float %op17)
  call void @putch(i32  32)
  %op18 = load float, float* %op8
  %op19 = sitofp i32  0 to float
  %op20 = fcmp ugt float %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label24, label %label27
label23:                                                ; preds = %label2
  ret i32  0
label24:                                                ; preds = %label5
  %op25 = load float, float* %op8
  %op26 = call float @my_ln(float %op25)
  call void @putfloat(float %op26)
  br label %label28
label27:                                                ; preds = %label5
  call void @putch(i32  45)
  br label %label28
label28:                                                ; preds = %label24, %label27
  call void @putch(i32  32)
  %op29 = load float, float* %op8
  %op30 = sitofp i32  0 to float
  %op31 = fcmp ugt float %op29, %op30
  %op32 = zext i1  %op31 to i32 
  %op33 = icmp ne i32  %op32, 0
  br i1  %op33, label %label45, label %label38
label34:                                                ; preds = %label45
  %op35 = load float, float* %op8
  %op36 = load float, float* %op6
  %op37 = call float @my_log(float %op35, float %op36)
  call void @putfloat(float %op37)
  br label %label39
label38:                                                ; preds = %label28, %label45
  call void @putch(i32  45)
  br label %label39
label39:                                                ; preds = %label34, %label38
  call void @putch(i32  32)
  %op40 = load float, float* %op8
  %op41 = sitofp i32  0 to float
  %op42 = fcmp ugt float %op40, %op41
  %op43 = zext i1  %op42 to i32 
  %op44 = icmp ne i32  %op43, 0
  br i1  %op44, label %label51, label %label55
label45:                                                ; preds = %label28
  %op46 = load float, float* %op6
  %op47 = sitofp i32  0 to float
  %op48 = fcmp ugt float %op46, %op47
  %op49 = zext i1  %op48 to i32 
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label34, label %label38
label51:                                                ; preds = %label39
  %op52 = load float, float* %op8
  %op53 = load float, float* %op6
  %op54 = call float @my_powf(float %op52, float %op53)
  call void @putfloat(float %op54)
  br label %label56
label55:                                                ; preds = %label39
  call void @putch(i32  45)
  br label %label56
label56:                                                ; preds = %label51, %label55
  call void @putch(i32  10)
  %op57 = load i32 , i32 * %op0
  %op58 = sub i32  %op57, 1
  store i32  %op58, i32 * %op0
  br label %label2
}
