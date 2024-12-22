.data
input_text: .space 5
reversed_text: .space 5

.text
main:
    la t0, input_text
    la t1, reversed_text
    li t2, 4
loop:
    lb t3, 0(t0)
    sb t3, t2(t1)
    addi t0, t0, 1
    addi t2, t2, -1
    bnez t0, loop
