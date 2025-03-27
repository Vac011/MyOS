save_all:
    /* 保存现场 */
	xchgq	%rax, (%rsp)	/* 将返回地址取出，并将rax压栈 */
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
	movq	%ds,	%rcx
	pushq	%rcx
	movq	%es,	%rcx
	pushq	%rcx
    jmp     *%rax			/* 这里不能直接用ret, 因为ret会弹出栈顶的返回地址，而这里的栈已经被我们修改 */

ret_from_intr:
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
	iretq

/* 各中断入口函数 */
.global irq0x20
irq0x20:
    call save_all
    cld
    movq %rsp, %rdi                  /* 传递第一个参数 */
    movq $0x20, %rsi                 /* 传递第二个参数中断码 */
    leaq do_irq0x20(%rip), %rdx
    leaq ret_from_intr(%rip), %rcx
    pushq %rcx                      /* 将返回地址压栈(直接返回到ret_from_intr) */
    jmp *%rdx                        /* 使用jmp而不是call可以省略返回到当前函数, 直接跳转到ret_from_intr */

.global irq0x21
irq0x21:
    call save_all
    cld
    movq %rsp, %rdi
    movq $0x21, %rsi
    leaq do_irq0x21(%rip), %rdx
    leaq ret_from_intr(%rip), %rcx
    pushq %rcx
    jmp *%rdx

.global irq0x2c
irq0x2c:
    call save_all
    cld
    movq %rsp, %rdi
    movq $0x22, %rsi
    leaq do_irq0x2c(%rip), %rdx
    leaq ret_from_intr(%rip), %rcx
    pushq %rcx
    jmp *%rdx
