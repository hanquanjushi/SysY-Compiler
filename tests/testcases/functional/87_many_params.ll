; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/87_many_params.sy"

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

define void @sort(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label35
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op3
  %op8 = sub i32  %op7, 1
  %op9 = icmp slt i32  %op6, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label16
label12:                                                ; preds = %label5
  %op13 = alloca i32 
  %op14 = load i32 , i32 * %op4
  %op15 = add i32  %op14, 1
  store i32  %op15, i32 * %op13
  br label %label17
label16:                                                ; preds = %label5
  ret void
label17:                                                ; preds = %label12, %label55
  %op18 = load i32 , i32 * %op13
  %op19 = load i32 , i32 * %op3
  %op20 = icmp slt i32  %op18, %op19
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label35
label23:                                                ; preds = %label17
  %op24 = load i32 , i32 * %op4
  %op25 = load i32 *, i32 ** %op2
  %op26 = getelementptr i32 , i32 * %op25, i32  %op24
  %op27 = load i32 , i32 * %op26
  %op28 = load i32 , i32 * %op13
  %op29 = load i32 *, i32 ** %op2
  %op30 = getelementptr i32 , i32 * %op29, i32  %op28
  %op31 = load i32 , i32 * %op30
  %op32 = icmp slt i32  %op27, %op31
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label38, label %label55
label35:                                                ; preds = %label17
  %op36 = load i32 , i32 * %op4
  %op37 = add i32  %op36, 1
  store i32  %op37, i32 * %op4
  br label %label5
label38:                                                ; preds = %label23
  %op39 = alloca i32 
  %op40 = load i32 , i32 * %op4
  %op41 = load i32 *, i32 ** %op2
  %op42 = getelementptr i32 , i32 * %op41, i32  %op40
  %op43 = load i32 , i32 * %op42
  store i32  %op43, i32 * %op39
  %op44 = load i32 , i32 * %op13
  %op45 = load i32 *, i32 ** %op2
  %op46 = getelementptr i32 , i32 * %op45, i32  %op44
  %op47 = load i32 , i32 * %op46
  %op48 = load i32 , i32 * %op4
  %op49 = load i32 *, i32 ** %op2
  %op50 = getelementptr i32 , i32 * %op49, i32  %op48
  store i32  %op47, i32 * %op50
  %op51 = load i32 , i32 * %op39
  %op52 = load i32 , i32 * %op13
  %op53 = load i32 *, i32 ** %op2
  %op54 = getelementptr i32 , i32 * %op53, i32  %op52
  store i32  %op51, i32 * %op54
  br label %label55
label55:                                                ; preds = %label23, %label38
  %op56 = load i32 , i32 * %op13
  %op57 = add i32  %op56, 1
  store i32  %op57, i32 * %op13
  br label %label17
}
define i32  @param32_rec(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6, i32  %arg7, i32  %arg8, i32  %arg9, i32  %arg10, i32  %arg11, i32  %arg12, i32  %arg13, i32  %arg14, i32  %arg15, i32  %arg16, i32  %arg17, i32  %arg18, i32  %arg19, i32  %arg20, i32  %arg21, i32  %arg22, i32  %arg23, i32  %arg24, i32  %arg25, i32  %arg26, i32  %arg27, i32  %arg28, i32  %arg29, i32  %arg30, i32  %arg31) {
label_entry:
  %op32 = alloca i32 
  store i32  %arg0, i32 * %op32
  %op33 = alloca i32 
  store i32  %arg1, i32 * %op33
  %op34 = alloca i32 
  store i32  %arg2, i32 * %op34
  %op35 = alloca i32 
  store i32  %arg3, i32 * %op35
  %op36 = alloca i32 
  store i32  %arg4, i32 * %op36
  %op37 = alloca i32 
  store i32  %arg5, i32 * %op37
  %op38 = alloca i32 
  store i32  %arg6, i32 * %op38
  %op39 = alloca i32 
  store i32  %arg7, i32 * %op39
  %op40 = alloca i32 
  store i32  %arg8, i32 * %op40
  %op41 = alloca i32 
  store i32  %arg9, i32 * %op41
  %op42 = alloca i32 
  store i32  %arg10, i32 * %op42
  %op43 = alloca i32 
  store i32  %arg11, i32 * %op43
  %op44 = alloca i32 
  store i32  %arg12, i32 * %op44
  %op45 = alloca i32 
  store i32  %arg13, i32 * %op45
  %op46 = alloca i32 
  store i32  %arg14, i32 * %op46
  %op47 = alloca i32 
  store i32  %arg15, i32 * %op47
  %op48 = alloca i32 
  store i32  %arg16, i32 * %op48
  %op49 = alloca i32 
  store i32  %arg17, i32 * %op49
  %op50 = alloca i32 
  store i32  %arg18, i32 * %op50
  %op51 = alloca i32 
  store i32  %arg19, i32 * %op51
  %op52 = alloca i32 
  store i32  %arg20, i32 * %op52
  %op53 = alloca i32 
  store i32  %arg21, i32 * %op53
  %op54 = alloca i32 
  store i32  %arg22, i32 * %op54
  %op55 = alloca i32 
  store i32  %arg23, i32 * %op55
  %op56 = alloca i32 
  store i32  %arg24, i32 * %op56
  %op57 = alloca i32 
  store i32  %arg25, i32 * %op57
  %op58 = alloca i32 
  store i32  %arg26, i32 * %op58
  %op59 = alloca i32 
  store i32  %arg27, i32 * %op59
  %op60 = alloca i32 
  store i32  %arg28, i32 * %op60
  %op61 = alloca i32 
  store i32  %arg29, i32 * %op61
  %op62 = alloca i32 
  store i32  %arg30, i32 * %op62
  %op63 = alloca i32 
  store i32  %arg31, i32 * %op63
  %op64 = load i32 , i32 * %op32
  %op65 = icmp eq i32  %op64, 0
  %op66 = zext i1  %op65 to i32 
  %op67 = icmp ne i32  %op66, 0
  br i1  %op67, label %label68, label %label70
label68:                                                ; preds = %label_entry
  %op69 = load i32 , i32 * %op33
  ret i32  %op69
label70:                                                ; preds = %label_entry
  %op71 = load i32 , i32 * %op32
  %op72 = sub i32  %op71, 1
  %op73 = load i32 , i32 * %op33
  %op74 = load i32 , i32 * %op34
  %op75 = add i32  %op73, %op74
  %op76 = srem i32  %op75, 998244353
  %op77 = load i32 , i32 * %op35
  %op78 = load i32 , i32 * %op36
  %op79 = load i32 , i32 * %op37
  %op80 = load i32 , i32 * %op38
  %op81 = load i32 , i32 * %op39
  %op82 = load i32 , i32 * %op40
  %op83 = load i32 , i32 * %op41
  %op84 = load i32 , i32 * %op42
  %op85 = load i32 , i32 * %op43
  %op86 = load i32 , i32 * %op44
  %op87 = load i32 , i32 * %op45
  %op88 = load i32 , i32 * %op46
  %op89 = load i32 , i32 * %op47
  %op90 = load i32 , i32 * %op48
  %op91 = load i32 , i32 * %op49
  %op92 = load i32 , i32 * %op50
  %op93 = load i32 , i32 * %op51
  %op94 = load i32 , i32 * %op52
  %op95 = load i32 , i32 * %op53
  %op96 = load i32 , i32 * %op54
  %op97 = load i32 , i32 * %op55
  %op98 = load i32 , i32 * %op56
  %op99 = load i32 , i32 * %op57
  %op100 = load i32 , i32 * %op58
  %op101 = load i32 , i32 * %op59
  %op102 = load i32 , i32 * %op60
  %op103 = load i32 , i32 * %op61
  %op104 = load i32 , i32 * %op62
  %op105 = load i32 , i32 * %op63
  %op106 = call i32  @param32_rec(i32  %op72, i32  %op76, i32  %op77, i32  %op78, i32  %op79, i32  %op80, i32  %op81, i32  %op82, i32  %op83, i32  %op84, i32  %op85, i32  %op86, i32  %op87, i32  %op88, i32  %op89, i32  %op90, i32  %op91, i32  %op92, i32  %op93, i32  %op94, i32  %op95, i32  %op96, i32  %op97, i32  %op98, i32  %op99, i32  %op100, i32  %op101, i32  %op102, i32  %op103, i32  %op104, i32  %op105, i32  0)
  ret i32  %op106
}
define i32  @param32_arr(i32 * %arg0, i32 * %arg1, i32 * %arg2, i32 * %arg3, i32 * %arg4, i32 * %arg5, i32 * %arg6, i32 * %arg7, i32 * %arg8, i32 * %arg9, i32 * %arg10, i32 * %arg11, i32 * %arg12, i32 * %arg13, i32 * %arg14, i32 * %arg15, i32 * %arg16, i32 * %arg17, i32 * %arg18, i32 * %arg19, i32 * %arg20, i32 * %arg21, i32 * %arg22, i32 * %arg23, i32 * %arg24, i32 * %arg25, i32 * %arg26, i32 * %arg27, i32 * %arg28, i32 * %arg29, i32 * %arg30, i32 * %arg31) {
label_entry:
  %op32 = alloca i32 *
  store i32 * %arg0, i32 ** %op32
  %op33 = alloca i32 *
  store i32 * %arg1, i32 ** %op33
  %op34 = alloca i32 *
  store i32 * %arg2, i32 ** %op34
  %op35 = alloca i32 *
  store i32 * %arg3, i32 ** %op35
  %op36 = alloca i32 *
  store i32 * %arg4, i32 ** %op36
  %op37 = alloca i32 *
  store i32 * %arg5, i32 ** %op37
  %op38 = alloca i32 *
  store i32 * %arg6, i32 ** %op38
  %op39 = alloca i32 *
  store i32 * %arg7, i32 ** %op39
  %op40 = alloca i32 *
  store i32 * %arg8, i32 ** %op40
  %op41 = alloca i32 *
  store i32 * %arg9, i32 ** %op41
  %op42 = alloca i32 *
  store i32 * %arg10, i32 ** %op42
  %op43 = alloca i32 *
  store i32 * %arg11, i32 ** %op43
  %op44 = alloca i32 *
  store i32 * %arg12, i32 ** %op44
  %op45 = alloca i32 *
  store i32 * %arg13, i32 ** %op45
  %op46 = alloca i32 *
  store i32 * %arg14, i32 ** %op46
  %op47 = alloca i32 *
  store i32 * %arg15, i32 ** %op47
  %op48 = alloca i32 *
  store i32 * %arg16, i32 ** %op48
  %op49 = alloca i32 *
  store i32 * %arg17, i32 ** %op49
  %op50 = alloca i32 *
  store i32 * %arg18, i32 ** %op50
  %op51 = alloca i32 *
  store i32 * %arg19, i32 ** %op51
  %op52 = alloca i32 *
  store i32 * %arg20, i32 ** %op52
  %op53 = alloca i32 *
  store i32 * %arg21, i32 ** %op53
  %op54 = alloca i32 *
  store i32 * %arg22, i32 ** %op54
  %op55 = alloca i32 *
  store i32 * %arg23, i32 ** %op55
  %op56 = alloca i32 *
  store i32 * %arg24, i32 ** %op56
  %op57 = alloca i32 *
  store i32 * %arg25, i32 ** %op57
  %op58 = alloca i32 *
  store i32 * %arg26, i32 ** %op58
  %op59 = alloca i32 *
  store i32 * %arg27, i32 ** %op59
  %op60 = alloca i32 *
  store i32 * %arg28, i32 ** %op60
  %op61 = alloca i32 *
  store i32 * %arg29, i32 ** %op61
  %op62 = alloca i32 *
  store i32 * %arg30, i32 ** %op62
  %op63 = alloca i32 *
  store i32 * %arg31, i32 ** %op63
  %op64 = alloca i32 
  %op65 = load i32 *, i32 ** %op32
  %op66 = getelementptr i32 , i32 * %op65, i32  0
  %op67 = load i32 , i32 * %op66
  %op68 = load i32 *, i32 ** %op32
  %op69 = getelementptr i32 , i32 * %op68, i32  1
  %op70 = load i32 , i32 * %op69
  %op71 = add i32  %op67, %op70
  store i32  %op71, i32 * %op64
  %op72 = load i32 , i32 * %op64
  %op73 = load i32 *, i32 ** %op33
  %op74 = getelementptr i32 , i32 * %op73, i32  0
  %op75 = load i32 , i32 * %op74
  %op76 = add i32  %op72, %op75
  %op77 = load i32 *, i32 ** %op33
  %op78 = getelementptr i32 , i32 * %op77, i32  1
  %op79 = load i32 , i32 * %op78
  %op80 = add i32  %op76, %op79
  store i32  %op80, i32 * %op64
  %op81 = load i32 , i32 * %op64
  %op82 = load i32 *, i32 ** %op34
  %op83 = getelementptr i32 , i32 * %op82, i32  0
  %op84 = load i32 , i32 * %op83
  %op85 = add i32  %op81, %op84
  %op86 = load i32 *, i32 ** %op34
  %op87 = getelementptr i32 , i32 * %op86, i32  1
  %op88 = load i32 , i32 * %op87
  %op89 = add i32  %op85, %op88
  store i32  %op89, i32 * %op64
  %op90 = load i32 , i32 * %op64
  %op91 = load i32 *, i32 ** %op35
  %op92 = getelementptr i32 , i32 * %op91, i32  0
  %op93 = load i32 , i32 * %op92
  %op94 = add i32  %op90, %op93
  %op95 = load i32 *, i32 ** %op35
  %op96 = getelementptr i32 , i32 * %op95, i32  1
  %op97 = load i32 , i32 * %op96
  %op98 = add i32  %op94, %op97
  store i32  %op98, i32 * %op64
  %op99 = load i32 , i32 * %op64
  %op100 = load i32 *, i32 ** %op36
  %op101 = getelementptr i32 , i32 * %op100, i32  0
  %op102 = load i32 , i32 * %op101
  %op103 = add i32  %op99, %op102
  %op104 = load i32 *, i32 ** %op36
  %op105 = getelementptr i32 , i32 * %op104, i32  1
  %op106 = load i32 , i32 * %op105
  %op107 = add i32  %op103, %op106
  store i32  %op107, i32 * %op64
  %op108 = load i32 , i32 * %op64
  %op109 = load i32 *, i32 ** %op37
  %op110 = getelementptr i32 , i32 * %op109, i32  0
  %op111 = load i32 , i32 * %op110
  %op112 = add i32  %op108, %op111
  %op113 = load i32 *, i32 ** %op37
  %op114 = getelementptr i32 , i32 * %op113, i32  1
  %op115 = load i32 , i32 * %op114
  %op116 = add i32  %op112, %op115
  store i32  %op116, i32 * %op64
  %op117 = load i32 , i32 * %op64
  %op118 = load i32 *, i32 ** %op38
  %op119 = getelementptr i32 , i32 * %op118, i32  0
  %op120 = load i32 , i32 * %op119
  %op121 = add i32  %op117, %op120
  %op122 = load i32 *, i32 ** %op38
  %op123 = getelementptr i32 , i32 * %op122, i32  1
  %op124 = load i32 , i32 * %op123
  %op125 = add i32  %op121, %op124
  store i32  %op125, i32 * %op64
  %op126 = load i32 , i32 * %op64
  %op127 = load i32 *, i32 ** %op39
  %op128 = getelementptr i32 , i32 * %op127, i32  0
  %op129 = load i32 , i32 * %op128
  %op130 = add i32  %op126, %op129
  %op131 = load i32 *, i32 ** %op39
  %op132 = getelementptr i32 , i32 * %op131, i32  1
  %op133 = load i32 , i32 * %op132
  %op134 = add i32  %op130, %op133
  store i32  %op134, i32 * %op64
  %op135 = load i32 , i32 * %op64
  %op136 = load i32 *, i32 ** %op40
  %op137 = getelementptr i32 , i32 * %op136, i32  0
  %op138 = load i32 , i32 * %op137
  %op139 = add i32  %op135, %op138
  %op140 = load i32 *, i32 ** %op40
  %op141 = getelementptr i32 , i32 * %op140, i32  1
  %op142 = load i32 , i32 * %op141
  %op143 = add i32  %op139, %op142
  store i32  %op143, i32 * %op64
  %op144 = load i32 , i32 * %op64
  %op145 = load i32 *, i32 ** %op41
  %op146 = getelementptr i32 , i32 * %op145, i32  0
  %op147 = load i32 , i32 * %op146
  %op148 = add i32  %op144, %op147
  %op149 = load i32 *, i32 ** %op41
  %op150 = getelementptr i32 , i32 * %op149, i32  1
  %op151 = load i32 , i32 * %op150
  %op152 = add i32  %op148, %op151
  store i32  %op152, i32 * %op64
  %op153 = load i32 , i32 * %op64
  %op154 = load i32 *, i32 ** %op42
  %op155 = getelementptr i32 , i32 * %op154, i32  0
  %op156 = load i32 , i32 * %op155
  %op157 = add i32  %op153, %op156
  %op158 = load i32 *, i32 ** %op42
  %op159 = getelementptr i32 , i32 * %op158, i32  1
  %op160 = load i32 , i32 * %op159
  %op161 = add i32  %op157, %op160
  store i32  %op161, i32 * %op64
  %op162 = load i32 , i32 * %op64
  %op163 = load i32 *, i32 ** %op43
  %op164 = getelementptr i32 , i32 * %op163, i32  0
  %op165 = load i32 , i32 * %op164
  %op166 = add i32  %op162, %op165
  %op167 = load i32 *, i32 ** %op43
  %op168 = getelementptr i32 , i32 * %op167, i32  1
  %op169 = load i32 , i32 * %op168
  %op170 = add i32  %op166, %op169
  store i32  %op170, i32 * %op64
  %op171 = load i32 , i32 * %op64
  %op172 = load i32 *, i32 ** %op44
  %op173 = getelementptr i32 , i32 * %op172, i32  0
  %op174 = load i32 , i32 * %op173
  %op175 = add i32  %op171, %op174
  %op176 = load i32 *, i32 ** %op44
  %op177 = getelementptr i32 , i32 * %op176, i32  1
  %op178 = load i32 , i32 * %op177
  %op179 = add i32  %op175, %op178
  store i32  %op179, i32 * %op64
  %op180 = load i32 , i32 * %op64
  %op181 = load i32 *, i32 ** %op45
  %op182 = getelementptr i32 , i32 * %op181, i32  0
  %op183 = load i32 , i32 * %op182
  %op184 = add i32  %op180, %op183
  %op185 = load i32 *, i32 ** %op45
  %op186 = getelementptr i32 , i32 * %op185, i32  1
  %op187 = load i32 , i32 * %op186
  %op188 = add i32  %op184, %op187
  store i32  %op188, i32 * %op64
  %op189 = load i32 , i32 * %op64
  %op190 = load i32 *, i32 ** %op46
  %op191 = getelementptr i32 , i32 * %op190, i32  0
  %op192 = load i32 , i32 * %op191
  %op193 = add i32  %op189, %op192
  %op194 = load i32 *, i32 ** %op46
  %op195 = getelementptr i32 , i32 * %op194, i32  1
  %op196 = load i32 , i32 * %op195
  %op197 = add i32  %op193, %op196
  store i32  %op197, i32 * %op64
  %op198 = load i32 , i32 * %op64
  %op199 = load i32 *, i32 ** %op47
  %op200 = getelementptr i32 , i32 * %op199, i32  0
  %op201 = load i32 , i32 * %op200
  %op202 = add i32  %op198, %op201
  %op203 = load i32 *, i32 ** %op47
  %op204 = getelementptr i32 , i32 * %op203, i32  1
  %op205 = load i32 , i32 * %op204
  %op206 = add i32  %op202, %op205
  store i32  %op206, i32 * %op64
  %op207 = load i32 , i32 * %op64
  %op208 = load i32 *, i32 ** %op48
  %op209 = getelementptr i32 , i32 * %op208, i32  0
  %op210 = load i32 , i32 * %op209
  %op211 = add i32  %op207, %op210
  %op212 = load i32 *, i32 ** %op48
  %op213 = getelementptr i32 , i32 * %op212, i32  1
  %op214 = load i32 , i32 * %op213
  %op215 = add i32  %op211, %op214
  store i32  %op215, i32 * %op64
  %op216 = load i32 , i32 * %op64
  %op217 = load i32 *, i32 ** %op49
  %op218 = getelementptr i32 , i32 * %op217, i32  0
  %op219 = load i32 , i32 * %op218
  %op220 = add i32  %op216, %op219
  %op221 = load i32 *, i32 ** %op49
  %op222 = getelementptr i32 , i32 * %op221, i32  1
  %op223 = load i32 , i32 * %op222
  %op224 = add i32  %op220, %op223
  store i32  %op224, i32 * %op64
  %op225 = load i32 , i32 * %op64
  %op226 = load i32 *, i32 ** %op50
  %op227 = getelementptr i32 , i32 * %op226, i32  0
  %op228 = load i32 , i32 * %op227
  %op229 = add i32  %op225, %op228
  %op230 = load i32 *, i32 ** %op50
  %op231 = getelementptr i32 , i32 * %op230, i32  1
  %op232 = load i32 , i32 * %op231
  %op233 = add i32  %op229, %op232
  store i32  %op233, i32 * %op64
  %op234 = load i32 , i32 * %op64
  %op235 = load i32 *, i32 ** %op51
  %op236 = getelementptr i32 , i32 * %op235, i32  0
  %op237 = load i32 , i32 * %op236
  %op238 = add i32  %op234, %op237
  %op239 = load i32 *, i32 ** %op51
  %op240 = getelementptr i32 , i32 * %op239, i32  1
  %op241 = load i32 , i32 * %op240
  %op242 = add i32  %op238, %op241
  store i32  %op242, i32 * %op64
  %op243 = load i32 , i32 * %op64
  %op244 = load i32 *, i32 ** %op52
  %op245 = getelementptr i32 , i32 * %op244, i32  0
  %op246 = load i32 , i32 * %op245
  %op247 = add i32  %op243, %op246
  %op248 = load i32 *, i32 ** %op52
  %op249 = getelementptr i32 , i32 * %op248, i32  1
  %op250 = load i32 , i32 * %op249
  %op251 = add i32  %op247, %op250
  store i32  %op251, i32 * %op64
  %op252 = load i32 , i32 * %op64
  %op253 = load i32 *, i32 ** %op53
  %op254 = getelementptr i32 , i32 * %op253, i32  0
  %op255 = load i32 , i32 * %op254
  %op256 = add i32  %op252, %op255
  %op257 = load i32 *, i32 ** %op53
  %op258 = getelementptr i32 , i32 * %op257, i32  1
  %op259 = load i32 , i32 * %op258
  %op260 = add i32  %op256, %op259
  store i32  %op260, i32 * %op64
  %op261 = load i32 , i32 * %op64
  %op262 = load i32 *, i32 ** %op54
  %op263 = getelementptr i32 , i32 * %op262, i32  0
  %op264 = load i32 , i32 * %op263
  %op265 = add i32  %op261, %op264
  %op266 = load i32 *, i32 ** %op54
  %op267 = getelementptr i32 , i32 * %op266, i32  1
  %op268 = load i32 , i32 * %op267
  %op269 = add i32  %op265, %op268
  store i32  %op269, i32 * %op64
  %op270 = load i32 , i32 * %op64
  %op271 = load i32 *, i32 ** %op55
  %op272 = getelementptr i32 , i32 * %op271, i32  0
  %op273 = load i32 , i32 * %op272
  %op274 = add i32  %op270, %op273
  %op275 = load i32 *, i32 ** %op55
  %op276 = getelementptr i32 , i32 * %op275, i32  1
  %op277 = load i32 , i32 * %op276
  %op278 = add i32  %op274, %op277
  store i32  %op278, i32 * %op64
  %op279 = load i32 , i32 * %op64
  %op280 = load i32 *, i32 ** %op56
  %op281 = getelementptr i32 , i32 * %op280, i32  0
  %op282 = load i32 , i32 * %op281
  %op283 = add i32  %op279, %op282
  %op284 = load i32 *, i32 ** %op56
  %op285 = getelementptr i32 , i32 * %op284, i32  1
  %op286 = load i32 , i32 * %op285
  %op287 = add i32  %op283, %op286
  store i32  %op287, i32 * %op64
  %op288 = load i32 , i32 * %op64
  %op289 = load i32 *, i32 ** %op57
  %op290 = getelementptr i32 , i32 * %op289, i32  0
  %op291 = load i32 , i32 * %op290
  %op292 = add i32  %op288, %op291
  %op293 = load i32 *, i32 ** %op57
  %op294 = getelementptr i32 , i32 * %op293, i32  1
  %op295 = load i32 , i32 * %op294
  %op296 = add i32  %op292, %op295
  store i32  %op296, i32 * %op64
  %op297 = load i32 , i32 * %op64
  %op298 = load i32 *, i32 ** %op58
  %op299 = getelementptr i32 , i32 * %op298, i32  0
  %op300 = load i32 , i32 * %op299
  %op301 = add i32  %op297, %op300
  %op302 = load i32 *, i32 ** %op58
  %op303 = getelementptr i32 , i32 * %op302, i32  1
  %op304 = load i32 , i32 * %op303
  %op305 = add i32  %op301, %op304
  store i32  %op305, i32 * %op64
  %op306 = load i32 , i32 * %op64
  %op307 = load i32 *, i32 ** %op59
  %op308 = getelementptr i32 , i32 * %op307, i32  0
  %op309 = load i32 , i32 * %op308
  %op310 = add i32  %op306, %op309
  %op311 = load i32 *, i32 ** %op59
  %op312 = getelementptr i32 , i32 * %op311, i32  1
  %op313 = load i32 , i32 * %op312
  %op314 = add i32  %op310, %op313
  store i32  %op314, i32 * %op64
  %op315 = load i32 , i32 * %op64
  %op316 = load i32 *, i32 ** %op60
  %op317 = getelementptr i32 , i32 * %op316, i32  0
  %op318 = load i32 , i32 * %op317
  %op319 = add i32  %op315, %op318
  %op320 = load i32 *, i32 ** %op60
  %op321 = getelementptr i32 , i32 * %op320, i32  1
  %op322 = load i32 , i32 * %op321
  %op323 = add i32  %op319, %op322
  store i32  %op323, i32 * %op64
  %op324 = load i32 , i32 * %op64
  %op325 = load i32 *, i32 ** %op61
  %op326 = getelementptr i32 , i32 * %op325, i32  0
  %op327 = load i32 , i32 * %op326
  %op328 = add i32  %op324, %op327
  %op329 = load i32 *, i32 ** %op61
  %op330 = getelementptr i32 , i32 * %op329, i32  1
  %op331 = load i32 , i32 * %op330
  %op332 = add i32  %op328, %op331
  store i32  %op332, i32 * %op64
  %op333 = load i32 , i32 * %op64
  %op334 = load i32 *, i32 ** %op62
  %op335 = getelementptr i32 , i32 * %op334, i32  0
  %op336 = load i32 , i32 * %op335
  %op337 = add i32  %op333, %op336
  %op338 = load i32 *, i32 ** %op62
  %op339 = getelementptr i32 , i32 * %op338, i32  1
  %op340 = load i32 , i32 * %op339
  %op341 = add i32  %op337, %op340
  store i32  %op341, i32 * %op64
  %op342 = load i32 , i32 * %op64
  %op343 = load i32 *, i32 ** %op63
  %op344 = getelementptr i32 , i32 * %op343, i32  0
  %op345 = load i32 , i32 * %op344
  %op346 = add i32  %op342, %op345
  %op347 = load i32 *, i32 ** %op63
  %op348 = getelementptr i32 , i32 * %op347, i32  1
  %op349 = load i32 , i32 * %op348
  %op350 = add i32  %op346, %op349
  store i32  %op350, i32 * %op64
  %op351 = load i32 , i32 * %op64
  ret i32  %op351
}
define i32  @param16(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6, i32  %arg7, i32  %arg8, i32  %arg9, i32  %arg10, i32  %arg11, i32  %arg12, i32  %arg13, i32  %arg14, i32  %arg15) {
label_entry:
  %op16 = alloca i32 
  store i32  %arg0, i32 * %op16
  %op17 = alloca i32 
  store i32  %arg1, i32 * %op17
  %op18 = alloca i32 
  store i32  %arg2, i32 * %op18
  %op19 = alloca i32 
  store i32  %arg3, i32 * %op19
  %op20 = alloca i32 
  store i32  %arg4, i32 * %op20
  %op21 = alloca i32 
  store i32  %arg5, i32 * %op21
  %op22 = alloca i32 
  store i32  %arg6, i32 * %op22
  %op23 = alloca i32 
  store i32  %arg7, i32 * %op23
  %op24 = alloca i32 
  store i32  %arg8, i32 * %op24
  %op25 = alloca i32 
  store i32  %arg9, i32 * %op25
  %op26 = alloca i32 
  store i32  %arg10, i32 * %op26
  %op27 = alloca i32 
  store i32  %arg11, i32 * %op27
  %op28 = alloca i32 
  store i32  %arg12, i32 * %op28
  %op29 = alloca i32 
  store i32  %arg13, i32 * %op29
  %op30 = alloca i32 
  store i32  %arg14, i32 * %op30
  %op31 = alloca i32 
  store i32  %arg15, i32 * %op31
  %op32 = alloca [16 x i32 ]
  %op33 = load i32 , i32 * %op16
  %op34 = load i32 , i32 * %op17
  %op35 = load i32 , i32 * %op18
  %op36 = load i32 , i32 * %op19
  %op37 = load i32 , i32 * %op20
  %op38 = load i32 , i32 * %op21
  %op39 = load i32 , i32 * %op22
  %op40 = load i32 , i32 * %op23
  %op41 = load i32 , i32 * %op24
  %op42 = load i32 , i32 * %op25
  %op43 = load i32 , i32 * %op26
  %op44 = load i32 , i32 * %op27
  %op45 = load i32 , i32 * %op28
  %op46 = load i32 , i32 * %op29
  %op47 = load i32 , i32 * %op30
  %op48 = load i32 , i32 * %op31
  %op49 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
  store i32  0, i32 * %op49
  %op50 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  1
  store i32  0, i32 * %op50
  %op51 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  2
  store i32  0, i32 * %op51
  %op52 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  3
  store i32  0, i32 * %op52
  %op53 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  4
  store i32  0, i32 * %op53
  %op54 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  5
  store i32  0, i32 * %op54
  %op55 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  6
  store i32  0, i32 * %op55
  %op56 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  7
  store i32  0, i32 * %op56
  %op57 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  8
  store i32  0, i32 * %op57
  %op58 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  9
  store i32  0, i32 * %op58
  %op59 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  10
  store i32  0, i32 * %op59
  %op60 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  11
  store i32  0, i32 * %op60
  %op61 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  12
  store i32  0, i32 * %op61
  %op62 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  13
  store i32  0, i32 * %op62
  %op63 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  14
  store i32  0, i32 * %op63
  %op64 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  15
  store i32  0, i32 * %op64
  %op65 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
  store i32  %op33, i32 * %op65
  %op66 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  1
  store i32  %op34, i32 * %op66
  %op67 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  2
  store i32  %op35, i32 * %op67
  %op68 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  3
  store i32  %op36, i32 * %op68
  %op69 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  4
  store i32  %op37, i32 * %op69
  %op70 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  5
  store i32  %op38, i32 * %op70
  %op71 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  6
  store i32  %op39, i32 * %op71
  %op72 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  7
  store i32  %op40, i32 * %op72
  %op73 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  8
  store i32  %op41, i32 * %op73
  %op74 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  9
  store i32  %op42, i32 * %op74
  %op75 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  10
  store i32  %op43, i32 * %op75
  %op76 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  11
  store i32  %op44, i32 * %op76
  %op77 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  12
  store i32  %op45, i32 * %op77
  %op78 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  13
  store i32  %op46, i32 * %op78
  %op79 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  14
  store i32  %op47, i32 * %op79
  %op80 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  15
  store i32  %op48, i32 * %op80
  %op81 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
  call void @sort(i32 * %op81, i32  16)
  %op82 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  0
  %op83 = load i32 , i32 * %op82
  %op84 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  1
  %op85 = load i32 , i32 * %op84
  %op86 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  2
  %op87 = load i32 , i32 * %op86
  %op88 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  3
  %op89 = load i32 , i32 * %op88
  %op90 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  4
  %op91 = load i32 , i32 * %op90
  %op92 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  5
  %op93 = load i32 , i32 * %op92
  %op94 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  6
  %op95 = load i32 , i32 * %op94
  %op96 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  7
  %op97 = load i32 , i32 * %op96
  %op98 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  8
  %op99 = load i32 , i32 * %op98
  %op100 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  9
  %op101 = load i32 , i32 * %op100
  %op102 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  10
  %op103 = load i32 , i32 * %op102
  %op104 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  11
  %op105 = load i32 , i32 * %op104
  %op106 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  12
  %op107 = load i32 , i32 * %op106
  %op108 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  13
  %op109 = load i32 , i32 * %op108
  %op110 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  14
  %op111 = load i32 , i32 * %op110
  %op112 = getelementptr [16 x i32 ], [16 x i32 ]* %op32, i32  0, i32  15
  %op113 = load i32 , i32 * %op112
  %op114 = load i32 , i32 * %op16
  %op115 = load i32 , i32 * %op17
  %op116 = load i32 , i32 * %op18
  %op117 = load i32 , i32 * %op19
  %op118 = load i32 , i32 * %op20
  %op119 = load i32 , i32 * %op21
  %op120 = load i32 , i32 * %op22
  %op121 = load i32 , i32 * %op23
  %op122 = load i32 , i32 * %op24
  %op123 = load i32 , i32 * %op25
  %op124 = load i32 , i32 * %op26
  %op125 = load i32 , i32 * %op27
  %op126 = load i32 , i32 * %op28
  %op127 = load i32 , i32 * %op29
  %op128 = load i32 , i32 * %op30
  %op129 = load i32 , i32 * %op31
  %op130 = call i32  @param32_rec(i32  %op83, i32  %op85, i32  %op87, i32  %op89, i32  %op91, i32  %op93, i32  %op95, i32  %op97, i32  %op99, i32  %op101, i32  %op103, i32  %op105, i32  %op107, i32  %op109, i32  %op111, i32  %op113, i32  %op114, i32  %op115, i32  %op116, i32  %op117, i32  %op118, i32  %op119, i32  %op120, i32  %op121, i32  %op122, i32  %op123, i32  %op124, i32  %op125, i32  %op126, i32  %op127, i32  %op128, i32  %op129)
  ret i32  %op130
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  1, i32 * %op0
  %op1 = alloca [32 x [2 x i32 ]]
  %op2 = call i32  @getint()
  %op3 = call i32  @getint()
  %op4 = call i32  @getint()
  %op5 = call i32  @getint()
  %op6 = call i32  @getint()
  %op7 = call i32  @getint()
  %op8 = call i32  @getint()
  %op9 = call i32  @getint()
  %op10 = call i32  @getint()
  %op11 = call i32  @getint()
  %op12 = call i32  @getint()
  %op13 = call i32  @getint()
  %op14 = call i32  @getint()
  %op15 = call i32  @getint()
  %op16 = call i32  @getint()
  %op17 = call i32  @getint()
  %op18 = call i32  @param16(i32  %op2, i32  %op3, i32  %op4, i32  %op5, i32  %op6, i32  %op7, i32  %op8, i32  %op9, i32  %op10, i32  %op11, i32  %op12, i32  %op13, i32  %op14, i32  %op15, i32  %op16, i32  %op17)
  %op19 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  0
  store i32  0, i32 * %op19
  %op20 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  1
  store i32  0, i32 * %op20
  %op21 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  1, i32  0
  store i32  0, i32 * %op21
  %op22 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  1, i32  1
  store i32  0, i32 * %op22
  %op23 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  2, i32  0
  store i32  0, i32 * %op23
  %op24 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  2, i32  1
  store i32  0, i32 * %op24
  %op25 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  3, i32  0
  store i32  0, i32 * %op25
  %op26 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  3, i32  1
  store i32  0, i32 * %op26
  %op27 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  4, i32  0
  store i32  0, i32 * %op27
  %op28 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  4, i32  1
  store i32  0, i32 * %op28
  %op29 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  5, i32  0
  store i32  0, i32 * %op29
  %op30 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  5, i32  1
  store i32  0, i32 * %op30
  %op31 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  6, i32  0
  store i32  0, i32 * %op31
  %op32 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  6, i32  1
  store i32  0, i32 * %op32
  %op33 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  7, i32  0
  store i32  0, i32 * %op33
  %op34 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  7, i32  1
  store i32  0, i32 * %op34
  %op35 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  8, i32  0
  store i32  0, i32 * %op35
  %op36 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  8, i32  1
  store i32  0, i32 * %op36
  %op37 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  9, i32  0
  store i32  0, i32 * %op37
  %op38 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  9, i32  1
  store i32  0, i32 * %op38
  %op39 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  10, i32  0
  store i32  0, i32 * %op39
  %op40 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  10, i32  1
  store i32  0, i32 * %op40
  %op41 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  11, i32  0
  store i32  0, i32 * %op41
  %op42 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  11, i32  1
  store i32  0, i32 * %op42
  %op43 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  12, i32  0
  store i32  0, i32 * %op43
  %op44 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  12, i32  1
  store i32  0, i32 * %op44
  %op45 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  13, i32  0
  store i32  0, i32 * %op45
  %op46 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  13, i32  1
  store i32  0, i32 * %op46
  %op47 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  14, i32  0
  store i32  0, i32 * %op47
  %op48 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  14, i32  1
  store i32  0, i32 * %op48
  %op49 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  15, i32  0
  store i32  0, i32 * %op49
  %op50 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  15, i32  1
  store i32  0, i32 * %op50
  %op51 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  16, i32  0
  store i32  0, i32 * %op51
  %op52 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  16, i32  1
  store i32  0, i32 * %op52
  %op53 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  17, i32  0
  store i32  0, i32 * %op53
  %op54 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  17, i32  1
  store i32  0, i32 * %op54
  %op55 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  18, i32  0
  store i32  0, i32 * %op55
  %op56 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  18, i32  1
  store i32  0, i32 * %op56
  %op57 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  19, i32  0
  store i32  0, i32 * %op57
  %op58 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  19, i32  1
  store i32  0, i32 * %op58
  %op59 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  20, i32  0
  store i32  0, i32 * %op59
  %op60 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  20, i32  1
  store i32  0, i32 * %op60
  %op61 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  21, i32  0
  store i32  0, i32 * %op61
  %op62 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  21, i32  1
  store i32  0, i32 * %op62
  %op63 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  22, i32  0
  store i32  0, i32 * %op63
  %op64 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  22, i32  1
  store i32  0, i32 * %op64
  %op65 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  23, i32  0
  store i32  0, i32 * %op65
  %op66 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  23, i32  1
  store i32  0, i32 * %op66
  %op67 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  24, i32  0
  store i32  0, i32 * %op67
  %op68 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  24, i32  1
  store i32  0, i32 * %op68
  %op69 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  25, i32  0
  store i32  0, i32 * %op69
  %op70 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  25, i32  1
  store i32  0, i32 * %op70
  %op71 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  26, i32  0
  store i32  0, i32 * %op71
  %op72 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  26, i32  1
  store i32  0, i32 * %op72
  %op73 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  27, i32  0
  store i32  0, i32 * %op73
  %op74 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  27, i32  1
  store i32  0, i32 * %op74
  %op75 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  28, i32  0
  store i32  0, i32 * %op75
  %op76 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  28, i32  1
  store i32  0, i32 * %op76
  %op77 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  29, i32  0
  store i32  0, i32 * %op77
  %op78 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  29, i32  1
  store i32  0, i32 * %op78
  %op79 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  30, i32  0
  store i32  0, i32 * %op79
  %op80 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  30, i32  1
  store i32  0, i32 * %op80
  %op81 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  31, i32  0
  store i32  0, i32 * %op81
  %op82 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  31, i32  1
  store i32  0, i32 * %op82
  %op83 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  0
  store i32  %op18, i32 * %op83
  %op84 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0, i32  1
  store i32  8848, i32 * %op84
  br label %label85
label85:                                                ; preds = %label_entry, %label90
  %op86 = load i32 , i32 * %op0
  %op87 = icmp slt i32  %op86, 32
  %op88 = zext i1  %op87 to i32 
  %op89 = icmp ne i32  %op88, 0
  br i1  %op89, label %label90, label %label111
label90:                                                ; preds = %label85
  %op91 = load i32 , i32 * %op0
  %op92 = sub i32  %op91, 1
  %op93 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op92
  %op94 = getelementptr [2 x i32 ], [2 x i32 ]* %op93, i32  0, i32  1
  %op95 = load i32 , i32 * %op94
  %op96 = sub i32  %op95, 1
  %op97 = load i32 , i32 * %op0
  %op98 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op97
  %op99 = getelementptr [2 x i32 ], [2 x i32 ]* %op98, i32  0, i32  0
  store i32  %op96, i32 * %op99
  %op100 = load i32 , i32 * %op0
  %op101 = sub i32  %op100, 1
  %op102 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op101
  %op103 = getelementptr [2 x i32 ], [2 x i32 ]* %op102, i32  0, i32  0
  %op104 = load i32 , i32 * %op103
  %op105 = sub i32  %op104, 2
  %op106 = load i32 , i32 * %op0
  %op107 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  %op106
  %op108 = getelementptr [2 x i32 ], [2 x i32 ]* %op107, i32  0, i32  1
  store i32  %op105, i32 * %op108
  %op109 = load i32 , i32 * %op0
  %op110 = add i32  %op109, 1
  store i32  %op110, i32 * %op0
  br label %label85
label111:                                                ; preds = %label85
  %op112 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  0
  %op113 = getelementptr [2 x i32 ], [2 x i32 ]* %op112, i32  0, i32  0
  %op114 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  1
  %op115 = getelementptr [2 x i32 ], [2 x i32 ]* %op114, i32  0, i32  0
  %op116 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  2
  %op117 = getelementptr [2 x i32 ], [2 x i32 ]* %op116, i32  0, i32  0
  %op118 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  3
  %op119 = getelementptr [2 x i32 ], [2 x i32 ]* %op118, i32  0, i32  0
  %op120 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  4
  %op121 = getelementptr [2 x i32 ], [2 x i32 ]* %op120, i32  0, i32  0
  %op122 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  5
  %op123 = getelementptr [2 x i32 ], [2 x i32 ]* %op122, i32  0, i32  0
  %op124 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  6
  %op125 = getelementptr [2 x i32 ], [2 x i32 ]* %op124, i32  0, i32  0
  %op126 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  7
  %op127 = getelementptr [2 x i32 ], [2 x i32 ]* %op126, i32  0, i32  0
  %op128 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  8
  %op129 = getelementptr [2 x i32 ], [2 x i32 ]* %op128, i32  0, i32  0
  %op130 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  9
  %op131 = getelementptr [2 x i32 ], [2 x i32 ]* %op130, i32  0, i32  0
  %op132 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  10
  %op133 = getelementptr [2 x i32 ], [2 x i32 ]* %op132, i32  0, i32  0
  %op134 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  11
  %op135 = getelementptr [2 x i32 ], [2 x i32 ]* %op134, i32  0, i32  0
  %op136 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  12
  %op137 = getelementptr [2 x i32 ], [2 x i32 ]* %op136, i32  0, i32  0
  %op138 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  13
  %op139 = getelementptr [2 x i32 ], [2 x i32 ]* %op138, i32  0, i32  0
  %op140 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  14
  %op141 = getelementptr [2 x i32 ], [2 x i32 ]* %op140, i32  0, i32  0
  %op142 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  15
  %op143 = getelementptr [2 x i32 ], [2 x i32 ]* %op142, i32  0, i32  0
  %op144 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  16
  %op145 = getelementptr [2 x i32 ], [2 x i32 ]* %op144, i32  0, i32  0
  %op146 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  17
  %op147 = getelementptr [2 x i32 ], [2 x i32 ]* %op146, i32  0, i32  0
  %op148 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  18
  %op149 = getelementptr [2 x i32 ], [2 x i32 ]* %op148, i32  0, i32  0
  %op150 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  19
  %op151 = getelementptr [2 x i32 ], [2 x i32 ]* %op150, i32  0, i32  0
  %op152 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  20
  %op153 = getelementptr [2 x i32 ], [2 x i32 ]* %op152, i32  0, i32  0
  %op154 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  21
  %op155 = getelementptr [2 x i32 ], [2 x i32 ]* %op154, i32  0, i32  0
  %op156 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  22
  %op157 = getelementptr [2 x i32 ], [2 x i32 ]* %op156, i32  0, i32  0
  %op158 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  23
  %op159 = getelementptr [2 x i32 ], [2 x i32 ]* %op158, i32  0, i32  0
  %op160 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  24
  %op161 = getelementptr [2 x i32 ], [2 x i32 ]* %op160, i32  0, i32  0
  %op162 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  25
  %op163 = getelementptr [2 x i32 ], [2 x i32 ]* %op162, i32  0, i32  0
  %op164 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  26
  %op165 = getelementptr [2 x i32 ], [2 x i32 ]* %op164, i32  0, i32  0
  %op166 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  27
  %op167 = getelementptr [2 x i32 ], [2 x i32 ]* %op166, i32  0, i32  0
  %op168 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  28
  %op169 = getelementptr [2 x i32 ], [2 x i32 ]* %op168, i32  0, i32  0
  %op170 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  29
  %op171 = getelementptr [2 x i32 ], [2 x i32 ]* %op170, i32  0, i32  0
  %op172 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  30
  %op173 = getelementptr [2 x i32 ], [2 x i32 ]* %op172, i32  0, i32  0
  %op174 = getelementptr [32 x [2 x i32 ]], [32 x [2 x i32 ]]* %op1, i32  0, i32  31
  %op175 = getelementptr [2 x i32 ], [2 x i32 ]* %op174, i32  0, i32  0
  %op176 = call i32  @param32_arr(i32 * %op113, i32 * %op115, i32 * %op117, i32 * %op119, i32 * %op121, i32 * %op123, i32 * %op125, i32 * %op127, i32 * %op129, i32 * %op131, i32 * %op133, i32 * %op135, i32 * %op137, i32 * %op139, i32 * %op141, i32 * %op143, i32 * %op145, i32 * %op147, i32 * %op149, i32 * %op151, i32 * %op153, i32 * %op155, i32 * %op157, i32 * %op159, i32 * %op161, i32 * %op163, i32 * %op165, i32 * %op167, i32 * %op169, i32 * %op171, i32 * %op173, i32 * %op175)
  call void @putint(i32  %op176)
  call void @putch(i32  10)
  ret i32  0
}
