/*
  Program: Sum1ToN
  RAM[1] = 1+2+3+...+RAM[0]
  how to use: put value>=1 into RAM[0]
*/

/*  pseudo-code
    i = 1
    sum = 0
  LOOP:
    if (i > R0) goto STOP
    sum = sum + i
    i = i + 1
    goto LOOP
  STOP:
    R1 = sum
*/

// Hack Assembly code

    // i = 1;
    @i // variable i returns address where its value exists
    M=1 // put 1 into RAM[i]
    // sum = 0;
    @sum
    M=0
(LOOP) // label
    // if (i > R0) goto STOP;
    @i
    D=M // put RAM[i] value into D register.
    @R0 // R0 register is virtual register.
    D=D-M // ?
    @STOP
    D;JGT // Jump if Greater Than
    // sum = sum + i
    @sum
    D=M // put RAM[sum] value into D register
    @i
    D=D+M // D register = D register(RAM[sum]) + RAM[i]
    @sum
    M=D // put D register value (after sum) into RAM[sum]
    // i = i + 1
    @i
    M=M+1 // RAM[i] = RAM[i] + 1
    // goto LOOP
    @LOOP
    0;JMP
(STOP)
    // R1 = sum
    @sum
    D=M // D register = RAM[sum]
    @R1 // R1 (virtual) register is selected
    M=D // RAM[R1] = D register(RAM[sum])
(END) // end of the code
    @END
    0;JMP