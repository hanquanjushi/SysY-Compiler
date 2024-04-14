; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/94_nested_loops.sy"

@arr1 = global [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]] zeroinitializer
@arr2 = global [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]] zeroinitializer
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

define void @loop1(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = alloca i32 
  %op7 = alloca i32 
  %op8 = alloca i32 
  %op9 = alloca i32 
  %op10 = alloca i32 
  store i32  0, i32 * %op10
  br label %label11
label11:                                                ; preds = %label_entry, %label31
  %op12 = load i32 , i32 * %op10
  %op13 = load i32 , i32 * %op2
  %op14 = icmp slt i32  %op12, %op13
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label19, label %label18
label17:                                                ; preds = %label19
  store i32  0, i32 * %op9
  br label %label25
label18:                                                ; preds = %label11, %label19
  ret void
label19:                                                ; preds = %label11
  %op20 = load i32 , i32 * %op10
  %op21 = load i32 , i32 * %op3
  %op22 = icmp slt i32  %op20, %op21
  %op23 = zext i1  %op22 to i32 
  %op24 = icmp ne i32  %op23, 0
  br i1  %op24, label %label17, label %label18
label25:                                                ; preds = %label17, %label40
  %op26 = load i32 , i32 * %op9
  %op27 = icmp slt i32  %op26, 2
  %op28 = zext i1  %op27 to i32 
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label30, label %label31
label30:                                                ; preds = %label25
  store i32  0, i32 * %op8
  br label %label34
label31:                                                ; preds = %label25
  %op32 = load i32 , i32 * %op10
  %op33 = add i32  %op32, 1
  store i32  %op33, i32 * %op10
  br label %label11
label34:                                                ; preds = %label30, %label49
  %op35 = load i32 , i32 * %op8
  %op36 = icmp slt i32  %op35, 3
  %op37 = zext i1  %op36 to i32 
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label39, label %label40
label39:                                                ; preds = %label34
  store i32  0, i32 * %op7
  br label %label43
label40:                                                ; preds = %label34
  %op41 = load i32 , i32 * %op9
  %op42 = add i32  %op41, 1
  store i32  %op42, i32 * %op9
  br label %label25
label43:                                                ; preds = %label39, %label58
  %op44 = load i32 , i32 * %op7
  %op45 = icmp slt i32  %op44, 4
  %op46 = zext i1  %op45 to i32 
  %op47 = icmp ne i32  %op46, 0
  br i1  %op47, label %label48, label %label49
label48:                                                ; preds = %label43
  store i32  0, i32 * %op6
  br label %label52
label49:                                                ; preds = %label43
  %op50 = load i32 , i32 * %op8
  %op51 = add i32  %op50, 1
  store i32  %op51, i32 * %op8
  br label %label34
label52:                                                ; preds = %label48, %label67
  %op53 = load i32 , i32 * %op6
  %op54 = icmp slt i32  %op53, 5
  %op55 = zext i1  %op54 to i32 
  %op56 = icmp ne i32  %op55, 0
  br i1  %op56, label %label57, label %label58
label57:                                                ; preds = %label52
  store i32  0, i32 * %op5
  br label %label61
label58:                                                ; preds = %label52
  %op59 = load i32 , i32 * %op7
  %op60 = add i32  %op59, 1
  store i32  %op60, i32 * %op7
  br label %label43
label61:                                                ; preds = %label57, %label109
  %op62 = load i32 , i32 * %op5
  %op63 = icmp slt i32  %op62, 6
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label66, label %label67
label66:                                                ; preds = %label61
  store i32  0, i32 * %op4
  br label %label70
label67:                                                ; preds = %label61
  %op68 = load i32 , i32 * %op6
  %op69 = add i32  %op68, 1
  store i32  %op69, i32 * %op6
  br label %label52
label70:                                                ; preds = %label66, %label75
  %op71 = load i32 , i32 * %op4
  %op72 = icmp slt i32  %op71, 2
  %op73 = zext i1  %op72 to i32 
  %op74 = icmp ne i32  %op73, 0
  br i1  %op74, label %label75, label %label109
label75:                                                ; preds = %label70
  %op76 = load i32 , i32 * %op10
  %op77 = load i32 , i32 * %op9
  %op78 = add i32  %op76, %op77
  %op79 = load i32 , i32 * %op8
  %op80 = add i32  %op78, %op79
  %op81 = load i32 , i32 * %op7
  %op82 = add i32  %op80, %op81
  %op83 = load i32 , i32 * %op6
  %op84 = add i32  %op82, %op83
  %op85 = load i32 , i32 * %op5
  %op86 = add i32  %op84, %op85
  %op87 = load i32 , i32 * %op4
  %op88 = add i32  %op86, %op87
  %op89 = load i32 , i32 * %op2
  %op90 = add i32  %op88, %op89
  %op91 = load i32 , i32 * %op3
  %op92 = add i32  %op90, %op91
  %op93 = load i32 , i32 * %op10
  %op94 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]]* @arr1, i32  0, i32  %op93
  %op95 = load i32 , i32 * %op9
  %op96 = getelementptr [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]* %op94, i32  0, i32  %op95
  %op97 = load i32 , i32 * %op8
  %op98 = getelementptr [3 x [4 x [5 x [6 x [2 x i32 ]]]]], [3 x [4 x [5 x [6 x [2 x i32 ]]]]]* %op96, i32  0, i32  %op97
  %op99 = load i32 , i32 * %op7
  %op100 = getelementptr [4 x [5 x [6 x [2 x i32 ]]]], [4 x [5 x [6 x [2 x i32 ]]]]* %op98, i32  0, i32  %op99
  %op101 = load i32 , i32 * %op6
  %op102 = getelementptr [5 x [6 x [2 x i32 ]]], [5 x [6 x [2 x i32 ]]]* %op100, i32  0, i32  %op101
  %op103 = load i32 , i32 * %op5
  %op104 = getelementptr [6 x [2 x i32 ]], [6 x [2 x i32 ]]* %op102, i32  0, i32  %op103
  %op105 = load i32 , i32 * %op4
  %op106 = getelementptr [2 x i32 ], [2 x i32 ]* %op104, i32  0, i32  %op105
  store i32  %op92, i32 * %op106
  %op107 = load i32 , i32 * %op4
  %op108 = add i32  %op107, 1
  store i32  %op108, i32 * %op4
  br label %label70
label109:                                                ; preds = %label70
  %op110 = load i32 , i32 * %op5
  %op111 = add i32  %op110, 1
  store i32  %op111, i32 * %op5
  br label %label61
}
define void @loop2() {
label_entry:
  %op0 = alloca i32 
  %op1 = alloca i32 
  %op2 = alloca i32 
  %op3 = alloca i32 
  %op4 = alloca i32 
  %op5 = alloca i32 
  %op6 = alloca i32 
  store i32  0, i32 * %op6
  br label %label7
label7:                                                ; preds = %label_entry, %label20
  %op8 = load i32 , i32 * %op6
  %op9 = icmp slt i32  %op8, 10
  %op10 = zext i1  %op9 to i32 
  %op11 = icmp ne i32  %op10, 0
  br i1  %op11, label %label12, label %label13
label12:                                                ; preds = %label7
  store i32  0, i32 * %op5
  br label %label14
label13:                                                ; preds = %label7
  ret void
label14:                                                ; preds = %label12, %label29
  %op15 = load i32 , i32 * %op5
  %op16 = icmp slt i32  %op15, 2
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label19, label %label20
label19:                                                ; preds = %label14
  store i32  0, i32 * %op4
  br label %label23
label20:                                                ; preds = %label14
  %op21 = load i32 , i32 * %op6
  %op22 = add i32  %op21, 1
  store i32  %op22, i32 * %op6
  br label %label7
label23:                                                ; preds = %label19, %label38
  %op24 = load i32 , i32 * %op4
  %op25 = icmp slt i32  %op24, 3
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label28, label %label29
label28:                                                ; preds = %label23
  store i32  0, i32 * %op3
  br label %label32
label29:                                                ; preds = %label23
  %op30 = load i32 , i32 * %op5
  %op31 = add i32  %op30, 1
  store i32  %op31, i32 * %op5
  br label %label14
label32:                                                ; preds = %label28, %label47
  %op33 = load i32 , i32 * %op3
  %op34 = icmp slt i32  %op33, 2
  %op35 = zext i1  %op34 to i32 
  %op36 = icmp ne i32  %op35, 0
  br i1  %op36, label %label37, label %label38
label37:                                                ; preds = %label32
  store i32  0, i32 * %op2
  br label %label41
label38:                                                ; preds = %label32
  %op39 = load i32 , i32 * %op4
  %op40 = add i32  %op39, 1
  store i32  %op40, i32 * %op4
  br label %label23
label41:                                                ; preds = %label37, %label56
  %op42 = load i32 , i32 * %op2
  %op43 = icmp slt i32  %op42, 4
  %op44 = zext i1  %op43 to i32 
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label46, label %label47
label46:                                                ; preds = %label41
  store i32  0, i32 * %op1
  br label %label50
label47:                                                ; preds = %label41
  %op48 = load i32 , i32 * %op3
  %op49 = add i32  %op48, 1
  store i32  %op49, i32 * %op3
  br label %label32
label50:                                                ; preds = %label46, %label88
  %op51 = load i32 , i32 * %op1
  %op52 = icmp slt i32  %op51, 8
  %op53 = zext i1  %op52 to i32 
  %op54 = icmp ne i32  %op53, 0
  br i1  %op54, label %label55, label %label56
label55:                                                ; preds = %label50
  store i32  0, i32 * %op0
  br label %label59
label56:                                                ; preds = %label50
  %op57 = load i32 , i32 * %op2
  %op58 = add i32  %op57, 1
  store i32  %op58, i32 * %op2
  br label %label41
label59:                                                ; preds = %label55, %label64
  %op60 = load i32 , i32 * %op0
  %op61 = icmp slt i32  %op60, 7
  %op62 = zext i1  %op61 to i32 
  %op63 = icmp ne i32  %op62, 0
  br i1  %op63, label %label64, label %label88
label64:                                                ; preds = %label59
  %op65 = load i32 , i32 * %op6
  %op66 = load i32 , i32 * %op5
  %op67 = add i32  %op65, %op66
  %op68 = load i32 , i32 * %op3
  %op69 = add i32  %op67, %op68
  %op70 = load i32 , i32 * %op0
  %op71 = add i32  %op69, %op70
  %op72 = load i32 , i32 * %op6
  %op73 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]]* @arr2, i32  0, i32  %op72
  %op74 = load i32 , i32 * %op5
  %op75 = getelementptr [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]* %op73, i32  0, i32  %op74
  %op76 = load i32 , i32 * %op4
  %op77 = getelementptr [3 x [2 x [4 x [8 x [7 x i32 ]]]]], [3 x [2 x [4 x [8 x [7 x i32 ]]]]]* %op75, i32  0, i32  %op76
  %op78 = load i32 , i32 * %op3
  %op79 = getelementptr [2 x [4 x [8 x [7 x i32 ]]]], [2 x [4 x [8 x [7 x i32 ]]]]* %op77, i32  0, i32  %op78
  %op80 = load i32 , i32 * %op2
  %op81 = getelementptr [4 x [8 x [7 x i32 ]]], [4 x [8 x [7 x i32 ]]]* %op79, i32  0, i32  %op80
  %op82 = load i32 , i32 * %op1
  %op83 = getelementptr [8 x [7 x i32 ]], [8 x [7 x i32 ]]* %op81, i32  0, i32  %op82
  %op84 = load i32 , i32 * %op0
  %op85 = getelementptr [7 x i32 ], [7 x i32 ]* %op83, i32  0, i32  %op84
  store i32  %op71, i32 * %op85
  %op86 = load i32 , i32 * %op0
  %op87 = add i32  %op86, 1
  store i32  %op87, i32 * %op0
  br label %label59
label88:                                                ; preds = %label59
  %op89 = load i32 , i32 * %op1
  %op90 = add i32  %op89, 1
  store i32  %op90, i32 * %op1
  br label %label50
}
define i32  @loop3(i32  %arg0, i32  %arg1, i32  %arg2, i32  %arg3, i32  %arg4, i32  %arg5, i32  %arg6) {
label_entry:
  %op7 = alloca i32 
  store i32  %arg0, i32 * %op7
  %op8 = alloca i32 
  store i32  %arg1, i32 * %op8
  %op9 = alloca i32 
  store i32  %arg2, i32 * %op9
  %op10 = alloca i32 
  store i32  %arg3, i32 * %op10
  %op11 = alloca i32 
  store i32  %arg4, i32 * %op11
  %op12 = alloca i32 
  store i32  %arg5, i32 * %op12
  %op13 = alloca i32 
  store i32  %arg6, i32 * %op13
  %op14 = alloca i32 
  %op15 = alloca i32 
  %op16 = alloca i32 
  %op17 = alloca i32 
  %op18 = alloca i32 
  %op19 = alloca i32 
  %op20 = alloca i32 
  %op21 = alloca i32 
  store i32  0, i32 * %op21
  store i32  0, i32 * %op20
  br label %label22
label22:                                                ; preds = %label_entry, %label168
  %op23 = load i32 , i32 * %op20
  %op24 = icmp slt i32  %op23, 10
  %op25 = zext i1  %op24 to i32 
  %op26 = icmp ne i32  %op25, 0
  br i1  %op26, label %label27, label %label28
label27:                                                ; preds = %label22
  store i32  0, i32 * %op19
  br label %label30
label28:                                                ; preds = %label22, %label167
  %op29 = load i32 , i32 * %op21
  ret i32  %op29
label30:                                                ; preds = %label27, %label166
  %op31 = load i32 , i32 * %op19
  %op32 = icmp slt i32  %op31, 100
  %op33 = zext i1  %op32 to i32 
  %op34 = icmp ne i32  %op33, 0
  br i1  %op34, label %label35, label %label36
label35:                                                ; preds = %label30
  store i32  0, i32 * %op18
  br label %label44
label36:                                                ; preds = %label30, %label165
  %op37 = load i32 , i32 * %op20
  %op38 = add i32  %op37, 1
  store i32  %op38, i32 * %op20
  %op39 = load i32 , i32 * %op20
  %op40 = load i32 , i32 * %op7
  %op41 = icmp sge i32  %op39, %op40
  %op42 = zext i1  %op41 to i32 
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label167, label %label168
label44:                                                ; preds = %label35, %label164
  %op45 = load i32 , i32 * %op18
  %op46 = icmp slt i32  %op45, 1000
  %op47 = zext i1  %op46 to i32 
  %op48 = icmp ne i32  %op47, 0
  br i1  %op48, label %label49, label %label50
label49:                                                ; preds = %label44
  store i32  0, i32 * %op17
  br label %label58
label50:                                                ; preds = %label44, %label163
  %op51 = load i32 , i32 * %op19
  %op52 = add i32  %op51, 1
  store i32  %op52, i32 * %op19
  %op53 = load i32 , i32 * %op19
  %op54 = load i32 , i32 * %op8
  %op55 = icmp sge i32  %op53, %op54
  %op56 = zext i1  %op55 to i32 
  %op57 = icmp ne i32  %op56, 0
  br i1  %op57, label %label165, label %label166
label58:                                                ; preds = %label49, %label162
  %op59 = load i32 , i32 * %op17
  %op60 = icmp slt i32  %op59, 10000
  %op61 = zext i1  %op60 to i32 
  %op62 = icmp ne i32  %op61, 0
  br i1  %op62, label %label63, label %label64
label63:                                                ; preds = %label58
  store i32  0, i32 * %op16
  br label %label72
label64:                                                ; preds = %label58, %label161
  %op65 = load i32 , i32 * %op18
  %op66 = add i32  %op65, 1
  store i32  %op66, i32 * %op18
  %op67 = load i32 , i32 * %op18
  %op68 = load i32 , i32 * %op9
  %op69 = icmp sge i32  %op67, %op68
  %op70 = zext i1  %op69 to i32 
  %op71 = icmp ne i32  %op70, 0
  br i1  %op71, label %label163, label %label164
label72:                                                ; preds = %label63, %label160
  %op73 = load i32 , i32 * %op16
  %op74 = icmp slt i32  %op73, 100000
  %op75 = zext i1  %op74 to i32 
  %op76 = icmp ne i32  %op75, 0
  br i1  %op76, label %label77, label %label78
label77:                                                ; preds = %label72
  store i32  0, i32 * %op15
  br label %label86
label78:                                                ; preds = %label72, %label159
  %op79 = load i32 , i32 * %op17
  %op80 = add i32  %op79, 1
  store i32  %op80, i32 * %op17
  %op81 = load i32 , i32 * %op17
  %op82 = load i32 , i32 * %op10
  %op83 = icmp sge i32  %op81, %op82
  %op84 = zext i1  %op83 to i32 
  %op85 = icmp ne i32  %op84, 0
  br i1  %op85, label %label161, label %label162
label86:                                                ; preds = %label77, %label158
  %op87 = load i32 , i32 * %op15
  %op88 = icmp slt i32  %op87, 1000000
  %op89 = zext i1  %op88 to i32 
  %op90 = icmp ne i32  %op89, 0
  br i1  %op90, label %label91, label %label92
label91:                                                ; preds = %label86
  store i32  0, i32 * %op14
  br label %label100
label92:                                                ; preds = %label86, %label157
  %op93 = load i32 , i32 * %op16
  %op94 = add i32  %op93, 1
  store i32  %op94, i32 * %op16
  %op95 = load i32 , i32 * %op16
  %op96 = load i32 , i32 * %op11
  %op97 = icmp sge i32  %op95, %op96
  %op98 = zext i1  %op97 to i32 
  %op99 = icmp ne i32  %op98, 0
  br i1  %op99, label %label159, label %label160
label100:                                                ; preds = %label91, %label156
  %op101 = load i32 , i32 * %op14
  %op102 = icmp slt i32  %op101, 10000000
  %op103 = zext i1  %op102 to i32 
  %op104 = icmp ne i32  %op103, 0
  br i1  %op104, label %label105, label %label147
label105:                                                ; preds = %label100
  %op106 = load i32 , i32 * %op21
  %op107 = srem i32  %op106, 817
  %op108 = load i32 , i32 * %op20
  %op109 = getelementptr [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]], [10 x [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]]* @arr1, i32  0, i32  %op108
  %op110 = load i32 , i32 * %op19
  %op111 = getelementptr [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]], [2 x [3 x [4 x [5 x [6 x [2 x i32 ]]]]]]* %op109, i32  0, i32  %op110
  %op112 = load i32 , i32 * %op18
  %op113 = getelementptr [3 x [4 x [5 x [6 x [2 x i32 ]]]]], [3 x [4 x [5 x [6 x [2 x i32 ]]]]]* %op111, i32  0, i32  %op112
  %op114 = load i32 , i32 * %op17
  %op115 = getelementptr [4 x [5 x [6 x [2 x i32 ]]]], [4 x [5 x [6 x [2 x i32 ]]]]* %op113, i32  0, i32  %op114
  %op116 = load i32 , i32 * %op16
  %op117 = getelementptr [5 x [6 x [2 x i32 ]]], [5 x [6 x [2 x i32 ]]]* %op115, i32  0, i32  %op116
  %op118 = load i32 , i32 * %op15
  %op119 = getelementptr [6 x [2 x i32 ]], [6 x [2 x i32 ]]* %op117, i32  0, i32  %op118
  %op120 = load i32 , i32 * %op14
  %op121 = getelementptr [2 x i32 ], [2 x i32 ]* %op119, i32  0, i32  %op120
  %op122 = load i32 , i32 * %op121
  %op123 = add i32  %op107, %op122
  %op124 = load i32 , i32 * %op20
  %op125 = getelementptr [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]], [10 x [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]]* @arr2, i32  0, i32  %op124
  %op126 = load i32 , i32 * %op19
  %op127 = getelementptr [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]], [2 x [3 x [2 x [4 x [8 x [7 x i32 ]]]]]]* %op125, i32  0, i32  %op126
  %op128 = load i32 , i32 * %op18
  %op129 = getelementptr [3 x [2 x [4 x [8 x [7 x i32 ]]]]], [3 x [2 x [4 x [8 x [7 x i32 ]]]]]* %op127, i32  0, i32  %op128
  %op130 = load i32 , i32 * %op17
  %op131 = getelementptr [2 x [4 x [8 x [7 x i32 ]]]], [2 x [4 x [8 x [7 x i32 ]]]]* %op129, i32  0, i32  %op130
  %op132 = load i32 , i32 * %op16
  %op133 = getelementptr [4 x [8 x [7 x i32 ]]], [4 x [8 x [7 x i32 ]]]* %op131, i32  0, i32  %op132
  %op134 = load i32 , i32 * %op15
  %op135 = getelementptr [8 x [7 x i32 ]], [8 x [7 x i32 ]]* %op133, i32  0, i32  %op134
  %op136 = load i32 , i32 * %op14
  %op137 = getelementptr [7 x i32 ], [7 x i32 ]* %op135, i32  0, i32  %op136
  %op138 = load i32 , i32 * %op137
  %op139 = add i32  %op123, %op138
  store i32  %op139, i32 * %op21
  %op140 = load i32 , i32 * %op14
  %op141 = add i32  %op140, 1
  store i32  %op141, i32 * %op14
  %op142 = load i32 , i32 * %op14
  %op143 = load i32 , i32 * %op13
  %op144 = icmp sge i32  %op142, %op143
  %op145 = zext i1  %op144 to i32 
  %op146 = icmp ne i32  %op145, 0
  br i1  %op146, label %label155, label %label156
label147:                                                ; preds = %label100, %label155
  %op148 = load i32 , i32 * %op15
  %op149 = add i32  %op148, 1
  store i32  %op149, i32 * %op15
  %op150 = load i32 , i32 * %op15
  %op151 = load i32 , i32 * %op12
  %op152 = icmp sge i32  %op150, %op151
  %op153 = zext i1  %op152 to i32 
  %op154 = icmp ne i32  %op153, 0
  br i1  %op154, label %label157, label %label158
label155:                                                ; preds = %label105
  br label %label147
label156:                                                ; preds = %label105
  br label %label100
label157:                                                ; preds = %label147
  br label %label92
label158:                                                ; preds = %label147
  br label %label86
label159:                                                ; preds = %label92
  br label %label78
label160:                                                ; preds = %label92
  br label %label72
label161:                                                ; preds = %label78
  br label %label64
label162:                                                ; preds = %label78
  br label %label58
label163:                                                ; preds = %label64
  br label %label50
label164:                                                ; preds = %label64
  br label %label44
label165:                                                ; preds = %label50
  br label %label36
label166:                                                ; preds = %label50
  br label %label30
label167:                                                ; preds = %label36
  br label %label28
label168:                                                ; preds = %label36
  br label %label22
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  %op3 = call i32  @getint()
  store i32  %op3, i32 * %op2
  %op4 = alloca i32 
  %op5 = call i32  @getint()
  store i32  %op5, i32 * %op4
  %op6 = alloca i32 
  %op7 = call i32  @getint()
  store i32  %op7, i32 * %op6
  %op8 = alloca i32 
  %op9 = call i32  @getint()
  store i32  %op9, i32 * %op8
  %op10 = alloca i32 
  %op11 = call i32  @getint()
  store i32  %op11, i32 * %op10
  %op12 = alloca i32 
  %op13 = call i32  @getint()
  store i32  %op13, i32 * %op12
  %op14 = alloca i32 
  %op15 = call i32  @getint()
  store i32  %op15, i32 * %op14
  %op16 = alloca i32 
  %op17 = call i32  @getint()
  store i32  %op17, i32 * %op16
  %op18 = load i32 , i32 * %op0
  %op19 = load i32 , i32 * %op2
  call void @loop1(i32  %op18, i32  %op19)
  call void @loop2()
  %op20 = load i32 , i32 * %op4
  %op21 = load i32 , i32 * %op8
  %op22 = load i32 , i32 * %op6
  %op23 = load i32 , i32 * %op10
  %op24 = load i32 , i32 * %op12
  %op25 = load i32 , i32 * %op14
  %op26 = load i32 , i32 * %op16
  %op27 = call i32  @loop3(i32  %op20, i32  %op21, i32  %op22, i32  %op23, i32  %op24, i32  %op25, i32  %op26)
  ret i32  %op27
}
