; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/11_BST.sy"

@space = constant i32  32
@LF = constant i32  10
@maxNode = constant i32  10000
@value = global [10000 x i32 ] zeroinitializer
@left_child = global [10000 x i32 ] zeroinitializer
@right_child = global [10000 x i32 ] zeroinitializer
@now = global i32  zeroinitializer
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

define i32  @search(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = icmp eq i32  %op4, -1
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label18
label8:                                                ; preds = %label_entry, %label18
  %op9 = load i32 , i32 * %op2
  ret i32  %op9
label10:                                                ; preds = %label18
  %op11 = load i32 , i32 * %op3
  %op12 = load i32 , i32 * %op2
  %op13 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op12
  %op14 = load i32 , i32 * %op13
  %op15 = icmp sgt i32  %op11, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label26, label %label32
label18:                                                ; preds = %label_entry
  %op19 = load i32 , i32 * %op2
  %op20 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op19
  %op21 = load i32 , i32 * %op20
  %op22 = load i32 , i32 * %op3
  %op23 = icmp eq i32  %op21, %op22
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label8, label %label10
label26:                                                ; preds = %label10
  %op27 = load i32 , i32 * %op2
  %op28 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op27
  %op29 = load i32 , i32 * %op28
  %op30 = load i32 , i32 * %op3
  %op31 = call i32  @search(i32  %op29, i32  %op30)
  ret i32  %op31
label32:                                                ; preds = %label10
  %op33 = load i32 , i32 * %op2
  %op34 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op34
  %op36 = load i32 , i32 * %op3
  %op37 = call i32  @search(i32  %op35, i32  %op36)
  ret i32  %op37
}
define i32  @find_minimum(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp eq i32  %op2, -1
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label7
label6:                                                ; preds = %label_entry
  ret i32  -1
label7:                                                ; preds = %label_entry
  %op8 = load i32 , i32 * %op1
  %op9 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op8
  %op10 = load i32 , i32 * %op9
  %op11 = icmp ne i32  %op10, -1
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label16, label %label21
label14:                                                ; preds = %label21
  %op15 = load i32 , i32 * %op1
  ret i32  %op15
label16:                                                ; preds = %label7
  %op17 = load i32 , i32 * %op1
  %op18 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op17
  %op19 = load i32 , i32 * %op18
  %op20 = call i32  @find_minimum(i32  %op19)
  ret i32  %op20
label21:                                                ; preds = %label7
  br label %label14
}
define i32  @new_node(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = load i32 , i32 * @now
  %op4 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op3
  store i32  %op2, i32 * %op4
  %op5 = load i32 , i32 * @now
  %op6 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op5
  store i32  -1, i32 * %op6
  %op7 = load i32 , i32 * @now
  %op8 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op7
  store i32  -1, i32 * %op8
  %op9 = load i32 , i32 * @now
  %op10 = add i32  %op9, 1
  store i32  %op10, i32 * @now
  %op11 = load i32 , i32 * @now
  %op12 = sub i32  %op11, 1
  ret i32  %op12
}
define i32  @insert(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = icmp eq i32  %op4, -1
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label11
label8:                                                ; preds = %label_entry
  %op9 = load i32 , i32 * %op3
  %op10 = call i32  @new_node(i32  %op9)
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op3
  %op13 = load i32 , i32 * %op2
  %op14 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op13
  %op15 = load i32 , i32 * %op14
  %op16 = icmp sgt i32  %op12, %op15
  %op17 = zext i1  %op16 to i32 
  %op18 = icmp ne i32  %op17, 0
  br i1  %op18, label %label21, label %label29
label19:                                                ; preds = %label37
  %op20 = load i32 , i32 * %op2
  ret i32  %op20
label21:                                                ; preds = %label11
  %op22 = load i32 , i32 * %op2
  %op23 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op22
  %op24 = load i32 , i32 * %op23
  %op25 = load i32 , i32 * %op3
  %op26 = call i32  @insert(i32  %op24, i32  %op25)
  %op27 = load i32 , i32 * %op2
  %op28 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op27
  store i32  %op26, i32 * %op28
  br label %label37
label29:                                                ; preds = %label11
  %op30 = load i32 , i32 * %op2
  %op31 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op30
  %op32 = load i32 , i32 * %op31
  %op33 = load i32 , i32 * %op3
  %op34 = call i32  @insert(i32  %op32, i32  %op33)
  %op35 = load i32 , i32 * %op2
  %op36 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op35
  store i32  %op34, i32 * %op36
  br label %label37
label37:                                                ; preds = %label21, %label29
  br label %label19
}
define i32  @delete(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = icmp eq i32  %op4, -1
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label9
label8:                                                ; preds = %label_entry
  ret i32  -1
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op3
  %op11 = load i32 , i32 * %op2
  %op12 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op11
  %op13 = load i32 , i32 * %op12
  %op14 = icmp sgt i32  %op10, %op13
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label25
label17:                                                ; preds = %label9
  %op18 = load i32 , i32 * %op2
  %op19 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op18
  %op20 = load i32 , i32 * %op19
  %op21 = load i32 , i32 * %op3
  %op22 = call i32  @delete(i32  %op20, i32  %op21)
  %op23 = load i32 , i32 * %op2
  %op24 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op23
  store i32  %op22, i32 * %op24
  br label %label33
label25:                                                ; preds = %label9
  %op26 = load i32 , i32 * %op3
  %op27 = load i32 , i32 * %op2
  %op28 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op27
  %op29 = load i32 , i32 * %op28
  %op30 = icmp slt i32  %op26, %op29
  %op31 = zext i1  %op30 to i32 
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label35, label %label43
label33:                                                ; preds = %label17, %label50
  %op34 = load i32 , i32 * %op2
  ret i32  %op34
label35:                                                ; preds = %label25
  %op36 = load i32 , i32 * %op2
  %op37 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op36
  %op38 = load i32 , i32 * %op37
  %op39 = load i32 , i32 * %op3
  %op40 = call i32  @delete(i32  %op38, i32  %op39)
  %op41 = load i32 , i32 * %op2
  %op42 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op41
  store i32  %op40, i32 * %op42
  br label %label50
label43:                                                ; preds = %label25
  %op44 = load i32 , i32 * %op2
  %op45 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op44
  %op46 = load i32 , i32 * %op45
  %op47 = icmp eq i32  %op46, -1
  %op48 = zext i1  %op47 to i32 
  %op49 = icmp ne i32  %op48, 0
  br i1  %op49, label %label60, label %label52
label50:                                                ; preds = %label35, %label59
  br label %label33
label51:                                                ; preds = %label60
  ret i32  -1
label52:                                                ; preds = %label43, %label60
  %op53 = load i32 , i32 * %op2
  %op54 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op53
  %op55 = load i32 , i32 * %op54
  %op56 = icmp eq i32  %op55, -1
  %op57 = zext i1  %op56 to i32 
  %op58 = icmp ne i32  %op57, 0
  br i1  %op58, label %label67, label %label95
label59:                                                ; preds = %label94
  br label %label50
label60:                                                ; preds = %label43
  %op61 = load i32 , i32 * %op2
  %op62 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op61
  %op63 = load i32 , i32 * %op62
  %op64 = icmp eq i32  %op63, -1
  %op65 = zext i1  %op64 to i32 
  %op66 = icmp ne i32  %op65, 0
  br i1  %op66, label %label51, label %label52
label67:                                                ; preds = %label52, %label95
  %op68 = load i32 , i32 * %op2
  %op69 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op68
  %op70 = load i32 , i32 * %op69
  %op71 = icmp eq i32  %op70, -1
  %op72 = zext i1  %op71 to i32 
  %op73 = icmp ne i32  %op72, 0
  br i1  %op73, label %label102, label %label106
label74:                                                ; preds = %label95
  %op75 = alloca i32 
  %op76 = load i32 , i32 * %op2
  %op77 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op76
  %op78 = load i32 , i32 * %op77
  %op79 = call i32  @find_minimum(i32  %op78)
  store i32  %op79, i32 * %op75
  %op80 = load i32 , i32 * %op75
  %op81 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op80
  %op82 = load i32 , i32 * %op81
  %op83 = load i32 , i32 * %op2
  %op84 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op83
  store i32  %op82, i32 * %op84
  %op85 = load i32 , i32 * %op2
  %op86 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op85
  %op87 = load i32 , i32 * %op86
  %op88 = load i32 , i32 * %op75
  %op89 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op88
  %op90 = load i32 , i32 * %op89
  %op91 = call i32  @delete(i32  %op87, i32  %op90)
  %op92 = load i32 , i32 * %op2
  %op93 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op92
  store i32  %op91, i32 * %op93
  br label %label94
label94:                                                ; preds = %label74
  br label %label59
label95:                                                ; preds = %label52
  %op96 = load i32 , i32 * %op2
  %op97 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op96
  %op98 = load i32 , i32 * %op97
  %op99 = icmp eq i32  %op98, -1
  %op100 = zext i1  %op99 to i32 
  %op101 = icmp ne i32  %op100, 0
  br i1  %op101, label %label67, label %label74
label102:                                                ; preds = %label67
  %op103 = load i32 , i32 * %op2
  %op104 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op103
  %op105 = load i32 , i32 * %op104
  ret i32  %op105
label106:                                                ; preds = %label67
  %op107 = load i32 , i32 * %op2
  %op108 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op107
  %op109 = load i32 , i32 * %op108
  ret i32  %op109
}
define void @inorder(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = icmp ne i32  %op2, -1
  %op4 = zext i1  %op3 to i32 
  %op5 = icmp ne i32  %op4, 0
  br i1  %op5, label %label6, label %label17
label6:                                                ; preds = %label_entry
  %op7 = load i32 , i32 * %op1
  %op8 = getelementptr [10000 x i32 ], [10000 x i32 ]* @left_child, i32  0, i32  %op7
  %op9 = load i32 , i32 * %op8
  call void @inorder(i32  %op9)
  %op10 = load i32 , i32 * %op1
  %op11 = getelementptr [10000 x i32 ], [10000 x i32 ]* @value, i32  0, i32  %op10
  %op12 = load i32 , i32 * %op11
  call void @putint(i32  %op12)
  %op13 = load i32 , i32 * @space
  call void @putch(i32  %op13)
  %op14 = load i32 , i32 * %op1
  %op15 = getelementptr [10000 x i32 ], [10000 x i32 ]* @right_child, i32  0, i32  %op14
  %op16 = load i32 , i32 * %op15
  call void @inorder(i32  %op16)
  br label %label17
label17:                                                ; preds = %label_entry, %label6
  ret void
}
define i32  @main() {
label_entry:
  store i32  0, i32 * @now
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  %op2 = load i32 , i32 * %op0
  %op3 = icmp eq i32  %op2, 0
  br i1  %op3, label %label4, label %label5
label4:                                                ; preds = %label_entry
  ret i32  0
label5:                                                ; preds = %label_entry
  %op6 = alloca i32 
  store i32  1, i32 * %op6
  %op7 = alloca i32 
  %op8 = call i32  @getint()
  %op9 = call i32  @new_node(i32  %op8)
  store i32  %op9, i32 * %op7
  br label %label10
label10:                                                ; preds = %label5, %label16
  %op11 = load i32 , i32 * %op6
  %op12 = load i32 , i32 * %op0
  %op13 = icmp slt i32  %op11, %op12
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label22
label16:                                                ; preds = %label10
  %op17 = load i32 , i32 * %op7
  %op18 = call i32  @getint()
  %op19 = call i32  @insert(i32  %op17, i32  %op18)
  %op20 = load i32 , i32 * %op6
  %op21 = add i32  %op20, 1
  store i32  %op21, i32 * %op6
  br label %label10
label22:                                                ; preds = %label10
  %op23 = load i32 , i32 * %op7
  call void @inorder(i32  %op23)
  %op24 = load i32 , i32 * @LF
  call void @putch(i32  %op24)
  %op25 = call i32  @getint()
  store i32  %op25, i32 * %op0
  store i32  0, i32 * %op6
  br label %label26
label26:                                                ; preds = %label22, %label32
  %op27 = load i32 , i32 * %op6
  %op28 = load i32 , i32 * %op0
  %op29 = icmp slt i32  %op27, %op28
  %op30 = zext i1  %op29 to i32 
  %op31 = icmp ne i32  %op30, 0
  br i1  %op31, label %label32, label %label38
label32:                                                ; preds = %label26
  %op33 = load i32 , i32 * %op7
  %op34 = call i32  @getint()
  %op35 = call i32  @delete(i32  %op33, i32  %op34)
  store i32  %op35, i32 * %op7
  %op36 = load i32 , i32 * %op6
  %op37 = add i32  %op36, 1
  store i32  %op37, i32 * %op6
  br label %label26
label38:                                                ; preds = %label26
  %op39 = load i32 , i32 * %op7
  call void @inorder(i32  %op39)
  %op40 = load i32 , i32 * @LF
  call void @putch(i32  %op40)
  ret i32  0
}
