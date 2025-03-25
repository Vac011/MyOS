/* 异常的处理过程会涉及程序执行现场的保存工作，由于C语言无法实现寄存器压栈操作，那么就
必须先借助汇编语句在异常处理程序的入口处保存程序的现场环境，然后再执行C语言的异常处理函
数。*/

/* 函数参数传递顺序：rdi, rsi, rdx, rcx, r8, r9, stack */

ES	=	0x00
DS	=	0x08
R15	=	0x10
R14	=	0x18
R13	=	0x20
R12	=	0x28
R11	=	0x30
R10	=	0x38
R9	=	0x40
R8	=	0x48
RDI	=	0x50
RSI	=	0x58
RBP	=	0x60
RBX	=	0x68
RDX	=	0x70
RCX	=	0x78
RAX	=	0x80
FUNC	=	0x88
ERRCODE	=	0x90
RIP	=	0x98
CS	=	0xa0
RFLAGS	=	0xa8
OLDRSP	=	0xb0
OLDSS	=	0xb8

enter_exception:
	/* 保存现场 */
	pushq	%rax
	pushq	%rcx
	pushq	%rdx
	pushq	%rbx
	pushq	%rbp
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%ds,	%rax
	pushq	%rax
	movq	%es,	%rax
	pushq	%rax

	xorq	%rax,	%rax	
	cld								/* Clear Direction Flag, 清方向标志位 */
	movq	ERRCODE(%rsp),	%rsi	/* 加载错误码error code到第二个参数 */
	movq	FUNC(%rsp),	%rdx		/* 加载异常处理函数地址到rdx寄存器(不算第三个参数) */

	movq	$0x10,	%rdi
	movq	%rdi,	%ds
	movq	%rdi,	%es

	movq	%rsp,	%rdi			/* 加载栈指针rsp到第一个参数 */
	////GET_CURRENT(%ebx)

	callq 	*%rdx					/* 调用异常处理函数 */

	jmp	ret_from_exception			/* 返回 */

ret_from_exception:
	/*GET_CURRENT(%ebx)	need rewrite*/
    /*need rewrite*/
	popq	%rax
	movq	%rax,	%es
	popq	%rax	
	movq	%rax,	%ds	
	popq	%r15	
	popq	%r14	
	popq	%r13	
	popq	%r12	
	popq	%r11	
	popq	%r10	
	popq	%r9	
	popq	%r8
	popq	%rdi	
	popq	%rsi
	popq	%rbp	
	popq	%rbx	
	popq	%rdx	
	popq	%rcx	
	popq    %rax
				
	addq	$0x10,	%rsp		/* 将函数地址和错误码出栈 */
	iretq

/* 各异常入口函数 */
.global divide_error
divide_error:
	pushq	$0									/* 压入错误码 */
	pushq	%rax
	leaq	do_divide_error(%rip),	%rax
	xchgq	%rax,	(%rsp)						/* 压入异常处理函数地址, 并将rax还原 */
	jmp	enter_exception

.global debug
debug:
	pushq	$0
	pushq	%rax
	leaq	do_debug(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global nmi
nmi:          /* need rewrite */
	pushq	$0
	pushq	%rax
	leaq	do_nmi(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global int3
int3:
	pushq	$0
	pushq	%rax
	leaq	do_int3(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global overflow
overflow:
	pushq	$0
	pushq	%rax
	leaq	do_overflow(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global bounds
bounds:
	pushq	$0
	pushq	%rax
	leaq	do_bounds(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global undefined_opcode
undefined_opcode:
	pushq	$0
	pushq	%rax
	leaq	do_undefined_opcode(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global dev_not_available
dev_not_available:	/* need rewrite */
	pushq	$0
	pushq	%rax
	leaq	do_dev_not_available(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global double_fault
double_fault:
	pushq	%rax
	leaq	do_double_fault(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global coprocessor_segment_overrun
coprocessor_segment_overrun:
	pushq	$0
	pushq	%rax
	leaq	do_coprocessor_segment_overrun(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global invalid_TSS
invalid_TSS:
	pushq	%rax
	leaq	do_invalid_TSS(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global segment_not_present
segment_not_present:
	pushq	%rax
	leaq	do_segment_not_present(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global stack_segment_fault
stack_segment_fault:
	pushq	%rax
	leaq	do_stack_segment_fault(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global general_protection
general_protection:
	pushq	%rax
	leaq	do_general_protection(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global page_fault
page_fault:
	pushq	%rax
	leaq	do_page_fault(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global x87_FPU_error
x87_FPU_error:
	pushq	$0
	pushq	%rax
	leaq	do_x87_FPU_error(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global alignment_check
alignment_check:
	pushq	%rax
	leaq	do_alignment_check(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global machine_check
machine_check:
	pushq	$0
	pushq	%rax
	leaq	do_machine_check(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global SIMD_exception
SIMD_exception:
	pushq	$0
	pushq	%rax
	leaq	do_SIMD_exception(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception

.global virtualization_exception
virtualization_exception:
	pushq	$0
	pushq	%rax
	leaq	do_virtualization_exception(%rip),	%rax
	xchgq	%rax,	(%rsp)
	jmp	enter_exception
