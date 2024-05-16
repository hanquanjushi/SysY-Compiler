; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/54_hidden_var.sy"

@b = global i32  5
@c = global [4 x i32 ] [i32  6, i32  7, i32  8, i32  9]
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

define i32  @main() {
label_entry:
  %op0 = alloca i32 
  store i32  1, i32 * %op0
  %op1 = alloca i32 
  store i32  2, i32 * %op1
  store i32  3, i32 * %op1
  %op2 = load i32 , i32 * %op1
  call void @putint(i32  %op2)
  %op3 = load i32 , i32 * %op1
  call void @putint(i32  %op3)
  %op4 = load i32 , i32 * %op0
  call void @putint(i32  %op4)
  call void @putch(i32  10)
  br label %label5
label5:                                                ; preds = %label_entry, %label45
  %op6 = load i32 , i32 * %op0
  %op7 = icmp slt i32  %op6, 5
  %op8 = zext i1  %op7 to i32 
  %op9 = icmp ne i32  %op8, 0
  br i1  %op9, label %label10, label %label16
label10:                                                ; preds = %label5
  %op11 = alloca i32 
  store i32  0, i32 * %op11
  %op12 = load i32 , i32 * %op11
  %op13 = add i32  %op12, 1
  store i32  %op13, i32 * %op11
  %op14 = load i32 , i32 * %op11
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label44, label %label45
label16:                                                ; preds = %label5, %label44
  %op17 = load i32 , i32 * %op0
  call void @putint(i32  %op17)
  call void @putch(i32  10)
  %op18 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  store i32  1, i32 * %op18
  %op19 = alloca [2 x [8 x i32 ]]
  %op20 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  0
  store i32  0, i32 * %op20
  %op21 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  1
  store i32  0, i32 * %op21
  %op22 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  2
  store i32  0, i32 * %op22
  %op23 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  3
  store i32  0, i32 * %op23
  %op24 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  4
  store i32  0, i32 * %op24
  %op25 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  5
  store i32  0, i32 * %op25
  %op26 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  6
  store i32  0, i32 * %op26
  %op27 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  7
  store i32  0, i32 * %op27
  %op28 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  0
  store i32  0, i32 * %op28
  %op29 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  1
  store i32  0, i32 * %op29
  %op30 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  2
  store i32  0, i32 * %op30
  %op31 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  3
  store i32  0, i32 * %op31
  %op32 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  4
  store i32  0, i32 * %op32
  %op33 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  5
  store i32  0, i32 * %op33
  %op34 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  6
  store i32  0, i32 * %op34
  %op35 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  7
  store i32  0, i32 * %op35
  %op36 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  0
  store i32  0, i32 * %op36
  %op37 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  0, i32  1
  store i32  9, i32 * %op37
  %op38 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  0
  store i32  8, i32 * %op38
  %op39 = getelementptr [2 x [8 x i32 ]], [2 x [8 x i32 ]]* %op19, i32  0, i32  1, i32  1
  store i32  3, i32 * %op39
  %op40 = alloca i32 
  store i32  2, i32 * %op40
  %op41 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  %op42 = load i32 , i32 * %op41
  %op43 = icmp ne i32  %op42, 0
  br i1  %op43, label %label46, label %label101
label44:                                                ; preds = %label10
  br label %label16
label45:                                                ; preds = %label10
  br label %label5
label46:                                                ; preds = %label16
  %op47 = alloca [7 x [1 x [5 x i32 ]]]
  %op48 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  0
  store i32  0, i32 * %op48
  %op49 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  1
  store i32  0, i32 * %op49
  %op50 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  2
  store i32  0, i32 * %op50
  %op51 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  3
  store i32  0, i32 * %op51
  %op52 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  0, i32  0, i32  4
  store i32  0, i32 * %op52
  %op53 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  0
  store i32  0, i32 * %op53
  %op54 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  1
  store i32  0, i32 * %op54
  %op55 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  2
  store i32  0, i32 * %op55
  %op56 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  3
  store i32  0, i32 * %op56
  %op57 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  1, i32  0, i32  4
  store i32  0, i32 * %op57
  %op58 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  0
  store i32  0, i32 * %op58
  %op59 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  1
  store i32  0, i32 * %op59
  %op60 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  2
  store i32  0, i32 * %op60
  %op61 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  3
  store i32  0, i32 * %op61
  %op62 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  4
  store i32  0, i32 * %op62
  %op63 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  0
  store i32  0, i32 * %op63
  %op64 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  1
  store i32  0, i32 * %op64
  %op65 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  2
  store i32  0, i32 * %op65
  %op66 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  3
  store i32  0, i32 * %op66
  %op67 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  3, i32  0, i32  4
  store i32  0, i32 * %op67
  %op68 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  0
  store i32  0, i32 * %op68
  %op69 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  1
  store i32  0, i32 * %op69
  %op70 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  2
  store i32  0, i32 * %op70
  %op71 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  3
  store i32  0, i32 * %op71
  %op72 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  4, i32  0, i32  4
  store i32  0, i32 * %op72
  %op73 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  0
  store i32  0, i32 * %op73
  %op74 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  1
  store i32  0, i32 * %op74
  %op75 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  2
  store i32  0, i32 * %op75
  %op76 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  3
  store i32  0, i32 * %op76
  %op77 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  5, i32  0, i32  4
  store i32  0, i32 * %op77
  %op78 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  0
  store i32  0, i32 * %op78
  %op79 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  1
  store i32  0, i32 * %op79
  %op80 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  2
  store i32  0, i32 * %op80
  %op81 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  3
  store i32  0, i32 * %op81
  %op82 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  6, i32  0, i32  4
  store i32  0, i32 * %op82
  %op83 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  0
  store i32  2, i32 * %op83
  %op84 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  1
  store i32  1, i32 * %op84
  %op85 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  2, i32  0, i32  2
  store i32  8, i32 * %op85
  %op86 = load i32 , i32 * %op40
  %op87 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  %op86
  %op88 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op87, i32  0, i32  0
  %op89 = getelementptr [5 x i32 ], [5 x i32 ]* %op88, i32  0, i32  0
  %op90 = load i32 , i32 * %op89
  call void @putint(i32  %op90)
  %op91 = load i32 , i32 * %op40
  %op92 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  %op91
  %op93 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op92, i32  0, i32  0
  %op94 = getelementptr [5 x i32 ], [5 x i32 ]* %op93, i32  0, i32  1
  %op95 = load i32 , i32 * %op94
  call void @putint(i32  %op95)
  %op96 = load i32 , i32 * %op40
  %op97 = getelementptr [7 x [1 x [5 x i32 ]]], [7 x [1 x [5 x i32 ]]]* %op47, i32  0, i32  %op96
  %op98 = getelementptr [1 x [5 x i32 ]], [1 x [5 x i32 ]]* %op97, i32  0, i32  0
  %op99 = getelementptr [5 x i32 ], [5 x i32 ]* %op98, i32  0, i32  2
  %op100 = load i32 , i32 * %op99
  call void @putint(i32  %op100)
  br label %label101
label101:                                                ; preds = %label16, %label46
  call void @putch(i32  10)
  %op102 = load i32 , i32 * @b
  call void @putint(i32  %op102)
  call void @putch(i32  10)
  %op103 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  0
  %op104 = load i32 , i32 * %op103
  call void @putint(i32  %op104)
  %op105 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  1
  %op106 = load i32 , i32 * %op105
  call void @putint(i32  %op106)
  %op107 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  2
  %op108 = load i32 , i32 * %op107
  call void @putint(i32  %op108)
  %op109 = getelementptr [4 x i32 ], [4 x i32 ]* @c, i32  0, i32  3
  %op110 = load i32 , i32 * %op109
  call void @putint(i32  %op110)
  call void @putch(i32  10)
  ret i32  0
}
