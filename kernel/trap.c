#include "defs.h"
#include "trap.h"

void tssinit(uint64 sp, uint16 GDT_TSS) {
	// 初始化 TSS
	TSS64_Table.rsp0 = sp;
	TSS64_Table.rsp1 = sp;
	TSS64_Table.rsp2 = sp;
	TSS64_Table.ist1 = sp;
	TSS64_Table.ist2 = sp;
	TSS64_Table.ist3 = sp;
	TSS64_Table.ist4 = sp;
	TSS64_Table.ist5 = sp;
	TSS64_Table.ist6 = sp;
	TSS64_Table.ist7 = sp;

	// 在 GDT 里添加 TSS 段描述符
	GDT64_Table[GDT_TSS] = (struct segdesc64) {
		.lim_15_0 = sizeof(TSS64_Table) - 1,
		.base_15_0 = (uint64) &TSS64_Table,
		.base_23_16 = (uint64) &TSS64_Table >> 16,
		.type = STS_TG64,
		.s = 0,
		.dpl = 0,
		.p = 1,
		.lim_19_16 = (sizeof(TSS64_Table) - 1) >> 16,
		.avl = 0,
		.l = 0,
		.db = 0,
		.g = 0,
		.base_31_24 = (uint64) &TSS64_Table >> 32
	};
	// 在64位模式下，普通的GDT段描述符只有8字节，只能存32位的基地址(已被忽略, 变为平坦的线性地址)。但TSS的基地址是64位的，且该地址需要在使用时被读取
	// 为了保留与64位GDT表项的兼容性, Intel通过扩展两个连续表项来实现对64位TSS地址的支持, 其中第二个表项的低32位存储TSS的基地址的高32位, 高32必须设置为0
	GDT64_Table[GDT_TSS + 1] = (struct segdesc64) {
		.lim_15_0 = ((uint64) &TSS64_Table >> 32) & 0xffff,				// 64位TSS地址的48-56位
		.base_15_0 = (uint64) &TSS64_Table >> 48,						// 64位TSS地址的56-63位
		.base_23_16 = 0,
		.type = 0,
		.s = 0,
		.dpl = 0,
		.p = 0,
		.lim_19_16 = 0,
		.avl = 0,
		.l = 0,
		.db = 0,
		.g = 0,
		.base_31_24 = 0
	};

	// 加载TSS(段描述符在GDT中的偏移)到TR寄存器
	// 在加载TSS时, 只需要在ltr指令中使用TSS段在GDT中的第一个槽的偏移(这里是GDT项8)，CPU会自动读取它后面的8字节(两个槽共计16字节)
	uint16 tss_selector = GDT_TSS * 8;
    asm volatile ("ltr %0" : : "r" (tss_selector));
}

void trapinit()
{
	// 前32个中断为Intel预设
	set_trap_gate(IDT64_Table+0,1,divide_error);
	set_trap_gate(IDT64_Table+1,1,debug);
	set_intr_gate(IDT64_Table+2,1,nmi);
	set_system_gate(IDT64_Table+3,1,int3);
	set_system_gate(IDT64_Table+4,1,overflow);
	set_system_gate(IDT64_Table+5,1,bounds);
	set_trap_gate(IDT64_Table+6,1,undefined_opcode);
	set_trap_gate(IDT64_Table+7,1,dev_not_available);
	set_trap_gate(IDT64_Table+8,1,double_fault);
	set_trap_gate(IDT64_Table+9,1,coprocessor_segment_overrun);
	set_trap_gate(IDT64_Table+10,1,invalid_TSS);
	set_trap_gate(IDT64_Table+11,1,segment_not_present);
	set_trap_gate(IDT64_Table+12,1,stack_segment_fault);
	set_trap_gate(IDT64_Table+13,1,general_protection);
	set_trap_gate(IDT64_Table+14,1,page_fault);
	//15 Intel reserved. Do not use.
	set_trap_gate(IDT64_Table+16,1,x87_FPU_error);
	set_trap_gate(IDT64_Table+17,1,alignment_check);
	set_trap_gate(IDT64_Table+18,1,machine_check);
	set_trap_gate(IDT64_Table+19,1,SIMD_exception);
	set_trap_gate(IDT64_Table+20,1,virtualization_exception);
	//set_system_gate(SYSTEM_CALL_VECTOR,7,system_call);
}

void set_intr_gate(struct gatedesc* gate, unsigned int ist, void * addr)
{
    SETGATE(*gate, ist, 0x8E, addr);    // P, DPL=0, TYPE=E
}

void set_trap_gate(struct gatedesc* gate, unsigned char ist, void * addr)
{
    SETGATE(*gate, ist, 0x8F, addr);    // P, DPL=0, TYPE=F
}

void set_system_gate(struct gatedesc* gate, unsigned char ist, void * addr)
{
    SETGATE(*gate, ist, 0xEF, addr);    // P, DPL=3, TYPE=F
}

void set_system_intr_gate(struct gatedesc* gate, unsigned char ist, void * addr)    // int3
{
    SETGATE(*gate, ist, 0xEE, addr);    // P, DPL=3, TYPE=E
} 

/*
called in trapentry.S
*/

void do_divide_error(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_divide_error(0),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_debug(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_debug(1),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_nmi(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_nmi(2),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_int3(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_int3(3),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_overflow(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_overflow(4),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_bounds(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_bounds(5),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_undefined_opcode(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_undefined_opcode(6),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_dev_not_available(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_dev_not_available(7),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_double_fault(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_double_fault(8),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_coprocessor_segment_overrun(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_coprocessor_segment_overrun(9),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_invalid_TSS(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_invalid_TSS(10),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);

	if(error_code & 0x01)
		printf("The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");

	if(error_code & 0x02)
		printf("Refers to a gate descriptor in the IDT;\n");
	else
		printf("Refers to a descriptor in the GDT or the current LDT;\n");

	if((error_code & 0x02) == 0)
		if(error_code & 0x04)
			printf("Refers to a segment or gate descriptor in the LDT;\n");
		else
			printf("Refers to a descriptor in the current GDT;\n");

	printf("Segment Selector Index:%#010x\n",error_code & 0xfff8);

	while(1);
}

/*

*/

void do_segment_not_present(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_segment_not_present(11),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);

	if(error_code & 0x01)
		printf("The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");

	if(error_code & 0x02)
		printf("Refers to a gate descriptor in the IDT;\n");
	else
		printf("Refers to a descriptor in the GDT or the current LDT;\n");

	if((error_code & 0x02) == 0)
		if(error_code & 0x04)
			printf("Refers to a segment or gate descriptor in the LDT;\n");
		else
			printf("Refers to a descriptor in the current GDT;\n");

	printf("Segment Selector Index:%#010x\n",error_code & 0xfff8);

	while(1);
}

/*

*/

void do_stack_segment_fault(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_stack_segment_fault(12),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);

	if(error_code & 0x01)
		printf("The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");

	if(error_code & 0x02)
		printf("Refers to a gate descriptor in the IDT;\n");
	else
		printf("Refers to a descriptor in the GDT or the current LDT;\n");

	if((error_code & 0x02) == 0)
		if(error_code & 0x04)
			printf("Refers to a segment or gate descriptor in the LDT;\n");
		else
			printf("Refers to a descriptor in the current GDT;\n");

	printf("Segment Selector Index:%#010x\n",error_code & 0xfff8);

	while(1);
}

/*

*/

void do_general_protection(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_general_protection(13),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);

	if(error_code & 0x01)
		printf("The exception occurred during delivery of an event external to the program,such as an interrupt or an earlier exception.\n");

	if(error_code & 0x02)
		printf("Refers to a gate descriptor in the IDT;\n");
	else
		printf("Refers to a descriptor in the GDT or the current LDT;\n");

	if((error_code & 0x02) == 0)
		if(error_code & 0x04)
			printf("Refers to a segment or gate descriptor in the LDT;\n");
		else
			printf("Refers to a descriptor in the current GDT;\n");

	printf("Segment Selector Index:%#010x\n",error_code & 0xfff8);

	while(1);
}

/*

*/

void do_page_fault(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	unsigned long cr2 = 0;

	__asm__	__volatile__("movq	%%cr2,	%0":"=r"(cr2)::"memory");

	p = (unsigned long *)(rsp + 0x98);
	printf("do_page_fault(14),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);

	if(!(error_code & 0x01))
		printf("Page Not-Present,\t");

	if(error_code & 0x02)
		printf("Write Cause Fault,\t");
	else
		printf("Read Cause Fault,\t");

	if(error_code & 0x04)
		printf("Fault in user(3)\t");
	else
		printf("Fault in supervisor(0,1,2)\t");

	if(error_code & 0x08)
		printf(",Reserved Bit Cause Fault\t");

	if(error_code & 0x10)
		printf(",Instruction fetch Cause Fault");

	printf("\n");

	printf("CR2:%lx\n",cr2);

	while(1);
}

/*

*/

void do_x87_FPU_error(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_x87_FPU_error(16),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_alignment_check(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_alignment_check(17),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_machine_check(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_machine_check(18),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_SIMD_exception(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_SIMD_exception(19),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}

/*

*/

void do_virtualization_exception(unsigned long rsp,unsigned long error_code)
{
	unsigned long * p = NULL;
	p = (unsigned long *)(rsp + 0x98);
	printf("do_virtualization_exception(20),ERROR_CODE:%lx,RSP:%lx,RIP:%lx\n",error_code , rsp , *p);
	while(1);
}