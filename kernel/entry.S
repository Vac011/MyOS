# bootloader loads the kernel at 0x100000 and causes CPU to jump there

.section .text

.globl _start

_start:

	mov	$0x10,	%ax
	mov	%ax,	%ds
	mov	%ax,	%es
	mov	%ax,	%fs
	mov	%ax,	%ss
	mov	$0x7E00,	%esp

	lgdt	GDT64_POINTER(%rip)
	lidt	IDT64_POINTER(%rip)

	mov	$0x10,	%ax
	mov	%ax,	%ds
	mov	%ax,	%es
	mov	%ax,	%fs
	mov	%ax,	%gs
	mov	%ax,	%ss
	movq	$0x7E00,	%rsp

//=======	load	cr3
// cr3寄存器保存顶级页表起始地址
	movq	$0x101000,	%rax
	movq	%rax,		%cr3
	movq	switch_seg(%rip),	%rax
	pushq	$0x08
	pushq	%rax
	lretq

//=======	64-bit mode code

switch_seg:
	.quad	entry64

entry64:
	movq	$0x10,	%rax
	movq	%rax,	%ds
	movq	%rax,	%es
	movq	%rax,	%gs
	movq	%rax,	%ss
	movq	$0xffff800000007E00,	%rsp		/* rsp address */

	movq	go_to_kernel(%rip),	%rax		/* movq address */
	pushq	$0x08
	pushq	%rax
	lretq

go_to_kernel:
	.quad	main

//======= 初始化页表

// 64位虚拟地址结构(只使用其中的48位, 高16位为保留位, 必须与第47位相同(全0或全1))
// |  63-48  |  47-39  |  38-30  |  29-21 |  20-12  |  11-0  |
// |   16位  |   9位   |   9位    |   9位  |   9位   |  12位  |
// | Reserve |  PML4E  |  PDPTE  |   PDE  |   PTE   | Offset |

// 64位页表项结构(高12位为保留位, 低12位为属性位, 其余为下一级页表或页面基址(物理地址, 需要左移12位))
// |  63-52  |  51-12  |  11-0  |
// |   12位  |   40位  |  12位   |
// | Reserve |   Base  |  Flag  |

// 12位页表属性位
// |  11-9   |    8    |     7    |   6   |    5    |  4  |  3  |      2     |      1     |    0    |
// | Reserve |  Global | PageSize | Dirty | Accessd | PCD | PWT | User/Super | Read/Write | Present |
// Bit 8 (G, Global)：标记页是否为全局页(在TLB中不被刷新)。1: 全局页(如内核代码)。0: 非全局页。
// Bit 7 (PS, PageSize): 标记页的大小。1: 2MB页(在PDE中为2MB, 在PDPTE中为1GB页)。0: 4KB页(在PTE中为4KB页)。
// Bit 6 (D, Dirty): 标记页是否被写入过。1: 被写入过, 需写回磁盘(若被换出)。0: 未被修改。
// Bit 5 (A, Accessed): 标记页是否被访问过。1: 被访问过。0: 未被访问过。
// Bit 4 (PCD, Page-level Cache Disable): 页级缓存禁用。1: 禁用页级缓存。0: 启用页级缓存。
// Bit 3 (PWT, Page-level Write-Through): 页级写穿透。1: 写穿透(write-through, 同时写入缓存和内存)。0: 写回(write-back, 先写入缓存, 再异步写入内存)。
// Bit 2 (U/S, User/Supervisor): 用户/超级用户位。1: 用户态可访问。0: 仅内核态可访问。
// Bit 1 (R/W, Read/Write): 读/写位。1: 可读写。0: 只读。
// Bit 0 (P, Present): 页存在位。1: 页存在于内存。0: 页不存在。

.org	0x1000
__PML4E:
	.quad	0x102007	/* 低地址映射(0x0000000000000000), 指向PDPTE(0x102000) */
	.fill	255,8,0
	.quad	0x102007	/* 高地址映射(0xffff800000000000) */
	.fill	255,8,0

.org	0x2000
__PDPTE:
	.quad	0x103003	/* 指向PDE(0x103000) */
	.fill	511,8,0

.org	0x3000
__PDE:
	.quad	0x000083	/* PS(Paging Size)为1, 2MB页, 直接指向页面物理地址(0x000000), 不再有下一级页表PT */
	.quad	0x200083
	.quad	0x400083
	.quad	0x600083
	.quad	0x800083
	.quad	0xe0000083		/*0x a00000*/
	.quad	0xe0200083
	.quad	0xe0400083
	.quad	0xe0600083
	.quad	0xe0800083		/*0x1000000*/
	.quad	0xe0a00083
	.quad	0xe0c00083
	.quad	0xe0e00083
	.fill	499,8,0

.section .data

//=======	GDT64_Table
.globl GDT64_Table
GDT64_Table:
	.quad	0x0000000000000000			/*0	NULL descriptor		       	00*/
	.quad	0x0020980000000000			/*1	KERNEL	Code	64-bit	Segment	08*/
	.quad	0x0000920000000000			/*2	KERNEL	Data	64-bit	Segment	10*/
	.quad	0x0020f80000000000			/*3	USER	Code	64-bit	Segment	18*/
	.quad	0x0000f20000000000			/*4	USER	Data	64-bit	Segment	20*/
	.quad	0x00cf9a000000ffff			/*5	KERNEL	Code	32-bit	Segment	28*/
	.quad	0x00cf92000000ffff			/*6	KERNEL	Data	32-bit	Segment	30*/
	.fill	10,8,0						/*8 ~ 9	TSS (jmp one segment <7>) 128-bit need two entry*/
GDT64_END:

GDT64_POINTER:
GDT6464_LIMIT:	.word	GDT64_END - GDT64_Table - 1
GDT64_BASE:	.quad	GDT64_Table

//=======	IDT64_Table
.globl IDT64_Table
IDT64_Table:
	.fill  512,8,0
IDT64_END:

IDT64_POINTER:
IDT64_LIMIT:	.word	IDT64_END - IDT64_Table - 1
IDT64_BASE:	.quad	IDT64_Table

//=======	TSS64_Table
.globl	TSS64_Table
TSS64_Table:
	.fill  13,8,0
TSS64_END: