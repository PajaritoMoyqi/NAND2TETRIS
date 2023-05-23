// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
  @16384
  D=A
  @i
  M=D
  @24576
  D=A
  @i
  D=D-M
  @num
  M=D

  @KBD
  D=M
  @PAINT
  D;JGT
(ERASE)
  @num
  M=M-1
  D=M
  @LOOP
  D;JLT
  @i
  D=M
  @num
  A=D+M
  M=0
  @ERASE
  0;JMP
(PAINT)
  @num
  M=M-1
  D=M
  @LOOP
  D;JLT
  @i
  D=M
  @num
  A=D+M
  M=-1
  @PAINT
  0;JMP