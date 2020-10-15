// Initiate the stack Pointer

@256
D=A
@SP
M=D

// function Math.multiply
(MATH.MULTIPLY)
@SP
A=M
M=0
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@0
D=A
@LCL
A=M+D
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// label WHILE_EXP0
(WHILE_EXP0$MATH.MULTIPLY)

// push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
M=M-1
A=M
D=M
@R13
M=D
@xNEG1
D;JLT
@SP
M=M-1
A=M
D=M
@xPOSyNEG1
D;JLT
@R13
D=D-M
@LAST1
0;JMP

(xNEG1)
@SP
M=M-1
A=M
D=M
@xNEGyPOS1
D;JGT
@R13
D=D-M
@LAST1
0;JMP

(xNEGyPOS1)
D=1
@LAST1
0;JMP

(xPOSyNEG1)
D=-1
@LAST1
0;JMP

(LAST1)
@T1
D;JGT
D=0
@FINAL1
0;JMP

(T1)
D=-1
@FINAL1
0;JMP
(FINAL1)
@SP
A=M
M=D
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

//WHILE_END0 
@SP
M=M-1
A=M
D=M
@WHILE_END0$MATH.MULTIPLY
D;JNE

// push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M+D
@SP
M=M+1

// pop local 0
@0
D=A
@LCL
A=M+D
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

// push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//sub 
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

// pop argument 0
@0
D=A
@ARG
A=M+D
D=A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D

//WHILE_EXP0 
@WHILE_EXP0$MATH.MULTIPLY
0;JMP

//label WHILE_END0 
(WHILE_END0$MATH.MULTIPLY)

// push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
A=M
M=D
@SP
M=M+1

//return 
@LCL
D=M
@endFrame
M=D
@5
D=A
@endFrame
D=M-D
A=D
D=M
@retAddr
M=D
@ARG
A=M
D=A
@temp
M=D
@SP
M=M-1
A=M
D=M
@temp
A=M
M=D
@ARG
D=M
@SP
M=D+1
@endFrame
M=M-1
A=M
D=M
@THAT
M=D
@endFrame
M=M-1
A=M
D=M
@THIS
M=D
@endFrame
M=M-1
A=M
D=M
@ARG
M=D
@endFrame
M=M-1
A=M
D=M
@LCL
M=D
@retAddr
A=M
0;JMP