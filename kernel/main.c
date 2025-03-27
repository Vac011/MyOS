// 内核主程序无返回值
// 负责调用各个系统模块的初始化函数，在这些模块初始化结束后，它会创建出系统的第一个进程init，并将控制权交给init进程

#include "defs.h"

int main() {
	tssinit(0xffff800000007c00, 8);
	trapinit();
	intrinit();
	memoryinit();
	taskinit();
	// schedule();
	while (1);
}