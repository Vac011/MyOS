// 内核主程序无返回值
// 负责调用各个系统模块的初始化函数，在这些模块初始化结束后，它会创建出系统的第一个进程init，并将控制权交给init进程

// 在kernel.S的页表初始化时已经将帧缓存的物理基地址（0xe0000000）映射到线性地址0xffff800000a00000（给内核使用）和0xa00000（给user使用）
// int *addr = (int *)0xffff800000a00000;

// void box(int x, int y, int w, int h, int color);

// void main() {
	
// 	box(20, 30, 100, 100, 0x00ff00);
// 	box(50, 70, 120, 120, 0xff0000);
// 	box(100, 100, 200, 200, 0x0000ff);

// 	while(1)
// 		;
// }

// void box(int x, int y, int w, int h, int color) {
// 	int i, j;
// 	for (i = y; i < y + h; i++) {
// 		for (j = x; j < x + w; j++) {
// 			*(addr + j + i * 1440) = color;
// 		}
// 	}
// }

#include "defs.h"

int main() {
	int year = 2025, month = 3, day = 13;
	printf("This is the Mono-Text-Mode!\n%d year %d month %d day", year, month, day);
	while (1);
}