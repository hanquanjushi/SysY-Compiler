; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/functional/68_brainfk.sy"

@TAPE_LEN = constant i32  65536
@BUFFER_LEN = constant i32  32768
@tape = global [65536 x i32 ] zeroinitializer
@program = global [32768 x i32 ] zeroinitializer
@ptr = global i32  0
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

define void @read_program() {
label_entry:
  %op0 = alloca i32 
  %op1 = call i32  @getint()
  store i32  %op1, i32 * %op0
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  br label %label3
label3:                                                ; preds = %label_entry, %label9
  %op4 = load i32 , i32 * %op2
  %op5 = load i32 , i32 * %op0
  %op6 = icmp slt i32  %op4, %op5
  %op7 = zext i1  %op6 to i32 
  %op8 = icmp ne i32  %op7, 0
  br i1  %op8, label %label9, label %label15
label9:                                                ; preds = %label3
  %op10 = call i32  @getch()
  %op11 = load i32 , i32 * %op2
  %op12 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op11
  store i32  %op10, i32 * %op12
  %op13 = load i32 , i32 * %op2
  %op14 = add i32  %op13, 1
  store i32  %op14, i32 * %op2
  br label %label3
label15:                                                ; preds = %label3
  %op16 = load i32 , i32 * %op2
  %op17 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  %op16
  store i32  0, i32 * %op17
  ret void
}
define void @interpret(i32 * %arg0) {
label_entry:
  %op1 = alloca i32 *
  store i32 * %arg0, i32 ** %op1
  %op2 = alloca i32 
  store i32  0, i32 * %op2
  %op3 = alloca i32 
  %op4 = alloca i32 
  br label %label5
label5:                                                ; preds = %label_entry, %label29
  %op6 = load i32 , i32 * %op2
  %op7 = load i32 *, i32 ** %op1
  %op8 = getelementptr i32 , i32 * %op7, i32  %op6
  %op9 = load i32 , i32 * %op8
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label11, label %label20
label11:                                                ; preds = %label5
  %op12 = load i32 , i32 * %op2
  %op13 = load i32 *, i32 ** %op1
  %op14 = getelementptr i32 , i32 * %op13, i32  %op12
  %op15 = load i32 , i32 * %op14
  store i32  %op15, i32 * %op4
  %op16 = load i32 , i32 * %op4
  %op17 = icmp eq i32  %op16, 62
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label21, label %label24
label20:                                                ; preds = %label5
  ret void
label21:                                                ; preds = %label11
  %op22 = load i32 , i32 * @ptr
  %op23 = add i32  %op22, 1
  store i32  %op23, i32 * @ptr
  br label %label29
label24:                                                ; preds = %label11
  %op25 = load i32 , i32 * %op4
  %op26 = icmp eq i32  %op25, 60
  %op27 = zext i1  %op26 to i32 
  %op28 = icmp ne i32  %op27, 0
  br i1  %op28, label %label32, label %label35
label29:                                                ; preds = %label21, %label40
  %op30 = load i32 , i32 * %op2
  %op31 = add i32  %op30, 1
  store i32  %op31, i32 * %op2
  br label %label5
label32:                                                ; preds = %label24
  %op33 = load i32 , i32 * @ptr
  %op34 = sub i32  %op33, 1
  store i32  %op34, i32 * @ptr
  br label %label40
label35:                                                ; preds = %label24
  %op36 = load i32 , i32 * %op4
  %op37 = icmp eq i32  %op36, 43
  %op38 = zext i1  %op37 to i32 
  %op39 = icmp ne i32  %op38, 0
  br i1  %op39, label %label41, label %label48
label40:                                                ; preds = %label32, %label53
  br label %label29
label41:                                                ; preds = %label35
  %op42 = load i32 , i32 * @ptr
  %op43 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op42
  %op44 = load i32 , i32 * %op43
  %op45 = add i32  %op44, 1
  %op46 = load i32 , i32 * @ptr
  %op47 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op46
  store i32  %op45, i32 * %op47
  br label %label53
label48:                                                ; preds = %label35
  %op49 = load i32 , i32 * %op4
  %op50 = icmp eq i32  %op49, 45
  %op51 = zext i1  %op50 to i32 
  %op52 = icmp ne i32  %op51, 0
  br i1  %op52, label %label54, label %label61
label53:                                                ; preds = %label41, %label66
  br label %label40
label54:                                                ; preds = %label48
  %op55 = load i32 , i32 * @ptr
  %op56 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op55
  %op57 = load i32 , i32 * %op56
  %op58 = sub i32  %op57, 1
  %op59 = load i32 , i32 * @ptr
  %op60 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op59
  store i32  %op58, i32 * %op60
  br label %label66
label61:                                                ; preds = %label48
  %op62 = load i32 , i32 * %op4
  %op63 = icmp eq i32  %op62, 46
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp ne i32  %op64, 0
  br i1  %op65, label %label67, label %label71
label66:                                                ; preds = %label54, %label76
  br label %label53
label67:                                                ; preds = %label61
  %op68 = load i32 , i32 * @ptr
  %op69 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op68
  %op70 = load i32 , i32 * %op69
  call void @putch(i32  %op70)
  br label %label76
label71:                                                ; preds = %label61
  %op72 = load i32 , i32 * %op4
  %op73 = icmp eq i32  %op72, 44
  %op74 = zext i1  %op73 to i32 
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label77, label %label81
label76:                                                ; preds = %label67, %label86
  br label %label66
label77:                                                ; preds = %label71
  %op78 = call i32  @getch()
  %op79 = load i32 , i32 * @ptr
  %op80 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op79
  store i32  %op78, i32 * %op80
  br label %label86
label81:                                                ; preds = %label71
  %op82 = load i32 , i32 * %op4
  %op83 = icmp eq i32  %op82, 93
  %op84 = zext i1  %op83 to i32 
  %op85 = icmp ne i32  %op84, 0
  br i1  %op85, label %label89, label %label88
label86:                                                ; preds = %label77, %label88
  br label %label76
label87:                                                ; preds = %label89
  store i32  1, i32 * %op3
  br label %label94
label88:                                                ; preds = %label81, %label89, %label110
  br label %label86
label89:                                                ; preds = %label81
  %op90 = load i32 , i32 * @ptr
  %op91 = getelementptr [65536 x i32 ], [65536 x i32 ]* @tape, i32  0, i32  %op90
  %op92 = load i32 , i32 * %op91
  %op93 = icmp ne i32  %op92, 0
  br i1  %op93, label %label87, label %label88
label94:                                                ; preds = %label87, %label119
  %op95 = load i32 , i32 * %op3
  %op96 = icmp sgt i32  %op95, 0
  %op97 = zext i1  %op96 to i32 
  %op98 = icmp ne i32  %op97, 0
  br i1  %op98, label %label99, label %label110
label99:                                                ; preds = %label94
  %op100 = load i32 , i32 * %op2
  %op101 = sub i32  %op100, 1
  store i32  %op101, i32 * %op2
  %op102 = load i32 , i32 * %op2
  %op103 = load i32 *, i32 ** %op1
  %op104 = getelementptr i32 , i32 * %op103, i32  %op102
  %op105 = load i32 , i32 * %op104
  store i32  %op105, i32 * %op4
  %op106 = load i32 , i32 * %op4
  %op107 = icmp eq i32  %op106, 91
  %op108 = zext i1  %op107 to i32 
  %op109 = icmp ne i32  %op108, 0
  br i1  %op109, label %label111, label %label114
label110:                                                ; preds = %label94
  br label %label88
label111:                                                ; preds = %label99
  %op112 = load i32 , i32 * %op3
  %op113 = sub i32  %op112, 1
  store i32  %op113, i32 * %op3
  br label %label119
label114:                                                ; preds = %label99
  %op115 = load i32 , i32 * %op4
  %op116 = icmp eq i32  %op115, 93
  %op117 = zext i1  %op116 to i32 
  %op118 = icmp ne i32  %op117, 0
  br i1  %op118, label %label120, label %label123
label119:                                                ; preds = %label111, %label123
  br label %label94
label120:                                                ; preds = %label114
  %op121 = load i32 , i32 * %op3
  %op122 = add i32  %op121, 1
  store i32  %op122, i32 * %op3
  br label %label123
label123:                                                ; preds = %label114, %label120
  br label %label119
}
define i32  @main() {
label_entry:
  call void @read_program()
  %op0 = getelementptr [32768 x i32 ], [32768 x i32 ]* @program, i32  0, i32  0
  call void @interpret(i32 * %op0)
  ret i32  0
}
