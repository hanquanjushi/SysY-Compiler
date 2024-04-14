; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/19_search.sy"

@INF = constant i32  1073741824
@a = global [30 x [30 x i32 ]] zeroinitializer
@step = global [4 x [2 x i32 ]] [[2 x i32 ] [i32  1, i32  0], [2 x i32 ] [i32  -1, i32  0], [2 x i32 ] [i32  0, i32  1], [2 x i32 ] [i32  0, i32  -1]]
@w = global i32  zeroinitializer
@h = global i32  zeroinitializer
@x_0 = global i32  zeroinitializer
@y_0 = global i32  zeroinitializer
@x_1 = global i32  zeroinitializer
@y_1 = global i32  zeroinitializer
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

define i32  @search(i32  %arg0, i32  %arg1, i32  %arg2) {
label_entry:
  %op3 = alloca i32 
  store i32  %arg0, i32 * %op3
  %op4 = alloca i32 
  store i32  %arg1, i32 * %op4
  %op5 = alloca i32 
  store i32  %arg2, i32 * %op5
  %op6 = load i32 , i32 * %op5
  %op7 = icmp sgt i32  %op6, 10
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label12
label10:                                                ; preds = %label_entry
  %op11 = load i32 , i32 * @INF
  ret i32  %op11
label12:                                                ; preds = %label_entry
  %op13 = alloca i32 
  %op14 = load i32 , i32 * @INF
  store i32  %op14, i32 * %op13
  %op15 = alloca i32 
  store i32  0, i32 * %op15
  br label %label16
label16:                                                ; preds = %label12, %label87, %label95, %label146
  %op17 = load i32 , i32 * %op15
  %op18 = icmp slt i32  %op17, 4
  %op19 = zext i1  %op18 to i32 
  %op20 = icmp ne i32  %op19, 0
  br i1  %op20, label %label21, label %label27
label21:                                                ; preds = %label16
  %op22 = alloca i32 
  store i32  0, i32 * %op22
  %op23 = alloca i32 
  %op24 = load i32 , i32 * %op4
  store i32  %op24, i32 * %op23
  %op25 = alloca i32 
  %op26 = load i32 , i32 * %op3
  store i32  %op26, i32 * %op25
  br label %label32
label27:                                                ; preds = %label16
  %op28 = load i32 , i32 * %op13
  %op29 = icmp sgt i32  %op28, 10
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label153, label %label155
label32:                                                ; preds = %label21, %label54
  %op33 = load i32 , i32 * %op25
  %op34 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @a, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op23
  %op36 = getelementptr [30 x i32 ], [30 x i32 ]* %op34, i32  0, i32  %op35
  %op37 = load i32 , i32 * %op36
  %op38 = icmp ne i32  %op37, 1
  %op39 = zext i1  %op38 to i32 
  %op40 = icmp ne i32  %op39, 0
  br i1  %op40, label %label41, label %label47
label41:                                                ; preds = %label32
  %op42 = load i32 , i32 * %op25
  %op43 = load i32 , i32 * @x_1
  %op44 = icmp eq i32  %op42, %op43
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label69, label %label54
label47:                                                ; preds = %label32, %label53
  %op48 = load i32 , i32 * %op25
  %op49 = load i32 , i32 * @x_1
  %op50 = icmp eq i32  %op48, %op49
  %op51 = zext i1  %op50 to i32 
  %op52 = icmp ne i32  %op51, 0
  br i1  %op52, label %label81, label %label76
label53:                                                ; preds = %label69
  br label %label47
label54:                                                ; preds = %label41, %label69
  %op55 = load i32 , i32 * %op25
  %op56 = load i32 , i32 * %op15
  %op57 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* @step, i32  0, i32  %op56
  %op58 = getelementptr [2 x i32 ], [2 x i32 ]* %op57, i32  0, i32  0
  %op59 = load i32 , i32 * %op58
  %op60 = add i32  %op55, %op59
  store i32  %op60, i32 * %op25
  %op61 = load i32 , i32 * %op23
  %op62 = load i32 , i32 * %op15
  %op63 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* @step, i32  0, i32  %op62
  %op64 = getelementptr [2 x i32 ], [2 x i32 ]* %op63, i32  0, i32  1
  %op65 = load i32 , i32 * %op64
  %op66 = add i32  %op61, %op65
  store i32  %op66, i32 * %op23
  %op67 = load i32 , i32 * %op22
  %op68 = add i32  %op67, 1
  store i32  %op68, i32 * %op22
  br label %label32
label69:                                                ; preds = %label41
  %op70 = load i32 , i32 * %op23
  %op71 = load i32 , i32 * @y_1
  %op72 = icmp eq i32  %op70, %op71
  %op73 = zext i1  %op72 to i32 
  %op74 = icmp ne i32  %op73, 0
  br i1  %op74, label %label53, label %label54
label75:                                                ; preds = %label81
  ret i32  1
label76:                                                ; preds = %label47, %label81
  %op77 = load i32 , i32 * %op22
  %op78 = icmp sle i32  %op77, 1
  %op79 = zext i1  %op78 to i32 
  %op80 = icmp ne i32  %op79, 0
  br i1  %op80, label %label87, label %label90
label81:                                                ; preds = %label47
  %op82 = load i32 , i32 * %op23
  %op83 = load i32 , i32 * @y_1
  %op84 = icmp eq i32  %op82, %op83
  %op85 = zext i1  %op84 to i32 
  %op86 = icmp ne i32  %op85, 0
  br i1  %op86, label %label75, label %label76
label87:                                                ; preds = %label76
  %op88 = load i32 , i32 * %op15
  %op89 = add i32  %op88, 1
  store i32  %op89, i32 * %op15
  br label %label16
label90:                                                ; preds = %label76
  %op91 = load i32 , i32 * %op25
  %op92 = icmp eq i32  %op91, 0
  %op93 = zext i1  %op92 to i32 
  %op94 = icmp ne i32  %op93, 0
  br i1  %op94, label %label95, label %label137
label95:                                                ; preds = %label90, %label137, %label132, %label125
  %op96 = load i32 , i32 * %op15
  %op97 = add i32  %op96, 1
  store i32  %op97, i32 * %op15
  br label %label16
label98:                                                ; preds = %label125
  %op99 = load i32 , i32 * %op25
  %op100 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @a, i32  0, i32  %op99
  %op101 = load i32 , i32 * %op23
  %op102 = getelementptr [30 x i32 ], [30 x i32 ]* %op100, i32  0, i32  %op101
  store i32  0, i32 * %op102
  %op103 = alloca i32 
  %op104 = load i32 , i32 * %op25
  %op105 = load i32 , i32 * %op15
  %op106 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* @step, i32  0, i32  %op105
  %op107 = getelementptr [2 x i32 ], [2 x i32 ]* %op106, i32  0, i32  0
  %op108 = load i32 , i32 * %op107
  %op109 = sub i32  %op104, %op108
  %op110 = load i32 , i32 * %op23
  %op111 = load i32 , i32 * %op15
  %op112 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* @step, i32  0, i32  %op111
  %op113 = getelementptr [2 x i32 ], [2 x i32 ]* %op112, i32  0, i32  1
  %op114 = load i32 , i32 * %op113
  %op115 = sub i32  %op110, %op114
  %op116 = load i32 , i32 * %op5
  %op117 = add i32  %op116, 1
  %op118 = call i32  @search(i32  %op109, i32  %op115, i32  %op117)
  %op119 = add i32  %op118, 1
  store i32  %op119, i32 * %op103
  %op120 = load i32 , i32 * %op103
  %op121 = load i32 , i32 * %op13
  %op122 = icmp slt i32  %op120, %op121
  %op123 = zext i1  %op122 to i32 
  %op124 = icmp ne i32  %op123, 0
  br i1  %op124, label %label144, label %label146
label125:                                                ; preds = %label132
  %op126 = load i32 , i32 * %op23
  %op127 = load i32 , i32 * @w
  %op128 = add i32  %op127, 1
  %op129 = icmp eq i32  %op126, %op128
  %op130 = zext i1  %op129 to i32 
  %op131 = icmp ne i32  %op130, 0
  br i1  %op131, label %label95, label %label98
label132:                                                ; preds = %label137
  %op133 = load i32 , i32 * %op23
  %op134 = icmp eq i32  %op133, 0
  %op135 = zext i1  %op134 to i32 
  %op136 = icmp ne i32  %op135, 0
  br i1  %op136, label %label95, label %label125
label137:                                                ; preds = %label90
  %op138 = load i32 , i32 * %op25
  %op139 = load i32 , i32 * @h
  %op140 = add i32  %op139, 1
  %op141 = icmp eq i32  %op138, %op140
  %op142 = zext i1  %op141 to i32 
  %op143 = icmp ne i32  %op142, 0
  br i1  %op143, label %label95, label %label132
label144:                                                ; preds = %label98
  %op145 = load i32 , i32 * %op103
  store i32  %op145, i32 * %op13
  br label %label146
label146:                                                ; preds = %label98, %label144
  %op147 = load i32 , i32 * %op25
  %op148 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @a, i32  0, i32  %op147
  %op149 = load i32 , i32 * %op23
  %op150 = getelementptr [30 x i32 ], [30 x i32 ]* %op148, i32  0, i32  %op149
  store i32  1, i32 * %op150
  %op151 = load i32 , i32 * %op15
  %op152 = add i32  %op151, 1
  store i32  %op152, i32 * %op15
  br label %label16
label153:                                                ; preds = %label27
  %op154 = load i32 , i32 * @INF
  ret i32  %op154
label155:                                                ; preds = %label27
  %op156 = load i32 , i32 * %op13
  ret i32  %op156
}
define i32  @main() {
label_entry:
  %op0 = call i32  @getint()
  store i32  %op0, i32 * @w
  %op1 = call i32  @getint()
  store i32  %op1, i32 * @h
  br label %label2
label2:                                                ; preds = %label_entry, %label94
  %op3 = load i32 , i32 * @w
  %op4 = icmp ne i32  %op3, 0
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label10
label7:                                                ; preds = %label2
  %op8 = alloca i32 
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  br label %label11
label10:                                                ; preds = %label2
  ret i32  0
label11:                                                ; preds = %label7, %label30
  %op12 = load i32 , i32 * %op9
  %op13 = icmp slt i32  %op12, 30
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label17
label16:                                                ; preds = %label11
  store i32  0, i32 * %op8
  br label %label18
label17:                                                ; preds = %label11
  store i32  1, i32 * %op9
  br label %label33
label18:                                                ; preds = %label16, %label23
  %op19 = load i32 , i32 * %op8
  %op20 = icmp slt i32  %op19, 30
  %op21 = zext i1  %op20 to i32 
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label23, label %label30
label23:                                                ; preds = %label18
  %op24 = load i32 , i32 * %op9
  %op25 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @a, i32  0, i32  %op24
  %op26 = load i32 , i32 * %op8
  %op27 = getelementptr [30 x i32 ], [30 x i32 ]* %op25, i32  0, i32  %op26
  store i32  1, i32 * %op27
  %op28 = load i32 , i32 * %op8
  %op29 = add i32  %op28, 1
  store i32  %op29, i32 * %op8
  br label %label18
label30:                                                ; preds = %label18
  %op31 = load i32 , i32 * %op9
  %op32 = add i32  %op31, 1
  store i32  %op32, i32 * %op9
  br label %label11
label33:                                                ; preds = %label17, %label69
  %op34 = load i32 , i32 * %op9
  %op35 = load i32 , i32 * @h
  %op36 = icmp sle i32  %op34, %op35
  %op37 = zext i1  %op36 to i32 
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label39, label %label40
label39:                                                ; preds = %label33
  store i32  1, i32 * %op8
  br label %label49
label40:                                                ; preds = %label33
  %op41 = alloca i32 
  %op42 = load i32 , i32 * @x_0
  %op43 = load i32 , i32 * @y_0
  %op44 = call i32  @search(i32  %op42, i32  %op43, i32  1)
  store i32  %op44, i32 * %op41
  %op45 = load i32 , i32 * %op41
  %op46 = icmp sle i32  %op45, 10
  %op47 = zext i1  %op46 to i32 
  %op48 = icmp ne i32  %op47, 0
  br i1  %op48, label %label91, label %label93
label49:                                                ; preds = %label39, %label84
  %op50 = load i32 , i32 * %op8
  %op51 = load i32 , i32 * @w
  %op52 = icmp sle i32  %op50, %op51
  %op53 = zext i1  %op52 to i32 
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label55, label %label69
label55:                                                ; preds = %label49
  %op56 = call i32  @getint()
  %op57 = load i32 , i32 * %op9
  %op58 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @a, i32  0, i32  %op57
  %op59 = load i32 , i32 * %op8
  %op60 = getelementptr [30 x i32 ], [30 x i32 ]* %op58, i32  0, i32  %op59
  store i32  %op56, i32 * %op60
  %op61 = load i32 , i32 * %op9
  %op62 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @a, i32  0, i32  %op61
  %op63 = load i32 , i32 * %op8
  %op64 = getelementptr [30 x i32 ], [30 x i32 ]* %op62, i32  0, i32  %op63
  %op65 = load i32 , i32 * %op64
  %op66 = icmp eq i32  %op65, 2
  %op67 = zext i1  %op66 to i32 
  %op68 = icmp ne i32  %op67, 0
  br i1  %op68, label %label72, label %label75
label69:                                                ; preds = %label49
  %op70 = load i32 , i32 * %op9
  %op71 = add i32  %op70, 1
  store i32  %op71, i32 * %op9
  br label %label33
label72:                                                ; preds = %label55
  %op73 = load i32 , i32 * %op9
  store i32  %op73, i32 * @x_0
  %op74 = load i32 , i32 * %op8
  store i32  %op74, i32 * @y_0
  br label %label84
label75:                                                ; preds = %label55
  %op76 = load i32 , i32 * %op9
  %op77 = getelementptr [30 x [30 x i32 ]], [30 x [30 x i32 ]]* @a, i32  0, i32  %op76
  %op78 = load i32 , i32 * %op8
  %op79 = getelementptr [30 x i32 ], [30 x i32 ]* %op77, i32  0, i32  %op78
  %op80 = load i32 , i32 * %op79
  %op81 = icmp eq i32  %op80, 3
  %op82 = zext i1  %op81 to i32 
  %op83 = icmp ne i32  %op82, 0
  br i1  %op83, label %label87, label %label90
label84:                                                ; preds = %label72, %label90
  %op85 = load i32 , i32 * %op8
  %op86 = add i32  %op85, 1
  store i32  %op86, i32 * %op8
  br label %label49
label87:                                                ; preds = %label75
  %op88 = load i32 , i32 * %op9
  store i32  %op88, i32 * @x_1
  %op89 = load i32 , i32 * %op8
  store i32  %op89, i32 * @y_1
  br label %label90
label90:                                                ; preds = %label75, %label87
  br label %label84
label91:                                                ; preds = %label40
  %op92 = load i32 , i32 * %op41
  call void @putint(i32  %op92)
  call void @putch(i32  10)
  br label %label94
label93:                                                ; preds = %label40
  call void @putint(i32  -1)
  call void @putch(i32  10)
  br label %label94
label94:                                                ; preds = %label91, %label93
  %op95 = call i32  @getint()
  store i32  %op95, i32 * @w
  %op96 = call i32  @getint()
  store i32  %op96, i32 * @h
  br label %label2
}
