; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/61_sort_test7.sy"

@buf = global [2 x [100 x i32 ]] zeroinitializer
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

define void @merge_sort(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = add i32  %op4, 1
  %op6 = load i32 , i32 * %op3
  %op7 = icmp sge i32  %op5, %op6
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label11
label10:                                                ; preds = %label_entry
  ret void
label11:                                                ; preds = %label_entry
  %op12 = alloca i32 
  %op13 = load i32 , i32 * %op2
  %op14 = load i32 , i32 * %op3
  %op15 = add i32  %op13, %op14
  %op16 = sdiv i32  %op15, 2
  store i32  %op16, i32 * %op12
  %op17 = load i32 , i32 * %op2
  %op18 = load i32 , i32 * %op12
  call void @merge_sort(i32  %op17, i32  %op18)
  %op19 = load i32 , i32 * %op12
  %op20 = load i32 , i32 * %op3
  call void @merge_sort(i32  %op19, i32  %op20)
  %op21 = alloca i32 
  %op22 = load i32 , i32 * %op2
  store i32  %op22, i32 * %op21
  %op23 = alloca i32 
  %op24 = load i32 , i32 * %op12
  store i32  %op24, i32 * %op23
  %op25 = alloca i32 
  %op26 = load i32 , i32 * %op2
  store i32  %op26, i32 * %op25
  br label %label27
label27:                                                ; preds = %label11, %label72
  %op28 = load i32 , i32 * %op25
  %op29 = load i32 , i32 * %op12
  %op30 = icmp slt i32  %op28, %op29
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label46, label %label45
label33:                                                ; preds = %label46
  %op34 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op35 = load i32 , i32 * %op25
  %op36 = getelementptr [100 x i32 ], [100 x i32 ]* %op34, i32  0, i32  %op35
  %op37 = load i32 , i32 * %op36
  %op38 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op39 = load i32 , i32 * %op23
  %op40 = getelementptr [100 x i32 ], [100 x i32 ]* %op38, i32  0, i32  %op39
  %op41 = load i32 , i32 * %op40
  %op42 = icmp slt i32  %op37, %op41
  %op43 = zext i1  %op42 to i32 
  %op44 = icmp ne i32  %op43, 0
  br i1  %op44, label %label52, label %label62
label45:                                                ; preds = %label27, %label46
  br label %label75
label46:                                                ; preds = %label27
  %op47 = load i32 , i32 * %op23
  %op48 = load i32 , i32 * %op3
  %op49 = icmp slt i32  %op47, %op48
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 0
  br i1  %op51, label %label33, label %label45
label52:                                                ; preds = %label33
  %op53 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op54 = load i32 , i32 * %op25
  %op55 = getelementptr [100 x i32 ], [100 x i32 ]* %op53, i32  0, i32  %op54
  %op56 = load i32 , i32 * %op55
  %op57 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
  %op58 = load i32 , i32 * %op21
  %op59 = getelementptr [100 x i32 ], [100 x i32 ]* %op57, i32  0, i32  %op58
  store i32  %op56, i32 * %op59
  %op60 = load i32 , i32 * %op25
  %op61 = add i32  %op60, 1
  store i32  %op61, i32 * %op25
  br label %label72
label62:                                                ; preds = %label33
  %op63 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op64 = load i32 , i32 * %op23
  %op65 = getelementptr [100 x i32 ], [100 x i32 ]* %op63, i32  0, i32  %op64
  %op66 = load i32 , i32 * %op65
  %op67 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
  %op68 = load i32 , i32 * %op21
  %op69 = getelementptr [100 x i32 ], [100 x i32 ]* %op67, i32  0, i32  %op68
  store i32  %op66, i32 * %op69
  %op70 = load i32 , i32 * %op23
  %op71 = add i32  %op70, 1
  store i32  %op71, i32 * %op23
  br label %label72
label72:                                                ; preds = %label52, %label62
  %op73 = load i32 , i32 * %op21
  %op74 = add i32  %op73, 1
  store i32  %op74, i32 * %op21
  br label %label27
label75:                                                ; preds = %label45, %label81
  %op76 = load i32 , i32 * %op25
  %op77 = load i32 , i32 * %op12
  %op78 = icmp slt i32  %op76, %op77
  %op79 = zext i1  %op78 to i32 
  %op80 = icmp ne i32  %op79, 0
  br i1  %op80, label %label81, label %label93
label81:                                                ; preds = %label75
  %op82 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op83 = load i32 , i32 * %op25
  %op84 = getelementptr [100 x i32 ], [100 x i32 ]* %op82, i32  0, i32  %op83
  %op85 = load i32 , i32 * %op84
  %op86 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
  %op87 = load i32 , i32 * %op21
  %op88 = getelementptr [100 x i32 ], [100 x i32 ]* %op86, i32  0, i32  %op87
  store i32  %op85, i32 * %op88
  %op89 = load i32 , i32 * %op25
  %op90 = add i32  %op89, 1
  store i32  %op90, i32 * %op25
  %op91 = load i32 , i32 * %op21
  %op92 = add i32  %op91, 1
  store i32  %op92, i32 * %op21
  br label %label75
label93:                                                ; preds = %label75
  br label %label94
label94:                                                ; preds = %label93, %label100
  %op95 = load i32 , i32 * %op23
  %op96 = load i32 , i32 * %op3
  %op97 = icmp slt i32  %op95, %op96
  %op98 = zext i1  %op97 to i32 
  %op99 = icmp ne i32  %op98, 0
  br i1  %op99, label %label100, label %label112
label100:                                                ; preds = %label94
  %op101 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op102 = load i32 , i32 * %op23
  %op103 = getelementptr [100 x i32 ], [100 x i32 ]* %op101, i32  0, i32  %op102
  %op104 = load i32 , i32 * %op103
  %op105 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
  %op106 = load i32 , i32 * %op21
  %op107 = getelementptr [100 x i32 ], [100 x i32 ]* %op105, i32  0, i32  %op106
  store i32  %op104, i32 * %op107
  %op108 = load i32 , i32 * %op23
  %op109 = add i32  %op108, 1
  store i32  %op109, i32 * %op23
  %op110 = load i32 , i32 * %op21
  %op111 = add i32  %op110, 1
  store i32  %op111, i32 * %op21
  br label %label94
label112:                                                ; preds = %label94
  br label %label113
label113:                                                ; preds = %label112, %label119
  %op114 = load i32 , i32 * %op2
  %op115 = load i32 , i32 * %op3
  %op116 = icmp slt i32  %op114, %op115
  %op117 = zext i1  %op116 to i32 
  %op118 = icmp ne i32  %op117, 0
  br i1  %op118, label %label119, label %label129
label119:                                                ; preds = %label113
  %op120 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  1
  %op121 = load i32 , i32 * %op2
  %op122 = getelementptr [100 x i32 ], [100 x i32 ]* %op120, i32  0, i32  %op121
  %op123 = load i32 , i32 * %op122
  %op124 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op125 = load i32 , i32 * %op2
  %op126 = getelementptr [100 x i32 ], [100 x i32 ]* %op124, i32  0, i32  %op125
  store i32  %op123, i32 * %op126
  %op127 = load i32 , i32 * %op2
  %op128 = add i32  %op127, 1
  store i32  %op128, i32 * %op2
  br label %label113
label129:                                                ; preds = %label113
  ret void
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op2 = getelementptr [100 x i32 ], [100 x i32 ]* %op1, i32  0, i32  0
  %op3 = call i32  @getarray(i32 * %op2)
  store i32  %op3, i32 * %op0
  %op4 = load i32 , i32 * %op0
  call void @merge_sort(i32  0, i32  %op4)
  %op5 = load i32 , i32 * %op0
  %op6 = getelementptr [2 x [100 x i32 ]], [2 x [100 x i32 ]]* @buf, i32  0, i32  0
  %op7 = getelementptr [100 x i32 ], [100 x i32 ]* %op6, i32  0, i32  0
  call void @putarray(i32  %op5, i32 * %op7)
  ret i32  0
}
