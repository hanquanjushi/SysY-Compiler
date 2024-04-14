; ModuleID = 'cminus'
source_filename = "/home/hq/SysY/tests/testcases/hidden_functional/04_break_continue.sy"

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
label2:                                                ; preds = %label_entry, %label18
  %op3 = load i32 , i32 * %op1
  %op4 = icmp slt i32  %op3, 20
  %op5 = zext i1  %op4 to i32 
  %op6 = icmp ne i32  %op5, 0
  br i1  %op6, label %label7, label %label9
label7:                                                ; preds = %label2
  %op8 = alloca i32 
  store i32  0, i32 * %op8
  br label %label11
label9:                                                ; preds = %label2
  %op10 = load i32 , i32 * %op0
  ret i32  %op10
label11:                                                ; preds = %label7, %label28
  %op12 = load i32 , i32 * %op8
  %op13 = icmp slt i32  %op12, 10
  %op14 = zext i1  %op13 to i32 
  %op15 = icmp ne i32  %op14, 0
  br i1  %op15, label %label16, label %label18
label16:                                                ; preds = %label11
  %op17 = alloca i32 
  store i32  0, i32 * %op17
  br label %label21
label18:                                                ; preds = %label11
  %op19 = load i32 , i32 * %op1
  %op20 = add i32  %op19, 1
  store i32  %op20, i32 * %op1
  br label %label2
label21:                                                ; preds = %label16, %label80
  %op22 = load i32 , i32 * %op17
  %op23 = icmp slt i32  %op22, 5
  %op24 = zext i1  %op23 to i32 
  %op25 = icmp ne i32  %op24, 0
  br i1  %op25, label %label26, label %label28
label26:                                                ; preds = %label21
  %op27 = alloca i32 
  store i32  0, i32 * %op27
  br label %label31
label28:                                                ; preds = %label21
  %op29 = load i32 , i32 * %op8
  %op30 = add i32  %op29, 1
  store i32  %op30, i32 * %op8
  br label %label11
label31:                                                ; preds = %label26, %label72
  %op32 = load i32 , i32 * %op27
  %op33 = icmp slt i32  %op32, 3
  %op34 = zext i1  %op33 to i32 
  %op35 = icmp ne i32  %op34, 0
  br i1  %op35, label %label36, label %label42
label36:                                                ; preds = %label31
  %op37 = load i32 , i32 * %op27
  %op38 = add i32  %op37, 1
  %op39 = icmp sge i32  %op38, 3
  %op40 = zext i1  %op39 to i32 
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label43, label %label46
label42:                                                ; preds = %label31, %label62
  br label %label77
label43:                                                ; preds = %label36
  %op44 = load i32 , i32 * %op27
  %op45 = icmp ne i32  %op44, 0
  br i1  %op45, label %label48, label %label51
label46:                                                ; preds = %label36, %label51
  %op47 = alloca i32 
  store i32  0, i32 * %op47
  br label %label64
label48:                                                ; preds = %label43
  %op49 = load i32 , i32 * %op27
  %op50 = icmp ne i32  %op49, 0
  br i1  %op50, label %label52, label %label59
label51:                                                ; preds = %label43, %label58
  br label %label46
label52:                                                ; preds = %label48, %label59
  %op53 = load i32 , i32 * %op27
  %op54 = sub i32  %op53, -1
  %op55 = icmp sge i32  %op54, 3
  %op56 = zext i1  %op55 to i32 
  %op57 = icmp ne i32  %op56, 0
  br i1  %op57, label %label62, label %label63
label58:                                                ; preds = %label59, %label63
  br label %label51
label59:                                                ; preds = %label48
  %op60 = load i32 , i32 * %op27
  %op61 = icmp eq i32  %op60, 0
  br i1  %op61, label %label52, label %label58
label62:                                                ; preds = %label52
  br label %label42
label63:                                                ; preds = %label52
  br label %label58
label64:                                                ; preds = %label46, %label69
  %op65 = load i32 , i32 * %op47
  %op66 = icmp slt i32  %op65, 2
  %op67 = zext i1  %op66 to i32 
  %op68 = icmp ne i32  %op67, 0
  br i1  %op68, label %label69, label %label72
label69:                                                ; preds = %label64
  %op70 = load i32 , i32 * %op47
  %op71 = add i32  %op70, 1
  store i32  %op71, i32 * %op47
  br label %label64
label72:                                                ; preds = %label64
  %op73 = load i32 , i32 * %op27
  %op74 = add i32  %op73, 1
  store i32  %op74, i32 * %op27
  %op75 = load i32 , i32 * %op0
  %op76 = add i32  %op75, 1
  store i32  %op76, i32 * %op0
  br label %label31
label77:                                                ; preds = %label42
  %op78 = icmp ne i32  1, 0
  br i1  %op78, label %label79, label %label80
label79:                                                ; preds = %label77
  br label %label83
label80:                                                ; preds = %label77, %label86
  %op81 = load i32 , i32 * %op17
  %op82 = add i32  %op81, 1
  store i32  %op82, i32 * %op17
  br label %label21
label83:                                                ; preds = %label79
  %op84 = icmp ne i32  1, 0
  br i1  %op84, label %label85, label %label86
label85:                                                ; preds = %label83
  br label %label86
label86:                                                ; preds = %label83, %label85
  br label %label80
}
