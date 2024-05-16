; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/97_matrix_sub.sy"

@N = global i32  zeroinitializer
@M = global i32  zeroinitializer
@L = global i32  zeroinitializer
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

define i32  @sub(float* %arg0, float* %arg1, float* %arg2, float* %arg3, float* %arg4, float* %arg5, float* %arg6, float* %arg7, float* %arg8) {
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
label19:                                                ; preds = %label_entry, %label24
  %op20 = load i32 , i32 * %op18
  %op21 = icmp slt i32  %op20, 3
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label24, label %label63
label24:                                                ; preds = %label19
  %op25 = load i32 , i32 * %op18
  %op26 = load float*, float** %op9
  %op27 = getelementptr float, float* %op26, i32  %op25
  %op28 = load float, float* %op27
  %op29 = load i32 , i32 * %op18
  %op30 = load float*, float** %op12
  %op31 = getelementptr float, float* %op30, i32  %op29
  %op32 = load float, float* %op31
  %op33 = fsub float %op28, %op32
  %op34 = load i32 , i32 * %op18
  %op35 = load float*, float** %op15
  %op36 = getelementptr float, float* %op35, i32  %op34
  store float %op33, float* %op36
  %op37 = load i32 , i32 * %op18
  %op38 = load float*, float** %op10
  %op39 = getelementptr float, float* %op38, i32  %op37
  %op40 = load float, float* %op39
  %op41 = load i32 , i32 * %op18
  %op42 = load float*, float** %op13
  %op43 = getelementptr float, float* %op42, i32  %op41
  %op44 = load float, float* %op43
  %op45 = fsub float %op40, %op44
  %op46 = load i32 , i32 * %op18
  %op47 = load float*, float** %op16
  %op48 = getelementptr float, float* %op47, i32  %op46
  store float %op45, float* %op48
  %op49 = load i32 , i32 * %op18
  %op50 = load float*, float** %op11
  %op51 = getelementptr float, float* %op50, i32  %op49
  %op52 = load float, float* %op51
  %op53 = load i32 , i32 * %op18
  %op54 = load float*, float** %op14
  %op55 = getelementptr float, float* %op54, i32  %op53
  %op56 = load float, float* %op55
  %op57 = fsub float %op52, %op56
  %op58 = load i32 , i32 * %op18
  %op59 = load float*, float** %op17
  %op60 = getelementptr float, float* %op59, i32  %op58
  store float %op57, float* %op60
  %op61 = load i32 , i32 * %op18
  %op62 = add i32  %op61, 1
  store i32  %op62, i32 * %op18
  br label %label19
label63:                                                ; preds = %label19
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
label10:                                                ; preds = %label_entry, %label15
  %op11 = load i32 , i32 * %op9
  %op12 = icmp slt i32  %op11, 3
  %op13 = zext i1  %op12 to i32 
  %op14 = icmp ne i32  %op13, 0
  br i1  %op14, label %label15, label %label42
label15:                                                ; preds = %label10
  %op16 = load i32 , i32 * %op9
  %op17 = load i32 , i32 * %op9
  %op18 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  %op17
  %op19 = sitofp i32  %op16 to float
  store float %op19, float* %op18
  %op20 = load i32 , i32 * %op9
  %op21 = load i32 , i32 * %op9
  %op22 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  %op21
  %op23 = sitofp i32  %op20 to float
  store float %op23, float* %op22
  %op24 = load i32 , i32 * %op9
  %op25 = load i32 , i32 * %op9
  %op26 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  %op25
  %op27 = sitofp i32  %op24 to float
  store float %op27, float* %op26
  %op28 = load i32 , i32 * %op9
  %op29 = load i32 , i32 * %op9
  %op30 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  %op29
  %op31 = sitofp i32  %op28 to float
  store float %op31, float* %op30
  %op32 = load i32 , i32 * %op9
  %op33 = load i32 , i32 * %op9
  %op34 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  %op33
  %op35 = sitofp i32  %op32 to float
  store float %op35, float* %op34
  %op36 = load i32 , i32 * %op9
  %op37 = load i32 , i32 * %op9
  %op38 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  %op37
  %op39 = sitofp i32  %op36 to float
  store float %op39, float* %op38
  %op40 = load i32 , i32 * %op9
  %op41 = add i32  %op40, 1
  store i32  %op41, i32 * %op9
  br label %label10
label42:                                                ; preds = %label10
  %op43 = getelementptr [3 x float], [3 x float]* %op8, i32  0, i32  0
  %op44 = getelementptr [3 x float], [3 x float]* %op7, i32  0, i32  0
  %op45 = getelementptr [3 x float], [3 x float]* %op6, i32  0, i32  0
  %op46 = getelementptr [3 x float], [3 x float]* %op5, i32  0, i32  0
  %op47 = getelementptr [3 x float], [3 x float]* %op4, i32  0, i32  0
  %op48 = getelementptr [3 x float], [3 x float]* %op3, i32  0, i32  0
  %op49 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  0
  %op50 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  0
  %op51 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  0
  %op52 = call i32  @sub(float* %op43, float* %op44, float* %op45, float* %op46, float* %op47, float* %op48, float* %op49, float* %op50, float* %op51)
  store i32  %op52, i32 * %op9
  %op53 = alloca i32 
  br label %label54
label54:                                                ; preds = %label42, %label59
  %op55 = load i32 , i32 * %op9
  %op56 = icmp slt i32  %op55, 3
  %op57 = zext i1  %op56 to i32 
  %op58 = icmp ne i32  %op57, 0
  br i1  %op58, label %label59, label %label67
label59:                                                ; preds = %label54
  %op60 = load i32 , i32 * %op9
  %op61 = getelementptr [6 x float], [6 x float]* %op2, i32  0, i32  %op60
  %op62 = load float, float* %op61
  %op63 = fptosi float %op62 to i32 
  store i32  %op63, i32 * %op53
  %op64 = load i32 , i32 * %op53
  call void @putint(i32  %op64)
  %op65 = load i32 , i32 * %op9
  %op66 = add i32  %op65, 1
  store i32  %op66, i32 * %op9
  br label %label54
label67:                                                ; preds = %label54
  store i32  10, i32 * %op53
  store i32  0, i32 * %op9
  %op68 = load i32 , i32 * %op53
  call void @putch(i32  %op68)
  br label %label69
label69:                                                ; preds = %label67, %label74
  %op70 = load i32 , i32 * %op9
  %op71 = icmp slt i32  %op70, 3
  %op72 = zext i1  %op71 to i32 
  %op73 = icmp ne i32  %op72, 0
  br i1  %op73, label %label74, label %label82
label74:                                                ; preds = %label69
  %op75 = load i32 , i32 * %op9
  %op76 = getelementptr [3 x float], [3 x float]* %op1, i32  0, i32  %op75
  %op77 = load float, float* %op76
  %op78 = fptosi float %op77 to i32 
  store i32  %op78, i32 * %op53
  %op79 = load i32 , i32 * %op53
  call void @putint(i32  %op79)
  %op80 = load i32 , i32 * %op9
  %op81 = add i32  %op80, 1
  store i32  %op81, i32 * %op9
  br label %label69
label82:                                                ; preds = %label69
  store i32  10, i32 * %op53
  store i32  0, i32 * %op9
  %op83 = load i32 , i32 * %op53
  call void @putch(i32  %op83)
  br label %label84
label84:                                                ; preds = %label82, %label89
  %op85 = load i32 , i32 * %op9
  %op86 = icmp slt i32  %op85, 3
  %op87 = zext i1  %op86 to i32 
  %op88 = icmp ne i32  %op87, 0
  br i1  %op88, label %label89, label %label97
label89:                                                ; preds = %label84
  %op90 = load i32 , i32 * %op9
  %op91 = getelementptr [3 x float], [3 x float]* %op0, i32  0, i32  %op90
  %op92 = load float, float* %op91
  %op93 = fptosi float %op92 to i32 
  store i32  %op93, i32 * %op53
  %op94 = load i32 , i32 * %op53
  call void @putint(i32  %op94)
  %op95 = load i32 , i32 * %op9
  %op96 = add i32  %op95, 1
  store i32  %op96, i32 * %op9
  br label %label84
label97:                                                ; preds = %label84
  store i32  10, i32 * %op53
  %op98 = load i32 , i32 * %op53
  call void @putch(i32  %op98)
  ret i32  0
}
