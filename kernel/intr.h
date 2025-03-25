// ICW1: 共8位, 一般设置为 0x11，表示级联8259A。使用端口0x20和0xA0
#define MICW1 0x11
#define SICW1 0x11

// ICW2: 共8位, 用于设置中断向量号，即中断号的起始值, 一般主片设置为 0x20，从片设置为 0x28。使用端口0x21和0xA1
#define MICW2 0x20
#define SICW2 0x28

// ICW3: 共8位, 主片的8位对应8个引脚，表示从片连接到主片的引脚号；从片的第3位表示连接到主片的引脚号。因为硬件已经无法改变，因此只能设置为固定值。使用端口0x21和0xA1
#define MICW3 0x04
#define SICW3 0x02

// ICW4: 共8位, 一般设置为最简单的0x01，表示8086模式。使用端口0x21和0xA1
#define MICW4 0x01
#define SICW4 0x01

// OCW1: 共8位, 每位对应芯片的每个引脚，用于设置中断屏蔽寄存器, 尽量屏蔽掉不使用的中断请求引脚，以防止接收不必要的中断请求，进而导致中断请求过于拥堵。使用端口0x21和0xA1

// OCW2: 共8位, 用于设置中断类型，即设置中断请求方式。使用端口0x20和0xA0

// OCW3: 共8位, 用于设置中断结束方式。使用端口0x20和0xA0

static inline unsigned char io_in8(unsigned short port)
{
	unsigned char ret = 0;
	__asm__ __volatile__(	"inb	%%dx,	%0	\n\t"
				"mfence			\n\t"
				:"=a"(ret)
				:"d"(port)
				:"memory");
	return ret;
}

static inline void io_out8(unsigned short port,unsigned char value)
{
	__asm__ __volatile__(	"outb	%0,	%%dx	\n\t"
				"mfence			\n\t"
				:
				:"a"(value),"d"(port)
				:"memory");
}

#define sti() 		__asm__ __volatile__ ("sti	\n\t":::"memory")
#define cli()	 	__asm__ __volatile__ ("cli	\n\t":::"memory")

// 定义IRQ数量为24而不是15是为了未来升级到APIC
#define IRQNUM 24

// intrentry.S
void irq0x20();
void irq0x21();
void irq0x2c();
