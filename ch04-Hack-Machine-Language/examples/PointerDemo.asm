// Program: PointerDemo.asm
// From R0,
// set -1 to first R1(number) words.

// n = 0
  @n
  M=0
(LOOP)
// if (n == R1) goto END
  @n
  D=M
  @R1
  D=D-M
  @END
  D;JEQ
  // *(R0 + n) = -1
  @R0
  D=M
  @n
  A=D+M
  M=-1
  // n = n + 1
  @n
  M=M+1
  // goto LOOP
  @LOOP
  0;JMP
(END)
  @END
  0;JMP