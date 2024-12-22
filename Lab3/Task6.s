.data
array: .byte 0x78, 0x56, 0x34, 0x12, 0x21
shifted_array: .space 5

.text
main:
    la t0, array
    la t1, shifted_array
    li t2, 5
loop:
    lb t3, 0(t0)
    sb t3, 1(t1)
    addi t0, t0, 1
    addi t1, t1, 1
    addi t2, t2, -1
    bnez t2, loop
