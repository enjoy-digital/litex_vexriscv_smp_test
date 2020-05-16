.section    .text, "ax", @progbits
.global boot_helper
.global smp_lottery_target
.global smp_lottery_lock
.global smp_lottery_args
.global smp_slave

boot_helper:
    li a0, 0x40000000
    li s0, 0x800
    add a1, a0, s0
    add a2, a1, s0
    add a3, a2, s0
    add a4, a3, s0
loop_me:
    sw x0, (a0)
    sw x0, (a1)
    sw x0, (a0)
    sw x0, (a1)
    sw x0, (a0)
    sw x0, (a1)
    sw x0, (a0)
    sw x0, (a1)
    j loop_me
	sw x10, smp_lottery_args  , x14
	sw x11, smp_lottery_args+4, x14
	sw x12, smp_lottery_args+8, x14
	sw x13, smp_lottery_target, x14
	fence w, w
	li x15, 1
	sw x15, smp_lottery_lock, x14
	jr x13
	
smp_slave:
	lw a0, smp_lottery_lock
	beqz a0, smp_slave
	fence r, r

	.word(0x100F) //i$ flush
	lw x10, smp_lottery_args
	lw x11, smp_lottery_args+4
	lw x12, smp_lottery_args+8
	lw x13, smp_lottery_target
	jr x13

