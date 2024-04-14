; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/18_prim.sy"

@maxm = constant i32  1005
@maxn = constant i32  105
@n = global i32  zeroinitializer
@m = global i32  zeroinitializer
@u = global [1005 x i32 ] zeroinitializer
@v = global [1005 x i32 ] zeroinitializer
@c = global [1005 x i32 ] zeroinitializer
@fa = global [1005 x i32 ] zeroinitializer
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

define i32  @quick_read() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getch()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca i32 
  store i32  0, i32 * %op3
  br label %label4
label4:                                                ; preds = %label_entry, %label21
  %op5 = load i32 , i32 * %op0
  %op6 = icmp slt i32  %op5, 48
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label15
label9:                                                ; preds = %label4, %label15
  %op10 = load i32 , i32 * %op0
  %op11 = icmp eq i32  %op10, 45
  %op12 = zext i1  %op11 to i32 
  %op13 = icmp ne i32  %op12, 0
  br i1  %op13, label %label20, label %label21
label14:                                                ; preds = %label15
  br label %label23
label15:                                                ; preds = %label4
  %op16 = load i32 , i32 * %op0
  %op17 = icmp sgt i32  %op16, 57
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label9, label %label14
label20:                                                ; preds = %label9
  store i32  1, i32 * %op2
  br label %label21
label21:                                                ; preds = %label9, %label20
  %op22 = call i32  @getch()
  store i32  %op22, i32 * %op0
  br label %label4
label23:                                                ; preds = %label14, %label28
  %op24 = load i32 , i32 * %op0
  %op25 = icmp sge i32  %op24, 48
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label38, label %label35
label28:                                                ; preds = %label38
  %op29 = load i32 , i32 * %op3
  %op30 = mul i32  %op29, 10
  %op31 = load i32 , i32 * %op0
  %op32 = add i32  %op30, %op31
  %op33 = sub i32  %op32, 48
  store i32  %op33, i32 * %op3
  %op34 = call i32  @getch()
  store i32  %op34, i32 * %op0
  br label %label23
label35:                                                ; preds = %label23, %label38
  %op36 = load i32 , i32 * %op2
  %op37 = icmp ne i32  %op36, 0
  br i1  %op37, label %label43, label %label46
label38:                                                ; preds = %label23
  %op39 = load i32 , i32 * %op0
  %op40 = icmp sle i32  %op39, 57
  %op41 = zext i1  %op40 to i32 
  %op42 = icmp ne i32  %op41, 0
  br i1  %op42, label %label28, label %label35
label43:                                                ; preds = %label35
  %op44 = load i32 , i32 * %op3
  %op45 = sub i32  0, %op44
  ret i32  %op45
label46:                                                ; preds = %label35
  %op47 = load i32 , i32 * %op3
  ret i32  %op47
}
define i32  @find(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = load i32 , i32 * %op1
  %op4 = getelementptr [1005 x i32 ], [1005 x i32 ]* @fa, i32  0, i32  %op3
  %op5 = load i32 , i32 * %op4
  %op6 = icmp eq i32  %op2, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op1
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = alloca i32 
  %op13 = load i32 , i32 * %op1
  %op14 = getelementptr [1005 x i32 ], [1005 x i32 ]* @fa, i32  0, i32  %op13
  %op15 = load i32 , i32 * %op14
  %op16 = call i32  @find(i32  %op15)
  store i32  %op16, i32 * %op12
  %op17 = load i32 , i32 * %op12
  %op18 = load i32 , i32 * %op1
  %op19 = getelementptr [1005 x i32 ], [1005 x i32 ]* @fa, i32  0, i32  %op18
  store i32  %op17, i32 * %op19
  %op20 = load i32 , i32 * %op12
  ret i32  %op20
}
define i32  @same(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = call i32  @find(i32  %op4)
  store i32  %op5, i32 * %op2
  %op6 = load i32 , i32 * %op3
  %op7 = call i32  @find(i32  %op6)
  store i32  %op7, i32 * %op3
  %op8 = load i32 , i32 * %op2
  %op9 = load i32 , i32 * %op3
  %op10 = icmp eq i32  %op8, %op9
  %op11 = zext i1  %op10 to i32 
  %op12 = icmp ne i32  %op11, 0
  br i1  %op12, label %label13, label %label14
label13:                                                ; preds = %label_entry
  ret i32  1
label14:                                                ; preds = %label_entry
  ret i32  0
}
define i32  @prim() {
label_entry:
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  br label %label1
label1:                                                ; preds = %label_entry, %label28
  %op2 = load i32 , i32 * %op0
  %op3 = load i32 , i32 * @m
  %op4 = icmp slt i32  %op2, %op3
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label11
label7:                                                ; preds = %label1
  %op8 = alloca i32 
  %op9 = load i32 , i32 * %op0
  %op10 = add i32  %op9, 1
  store i32  %op10, i32 * %op8
  br label %label12
label11:                                                ; preds = %label1
  store i32  1, i32 * %op0
  br label %label69
label12:                                                ; preds = %label7, %label66
  %op13 = load i32 , i32 * %op8
  %op14 = load i32 , i32 * @m
  %op15 = icmp slt i32  %op13, %op14
  %op16 = zext i1  %op15 to i32 
  %op17 = icmp ne i32  %op16, 0
  br i1  %op17, label %label18, label %label28
label18:                                                ; preds = %label12
  %op19 = load i32 , i32 * %op0
  %op20 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op19
  %op21 = load i32 , i32 * %op20
  %op22 = load i32 , i32 * %op8
  %op23 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op22
  %op24 = load i32 , i32 * %op23
  %op25 = icmp sgt i32  %op21, %op24
  %op26 = zext i1  %op25 to i32 
  %op27 = icmp ne i32  %op26, 0
  br i1  %op27, label %label31, label %label66
label28:                                                ; preds = %label12
  %op29 = load i32 , i32 * %op0
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op0
  br label %label1
label31:                                                ; preds = %label18
  %op32 = alloca i32 
  %op33 = load i32 , i32 * %op0
  %op34 = getelementptr [1005 x i32 ], [1005 x i32 ]* @u, i32  0, i32  %op33
  %op35 = load i32 , i32 * %op34
  store i32  %op35, i32 * %op32
  %op36 = load i32 , i32 * %op8
  %op37 = getelementptr [1005 x i32 ], [1005 x i32 ]* @u, i32  0, i32  %op36
  %op38 = load i32 , i32 * %op37
  %op39 = load i32 , i32 * %op0
  %op40 = getelementptr [1005 x i32 ], [1005 x i32 ]* @u, i32  0, i32  %op39
  store i32  %op38, i32 * %op40
  %op41 = load i32 , i32 * %op32
  %op42 = load i32 , i32 * %op8
  %op43 = getelementptr [1005 x i32 ], [1005 x i32 ]* @u, i32  0, i32  %op42
  store i32  %op41, i32 * %op43
  %op44 = load i32 , i32 * %op0
  %op45 = getelementptr [1005 x i32 ], [1005 x i32 ]* @v, i32  0, i32  %op44
  %op46 = load i32 , i32 * %op45
  store i32  %op46, i32 * %op32
  %op47 = load i32 , i32 * %op8
  %op48 = getelementptr [1005 x i32 ], [1005 x i32 ]* @v, i32  0, i32  %op47
  %op49 = load i32 , i32 * %op48
  %op50 = load i32 , i32 * %op0
  %op51 = getelementptr [1005 x i32 ], [1005 x i32 ]* @v, i32  0, i32  %op50
  store i32  %op49, i32 * %op51
  %op52 = load i32 , i32 * %op32
  %op53 = load i32 , i32 * %op8
  %op54 = getelementptr [1005 x i32 ], [1005 x i32 ]* @v, i32  0, i32  %op53
  store i32  %op52, i32 * %op54
  %op55 = load i32 , i32 * %op0
  %op56 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op55
  %op57 = load i32 , i32 * %op56
  store i32  %op57, i32 * %op32
  %op58 = load i32 , i32 * %op8
  %op59 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op58
  %op60 = load i32 , i32 * %op59
  %op61 = load i32 , i32 * %op0
  %op62 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op61
  store i32  %op60, i32 * %op62
  %op63 = load i32 , i32 * %op32
  %op64 = load i32 , i32 * %op8
  %op65 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op64
  store i32  %op63, i32 * %op65
  br label %label66
label66:                                                ; preds = %label18, %label31
  %op67 = load i32 , i32 * %op8
  %op68 = add i32  %op67, 1
  store i32  %op68, i32 * %op8
  br label %label12
label69:                                                ; preds = %label11, %label75
  %op70 = load i32 , i32 * %op0
  %op71 = load i32 , i32 * @n
  %op72 = icmp sle i32  %op70, %op71
  %op73 = zext i1  %op72 to i32 
  %op74 = icmp ne i32  %op73, 0
  br i1  %op74, label %label75, label %label81
label75:                                                ; preds = %label69
  %op76 = load i32 , i32 * %op0
  %op77 = load i32 , i32 * %op0
  %op78 = getelementptr [1005 x i32 ], [1005 x i32 ]* @fa, i32  0, i32  %op77
  store i32  %op76, i32 * %op78
  %op79 = load i32 , i32 * %op0
  %op80 = add i32  %op79, 1
  store i32  %op80, i32 * %op0
  br label %label69
label81:                                                ; preds = %label69
  store i32  0, i32 * %op0
  %op82 = alloca i32 
  store i32  0, i32 * %op82
  br label %label83
label83:                                                ; preds = %label81, %label100, %label101
  %op84 = load i32 , i32 * %op0
  %op85 = load i32 , i32 * @m
  %op86 = icmp slt i32  %op84, %op85
  %op87 = zext i1  %op86 to i32 
  %op88 = icmp ne i32  %op87, 0
  br i1  %op88, label %label89, label %label98
label89:                                                ; preds = %label83
  %op90 = load i32 , i32 * %op0
  %op91 = getelementptr [1005 x i32 ], [1005 x i32 ]* @u, i32  0, i32  %op90
  %op92 = load i32 , i32 * %op91
  %op93 = load i32 , i32 * %op0
  %op94 = getelementptr [1005 x i32 ], [1005 x i32 ]* @v, i32  0, i32  %op93
  %op95 = load i32 , i32 * %op94
  %op96 = call i32  @same(i32  %op92, i32  %op95)
  %op97 = icmp ne i32  %op96, 0
  br i1  %op97, label %label100, label %label101
label98:                                                ; preds = %label83
  %op99 = load i32 , i32 * %op82
  ret i32  %op99
label100:                                                ; preds = %label89
  br label %label83
label101:                                                ; preds = %label89
  %op102 = load i32 , i32 * %op82
  %op103 = load i32 , i32 * %op0
  %op104 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op103
  %op105 = load i32 , i32 * %op104
  %op106 = add i32  %op102, %op105
  store i32  %op106, i32 * %op82
  %op107 = load i32 , i32 * %op0
  %op108 = getelementptr [1005 x i32 ], [1005 x i32 ]* @v, i32  0, i32  %op107
  %op109 = load i32 , i32 * %op108
  %op110 = load i32 , i32 * %op0
  %op111 = getelementptr [1005 x i32 ], [1005 x i32 ]* @u, i32  0, i32  %op110
  %op112 = load i32 , i32 * %op111
  %op113 = call i32  @find(i32  %op112)
  %op114 = getelementptr [1005 x i32 ], [1005 x i32 ]* @fa, i32  0, i32  %op113
  store i32  %op109, i32 * %op114
  %op115 = load i32 , i32 * %op0
  %op116 = add i32  %op115, 1
  store i32  %op116, i32 * %op0
  br label %label83
}
define i32  @main() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @quick_read()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  %op3 = call i32  @quick_read()
  store i32  %op3, i32 * %op2
  %op4 = alloca i32 
  store i32  0, i32 * %op4
  br label %label5
label5:                                                ; preds = %label_entry, %label11
  %op6 = load i32 , i32 * %op4
  %op7 = load i32 , i32 * %op0
  %op8 = icmp slt i32  %op6, %op7
  %op9 = zext i1  %op8 to i32 
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label23
label11:                                                ; preds = %label5
  %op12 = call i32  @quick_read()
  %op13 = load i32 , i32 * %op4
  %op14 = getelementptr [1005 x i32 ], [1005 x i32 ]* @u, i32  0, i32  %op13
  store i32  %op12, i32 * %op14
  %op15 = call i32  @quick_read()
  %op16 = load i32 , i32 * %op4
  %op17 = getelementptr [1005 x i32 ], [1005 x i32 ]* @v, i32  0, i32  %op16
  store i32  %op15, i32 * %op17
  %op18 = call i32  @quick_read()
  %op19 = load i32 , i32 * %op4
  %op20 = getelementptr [1005 x i32 ], [1005 x i32 ]* @c, i32  0, i32  %op19
  store i32  %op18, i32 * %op20
  %op21 = load i32 , i32 * %op4
  %op22 = add i32  %op21, 1
  store i32  %op22, i32 * %op4
  br label %label5
label23:                                                ; preds = %label5
  %op24 = call i32  @prim()
  ret i32  %op24
}
