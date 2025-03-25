#include "defs.h"
#include "intr.h"
#include "trap.h"

void intrinit() {
    // 设置中断处理函数
    set_intr_gate(IDT64_Table+0x20, 1, irq0x20);
    set_intr_gate(IDT64_Table+0x21, 1, irq0x21);
    set_intr_gate(IDT64_Table+0x2c, 1, irq0x2c);

    // 主ICW初始化
    io_out8(0x20, MICW1);
    io_out8(0x21, MICW2);
    io_out8(0x21, MICW3);
    io_out8(0x21, MICW4);
    // 从ICW初始化
    io_out8(0xA0, SICW1);
    io_out8(0xA1, SICW2);
    io_out8(0xA1, SICW3);
    io_out8(0xA1, SICW4);
    // OCW初始化
    io_out8(0x21, 0xfd);
    io_out8(0xA1, 0xff);

    // 至此，重新打开中断
    sti();
}


// 各中断处理程序

// 时钟中断
void do_irq0x20() {
    printf("Timer interrupt\n");
    io_out8(0x20, 0x20);  // 发送 EOI，通知 PIC 该中断已处理
}

// 键盘中断
void do_irq0x21() {
    // printf("Keyboard interrupt\n");
    int x = 0;
    x = io_in8(0x60);  // 读取键盘输入
    printf("%x", x);
    io_out8(0x20, 0x20);  // 发送 EOI，通知 PIC 该中断已处理
}

// 鼠标中断
void do_irq0x2c() {
    printf("Mouse interrupt\n");
    io_out8(0xA0, 0x20);  // 先发送给从 PIC EOI
    io_out8(0x20, 0x20);  // 再发送给主 PIC EOI
}