; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/98_matrix_mul.sy"

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

define i32  @mul(float* %arg0, float* %arg1, float* %arg2, float* %arg3, float* %arg4, float* %arg5, float* %arg6, float* %arg7, float* %arg8) {
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
  %op19 = load float*, float** %op9
  %op20 = getelementptr float, float* %op19, i32  0
  %op21 = load float, float* %op20
  %op22 = load float*, float** %op12
  %op23 = getelementptr float, float* %op22, i32  0
  %op24 = load float, float* %op23
  %op25 = fmul float %op21, %op24
  %op26 = load float*, float** %op9
  %op27 = getelementptr float, float* %op26, i32  1
  %op28 = load float, float* %op27
  %op29 = load float*, float** %op13
  %op30 = getelementptr float, float* %op29, i32  0
  %op31 = load float, float* %op30
  %op32 = fmul float %op28, %op31
  %op33 = fadd float %op25, %op32
  %op34 = load float*, float** %op9
  %op35 = getelementptr float, float* %op34, i32  2
  %op36 = load float, float* %op35
  %op37 = load float*, float** %op14
  %op38 = getelementptr float, float* %op37, i32  0
  %op39 = load float, float* %op38
  %op40 = fmul float %op36, %op39
  %op41 = fadd float %op33, %op40
  %op42 = load float*, float** %op15
  %op43 = getelementptr float, float* %op42, i32  0
  store float %op41, float* %op43
  %op44 = load float*, float** %op9
  %op45 = getelementptr float, float* %op44, i32  0
  %op46 = load float, float* %op45
  %op47 = load float*, float** %op12
  %op48 = getelementptr float, float* %op47, i32  1
  %op49 = load float, float* %op48
  %op50 = fmul float %op46, %op49
  %op51 = load float*, float** %op9
  %op52 = getelementptr float, float* %op51, i32  1
  %op53 = load float, float* %op52
  %op54 = load float*, float** %op13
  %op55 = getelementptr float, float* %op54, i32  1
  %op56 = load float, float* %op55
  %op57 = fmul float %op53, %op56
  %op58 = fadd float %op50, %op57
  %op59 = load float*, float** %op9
  %op60 = getelementptr float, float* %op59, i32  2
  %op61 = load float, float* %op60
  %op62 = load float*, float** %op14
  %op63 = getelementptr float, float* %op62, i32  1
  %op64 = load float, float* %op63
  %op65 = fmul float %op61, %op64
  %op66 = fadd float %op58, %op65
  %op67 = load float*, float** %op15
  %op68 = getelementptr float, float* %op67, i32  1
  store float %op66, float* %op68
  %op69 = load float*, float** %op9
  %op70 = getelementptr float, float* %op69, i32  0
  %op71 = load float, float* %op70
  %op72 = load float*, float** %op12
  %op73 = getelementptr float, float* %op72, i32  2
  %op74 = load float, float* %op73
  %op75 = fmul float %op71, %op74
  %op76 = load float*, float** %op9
  %op77 = getelementptr float, float* %op76, i32  1
  %op78 = load float, float* %op77
  %op79 = load float*, float** %op13
  %op80 = getelementptr float, float* %op79, i32  2
  %op81 = load float, float* %op80
  %op82 = fmul float %op78, %op81
  %op83 = fadd float %op75, %op82
  %op84 = load float*, float** %op9
  %op85 = getelementptr float, float* %op84, i32  2
  %op86 = load float, float* %op85
  %op87 = load float*, float** %op14
  %op88 = getelementptr float, float* %op87, i32  2
  %op89 = load float, float* %op88
  %op90 = fmul float %op86, %op89
  %op91 = fadd float %op83, %op90
  %op92 = load float*, float** %op15
  %op93 = getelementptr float, float* %op92, i32  2
  store float %op91, float* %op93
  %op94 = load float*, float** %op10
  %op95 = getelementptr float, float* %op94, i32  0
  %op96 = load float, float* %op95
  %op97 = load float*, float** %op12
  %op98 = getelementptr float, float* %op97, i32  0
  %op99 = load float, float* %op98
  %op100 = fmul float %op96, %op99
  %op101 = load float*, float** %op10
  %op102 = getelementptr float, float* %op101, i32  1
  %op103 = load float, float* %op102
  %op104 = load float*, float** %op13
  %op105 = getelementptr float, float* %op104, i32  0
  %op106 = load float, float* %op105
  %op107 = fmul float %op103, %op106
  %op108 = fadd float %op100, %op107
  %op109 = load float*, float** %op10
  %op110 = getelementptr float, float* %op109, i32  2
  %op111 = load float, float* %op110
  %op112 = load float*, float** %op14
  %op113 = getelementptr float, float* %op112, i32  0
  %op114 = load float, float* %op113
  %op115 = fmul float %op111, %op114
  %op116 = fadd float %op108, %op115
  %op117 = load float*, float** %op16
  %op118 = getelementptr float, float* %op117, i32  0
  store float %op116, float* %op118
  %op119 = load float*, float** %op10
  %op120 = getelementptr float, float* %op119, i32  0
  %op121 = load float, float* %op120
  %op122 = load float*, float** %op12
  %op123 = getelementptr float, float* %op122, i32  1
  %op124 = load float, float* %op123
  %op125 = fmul float %op121, %op124
  %op126 = load float*, float** %op10
  %op127 = getelementptr float, float* %op126, i32  1
  %op128 = load float, float* %op127
  %op129 = load float*, float** %op13
  %op130 = getelementptr float, float* %op129, i32  1
  %op131 = load float, float* %op130
  %op132 = fmul float %op128, %op131
  %op133 = fadd float %op125, %op132
  %op134 = load float*, float** %op10
  %op135 = getelementptr float, float* %op134, i32  2
  %op136 = load float, float* %op135
  %op137 = load float*, float** %op14
  %op138 = getelementptr float, float* %op137, i32  1
  %op139 = load float, float* %op138
  %op140 = fmul float %op136, %op139
  %op141 = fadd float %op133, %op140
  %op142 = load float*, float** %op16
  %op143 = getelementptr float, float* %op142, i32  1
  store float %op141, float* %op143
  %op144 = load float*, float** %op10
  %op145 = getelementptr float, float* %op144, i32  0
  %op146 = load float, float* %op145
  %op147 = load float*, float** %op12
  %op148 = getelementptr float, float* %op147, i32  2
  %op149 = load float, float* %op148
  %op150 = fmul float %op146, %op149
  %op151 = load float*, float** %op10
  %op152 = getelementptr float, float* %op151, i32  1
  %op153 = load float, float* %op152
  %op154 = load float*, float** %op13
  %op155 = getelementptr float, float* %op154, i32  2
  %op156 = load float, float* %op155
  %op157 = fmul float %op153, %op156
  %op158 = fadd float %op150, %op157
  %op159 = load float*, float** %op10
  %op160 = getelementptr float, float* %op159, i32  2
  %op161 = load float, float* %op160
  %op162 = load float*, float** %op14
  %op163 = getelementptr float, float* %op162, i32  2
  %op164 = load float, float* %op163
  %op165 = fmul float %op161, %op164
  %op166 = fadd float %op158, %op165
  %op167 = load float*, float** %op16
  %op168 = getelementptr float, float* %op167, i32  2
  store float %op166, float* %op168
  %op169 = load float*, float** %op11
  %op170 = getelementptr float, float* %op169, i32  0
  %op171 = load float, float* %op170
  %op172 = load float*, float** %op12
  %op173 = getelementptr float, float* %op172, i32  0
  %op174 = load float, float* %op173
  %op175 = fmul float %op171, %op174
  %op176 = load float*, float** %op11
  %op177 = getelementptr float, float* %op176, i32  1
  %op178 = load float, float* %op177
  %op179 = load float*, float** %op13
  %op180 = getelementptr float, float* %op179, i32  0
  %op181 = load float, float* %op180
  %op182 = fmul float %op178, %op181
  %op183 = fadd float %op175, %op182
  %op184 = load float*, float** %op11
  %op185 = getelementptr float, float* %op184, i32  2
  %op186 = load float, float* %op185
  %op187 = load float*, float** %op14
  %op188 = getelementptr float, float* %op187, i32  0
  %op189 = load float, float* %op188
  %op190 = fmul float %op186, %op189
  %op191 = fadd float %op183, %op190
  %op192 = load float*, float** %op17
  %op193 = getelementptr float, float* %op192, i32  0
  store float %op191, float* %op193
  %op194 = load float*, float** %op11
  %op195 = getelementptr float, float* %op194, i32  0
  %op196 = load float, float* %op195
  %op197 = load float*, float** %op12
  %op198 = getelementptr float, float* %op197, i32  1
  %op199 = load float, float* %op198
  %op200 = fmul float %op196, %op199
  %op201 = load float*, float** %op11
  %op202 = getelementptr float, float* %op201, i32  1
  %op203 = load float, float* %op202
  %op204 = load float*, float** %op13
  %op205 = getelementptr float, float* %op204, i32  1
  %op206 = load float, float* %op205
  %op207 = fmul float %op203, %op206
  %op208 = fadd float %op200, %op207
  %op209 = load float*, float** %op11
  %op210 = getelementptr float, float* %op209, i32  2
  %op211 = load float, float* %op210
  %op212 = load float*, float** %op14
  %op213 = getelementptr float, float* %op212, i32  1
  %op214 = load float, float* %op213
  %op215 = fmul float %op211, %op214
  %op216 = fadd float %op208, %op215
  %op217 = load float*, float** %op17
  %op218 = getelementptr float, float* %op217, i32  1
  store float %op216, float* %op218
  %op219 = load float*, float** %op11
  %op220 = getelementptr float, float* %op219, i32  0
  %op221 = load float, float* %op220
  %op222 = load float*, float** %op12
  %op223 = getelementptr float, float* %op222, i32  2
  %op224 = load float, float* %op223
  %op225 = fmul float %op221, %op224
  %op226 = load float*, float** %op11
  %op227 = getelementptr float, float* %op226, i32  1
  %op228 = load float, float* %op227
  %op229 = load float*, float** %op13
  %op230 = getelementptr float, float* %op229, i32  2
  %op231 = load float, float* %op230
  %op232 = fmul float %op228, %op231
  %op233 = fadd float %op225, %op232
  %op234 = load float*, float** %op11
  %op235 = getelementptr float, float* %op234, i32  2
  %op236 = load float, float* %op235
  %op237 = load float*, float** %op14
  %op238 = getelementptr float, float* %op237, i32  2
  %op239 = load float, float* %op238
  %op240 = fmul float %op236, %op239
  %op241 = fadd float %op233, %op240
  %op242 = load float*, float** %op17
  %op243 = getelementptr float, float* %op242, i32  2
  store float %op241, float* %op243
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
  %op53 = call i32  @mul(float* %op44, float* %op45, float* %op46, float* %op47, float* %op48, float* %op49, float* %op50, float* %op51, float* %op52)
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
  store i32  0, i32 * %op9
  %op70 = load i32 , i32 * %op54
  call void @putch(i32  %op70)
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
  store i32  0, i32 * %op9
  %op86 = load i32 , i32 * %op54
  call void @putch(i32  %op86)
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
