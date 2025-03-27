#include "types.h"

struct regs {
    uint64 r15, r14, r13, r12, r11, r10, r9, r8;
    uint64 rbx, rcx, rdx, rsi, rdi, rax, ds;
    uint64 rbp, rsp, ss, rip, cs;
    uint64 func, error_code, rflags;
};