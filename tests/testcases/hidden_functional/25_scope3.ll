; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/25_scope3.sy"

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
  call void @putch(i32  97)
  call void @putch(i32  10)
  %op0 = alloca i32 
  store i32  0, i32 * %op0
  %op1 = alloca i32 
  store i32  1, i32 * %op1
  %op2 = load i32 , i32 * %op1
  %op3 = add i32  %op2, 2
  store i32  %op3, i32 * %op1
  %op4 = alloca i32 
  %op5 = load i32 , i32 * %op1
  %op6 = add i32  %op5, 3
  store i32  %op6, i32 * %op4
  %op7 = load i32 , i32 * %op4
  %op8 = add i32  %op7, 4
  store i32  %op8, i32 * %op4
  %op9 = load i32 , i32 * %op0
  %op10 = load i32 , i32 * %op1
  %op11 = add i32  %op9, %op10
  %op12 = load i32 , i32 * %op4
  %op13 = add i32  %op11, %op12
  store i32  %op13, i32 * %op0
  %op14 = load i32 , i32 * %op4
  %op15 = add i32  %op14, 5
  store i32  %op15, i32 * %op4
  %op16 = alloca i32 
  %op17 = load i32 , i32 * %op4
  %op18 = add i32  %op17, 6
  store i32  %op18, i32 * %op16
  %op19 = load i32 , i32 * %op1
  %op20 = load i32 , i32 * %op16
  %op21 = add i32  %op19, %op20
  store i32  %op21, i32 * %op1
  %op22 = load i32 , i32 * %op0
  %op23 = load i32 , i32 * %op1
  %op24 = add i32  %op22, %op23
  %op25 = load i32 , i32 * %op4
  %op26 = add i32  %op24, %op25
  %op27 = load i32 , i32 * %op16
  %op28 = add i32  %op26, %op27
  store i32  %op28, i32 * %op0
  %op29 = load i32 , i32 * %op4
  %op30 = load i32 , i32 * %op1
  %op31 = add i32  %op29, %op30
  store i32  %op31, i32 * %op4
  %op32 = alloca i32 
  %op33 = load i32 , i32 * %op16
  %op34 = add i32  %op33, 7
  store i32  %op34, i32 * %op32
  %op35 = load i32 , i32 * %op32
  %op36 = add i32  %op35, 8
  store i32  %op36, i32 * %op32
  %op37 = load i32 , i32 * %op0
  %op38 = load i32 , i32 * %op32
  %op39 = add i32  %op37, %op38
  %op40 = load i32 , i32 * %op4
  %op41 = add i32  %op39, %op40
  %op42 = load i32 , i32 * %op16
  %op43 = add i32  %op41, %op42
  store i32  %op43, i32 * %op0
  %op44 = load i32 , i32 * %op4
  %op45 = load i32 , i32 * %op32
  %op46 = add i32  %op44, %op45
  store i32  %op46, i32 * %op4
  %op47 = alloca i32 
  %op48 = load i32 , i32 * %op16
  %op49 = add i32  %op48, 9
  store i32  %op49, i32 * %op47
  %op50 = load i32 , i32 * %op32
  %op51 = add i32  %op50, 10
  store i32  %op51, i32 * %op32
  %op52 = alloca i32 
  store i32  11, i32 * %op52
  %op53 = load i32 , i32 * %op47
  %op54 = add i32  %op53, 12
  store i32  %op54, i32 * %op47
  %op55 = load i32 , i32 * %op0
  %op56 = load i32 , i32 * %op52
  %op57 = add i32  %op55, %op56
  %op58 = load i32 , i32 * %op47
  %op59 = add i32  %op57, %op58
  %op60 = load i32 , i32 * %op16
  %op61 = add i32  %op59, %op60
  store i32  %op61, i32 * %op0
  %op62 = load i32 , i32 * %op16
  %op63 = load i32 , i32 * %op47
  %op64 = add i32  %op62, %op63
  store i32  %op64, i32 * %op16
  %op65 = alloca i32 
  %op66 = load i32 , i32 * %op47
  %op67 = add i32  %op66, 13
  store i32  %op67, i32 * %op65
  %op68 = load i32 , i32 * %op65
  %op69 = load i32 , i32 * %op52
  %op70 = add i32  %op68, %op69
  store i32  %op70, i32 * %op65
  %op71 = load i32 , i32 * %op0
  %op72 = load i32 , i32 * %op52
  %op73 = add i32  %op71, %op72
  %op74 = load i32 , i32 * %op47
  %op75 = add i32  %op73, %op74
  %op76 = load i32 , i32 * %op65
  %op77 = add i32  %op75, %op76
  store i32  %op77, i32 * %op0
  %op78 = load i32 , i32 * %op0
  %op79 = load i32 , i32 * %op16
  %op80 = sub i32  %op78, %op79
  store i32  %op80, i32 * %op0
  %op81 = load i32 , i32 * %op0
  %op82 = load i32 , i32 * %op4
  %op83 = sub i32  %op81, %op82
  store i32  %op83, i32 * %op0
  %op84 = load i32 , i32 * %op0
  %op85 = load i32 , i32 * %op1
  %op86 = sub i32  %op84, %op85
  store i32  %op86, i32 * %op0
  %op87 = load i32 , i32 * %op0
  %op88 = srem i32  %op87, 77
  ret i32  %op88
}
