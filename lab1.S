.global lab1
.syntax unified
lab1:
  push { lr }
  mov r0, #3 // const
  mov r1, #1 // for 2^c
  mov r2, #4 // input a
  mov r3, #1 // input b
  mov r4, #2 // input c
  bl test_var
  pop { pc }
test_var:
  push { r0, r1, r2, r3, r4, lr }
  sub r2, r3
  mul r2, r0
  sub r0, #1 // make r0 = 2

l:
  mul r1, r0
  sub r4, #1
  cmp r4, #0
  bne l
  
  add r2, r1
  pop { r0, r1, r2, r3, r4, pc }
