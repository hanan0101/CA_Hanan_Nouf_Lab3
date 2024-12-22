.data
input_text: .space 5
output_text: .space 5

.text
main:
    la t0, input_text
    la t1, output_text
    li t2, 5

loop:
    lb t3, 0(t0)
    addi t3, t3, -32
    sb t3, 0(t1)
    addi t0, t0, 1
    addi t1, t1, 1
    addi t2, t2, -1
    bnez t2, loop
