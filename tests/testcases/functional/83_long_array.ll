; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/83_long_array.sy"

@N = constant i32  10000
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

define i32  @long_array(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = alloca [10000 x i32 ]
  %op3 = alloca [10000 x i32 ]
  %op4 = alloca [10000 x i32 ]
  %op5 = alloca i32 
  store i32  0, i32 * %op5
  br label %label6
label6:                                                ; preds = %label_entry, %label12
  %op7 = load i32 , i32 * %op5
  %op8 = load i32 , i32 * @N
  %op9 = icmp slt i32  %op7, %op8
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label21
label12:                                                ; preds = %label6
  %op13 = load i32 , i32 * %op5
  %op14 = load i32 , i32 * %op5
  %op15 = mul i32  %op13, %op14
  %op16 = srem i32  %op15, 10
  %op17 = load i32 , i32 * %op5
  %op18 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op17
  store i32  %op16, i32 * %op18
  %op19 = load i32 , i32 * %op5
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op5
  br label %label6
label21:                                                ; preds = %label6
  store i32  0, i32 * %op5
  br label %label22
label22:                                                ; preds = %label21, %label28
  %op23 = load i32 , i32 * %op5
  %op24 = load i32 , i32 * @N
  %op25 = icmp slt i32  %op23, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label41
label28:                                                ; preds = %label22
  %op29 = load i32 , i32 * %op5
  %op30 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op29
  %op31 = load i32 , i32 * %op30
  %op32 = load i32 , i32 * %op5
  %op33 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op32
  %op34 = load i32 , i32 * %op33
  %op35 = mul i32  %op31, %op34
  %op36 = srem i32  %op35, 10
  %op37 = load i32 , i32 * %op5
  %op38 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op37
  store i32  %op36, i32 * %op38
  %op39 = load i32 , i32 * %op5
  %op40 = add i32  %op39, 1
  store i32  %op40, i32 * %op5
  br label %label22
label41:                                                ; preds = %label22
  store i32  0, i32 * %op5
  br label %label42
label42:                                                ; preds = %label41, %label48
  %op43 = load i32 , i32 * %op5
  %op44 = load i32 , i32 * @N
  %op45 = icmp slt i32  %op43, %op44
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label48, label %label65
label48:                                                ; preds = %label42
  %op49 = load i32 , i32 * %op5
  %op50 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op49
  %op51 = load i32 , i32 * %op50
  %op52 = load i32 , i32 * %op5
  %op53 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op52
  %op54 = load i32 , i32 * %op53
  %op55 = mul i32  %op51, %op54
  %op56 = srem i32  %op55, 100
  %op57 = load i32 , i32 * %op5
  %op58 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op57
  %op59 = load i32 , i32 * %op58
  %op60 = add i32  %op56, %op59
  %op61 = load i32 , i32 * %op5
  %op62 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op61
  store i32  %op60, i32 * %op62
  %op63 = load i32 , i32 * %op5
  %op64 = add i32  %op63, 1
  store i32  %op64, i32 * %op5
  br label %label42
label65:                                                ; preds = %label42
  %op66 = alloca i32 
  store i32  0, i32 * %op66
  store i32  0, i32 * %op5
  br label %label67
label67:                                                ; preds = %label65, %label93
  %op68 = load i32 , i32 * %op5
  %op69 = load i32 , i32 * @N
  %op70 = icmp slt i32  %op68, %op69
  %op71 = zext i1  %op70 to i32 
  %op72 = icmp ne i32  %op71, 0
  br i1  %op72, label %label73, label %label78
label73:                                                ; preds = %label67
  %op74 = load i32 , i32 * %op5
  %op75 = icmp slt i32  %op74, 10
  %op76 = zext i1  %op75 to i32 
  %op77 = icmp ne i32  %op76, 0
  br i1  %op77, label %label80, label %label88
label78:                                                ; preds = %label67
  %op79 = load i32 , i32 * %op66
  ret i32  %op79
label80:                                                ; preds = %label73
  %op81 = load i32 , i32 * %op66
  %op82 = load i32 , i32 * %op5
  %op83 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op82
  %op84 = load i32 , i32 * %op83
  %op85 = add i32  %op81, %op84
  %op86 = srem i32  %op85, 1333
  store i32  %op86, i32 * %op66
  %op87 = load i32 , i32 * %op66
  call void @putint(i32  %op87)
  br label %label93
label88:                                                ; preds = %label73
  %op89 = load i32 , i32 * %op5
  %op90 = icmp slt i32  %op89, 20
  %op91 = zext i1  %op90 to i32 
  %op92 = icmp ne i32  %op91, 0
  br i1  %op92, label %label96, label %label100
label93:                                                ; preds = %label80, %label105
  %op94 = load i32 , i32 * %op5
  %op95 = add i32  %op94, 1
  store i32  %op95, i32 * %op5
  br label %label67
label96:                                                ; preds = %label88
  %op97 = alloca i32 
  %op98 = load i32 , i32 * @N
  %op99 = sdiv i32  %op98, 2
  store i32  %op99, i32 * %op97
  br label %label106
label100:                                                ; preds = %label88
  %op101 = load i32 , i32 * %op5
  %op102 = icmp slt i32  %op101, 30
  %op103 = zext i1  %op102 to i32 
  %op104 = icmp ne i32  %op103, 0
  br i1  %op104, label %label126, label %label130
label105:                                                ; preds = %label124, %label139
  br label %label93
label106:                                                ; preds = %label96, %label112
  %op107 = load i32 , i32 * %op97
  %op108 = load i32 , i32 * @N
  %op109 = icmp slt i32  %op107, %op108
  %op110 = zext i1  %op109 to i32 
  %op111 = icmp ne i32  %op110, 0
  br i1  %op111, label %label112, label %label124
label112:                                                ; preds = %label106
  %op113 = load i32 , i32 * %op66
  %op114 = load i32 , i32 * %op5
  %op115 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op114
  %op116 = load i32 , i32 * %op115
  %op117 = add i32  %op113, %op116
  %op118 = load i32 , i32 * %op97
  %op119 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op118
  %op120 = load i32 , i32 * %op119
  %op121 = sub i32  %op117, %op120
  store i32  %op121, i32 * %op66
  %op122 = load i32 , i32 * %op97
  %op123 = add i32  %op122, 1
  store i32  %op123, i32 * %op97
  br label %label106
label124:                                                ; preds = %label106
  %op125 = load i32 , i32 * %op66
  call void @putint(i32  %op125)
  br label %label105
label126:                                                ; preds = %label100
  %op127 = alloca i32 
  %op128 = load i32 , i32 * @N
  %op129 = sdiv i32  %op128, 2
  store i32  %op129, i32 * %op127
  br label %label140
label130:                                                ; preds = %label100
  %op131 = load i32 , i32 * %op66
  %op132 = load i32 , i32 * %op5
  %op133 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op132
  %op134 = load i32 , i32 * %op133
  %op135 = load i32 , i32 * %op1
  %op136 = mul i32  %op134, %op135
  %op137 = add i32  %op131, %op136
  %op138 = srem i32  %op137, 99988
  store i32  %op138, i32 * %op66
  br label %label139
label139:                                                ; preds = %label151, %label130
  br label %label105
label140:                                                ; preds = %label126, %label178
  %op141 = load i32 , i32 * %op127
  %op142 = load i32 , i32 * @N
  %op143 = icmp slt i32  %op141, %op142
  %op144 = zext i1  %op143 to i32 
  %op145 = icmp ne i32  %op144, 0
  br i1  %op145, label %label146, label %label151
label146:                                                ; preds = %label140
  %op147 = load i32 , i32 * %op127
  %op148 = icmp sgt i32  %op147, 2233
  %op149 = zext i1  %op148 to i32 
  %op150 = icmp ne i32  %op149, 0
  br i1  %op150, label %label153, label %label165
label151:                                                ; preds = %label140
  %op152 = load i32 , i32 * %op66
  call void @putint(i32  %op152)
  br label %label139
label153:                                                ; preds = %label146
  %op154 = load i32 , i32 * %op66
  %op155 = load i32 , i32 * %op5
  %op156 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op3, i32  0, i32  %op155
  %op157 = load i32 , i32 * %op156
  %op158 = add i32  %op154, %op157
  %op159 = load i32 , i32 * %op127
  %op160 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op159
  %op161 = load i32 , i32 * %op160
  %op162 = sub i32  %op158, %op161
  store i32  %op162, i32 * %op66
  %op163 = load i32 , i32 * %op127
  %op164 = add i32  %op163, 1
  store i32  %op164, i32 * %op127
  br label %label178
label165:                                                ; preds = %label146
  %op166 = load i32 , i32 * %op66
  %op167 = load i32 , i32 * %op5
  %op168 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op2, i32  0, i32  %op167
  %op169 = load i32 , i32 * %op168
  %op170 = add i32  %op166, %op169
  %op171 = load i32 , i32 * %op127
  %op172 = getelementptr [10000 x i32 ], [10000 x i32 ]* %op4, i32  0, i32  %op171
  %op173 = load i32 , i32 * %op172
  %op174 = add i32  %op170, %op173
  %op175 = srem i32  %op174, 13333
  store i32  %op175, i32 * %op66
  %op176 = load i32 , i32 * %op127
  %op177 = add i32  %op176, 2
  store i32  %op177, i32 * %op127
  br label %label178
label178:                                                ; preds = %label153, %label165
  br label %label140
}
define i32  @main() {
label_entry:
  %op0 = call i32  @long_array(i32  9)
  ret i32  %op0
}
