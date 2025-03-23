#include "types.h"

// 使用内核恒等映射（kernel direct mapping），主要用于让内核方便访问物理内存，而不需要动态修改页表。
// 不同操作系统的恒等映射方式可能略有不同，但核心思想都是使用内核线性地址统一管理物理内存，然后在分配给用户进程时再转换为物理地址填充页表
#define KERNELBASE 0xffff800000000000
#define KERNELSTOP 0xffff800000800000
#define MEMINFO 0xffff800000007e00

#define PGSIZE 4096
#define PGMASK (~(PGSIZE - 1))

// 向上(大)舍入，一般对大小使用用于得到页面个数，若将结果右移12位或除以4096，则表示所需页面个数
#define PGROUNDUP(size)  (((size)+PGSIZE-1) & PGMASK)
// 向下(小)舍入，一般对地址使用用于寻找当前页面首地址
#define PGROUNDDOWN(addr) ((addr) & PGMASK)


#define P2V(addr) ((void *)((uint64)addr + KERNELBASE))
#define V2P(addr) ((uint64)addr - KERNELBASE)



// loader中使用INT 15h, AX=E820h的BIOS中断返回的内存信息，存放在0x7e00处，每条信息占20字节
struct e820_entry {
    uint64 addr;
    uint64 size;
    uint32 type; // 1:RAM,2:ROM or Reserved,3:ACPI Reclaim Memory,4:ACPI NVS Memory,Others:Undefine
} __attribute__((packed));

// 空闲页链表kmem
// page结构实例化在每个空闲页面的开头(r = (struct page*)pa)
// 则每个指向run的指针即指向页面首地址
struct page {
    struct page *next;
};
  
// slab cache结构
// extern struct kmem_cache *cache_chain;

#define flush_tlb()	({					\
	uint64 tmpreg;				      	\
	__asm__ __volatile__ 	(				\
				"movq	%%cr3,	%0	\n\t"	\
				"movq	%0,	%%cr3	\n\t"	  \
				:"=r"(tmpreg)			      \
				:				                \
				:"memory"			          \
				);				              \
})

// 获取当前页表基址
#define get_cr3() ({              \
	uint64* tmp;                    \
	__asm__ __volatile__	(         \
					"movq	%%cr3,	%0	\n\t" \
					:"=r"(tmp)              \
					:                       \
					:"memory"               \
				);                        \
	tmp;                            \
})