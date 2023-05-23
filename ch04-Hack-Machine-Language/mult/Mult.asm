// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

// pseudo-code
// R2 = R1 * R0;

@sum
M=0
(LOOP)
// if R0 is 0, then STOP
  @R0
  D=M
  @STOP
  D;JEQ
// sum = sum + R1
  @R1
  D=M
  @sum
  M=D+M
// R0 - 1
  @R0
  M=M-1
// goto LOOP
  @LOOP
  0;JMP
(STOP)
  @sum
  D=M
  @R2
  M=D  
(END)
  @END
  0;JMP