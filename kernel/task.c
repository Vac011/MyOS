#include "defs.h"
#include "x86_64.h"
#include "task.h"

static uint32 nextpid;
struct thread idle_thread;
union task* idle_task;

// 创建0号idle进程, 用于空闲时执行
void idle() {
    printf("init task is running\n");
    while (1) {
        __asm__ __volatile__("hlt");
    }
}

uint64 init(uint64 arg) {
    struct regs regs;
    printf("init task is running, arg = %lx\n", arg);
    return 1;
}

uint64 do_exit(uint64 code)
{
	printf("exit task is running, arg:%lx\n",code);
	while(1);
}

// 内核线程实际上就是一个共享父进程地址空间的进程,它有自己的系统堆栈。内核线程和进程都是通过do_fork()函数来产生的
int do_fork(struct regs* regs, uint64 flags, uint64 stack, uint64 stack_size) {
    struct process* proc = NULL;
    struct thread* thrd = NULL;

    // 分配内核栈空间
    uint64 page = (uint64)kalloc();
    proc = (struct process*)page;
    // 更新链表
    proc->prev = idle_task->proc.prev;
    idle_task->proc.prev->next = proc;
    proc->next = &(idle_task->proc);
    idle_task->proc.prev = proc;
    // 分配进程号
    proc->pid = nextpid++;
    // 设置进程状态
    proc->state = UNINTERRUPTIBLE;
    // 设置线程(上下文)地址
    proc->kstack = page + KSTACKSIZE;
    thrd = (struct thread*)(proc + 1); // TCB放在PCB上面
    proc->thread = thrd;
    // 将regs中的内容复制到内核栈空间的最高处(trapframe?)
    memcpy((void *)((unsigned long)proc + KSTACKSIZE - sizeof(struct regs)), regs, sizeof(struct regs));
    thrd->rip = regs->rip;
    thrd->rsp = (uint64)proc + KSTACKSIZE - sizeof(struct regs);

    proc->state = RUNNING;
    return 0;
}

extern void kernel_thread_func(void);
__asm__ (
".globl kernel_thread_func  \n\t"
"kernel_thread_func:	\n\t"
"	popq	%r15	\n\t"
"	popq	%r14	\n\t"	
"	popq	%r13	\n\t"	
"	popq	%r12	\n\t"	
"	popq	%r11	\n\t"	
"	popq	%r10	\n\t"	
"	popq	%r9	\n\t"	
"	popq	%r8	\n\t"	
"	popq	%rbx	\n\t"	
"	popq	%rcx	\n\t"	
"	popq	%rdx	\n\t"	
"	popq	%rsi	\n\t"	
"	popq	%rdi	\n\t"	
"	popq	%rbp	\n\t"	
"	popq	%rax	\n\t"	
"	movq	%rax,	%ds	\n\t"
"	popq	%rax		\n\t"
"	movq	%rax,	%es	\n\t"
"	popq	%rax		\n\t"
"	addq	$0x38,	%rsp	\n\t"
/////////////////////////////////
"	movq	%rdx,	%rdi	\n\t"
"	callq	*%rbx		\n\t"
"	movq	%rax,	%rdi	\n\t"
"	callq	do_exit		\n\t"
);

// 创建进程(内核)
int create_task(uint64 (*fn)(uint64), uint64 arg, uint64 flags) {
    struct regs regs;
    // 清除脏数据
	memset(&regs,0,sizeof(regs));
    
    regs.rbx = (uint64)fn;
    regs.rdx = arg;

    regs.cs = KERNEL_CS;
    regs.ds = KERNEL_DS;

    regs.rip = (uint64)kernel_thread_func;
    regs.rflags = (1 << 9); // IF = 1, 开启中断

    return do_fork(&regs, flags, 0, 0);
}

// fork函数(系统调用)
void fork() {

}

void schedule() {

}

void __switch_to(struct process* prev,struct process* next)
{
	__asm__ __volatile__("movq	%%fs,	%0 \n\t":"=a"(prev->thread->fs));
	__asm__ __volatile__("movq	%%gs,	%0 \n\t":"=a"(prev->thread->gs));

	__asm__ __volatile__("movq	%0,	%%fs \n\t"::"a"(next->thread->fs));
	__asm__ __volatile__("movq	%0,	%%gs \n\t"::"a"(next->thread->gs));

	printf("prev->thread->rsp:%lx\n",prev->thread->rsp);
	printf("next->thread->rsp:%lx\n",next->thread->rsp);
}

void taskinit() {
    idle_task = (union task*)kalloc();
    idle_thread = (struct thread){
        .tid = 0,
        .rsp = (uint64)&(idle_task->stack[KSTACKSIZE/sizeof(uint64)]),
        // .rip = idle,
        .fs = KERNEL_DS,
        .gs = KERNEL_DS,
        .cr2 = 0,
        .trapnum = 0,
        .errorcode = 0,
    };
    idle_task->proc = (struct process){
        .prev = &(idle_task->proc),
        .next = &(idle_task->proc),
        .pid = 0,
        .state = UNINTERRUPTIBLE,
        .thread = &idle_thread,
        .kstack = (uint64)&(idle_task->stack[KSTACKSIZE/sizeof(uint64)]),
        .priority = 0,
    };
    create_task(init, 10, CLONE_FS | CLONE_FILES | CLONE_SIGNAL);
    idle_task->proc.state = RUNNING;
    struct process* prev = &idle_task->proc;
    struct process* next = idle_task->proc.next;
    switch_to(prev, next);
}