; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/28_side_effect2.sy"

@sum = global i32  0
@array = global [20 x i32 ] zeroinitializer
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

define i32  @f(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * @sum
  %op5 = add i32  %op4, 1
  store i32  %op5, i32 * @sum
  %op6 = load i32 , i32 * %op2
  %op7 = load i32 , i32 * %op3
  %op8 = icmp sge i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label19
label11:                                                ; preds = %label_entry, %label19
  ret i32  0
label12:                                                ; preds = %label19
  %op13 = load i32 , i32 * %op2
  %op14 = getelementptr [20 x i32 ], [20 x i32 ]* @array, i32  0, i32  %op13
  store i32  1, i32 * %op14
  %op15 = load i32 , i32 * %op2
  %op16 = icmp eq i32  %op15, 0
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label24, label %label27
label19:                                                ; preds = %label_entry
  %op20 = load i32 , i32 * %op2
  %op21 = icmp sge i32  %op20, 20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label11, label %label12
label24:                                                ; preds = %label12
  %op25 = getelementptr [20 x i32 ], [20 x i32 ]* @array, i32  0, i32  0
  %op26 = load i32 , i32 * %op25
  ret i32  %op26
label27:                                                ; preds = %label12
  %op28 = load i32 , i32 * %op2
  %op29 = sub i32  %op28, 1
  %op30 = getelementptr [20 x i32 ], [20 x i32 ]* @array, i32  0, i32  %op29
  %op31 = load i32 , i32 * %op30
  ret i32  %op31
}
define i32  @g(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * @sum
  %op5 = add i32  %op4, 2
  store i32  %op5, i32 * @sum
  %op6 = load i32 , i32 * %op2
  %op7 = load i32 , i32 * %op3
  %op8 = icmp sge i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label19
label11:                                                ; preds = %label_entry, %label19
  ret i32  1
label12:                                                ; preds = %label19
  %op13 = load i32 , i32 * %op2
  %op14 = getelementptr [20 x i32 ], [20 x i32 ]* @array, i32  0, i32  %op13
  store i32  0, i32 * %op14
  %op15 = load i32 , i32 * %op2
  %op16 = icmp eq i32  %op15, 0
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label24, label %label27
label19:                                                ; preds = %label_entry
  %op20 = load i32 , i32 * %op2
  %op21 = icmp sge i32  %op20, 20
  %op22 = zext i1  %op21 to i32 
  %op23 = icmp ne i32  %op22, 0
  br i1  %op23, label %label11, label %label12
label24:                                                ; preds = %label12
  %op25 = getelementptr [20 x i32 ], [20 x i32 ]* @array, i32  0, i32  0
  %op26 = load i32 , i32 * %op25
  ret i32  %op26
label27:                                                ; preds = %label12
  %op28 = load i32 , i32 * %op2
  %op29 = sub i32  %op28, 1
  %op30 = getelementptr [20 x i32 ], [20 x i32 ]* @array, i32  0, i32  %op29
  %op31 = load i32 , i32 * %op30
  ret i32  %op31
}
define i32  @h(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * @sum
  %op3 = add i32  %op2, 3
  store i32  %op3, i32 * @sum
  %op4 = load i32 , i32 * %op1
  %op5 = icmp slt i32  %op4, 0
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label13
label8:                                                ; preds = %label_entry, %label13
  ret i32  0
label9:                                                ; preds = %label13
  %op10 = load i32 , i32 * %op1
  %op11 = getelementptr [20 x i32 ], [20 x i32 ]* @array, i32  0, i32  %op10
  %op12 = load i32 , i32 * %op11
  ret i32  %op12
label13:                                                ; preds = %label_entry
  %op14 = load i32 , i32 * %op1
  %op15 = icmp sge i32  %op14, 20
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label8, label %label9
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label12
  %op2 = load i32 , i32 * %op0
  %op3 = icmp slt i32  %op2, 20
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label10
label6:                                                ; preds = %label1
  %op7 = load i32 , i32 * %op0
  %op8 = call i32  @f(i32  0, i32  %op7)
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label87, label %label12
label10:                                                ; preds = %label1
  store i32  0, i32 * %op0
  br label %label91
label11:                                                ; preds = %label15
  br label %label12
label12:                                                ; preds = %label6, %label87, %label83, %label79, %label75, %label71, %label67, %label63, %label59, %label55, %label51, %label47, %label43, %label39, %label35, %label31, %label27, %label23, %label19, %label15, %label11
  %op13 = load i32 , i32 * %op0
  %op14 = add i32  %op13, 1
  store i32  %op14, i32 * %op0
  br label %label1
label15:                                                ; preds = %label19
  %op16 = load i32 , i32 * %op0
  %op17 = call i32  @f(i32  19, i32  %op16)
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label11, label %label12
label19:                                                ; preds = %label23
  %op20 = load i32 , i32 * %op0
  %op21 = call i32  @f(i32  18, i32  %op20)
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label15, label %label12
label23:                                                ; preds = %label27
  %op24 = load i32 , i32 * %op0
  %op25 = call i32  @f(i32  17, i32  %op24)
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label19, label %label12
label27:                                                ; preds = %label31
  %op28 = load i32 , i32 * %op0
  %op29 = call i32  @f(i32  16, i32  %op28)
  %op30 = icmp ne i32  %op29, 0
  br i1  %op30, label %label23, label %label12
label31:                                                ; preds = %label35
  %op32 = load i32 , i32 * %op0
  %op33 = call i32  @f(i32  15, i32  %op32)
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label27, label %label12
label35:                                                ; preds = %label39
  %op36 = load i32 , i32 * %op0
  %op37 = call i32  @f(i32  14, i32  %op36)
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label31, label %label12
label39:                                                ; preds = %label43
  %op40 = load i32 , i32 * %op0
  %op41 = call i32  @f(i32  13, i32  %op40)
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label35, label %label12
label43:                                                ; preds = %label47
  %op44 = load i32 , i32 * %op0
  %op45 = call i32  @f(i32  12, i32  %op44)
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label39, label %label12
label47:                                                ; preds = %label51
  %op48 = load i32 , i32 * %op0
  %op49 = call i32  @f(i32  11, i32  %op48)
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label43, label %label12
label51:                                                ; preds = %label55
  %op52 = load i32 , i32 * %op0
  %op53 = call i32  @f(i32  10, i32  %op52)
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label47, label %label12
label55:                                                ; preds = %label59
  %op56 = load i32 , i32 * %op0
  %op57 = call i32  @f(i32  9, i32  %op56)
  %op58 = icmp ne i32  %op57, 0
  br i1  %op58, label %label51, label %label12
label59:                                                ; preds = %label63
  %op60 = load i32 , i32 * %op0
  %op61 = call i32  @f(i32  8, i32  %op60)
  %op62 = icmp ne i32  %op61, 0
  br i1  %op62, label %label55, label %label12
label63:                                                ; preds = %label67
  %op64 = load i32 , i32 * %op0
  %op65 = call i32  @f(i32  7, i32  %op64)
  %op66 = icmp ne i32  %op65, 0
  br i1  %op66, label %label59, label %label12
label67:                                                ; preds = %label71
  %op68 = load i32 , i32 * %op0
  %op69 = call i32  @f(i32  6, i32  %op68)
  %op70 = icmp ne i32  %op69, 0
  br i1  %op70, label %label63, label %label12
label71:                                                ; preds = %label75
  %op72 = load i32 , i32 * %op0
  %op73 = call i32  @f(i32  5, i32  %op72)
  %op74 = icmp ne i32  %op73, 0
  br i1  %op74, label %label67, label %label12
label75:                                                ; preds = %label79
  %op76 = load i32 , i32 * %op0
  %op77 = call i32  @f(i32  4, i32  %op76)
  %op78 = icmp ne i32  %op77, 0
  br i1  %op78, label %label71, label %label12
label79:                                                ; preds = %label83
  %op80 = load i32 , i32 * %op0
  %op81 = call i32  @f(i32  3, i32  %op80)
  %op82 = icmp ne i32  %op81, 0
  br i1  %op82, label %label75, label %label12
label83:                                                ; preds = %label87
  %op84 = load i32 , i32 * %op0
  %op85 = call i32  @f(i32  2, i32  %op84)
  %op86 = icmp ne i32  %op85, 0
  br i1  %op86, label %label79, label %label12
label87:                                                ; preds = %label6
  %op88 = load i32 , i32 * %op0
  %op89 = call i32  @f(i32  1, i32  %op88)
  %op90 = icmp ne i32  %op89, 0
  br i1  %op90, label %label83, label %label12
label91:                                                ; preds = %label10, %label102
  %op92 = load i32 , i32 * %op0
  %op93 = icmp slt i32  %op92, 20
  %op94 = zext i1  %op93 to i32 
  %op95 = icmp ne i32  %op94, 0
  br i1  %op95, label %label96, label %label100
label96:                                                ; preds = %label91
  %op97 = load i32 , i32 * %op0
  %op98 = call i32  @g(i32  0, i32  %op97)
  %op99 = icmp ne i32  %op98, 0
  br i1  %op99, label %label101, label %label177
label100:                                                ; preds = %label91
  store i32  1, i32 * %op0
  br label %label181
label101:                                                ; preds = %label96, %label177, %label173, %label169, %label165, %label161, %label157, %label153, %label149, %label145, %label141, %label137, %label133, %label129, %label125, %label121, %label117, %label113, %label109, %label105
  br label %label102
label102:                                                ; preds = %label105, %label101
  %op103 = load i32 , i32 * %op0
  %op104 = add i32  %op103, 1
  store i32  %op104, i32 * %op0
  br label %label91
label105:                                                ; preds = %label109
  %op106 = load i32 , i32 * %op0
  %op107 = call i32  @g(i32  19, i32  %op106)
  %op108 = icmp ne i32  %op107, 0
  br i1  %op108, label %label101, label %label102
label109:                                                ; preds = %label113
  %op110 = load i32 , i32 * %op0
  %op111 = call i32  @g(i32  18, i32  %op110)
  %op112 = icmp ne i32  %op111, 0
  br i1  %op112, label %label101, label %label105
label113:                                                ; preds = %label117
  %op114 = load i32 , i32 * %op0
  %op115 = call i32  @g(i32  17, i32  %op114)
  %op116 = icmp ne i32  %op115, 0
  br i1  %op116, label %label101, label %label109
label117:                                                ; preds = %label121
  %op118 = load i32 , i32 * %op0
  %op119 = call i32  @g(i32  16, i32  %op118)
  %op120 = icmp ne i32  %op119, 0
  br i1  %op120, label %label101, label %label113
label121:                                                ; preds = %label125
  %op122 = load i32 , i32 * %op0
  %op123 = call i32  @g(i32  15, i32  %op122)
  %op124 = icmp ne i32  %op123, 0
  br i1  %op124, label %label101, label %label117
label125:                                                ; preds = %label129
  %op126 = load i32 , i32 * %op0
  %op127 = call i32  @g(i32  14, i32  %op126)
  %op128 = icmp ne i32  %op127, 0
  br i1  %op128, label %label101, label %label121
label129:                                                ; preds = %label133
  %op130 = load i32 , i32 * %op0
  %op131 = call i32  @g(i32  13, i32  %op130)
  %op132 = icmp ne i32  %op131, 0
  br i1  %op132, label %label101, label %label125
label133:                                                ; preds = %label137
  %op134 = load i32 , i32 * %op0
  %op135 = call i32  @g(i32  12, i32  %op134)
  %op136 = icmp ne i32  %op135, 0
  br i1  %op136, label %label101, label %label129
label137:                                                ; preds = %label141
  %op138 = load i32 , i32 * %op0
  %op139 = call i32  @g(i32  11, i32  %op138)
  %op140 = icmp ne i32  %op139, 0
  br i1  %op140, label %label101, label %label133
label141:                                                ; preds = %label145
  %op142 = load i32 , i32 * %op0
  %op143 = call i32  @g(i32  10, i32  %op142)
  %op144 = icmp ne i32  %op143, 0
  br i1  %op144, label %label101, label %label137
label145:                                                ; preds = %label149
  %op146 = load i32 , i32 * %op0
  %op147 = call i32  @g(i32  9, i32  %op146)
  %op148 = icmp ne i32  %op147, 0
  br i1  %op148, label %label101, label %label141
label149:                                                ; preds = %label153
  %op150 = load i32 , i32 * %op0
  %op151 = call i32  @g(i32  8, i32  %op150)
  %op152 = icmp ne i32  %op151, 0
  br i1  %op152, label %label101, label %label145
label153:                                                ; preds = %label157
  %op154 = load i32 , i32 * %op0
  %op155 = call i32  @g(i32  7, i32  %op154)
  %op156 = icmp ne i32  %op155, 0
  br i1  %op156, label %label101, label %label149
label157:                                                ; preds = %label161
  %op158 = load i32 , i32 * %op0
  %op159 = call i32  @g(i32  6, i32  %op158)
  %op160 = icmp ne i32  %op159, 0
  br i1  %op160, label %label101, label %label153
label161:                                                ; preds = %label165
  %op162 = load i32 , i32 * %op0
  %op163 = call i32  @g(i32  5, i32  %op162)
  %op164 = icmp ne i32  %op163, 0
  br i1  %op164, label %label101, label %label157
label165:                                                ; preds = %label169
  %op166 = load i32 , i32 * %op0
  %op167 = call i32  @g(i32  4, i32  %op166)
  %op168 = icmp ne i32  %op167, 0
  br i1  %op168, label %label101, label %label161
label169:                                                ; preds = %label173
  %op170 = load i32 , i32 * %op0
  %op171 = call i32  @g(i32  3, i32  %op170)
  %op172 = icmp ne i32  %op171, 0
  br i1  %op172, label %label101, label %label165
label173:                                                ; preds = %label177
  %op174 = load i32 , i32 * %op0
  %op175 = call i32  @g(i32  2, i32  %op174)
  %op176 = icmp ne i32  %op175, 0
  br i1  %op176, label %label101, label %label169
label177:                                                ; preds = %label96
  %op178 = load i32 , i32 * %op0
  %op179 = call i32  @g(i32  1, i32  %op178)
  %op180 = icmp ne i32  %op179, 0
  br i1  %op180, label %label101, label %label173
label181:                                                ; preds = %label100, %label186
  %op182 = load i32 , i32 * %op0
  %op183 = icmp slt i32  %op182, 20
  %op184 = zext i1  %op183 to i32 
  %op185 = icmp ne i32  %op184, 0
  br i1  %op185, label %label193, label %label189
label186:                                                ; preds = %label193
  %op187 = load i32 , i32 * %op0
  %op188 = add i32  %op187, 1
  store i32  %op188, i32 * %op0
  br label %label181
label189:                                                ; preds = %label181, %label193
  %op190 = alloca i32 
  store i32  0, i32 * %op190
  %op191 = call i32  @h(i32  0)
  %op192 = icmp ne i32  %op191, 0
  br i1  %op192, label %label212, label %label209
label193:                                                ; preds = %label181
  %op194 = load i32 , i32 * %op0
  %op195 = sub i32  %op194, 1
  %op196 = load i32 , i32 * %op0
  %op197 = call i32  @f(i32  %op195, i32  %op196)
  %op198 = icmp ne i32  %op197, 0
  br i1  %op198, label %label186, label %label189
label199:                                                ; preds = %label212, %label209, %label206
  store i32  1, i32 * %op190
  br label %label200
label200:                                                ; preds = %label206, %label199
  %op201 = load i32 , i32 * @sum
  %op202 = load i32 , i32 * %op190
  %op203 = add i32  %op201, %op202
  store i32  0, i32 * %op190
  %op204 = call i32  @h(i32  4)
  %op205 = icmp eq i32  %op204, 0
  br i1  %op205, label %label215, label %label225
label206:                                                ; preds = %label209
  %op207 = call i32  @h(i32  3)
  %op208 = icmp ne i32  %op207, 0
  br i1  %op208, label %label199, label %label200
label209:                                                ; preds = %label189, %label212
  %op210 = call i32  @h(i32  2)
  %op211 = icmp eq i32  %op210, 0
  br i1  %op211, label %label199, label %label206
label212:                                                ; preds = %label189
  %op213 = call i32  @h(i32  1)
  %op214 = icmp ne i32  %op213, 0
  br i1  %op214, label %label199, label %label209
label215:                                                ; preds = %label200, %label228, %label222
  store i32  1, i32 * %op190
  br label %label216
label216:                                                ; preds = %label222, %label215
  %op217 = load i32 , i32 * @sum
  %op218 = load i32 , i32 * %op190
  %op219 = mul i32  %op217, %op218
  store i32  0, i32 * %op190
  %op220 = call i32  @h(i32  9)
  %op221 = icmp ne i32  %op220, 0
  br i1  %op221, label %label253, label %label250
label222:                                                ; preds = %label225, %label231, %label228
  %op223 = call i32  @h(i32  8)
  %op224 = icmp eq i32  %op223, 0
  br i1  %op224, label %label215, label %label216
label225:                                                ; preds = %label200
  %op226 = call i32  @h(i32  5)
  %op227 = icmp ne i32  %op226, 0
  br i1  %op227, label %label231, label %label222
label228:                                                ; preds = %label231
  %op229 = call i32  @h(i32  7)
  %op230 = icmp ne i32  %op229, 0
  br i1  %op230, label %label215, label %label222
label231:                                                ; preds = %label225
  %op232 = call i32  @h(i32  6)
  %op233 = icmp eq i32  %op232, 0
  br i1  %op233, label %label228, label %label222
label234:                                                ; preds = %label253, %label250, %label247, %label244, %label256
  store i32  1, i32 * %op190
  br label %label235
label235:                                                ; preds = %label241, %label256, %label234
  %op236 = load i32 , i32 * @sum
  %op237 = load i32 , i32 * %op190
  %op238 = sub i32  %op236, %op237
  store i32  0, i32 * %op190
  %op239 = call i32  @h(i32  0)
  %op240 = icmp ne i32  %op239, 0
  br i1  %op240, label %label279, label %label270
label241:                                                ; preds = %label244
  %op242 = call i32  @h(i32  14)
  %op243 = icmp ne i32  %op242, 0
  br i1  %op243, label %label256, label %label235
label244:                                                ; preds = %label247
  %op245 = call i32  @h(i32  13)
  %op246 = icmp eq i32  %op245, 0
  br i1  %op246, label %label234, label %label241
label247:                                                ; preds = %label250
  %op248 = call i32  @h(i32  12)
  %op249 = icmp eq i32  %op248, 0
  br i1  %op249, label %label234, label %label244
label250:                                                ; preds = %label216, %label253
  %op251 = call i32  @h(i32  11)
  %op252 = icmp eq i32  %op251, 0
  br i1  %op252, label %label234, label %label247
label253:                                                ; preds = %label216
  %op254 = call i32  @h(i32  10)
  %op255 = icmp eq i32  %op254, 0
  br i1  %op255, label %label234, label %label250
label256:                                                ; preds = %label241
  %op257 = call i32  @h(i32  15)
  %op258 = icmp ne i32  %op257, 0
  br i1  %op258, label %label234, label %label235
label259:                                                ; preds = %label273, %label270, %label282, %label264
  store i32  1, i32 * %op190
  br label %label260
label260:                                                ; preds = %label264, %label259
  %op261 = load i32 , i32 * @sum
  %op262 = load i32 , i32 * %op190
  %op263 = add i32  %op261, %op262
  call void @putint(i32  %op263)
  ret i32  0
label264:                                                ; preds = %label267, %label282
  %op265 = call i32  @h(i32  8)
  %op266 = icmp ne i32  %op265, 0
  br i1  %op266, label %label259, label %label260
label267:                                                ; preds = %label270
  %op268 = call i32  @h(i32  6)
  %op269 = icmp ne i32  %op268, 0
  br i1  %op269, label %label282, label %label264
label270:                                                ; preds = %label235, %label279, %label276, %label273
  %op271 = call i32  @h(i32  5)
  %op272 = icmp ne i32  %op271, 0
  br i1  %op272, label %label259, label %label267
label273:                                                ; preds = %label276
  %op274 = call i32  @h(i32  4)
  %op275 = icmp eq i32  %op274, 0
  br i1  %op275, label %label259, label %label270
label276:                                                ; preds = %label279
  %op277 = call i32  @h(i32  3)
  %op278 = icmp eq i32  %op277, 0
  br i1  %op278, label %label273, label %label270
label279:                                                ; preds = %label235
  %op280 = call i32  @h(i32  2)
  %op281 = icmp ne i32  %op280, 0
  br i1  %op281, label %label276, label %label270
label282:                                                ; preds = %label267
  %op283 = call i32  @h(i32  7)
  %op284 = icmp eq i32  %op283, 0
  br i1  %op284, label %label259, label %label264
}
