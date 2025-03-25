#include "types.h"

#define STS_TG64 0x9     // Available 64-bit TSS
#define STS_IG64 0xE     // 64-bit Interrupt Gate
#define CODE_SEG 0x8     // Code Segment(Kernel)

// Segment Descriptor for 64-bit mode
struct segdesc64 {
    uint64 lim_15_0 : 16;   // Low bits of segment limit
    uint64 base_15_0 : 16;  // Low bits of segment base address
    uint64 base_23_16 : 8;  // Middle bits of segment base address
    uint64 type : 4;        // Segment type (see STS_ constants)
    uint64 s : 1;           // 0 = system, 1 = application
    uint64 dpl : 2;         // Descriptor Privilege Level
    uint64 p : 1;           // Present
    uint64 lim_19_16 : 4;   // High bits of segment limit
    uint64 avl : 1;         // Unused (available for software use)
    uint64 l : 1;           // 1 = 64-bit code segment (IA-32e mode)
    uint64 db : 1;          // 0 = 16-bit/64-bit segment, 1 = 32-bit segment
    uint64 g : 1;           // Granularity: limit scaled by 4K when set
    uint64 base_31_24 : 8;  // High bits of segment base address
};

// Task state segment format for 64-bit mode
// 需要使用packed属性，否则编译器会在reserved1和rsp0之间自动填充4字节，导致结构体不符合硬件要求
struct __attribute__((packed)) taskstate64 {
    uint32 reserved1;
    uint64 rsp0;      // Stack pointer for ring 0
    uint64 rsp1;      // Stack pointer for ring 1
    uint64 rsp2;      // Stack pointer for ring 2
    uint64 reserved2;
    uint64 ist1;      // Interrupt Stack Table 1
    uint64 ist2;      // Interrupt Stack Table 2
    uint64 ist3;      // Interrupt Stack Table 3
    uint64 ist4;      // Interrupt Stack Table 4
    uint64 ist5;      // Interrupt Stack Table 5
    uint64 ist6;      // Interrupt Stack Table 6
    uint64 ist7;      // Interrupt Stack Table 7
    uint64 reserved3;
    uint16 reserved4;
    uint16 iomb;      // I/O map base address
};

// Gate descriptors for interrupts and traps for 64-bit mode
struct gatedesc {
    uint64 off_15_0 : 16;    // low 16 bits of offset in segment
    uint64 cs : 16;          // code segment selector
    uint64 ist : 3;          // IST (Interrupt Stack Table) offset
    uint64 rsv1 : 5;         // reserved
    uint64 type : 4;         // type(STS_{IG64,TG64})
    uint64 s : 1;            // must be 0 (system)
    uint64 dpl : 2;          // descriptor privilege level
    uint64 p : 1;            // Present
    uint64 off_31_16 : 16;   // middle 16 bits of offset in segment
    uint64 off_63_32 : 32;   // high 32 bits of offset in segment
    uint64 rsv2 : 32;        // reserved
};

// Set up a normal interrupt/trap gate descriptor.
// - ist: Interrupt Stack Table (offset)
//      - 0: 不使用 TSS 指定的栈，CPU 仍然使用 RSP 作为中断处理时的栈（内核栈）。
//      - 1~7: 使用 TSS 指定的栈 IST1~IST7，避免使用当前用户态/内核态的栈，让 CPU 切换到一个安全的栈（TSS 里 IST[n] 指定的栈作为栈指针 (RSP)的新值）。
// - type: IDT gate type:
//      - 0xE: Interrupt Gate, 触发后 CPU 自动清除 IF 标志（屏蔽可屏蔽中断），常用于硬件中断。
//      - 0xF: Trap Gate, 触发后 CPU 不会清除 IF 标志，常用于异常或系统调用。
//      - 0xC: Task Gate, 用于任务切换。
// - dpl: Descriptor Privilege Level of the IDT entry
//      - 0: 仅内核（Ring 0）可访问，普通中断、异常使用
//      - 3: 用户态（Ring 3）也可访问，用户态调用 int 0x80（系统调用）等需要
#define SETGATE(gate, ist, attr, addr)                 \
{                                                         \
  (gate).off_15_0 = (uint64)(addr) & 0xffff;              \
  (gate).cs = CODE_SEG;                                   \
  (gate).ist = (ist);                                         \
  (gate).rsv1 = 0;                                        \
  (gate).type = (attr) & 0xF;           \
  (gate).s = 0;                                           \
  (gate).dpl = ((attr) >> 4) & 0x3;                                       \
  (gate).p = 1;                                           \
  (gate).off_31_16 = ((uint64)(addr) >> 16) & 0xffff;     \
  (gate).off_63_32 = (uint64)(addr) >> 32;                \
  (gate).rsv2 = 0;                                        \
}

void set_intr_gate(struct gatedesc* gate, unsigned int ist, void * addr);
void set_trap_gate(struct gatedesc* gate, unsigned char ist, void * addr);
void set_system_gate(struct gatedesc* gate, unsigned char ist, void * addr);
void set_system_intr_gate(struct gatedesc* gate, unsigned char ist, void * addr);    // int3

// trapentry.S
void divide_error();
void debug();
void nmi();
void int3();
void overflow();
void bounds();
void undefined_opcode();
void dev_not_available();
void double_fault();
void coprocessor_segment_overrun();
void invalid_TSS();
void segment_not_present();
void stack_segment_fault();
void general_protection();
void page_fault();
void x87_FPU_error();
void alignment_check();
void machine_check();
void SIMD_exception();
void virtualization_exception();

extern struct segdesc64 GDT64_Table[];
extern struct taskstate64 TSS64_Table;
extern struct gatedesc IDT64_Table[];