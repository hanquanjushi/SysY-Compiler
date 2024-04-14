; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/96_matrix_add.sy"

@M = global i32  zeroinitializer
@L = global i32  zeroinitializer
@N = global i32  zeroinitializer
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

define i32  @add(float* %arg0, float* %arg1, float* %arg2, float* %arg3, float* %arg4, float* %arg5, float* %arg6, float* %arg7, float* %arg8) {
label_entry:
  %op9 = alloca float*
  store float* %arg0, float** %op9
  %op10 = alloca float*
  store float* %arg1, float** %op10
  %op11 = alloca float*
  store float* %arg2, float** %op11
  %op12 = alloca float*
  store float* %arg3, float** %op12
  %op13 = alloca float*
  store float* %arg4, float** %op13
  %op14 = alloca float*
  store float* %arg5, float** %op14
  %op15 = alloca float*
  store float* %arg6, float** %op15
  %op16 = alloca float*
  store float* %arg7, float** %op16
  %op17 = alloca float*
  store float* %arg8, float** %op17
  %op18 = alloca i32 
  store i32  0, i32 * %op18
  br label %label19
label19:                                                ; preds = %label_entry, %label25
  %op20 = load i32 , i32 * %op18
  %op21 = load i32 , i32 * @M
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label25, label %label64
label25:                                                ; preds = %label19
  %op26 = load i32 , i32 * %op18
  %op27 = load float*, float** %op9
  %op28 = getelementptr float, float* %op27, i32  %op26
  %op29 = load float, float* %op28
  %op30 = load i32 , i32 * %op18
  %op31 = load float*, float** %op12
  %op32 = getelementptr float, float* %op31, i32  %op30
  %op33 = load float, float* %op32
  %op34 = fadd float %op29, %op33
  %op35 = load i32 , i32 * %op18
  %op36 = load float*, float** %op15
  %op37 = getelementptr float, float* %op36, i32  %op35
  store float %op34, float* %op37
  %op38 = load i32 , i32 * %op18
  %op39 = load float*, float** %op10
  %op40 = getelementptr float, float* %op39, i32  %op38
  %op41 = load float, float* %op40
  %op42 = load i32 , i32 * %op18
  %op43 = load float*, float** %op13
  %op44 = getelementptr float, float* %op43, i32  %op42
  %op45 = load float, float* %op44
  %op46 = fadd float %op41, %op45
  %op47 = load i32 , i32 * %op18
  %op48 = load float*, float** %op16
  %op49 = getelementptr float, float* %op48, i32  %op47
  store float %op46, float* %op49
  %op50 = load i32 , i32 * %op18
  %op51 = load float*, float** %op11
  %op52 = getelementptr float, float* %op51, i32  %op50
  %op53 = load float, float* %op52
  %op54 = load i32 , i32 * %op18
  %op55 = load float*, float** %op14
  %op56 = getelementptr float, float* %op55, i32  %op54
  %op57 = load float, float* %op56
  %op58 = fadd float %op53, %op57
  %op59 = load i32 , i32 * %op18
  %op60 = load float*, float** %op17
  %op61 = getelementptr float, float* %op60, i32  %op59
  store float %op58, float* %op61
  %op62 = load i32 , i32 * %op18
  %op63 = add i32  %op62, 1
  store i32  %op63, i32 * %op18
  br label %label19
label64:                                                ; preds = %label19
  ret i32  0
}
define i32  @main() {
label_entry:
  store i32  3, i32 * @N
  store i32  3, i32 * @M
  store i32  3, i32 * @L
  %op0 = alloca [3 x float]
  %op1 = alloca [3 x float]
  %op2 = alloca [6 x float]
  %op3 = alloca [3 x float]
  %op4 = alloca [3 x float]
  %op5 = alloca [3 x float]
  %op6 = alloca [3 x float]
  %op7 = alloca [3 x float]
  %op8 = alloca [3 x float]
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  br label %label10
label10:                                                ; preds = %label_entry, %label16
  %op11 = load i32 , i32 * %op9
  %op12 = load i32 , i32 * @M
  %op13 = icmp slt i32  %op11, %op12
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label43
label16:                                                ; preds = %label10
  %op17 = load i32 , i32 * %op9
  %op18 = load i32 , i32 * %op9
  %op19 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  %op18
  %op20 = sitofp i32  %op17 to float
  store float %op20, float* %op19
  %op21 = load i32 , i32 * %op9
  %op22 = load i32 , i32 * %op9
  %op23 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  %op22
  %op24 = sitofp i32  %op21 to float
  store float %op24, float* %op23
  %op25 = load i32 , i32 * %op9
  %op26 = load i32 , i32 * %op9
  %op27 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  %op26
  %op28 = sitofp i32  %op25 to float
  store float %op28, float* %op27
  %op29 = load i32 , i32 * %op9
  %op30 = load i32 , i32 * %op9
  %op31 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  %op30
  %op32 = sitofp i32  %op29 to float
  store float %op32, float* %op31
  %op33 = load i32 , i32 * %op9
  %op34 = load i32 , i32 * %op9
  %op35 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  %op34
  %op36 = sitofp i32  %op33 to float
  store float %op36, float* %op35
  %op37 = load i32 , i32 * %op9
  %op38 = load i32 , i32 * %op9
  %op39 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  %op38
  %op40 = sitofp i32  %op37 to float
  store float %op40, float* %op39
  %op41 = load i32 , i32 * %op9
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op9
  br label %label10
label43:                                                ; preds = %label10
  %op44 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  0
  %op45 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  0
  %op46 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  0
  %op47 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  0
  %op48 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  0
  %op49 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  0
  %op50 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  0
  %op51 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  0
  %op52 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  0
  %op53 = call i32  @add(float* %op44, float* %op45, float* %op46, float* %op47, float* %op48, float* %op49, float* %op50, float* %op51, float* %op52)
  store i32  %op53, i32 * %op9
  %op54 = alloca i32 
  br label %label55
label55:                                                ; preds = %label43, %label61
  %op56 = load i32 , i32 * %op9
  %op57 = load i32 , i32 * @N
  %op58 = icmp slt i32  %op56, %op57
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label61, label %label69
label61:                                                ; preds = %label55
  %op62 = load i32 , i32 * %op9
  %op63 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  %op62
  %op64 = load float, float* %op63
  %op65 = fptosi float %op64 to i32 
  store i32  %op65, i32 * %op54
  %op66 = load i32 , i32 * %op54
  call void @putint(i32  %op66)
  %op67 = load i32 , i32 * %op9
  %op68 = add i32  %op67, 1
  store i32  %op68, i32 * %op9
  br label %label55
label69:                                                ; preds = %label55
  store i32  10, i32 * %op54
  %op70 = load i32 , i32 * %op54
  call void @putch(i32  %op70)
  store i32  0, i32 * %op9
  br label %label71
label71:                                                ; preds = %label69, %label77
  %op72 = load i32 , i32 * %op9
  %op73 = load i32 , i32 * @N
  %op74 = icmp slt i32  %op72, %op73
  %op75 = zext i1  %op74 to i32 
  %op76 = icmp ne i32  %op75, 0
  br i1  %op76, label %label77, label %label85
label77:                                                ; preds = %label71
  %op78 = load i32 , i32 * %op9
  %op79 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  %op78
  %op80 = load float, float* %op79
  %op81 = fptosi float %op80 to i32 
  store i32  %op81, i32 * %op54
  %op82 = load i32 , i32 * %op54
  call void @putint(i32  %op82)
  %op83 = load i32 , i32 * %op9
  %op84 = add i32  %op83, 1
  store i32  %op84, i32 * %op9
  br label %label71
label85:                                                ; preds = %label71
  store i32  10, i32 * %op54
  %op86 = load i32 , i32 * %op54
  call void @putch(i32  %op86)
  store i32  0, i32 * %op9
  br label %label87
label87:                                                ; preds = %label85, %label93
  %op88 = load i32 , i32 * %op9
  %op89 = load i32 , i32 * @N
  %op90 = icmp slt i32  %op88, %op89
  %op91 = zext i1  %op90 to i32 
  %op92 = icmp ne i32  %op91, 0
  br i1  %op92, label %label93, label %label101
label93:                                                ; preds = %label87
  %op94 = load i32 , i32 * %op9
  %op95 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  %op94
  %op96 = load float, float* %op95
  %op97 = fptosi float %op96 to i32 
  store i32  %op97, i32 * %op54
  %op98 = load i32 , i32 * %op54
  call void @putint(i32  %op98)
  %op99 = load i32 , i32 * %op9
  %op100 = add i32  %op99, 1
  store i32  %op100, i32 * %op9
  br label %label87
label101:                                                ; preds = %label87
  store i32  10, i32 * %op54
  %op102 = load i32 , i32 * %op54
  call void @putch(i32  %op102)
  ret i32  0
}
