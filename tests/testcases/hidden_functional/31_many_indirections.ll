; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/31_many_indirections.sy"

@N = constant i32  100
@M = constant i32  20
@array = global [20 x [100 x i32 ]] zeroinitializer
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
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  0, i32 * %op1
  br label %label2
label2:                                                ; preds = %label_entry, %label147
  %op3 = load i32 , i32 * %op1
  %op4 = load i32 , i32 * @M
  %op5 = icmp slt i32  %op3, %op4
  %op6 = zext i1  %op5 to i32 
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label8, label %label10
label8:                                                ; preds = %label2
  %op9 = alloca i32 
  store i32  0, i32 * %op9
  br label %label133
label10:                                                ; preds = %label2
  %op11 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  0
  %op12 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  1
  %op13 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  2
  %op14 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  3
  %op15 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  4
  %op16 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  5
  %op17 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  6
  %op18 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  7
  %op19 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  8
  %op20 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  9
  %op21 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  10
  %op22 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  11
  %op23 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  12
  %op24 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  13
  %op25 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  14
  %op26 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  15
  %op27 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  16
  %op28 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  17
  %op29 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  18
  %op30 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  19
  %op31 = getelementptr [100 x i32 ], [100 x i32 ]* %op30, i32  0, i32  23
  %op32 = load i32 , i32 * %op31
  %op33 = getelementptr [100 x i32 ], [100 x i32 ]* %op29, i32  0, i32  %op32
  %op34 = load i32 , i32 * %op33
  %op35 = getelementptr [100 x i32 ], [100 x i32 ]* %op28, i32  0, i32  %op34
  %op36 = load i32 , i32 * %op35
  %op37 = getelementptr [100 x i32 ], [100 x i32 ]* %op27, i32  0, i32  %op36
  %op38 = load i32 , i32 * %op37
  %op39 = getelementptr [100 x i32 ], [100 x i32 ]* %op26, i32  0, i32  %op38
  %op40 = load i32 , i32 * %op39
  %op41 = getelementptr [100 x i32 ], [100 x i32 ]* %op25, i32  0, i32  %op40
  %op42 = load i32 , i32 * %op41
  %op43 = getelementptr [100 x i32 ], [100 x i32 ]* %op24, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = getelementptr [100 x i32 ], [100 x i32 ]* %op23, i32  0, i32  %op44
  %op46 = load i32 , i32 * %op45
  %op47 = getelementptr [100 x i32 ], [100 x i32 ]* %op22, i32  0, i32  %op46
  %op48 = load i32 , i32 * %op47
  %op49 = getelementptr [100 x i32 ], [100 x i32 ]* %op21, i32  0, i32  %op48
  %op50 = load i32 , i32 * %op49
  %op51 = getelementptr [100 x i32 ], [100 x i32 ]* %op20, i32  0, i32  %op50
  %op52 = load i32 , i32 * %op51
  %op53 = getelementptr [100 x i32 ], [100 x i32 ]* %op19, i32  0, i32  %op52
  %op54 = load i32 , i32 * %op53
  %op55 = getelementptr [100 x i32 ], [100 x i32 ]* %op18, i32  0, i32  %op54
  %op56 = load i32 , i32 * %op55
  %op57 = getelementptr [100 x i32 ], [100 x i32 ]* %op17, i32  0, i32  %op56
  %op58 = load i32 , i32 * %op57
  %op59 = getelementptr [100 x i32 ], [100 x i32 ]* %op16, i32  0, i32  %op58
  %op60 = load i32 , i32 * %op59
  %op61 = getelementptr [100 x i32 ], [100 x i32 ]* %op15, i32  0, i32  %op60
  %op62 = load i32 , i32 * %op61
  %op63 = getelementptr [100 x i32 ], [100 x i32 ]* %op14, i32  0, i32  %op62
  %op64 = load i32 , i32 * %op63
  %op65 = getelementptr [100 x i32 ], [100 x i32 ]* %op13, i32  0, i32  %op64
  %op66 = load i32 , i32 * %op65
  %op67 = getelementptr [100 x i32 ], [100 x i32 ]* %op12, i32  0, i32  %op66
  %op68 = load i32 , i32 * %op67
  %op69 = getelementptr [100 x i32 ], [100 x i32 ]* %op11, i32  0, i32  %op68
  %op70 = load i32 , i32 * %op69
  %op71 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  19
  %op72 = getelementptr [100 x i32 ], [100 x i32 ]* %op71, i32  0, i32  18
  %op73 = load i32 , i32 * %op72
  %op74 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op73
  %op75 = getelementptr [100 x i32 ], [100 x i32 ]* %op74, i32  0, i32  17
  %op76 = load i32 , i32 * %op75
  %op77 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op76
  %op78 = getelementptr [100 x i32 ], [100 x i32 ]* %op77, i32  0, i32  16
  %op79 = load i32 , i32 * %op78
  %op80 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op79
  %op81 = getelementptr [100 x i32 ], [100 x i32 ]* %op80, i32  0, i32  15
  %op82 = load i32 , i32 * %op81
  %op83 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op82
  %op84 = getelementptr [100 x i32 ], [100 x i32 ]* %op83, i32  0, i32  14
  %op85 = load i32 , i32 * %op84
  %op86 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op85
  %op87 = getelementptr [100 x i32 ], [100 x i32 ]* %op86, i32  0, i32  13
  %op88 = load i32 , i32 * %op87
  %op89 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op88
  %op90 = getelementptr [100 x i32 ], [100 x i32 ]* %op89, i32  0, i32  12
  %op91 = load i32 , i32 * %op90
  %op92 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op91
  %op93 = getelementptr [100 x i32 ], [100 x i32 ]* %op92, i32  0, i32  11
  %op94 = load i32 , i32 * %op93
  %op95 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op94
  %op96 = getelementptr [100 x i32 ], [100 x i32 ]* %op95, i32  0, i32  10
  %op97 = load i32 , i32 * %op96
  %op98 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op97
  %op99 = getelementptr [100 x i32 ], [100 x i32 ]* %op98, i32  0, i32  9
  %op100 = load i32 , i32 * %op99
  %op101 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op100
  %op102 = getelementptr [100 x i32 ], [100 x i32 ]* %op101, i32  0, i32  8
  %op103 = load i32 , i32 * %op102
  %op104 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op103
  %op105 = getelementptr [100 x i32 ], [100 x i32 ]* %op104, i32  0, i32  7
  %op106 = load i32 , i32 * %op105
  %op107 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op106
  %op108 = getelementptr [100 x i32 ], [100 x i32 ]* %op107, i32  0, i32  6
  %op109 = load i32 , i32 * %op108
  %op110 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op109
  %op111 = getelementptr [100 x i32 ], [100 x i32 ]* %op110, i32  0, i32  5
  %op112 = load i32 , i32 * %op111
  %op113 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op112
  %op114 = getelementptr [100 x i32 ], [100 x i32 ]* %op113, i32  0, i32  4
  %op115 = load i32 , i32 * %op114
  %op116 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op115
  %op117 = getelementptr [100 x i32 ], [100 x i32 ]* %op116, i32  0, i32  3
  %op118 = load i32 , i32 * %op117
  %op119 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op118
  %op120 = getelementptr [100 x i32 ], [100 x i32 ]* %op119, i32  0, i32  2
  %op121 = load i32 , i32 * %op120
  %op122 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op121
  %op123 = getelementptr [100 x i32 ], [100 x i32 ]* %op122, i32  0, i32  1
  %op124 = load i32 , i32 * %op123
  %op125 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op124
  %op126 = getelementptr [100 x i32 ], [100 x i32 ]* %op125, i32  0, i32  0
  %op127 = load i32 , i32 * %op126
  %op128 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op127
  %op129 = getelementptr [100 x i32 ], [100 x i32 ]* %op128, i32  0, i32  56
  %op130 = load i32 , i32 * %op129
  %op131 = add i32  %op70, %op130
  store i32  %op131, i32 * %op0
  %op132 = load i32 , i32 * %op0
  call void @putint(i32  %op132)
  ret i32  0
label133:                                                ; preds = %label8, %label139
  %op134 = load i32 , i32 * %op9
  %op135 = load i32 , i32 * @N
  %op136 = icmp slt i32  %op134, %op135
  %op137 = zext i1  %op136 to i32 
  %op138 = icmp ne i32  %op137, 0
  br i1  %op138, label %label139, label %label147
label139:                                                ; preds = %label133
  %op140 = load i32 , i32 * %op9
  %op141 = load i32 , i32 * %op1
  %op142 = getelementptr [20 x [100 x i32 ]], [20 x [100 x i32 ]]* @array, i32  0, i32  %op141
  %op143 = load i32 , i32 * %op9
  %op144 = getelementptr [100 x i32 ], [100 x i32 ]* %op142, i32  0, i32  %op143
  store i32  %op140, i32 * %op144
  %op145 = load i32 , i32 * %op9
  %op146 = add i32  %op145, 1
  store i32  %op146, i32 * %op9
  br label %label133
label147:                                                ; preds = %label133
  %op148 = load i32 , i32 * %op1
  %op149 = add i32  %op148, 1
  store i32  %op149, i32 * %op1
  br label %label2
}
