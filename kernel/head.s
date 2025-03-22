# 1 "kernel/entry.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "kernel/entry.S"
# bootloader loads the kernel at 0x100000 and causes CPU to jump there

.section .text

.globl _start

_start:

 mov $0x10, %ax
 mov %ax, %ds
 mov %ax, %es
 mov %ax, %fs
 mov %ax, %ss
 mov $0x7E00, %esp



 lgdt GDT64_POINTER(%rip)



 lidt IDT64_POINTER(%rip)

 mov $0x10, %ax
 mov %ax, %ds
 mov %ax, %es
 mov %ax, %fs
 mov %ax, %gs
 mov %ax, %ss

 movq $0x7E00, %rsp



 movq $0x101000, %rax
 movq %rax, %cr3
 movq switch_seg(%rip), %rax
 pushq $0x08
 pushq %rax
 lretq



switch_seg:
 .quad entry64

entry64:
 movq $0x10, %rax
 movq %rax, %ds
 movq %rax, %es
 movq %rax, %gs
 movq %rax, %ss
 movq $0xffff800000007E00, %rsp

 movq go_to_kernel(%rip), %rax
 pushq $0x08
 pushq %rax
 lretq

go_to_kernel:
 .quad main


.align 8

.org 0x1000

__PML4E:

 .quad 0x102007
 .fill 255,8,0
 .quad 0x102007
 .fill 255,8,0

.org 0x2000

__PDPTE:

 .quad 0x103003
 .fill 511,8,0

.org 0x3000

__PDE:

 .quad 0x000083
 .quad 0x200083
 .quad 0x400083
 .quad 0x600083
 .quad 0x800083
 .quad 0xe0000083
 .quad 0xe0200083
 .quad 0xe0400083
 .quad 0xe0600083
 .quad 0xe0800083
 .quad 0xe0a00083
 .quad 0xe0c00083
 .quad 0xe0e00083
 .fill 499,8,0

.section .data


.globl GDT64_Table
GDT64_Table:
 .quad 0x0000000000000000
 .quad 0x0020980000000000
 .quad 0x0000920000000000
 .quad 0x0020f80000000000
 .quad 0x0000f20000000000
 .quad 0x00cf9a000000ffff
 .quad 0x00cf92000000ffff
 .fill 10,8,0
GDT64_END:

GDT64_POINTER:
GDT6464_LIMIT: .word GDT64_END - GDT64_Table - 1
GDT64_BASE: .quad GDT64_Table


.globl IDT64_Table
IDT64_Table:
 .fill 512,8,0
IDT64_END:

IDT64_POINTER:
IDT64_LIMIT: .word IDT64_END - IDT64_Table - 1
IDT64_BASE: .quad IDT64_Table


.globl TSS64_Table
TSS64_Table:
 .fill 13,8,0
TSS64_END:
