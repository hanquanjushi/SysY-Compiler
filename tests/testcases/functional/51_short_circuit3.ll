; ModuleID = 'cminus'
source_filename = "/home/hq/SysY_compiler/tests/testcases/functional/51_short_circuit3.sy"

@a = global i32  zeroinitializer
@b = global i32  zeroinitializer
@d = global i32  zeroinitializer
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

define i32  @set_a(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  store i32  %op2, i32 * @a
  %op3 = load i32 , i32 * @a
  ret i32  %op3
}
define i32  @set_b(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  store i32  %op2, i32 * @b
  %op3 = load i32 , i32 * @b
  ret i32  %op3
}
define i32  @set_d(i32  %arg0) {
label_entry:
  %op1 = alloca i32 
  store i32  %arg0, i32 * %op1
  %op2 = load i32 , i32 * %op1
  store i32  %op2, i32 * @d
  %op3 = load i32 , i32 * @d
  ret i32  %op3
}
define i32  @main() {
label_entry:
  store i32  2, i32 * @a
  store i32  3, i32 * @b
  %op0 = call i32  @set_a(i32  0)
  %op1 = icmp ne i32  %op0, 0
  br i1  %op1, label %label8, label %label3
label2:                                                ; preds = %label8
  br label %label3
label3:                                                ; preds = %label_entry, %label8, %label2
  %op4 = load i32 , i32 * @a
  call void @putint(i32  %op4)
  call void @putch(i32  32)
  %op5 = load i32 , i32 * @b
  call void @putint(i32  %op5)
  call void @putch(i32  32)
  store i32  2, i32 * @a
  store i32  3, i32 * @b
  %op6 = call i32  @set_a(i32  0)
  %op7 = icmp ne i32  %op6, 0
  br i1  %op7, label %label20, label %label12
label8:                                                ; preds = %label_entry
  %op9 = call i32  @set_b(i32  1)
  %op10 = icmp ne i32  %op9, 0
  br i1  %op10, label %label2, label %label3
label11:                                                ; preds = %label20
  br label %label12
label12:                                                ; preds = %label3, %label20, %label11
  %op13 = load i32 , i32 * @a
  call void @putint(i32  %op13)
  call void @putch(i32  32)
  %op14 = load i32 , i32 * @b
  call void @putint(i32  %op14)
  call void @putch(i32  10)
  %op15 = alloca i32 
  store i32  1, i32 * %op15
  store i32  2, i32 * @d
  %op16 = load i32 , i32 * %op15
  %op17 = icmp sge i32  %op16, 1
  %op18 = zext i1  %op17 to i32 
  %op19 = icmp ne i32  %op18, 0
  br i1  %op19, label %label30, label %label24
label20:                                                ; preds = %label3
  %op21 = call i32  @set_b(i32  1)
  %op22 = icmp ne i32  %op21, 0
  br i1  %op22, label %label11, label %label12
label23:                                                ; preds = %label30
  br label %label24
label24:                                                ; preds = %label12, %label30, %label23
  %op25 = load i32 , i32 * @d
  call void @putint(i32  %op25)
  call void @putch(i32  32)
  %op26 = load i32 , i32 * %op15
  %op27 = icmp sle i32  %op26, 1
  %op28 = zext i1  %op27 to i32 
  %op29 = icmp ne i32  %op28, 0
  br i1  %op29, label %label33, label %label39
label30:                                                ; preds = %label12
  %op31 = call i32  @set_d(i32  3)
  %op32 = icmp ne i32  %op31, 0
  br i1  %op32, label %label23, label %label24
label33:                                                ; preds = %label24, %label39
  br label %label34
label34:                                                ; preds = %label39, %label33
  %op35 = load i32 , i32 * @d
  call void @putint(i32  %op35)
  call void @putch(i32  10)
  %op36 = icmp sge i32  16, 0
  %op37 = zext i1  %op36 to i32 
  %op38 = icmp ne i32  %op37, 0
  br i1  %op38, label %label42, label %label43
label39:                                                ; preds = %label24
  %op40 = call i32  @set_d(i32  4)
  %op41 = icmp ne i32  %op40, 0
  br i1  %op41, label %label33, label %label34
label42:                                                ; preds = %label34
  call void @putch(i32  65)
  br label %label43
label43:                                                ; preds = %label34, %label42
  %op44 = icmp ne i32  18, 18
  %op45 = zext i1  %op44 to i32 
  %op46 = icmp ne i32  %op45, 0
  br i1  %op46, label %label47, label %label48
label47:                                                ; preds = %label43
  call void @putch(i32  66)
  br label %label48
label48:                                                ; preds = %label43, %label47
  %op49 = icmp slt i32  1, 8
  %op50 = zext i1  %op49 to i32 
  %op51 = icmp ne i32  %op50, 1
  %op52 = zext i1  %op51 to i32 
  %op53 = icmp ne i32  %op52, 0
  br i1  %op53, label %label54, label %label55
label54:                                                ; preds = %label48
  call void @putch(i32  67)
  br label %label55
label55:                                                ; preds = %label48, %label54
  %op56 = icmp sgt i32  3, 4
  %op57 = zext i1  %op56 to i32 
  %op58 = icmp eq i32  %op57, 0
  %op59 = zext i1  %op58 to i32 
  %op60 = icmp ne i32  %op59, 0
  br i1  %op60, label %label61, label %label62
label61:                                                ; preds = %label55
  call void @putch(i32  68)
  br label %label62
label62:                                                ; preds = %label55, %label61
  %op63 = icmp sle i32  102, 63
  %op64 = zext i1  %op63 to i32 
  %op65 = icmp eq i32  1, %op64
  %op66 = zext i1  %op65 to i32 
  %op67 = icmp ne i32  %op66, 0
  br i1  %op67, label %label68, label %label69
label68:                                                ; preds = %label62
  call void @putch(i32  69)
  br label %label69
label69:                                                ; preds = %label62, %label68
  %op70 = icmp eq i32  0, 0
  %op71 = zext i1  %op70 to i32 
  %op72 = sub i32  0, %op71
  %op73 = icmp eq i32  -1, %op72
  %op74 = zext i1  %op73 to i32 
  %op75 = icmp ne i32  %op74, 0
  br i1  %op75, label %label76, label %label77
label76:                                                ; preds = %label69
  call void @putch(i32  70)
  br label %label77
label77:                                                ; preds = %label69, %label76
  call void @putch(i32  10)
  %op78 = alloca i32 
  store i32  4, i32 * %op78
  %op79 = alloca i32 
  store i32  3, i32 * %op79
  %op80 = alloca i32 
  store i32  2, i32 * %op80
  %op81 = alloca i32 
  store i32  1, i32 * %op81
  %op82 = alloca i32 
  store i32  0, i32 * %op82
  br label %label83
label83:                                                ; preds = %label77, %label86
  %op84 = load i32 , i32 * %op82
  %op85 = icmp ne i32  %op84, 0
  br i1  %op85, label %label90, label %label87
label86:                                                ; preds = %label90
  call void @putch(i32  32)
  br label %label83
label87:                                                ; preds = %label83, %label90
  %op88 = load i32 , i32 * %op82
  %op89 = icmp ne i32  %op88, 0
  br i1  %op89, label %label93, label %label100
label90:                                                ; preds = %label83
  %op91 = load i32 , i32 * %op81
  %op92 = icmp ne i32  %op91, 0
  br i1  %op92, label %label86, label %label87
label93:                                                ; preds = %label87, %label100
  call void @putch(i32  67)
  br label %label94
label94:                                                ; preds = %label100, %label93
  %op95 = load i32 , i32 * %op82
  %op96 = load i32 , i32 * %op81
  %op97 = icmp sge i32  %op95, %op96
  %op98 = zext i1  %op97 to i32 
  %op99 = icmp ne i32  %op98, 0
  br i1  %op99, label %label103, label %label110
label100:                                                ; preds = %label87
  %op101 = load i32 , i32 * %op81
  %op102 = icmp ne i32  %op101, 0
  br i1  %op102, label %label93, label %label94
label103:                                                ; preds = %label94, %label110
  call void @putch(i32  72)
  br label %label104
label104:                                                ; preds = %label110, %label103
  %op105 = load i32 , i32 * %op80
  %op106 = load i32 , i32 * %op81
  %op107 = icmp sge i32  %op105, %op106
  %op108 = zext i1  %op107 to i32 
  %op109 = icmp ne i32  %op108, 0
  br i1  %op109, label %label125, label %label117
label110:                                                ; preds = %label94
  %op111 = load i32 , i32 * %op81
  %op112 = load i32 , i32 * %op82
  %op113 = icmp sle i32  %op111, %op112
  %op114 = zext i1  %op113 to i32 
  %op115 = icmp ne i32  %op114, 0
  br i1  %op115, label %label103, label %label104
label116:                                                ; preds = %label125
  call void @putch(i32  73)
  br label %label117
label117:                                                ; preds = %label104, %label125, %label116
  %op118 = load i32 , i32 * %op82
  %op119 = load i32 , i32 * %op81
  %op120 = icmp eq i32  %op119, 0
  %op121 = zext i1  %op120 to i32 
  %op122 = icmp eq i32  %op118, %op121
  %op123 = zext i1  %op122 to i32 
  %op124 = icmp ne i32  %op123, 0
  br i1  %op124, label %label146, label %label140
label125:                                                ; preds = %label104
  %op126 = load i32 , i32 * %op78
  %op127 = load i32 , i32 * %op79
  %op128 = icmp ne i32  %op126, %op127
  %op129 = zext i1  %op128 to i32 
  %op130 = icmp ne i32  %op129, 0
  br i1  %op130, label %label116, label %label117
label131:                                                ; preds = %label146, %label140
  call void @putch(i32  74)
  br label %label132
label132:                                                ; preds = %label140, %label131
  %op133 = load i32 , i32 * %op82
  %op134 = load i32 , i32 * %op81
  %op135 = icmp eq i32  %op134, 0
  %op136 = zext i1  %op135 to i32 
  %op137 = icmp eq i32  %op133, %op136
  %op138 = zext i1  %op137 to i32 
  %op139 = icmp ne i32  %op138, 0
  br i1  %op139, label %label152, label %label154
label140:                                                ; preds = %label117, %label146
  %op141 = load i32 , i32 * %op78
  %op142 = load i32 , i32 * %op78
  %op143 = icmp sge i32  %op141, %op142
  %op144 = zext i1  %op143 to i32 
  %op145 = icmp ne i32  %op144, 0
  br i1  %op145, label %label131, label %label132
label146:                                                ; preds = %label117
  %op147 = load i32 , i32 * %op79
  %op148 = load i32 , i32 * %op79
  %op149 = icmp slt i32  %op147, %op148
  %op150 = zext i1  %op149 to i32 
  %op151 = icmp ne i32  %op150, 0
  br i1  %op151, label %label131, label %label140
label152:                                                ; preds = %label132, %label160
  call void @putch(i32  75)
  br label %label153
label153:                                                ; preds = %label154, %label160, %label152
  call void @putch(i32  10)
  ret i32  0
label154:                                                ; preds = %label132
  %op155 = load i32 , i32 * %op79
  %op156 = load i32 , i32 * %op79
  %op157 = icmp slt i32  %op155, %op156
  %op158 = zext i1  %op157 to i32 
  %op159 = icmp ne i32  %op158, 0
  br i1  %op159, label %label160, label %label153
label160:                                                ; preds = %label154
  %op161 = load i32 , i32 * %op78
  %op162 = load i32 , i32 * %op78
  %op163 = icmp sge i32  %op161, %op162
  %op164 = zext i1  %op163 to i32 
  %op165 = icmp ne i32  %op164, 0
  br i1  %op165, label %label152, label %label153
}
