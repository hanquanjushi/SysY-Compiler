; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/04_arr_defn3.sy"

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
  %op0 = alloca [4 x [2 x i32 ]]
  %op1 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  0
  store i32  0, i32 * %op1
  %op2 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  0, i32  1
  store i32  0, i32 * %op2
  %op3 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  0
  store i32  0, i32 * %op3
  %op4 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  1, i32  1
  store i32  0, i32 * %op4
  %op5 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  0
  store i32  0, i32 * %op5
  %op6 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  2, i32  1
  store i32  0, i32 * %op6
  %op7 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  0
  store i32  0, i32 * %op7
  %op8 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  3, i32  1
  store i32  0, i32 * %op8
  %op9 = alloca [4 x [2 x i32 ]]
  %op10 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  0, i32  0
  store i32  0, i32 * %op10
  %op11 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  0, i32  1
  store i32  0, i32 * %op11
  %op12 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  1, i32  0
  store i32  0, i32 * %op12
  %op13 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  1, i32  1
  store i32  0, i32 * %op13
  %op14 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  2, i32  0
  store i32  0, i32 * %op14
  %op15 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  2, i32  1
  store i32  0, i32 * %op15
  %op16 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  3, i32  0
  store i32  0, i32 * %op16
  %op17 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  3, i32  1
  store i32  0, i32 * %op17
  %op18 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  0, i32  0
  store i32  1, i32 * %op18
  %op19 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  0, i32  1
  store i32  2, i32 * %op19
  %op20 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  1, i32  0
  store i32  3, i32 * %op20
  %op21 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  1, i32  1
  store i32  4, i32 * %op21
  %op22 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  2, i32  0
  store i32  5, i32 * %op22
  %op23 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  2, i32  1
  store i32  6, i32 * %op23
  %op24 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  3, i32  0
  store i32  7, i32 * %op24
  %op25 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op9, i32  0, i32  3, i32  1
  store i32  8, i32 * %op25
  %op26 = alloca [4 x [2 x i32 ]]
  %op27 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  0, i32  0
  store i32  0, i32 * %op27
  %op28 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  0, i32  1
  store i32  0, i32 * %op28
  %op29 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  1, i32  0
  store i32  0, i32 * %op29
  %op30 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  1, i32  1
  store i32  0, i32 * %op30
  %op31 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  2, i32  0
  store i32  0, i32 * %op31
  %op32 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  2, i32  1
  store i32  0, i32 * %op32
  %op33 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  3, i32  0
  store i32  0, i32 * %op33
  %op34 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  3, i32  1
  store i32  0, i32 * %op34
  %op35 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  0, i32  0
  store i32  1, i32 * %op35
  %op36 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  0, i32  1
  store i32  2, i32 * %op36
  %op37 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  1, i32  0
  store i32  3, i32 * %op37
  %op38 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  1, i32  1
  store i32  4, i32 * %op38
  %op39 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  2, i32  0
  store i32  5, i32 * %op39
  %op40 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  2, i32  1
  store i32  6, i32 * %op40
  %op41 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  3, i32  0
  store i32  7, i32 * %op41
  %op42 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  3, i32  1
  store i32  8, i32 * %op42
  %op43 = alloca [4 x [2 x i32 ]]
  %op44 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  0, i32  0
  store i32  0, i32 * %op44
  %op45 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  0, i32  1
  store i32  0, i32 * %op45
  %op46 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  1, i32  0
  store i32  0, i32 * %op46
  %op47 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  1, i32  1
  store i32  0, i32 * %op47
  %op48 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  2, i32  0
  store i32  0, i32 * %op48
  %op49 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  2, i32  1
  store i32  0, i32 * %op49
  %op50 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  3, i32  0
  store i32  0, i32 * %op50
  %op51 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  3, i32  1
  store i32  0, i32 * %op51
  %op52 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  0, i32  0
  store i32  1, i32 * %op52
  %op53 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  0, i32  1
  store i32  2, i32 * %op53
  %op54 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  1, i32  0
  store i32  3, i32 * %op54
  %op55 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  2, i32  0
  store i32  5, i32 * %op55
  %op56 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  3, i32  0
  store i32  7, i32 * %op56
  %op57 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  3, i32  1
  store i32  8, i32 * %op57
  %op58 = alloca [4 x [2 x i32 ]]
  %op59 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op43, i32  0, i32  2
  %op60 = getelementptr [2 x i32 ], [2 x i32 ]* %op59, i32  0, i32  1
  %op61 = load i32 , i32 * %op60
  %op62 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op26, i32  0, i32  2
  %op63 = getelementptr [2 x i32 ], [2 x i32 ]* %op62, i32  0, i32  1
  %op64 = load i32 , i32 * %op63
  %op65 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  0, i32  0
  store i32  0, i32 * %op65
  %op66 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  0, i32  1
  store i32  0, i32 * %op66
  %op67 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  1, i32  0
  store i32  0, i32 * %op67
  %op68 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  1, i32  1
  store i32  0, i32 * %op68
  %op69 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  2, i32  0
  store i32  0, i32 * %op69
  %op70 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  2, i32  1
  store i32  0, i32 * %op70
  %op71 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  3, i32  0
  store i32  0, i32 * %op71
  %op72 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  3, i32  1
  store i32  0, i32 * %op72
  %op73 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  0, i32  0
  store i32  %op61, i32 * %op73
  %op74 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  0, i32  1
  store i32  %op64, i32 * %op74
  %op75 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  1, i32  0
  store i32  3, i32 * %op75
  %op76 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  1, i32  1
  store i32  4, i32 * %op76
  %op77 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  2, i32  0
  store i32  5, i32 * %op77
  %op78 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  2, i32  1
  store i32  6, i32 * %op78
  %op79 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  3, i32  0
  store i32  7, i32 * %op79
  %op80 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  3, i32  1
  store i32  8, i32 * %op80
  %op81 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  3
  %op82 = getelementptr [2 x i32 ], [2 x i32 ]* %op81, i32  0, i32  1
  %op83 = load i32 , i32 * %op82
  %op84 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  0
  %op85 = getelementptr [2 x i32 ], [2 x i32 ]* %op84, i32  0, i32  0
  %op86 = load i32 , i32 * %op85
  %op87 = add i32  %op83, %op86
  %op88 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op58, i32  0, i32  0
  %op89 = getelementptr [2 x i32 ], [2 x i32 ]* %op88, i32  0, i32  1
  %op90 = load i32 , i32 * %op89
  %op91 = add i32  %op87, %op90
  %op92 = getelementptr [4 x [2 x i32 ]], [4 x [2 x i32 ]]* %op0, i32  0, i32  2
  %op93 = getelementptr [2 x i32 ], [2 x i32 ]* %op92, i32  0, i32  0
  %op94 = load i32 , i32 * %op93
  %op95 = add i32  %op91, %op94
  ret i32  %op95
}
