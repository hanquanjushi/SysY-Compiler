; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/func/77_substr.sy"

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

define i32  @MAX(i32  %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 
  store i32  %arg0, i32 * %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op3
  %op6 = icmp eq i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label11
label9:                                                ; preds = %label_entry
  %op10 = load i32 , i32 * %op2
  ret i32  %op10
label11:                                                ; preds = %label_entry
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 , i32 * %op3
  %op14 = icmp sgt i32  %op12, %op13
  %op15 = zext i1  %op14 to i32 
  %op16 = icmp ne i32  %op15, 0
  br i1  %op16, label %label17, label %label19
label17:                                                ; preds = %label11
  %op18 = load i32 , i32 * %op2
  ret i32  %op18
label19:                                                ; preds = %label11
  %op20 = load i32 , i32 * %op3
  ret i32  %op20
}
define i32  @max_sum_nonadjacent(i32 * %arg0, i32  %arg1) {
label_entry:
  %op2 = alloca i32 *
  store i32 * %arg0, i32 ** %op2
  %op3 = alloca i32 
  store i32  %arg1, i32 * %op3
  %op4 = alloca [16 x i32 ]
  %op5 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  0
  store i32  0, i32 * %op5
  %op6 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  1
  store i32  0, i32 * %op6
  %op7 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  2
  store i32  0, i32 * %op7
  %op8 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  3
  store i32  0, i32 * %op8
  %op9 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  4
  store i32  0, i32 * %op9
  %op10 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  5
  store i32  0, i32 * %op10
  %op11 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  6
  store i32  0, i32 * %op11
  %op12 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  7
  store i32  0, i32 * %op12
  %op13 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  8
  store i32  0, i32 * %op13
  %op14 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  9
  store i32  0, i32 * %op14
  %op15 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  10
  store i32  0, i32 * %op15
  %op16 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  11
  store i32  0, i32 * %op16
  %op17 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  12
  store i32  0, i32 * %op17
  %op18 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  13
  store i32  0, i32 * %op18
  %op19 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  14
  store i32  0, i32 * %op19
  %op20 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  15
  store i32  0, i32 * %op20
  %op21 = load i32 *, i32 ** %op2
  %op22 = getelementptr i32 , i32 * %op21, i32  0
  %op23 = load i32 , i32 * %op22
  %op24 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  0
  store i32  %op23, i32 * %op24
  %op25 = load i32 *, i32 ** %op2
  %op26 = getelementptr i32 , i32 * %op25, i32  0
  %op27 = load i32 , i32 * %op26
  %op28 = load i32 *, i32 ** %op2
  %op29 = getelementptr i32 , i32 * %op28, i32  1
  %op30 = load i32 , i32 * %op29
  %op31 = call i32  @MAX(i32  %op27, i32  %op30)
  %op32 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  1
  store i32  %op31, i32 * %op32
  %op33 = alloca i32 
  store i32  2, i32 * %op33
  br label %label34
label34:                                                ; preds = %label_entry, %label40
  %op35 = load i32 , i32 * %op33
  %op36 = load i32 , i32 * %op3
  %op37 = icmp slt i32  %op35, %op36
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label40, label %label59
label40:                                                ; preds = %label34
  %op41 = load i32 , i32 * %op33
  %op42 = sub i32  %op41, 2
  %op43 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = load i32 , i32 * %op33
  %op46 = load i32 *, i32 ** %op2
  %op47 = getelementptr i32 , i32 * %op46, i32  %op45
  %op48 = load i32 , i32 * %op47
  %op49 = add i32  %op44, %op48
  %op50 = load i32 , i32 * %op33
  %op51 = sub i32  %op50, 1
  %op52 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op51
  %op53 = load i32 , i32 * %op52
  %op54 = call i32  @MAX(i32  %op49, i32  %op53)
  %op55 = load i32 , i32 * %op33
  %op56 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op55
  store i32  %op54, i32 * %op56
  %op57 = load i32 , i32 * %op33
  %op58 = add i32  %op57, 1
  store i32  %op58, i32 * %op33
  br label %label34
label59:                                                ; preds = %label34
  %op60 = load i32 , i32 * %op3
  %op61 = sub i32  %op60, 1
  %op62 = getelementptr [16 x i32 ], [16 x i32 ]* %op4, i32  0, i32  %op61
  %op63 = load i32 , i32 * %op62
  ret i32  %op63
}
define i32  @longest_common_subseq(i32 * %arg0, i32  %arg1, i32 * %arg2, i32  %arg3) {
label_entry:
  %op4 = alloca i32 *
  store i32 * %arg0, i32 ** %op4
  %op5 = alloca i32 
  store i32  %arg1, i32 * %op5
  %op6 = alloca i32 *
  store i32 * %arg2, i32 ** %op6
  %op7 = alloca i32 
  store i32  %arg3, i32 * %op7
  %op8 = alloca [16 x [16 x i32 ]]
  %op9 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  0
  store i32  0, i32 * %op9
  %op10 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  1
  store i32  0, i32 * %op10
  %op11 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  2
  store i32  0, i32 * %op11
  %op12 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  3
  store i32  0, i32 * %op12
  %op13 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  4
  store i32  0, i32 * %op13
  %op14 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  5
  store i32  0, i32 * %op14
  %op15 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  6
  store i32  0, i32 * %op15
  %op16 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  7
  store i32  0, i32 * %op16
  %op17 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  8
  store i32  0, i32 * %op17
  %op18 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  9
  store i32  0, i32 * %op18
  %op19 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  10
  store i32  0, i32 * %op19
  %op20 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  11
  store i32  0, i32 * %op20
  %op21 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  12
  store i32  0, i32 * %op21
  %op22 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  13
  store i32  0, i32 * %op22
  %op23 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  14
  store i32  0, i32 * %op23
  %op24 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  0, i32  15
  store i32  0, i32 * %op24
  %op25 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  0
  store i32  0, i32 * %op25
  %op26 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  1
  store i32  0, i32 * %op26
  %op27 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  2
  store i32  0, i32 * %op27
  %op28 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  3
  store i32  0, i32 * %op28
  %op29 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  4
  store i32  0, i32 * %op29
  %op30 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  5
  store i32  0, i32 * %op30
  %op31 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  6
  store i32  0, i32 * %op31
  %op32 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  7
  store i32  0, i32 * %op32
  %op33 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  8
  store i32  0, i32 * %op33
  %op34 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  9
  store i32  0, i32 * %op34
  %op35 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  10
  store i32  0, i32 * %op35
  %op36 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  11
  store i32  0, i32 * %op36
  %op37 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  12
  store i32  0, i32 * %op37
  %op38 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  13
  store i32  0, i32 * %op38
  %op39 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  14
  store i32  0, i32 * %op39
  %op40 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  1, i32  15
  store i32  0, i32 * %op40
  %op41 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  0
  store i32  0, i32 * %op41
  %op42 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  1
  store i32  0, i32 * %op42
  %op43 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  2
  store i32  0, i32 * %op43
  %op44 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  3
  store i32  0, i32 * %op44
  %op45 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  4
  store i32  0, i32 * %op45
  %op46 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  5
  store i32  0, i32 * %op46
  %op47 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  6
  store i32  0, i32 * %op47
  %op48 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  7
  store i32  0, i32 * %op48
  %op49 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  8
  store i32  0, i32 * %op49
  %op50 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  9
  store i32  0, i32 * %op50
  %op51 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  10
  store i32  0, i32 * %op51
  %op52 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  11
  store i32  0, i32 * %op52
  %op53 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  12
  store i32  0, i32 * %op53
  %op54 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  13
  store i32  0, i32 * %op54
  %op55 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  14
  store i32  0, i32 * %op55
  %op56 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  2, i32  15
  store i32  0, i32 * %op56
  %op57 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  0
  store i32  0, i32 * %op57
  %op58 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  1
  store i32  0, i32 * %op58
  %op59 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  2
  store i32  0, i32 * %op59
  %op60 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  3
  store i32  0, i32 * %op60
  %op61 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  4
  store i32  0, i32 * %op61
  %op62 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  5
  store i32  0, i32 * %op62
  %op63 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  6
  store i32  0, i32 * %op63
  %op64 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  7
  store i32  0, i32 * %op64
  %op65 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  8
  store i32  0, i32 * %op65
  %op66 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  9
  store i32  0, i32 * %op66
  %op67 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  10
  store i32  0, i32 * %op67
  %op68 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  11
  store i32  0, i32 * %op68
  %op69 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  12
  store i32  0, i32 * %op69
  %op70 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  13
  store i32  0, i32 * %op70
  %op71 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  14
  store i32  0, i32 * %op71
  %op72 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  3, i32  15
  store i32  0, i32 * %op72
  %op73 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  0
  store i32  0, i32 * %op73
  %op74 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  1
  store i32  0, i32 * %op74
  %op75 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  2
  store i32  0, i32 * %op75
  %op76 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  3
  store i32  0, i32 * %op76
  %op77 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  4
  store i32  0, i32 * %op77
  %op78 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  5
  store i32  0, i32 * %op78
  %op79 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  6
  store i32  0, i32 * %op79
  %op80 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  7
  store i32  0, i32 * %op80
  %op81 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  8
  store i32  0, i32 * %op81
  %op82 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  9
  store i32  0, i32 * %op82
  %op83 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  10
  store i32  0, i32 * %op83
  %op84 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  11
  store i32  0, i32 * %op84
  %op85 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  12
  store i32  0, i32 * %op85
  %op86 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  13
  store i32  0, i32 * %op86
  %op87 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  14
  store i32  0, i32 * %op87
  %op88 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  4, i32  15
  store i32  0, i32 * %op88
  %op89 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  0
  store i32  0, i32 * %op89
  %op90 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  1
  store i32  0, i32 * %op90
  %op91 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  2
  store i32  0, i32 * %op91
  %op92 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  3
  store i32  0, i32 * %op92
  %op93 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  4
  store i32  0, i32 * %op93
  %op94 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  5
  store i32  0, i32 * %op94
  %op95 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  6
  store i32  0, i32 * %op95
  %op96 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  7
  store i32  0, i32 * %op96
  %op97 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  8
  store i32  0, i32 * %op97
  %op98 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  9
  store i32  0, i32 * %op98
  %op99 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  10
  store i32  0, i32 * %op99
  %op100 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  11
  store i32  0, i32 * %op100
  %op101 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  12
  store i32  0, i32 * %op101
  %op102 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  13
  store i32  0, i32 * %op102
  %op103 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  14
  store i32  0, i32 * %op103
  %op104 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  5, i32  15
  store i32  0, i32 * %op104
  %op105 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  0
  store i32  0, i32 * %op105
  %op106 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  1
  store i32  0, i32 * %op106
  %op107 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  2
  store i32  0, i32 * %op107
  %op108 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  3
  store i32  0, i32 * %op108
  %op109 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  4
  store i32  0, i32 * %op109
  %op110 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  5
  store i32  0, i32 * %op110
  %op111 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  6
  store i32  0, i32 * %op111
  %op112 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  7
  store i32  0, i32 * %op112
  %op113 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  8
  store i32  0, i32 * %op113
  %op114 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  9
  store i32  0, i32 * %op114
  %op115 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  10
  store i32  0, i32 * %op115
  %op116 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  11
  store i32  0, i32 * %op116
  %op117 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  12
  store i32  0, i32 * %op117
  %op118 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  13
  store i32  0, i32 * %op118
  %op119 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  14
  store i32  0, i32 * %op119
  %op120 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  6, i32  15
  store i32  0, i32 * %op120
  %op121 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  0
  store i32  0, i32 * %op121
  %op122 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  1
  store i32  0, i32 * %op122
  %op123 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  2
  store i32  0, i32 * %op123
  %op124 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  3
  store i32  0, i32 * %op124
  %op125 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  4
  store i32  0, i32 * %op125
  %op126 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  5
  store i32  0, i32 * %op126
  %op127 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  6
  store i32  0, i32 * %op127
  %op128 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  7
  store i32  0, i32 * %op128
  %op129 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  8
  store i32  0, i32 * %op129
  %op130 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  9
  store i32  0, i32 * %op130
  %op131 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  10
  store i32  0, i32 * %op131
  %op132 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  11
  store i32  0, i32 * %op132
  %op133 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  12
  store i32  0, i32 * %op133
  %op134 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  13
  store i32  0, i32 * %op134
  %op135 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  14
  store i32  0, i32 * %op135
  %op136 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  7, i32  15
  store i32  0, i32 * %op136
  %op137 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  0
  store i32  0, i32 * %op137
  %op138 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  1
  store i32  0, i32 * %op138
  %op139 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  2
  store i32  0, i32 * %op139
  %op140 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  3
  store i32  0, i32 * %op140
  %op141 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  4
  store i32  0, i32 * %op141
  %op142 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  5
  store i32  0, i32 * %op142
  %op143 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  6
  store i32  0, i32 * %op143
  %op144 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  7
  store i32  0, i32 * %op144
  %op145 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  8
  store i32  0, i32 * %op145
  %op146 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  9
  store i32  0, i32 * %op146
  %op147 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  10
  store i32  0, i32 * %op147
  %op148 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  11
  store i32  0, i32 * %op148
  %op149 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  12
  store i32  0, i32 * %op149
  %op150 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  13
  store i32  0, i32 * %op150
  %op151 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  14
  store i32  0, i32 * %op151
  %op152 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  8, i32  15
  store i32  0, i32 * %op152
  %op153 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  0
  store i32  0, i32 * %op153
  %op154 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  1
  store i32  0, i32 * %op154
  %op155 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  2
  store i32  0, i32 * %op155
  %op156 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  3
  store i32  0, i32 * %op156
  %op157 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  4
  store i32  0, i32 * %op157
  %op158 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  5
  store i32  0, i32 * %op158
  %op159 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  6
  store i32  0, i32 * %op159
  %op160 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  7
  store i32  0, i32 * %op160
  %op161 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  8
  store i32  0, i32 * %op161
  %op162 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  9
  store i32  0, i32 * %op162
  %op163 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  10
  store i32  0, i32 * %op163
  %op164 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  11
  store i32  0, i32 * %op164
  %op165 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  12
  store i32  0, i32 * %op165
  %op166 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  13
  store i32  0, i32 * %op166
  %op167 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  14
  store i32  0, i32 * %op167
  %op168 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  9, i32  15
  store i32  0, i32 * %op168
  %op169 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  0
  store i32  0, i32 * %op169
  %op170 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  1
  store i32  0, i32 * %op170
  %op171 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  2
  store i32  0, i32 * %op171
  %op172 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  3
  store i32  0, i32 * %op172
  %op173 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  4
  store i32  0, i32 * %op173
  %op174 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  5
  store i32  0, i32 * %op174
  %op175 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  6
  store i32  0, i32 * %op175
  %op176 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  7
  store i32  0, i32 * %op176
  %op177 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  8
  store i32  0, i32 * %op177
  %op178 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  9
  store i32  0, i32 * %op178
  %op179 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  10
  store i32  0, i32 * %op179
  %op180 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  11
  store i32  0, i32 * %op180
  %op181 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  12
  store i32  0, i32 * %op181
  %op182 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  13
  store i32  0, i32 * %op182
  %op183 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  14
  store i32  0, i32 * %op183
  %op184 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  10, i32  15
  store i32  0, i32 * %op184
  %op185 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  0
  store i32  0, i32 * %op185
  %op186 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  1
  store i32  0, i32 * %op186
  %op187 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  2
  store i32  0, i32 * %op187
  %op188 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  3
  store i32  0, i32 * %op188
  %op189 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  4
  store i32  0, i32 * %op189
  %op190 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  5
  store i32  0, i32 * %op190
  %op191 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  6
  store i32  0, i32 * %op191
  %op192 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  7
  store i32  0, i32 * %op192
  %op193 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  8
  store i32  0, i32 * %op193
  %op194 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  9
  store i32  0, i32 * %op194
  %op195 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  10
  store i32  0, i32 * %op195
  %op196 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  11
  store i32  0, i32 * %op196
  %op197 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  12
  store i32  0, i32 * %op197
  %op198 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  13
  store i32  0, i32 * %op198
  %op199 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  14
  store i32  0, i32 * %op199
  %op200 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  11, i32  15
  store i32  0, i32 * %op200
  %op201 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  0
  store i32  0, i32 * %op201
  %op202 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  1
  store i32  0, i32 * %op202
  %op203 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  2
  store i32  0, i32 * %op203
  %op204 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  3
  store i32  0, i32 * %op204
  %op205 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  4
  store i32  0, i32 * %op205
  %op206 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  5
  store i32  0, i32 * %op206
  %op207 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  6
  store i32  0, i32 * %op207
  %op208 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  7
  store i32  0, i32 * %op208
  %op209 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  8
  store i32  0, i32 * %op209
  %op210 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  9
  store i32  0, i32 * %op210
  %op211 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  10
  store i32  0, i32 * %op211
  %op212 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  11
  store i32  0, i32 * %op212
  %op213 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  12
  store i32  0, i32 * %op213
  %op214 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  13
  store i32  0, i32 * %op214
  %op215 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  14
  store i32  0, i32 * %op215
  %op216 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  12, i32  15
  store i32  0, i32 * %op216
  %op217 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  0
  store i32  0, i32 * %op217
  %op218 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  1
  store i32  0, i32 * %op218
  %op219 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  2
  store i32  0, i32 * %op219
  %op220 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  3
  store i32  0, i32 * %op220
  %op221 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  4
  store i32  0, i32 * %op221
  %op222 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  5
  store i32  0, i32 * %op222
  %op223 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  6
  store i32  0, i32 * %op223
  %op224 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  7
  store i32  0, i32 * %op224
  %op225 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  8
  store i32  0, i32 * %op225
  %op226 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  9
  store i32  0, i32 * %op226
  %op227 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  10
  store i32  0, i32 * %op227
  %op228 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  11
  store i32  0, i32 * %op228
  %op229 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  12
  store i32  0, i32 * %op229
  %op230 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  13
  store i32  0, i32 * %op230
  %op231 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  14
  store i32  0, i32 * %op231
  %op232 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  13, i32  15
  store i32  0, i32 * %op232
  %op233 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  0
  store i32  0, i32 * %op233
  %op234 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  1
  store i32  0, i32 * %op234
  %op235 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  2
  store i32  0, i32 * %op235
  %op236 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  3
  store i32  0, i32 * %op236
  %op237 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  4
  store i32  0, i32 * %op237
  %op238 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  5
  store i32  0, i32 * %op238
  %op239 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  6
  store i32  0, i32 * %op239
  %op240 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  7
  store i32  0, i32 * %op240
  %op241 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  8
  store i32  0, i32 * %op241
  %op242 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  9
  store i32  0, i32 * %op242
  %op243 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  10
  store i32  0, i32 * %op243
  %op244 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  11
  store i32  0, i32 * %op244
  %op245 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  12
  store i32  0, i32 * %op245
  %op246 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  13
  store i32  0, i32 * %op246
  %op247 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  14
  store i32  0, i32 * %op247
  %op248 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  14, i32  15
  store i32  0, i32 * %op248
  %op249 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  0
  store i32  0, i32 * %op249
  %op250 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  1
  store i32  0, i32 * %op250
  %op251 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  2
  store i32  0, i32 * %op251
  %op252 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  3
  store i32  0, i32 * %op252
  %op253 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  4
  store i32  0, i32 * %op253
  %op254 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  5
  store i32  0, i32 * %op254
  %op255 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  6
  store i32  0, i32 * %op255
  %op256 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  7
  store i32  0, i32 * %op256
  %op257 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  8
  store i32  0, i32 * %op257
  %op258 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  9
  store i32  0, i32 * %op258
  %op259 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  10
  store i32  0, i32 * %op259
  %op260 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  11
  store i32  0, i32 * %op260
  %op261 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  12
  store i32  0, i32 * %op261
  %op262 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  13
  store i32  0, i32 * %op262
  %op263 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  14
  store i32  0, i32 * %op263
  %op264 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  15, i32  15
  store i32  0, i32 * %op264
  %op265 = alloca i32 
  %op266 = alloca i32 
  store i32  1, i32 * %op266
  br label %label267
label267:                                                ; preds = %label_entry, %label300
  %op268 = load i32 , i32 * %op266
  %op269 = load i32 , i32 * %op5
  %op270 = icmp sle i32  %op268, %op269
  %op271 = zext i1  %op270 to i32 
  %op272 = icmp ne i32  %op271, 0
  br i1  %op272, label %label273, label %label274
label273:                                                ; preds = %label267
  store i32  1, i32 * %op265
  br label %label280
label274:                                                ; preds = %label267
  %op275 = load i32 , i32 * %op5
  %op276 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op275
  %op277 = load i32 , i32 * %op7
  %op278 = getelementptr [16 x i32 ], [16 x i32 ]* %op276, i32  0, i32  %op277
  %op279 = load i32 , i32 * %op278
  ret i32  %op279
label280:                                                ; preds = %label273, %label334
  %op281 = load i32 , i32 * %op265
  %op282 = load i32 , i32 * %op7
  %op283 = icmp sle i32  %op281, %op282
  %op284 = zext i1  %op283 to i32 
  %op285 = icmp ne i32  %op284, 0
  br i1  %op285, label %label286, label %label300
label286:                                                ; preds = %label280
  %op287 = load i32 , i32 * %op266
  %op288 = sub i32  %op287, 1
  %op289 = load i32 *, i32 ** %op4
  %op290 = getelementptr i32 , i32 * %op289, i32  %op288
  %op291 = load i32 , i32 * %op290
  %op292 = load i32 , i32 * %op265
  %op293 = sub i32  %op292, 1
  %op294 = load i32 *, i32 ** %op6
  %op295 = getelementptr i32 , i32 * %op294, i32  %op293
  %op296 = load i32 , i32 * %op295
  %op297 = icmp eq i32  %op291, %op296
  %op298 = zext i1  %op297 to i32 
  %op299 = icmp ne i32  %op298, 0
  br i1  %op299, label %label303, label %label316
label300:                                                ; preds = %label280
  %op301 = load i32 , i32 * %op266
  %op302 = add i32  %op301, 1
  store i32  %op302, i32 * %op266
  br label %label267
label303:                                                ; preds = %label286
  %op304 = load i32 , i32 * %op266
  %op305 = sub i32  %op304, 1
  %op306 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op305
  %op307 = load i32 , i32 * %op265
  %op308 = sub i32  %op307, 1
  %op309 = getelementptr [16 x i32 ], [16 x i32 ]* %op306, i32  0, i32  %op308
  %op310 = load i32 , i32 * %op309
  %op311 = add i32  %op310, 1
  %op312 = load i32 , i32 * %op266
  %op313 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op312
  %op314 = load i32 , i32 * %op265
  %op315 = getelementptr [16 x i32 ], [16 x i32 ]* %op313, i32  0, i32  %op314
  store i32  %op311, i32 * %op315
  br label %label334
label316:                                                ; preds = %label286
  %op317 = load i32 , i32 * %op266
  %op318 = sub i32  %op317, 1
  %op319 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op318
  %op320 = load i32 , i32 * %op265
  %op321 = getelementptr [16 x i32 ], [16 x i32 ]* %op319, i32  0, i32  %op320
  %op322 = load i32 , i32 * %op321
  %op323 = load i32 , i32 * %op266
  %op324 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op323
  %op325 = load i32 , i32 * %op265
  %op326 = sub i32  %op325, 1
  %op327 = getelementptr [16 x i32 ], [16 x i32 ]* %op324, i32  0, i32  %op326
  %op328 = load i32 , i32 * %op327
  %op329 = call i32  @MAX(i32  %op322, i32  %op328)
  %op330 = load i32 , i32 * %op266
  %op331 = getelementptr [16 x [16 x i32 ]], [16 x [16 x i32 ]]* %op8, i32  0, i32  %op330
  %op332 = load i32 , i32 * %op265
  %op333 = getelementptr [16 x i32 ], [16 x i32 ]* %op331, i32  0, i32  %op332
  store i32  %op329, i32 * %op333
  br label %label334
label334:                                                ; preds = %label303, %label316
  %op335 = load i32 , i32 * %op265
  %op336 = add i32  %op335, 1
  store i32  %op336, i32 * %op265
  br label %label280
}
define i32  @main() {
label_entry:
  %op0 = alloca [15 x i32 ]
  %op1 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
  store i32  0, i32 * %op1
  %op2 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  1
  store i32  0, i32 * %op2
  %op3 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  2
  store i32  0, i32 * %op3
  %op4 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  3
  store i32  0, i32 * %op4
  %op5 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  4
  store i32  0, i32 * %op5
  %op6 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  5
  store i32  0, i32 * %op6
  %op7 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  6
  store i32  0, i32 * %op7
  %op8 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  7
  store i32  0, i32 * %op8
  %op9 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  8
  store i32  0, i32 * %op9
  %op10 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  9
  store i32  0, i32 * %op10
  %op11 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  10
  store i32  0, i32 * %op11
  %op12 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  11
  store i32  0, i32 * %op12
  %op13 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  12
  store i32  0, i32 * %op13
  %op14 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  13
  store i32  0, i32 * %op14
  %op15 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  14
  store i32  0, i32 * %op15
  %op16 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
  store i32  8, i32 * %op16
  %op17 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  1
  store i32  7, i32 * %op17
  %op18 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  2
  store i32  4, i32 * %op18
  %op19 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  3
  store i32  1, i32 * %op19
  %op20 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  4
  store i32  2, i32 * %op20
  %op21 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  5
  store i32  7, i32 * %op21
  %op22 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  6
  store i32  0, i32 * %op22
  %op23 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  7
  store i32  1, i32 * %op23
  %op24 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  8
  store i32  9, i32 * %op24
  %op25 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  9
  store i32  3, i32 * %op25
  %op26 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  10
  store i32  4, i32 * %op26
  %op27 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  11
  store i32  8, i32 * %op27
  %op28 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  12
  store i32  3, i32 * %op28
  %op29 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  13
  store i32  7, i32 * %op29
  %op30 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  14
  store i32  0, i32 * %op30
  %op31 = alloca [13 x i32 ]
  %op32 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  0
  store i32  0, i32 * %op32
  %op33 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  1
  store i32  0, i32 * %op33
  %op34 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  2
  store i32  0, i32 * %op34
  %op35 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  3
  store i32  0, i32 * %op35
  %op36 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  4
  store i32  0, i32 * %op36
  %op37 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  5
  store i32  0, i32 * %op37
  %op38 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  6
  store i32  0, i32 * %op38
  %op39 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  7
  store i32  0, i32 * %op39
  %op40 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  8
  store i32  0, i32 * %op40
  %op41 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  9
  store i32  0, i32 * %op41
  %op42 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  10
  store i32  0, i32 * %op42
  %op43 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  11
  store i32  0, i32 * %op43
  %op44 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  12
  store i32  0, i32 * %op44
  %op45 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  0
  store i32  3, i32 * %op45
  %op46 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  1
  store i32  9, i32 * %op46
  %op47 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  2
  store i32  7, i32 * %op47
  %op48 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  3
  store i32  1, i32 * %op48
  %op49 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  4
  store i32  4, i32 * %op49
  %op50 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  5
  store i32  2, i32 * %op50
  %op51 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  6
  store i32  4, i32 * %op51
  %op52 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  7
  store i32  3, i32 * %op52
  %op53 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  8
  store i32  6, i32 * %op53
  %op54 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  9
  store i32  8, i32 * %op54
  %op55 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  10
  store i32  0, i32 * %op55
  %op56 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  11
  store i32  1, i32 * %op56
  %op57 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  12
  store i32  5, i32 * %op57
  %op58 = alloca i32 
  %op59 = alloca i32 
  %op60 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
  %op61 = call i32  @max_sum_nonadjacent(i32 * %op60, i32  15)
  call void @putint(i32  %op61)
  call void @putch(i32  10)
  %op62 = getelementptr [15 x i32 ], [15 x i32 ]* %op0, i32  0, i32  0
  %op63 = getelementptr [13 x i32 ], [13 x i32 ]* %op31, i32  0, i32  0
  %op64 = call i32  @longest_common_subseq(i32 * %op62, i32  15, i32 * %op63, i32  13)
  call void @putint(i32  %op64)
  call void @putch(i32  10)
  ret i32  0
}
