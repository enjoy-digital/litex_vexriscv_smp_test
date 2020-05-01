.global main
.global isr
.global _start

.global smp_lottery_target
.global smp_lottery_lock
.global smp_lottery_args
.global smp_target

_start:
  j crt_init
  nop
  nop
  nop
  nop
  nop
  nop
  nop

.global  trap_entry
trap_entry:
  sw x1,  - 1*4(sp)
  sw x5,  - 2*4(sp)
  sw x6,  - 3*4(sp)
  sw x7,  - 4*4(sp)
  sw x10, - 5*4(sp)
  sw x11, - 6*4(sp)
  sw x12, - 7*4(sp)
  sw x13, - 8*4(sp)
  sw x14, - 9*4(sp)
  sw x15, -10*4(sp)
  sw x16, -11*4(sp)
  sw x17, -12*4(sp)
  sw x28, -13*4(sp)
  sw x29, -14*4(sp)
  sw x30, -15*4(sp)
  sw x31, -16*4(sp)
  addi sp,sp,-16*4
  call isr
  lw x1 , 15*4(sp)
  lw x5,  14*4(sp)
  lw x6,  13*4(sp)
  lw x7,  12*4(sp)
  lw x10, 11*4(sp)
  lw x11, 10*4(sp)
  lw x12,  9*4(sp)
  lw x13,  8*4(sp)
  lw x14,  7*4(sp)
  lw x15,  6*4(sp)
  lw x16,  5*4(sp)
  lw x17,  4*4(sp)
  lw x28,  3*4(sp)
  lw x29,  2*4(sp)
  lw x30,  1*4(sp)
  lw x31,  0*4(sp)
  addi sp,sp,16*4
  mret
  .text


lottery_delay:
  li a0, 2000
lottery_delay_loop:
  addi a0, a0, -1
  bnez a0, lottery_delay_loop
  ret
  
crt_init:
  la sp, _fstack + 4
  la a0, trap_entry
  csrw mtvec, a0

.global  smp_lottery_value
.global  smp_lottery_lock

lottery_init:
  sw x0, smp_lottery_lock, a1
  sw x0, smp_lottery_value, a1
  call lottery_delay //Ensure that all CPU had time to boot 
  
lottery:
  la a0, smp_lottery_value
  li a1, 1
  amoadd.w a0, a1, (a0)
  beqz a0, lottery_master
  
lottery_wait:
  lw a0, smp_lottery_lock
  beqz a0, lottery_wait
  fence r, r
  lw a0, smp_lottery_target 
  jalr a0

lottery_master:
  call lottery_delay //Ensure that all cpu had time to do the lottery before BSS clear happen

bss_init:
  la a0, _fbss
  la a1, _ebss
bss_loop:
  beq a0,a1,bss_done
  sw zero,0(a0)
  add a0,a0,4
  j bss_loop
bss_done:

  li a0, 0x880  //880 enable timer + external interrupt sources (until mstatus.MIE is set, they will never trigger an interrupt)
  csrw mie,a0

  call main
infinit_loop:
  j infinit_loop



//Initialized to avoid having them set to zero by BSS clear
.bss
  smp_lottery_stable: .word 0; .word 0
  smp_lottery_value:  .word 0
  smp_lottery_target: .word 0
  smp_lottery_args:   .word 0; .word 0; .word 0
  smp_lottery_lock:   .word 0

