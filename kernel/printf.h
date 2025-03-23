/*
__asm__("divq %%rcx"       // 执行 64位无符号(idivq为有符号)除法: (rdx:rax) ÷ rcx 
        : "=a" (n),        // 商存到 rax，即 `n`
        "=d" (__res)     // 余数存到 rdx，即 `__res`
        : "0" (n),        // 被除数 rax = n
        "1" (0),        // rdx 预设为 0，确保 n 是 64 位
        "c" (base));    // 除数存到 rcx
*/
// 64位无符号除法
#define udiv(n,base) ({ \
    int __res; \
    __asm__("divq %%rcx" : "=a" (n), "=d" (__res) : "0" (n), "1" (0), "c" (base)); \
    __res; \
})
