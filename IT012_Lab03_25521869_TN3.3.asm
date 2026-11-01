.data
prompt:.asciiz "Nhap chi so (kWh): "
m1: .asciiz "Thang 1: "
m2: .asciiz "Thang 2: "
m3: .asciiz "Thang 3: "
tot: .asciiz "Tong: "
nl: .asciiz "\n"
.text
.globl main
main:
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    move $s0, $v0

    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    move $s1, $v0

    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    move $s2, $v0

    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5
    syscall
    move $s3, $v0

    sub  $t0, $s1, $s0
    sub  $t1, $s2, $s1
    sub  $t2, $s3, $s2
    add  $t3, $t0, $t1
    add  $t3, $t3, $t2

    li   $v0, 4
    la   $a0, m1
    syscall
    li   $v0, 1
    move $a0, $t0
    syscall
    li   $v0, 4
    la   $a0, nl
    syscall

    li   $v0, 4
    la   $a0, m2
    syscall
    li   $v0, 1
    move $a0, $t1
    syscall
    li   $v0, 4
    la   $a0, nl
    syscall

    li   $v0, 4
    la   $a0, m3
    syscall
    li   $v0, 1
    move $a0, $t2
    syscall
    li   $v0, 4
    la   $a0, nl
    syscall

    li   $v0, 4
    la   $a0, tot
    syscall
    li   $v0, 1
    move $a0, $t3
    syscall
    li   $v0, 4
    la   $a0, nl
    syscall

    li   $v0, 10
    syscall