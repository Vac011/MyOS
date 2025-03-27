#include "types.h"

#define KERNEL_CS 	(0x08)
#define	KERNEL_DS 	(0x10)


#define CLONE_FS	 (1 << 0)
#define CLONE_FILES	 (1 << 1)
#define CLONE_SIGNAL (1 << 2)

#define KSTACKSIZE 4*1024  // 进程的内核栈空间大小，4KB

#define RUNNING		(1 << 0)
#define INTERRUPTIBLE	(1 << 1)
#define	UNINTERRUPTIBLE	(1 << 2)
#define	ZOMBIE		(1 << 3)	
#define	STOPPED		(1 << 4)

// TCB
struct thread {
    uint32 tid;
    uint64 rsp;
    uint64 rip;
    uint64 fs;
    uint64 gs;
    uint64 cr2;
    uint64 kstack;
    uint64 trapnum;
    uint64 errorcode;
};

// PCB
struct process {
    struct process* prev;
    struct process* next;
    uint32 pid;
    volatile int state;
    struct thread *thread;
    uint64 pml4;
    uint64 kstack;
    int flag;
    int priority;
    int counter;
};

// 放置在进程的内核栈空间的低地址
union task {
    struct process proc;
    uint64 stack[KSTACKSIZE/sizeof(uint64)];
}__attribute__((aligned(8)));

static inline struct process* get_current()
{
	struct process* current = NULL;
	__asm__ __volatile__ ("andq %%rsp,%0	\n\t":"=r"(current):"0"(~4095UL));
	return current;
}

#define current get_current()

// %%表示反转义的%，%i表示第i个约束量
// 1f 表示前方（forward）第一个 1: 标号的地址
// 先将“假”返回地址入栈，jmp是精髓
#define switch_to(prev,next) do {				\
	__asm__ __volatile__ (	"pushq	%%rbp	\n\t"	\
				"pushq	%%rax	\n\t"	\
				"movq	%%rsp,	%0	\n\t"	\
				"movq	%2,	%%rsp	\n\t"	\
				"leaq	1f(%%rip),	%%rax	\n\t"	\
				"movq	%%rax,	%1	\n\t"	\
				"pushq	%3		\n\t"	\
                "jmp	__switch_to	\n\t"	\
				"1:	\n\t"\                  
				"popq	%%rax	\n\t"	\
				"popq	%%rbp	\n\t"	\
				:"=m"(prev->thread->rsp),"=m"(prev->thread->rip)		\
				:"m"(next->thread->rsp),"m"(next->thread->rip),"D"(prev),"S"(next)	\
				:"memory"		\
				);			\
} while(0)

void idle();
uint64 init(uint64 arg);
uint64 do_exit(uint64 code);
int create_task(uint64 (*fn)(uint64), uint64 arg, uint64 flags);
int do_fork(struct regs* regs, uint64 flags, uint64 stack, uint64 stack_size);