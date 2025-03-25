
kernel/kernel:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 58 8e 00 00 	lgdt   0x8e58(%rip)        # ffff800000108e70 <GDT6464_LIMIT>
ffff800000100018:	0f 01 1d 5b 9e 00 00 	lidt   0x9e5b(%rip)        # ffff800000109e7a <IDT64_END>
ffff80000010001f:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100023:	8e d8                	mov    %eax,%ds
ffff800000100025:	8e c0                	mov    %eax,%es
ffff800000100027:	8e e0                	mov    %eax,%fs
ffff800000100029:	8e e8                	mov    %eax,%gs
ffff80000010002b:	8e d0                	mov    %eax,%ss
ffff80000010002d:	48 c7 c4 00 7e 00 00 	mov    $0x7e00,%rsp
ffff800000100034:	48 c7 c0 00 10 10 00 	mov    $0x101000,%rax
ffff80000010003b:	0f 22 d8             	mov    %rax,%cr3
ffff80000010003e:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff80000010004a <switch_seg>
ffff800000100045:	6a 08                	pushq  $0x8
ffff800000100047:	50                   	push   %rax
ffff800000100048:	48 cb                	lretq  

ffff80000010004a <switch_seg>:
ffff80000010004a:	52                   	push   %rdx
ffff80000010004b:	00 10                	add    %dl,(%rax)
ffff80000010004d:	00 00                	add    %al,(%rax)
ffff80000010004f:	80 ff ff             	cmp    $0xff,%bh

ffff800000100052 <entry64>:
ffff800000100052:	48 c7 c0 10 00 00 00 	mov    $0x10,%rax
ffff800000100059:	48 8e d8             	mov    %rax,%ds
ffff80000010005c:	48 8e c0             	mov    %rax,%es
ffff80000010005f:	48 8e e8             	mov    %rax,%gs
ffff800000100062:	48 8e d0             	mov    %rax,%ss
ffff800000100065:	48 bc 00 7e 00 00 00 	movabs $0xffff800000007e00,%rsp
ffff80000010006c:	80 ff ff 
ffff80000010006f:	48 8b 05 05 00 00 00 	mov    0x5(%rip),%rax        # ffff80000010007b <go_to_kernel>
ffff800000100076:	6a 08                	pushq  $0x8
ffff800000100078:	50                   	push   %rax
ffff800000100079:	48 cb                	lretq  

ffff80000010007b <go_to_kernel>:
ffff80000010007b:	7f 42                	jg     ffff8000001000bf <go_to_kernel+0x44>
ffff80000010007d:	10 00                	adc    %al,(%rax)
ffff80000010007f:	00 80 ff ff 00 00    	add    %al,0xffff(%rax)
	...

ffff800000101000 <__PML4E>:
ffff800000101000:	07                   	(bad)  
ffff800000101001:	20 10                	and    %dl,(%rax)
	...
ffff8000001017ff:	00 07                	add    %al,(%rdi)
ffff800000101801:	20 10                	and    %dl,(%rax)
	...

ffff800000102000 <__PDPTE>:
ffff800000102000:	03 30                	add    (%rax),%esi
ffff800000102002:	10 00                	adc    %al,(%rax)
	...

ffff800000103000 <__PDE>:
ffff800000103000:	83 00 00             	addl   $0x0,(%rax)
ffff800000103003:	00 00                	add    %al,(%rax)
ffff800000103005:	00 00                	add    %al,(%rax)
ffff800000103007:	00 83 00 20 00 00    	add    %al,0x2000(%rbx)
ffff80000010300d:	00 00                	add    %al,(%rax)
ffff80000010300f:	00 83 00 40 00 00    	add    %al,0x4000(%rbx)
ffff800000103015:	00 00                	add    %al,(%rax)
ffff800000103017:	00 83 00 60 00 00    	add    %al,0x6000(%rbx)
ffff80000010301d:	00 00                	add    %al,(%rax)
ffff80000010301f:	00 83 00 80 00 00    	add    %al,0x8000(%rbx)
ffff800000103025:	00 00                	add    %al,(%rax)
ffff800000103027:	00 83 00 00 e0 00    	add    %al,0xe00000(%rbx)
ffff80000010302d:	00 00                	add    %al,(%rax)
ffff80000010302f:	00 83 00 20 e0 00    	add    %al,0xe02000(%rbx)
ffff800000103035:	00 00                	add    %al,(%rax)
ffff800000103037:	00 83 00 40 e0 00    	add    %al,0xe04000(%rbx)
ffff80000010303d:	00 00                	add    %al,(%rax)
ffff80000010303f:	00 83 00 60 e0 00    	add    %al,0xe06000(%rbx)
ffff800000103045:	00 00                	add    %al,(%rax)
ffff800000103047:	00 83 00 80 e0 00    	add    %al,0xe08000(%rbx)
ffff80000010304d:	00 00                	add    %al,(%rax)
ffff80000010304f:	00 83 00 a0 e0 00    	add    %al,0xe0a000(%rbx)
ffff800000103055:	00 00                	add    %al,(%rax)
ffff800000103057:	00 83 00 c0 e0 00    	add    %al,0xe0c000(%rbx)
ffff80000010305d:	00 00                	add    %al,(%rax)
ffff80000010305f:	00 83 00 e0 e0 00    	add    %al,0xe0e000(%rbx)
	...

ffff800000104000 <enter_exception>:
ffff800000104000:	50                   	push   %rax
ffff800000104001:	51                   	push   %rcx
ffff800000104002:	52                   	push   %rdx
ffff800000104003:	53                   	push   %rbx
ffff800000104004:	55                   	push   %rbp
ffff800000104005:	56                   	push   %rsi
ffff800000104006:	57                   	push   %rdi
ffff800000104007:	41 50                	push   %r8
ffff800000104009:	41 51                	push   %r9
ffff80000010400b:	41 52                	push   %r10
ffff80000010400d:	41 53                	push   %r11
ffff80000010400f:	41 54                	push   %r12
ffff800000104011:	41 55                	push   %r13
ffff800000104013:	41 56                	push   %r14
ffff800000104015:	41 57                	push   %r15
ffff800000104017:	48 8c d8             	mov    %ds,%rax
ffff80000010401a:	50                   	push   %rax
ffff80000010401b:	48 8c c0             	mov    %es,%rax
ffff80000010401e:	50                   	push   %rax
ffff80000010401f:	48 31 c0             	xor    %rax,%rax
ffff800000104022:	fc                   	cld    
ffff800000104023:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
ffff80000010402a:	00 
ffff80000010402b:	48 8b 94 24 88 00 00 	mov    0x88(%rsp),%rdx
ffff800000104032:	00 
ffff800000104033:	48 c7 c7 10 00 00 00 	mov    $0x10,%rdi
ffff80000010403a:	48 8e df             	mov    %rdi,%ds
ffff80000010403d:	48 8e c7             	mov    %rdi,%es
ffff800000104040:	48 89 e7             	mov    %rsp,%rdi
ffff800000104043:	ff d2                	callq  *%rdx
ffff800000104045:	eb 00                	jmp    ffff800000104047 <ret_from_exception>

ffff800000104047 <ret_from_exception>:
ffff800000104047:	58                   	pop    %rax
ffff800000104048:	48 8e c0             	mov    %rax,%es
ffff80000010404b:	58                   	pop    %rax
ffff80000010404c:	48 8e d8             	mov    %rax,%ds
ffff80000010404f:	41 5f                	pop    %r15
ffff800000104051:	41 5e                	pop    %r14
ffff800000104053:	41 5d                	pop    %r13
ffff800000104055:	41 5c                	pop    %r12
ffff800000104057:	41 5b                	pop    %r11
ffff800000104059:	41 5a                	pop    %r10
ffff80000010405b:	41 59                	pop    %r9
ffff80000010405d:	41 58                	pop    %r8
ffff80000010405f:	5f                   	pop    %rdi
ffff800000104060:	5e                   	pop    %rsi
ffff800000104061:	5d                   	pop    %rbp
ffff800000104062:	5b                   	pop    %rbx
ffff800000104063:	5a                   	pop    %rdx
ffff800000104064:	59                   	pop    %rcx
ffff800000104065:	58                   	pop    %rax
ffff800000104066:	48 83 c4 10          	add    $0x10,%rsp
ffff80000010406a:	48 cf                	iretq  

ffff80000010406c <divide_error>:
ffff80000010406c:	6a 00                	pushq  $0x0
ffff80000010406e:	50                   	push   %rax
ffff80000010406f:	48 8d 05 bf 17 00 00 	lea    0x17bf(%rip),%rax        # ffff800000105835 <do_divide_error>
ffff800000104076:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010407a:	eb 84                	jmp    ffff800000104000 <enter_exception>

ffff80000010407c <debug>:
ffff80000010407c:	6a 00                	pushq  $0x0
ffff80000010407e:	50                   	push   %rax
ffff80000010407f:	48 8d 05 2d 18 00 00 	lea    0x182d(%rip),%rax        # ffff8000001058b3 <do_debug>
ffff800000104086:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010408a:	e9 71 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010408f <nmi>:
ffff80000010408f:	6a 00                	pushq  $0x0
ffff800000104091:	50                   	push   %rax
ffff800000104092:	48 8d 05 98 18 00 00 	lea    0x1898(%rip),%rax        # ffff800000105931 <do_nmi>
ffff800000104099:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010409d:	e9 5e ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040a2 <int3>:
ffff8000001040a2:	6a 00                	pushq  $0x0
ffff8000001040a4:	50                   	push   %rax
ffff8000001040a5:	48 8d 05 03 19 00 00 	lea    0x1903(%rip),%rax        # ffff8000001059af <do_int3>
ffff8000001040ac:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040b0:	e9 4b ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040b5 <overflow>:
ffff8000001040b5:	6a 00                	pushq  $0x0
ffff8000001040b7:	50                   	push   %rax
ffff8000001040b8:	48 8d 05 6e 19 00 00 	lea    0x196e(%rip),%rax        # ffff800000105a2d <do_overflow>
ffff8000001040bf:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040c3:	e9 38 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040c8 <bounds>:
ffff8000001040c8:	6a 00                	pushq  $0x0
ffff8000001040ca:	50                   	push   %rax
ffff8000001040cb:	48 8d 05 d9 19 00 00 	lea    0x19d9(%rip),%rax        # ffff800000105aab <do_bounds>
ffff8000001040d2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040d6:	e9 25 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040db <undefined_opcode>:
ffff8000001040db:	6a 00                	pushq  $0x0
ffff8000001040dd:	50                   	push   %rax
ffff8000001040de:	48 8d 05 44 1a 00 00 	lea    0x1a44(%rip),%rax        # ffff800000105b29 <do_undefined_opcode>
ffff8000001040e5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040e9:	e9 12 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040ee <dev_not_available>:
ffff8000001040ee:	6a 00                	pushq  $0x0
ffff8000001040f0:	50                   	push   %rax
ffff8000001040f1:	48 8d 05 af 1a 00 00 	lea    0x1aaf(%rip),%rax        # ffff800000105ba7 <do_dev_not_available>
ffff8000001040f8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040fc:	e9 ff fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104101 <double_fault>:
ffff800000104101:	50                   	push   %rax
ffff800000104102:	48 8d 05 1c 1b 00 00 	lea    0x1b1c(%rip),%rax        # ffff800000105c25 <do_double_fault>
ffff800000104109:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010410d:	e9 ee fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104112 <coprocessor_segment_overrun>:
ffff800000104112:	6a 00                	pushq  $0x0
ffff800000104114:	50                   	push   %rax
ffff800000104115:	48 8d 05 87 1b 00 00 	lea    0x1b87(%rip),%rax        # ffff800000105ca3 <do_coprocessor_segment_overrun>
ffff80000010411c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104120:	e9 db fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104125 <invalid_TSS>:
ffff800000104125:	50                   	push   %rax
ffff800000104126:	48 8d 05 f4 1b 00 00 	lea    0x1bf4(%rip),%rax        # ffff800000105d21 <do_invalid_TSS>
ffff80000010412d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104131:	e9 ca fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104136 <segment_not_present>:
ffff800000104136:	50                   	push   %rax
ffff800000104137:	48 8d 05 80 1d 00 00 	lea    0x1d80(%rip),%rax        # ffff800000105ebe <do_segment_not_present>
ffff80000010413e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104142:	e9 b9 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104147 <stack_segment_fault>:
ffff800000104147:	50                   	push   %rax
ffff800000104148:	48 8d 05 0c 1f 00 00 	lea    0x1f0c(%rip),%rax        # ffff80000010605b <do_stack_segment_fault>
ffff80000010414f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104153:	e9 a8 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104158 <general_protection>:
ffff800000104158:	50                   	push   %rax
ffff800000104159:	48 8d 05 98 20 00 00 	lea    0x2098(%rip),%rax        # ffff8000001061f8 <do_general_protection>
ffff800000104160:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104164:	e9 97 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104169 <page_fault>:
ffff800000104169:	50                   	push   %rax
ffff80000010416a:	48 8d 05 24 22 00 00 	lea    0x2224(%rip),%rax        # ffff800000106395 <do_page_fault>
ffff800000104171:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104175:	e9 86 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010417a <x87_FPU_error>:
ffff80000010417a:	6a 00                	pushq  $0x0
ffff80000010417c:	50                   	push   %rax
ffff80000010417d:	48 8d 05 33 24 00 00 	lea    0x2433(%rip),%rax        # ffff8000001065b7 <do_x87_FPU_error>
ffff800000104184:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104188:	e9 73 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010418d <alignment_check>:
ffff80000010418d:	50                   	push   %rax
ffff80000010418e:	48 8d 05 a0 24 00 00 	lea    0x24a0(%rip),%rax        # ffff800000106635 <do_alignment_check>
ffff800000104195:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104199:	e9 62 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010419e <machine_check>:
ffff80000010419e:	6a 00                	pushq  $0x0
ffff8000001041a0:	50                   	push   %rax
ffff8000001041a1:	48 8d 05 0b 25 00 00 	lea    0x250b(%rip),%rax        # ffff8000001066b3 <do_machine_check>
ffff8000001041a8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041ac:	e9 4f fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041b1 <SIMD_exception>:
ffff8000001041b1:	6a 00                	pushq  $0x0
ffff8000001041b3:	50                   	push   %rax
ffff8000001041b4:	48 8d 05 76 25 00 00 	lea    0x2576(%rip),%rax        # ffff800000106731 <do_SIMD_exception>
ffff8000001041bb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041bf:	e9 3c fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041c4 <virtualization_exception>:
ffff8000001041c4:	6a 00                	pushq  $0x0
ffff8000001041c6:	50                   	push   %rax
ffff8000001041c7:	48 8d 05 e1 25 00 00 	lea    0x25e1(%rip),%rax        # ffff8000001067af <do_virtualization_exception>
ffff8000001041ce:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041d2:	e9 29 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041d7 <save_all>:
ffff8000001041d7:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041db:	51                   	push   %rcx
ffff8000001041dc:	52                   	push   %rdx
ffff8000001041dd:	53                   	push   %rbx
ffff8000001041de:	55                   	push   %rbp
ffff8000001041df:	56                   	push   %rsi
ffff8000001041e0:	57                   	push   %rdi
ffff8000001041e1:	41 50                	push   %r8
ffff8000001041e3:	41 51                	push   %r9
ffff8000001041e5:	41 52                	push   %r10
ffff8000001041e7:	41 53                	push   %r11
ffff8000001041e9:	41 54                	push   %r12
ffff8000001041eb:	41 55                	push   %r13
ffff8000001041ed:	41 56                	push   %r14
ffff8000001041ef:	41 57                	push   %r15
ffff8000001041f1:	48 8c d9             	mov    %ds,%rcx
ffff8000001041f4:	51                   	push   %rcx
ffff8000001041f5:	48 8c c1             	mov    %es,%rcx
ffff8000001041f8:	51                   	push   %rcx
ffff8000001041f9:	ff e0                	jmpq   *%rax

ffff8000001041fb <ret_from_intr>:
ffff8000001041fb:	58                   	pop    %rax
ffff8000001041fc:	48 8e c0             	mov    %rax,%es
ffff8000001041ff:	58                   	pop    %rax
ffff800000104200:	48 8e d8             	mov    %rax,%ds
ffff800000104203:	41 5f                	pop    %r15
ffff800000104205:	41 5e                	pop    %r14
ffff800000104207:	41 5d                	pop    %r13
ffff800000104209:	41 5c                	pop    %r12
ffff80000010420b:	41 5b                	pop    %r11
ffff80000010420d:	41 5a                	pop    %r10
ffff80000010420f:	41 59                	pop    %r9
ffff800000104211:	41 58                	pop    %r8
ffff800000104213:	5f                   	pop    %rdi
ffff800000104214:	5e                   	pop    %rsi
ffff800000104215:	5d                   	pop    %rbp
ffff800000104216:	5b                   	pop    %rbx
ffff800000104217:	5a                   	pop    %rdx
ffff800000104218:	59                   	pop    %rcx
ffff800000104219:	58                   	pop    %rax
ffff80000010421a:	48 cf                	iretq  

ffff80000010421c <irq0x20>:
ffff80000010421c:	e8 b6 ff ff ff       	callq  ffff8000001041d7 <save_all>
ffff800000104221:	fc                   	cld    
ffff800000104222:	48 89 e7             	mov    %rsp,%rdi
ffff800000104225:	48 c7 c6 20 00 00 00 	mov    $0x20,%rsi
ffff80000010422c:	48 8d 15 58 28 00 00 	lea    0x2858(%rip),%rdx        # ffff800000106a8b <do_irq0x20>
ffff800000104233:	48 8d 0d c1 ff ff ff 	lea    -0x3f(%rip),%rcx        # ffff8000001041fb <ret_from_intr>
ffff80000010423a:	51                   	push   %rcx
ffff80000010423b:	ff e2                	jmpq   *%rdx

ffff80000010423d <irq0x21>:
ffff80000010423d:	e8 95 ff ff ff       	callq  ffff8000001041d7 <save_all>
ffff800000104242:	fc                   	cld    
ffff800000104243:	48 89 e7             	mov    %rsp,%rdi
ffff800000104246:	48 c7 c6 21 00 00 00 	mov    $0x21,%rsi
ffff80000010424d:	48 8d 15 9f 28 00 00 	lea    0x289f(%rip),%rdx        # ffff800000106af3 <do_irq0x21>
ffff800000104254:	48 8d 0d a0 ff ff ff 	lea    -0x60(%rip),%rcx        # ffff8000001041fb <ret_from_intr>
ffff80000010425b:	51                   	push   %rcx
ffff80000010425c:	ff e2                	jmpq   *%rdx

ffff80000010425e <irq0x2c>:
ffff80000010425e:	e8 74 ff ff ff       	callq  ffff8000001041d7 <save_all>
ffff800000104263:	fc                   	cld    
ffff800000104264:	48 89 e7             	mov    %rsp,%rdi
ffff800000104267:	48 c7 c6 22 00 00 00 	mov    $0x22,%rsi
ffff80000010426e:	48 8d 15 15 29 00 00 	lea    0x2915(%rip),%rdx        # ffff800000106b8a <do_irq0x2c>
ffff800000104275:	48 8d 0d 7f ff ff ff 	lea    -0x81(%rip),%rcx        # ffff8000001041fb <ret_from_intr>
ffff80000010427c:	51                   	push   %rcx
ffff80000010427d:	ff e2                	jmpq   *%rdx

ffff80000010427f <main>:
ffff80000010427f:	f3 0f 1e fa          	endbr64 
ffff800000104283:	55                   	push   %rbp
ffff800000104284:	48 89 e5             	mov    %rsp,%rbp
ffff800000104287:	41 57                	push   %r15
ffff800000104289:	53                   	push   %rbx
ffff80000010428a:	f3 0f 1e fa          	endbr64 
ffff80000010428e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010428a <main+0xb>
ffff800000104295:	49 bb 46 5d 00 00 00 	movabs $0x5d46,%r11
ffff80000010429c:	00 00 00 
ffff80000010429f:	4c 01 db             	add    %r11,%rbx
ffff8000001042a2:	be 08 00 00 00       	mov    $0x8,%esi
ffff8000001042a7:	48 bf 00 7c 00 00 00 	movabs $0xffff800000007c00,%rdi
ffff8000001042ae:	80 ff ff 
ffff8000001042b1:	49 89 df             	mov    %rbx,%r15
ffff8000001042b4:	48 b8 16 ad ff ff ff 	movabs $0xffffffffffffad16,%rax
ffff8000001042bb:	ff ff ff 
ffff8000001042be:	48 01 d8             	add    %rbx,%rax
ffff8000001042c1:	ff d0                	callq  *%rax
ffff8000001042c3:	49 89 df             	mov    %rbx,%r15
ffff8000001042c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042cb:	48 ba 4a b0 ff ff ff 	movabs $0xffffffffffffb04a,%rdx
ffff8000001042d2:	ff ff ff 
ffff8000001042d5:	48 01 da             	add    %rbx,%rdx
ffff8000001042d8:	ff d2                	callq  *%rdx
ffff8000001042da:	49 89 df             	mov    %rbx,%r15
ffff8000001042dd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042e2:	48 ba d6 c8 ff ff ff 	movabs $0xffffffffffffc8d6,%rdx
ffff8000001042e9:	ff ff ff 
ffff8000001042ec:	48 01 da             	add    %rbx,%rdx
ffff8000001042ef:	ff d2                	callq  *%rdx
ffff8000001042f1:	49 89 df             	mov    %rbx,%r15
ffff8000001042f4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042f9:	48 ba 3c cc ff ff ff 	movabs $0xffffffffffffcc3c,%rdx
ffff800000104300:	ff ff ff 
ffff800000104303:	48 01 da             	add    %rbx,%rdx
ffff800000104306:	ff d2                	callq  *%rdx
ffff800000104308:	eb fe                	jmp    ffff800000104308 <main+0x89>

ffff80000010430a <itoa>:
ffff80000010430a:	f3 0f 1e fa          	endbr64 
ffff80000010430e:	55                   	push   %rbp
ffff80000010430f:	48 89 e5             	mov    %rsp,%rbp
ffff800000104312:	f3 0f 1e fa          	endbr64 
ffff800000104316:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104312 <itoa+0x8>
ffff80000010431d:	49 bb be 5c 00 00 00 	movabs $0x5cbe,%r11
ffff800000104324:	00 00 00 
ffff800000104327:	4c 01 d8             	add    %r11,%rax
ffff80000010432a:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff80000010432e:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104332:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff800000104335:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
ffff80000010433c:	35 36 37 
ffff80000010433f:	48 ba 38 39 41 42 43 	movabs $0x4645444342413938,%rdx
ffff800000104346:	44 45 46 
ffff800000104349:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff80000010434d:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000104351:	c6 45 e0 00          	movb   $0x0,-0x20(%rbp)
ffff800000104355:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010435c:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff800000104363:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
ffff800000104368:	79 0d                	jns    ffff800000104377 <itoa+0x6d>
ffff80000010436a:	83 7d 9c 0a          	cmpl   $0xa,-0x64(%rbp)
ffff80000010436e:	75 07                	jne    ffff800000104377 <itoa+0x6d>
ffff800000104370:	b8 01 00 00 00       	mov    $0x1,%eax
ffff800000104375:	eb 05                	jmp    ffff80000010437c <itoa+0x72>
ffff800000104377:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010437c:	89 45 f4             	mov    %eax,-0xc(%rbp)
ffff80000010437f:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff800000104383:	74 04                	je     ffff800000104389 <itoa+0x7f>
ffff800000104385:	48 f7 5d a8          	negq   -0x58(%rbp)
ffff800000104389:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff80000010438d:	ba 00 00 00 00       	mov    $0x0,%edx
ffff800000104392:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
ffff800000104395:	48 f7 f1             	div    %rcx
ffff800000104398:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff80000010439c:	89 55 f0             	mov    %edx,-0x10(%rbp)
ffff80000010439f:	8b 4d f0             	mov    -0x10(%rbp),%ecx
ffff8000001043a2:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043a5:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043a8:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001043ab:	48 63 d1             	movslq %ecx,%rdx
ffff8000001043ae:	0f b6 54 15 d0       	movzbl -0x30(%rbp,%rdx,1),%edx
ffff8000001043b3:	48 98                	cltq   
ffff8000001043b5:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff8000001043b9:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
ffff8000001043be:	75 c9                	jne    ffff800000104389 <itoa+0x7f>
ffff8000001043c0:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff8000001043c4:	74 35                	je     ffff8000001043fb <itoa+0xf1>
ffff8000001043c6:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043c9:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043cc:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001043cf:	48 98                	cltq   
ffff8000001043d1:	c6 44 05 b0 2d       	movb   $0x2d,-0x50(%rbp,%rax,1)
ffff8000001043d6:	eb 23                	jmp    ffff8000001043fb <itoa+0xf1>
ffff8000001043d8:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
ffff8000001043dc:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff8000001043df:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043e2:	89 55 f8             	mov    %edx,-0x8(%rbp)
ffff8000001043e5:	48 63 d0             	movslq %eax,%rdx
ffff8000001043e8:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff8000001043ec:	48 01 c2             	add    %rax,%rdx
ffff8000001043ef:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043f2:	48 98                	cltq   
ffff8000001043f4:	0f b6 44 05 b0       	movzbl -0x50(%rbp,%rax,1),%eax
ffff8000001043f9:	88 02                	mov    %al,(%rdx)
ffff8000001043fb:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
ffff8000001043ff:	7f d7                	jg     ffff8000001043d8 <itoa+0xce>
ffff800000104401:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff800000104404:	48 63 d0             	movslq %eax,%rdx
ffff800000104407:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff80000010440b:	48 01 d0             	add    %rdx,%rax
ffff80000010440e:	c6 00 00             	movb   $0x0,(%rax)
ffff800000104411:	90                   	nop
ffff800000104412:	5d                   	pop    %rbp
ffff800000104413:	c3                   	retq   

ffff800000104414 <vsnprintf>:
ffff800000104414:	f3 0f 1e fa          	endbr64 
ffff800000104418:	55                   	push   %rbp
ffff800000104419:	48 89 e5             	mov    %rsp,%rbp
ffff80000010441c:	53                   	push   %rbx
ffff80000010441d:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
ffff800000104421:	f3 0f 1e fa          	endbr64 
ffff800000104425:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104421 <vsnprintf+0xd>
ffff80000010442c:	49 bb af 5b 00 00 00 	movabs $0x5baf,%r11
ffff800000104433:	00 00 00 
ffff800000104436:	4c 01 db             	add    %r11,%rbx
ffff800000104439:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
ffff80000010443d:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
ffff800000104441:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
ffff800000104445:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
ffff80000010444c:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff800000104453:	00 
ffff800000104454:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010445b:	00 
ffff80000010445c:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff800000104463:	e9 bf 04 00 00       	jmpq   ffff800000104927 <vsnprintf+0x513>
ffff800000104468:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff80000010446c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104470:	48 01 d0             	add    %rdx,%rax
ffff800000104473:	0f b6 00             	movzbl (%rax),%eax
ffff800000104476:	3c 25                	cmp    $0x25,%al
ffff800000104478:	0f 85 80 04 00 00    	jne    ffff8000001048fe <vsnprintf+0x4ea>
ffff80000010447e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104482:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104486:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff80000010448a:	48 01 d0             	add    %rdx,%rax
ffff80000010448d:	0f b6 00             	movzbl (%rax),%eax
ffff800000104490:	84 c0                	test   %al,%al
ffff800000104492:	0f 84 66 04 00 00    	je     ffff8000001048fe <vsnprintf+0x4ea>
ffff800000104498:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff80000010449d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001044a4:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001044a8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001044ac:	48 01 d0             	add    %rdx,%rax
ffff8000001044af:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044b2:	3c 6c                	cmp    $0x6c,%al
ffff8000001044b4:	75 0c                	jne    ffff8000001044c2 <vsnprintf+0xae>
ffff8000001044b6:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
ffff8000001044bd:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001044c2:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001044c6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001044ca:	48 01 d0             	add    %rdx,%rax
ffff8000001044cd:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044d0:	0f be c0             	movsbl %al,%eax
ffff8000001044d3:	83 f8 78             	cmp    $0x78,%eax
ffff8000001044d6:	0f 84 9a 02 00 00    	je     ffff800000104776 <vsnprintf+0x362>
ffff8000001044dc:	83 f8 78             	cmp    $0x78,%eax
ffff8000001044df:	0f 8f d4 03 00 00    	jg     ffff8000001048b9 <vsnprintf+0x4a5>
ffff8000001044e5:	83 f8 73             	cmp    $0x73,%eax
ffff8000001044e8:	0f 84 97 00 00 00    	je     ffff800000104585 <vsnprintf+0x171>
ffff8000001044ee:	83 f8 73             	cmp    $0x73,%eax
ffff8000001044f1:	0f 8f c2 03 00 00    	jg     ffff8000001048b9 <vsnprintf+0x4a5>
ffff8000001044f7:	83 f8 63             	cmp    $0x63,%eax
ffff8000001044fa:	74 0e                	je     ffff80000010450a <vsnprintf+0xf6>
ffff8000001044fc:	83 f8 64             	cmp    $0x64,%eax
ffff8000001044ff:	0f 84 27 01 00 00    	je     ffff80000010462c <vsnprintf+0x218>
ffff800000104505:	e9 af 03 00 00       	jmpq   ffff8000001048b9 <vsnprintf+0x4a5>
ffff80000010450a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104511:	8b 00                	mov    (%rax),%eax
ffff800000104513:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104516:	77 30                	ja     ffff800000104548 <vsnprintf+0x134>
ffff800000104518:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010451f:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104523:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010452a:	8b 00                	mov    (%rax),%eax
ffff80000010452c:	89 c0                	mov    %eax,%eax
ffff80000010452e:	48 01 d0             	add    %rdx,%rax
ffff800000104531:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104538:	8b 12                	mov    (%rdx),%edx
ffff80000010453a:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010453d:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104544:	89 0a                	mov    %ecx,(%rdx)
ffff800000104546:	eb 1a                	jmp    ffff800000104562 <vsnprintf+0x14e>
ffff800000104548:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010454f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104553:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104557:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010455e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104562:	8b 00                	mov    (%rax),%eax
ffff800000104564:	88 45 c7             	mov    %al,-0x39(%rbp)
ffff800000104567:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010456b:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010456f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104573:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104577:	48 01 c2             	add    %rax,%rdx
ffff80000010457a:	0f b6 45 c7          	movzbl -0x39(%rbp),%eax
ffff80000010457e:	88 02                	mov    %al,(%rdx)
ffff800000104580:	e9 77 03 00 00       	jmpq   ffff8000001048fc <vsnprintf+0x4e8>
ffff800000104585:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010458c:	8b 00                	mov    (%rax),%eax
ffff80000010458e:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104591:	77 30                	ja     ffff8000001045c3 <vsnprintf+0x1af>
ffff800000104593:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010459a:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010459e:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045a5:	8b 00                	mov    (%rax),%eax
ffff8000001045a7:	89 c0                	mov    %eax,%eax
ffff8000001045a9:	48 01 d0             	add    %rdx,%rax
ffff8000001045ac:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045b3:	8b 12                	mov    (%rdx),%edx
ffff8000001045b5:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001045b8:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045bf:	89 0a                	mov    %ecx,(%rdx)
ffff8000001045c1:	eb 1a                	jmp    ffff8000001045dd <vsnprintf+0x1c9>
ffff8000001045c3:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045ca:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001045ce:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001045d2:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045d9:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001045dd:	48 8b 00             	mov    (%rax),%rax
ffff8000001045e0:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001045e4:	eb 24                	jmp    ffff80000010460a <vsnprintf+0x1f6>
ffff8000001045e6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001045ea:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001045ee:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff8000001045f2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001045f6:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
ffff8000001045fa:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001045fe:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
ffff800000104602:	48 01 ca             	add    %rcx,%rdx
ffff800000104605:	0f b6 00             	movzbl (%rax),%eax
ffff800000104608:	88 02                	mov    %al,(%rdx)
ffff80000010460a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010460e:	0f b6 00             	movzbl (%rax),%eax
ffff800000104611:	84 c0                	test   %al,%al
ffff800000104613:	0f 84 dc 02 00 00    	je     ffff8000001048f5 <vsnprintf+0x4e1>
ffff800000104619:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff80000010461d:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104621:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff800000104625:	72 bf                	jb     ffff8000001045e6 <vsnprintf+0x1d2>
ffff800000104627:	e9 c9 02 00 00       	jmpq   ffff8000001048f5 <vsnprintf+0x4e1>
ffff80000010462c:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
ffff800000104630:	74 7c                	je     ffff8000001046ae <vsnprintf+0x29a>
ffff800000104632:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104639:	8b 00                	mov    (%rax),%eax
ffff80000010463b:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010463e:	77 30                	ja     ffff800000104670 <vsnprintf+0x25c>
ffff800000104640:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104647:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010464b:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104652:	8b 00                	mov    (%rax),%eax
ffff800000104654:	89 c0                	mov    %eax,%eax
ffff800000104656:	48 01 d0             	add    %rdx,%rax
ffff800000104659:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104660:	8b 12                	mov    (%rdx),%edx
ffff800000104662:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104665:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010466c:	89 0a                	mov    %ecx,(%rdx)
ffff80000010466e:	eb 1a                	jmp    ffff80000010468a <vsnprintf+0x276>
ffff800000104670:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104677:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010467b:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010467f:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104686:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010468a:	48 8b 00             	mov    (%rax),%rax
ffff80000010468d:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff800000104691:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104696:	48 89 ce             	mov    %rcx,%rsi
ffff800000104699:	48 89 c7             	mov    %rax,%rdi
ffff80000010469c:	48 b8 3a a3 ff ff ff 	movabs $0xffffffffffffa33a,%rax
ffff8000001046a3:	ff ff ff 
ffff8000001046a6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046aa:	ff d0                	callq  *%rax
ffff8000001046ac:	eb 7b                	jmp    ffff800000104729 <vsnprintf+0x315>
ffff8000001046ae:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046b5:	8b 00                	mov    (%rax),%eax
ffff8000001046b7:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001046ba:	77 30                	ja     ffff8000001046ec <vsnprintf+0x2d8>
ffff8000001046bc:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046c3:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001046c7:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046ce:	8b 00                	mov    (%rax),%eax
ffff8000001046d0:	89 c0                	mov    %eax,%eax
ffff8000001046d2:	48 01 d0             	add    %rdx,%rax
ffff8000001046d5:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001046dc:	8b 12                	mov    (%rdx),%edx
ffff8000001046de:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001046e1:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001046e8:	89 0a                	mov    %ecx,(%rdx)
ffff8000001046ea:	eb 1a                	jmp    ffff800000104706 <vsnprintf+0x2f2>
ffff8000001046ec:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046f3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001046f7:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001046fb:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104702:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104706:	8b 00                	mov    (%rax),%eax
ffff800000104708:	48 98                	cltq   
ffff80000010470a:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff80000010470e:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff800000104713:	48 89 ce             	mov    %rcx,%rsi
ffff800000104716:	48 89 c7             	mov    %rax,%rdi
ffff800000104719:	48 b8 3a a3 ff ff ff 	movabs $0xffffffffffffa33a,%rax
ffff800000104720:	ff ff ff 
ffff800000104723:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104727:	ff d0                	callq  *%rax
ffff800000104729:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff80000010472d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000104731:	eb 21                	jmp    ffff800000104754 <vsnprintf+0x340>
ffff800000104733:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104737:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010473b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010473f:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104743:	48 01 c2             	add    %rax,%rdx
ffff800000104746:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010474a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010474d:	88 02                	mov    %al,(%rdx)
ffff80000010474f:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
ffff800000104754:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000104758:	0f b6 00             	movzbl (%rax),%eax
ffff80000010475b:	84 c0                	test   %al,%al
ffff80000010475d:	0f 84 95 01 00 00    	je     ffff8000001048f8 <vsnprintf+0x4e4>
ffff800000104763:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000104767:	48 83 e8 01          	sub    $0x1,%rax
ffff80000010476b:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff80000010476f:	72 c2                	jb     ffff800000104733 <vsnprintf+0x31f>
ffff800000104771:	e9 82 01 00 00       	jmpq   ffff8000001048f8 <vsnprintf+0x4e4>
ffff800000104776:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
ffff80000010477a:	74 7c                	je     ffff8000001047f8 <vsnprintf+0x3e4>
ffff80000010477c:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104783:	8b 00                	mov    (%rax),%eax
ffff800000104785:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104788:	77 30                	ja     ffff8000001047ba <vsnprintf+0x3a6>
ffff80000010478a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104791:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104795:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010479c:	8b 00                	mov    (%rax),%eax
ffff80000010479e:	89 c0                	mov    %eax,%eax
ffff8000001047a0:	48 01 d0             	add    %rdx,%rax
ffff8000001047a3:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001047aa:	8b 12                	mov    (%rdx),%edx
ffff8000001047ac:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001047af:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001047b6:	89 0a                	mov    %ecx,(%rdx)
ffff8000001047b8:	eb 1a                	jmp    ffff8000001047d4 <vsnprintf+0x3c0>
ffff8000001047ba:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001047c1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001047c5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001047c9:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001047d0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001047d4:	48 8b 00             	mov    (%rax),%rax
ffff8000001047d7:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff8000001047db:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001047e0:	48 89 ce             	mov    %rcx,%rsi
ffff8000001047e3:	48 89 c7             	mov    %rax,%rdi
ffff8000001047e6:	48 b8 3a a3 ff ff ff 	movabs $0xffffffffffffa33a,%rax
ffff8000001047ed:	ff ff ff 
ffff8000001047f0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001047f4:	ff d0                	callq  *%rax
ffff8000001047f6:	eb 7b                	jmp    ffff800000104873 <vsnprintf+0x45f>
ffff8000001047f8:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001047ff:	8b 00                	mov    (%rax),%eax
ffff800000104801:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104804:	77 30                	ja     ffff800000104836 <vsnprintf+0x422>
ffff800000104806:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010480d:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104811:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104818:	8b 00                	mov    (%rax),%eax
ffff80000010481a:	89 c0                	mov    %eax,%eax
ffff80000010481c:	48 01 d0             	add    %rdx,%rax
ffff80000010481f:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104826:	8b 12                	mov    (%rdx),%edx
ffff800000104828:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010482b:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104832:	89 0a                	mov    %ecx,(%rdx)
ffff800000104834:	eb 1a                	jmp    ffff800000104850 <vsnprintf+0x43c>
ffff800000104836:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010483d:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104841:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104845:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010484c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104850:	8b 00                	mov    (%rax),%eax
ffff800000104852:	48 98                	cltq   
ffff800000104854:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff800000104858:	ba 10 00 00 00       	mov    $0x10,%edx
ffff80000010485d:	48 89 ce             	mov    %rcx,%rsi
ffff800000104860:	48 89 c7             	mov    %rax,%rdi
ffff800000104863:	48 b8 3a a3 ff ff ff 	movabs $0xffffffffffffa33a,%rax
ffff80000010486a:	ff ff ff 
ffff80000010486d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104871:	ff d0                	callq  *%rax
ffff800000104873:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff800000104877:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff80000010487b:	eb 21                	jmp    ffff80000010489e <vsnprintf+0x48a>
ffff80000010487d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104881:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104885:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104889:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010488d:	48 01 c2             	add    %rax,%rdx
ffff800000104890:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000104894:	0f b6 00             	movzbl (%rax),%eax
ffff800000104897:	88 02                	mov    %al,(%rdx)
ffff800000104899:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
ffff80000010489e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001048a2:	0f b6 00             	movzbl (%rax),%eax
ffff8000001048a5:	84 c0                	test   %al,%al
ffff8000001048a7:	74 52                	je     ffff8000001048fb <vsnprintf+0x4e7>
ffff8000001048a9:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff8000001048ad:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001048b1:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff8000001048b5:	72 c6                	jb     ffff80000010487d <vsnprintf+0x469>
ffff8000001048b7:	eb 42                	jmp    ffff8000001048fb <vsnprintf+0x4e7>
ffff8000001048b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001048bd:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001048c1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001048c5:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001048c9:	48 01 d0             	add    %rdx,%rax
ffff8000001048cc:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001048cf:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001048d3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001048d7:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001048db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001048df:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001048e3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001048e7:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001048eb:	48 01 c2             	add    %rax,%rdx
ffff8000001048ee:	0f b6 01             	movzbl (%rcx),%eax
ffff8000001048f1:	88 02                	mov    %al,(%rdx)
ffff8000001048f3:	eb 07                	jmp    ffff8000001048fc <vsnprintf+0x4e8>
ffff8000001048f5:	90                   	nop
ffff8000001048f6:	eb 2a                	jmp    ffff800000104922 <vsnprintf+0x50e>
ffff8000001048f8:	90                   	nop
ffff8000001048f9:	eb 27                	jmp    ffff800000104922 <vsnprintf+0x50e>
ffff8000001048fb:	90                   	nop
ffff8000001048fc:	eb 24                	jmp    ffff800000104922 <vsnprintf+0x50e>
ffff8000001048fe:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104902:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104906:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff80000010490a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010490e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104912:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104916:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010491a:	48 01 c2             	add    %rax,%rdx
ffff80000010491d:	0f b6 01             	movzbl (%rcx),%eax
ffff800000104920:	88 02                	mov    %al,(%rdx)
ffff800000104922:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff800000104927:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff80000010492b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010492f:	48 01 d0             	add    %rdx,%rax
ffff800000104932:	0f b6 00             	movzbl (%rax),%eax
ffff800000104935:	84 c0                	test   %al,%al
ffff800000104937:	74 12                	je     ffff80000010494b <vsnprintf+0x537>
ffff800000104939:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff80000010493d:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104941:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff800000104945:	0f 82 1d fb ff ff    	jb     ffff800000104468 <vsnprintf+0x54>
ffff80000010494b:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010494f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104953:	48 01 d0             	add    %rdx,%rax
ffff800000104956:	c6 00 00             	movb   $0x0,(%rax)
ffff800000104959:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010495d:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
ffff800000104961:	5b                   	pop    %rbx
ffff800000104962:	5d                   	pop    %rbp
ffff800000104963:	c3                   	retq   

ffff800000104964 <printf>:
ffff800000104964:	f3 0f 1e fa          	endbr64 
ffff800000104968:	55                   	push   %rbp
ffff800000104969:	48 89 e5             	mov    %rsp,%rbp
ffff80000010496c:	41 57                	push   %r15
ffff80000010496e:	53                   	push   %rbx
ffff80000010496f:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
ffff800000104976:	f3 0f 1e fa          	endbr64 
ffff80000010497a:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104976 <printf+0x12>
ffff800000104981:	49 bb 5a 56 00 00 00 	movabs $0x565a,%r11
ffff800000104988:	00 00 00 
ffff80000010498b:	4c 01 db             	add    %r11,%rbx
ffff80000010498e:	48 89 bd 08 fe ff ff 	mov    %rdi,-0x1f8(%rbp)
ffff800000104995:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
ffff80000010499c:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
ffff8000001049a3:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001049aa:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001049b1:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001049b8:	84 c0                	test   %al,%al
ffff8000001049ba:	74 23                	je     ffff8000001049df <printf+0x7b>
ffff8000001049bc:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001049c3:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001049c7:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001049cb:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001049cf:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001049d3:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001049d7:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001049db:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001049df:	c7 85 18 fe ff ff 08 	movl   $0x8,-0x1e8(%rbp)
ffff8000001049e6:	00 00 00 
ffff8000001049e9:	c7 85 1c fe ff ff 30 	movl   $0x30,-0x1e4(%rbp)
ffff8000001049f0:	00 00 00 
ffff8000001049f3:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff8000001049f7:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
ffff8000001049fe:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104a05:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
ffff800000104a0c:	48 8d 8d 18 fe ff ff 	lea    -0x1e8(%rbp),%rcx
ffff800000104a13:	48 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%rdx
ffff800000104a1a:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff800000104a21:	be 00 01 00 00       	mov    $0x100,%esi
ffff800000104a26:	48 89 c7             	mov    %rax,%rdi
ffff800000104a29:	48 b8 44 a4 ff ff ff 	movabs $0xffffffffffffa444,%rax
ffff800000104a30:	ff ff ff 
ffff800000104a33:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a37:	ff d0                	callq  *%rax
ffff800000104a39:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff800000104a40:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
ffff800000104a47:	eb 29                	jmp    ffff800000104a72 <printf+0x10e>
ffff800000104a49:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff800000104a50:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a53:	0f be c0             	movsbl %al,%eax
ffff800000104a56:	89 c7                	mov    %eax,%edi
ffff800000104a58:	49 89 df             	mov    %rbx,%r15
ffff800000104a5b:	48 b8 4b ab ff ff ff 	movabs $0xffffffffffffab4b,%rax
ffff800000104a62:	ff ff ff 
ffff800000104a65:	48 01 d8             	add    %rbx,%rax
ffff800000104a68:	ff d0                	callq  *%rax
ffff800000104a6a:	48 83 85 38 ff ff ff 	addq   $0x1,-0xc8(%rbp)
ffff800000104a71:	01 
ffff800000104a72:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff800000104a79:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a7c:	84 c0                	test   %al,%al
ffff800000104a7e:	75 c9                	jne    ffff800000104a49 <printf+0xe5>
ffff800000104a80:	90                   	nop
ffff800000104a81:	90                   	nop
ffff800000104a82:	48 81 c4 f0 01 00 00 	add    $0x1f0,%rsp
ffff800000104a89:	5b                   	pop    %rbx
ffff800000104a8a:	41 5f                	pop    %r15
ffff800000104a8c:	5d                   	pop    %rbp
ffff800000104a8d:	c3                   	retq   

ffff800000104a8e <panic>:
ffff800000104a8e:	f3 0f 1e fa          	endbr64 
ffff800000104a92:	55                   	push   %rbp
ffff800000104a93:	48 89 e5             	mov    %rsp,%rbp
ffff800000104a96:	53                   	push   %rbx
ffff800000104a97:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104a9b:	f3 0f 1e fa          	endbr64 
ffff800000104a9f:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104a9b <panic+0xd>
ffff800000104aa6:	49 bb 35 55 00 00 00 	movabs $0x5535,%r11
ffff800000104aad:	00 00 00 
ffff800000104ab0:	4c 01 db             	add    %r11,%rbx
ffff800000104ab3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104ab7:	48 b8 b8 e6 ff ff ff 	movabs $0xffffffffffffe6b8,%rax
ffff800000104abe:	ff ff ff 
ffff800000104ac1:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000104ac5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104aca:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000104ad1:	ff ff ff 
ffff800000104ad4:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104ad8:	ff d2                	callq  *%rdx
ffff800000104ada:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ade:	48 89 c7             	mov    %rax,%rdi
ffff800000104ae1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104ae6:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000104aed:	ff ff ff 
ffff800000104af0:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104af4:	ff d2                	callq  *%rdx
ffff800000104af6:	48 b8 c0 e6 ff ff ff 	movabs $0xffffffffffffe6c0,%rax
ffff800000104afd:	ff ff ff 
ffff800000104b00:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000104b04:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104b09:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000104b10:	ff ff ff 
ffff800000104b13:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104b17:	ff d2                	callq  *%rdx
ffff800000104b19:	eb fe                	jmp    ffff800000104b19 <panic+0x8b>

ffff800000104b1b <putchar>:
ffff800000104b1b:	f3 0f 1e fa          	endbr64 
ffff800000104b1f:	55                   	push   %rbp
ffff800000104b20:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b23:	f3 0f 1e fa          	endbr64 
ffff800000104b27:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104b23 <putchar+0x8>
ffff800000104b2e:	49 bb ad 54 00 00 00 	movabs $0x54ad,%r11
ffff800000104b35:	00 00 00 
ffff800000104b38:	4c 01 d8             	add    %r11,%rax
ffff800000104b3b:	89 fa                	mov    %edi,%edx
ffff800000104b3d:	88 55 ec             	mov    %dl,-0x14(%rbp)
ffff800000104b40:	48 bf 00 80 0b 00 00 	movabs $0xffff8000000b8000,%rdi
ffff800000104b47:	80 ff ff 
ffff800000104b4a:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
ffff800000104b4e:	80 7d ec 0a          	cmpb   $0xa,-0x14(%rbp)
ffff800000104b52:	75 5f                	jne    ffff800000104bb3 <putchar+0x98>
ffff800000104b54:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b5b:	00 00 00 
ffff800000104b5e:	8b 34 10             	mov    (%rax,%rdx,1),%esi
ffff800000104b61:	48 63 d6             	movslq %esi,%rdx
ffff800000104b64:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
ffff800000104b6b:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000104b6f:	89 d1                	mov    %edx,%ecx
ffff800000104b71:	c1 f9 05             	sar    $0x5,%ecx
ffff800000104b74:	89 f2                	mov    %esi,%edx
ffff800000104b76:	c1 fa 1f             	sar    $0x1f,%edx
ffff800000104b79:	29 d1                	sub    %edx,%ecx
ffff800000104b7b:	89 ca                	mov    %ecx,%edx
ffff800000104b7d:	c1 e2 02             	shl    $0x2,%edx
ffff800000104b80:	01 ca                	add    %ecx,%edx
ffff800000104b82:	c1 e2 04             	shl    $0x4,%edx
ffff800000104b85:	29 d6                	sub    %edx,%esi
ffff800000104b87:	89 f1                	mov    %esi,%ecx
ffff800000104b89:	ba 50 00 00 00       	mov    $0x50,%edx
ffff800000104b8e:	29 ca                	sub    %ecx,%edx
ffff800000104b90:	89 d1                	mov    %edx,%ecx
ffff800000104b92:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104b99:	00 00 00 
ffff800000104b9c:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104b9f:	01 d1                	add    %edx,%ecx
ffff800000104ba1:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104ba8:	00 00 00 
ffff800000104bab:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104bae:	e9 8c 00 00 00       	jmpq   ffff800000104c3f <putchar+0x124>
ffff800000104bb3:	80 7d ec 09          	cmpb   $0x9,-0x14(%rbp)
ffff800000104bb7:	75 41                	jne    ffff800000104bfa <putchar+0xdf>
ffff800000104bb9:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104bc0:	00 00 00 
ffff800000104bc3:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104bc6:	89 d1                	mov    %edx,%ecx
ffff800000104bc8:	c1 f9 1f             	sar    $0x1f,%ecx
ffff800000104bcb:	c1 e9 1d             	shr    $0x1d,%ecx
ffff800000104bce:	01 ca                	add    %ecx,%edx
ffff800000104bd0:	83 e2 07             	and    $0x7,%edx
ffff800000104bd3:	29 ca                	sub    %ecx,%edx
ffff800000104bd5:	b9 08 00 00 00       	mov    $0x8,%ecx
ffff800000104bda:	29 d1                	sub    %edx,%ecx
ffff800000104bdc:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104be3:	00 00 00 
ffff800000104be6:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104be9:	01 d1                	add    %edx,%ecx
ffff800000104beb:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104bf2:	00 00 00 
ffff800000104bf5:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104bf8:	eb 45                	jmp    ffff800000104c3f <putchar+0x124>
ffff800000104bfa:	66 0f be 55 ec       	movsbw -0x14(%rbp),%dx
ffff800000104bff:	89 d1                	mov    %edx,%ecx
ffff800000104c01:	80 cd 07             	or     $0x7,%ch
ffff800000104c04:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104c0b:	00 00 00 
ffff800000104c0e:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c11:	48 63 d2             	movslq %edx,%rdx
ffff800000104c14:	48 8d 34 12          	lea    (%rdx,%rdx,1),%rsi
ffff800000104c18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104c1c:	48 01 f2             	add    %rsi,%rdx
ffff800000104c1f:	66 89 0a             	mov    %cx,(%rdx)
ffff800000104c22:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104c29:	00 00 00 
ffff800000104c2c:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c2f:	8d 4a 01             	lea    0x1(%rdx),%ecx
ffff800000104c32:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104c39:	00 00 00 
ffff800000104c3c:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104c3f:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104c46:	00 00 00 
ffff800000104c49:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c4c:	81 fa cf 07 00 00    	cmp    $0x7cf,%edx
ffff800000104c52:	0f 8e 8b 00 00 00    	jle    ffff800000104ce3 <putchar+0x1c8>
ffff800000104c58:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104c5f:	eb 30                	jmp    ffff800000104c91 <putchar+0x176>
ffff800000104c61:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104c64:	48 63 d2             	movslq %edx,%rdx
ffff800000104c67:	48 83 c2 50          	add    $0x50,%rdx
ffff800000104c6b:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104c6f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104c73:	48 01 ca             	add    %rcx,%rdx
ffff800000104c76:	8b 4d fc             	mov    -0x4(%rbp),%ecx
ffff800000104c79:	48 63 c9             	movslq %ecx,%rcx
ffff800000104c7c:	48 8d 34 09          	lea    (%rcx,%rcx,1),%rsi
ffff800000104c80:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000104c84:	48 01 f1             	add    %rsi,%rcx
ffff800000104c87:	0f b7 12             	movzwl (%rdx),%edx
ffff800000104c8a:	66 89 11             	mov    %dx,(%rcx)
ffff800000104c8d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104c91:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%rbp)
ffff800000104c98:	7e c7                	jle    ffff800000104c61 <putchar+0x146>
ffff800000104c9a:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%rbp)
ffff800000104ca1:	eb 1a                	jmp    ffff800000104cbd <putchar+0x1a2>
ffff800000104ca3:	8b 55 f8             	mov    -0x8(%rbp),%edx
ffff800000104ca6:	48 63 d2             	movslq %edx,%rdx
ffff800000104ca9:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104cad:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104cb1:	48 01 ca             	add    %rcx,%rdx
ffff800000104cb4:	66 c7 02 20 07       	movw   $0x720,(%rdx)
ffff800000104cb9:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104cbd:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%rbp)
ffff800000104cc4:	7e dd                	jle    ffff800000104ca3 <putchar+0x188>
ffff800000104cc6:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104ccd:	00 00 00 
ffff800000104cd0:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104cd3:	8d 4a b0             	lea    -0x50(%rdx),%ecx
ffff800000104cd6:	48 ba 18 00 00 00 00 	movabs $0x18,%rdx
ffff800000104cdd:	00 00 00 
ffff800000104ce0:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104ce3:	90                   	nop
ffff800000104ce4:	5d                   	pop    %rbp
ffff800000104ce5:	c3                   	retq   

ffff800000104ce6 <tssinit>:
ffff800000104ce6:	f3 0f 1e fa          	endbr64 
ffff800000104cea:	55                   	push   %rbp
ffff800000104ceb:	48 89 e5             	mov    %rsp,%rbp
ffff800000104cee:	f3 0f 1e fa          	endbr64 
ffff800000104cf2:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104cee <tssinit+0x8>
ffff800000104cf9:	49 bb e2 52 00 00 00 	movabs $0x52e2,%r11
ffff800000104d00:	00 00 00 
ffff800000104d03:	4c 01 d8             	add    %r11,%rax
ffff800000104d06:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104d0a:	89 f2                	mov    %esi,%edx
ffff800000104d0c:	66 89 55 e4          	mov    %dx,-0x1c(%rbp)
ffff800000104d10:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104d17:	ff ff ff 
ffff800000104d1a:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d1e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d22:	48 89 4a 04          	mov    %rcx,0x4(%rdx)
ffff800000104d26:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104d2d:	ff ff ff 
ffff800000104d30:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d34:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d38:	48 89 4a 0c          	mov    %rcx,0xc(%rdx)
ffff800000104d3c:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104d43:	ff ff ff 
ffff800000104d46:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d4a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d4e:	48 89 4a 14          	mov    %rcx,0x14(%rdx)
ffff800000104d52:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104d59:	ff ff ff 
ffff800000104d5c:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d60:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d64:	48 89 4a 24          	mov    %rcx,0x24(%rdx)
ffff800000104d68:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104d6f:	ff ff ff 
ffff800000104d72:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d76:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d7a:	48 89 4a 2c          	mov    %rcx,0x2c(%rdx)
ffff800000104d7e:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104d85:	ff ff ff 
ffff800000104d88:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104d8c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104d90:	48 89 4a 34          	mov    %rcx,0x34(%rdx)
ffff800000104d94:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104d9b:	ff ff ff 
ffff800000104d9e:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104da2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104da6:	48 89 4a 3c          	mov    %rcx,0x3c(%rdx)
ffff800000104daa:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104db1:	ff ff ff 
ffff800000104db4:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104db8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104dbc:	48 89 4a 44          	mov    %rcx,0x44(%rdx)
ffff800000104dc0:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104dc7:	ff ff ff 
ffff800000104dca:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104dce:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104dd2:	48 89 4a 4c          	mov    %rcx,0x4c(%rdx)
ffff800000104dd6:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000104ddd:	ff ff ff 
ffff800000104de0:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000104de4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000104de8:	48 89 4a 54          	mov    %rcx,0x54(%rdx)
ffff800000104dec:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff800000104df0:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104df7:	ff ff ff 
ffff800000104dfa:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104dfe:	48 63 f2             	movslq %edx,%rsi
ffff800000104e01:	66 c7 04 f1 67 00    	movw   $0x67,(%rcx,%rsi,8)
ffff800000104e07:	48 b9 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rcx
ffff800000104e0e:	ff ff ff 
ffff800000104e11:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e15:	89 cf                	mov    %ecx,%edi
ffff800000104e17:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104e1e:	ff ff ff 
ffff800000104e21:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e25:	48 63 f2             	movslq %edx,%rsi
ffff800000104e28:	66 89 7c f1 02       	mov    %di,0x2(%rcx,%rsi,8)
ffff800000104e2d:	48 b9 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rcx
ffff800000104e34:	ff ff ff 
ffff800000104e37:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e3b:	48 c1 e9 10          	shr    $0x10,%rcx
ffff800000104e3f:	89 cf                	mov    %ecx,%edi
ffff800000104e41:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104e48:	ff ff ff 
ffff800000104e4b:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e4f:	48 63 f2             	movslq %edx,%rsi
ffff800000104e52:	40 88 7c f1 04       	mov    %dil,0x4(%rcx,%rsi,8)
ffff800000104e57:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104e5e:	ff ff ff 
ffff800000104e61:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e65:	48 63 f2             	movslq %edx,%rsi
ffff800000104e68:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104e6d:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000104e70:	83 cf 09             	or     $0x9,%edi
ffff800000104e73:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104e78:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104e7f:	ff ff ff 
ffff800000104e82:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104e86:	48 63 f2             	movslq %edx,%rsi
ffff800000104e89:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104e8e:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000104e91:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104e96:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104e9d:	ff ff ff 
ffff800000104ea0:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104ea4:	48 63 f2             	movslq %edx,%rsi
ffff800000104ea7:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104eac:	83 e7 9f             	and    $0xffffff9f,%edi
ffff800000104eaf:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104eb4:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104ebb:	ff ff ff 
ffff800000104ebe:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104ec2:	48 63 f2             	movslq %edx,%rsi
ffff800000104ec5:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000104eca:	83 cf 80             	or     $0xffffff80,%edi
ffff800000104ecd:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff800000104ed2:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104ed9:	ff ff ff 
ffff800000104edc:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104ee0:	48 63 f2             	movslq %edx,%rsi
ffff800000104ee3:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104ee8:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000104eeb:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104ef0:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104ef7:	ff ff ff 
ffff800000104efa:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104efe:	48 63 f2             	movslq %edx,%rsi
ffff800000104f01:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104f06:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000104f09:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104f0e:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104f15:	ff ff ff 
ffff800000104f18:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104f1c:	48 63 f2             	movslq %edx,%rsi
ffff800000104f1f:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104f24:	83 e7 df             	and    $0xffffffdf,%edi
ffff800000104f27:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104f2c:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104f33:	ff ff ff 
ffff800000104f36:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104f3a:	48 63 f2             	movslq %edx,%rsi
ffff800000104f3d:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104f42:	83 e7 bf             	and    $0xffffffbf,%edi
ffff800000104f45:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104f4a:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104f51:	ff ff ff 
ffff800000104f54:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104f58:	48 63 f2             	movslq %edx,%rsi
ffff800000104f5b:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000104f60:	83 e7 7f             	and    $0x7f,%edi
ffff800000104f63:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000104f68:	48 b9 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rcx
ffff800000104f6f:	ff ff ff 
ffff800000104f72:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104f76:	48 c1 e9 20          	shr    $0x20,%rcx
ffff800000104f7a:	89 ce                	mov    %ecx,%esi
ffff800000104f7c:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104f83:	ff ff ff 
ffff800000104f86:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104f8a:	48 63 d2             	movslq %edx,%rdx
ffff800000104f8d:	40 88 74 d1 07       	mov    %sil,0x7(%rcx,%rdx,8)
ffff800000104f92:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff800000104f96:	83 c2 01             	add    $0x1,%edx
ffff800000104f99:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104fa0:	ff ff ff 
ffff800000104fa3:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104fa7:	48 63 f2             	movslq %edx,%rsi
ffff800000104faa:	48 c7 04 f1 00 00 00 	movq   $0x0,(%rcx,%rsi,8)
ffff800000104fb1:	00 
ffff800000104fb2:	48 b9 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rcx
ffff800000104fb9:	ff ff ff 
ffff800000104fbc:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104fc0:	48 c1 e9 20          	shr    $0x20,%rcx
ffff800000104fc4:	89 cf                	mov    %ecx,%edi
ffff800000104fc6:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104fcd:	ff ff ff 
ffff800000104fd0:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104fd4:	48 63 f2             	movslq %edx,%rsi
ffff800000104fd7:	66 89 3c f1          	mov    %di,(%rcx,%rsi,8)
ffff800000104fdb:	48 b9 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rcx
ffff800000104fe2:	ff ff ff 
ffff800000104fe5:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000104fe9:	48 c1 e9 30          	shr    $0x30,%rcx
ffff800000104fed:	89 ce                	mov    %ecx,%esi
ffff800000104fef:	48 b9 a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rcx
ffff800000104ff6:	ff ff ff 
ffff800000104ff9:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
ffff800000104ffd:	48 63 d2             	movslq %edx,%rdx
ffff800000105000:	66 89 74 d0 02       	mov    %si,0x2(%rax,%rdx,8)
ffff800000105005:	0f b7 45 e4          	movzwl -0x1c(%rbp),%eax
ffff800000105009:	c1 e0 03             	shl    $0x3,%eax
ffff80000010500c:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
ffff800000105010:	0f b7 45 fe          	movzwl -0x2(%rbp),%eax
ffff800000105014:	0f 00 d8             	ltr    %ax
ffff800000105017:	90                   	nop
ffff800000105018:	5d                   	pop    %rbp
ffff800000105019:	c3                   	retq   

ffff80000010501a <trapinit>:
ffff80000010501a:	f3 0f 1e fa          	endbr64 
ffff80000010501e:	55                   	push   %rbp
ffff80000010501f:	48 89 e5             	mov    %rsp,%rbp
ffff800000105022:	53                   	push   %rbx
ffff800000105023:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000105027:	f3 0f 1e fa          	endbr64 
ffff80000010502b:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105027 <trapinit+0xd>
ffff800000105032:	49 bb a9 4f 00 00 00 	movabs $0x4fa9,%r11
ffff800000105039:	00 00 00 
ffff80000010503c:	4c 01 db             	add    %r11,%rbx
ffff80000010503f:	48 b8 20 ff ff ff ff 	movabs $0xffffffffffffff20,%rax
ffff800000105046:	ff ff ff 
ffff800000105049:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010504d:	48 89 c2             	mov    %rax,%rdx
ffff800000105050:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105055:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010505c:	ff ff ff 
ffff80000010505f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105063:	48 89 c7             	mov    %rax,%rdi
ffff800000105066:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff80000010506d:	ff ff ff 
ffff800000105070:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105074:	ff d0                	callq  *%rax
ffff800000105076:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010507d:	ff ff ff 
ffff800000105080:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105084:	48 8d 40 10          	lea    0x10(%rax),%rax
ffff800000105088:	48 ba 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rdx
ffff80000010508f:	ff ff ff 
ffff800000105092:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105096:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010509b:	48 89 c7             	mov    %rax,%rdi
ffff80000010509e:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff8000001050a5:	ff ff ff 
ffff8000001050a8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050ac:	ff d0                	callq  *%rax
ffff8000001050ae:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001050b5:	ff ff ff 
ffff8000001050b8:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001050bc:	48 8d 40 20          	lea    0x20(%rax),%rax
ffff8000001050c0:	48 ba e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rdx
ffff8000001050c7:	ff ff ff 
ffff8000001050ca:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001050ce:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001050d3:	48 89 c7             	mov    %rax,%rdi
ffff8000001050d6:	48 b8 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rax
ffff8000001050dd:	ff ff ff 
ffff8000001050e0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001050e4:	ff d0                	callq  *%rax
ffff8000001050e6:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001050ed:	ff ff ff 
ffff8000001050f0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001050f4:	48 8d 40 30          	lea    0x30(%rax),%rax
ffff8000001050f8:	48 ba f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rdx
ffff8000001050ff:	ff ff ff 
ffff800000105102:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105106:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010510b:	48 89 c7             	mov    %rax,%rdi
ffff80000010510e:	48 b8 aa b6 ff ff ff 	movabs $0xffffffffffffb6aa,%rax
ffff800000105115:	ff ff ff 
ffff800000105118:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010511c:	ff d0                	callq  *%rax
ffff80000010511e:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000105125:	ff ff ff 
ffff800000105128:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010512c:	48 8d 40 40          	lea    0x40(%rax),%rax
ffff800000105130:	48 ba 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rdx
ffff800000105137:	ff ff ff 
ffff80000010513a:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010513e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105143:	48 89 c7             	mov    %rax,%rdi
ffff800000105146:	48 b8 aa b6 ff ff ff 	movabs $0xffffffffffffb6aa,%rax
ffff80000010514d:	ff ff ff 
ffff800000105150:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105154:	ff d0                	callq  *%rax
ffff800000105156:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010515d:	ff ff ff 
ffff800000105160:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105164:	48 8d 40 50          	lea    0x50(%rax),%rax
ffff800000105168:	48 ba 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rdx
ffff80000010516f:	ff ff ff 
ffff800000105172:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105176:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010517b:	48 89 c7             	mov    %rax,%rdi
ffff80000010517e:	48 b8 aa b6 ff ff ff 	movabs $0xffffffffffffb6aa,%rax
ffff800000105185:	ff ff ff 
ffff800000105188:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010518c:	ff d0                	callq  *%rax
ffff80000010518e:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000105195:	ff ff ff 
ffff800000105198:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010519c:	48 8d 40 60          	lea    0x60(%rax),%rax
ffff8000001051a0:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001051a7:	ff ff ff 
ffff8000001051aa:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001051ae:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001051b3:	48 89 c7             	mov    %rax,%rdi
ffff8000001051b6:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff8000001051bd:	ff ff ff 
ffff8000001051c0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001051c4:	ff d0                	callq  *%rax
ffff8000001051c6:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001051cd:	ff ff ff 
ffff8000001051d0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001051d4:	48 8d 40 70          	lea    0x70(%rax),%rax
ffff8000001051d8:	48 ba f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rdx
ffff8000001051df:	ff ff ff 
ffff8000001051e2:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001051e6:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001051eb:	48 89 c7             	mov    %rax,%rdi
ffff8000001051ee:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff8000001051f5:	ff ff ff 
ffff8000001051f8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001051fc:	ff d0                	callq  *%rax
ffff8000001051fe:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000105205:	ff ff ff 
ffff800000105208:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010520c:	48 8d 80 80 00 00 00 	lea    0x80(%rax),%rax
ffff800000105213:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff80000010521a:	ff ff ff 
ffff80000010521d:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105221:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105226:	48 89 c7             	mov    %rax,%rdi
ffff800000105229:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff800000105230:	ff ff ff 
ffff800000105233:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105237:	ff d0                	callq  *%rax
ffff800000105239:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000105240:	ff ff ff 
ffff800000105243:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105247:	48 8d 80 90 00 00 00 	lea    0x90(%rax),%rax
ffff80000010524e:	48 ba b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rdx
ffff800000105255:	ff ff ff 
ffff800000105258:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010525c:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105261:	48 89 c7             	mov    %rax,%rdi
ffff800000105264:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff80000010526b:	ff ff ff 
ffff80000010526e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105272:	ff d0                	callq  *%rax
ffff800000105274:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010527b:	ff ff ff 
ffff80000010527e:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105282:	48 8d 80 a0 00 00 00 	lea    0xa0(%rax),%rax
ffff800000105289:	48 ba 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rdx
ffff800000105290:	ff ff ff 
ffff800000105293:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105297:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010529c:	48 89 c7             	mov    %rax,%rdi
ffff80000010529f:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff8000001052a6:	ff ff ff 
ffff8000001052a9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001052ad:	ff d0                	callq  *%rax
ffff8000001052af:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001052b6:	ff ff ff 
ffff8000001052b9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001052bd:	48 8d 80 b0 00 00 00 	lea    0xb0(%rax),%rax
ffff8000001052c4:	48 ba 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rdx
ffff8000001052cb:	ff ff ff 
ffff8000001052ce:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001052d2:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001052d7:	48 89 c7             	mov    %rax,%rdi
ffff8000001052da:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff8000001052e1:	ff ff ff 
ffff8000001052e4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001052e8:	ff d0                	callq  *%rax
ffff8000001052ea:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001052f1:	ff ff ff 
ffff8000001052f4:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001052f8:	48 8d 80 c0 00 00 00 	lea    0xc0(%rax),%rax
ffff8000001052ff:	48 ba 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rdx
ffff800000105306:	ff ff ff 
ffff800000105309:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010530d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105312:	48 89 c7             	mov    %rax,%rdi
ffff800000105315:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff80000010531c:	ff ff ff 
ffff80000010531f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105323:	ff d0                	callq  *%rax
ffff800000105325:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010532c:	ff ff ff 
ffff80000010532f:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105333:	48 8d 80 d0 00 00 00 	lea    0xd0(%rax),%rax
ffff80000010533a:	48 ba 28 ff ff ff ff 	movabs $0xffffffffffffff28,%rdx
ffff800000105341:	ff ff ff 
ffff800000105344:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105348:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010534d:	48 89 c7             	mov    %rax,%rdi
ffff800000105350:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff800000105357:	ff ff ff 
ffff80000010535a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010535e:	ff d0                	callq  *%rax
ffff800000105360:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000105367:	ff ff ff 
ffff80000010536a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010536e:	48 8d 80 e0 00 00 00 	lea    0xe0(%rax),%rax
ffff800000105375:	48 ba c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rdx
ffff80000010537c:	ff ff ff 
ffff80000010537f:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105383:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105388:	48 89 c7             	mov    %rax,%rdi
ffff80000010538b:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff800000105392:	ff ff ff 
ffff800000105395:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105399:	ff d0                	callq  *%rax
ffff80000010539b:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001053a2:	ff ff ff 
ffff8000001053a5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001053a9:	48 8d 80 00 01 00 00 	lea    0x100(%rax),%rax
ffff8000001053b0:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff8000001053b7:	ff ff ff 
ffff8000001053ba:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001053be:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001053c3:	48 89 c7             	mov    %rax,%rdi
ffff8000001053c6:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff8000001053cd:	ff ff ff 
ffff8000001053d0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001053d4:	ff d0                	callq  *%rax
ffff8000001053d6:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001053dd:	ff ff ff 
ffff8000001053e0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001053e4:	48 8d 80 10 01 00 00 	lea    0x110(%rax),%rax
ffff8000001053eb:	48 ba 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rdx
ffff8000001053f2:	ff ff ff 
ffff8000001053f5:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001053f9:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001053fe:	48 89 c7             	mov    %rax,%rdi
ffff800000105401:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff800000105408:	ff ff ff 
ffff80000010540b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010540f:	ff d0                	callq  *%rax
ffff800000105411:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000105418:	ff ff ff 
ffff80000010541b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010541f:	48 8d 80 20 01 00 00 	lea    0x120(%rax),%rax
ffff800000105426:	48 ba d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rdx
ffff80000010542d:	ff ff ff 
ffff800000105430:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105434:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105439:	48 89 c7             	mov    %rax,%rdi
ffff80000010543c:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff800000105443:	ff ff ff 
ffff800000105446:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010544a:	ff d0                	callq  *%rax
ffff80000010544c:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff800000105453:	ff ff ff 
ffff800000105456:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010545a:	48 8d 80 30 01 00 00 	lea    0x130(%rax),%rax
ffff800000105461:	48 ba e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rdx
ffff800000105468:	ff ff ff 
ffff80000010546b:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010546f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105474:	48 89 c7             	mov    %rax,%rdi
ffff800000105477:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff80000010547e:	ff ff ff 
ffff800000105481:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105485:	ff d0                	callq  *%rax
ffff800000105487:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010548e:	ff ff ff 
ffff800000105491:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105495:	48 8d 80 40 01 00 00 	lea    0x140(%rax),%rax
ffff80000010549c:	48 ba b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rdx
ffff8000001054a3:	ff ff ff 
ffff8000001054a6:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001054aa:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001054af:	48 89 c7             	mov    %rax,%rdi
ffff8000001054b2:	48 b8 d1 b5 ff ff ff 	movabs $0xffffffffffffb5d1,%rax
ffff8000001054b9:	ff ff ff 
ffff8000001054bc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001054c0:	ff d0                	callq  *%rax
ffff8000001054c2:	90                   	nop
ffff8000001054c3:	48 83 c4 08          	add    $0x8,%rsp
ffff8000001054c7:	5b                   	pop    %rbx
ffff8000001054c8:	5d                   	pop    %rbp
ffff8000001054c9:	c3                   	retq   

ffff8000001054ca <set_intr_gate>:
ffff8000001054ca:	f3 0f 1e fa          	endbr64 
ffff8000001054ce:	55                   	push   %rbp
ffff8000001054cf:	48 89 e5             	mov    %rsp,%rbp
ffff8000001054d2:	f3 0f 1e fa          	endbr64 
ffff8000001054d6:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001054d2 <set_intr_gate+0x8>
ffff8000001054dd:	49 bb fe 4a 00 00 00 	movabs $0x4afe,%r11
ffff8000001054e4:	00 00 00 
ffff8000001054e7:	4c 01 d8             	add    %r11,%rax
ffff8000001054ea:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001054ee:	89 75 f4             	mov    %esi,-0xc(%rbp)
ffff8000001054f1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001054f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001054f9:	89 c2                	mov    %eax,%edx
ffff8000001054fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001054ff:	66 89 10             	mov    %dx,(%rax)
ffff800000105502:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105506:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff80000010550c:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff80000010550f:	83 e0 07             	and    $0x7,%eax
ffff800000105512:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000105516:	83 e0 07             	and    $0x7,%eax
ffff800000105519:	89 c1                	mov    %eax,%ecx
ffff80000010551b:	0f b6 42 04          	movzbl 0x4(%rdx),%eax
ffff80000010551f:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000105522:	09 c8                	or     %ecx,%eax
ffff800000105524:	88 42 04             	mov    %al,0x4(%rdx)
ffff800000105527:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010552b:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff80000010552f:	83 e2 07             	and    $0x7,%edx
ffff800000105532:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105535:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105539:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010553d:	83 e2 f0             	and    $0xfffffff0,%edx
ffff800000105540:	83 ca 0e             	or     $0xe,%edx
ffff800000105543:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105546:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010554a:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010554e:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105551:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105554:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105558:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010555c:	83 e2 9f             	and    $0xffffff9f,%edx
ffff80000010555f:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105562:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105566:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010556a:	83 ca 80             	or     $0xffffff80,%edx
ffff80000010556d:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105570:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105574:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105578:	89 c2                	mov    %eax,%edx
ffff80000010557a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010557e:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105582:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105586:	48 c1 e8 20          	shr    $0x20,%rax
ffff80000010558a:	89 c2                	mov    %eax,%edx
ffff80000010558c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105590:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105593:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105597:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff80000010559e:	90                   	nop
ffff80000010559f:	5d                   	pop    %rbp
ffff8000001055a0:	c3                   	retq   

ffff8000001055a1 <set_trap_gate>:
ffff8000001055a1:	f3 0f 1e fa          	endbr64 
ffff8000001055a5:	55                   	push   %rbp
ffff8000001055a6:	48 89 e5             	mov    %rsp,%rbp
ffff8000001055a9:	f3 0f 1e fa          	endbr64 
ffff8000001055ad:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001055a9 <set_trap_gate+0x8>
ffff8000001055b4:	49 bb 27 4a 00 00 00 	movabs $0x4a27,%r11
ffff8000001055bb:	00 00 00 
ffff8000001055be:	4c 01 d8             	add    %r11,%rax
ffff8000001055c1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001055c5:	89 f0                	mov    %esi,%eax
ffff8000001055c7:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001055cb:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff8000001055ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001055d2:	89 c2                	mov    %eax,%edx
ffff8000001055d4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055d8:	66 89 10             	mov    %dx,(%rax)
ffff8000001055db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055df:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff8000001055e5:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff8000001055e9:	83 e0 07             	and    $0x7,%eax
ffff8000001055ec:	89 c2                	mov    %eax,%edx
ffff8000001055ee:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001055f2:	89 d1                	mov    %edx,%ecx
ffff8000001055f4:	83 e1 07             	and    $0x7,%ecx
ffff8000001055f7:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001055fb:	83 e2 f8             	and    $0xfffffff8,%edx
ffff8000001055fe:	09 ca                	or     %ecx,%edx
ffff800000105600:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105603:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105607:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff80000010560b:	83 e2 07             	and    $0x7,%edx
ffff80000010560e:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105611:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105615:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105619:	83 ca 0f             	or     $0xf,%edx
ffff80000010561c:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010561f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105623:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105627:	83 e2 ef             	and    $0xffffffef,%edx
ffff80000010562a:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010562d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105631:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105635:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105638:	88 50 05             	mov    %dl,0x5(%rax)
ffff80000010563b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010563f:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105643:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105646:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105649:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010564d:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105651:	89 c2                	mov    %eax,%edx
ffff800000105653:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105657:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff80000010565b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010565f:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105663:	89 c2                	mov    %eax,%edx
ffff800000105665:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105669:	89 50 08             	mov    %edx,0x8(%rax)
ffff80000010566c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105670:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105677:	90                   	nop
ffff800000105678:	5d                   	pop    %rbp
ffff800000105679:	c3                   	retq   

ffff80000010567a <set_system_gate>:
ffff80000010567a:	f3 0f 1e fa          	endbr64 
ffff80000010567e:	55                   	push   %rbp
ffff80000010567f:	48 89 e5             	mov    %rsp,%rbp
ffff800000105682:	f3 0f 1e fa          	endbr64 
ffff800000105686:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000105682 <set_system_gate+0x8>
ffff80000010568d:	49 bb 4e 49 00 00 00 	movabs $0x494e,%r11
ffff800000105694:	00 00 00 
ffff800000105697:	4c 01 d8             	add    %r11,%rax
ffff80000010569a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff80000010569e:	89 f0                	mov    %esi,%eax
ffff8000001056a0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001056a4:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff8000001056a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001056ab:	89 c2                	mov    %eax,%edx
ffff8000001056ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056b1:	66 89 10             	mov    %dx,(%rax)
ffff8000001056b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056b8:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff8000001056be:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff8000001056c2:	83 e0 07             	and    $0x7,%eax
ffff8000001056c5:	89 c2                	mov    %eax,%edx
ffff8000001056c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056cb:	89 d1                	mov    %edx,%ecx
ffff8000001056cd:	83 e1 07             	and    $0x7,%ecx
ffff8000001056d0:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001056d4:	83 e2 f8             	and    $0xfffffff8,%edx
ffff8000001056d7:	09 ca                	or     %ecx,%edx
ffff8000001056d9:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001056dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056e0:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001056e4:	83 e2 07             	and    $0x7,%edx
ffff8000001056e7:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001056ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056ee:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001056f2:	83 ca 0f             	or     $0xf,%edx
ffff8000001056f5:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001056f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001056fc:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105700:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105703:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105706:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010570a:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010570e:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105711:	83 ca 40             	or     $0x40,%edx
ffff800000105714:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105717:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010571b:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff80000010571f:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105722:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105725:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105729:	48 c1 e8 10          	shr    $0x10,%rax
ffff80000010572d:	89 c2                	mov    %eax,%edx
ffff80000010572f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105733:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105737:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010573b:	48 c1 e8 20          	shr    $0x20,%rax
ffff80000010573f:	89 c2                	mov    %eax,%edx
ffff800000105741:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105745:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105748:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010574c:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105753:	90                   	nop
ffff800000105754:	5d                   	pop    %rbp
ffff800000105755:	c3                   	retq   

ffff800000105756 <set_system_intr_gate>:
ffff800000105756:	f3 0f 1e fa          	endbr64 
ffff80000010575a:	55                   	push   %rbp
ffff80000010575b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010575e:	f3 0f 1e fa          	endbr64 
ffff800000105762:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010575e <set_system_intr_gate+0x8>
ffff800000105769:	49 bb 72 48 00 00 00 	movabs $0x4872,%r11
ffff800000105770:	00 00 00 
ffff800000105773:	4c 01 d8             	add    %r11,%rax
ffff800000105776:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff80000010577a:	89 f0                	mov    %esi,%eax
ffff80000010577c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105780:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105783:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105787:	89 c2                	mov    %eax,%edx
ffff800000105789:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010578d:	66 89 10             	mov    %dx,(%rax)
ffff800000105790:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105794:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff80000010579a:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff80000010579e:	83 e0 07             	and    $0x7,%eax
ffff8000001057a1:	89 c2                	mov    %eax,%edx
ffff8000001057a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001057a7:	89 d1                	mov    %edx,%ecx
ffff8000001057a9:	83 e1 07             	and    $0x7,%ecx
ffff8000001057ac:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001057b0:	83 e2 f8             	and    $0xfffffff8,%edx
ffff8000001057b3:	09 ca                	or     %ecx,%edx
ffff8000001057b5:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001057b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001057bc:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff8000001057c0:	83 e2 07             	and    $0x7,%edx
ffff8000001057c3:	88 50 04             	mov    %dl,0x4(%rax)
ffff8000001057c6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001057ca:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001057ce:	83 e2 f0             	and    $0xfffffff0,%edx
ffff8000001057d1:	83 ca 0e             	or     $0xe,%edx
ffff8000001057d4:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001057d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001057db:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001057df:	83 e2 ef             	and    $0xffffffef,%edx
ffff8000001057e2:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001057e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001057e9:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001057ed:	83 e2 9f             	and    $0xffffff9f,%edx
ffff8000001057f0:	83 ca 40             	or     $0x40,%edx
ffff8000001057f3:	88 50 05             	mov    %dl,0x5(%rax)
ffff8000001057f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001057fa:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff8000001057fe:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105801:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105804:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105808:	48 c1 e8 10          	shr    $0x10,%rax
ffff80000010580c:	89 c2                	mov    %eax,%edx
ffff80000010580e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105812:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105816:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010581a:	48 c1 e8 20          	shr    $0x20,%rax
ffff80000010581e:	89 c2                	mov    %eax,%edx
ffff800000105820:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105824:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105827:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010582b:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105832:	90                   	nop
ffff800000105833:	5d                   	pop    %rbp
ffff800000105834:	c3                   	retq   

ffff800000105835 <do_divide_error>:
ffff800000105835:	f3 0f 1e fa          	endbr64 
ffff800000105839:	55                   	push   %rbp
ffff80000010583a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010583d:	41 57                	push   %r15
ffff80000010583f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105843:	f3 0f 1e fa          	endbr64 
ffff800000105847:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105843 <do_divide_error+0xe>
ffff80000010584e:	49 bb 8d 47 00 00 00 	movabs $0x478d,%r11
ffff800000105855:	00 00 00 
ffff800000105858:	4d 01 d8             	add    %r11,%r8
ffff80000010585b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010585f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105863:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010586a:	00 
ffff80000010586b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010586f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105875:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105879:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010587d:	48 8b 08             	mov    (%rax),%rcx
ffff800000105880:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105884:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105888:	48 89 c6             	mov    %rax,%rsi
ffff80000010588b:	48 b8 c8 e6 ff ff ff 	movabs $0xffffffffffffe6c8,%rax
ffff800000105892:	ff ff ff 
ffff800000105895:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105899:	4d 89 c7             	mov    %r8,%r15
ffff80000010589c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001058a1:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff8000001058a8:	ff ff ff 
ffff8000001058ab:	4d 01 c1             	add    %r8,%r9
ffff8000001058ae:	41 ff d1             	callq  *%r9
ffff8000001058b1:	eb fe                	jmp    ffff8000001058b1 <do_divide_error+0x7c>

ffff8000001058b3 <do_debug>:
ffff8000001058b3:	f3 0f 1e fa          	endbr64 
ffff8000001058b7:	55                   	push   %rbp
ffff8000001058b8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001058bb:	41 57                	push   %r15
ffff8000001058bd:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001058c1:	f3 0f 1e fa          	endbr64 
ffff8000001058c5:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001058c1 <do_debug+0xe>
ffff8000001058cc:	49 bb 0f 47 00 00 00 	movabs $0x470f,%r11
ffff8000001058d3:	00 00 00 
ffff8000001058d6:	4d 01 d8             	add    %r11,%r8
ffff8000001058d9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001058dd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001058e1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001058e8:	00 
ffff8000001058e9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001058ed:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001058f3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001058f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001058fb:	48 8b 08             	mov    (%rax),%rcx
ffff8000001058fe:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105902:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105906:	48 89 c6             	mov    %rax,%rsi
ffff800000105909:	48 b8 00 e7 ff ff ff 	movabs $0xffffffffffffe700,%rax
ffff800000105910:	ff ff ff 
ffff800000105913:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105917:	4d 89 c7             	mov    %r8,%r15
ffff80000010591a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010591f:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105926:	ff ff ff 
ffff800000105929:	4d 01 c1             	add    %r8,%r9
ffff80000010592c:	41 ff d1             	callq  *%r9
ffff80000010592f:	eb fe                	jmp    ffff80000010592f <do_debug+0x7c>

ffff800000105931 <do_nmi>:
ffff800000105931:	f3 0f 1e fa          	endbr64 
ffff800000105935:	55                   	push   %rbp
ffff800000105936:	48 89 e5             	mov    %rsp,%rbp
ffff800000105939:	41 57                	push   %r15
ffff80000010593b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010593f:	f3 0f 1e fa          	endbr64 
ffff800000105943:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010593f <do_nmi+0xe>
ffff80000010594a:	49 bb 91 46 00 00 00 	movabs $0x4691,%r11
ffff800000105951:	00 00 00 
ffff800000105954:	4d 01 d8             	add    %r11,%r8
ffff800000105957:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010595b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010595f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105966:	00 
ffff800000105967:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010596b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105971:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105975:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105979:	48 8b 08             	mov    (%rax),%rcx
ffff80000010597c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105980:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105984:	48 89 c6             	mov    %rax,%rsi
ffff800000105987:	48 b8 30 e7 ff ff ff 	movabs $0xffffffffffffe730,%rax
ffff80000010598e:	ff ff ff 
ffff800000105991:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105995:	4d 89 c7             	mov    %r8,%r15
ffff800000105998:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010599d:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff8000001059a4:	ff ff ff 
ffff8000001059a7:	4d 01 c1             	add    %r8,%r9
ffff8000001059aa:	41 ff d1             	callq  *%r9
ffff8000001059ad:	eb fe                	jmp    ffff8000001059ad <do_nmi+0x7c>

ffff8000001059af <do_int3>:
ffff8000001059af:	f3 0f 1e fa          	endbr64 
ffff8000001059b3:	55                   	push   %rbp
ffff8000001059b4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001059b7:	41 57                	push   %r15
ffff8000001059b9:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001059bd:	f3 0f 1e fa          	endbr64 
ffff8000001059c1:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001059bd <do_int3+0xe>
ffff8000001059c8:	49 bb 13 46 00 00 00 	movabs $0x4613,%r11
ffff8000001059cf:	00 00 00 
ffff8000001059d2:	4d 01 d8             	add    %r11,%r8
ffff8000001059d5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001059d9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001059dd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001059e4:	00 
ffff8000001059e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001059e9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001059ef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001059f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001059f7:	48 8b 08             	mov    (%rax),%rcx
ffff8000001059fa:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001059fe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105a02:	48 89 c6             	mov    %rax,%rsi
ffff800000105a05:	48 b8 60 e7 ff ff ff 	movabs $0xffffffffffffe760,%rax
ffff800000105a0c:	ff ff ff 
ffff800000105a0f:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105a13:	4d 89 c7             	mov    %r8,%r15
ffff800000105a16:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105a1b:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105a22:	ff ff ff 
ffff800000105a25:	4d 01 c1             	add    %r8,%r9
ffff800000105a28:	41 ff d1             	callq  *%r9
ffff800000105a2b:	eb fe                	jmp    ffff800000105a2b <do_int3+0x7c>

ffff800000105a2d <do_overflow>:
ffff800000105a2d:	f3 0f 1e fa          	endbr64 
ffff800000105a31:	55                   	push   %rbp
ffff800000105a32:	48 89 e5             	mov    %rsp,%rbp
ffff800000105a35:	41 57                	push   %r15
ffff800000105a37:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105a3b:	f3 0f 1e fa          	endbr64 
ffff800000105a3f:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105a3b <do_overflow+0xe>
ffff800000105a46:	49 bb 95 45 00 00 00 	movabs $0x4595,%r11
ffff800000105a4d:	00 00 00 
ffff800000105a50:	4d 01 d8             	add    %r11,%r8
ffff800000105a53:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105a57:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105a5b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105a62:	00 
ffff800000105a63:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105a67:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105a6d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105a71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105a75:	48 8b 08             	mov    (%rax),%rcx
ffff800000105a78:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105a7c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105a80:	48 89 c6             	mov    %rax,%rsi
ffff800000105a83:	48 b8 90 e7 ff ff ff 	movabs $0xffffffffffffe790,%rax
ffff800000105a8a:	ff ff ff 
ffff800000105a8d:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105a91:	4d 89 c7             	mov    %r8,%r15
ffff800000105a94:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105a99:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105aa0:	ff ff ff 
ffff800000105aa3:	4d 01 c1             	add    %r8,%r9
ffff800000105aa6:	41 ff d1             	callq  *%r9
ffff800000105aa9:	eb fe                	jmp    ffff800000105aa9 <do_overflow+0x7c>

ffff800000105aab <do_bounds>:
ffff800000105aab:	f3 0f 1e fa          	endbr64 
ffff800000105aaf:	55                   	push   %rbp
ffff800000105ab0:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ab3:	41 57                	push   %r15
ffff800000105ab5:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ab9:	f3 0f 1e fa          	endbr64 
ffff800000105abd:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105ab9 <do_bounds+0xe>
ffff800000105ac4:	49 bb 17 45 00 00 00 	movabs $0x4517,%r11
ffff800000105acb:	00 00 00 
ffff800000105ace:	4d 01 d8             	add    %r11,%r8
ffff800000105ad1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ad5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105ad9:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105ae0:	00 
ffff800000105ae1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ae5:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105aeb:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105aef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105af3:	48 8b 08             	mov    (%rax),%rcx
ffff800000105af6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105afa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105afe:	48 89 c6             	mov    %rax,%rsi
ffff800000105b01:	48 b8 c0 e7 ff ff ff 	movabs $0xffffffffffffe7c0,%rax
ffff800000105b08:	ff ff ff 
ffff800000105b0b:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105b0f:	4d 89 c7             	mov    %r8,%r15
ffff800000105b12:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105b17:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105b1e:	ff ff ff 
ffff800000105b21:	4d 01 c1             	add    %r8,%r9
ffff800000105b24:	41 ff d1             	callq  *%r9
ffff800000105b27:	eb fe                	jmp    ffff800000105b27 <do_bounds+0x7c>

ffff800000105b29 <do_undefined_opcode>:
ffff800000105b29:	f3 0f 1e fa          	endbr64 
ffff800000105b2d:	55                   	push   %rbp
ffff800000105b2e:	48 89 e5             	mov    %rsp,%rbp
ffff800000105b31:	41 57                	push   %r15
ffff800000105b33:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105b37:	f3 0f 1e fa          	endbr64 
ffff800000105b3b:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105b37 <do_undefined_opcode+0xe>
ffff800000105b42:	49 bb 99 44 00 00 00 	movabs $0x4499,%r11
ffff800000105b49:	00 00 00 
ffff800000105b4c:	4d 01 d8             	add    %r11,%r8
ffff800000105b4f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105b53:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105b57:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105b5e:	00 
ffff800000105b5f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105b63:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105b69:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105b6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105b71:	48 8b 08             	mov    (%rax),%rcx
ffff800000105b74:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105b78:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105b7c:	48 89 c6             	mov    %rax,%rsi
ffff800000105b7f:	48 b8 f0 e7 ff ff ff 	movabs $0xffffffffffffe7f0,%rax
ffff800000105b86:	ff ff ff 
ffff800000105b89:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105b8d:	4d 89 c7             	mov    %r8,%r15
ffff800000105b90:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105b95:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105b9c:	ff ff ff 
ffff800000105b9f:	4d 01 c1             	add    %r8,%r9
ffff800000105ba2:	41 ff d1             	callq  *%r9
ffff800000105ba5:	eb fe                	jmp    ffff800000105ba5 <do_undefined_opcode+0x7c>

ffff800000105ba7 <do_dev_not_available>:
ffff800000105ba7:	f3 0f 1e fa          	endbr64 
ffff800000105bab:	55                   	push   %rbp
ffff800000105bac:	48 89 e5             	mov    %rsp,%rbp
ffff800000105baf:	41 57                	push   %r15
ffff800000105bb1:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105bb5:	f3 0f 1e fa          	endbr64 
ffff800000105bb9:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105bb5 <do_dev_not_available+0xe>
ffff800000105bc0:	49 bb 1b 44 00 00 00 	movabs $0x441b,%r11
ffff800000105bc7:	00 00 00 
ffff800000105bca:	4d 01 d8             	add    %r11,%r8
ffff800000105bcd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105bd1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105bd5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105bdc:	00 
ffff800000105bdd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105be1:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105be7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105beb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105bef:	48 8b 08             	mov    (%rax),%rcx
ffff800000105bf2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105bf6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105bfa:	48 89 c6             	mov    %rax,%rsi
ffff800000105bfd:	48 b8 28 e8 ff ff ff 	movabs $0xffffffffffffe828,%rax
ffff800000105c04:	ff ff ff 
ffff800000105c07:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105c0b:	4d 89 c7             	mov    %r8,%r15
ffff800000105c0e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105c13:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105c1a:	ff ff ff 
ffff800000105c1d:	4d 01 c1             	add    %r8,%r9
ffff800000105c20:	41 ff d1             	callq  *%r9
ffff800000105c23:	eb fe                	jmp    ffff800000105c23 <do_dev_not_available+0x7c>

ffff800000105c25 <do_double_fault>:
ffff800000105c25:	f3 0f 1e fa          	endbr64 
ffff800000105c29:	55                   	push   %rbp
ffff800000105c2a:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c2d:	41 57                	push   %r15
ffff800000105c2f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105c33:	f3 0f 1e fa          	endbr64 
ffff800000105c37:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105c33 <do_double_fault+0xe>
ffff800000105c3e:	49 bb 9d 43 00 00 00 	movabs $0x439d,%r11
ffff800000105c45:	00 00 00 
ffff800000105c48:	4d 01 d8             	add    %r11,%r8
ffff800000105c4b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105c4f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105c53:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105c5a:	00 
ffff800000105c5b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105c5f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105c65:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105c69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c6d:	48 8b 08             	mov    (%rax),%rcx
ffff800000105c70:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105c74:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105c78:	48 89 c6             	mov    %rax,%rsi
ffff800000105c7b:	48 b8 60 e8 ff ff ff 	movabs $0xffffffffffffe860,%rax
ffff800000105c82:	ff ff ff 
ffff800000105c85:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105c89:	4d 89 c7             	mov    %r8,%r15
ffff800000105c8c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105c91:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105c98:	ff ff ff 
ffff800000105c9b:	4d 01 c1             	add    %r8,%r9
ffff800000105c9e:	41 ff d1             	callq  *%r9
ffff800000105ca1:	eb fe                	jmp    ffff800000105ca1 <do_double_fault+0x7c>

ffff800000105ca3 <do_coprocessor_segment_overrun>:
ffff800000105ca3:	f3 0f 1e fa          	endbr64 
ffff800000105ca7:	55                   	push   %rbp
ffff800000105ca8:	48 89 e5             	mov    %rsp,%rbp
ffff800000105cab:	41 57                	push   %r15
ffff800000105cad:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105cb1:	f3 0f 1e fa          	endbr64 
ffff800000105cb5:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105cb1 <do_coprocessor_segment_overrun+0xe>
ffff800000105cbc:	49 bb 1f 43 00 00 00 	movabs $0x431f,%r11
ffff800000105cc3:	00 00 00 
ffff800000105cc6:	4d 01 d8             	add    %r11,%r8
ffff800000105cc9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ccd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105cd1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105cd8:	00 
ffff800000105cd9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105cdd:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105ce3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105ce7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ceb:	48 8b 08             	mov    (%rax),%rcx
ffff800000105cee:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105cf2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105cf6:	48 89 c6             	mov    %rax,%rsi
ffff800000105cf9:	48 b8 98 e8 ff ff ff 	movabs $0xffffffffffffe898,%rax
ffff800000105d00:	ff ff ff 
ffff800000105d03:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105d07:	4d 89 c7             	mov    %r8,%r15
ffff800000105d0a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d0f:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000105d16:	ff ff ff 
ffff800000105d19:	4d 01 c1             	add    %r8,%r9
ffff800000105d1c:	41 ff d1             	callq  *%r9
ffff800000105d1f:	eb fe                	jmp    ffff800000105d1f <do_coprocessor_segment_overrun+0x7c>

ffff800000105d21 <do_invalid_TSS>:
ffff800000105d21:	f3 0f 1e fa          	endbr64 
ffff800000105d25:	55                   	push   %rbp
ffff800000105d26:	48 89 e5             	mov    %rsp,%rbp
ffff800000105d29:	41 57                	push   %r15
ffff800000105d2b:	53                   	push   %rbx
ffff800000105d2c:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105d30:	f3 0f 1e fa          	endbr64 
ffff800000105d34:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105d30 <do_invalid_TSS+0xf>
ffff800000105d3b:	49 bb a0 42 00 00 00 	movabs $0x42a0,%r11
ffff800000105d42:	00 00 00 
ffff800000105d45:	4c 01 db             	add    %r11,%rbx
ffff800000105d48:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105d4c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105d50:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105d57:	00 
ffff800000105d58:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105d5c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105d62:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105d66:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d6a:	48 8b 08             	mov    (%rax),%rcx
ffff800000105d6d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105d71:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105d75:	48 89 c6             	mov    %rax,%rsi
ffff800000105d78:	48 b8 e0 e8 ff ff ff 	movabs $0xffffffffffffe8e0,%rax
ffff800000105d7f:	ff ff ff 
ffff800000105d82:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105d86:	49 89 df             	mov    %rbx,%r15
ffff800000105d89:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105d8e:	49 b8 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r8
ffff800000105d95:	ff ff ff 
ffff800000105d98:	49 01 d8             	add    %rbx,%r8
ffff800000105d9b:	41 ff d0             	callq  *%r8
ffff800000105d9e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105da2:	83 e0 01             	and    $0x1,%eax
ffff800000105da5:	48 85 c0             	test   %rax,%rax
ffff800000105da8:	74 25                	je     ffff800000105dcf <do_invalid_TSS+0xae>
ffff800000105daa:	48 b8 18 e9 ff ff ff 	movabs $0xffffffffffffe918,%rax
ffff800000105db1:	ff ff ff 
ffff800000105db4:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105db8:	49 89 df             	mov    %rbx,%r15
ffff800000105dbb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105dc0:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105dc7:	ff ff ff 
ffff800000105dca:	48 01 da             	add    %rbx,%rdx
ffff800000105dcd:	ff d2                	callq  *%rdx
ffff800000105dcf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105dd3:	83 e0 02             	and    $0x2,%eax
ffff800000105dd6:	48 85 c0             	test   %rax,%rax
ffff800000105dd9:	74 27                	je     ffff800000105e02 <do_invalid_TSS+0xe1>
ffff800000105ddb:	48 b8 98 e9 ff ff ff 	movabs $0xffffffffffffe998,%rax
ffff800000105de2:	ff ff ff 
ffff800000105de5:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105de9:	49 89 df             	mov    %rbx,%r15
ffff800000105dec:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105df1:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105df8:	ff ff ff 
ffff800000105dfb:	48 01 da             	add    %rbx,%rdx
ffff800000105dfe:	ff d2                	callq  *%rdx
ffff800000105e00:	eb 25                	jmp    ffff800000105e27 <do_invalid_TSS+0x106>
ffff800000105e02:	48 b8 c8 e9 ff ff ff 	movabs $0xffffffffffffe9c8,%rax
ffff800000105e09:	ff ff ff 
ffff800000105e0c:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e10:	49 89 df             	mov    %rbx,%r15
ffff800000105e13:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e18:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105e1f:	ff ff ff 
ffff800000105e22:	48 01 da             	add    %rbx,%rdx
ffff800000105e25:	ff d2                	callq  *%rdx
ffff800000105e27:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e2b:	83 e0 02             	and    $0x2,%eax
ffff800000105e2e:	48 85 c0             	test   %rax,%rax
ffff800000105e31:	75 58                	jne    ffff800000105e8b <do_invalid_TSS+0x16a>
ffff800000105e33:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e37:	83 e0 04             	and    $0x4,%eax
ffff800000105e3a:	48 85 c0             	test   %rax,%rax
ffff800000105e3d:	74 27                	je     ffff800000105e66 <do_invalid_TSS+0x145>
ffff800000105e3f:	48 b8 00 ea ff ff ff 	movabs $0xffffffffffffea00,%rax
ffff800000105e46:	ff ff ff 
ffff800000105e49:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e4d:	49 89 df             	mov    %rbx,%r15
ffff800000105e50:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e55:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105e5c:	ff ff ff 
ffff800000105e5f:	48 01 da             	add    %rbx,%rdx
ffff800000105e62:	ff d2                	callq  *%rdx
ffff800000105e64:	eb 25                	jmp    ffff800000105e8b <do_invalid_TSS+0x16a>
ffff800000105e66:	48 b8 38 ea ff ff ff 	movabs $0xffffffffffffea38,%rax
ffff800000105e6d:	ff ff ff 
ffff800000105e70:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105e74:	49 89 df             	mov    %rbx,%r15
ffff800000105e77:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105e7c:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105e83:	ff ff ff 
ffff800000105e86:	48 01 da             	add    %rbx,%rdx
ffff800000105e89:	ff d2                	callq  *%rdx
ffff800000105e8b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105e8f:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000105e94:	48 89 c6             	mov    %rax,%rsi
ffff800000105e97:	48 b8 68 ea ff ff ff 	movabs $0xffffffffffffea68,%rax
ffff800000105e9e:	ff ff ff 
ffff800000105ea1:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105ea5:	49 89 df             	mov    %rbx,%r15
ffff800000105ea8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ead:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105eb4:	ff ff ff 
ffff800000105eb7:	48 01 da             	add    %rbx,%rdx
ffff800000105eba:	ff d2                	callq  *%rdx
ffff800000105ebc:	eb fe                	jmp    ffff800000105ebc <do_invalid_TSS+0x19b>

ffff800000105ebe <do_segment_not_present>:
ffff800000105ebe:	f3 0f 1e fa          	endbr64 
ffff800000105ec2:	55                   	push   %rbp
ffff800000105ec3:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ec6:	41 57                	push   %r15
ffff800000105ec8:	53                   	push   %rbx
ffff800000105ec9:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000105ecd:	f3 0f 1e fa          	endbr64 
ffff800000105ed1:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105ecd <do_segment_not_present+0xf>
ffff800000105ed8:	49 bb 03 41 00 00 00 	movabs $0x4103,%r11
ffff800000105edf:	00 00 00 
ffff800000105ee2:	4c 01 db             	add    %r11,%rbx
ffff800000105ee5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105ee9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105eed:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105ef4:	00 
ffff800000105ef5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105ef9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105eff:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105f03:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f07:	48 8b 08             	mov    (%rax),%rcx
ffff800000105f0a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105f0e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f12:	48 89 c6             	mov    %rax,%rsi
ffff800000105f15:	48 b8 88 ea ff ff ff 	movabs $0xffffffffffffea88,%rax
ffff800000105f1c:	ff ff ff 
ffff800000105f1f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f23:	49 89 df             	mov    %rbx,%r15
ffff800000105f26:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f2b:	49 b8 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r8
ffff800000105f32:	ff ff ff 
ffff800000105f35:	49 01 d8             	add    %rbx,%r8
ffff800000105f38:	41 ff d0             	callq  *%r8
ffff800000105f3b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f3f:	83 e0 01             	and    $0x1,%eax
ffff800000105f42:	48 85 c0             	test   %rax,%rax
ffff800000105f45:	74 25                	je     ffff800000105f6c <do_segment_not_present+0xae>
ffff800000105f47:	48 b8 18 e9 ff ff ff 	movabs $0xffffffffffffe918,%rax
ffff800000105f4e:	ff ff ff 
ffff800000105f51:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f55:	49 89 df             	mov    %rbx,%r15
ffff800000105f58:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f5d:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105f64:	ff ff ff 
ffff800000105f67:	48 01 da             	add    %rbx,%rdx
ffff800000105f6a:	ff d2                	callq  *%rdx
ffff800000105f6c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105f70:	83 e0 02             	and    $0x2,%eax
ffff800000105f73:	48 85 c0             	test   %rax,%rax
ffff800000105f76:	74 27                	je     ffff800000105f9f <do_segment_not_present+0xe1>
ffff800000105f78:	48 b8 98 e9 ff ff ff 	movabs $0xffffffffffffe998,%rax
ffff800000105f7f:	ff ff ff 
ffff800000105f82:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105f86:	49 89 df             	mov    %rbx,%r15
ffff800000105f89:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105f8e:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105f95:	ff ff ff 
ffff800000105f98:	48 01 da             	add    %rbx,%rdx
ffff800000105f9b:	ff d2                	callq  *%rdx
ffff800000105f9d:	eb 25                	jmp    ffff800000105fc4 <do_segment_not_present+0x106>
ffff800000105f9f:	48 b8 c8 e9 ff ff ff 	movabs $0xffffffffffffe9c8,%rax
ffff800000105fa6:	ff ff ff 
ffff800000105fa9:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105fad:	49 89 df             	mov    %rbx,%r15
ffff800000105fb0:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fb5:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105fbc:	ff ff ff 
ffff800000105fbf:	48 01 da             	add    %rbx,%rdx
ffff800000105fc2:	ff d2                	callq  *%rdx
ffff800000105fc4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fc8:	83 e0 02             	and    $0x2,%eax
ffff800000105fcb:	48 85 c0             	test   %rax,%rax
ffff800000105fce:	75 58                	jne    ffff800000106028 <do_segment_not_present+0x16a>
ffff800000105fd0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fd4:	83 e0 04             	and    $0x4,%eax
ffff800000105fd7:	48 85 c0             	test   %rax,%rax
ffff800000105fda:	74 27                	je     ffff800000106003 <do_segment_not_present+0x145>
ffff800000105fdc:	48 b8 00 ea ff ff ff 	movabs $0xffffffffffffea00,%rax
ffff800000105fe3:	ff ff ff 
ffff800000105fe6:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105fea:	49 89 df             	mov    %rbx,%r15
ffff800000105fed:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105ff2:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000105ff9:	ff ff ff 
ffff800000105ffc:	48 01 da             	add    %rbx,%rdx
ffff800000105fff:	ff d2                	callq  *%rdx
ffff800000106001:	eb 25                	jmp    ffff800000106028 <do_segment_not_present+0x16a>
ffff800000106003:	48 b8 38 ea ff ff ff 	movabs $0xffffffffffffea38,%rax
ffff80000010600a:	ff ff ff 
ffff80000010600d:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106011:	49 89 df             	mov    %rbx,%r15
ffff800000106014:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106019:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106020:	ff ff ff 
ffff800000106023:	48 01 da             	add    %rbx,%rdx
ffff800000106026:	ff d2                	callq  *%rdx
ffff800000106028:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010602c:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106031:	48 89 c6             	mov    %rax,%rsi
ffff800000106034:	48 b8 68 ea ff ff ff 	movabs $0xffffffffffffea68,%rax
ffff80000010603b:	ff ff ff 
ffff80000010603e:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106042:	49 89 df             	mov    %rbx,%r15
ffff800000106045:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010604a:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106051:	ff ff ff 
ffff800000106054:	48 01 da             	add    %rbx,%rdx
ffff800000106057:	ff d2                	callq  *%rdx
ffff800000106059:	eb fe                	jmp    ffff800000106059 <do_segment_not_present+0x19b>

ffff80000010605b <do_stack_segment_fault>:
ffff80000010605b:	f3 0f 1e fa          	endbr64 
ffff80000010605f:	55                   	push   %rbp
ffff800000106060:	48 89 e5             	mov    %rsp,%rbp
ffff800000106063:	41 57                	push   %r15
ffff800000106065:	53                   	push   %rbx
ffff800000106066:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010606a:	f3 0f 1e fa          	endbr64 
ffff80000010606e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010606a <do_stack_segment_fault+0xf>
ffff800000106075:	49 bb 66 3f 00 00 00 	movabs $0x3f66,%r11
ffff80000010607c:	00 00 00 
ffff80000010607f:	4c 01 db             	add    %r11,%rbx
ffff800000106082:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106086:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010608a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106091:	00 
ffff800000106092:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106096:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010609c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060a4:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060a7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060ab:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060af:	48 89 c6             	mov    %rax,%rsi
ffff8000001060b2:	48 b8 c8 ea ff ff ff 	movabs $0xffffffffffffeac8,%rax
ffff8000001060b9:	ff ff ff 
ffff8000001060bc:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001060c0:	49 89 df             	mov    %rbx,%r15
ffff8000001060c3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060c8:	49 b8 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r8
ffff8000001060cf:	ff ff ff 
ffff8000001060d2:	49 01 d8             	add    %rbx,%r8
ffff8000001060d5:	41 ff d0             	callq  *%r8
ffff8000001060d8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060dc:	83 e0 01             	and    $0x1,%eax
ffff8000001060df:	48 85 c0             	test   %rax,%rax
ffff8000001060e2:	74 25                	je     ffff800000106109 <do_stack_segment_fault+0xae>
ffff8000001060e4:	48 b8 18 e9 ff ff ff 	movabs $0xffffffffffffe918,%rax
ffff8000001060eb:	ff ff ff 
ffff8000001060ee:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001060f2:	49 89 df             	mov    %rbx,%r15
ffff8000001060f5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060fa:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106101:	ff ff ff 
ffff800000106104:	48 01 da             	add    %rbx,%rdx
ffff800000106107:	ff d2                	callq  *%rdx
ffff800000106109:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010610d:	83 e0 02             	and    $0x2,%eax
ffff800000106110:	48 85 c0             	test   %rax,%rax
ffff800000106113:	74 27                	je     ffff80000010613c <do_stack_segment_fault+0xe1>
ffff800000106115:	48 b8 98 e9 ff ff ff 	movabs $0xffffffffffffe998,%rax
ffff80000010611c:	ff ff ff 
ffff80000010611f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106123:	49 89 df             	mov    %rbx,%r15
ffff800000106126:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010612b:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106132:	ff ff ff 
ffff800000106135:	48 01 da             	add    %rbx,%rdx
ffff800000106138:	ff d2                	callq  *%rdx
ffff80000010613a:	eb 25                	jmp    ffff800000106161 <do_stack_segment_fault+0x106>
ffff80000010613c:	48 b8 c8 e9 ff ff ff 	movabs $0xffffffffffffe9c8,%rax
ffff800000106143:	ff ff ff 
ffff800000106146:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010614a:	49 89 df             	mov    %rbx,%r15
ffff80000010614d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106152:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106159:	ff ff ff 
ffff80000010615c:	48 01 da             	add    %rbx,%rdx
ffff80000010615f:	ff d2                	callq  *%rdx
ffff800000106161:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106165:	83 e0 02             	and    $0x2,%eax
ffff800000106168:	48 85 c0             	test   %rax,%rax
ffff80000010616b:	75 58                	jne    ffff8000001061c5 <do_stack_segment_fault+0x16a>
ffff80000010616d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106171:	83 e0 04             	and    $0x4,%eax
ffff800000106174:	48 85 c0             	test   %rax,%rax
ffff800000106177:	74 27                	je     ffff8000001061a0 <do_stack_segment_fault+0x145>
ffff800000106179:	48 b8 00 ea ff ff ff 	movabs $0xffffffffffffea00,%rax
ffff800000106180:	ff ff ff 
ffff800000106183:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106187:	49 89 df             	mov    %rbx,%r15
ffff80000010618a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010618f:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106196:	ff ff ff 
ffff800000106199:	48 01 da             	add    %rbx,%rdx
ffff80000010619c:	ff d2                	callq  *%rdx
ffff80000010619e:	eb 25                	jmp    ffff8000001061c5 <do_stack_segment_fault+0x16a>
ffff8000001061a0:	48 b8 38 ea ff ff ff 	movabs $0xffffffffffffea38,%rax
ffff8000001061a7:	ff ff ff 
ffff8000001061aa:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001061ae:	49 89 df             	mov    %rbx,%r15
ffff8000001061b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061b6:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001061bd:	ff ff ff 
ffff8000001061c0:	48 01 da             	add    %rbx,%rdx
ffff8000001061c3:	ff d2                	callq  *%rdx
ffff8000001061c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061c9:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001061ce:	48 89 c6             	mov    %rax,%rsi
ffff8000001061d1:	48 b8 68 ea ff ff ff 	movabs $0xffffffffffffea68,%rax
ffff8000001061d8:	ff ff ff 
ffff8000001061db:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001061df:	49 89 df             	mov    %rbx,%r15
ffff8000001061e2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061e7:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001061ee:	ff ff ff 
ffff8000001061f1:	48 01 da             	add    %rbx,%rdx
ffff8000001061f4:	ff d2                	callq  *%rdx
ffff8000001061f6:	eb fe                	jmp    ffff8000001061f6 <do_stack_segment_fault+0x19b>

ffff8000001061f8 <do_general_protection>:
ffff8000001061f8:	f3 0f 1e fa          	endbr64 
ffff8000001061fc:	55                   	push   %rbp
ffff8000001061fd:	48 89 e5             	mov    %rsp,%rbp
ffff800000106200:	41 57                	push   %r15
ffff800000106202:	53                   	push   %rbx
ffff800000106203:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106207:	f3 0f 1e fa          	endbr64 
ffff80000010620b:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106207 <do_general_protection+0xf>
ffff800000106212:	49 bb c9 3d 00 00 00 	movabs $0x3dc9,%r11
ffff800000106219:	00 00 00 
ffff80000010621c:	4c 01 db             	add    %r11,%rbx
ffff80000010621f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106223:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106227:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010622e:	00 
ffff80000010622f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106233:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106239:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010623d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106241:	48 8b 08             	mov    (%rax),%rcx
ffff800000106244:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106248:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010624c:	48 89 c6             	mov    %rax,%rsi
ffff80000010624f:	48 b8 08 eb ff ff ff 	movabs $0xffffffffffffeb08,%rax
ffff800000106256:	ff ff ff 
ffff800000106259:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010625d:	49 89 df             	mov    %rbx,%r15
ffff800000106260:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106265:	49 b8 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r8
ffff80000010626c:	ff ff ff 
ffff80000010626f:	49 01 d8             	add    %rbx,%r8
ffff800000106272:	41 ff d0             	callq  *%r8
ffff800000106275:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106279:	83 e0 01             	and    $0x1,%eax
ffff80000010627c:	48 85 c0             	test   %rax,%rax
ffff80000010627f:	74 25                	je     ffff8000001062a6 <do_general_protection+0xae>
ffff800000106281:	48 b8 18 e9 ff ff ff 	movabs $0xffffffffffffe918,%rax
ffff800000106288:	ff ff ff 
ffff80000010628b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010628f:	49 89 df             	mov    %rbx,%r15
ffff800000106292:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106297:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff80000010629e:	ff ff ff 
ffff8000001062a1:	48 01 da             	add    %rbx,%rdx
ffff8000001062a4:	ff d2                	callq  *%rdx
ffff8000001062a6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062aa:	83 e0 02             	and    $0x2,%eax
ffff8000001062ad:	48 85 c0             	test   %rax,%rax
ffff8000001062b0:	74 27                	je     ffff8000001062d9 <do_general_protection+0xe1>
ffff8000001062b2:	48 b8 98 e9 ff ff ff 	movabs $0xffffffffffffe998,%rax
ffff8000001062b9:	ff ff ff 
ffff8000001062bc:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001062c0:	49 89 df             	mov    %rbx,%r15
ffff8000001062c3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062c8:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001062cf:	ff ff ff 
ffff8000001062d2:	48 01 da             	add    %rbx,%rdx
ffff8000001062d5:	ff d2                	callq  *%rdx
ffff8000001062d7:	eb 25                	jmp    ffff8000001062fe <do_general_protection+0x106>
ffff8000001062d9:	48 b8 c8 e9 ff ff ff 	movabs $0xffffffffffffe9c8,%rax
ffff8000001062e0:	ff ff ff 
ffff8000001062e3:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001062e7:	49 89 df             	mov    %rbx,%r15
ffff8000001062ea:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062ef:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001062f6:	ff ff ff 
ffff8000001062f9:	48 01 da             	add    %rbx,%rdx
ffff8000001062fc:	ff d2                	callq  *%rdx
ffff8000001062fe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106302:	83 e0 02             	and    $0x2,%eax
ffff800000106305:	48 85 c0             	test   %rax,%rax
ffff800000106308:	75 58                	jne    ffff800000106362 <do_general_protection+0x16a>
ffff80000010630a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010630e:	83 e0 04             	and    $0x4,%eax
ffff800000106311:	48 85 c0             	test   %rax,%rax
ffff800000106314:	74 27                	je     ffff80000010633d <do_general_protection+0x145>
ffff800000106316:	48 b8 00 ea ff ff ff 	movabs $0xffffffffffffea00,%rax
ffff80000010631d:	ff ff ff 
ffff800000106320:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106324:	49 89 df             	mov    %rbx,%r15
ffff800000106327:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010632c:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106333:	ff ff ff 
ffff800000106336:	48 01 da             	add    %rbx,%rdx
ffff800000106339:	ff d2                	callq  *%rdx
ffff80000010633b:	eb 25                	jmp    ffff800000106362 <do_general_protection+0x16a>
ffff80000010633d:	48 b8 38 ea ff ff ff 	movabs $0xffffffffffffea38,%rax
ffff800000106344:	ff ff ff 
ffff800000106347:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010634b:	49 89 df             	mov    %rbx,%r15
ffff80000010634e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106353:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff80000010635a:	ff ff ff 
ffff80000010635d:	48 01 da             	add    %rbx,%rdx
ffff800000106360:	ff d2                	callq  *%rdx
ffff800000106362:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106366:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010636b:	48 89 c6             	mov    %rax,%rsi
ffff80000010636e:	48 b8 68 ea ff ff ff 	movabs $0xffffffffffffea68,%rax
ffff800000106375:	ff ff ff 
ffff800000106378:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010637c:	49 89 df             	mov    %rbx,%r15
ffff80000010637f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106384:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff80000010638b:	ff ff ff 
ffff80000010638e:	48 01 da             	add    %rbx,%rdx
ffff800000106391:	ff d2                	callq  *%rdx
ffff800000106393:	eb fe                	jmp    ffff800000106393 <do_general_protection+0x19b>

ffff800000106395 <do_page_fault>:
ffff800000106395:	f3 0f 1e fa          	endbr64 
ffff800000106399:	55                   	push   %rbp
ffff80000010639a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010639d:	41 57                	push   %r15
ffff80000010639f:	53                   	push   %rbx
ffff8000001063a0:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001063a4:	f3 0f 1e fa          	endbr64 
ffff8000001063a8:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001063a4 <do_page_fault+0xf>
ffff8000001063af:	49 bb 2c 3c 00 00 00 	movabs $0x3c2c,%r11
ffff8000001063b6:	00 00 00 
ffff8000001063b9:	4c 01 db             	add    %r11,%rbx
ffff8000001063bc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001063c0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001063c4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001063cb:	00 
ffff8000001063cc:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff8000001063d3:	00 
ffff8000001063d4:	0f 20 d0             	mov    %cr2,%rax
ffff8000001063d7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001063db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001063df:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001063e5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001063e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001063ed:	48 8b 08             	mov    (%rax),%rcx
ffff8000001063f0:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001063f4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063f8:	48 89 c6             	mov    %rax,%rsi
ffff8000001063fb:	48 b8 48 eb ff ff ff 	movabs $0xffffffffffffeb48,%rax
ffff800000106402:	ff ff ff 
ffff800000106405:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106409:	49 89 df             	mov    %rbx,%r15
ffff80000010640c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106411:	49 b8 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r8
ffff800000106418:	ff ff ff 
ffff80000010641b:	49 01 d8             	add    %rbx,%r8
ffff80000010641e:	41 ff d0             	callq  *%r8
ffff800000106421:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106425:	83 e0 01             	and    $0x1,%eax
ffff800000106428:	48 85 c0             	test   %rax,%rax
ffff80000010642b:	75 25                	jne    ffff800000106452 <do_page_fault+0xbd>
ffff80000010642d:	48 b8 7a eb ff ff ff 	movabs $0xffffffffffffeb7a,%rax
ffff800000106434:	ff ff ff 
ffff800000106437:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010643b:	49 89 df             	mov    %rbx,%r15
ffff80000010643e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106443:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff80000010644a:	ff ff ff 
ffff80000010644d:	48 01 da             	add    %rbx,%rdx
ffff800000106450:	ff d2                	callq  *%rdx
ffff800000106452:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106456:	83 e0 02             	and    $0x2,%eax
ffff800000106459:	48 85 c0             	test   %rax,%rax
ffff80000010645c:	74 27                	je     ffff800000106485 <do_page_fault+0xf0>
ffff80000010645e:	48 b8 8d eb ff ff ff 	movabs $0xffffffffffffeb8d,%rax
ffff800000106465:	ff ff ff 
ffff800000106468:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010646c:	49 89 df             	mov    %rbx,%r15
ffff80000010646f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106474:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff80000010647b:	ff ff ff 
ffff80000010647e:	48 01 da             	add    %rbx,%rdx
ffff800000106481:	ff d2                	callq  *%rdx
ffff800000106483:	eb 25                	jmp    ffff8000001064aa <do_page_fault+0x115>
ffff800000106485:	48 b8 a1 eb ff ff ff 	movabs $0xffffffffffffeba1,%rax
ffff80000010648c:	ff ff ff 
ffff80000010648f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106493:	49 89 df             	mov    %rbx,%r15
ffff800000106496:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010649b:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001064a2:	ff ff ff 
ffff8000001064a5:	48 01 da             	add    %rbx,%rdx
ffff8000001064a8:	ff d2                	callq  *%rdx
ffff8000001064aa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064ae:	83 e0 04             	and    $0x4,%eax
ffff8000001064b1:	48 85 c0             	test   %rax,%rax
ffff8000001064b4:	74 27                	je     ffff8000001064dd <do_page_fault+0x148>
ffff8000001064b6:	48 b8 b4 eb ff ff ff 	movabs $0xffffffffffffebb4,%rax
ffff8000001064bd:	ff ff ff 
ffff8000001064c0:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001064c4:	49 89 df             	mov    %rbx,%r15
ffff8000001064c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064cc:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001064d3:	ff ff ff 
ffff8000001064d6:	48 01 da             	add    %rbx,%rdx
ffff8000001064d9:	ff d2                	callq  *%rdx
ffff8000001064db:	eb 25                	jmp    ffff800000106502 <do_page_fault+0x16d>
ffff8000001064dd:	48 b8 c6 eb ff ff ff 	movabs $0xffffffffffffebc6,%rax
ffff8000001064e4:	ff ff ff 
ffff8000001064e7:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001064eb:	49 89 df             	mov    %rbx,%r15
ffff8000001064ee:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064f3:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001064fa:	ff ff ff 
ffff8000001064fd:	48 01 da             	add    %rbx,%rdx
ffff800000106500:	ff d2                	callq  *%rdx
ffff800000106502:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106506:	83 e0 08             	and    $0x8,%eax
ffff800000106509:	48 85 c0             	test   %rax,%rax
ffff80000010650c:	74 25                	je     ffff800000106533 <do_page_fault+0x19e>
ffff80000010650e:	48 b8 e2 eb ff ff ff 	movabs $0xffffffffffffebe2,%rax
ffff800000106515:	ff ff ff 
ffff800000106518:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010651c:	49 89 df             	mov    %rbx,%r15
ffff80000010651f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106524:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff80000010652b:	ff ff ff 
ffff80000010652e:	48 01 da             	add    %rbx,%rdx
ffff800000106531:	ff d2                	callq  *%rdx
ffff800000106533:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106537:	83 e0 10             	and    $0x10,%eax
ffff80000010653a:	48 85 c0             	test   %rax,%rax
ffff80000010653d:	74 25                	je     ffff800000106564 <do_page_fault+0x1cf>
ffff80000010653f:	48 b8 00 ec ff ff ff 	movabs $0xffffffffffffec00,%rax
ffff800000106546:	ff ff ff 
ffff800000106549:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010654d:	49 89 df             	mov    %rbx,%r15
ffff800000106550:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106555:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff80000010655c:	ff ff ff 
ffff80000010655f:	48 01 da             	add    %rbx,%rdx
ffff800000106562:	ff d2                	callq  *%rdx
ffff800000106564:	48 b8 1f ec ff ff ff 	movabs $0xffffffffffffec1f,%rax
ffff80000010656b:	ff ff ff 
ffff80000010656e:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106572:	49 89 df             	mov    %rbx,%r15
ffff800000106575:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010657a:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106581:	ff ff ff 
ffff800000106584:	48 01 da             	add    %rbx,%rdx
ffff800000106587:	ff d2                	callq  *%rdx
ffff800000106589:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010658d:	48 89 c6             	mov    %rax,%rsi
ffff800000106590:	48 b8 21 ec ff ff ff 	movabs $0xffffffffffffec21,%rax
ffff800000106597:	ff ff ff 
ffff80000010659a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010659e:	49 89 df             	mov    %rbx,%r15
ffff8000001065a1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065a6:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff8000001065ad:	ff ff ff 
ffff8000001065b0:	48 01 da             	add    %rbx,%rdx
ffff8000001065b3:	ff d2                	callq  *%rdx
ffff8000001065b5:	eb fe                	jmp    ffff8000001065b5 <do_page_fault+0x220>

ffff8000001065b7 <do_x87_FPU_error>:
ffff8000001065b7:	f3 0f 1e fa          	endbr64 
ffff8000001065bb:	55                   	push   %rbp
ffff8000001065bc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001065bf:	41 57                	push   %r15
ffff8000001065c1:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001065c5:	f3 0f 1e fa          	endbr64 
ffff8000001065c9:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001065c5 <do_x87_FPU_error+0xe>
ffff8000001065d0:	49 bb 0b 3a 00 00 00 	movabs $0x3a0b,%r11
ffff8000001065d7:	00 00 00 
ffff8000001065da:	4d 01 d8             	add    %r11,%r8
ffff8000001065dd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001065e1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001065e5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001065ec:	00 
ffff8000001065ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001065f1:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001065f7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001065fb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001065ff:	48 8b 08             	mov    (%rax),%rcx
ffff800000106602:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106606:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010660a:	48 89 c6             	mov    %rax,%rsi
ffff80000010660d:	48 b8 30 ec ff ff ff 	movabs $0xffffffffffffec30,%rax
ffff800000106614:	ff ff ff 
ffff800000106617:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010661b:	4d 89 c7             	mov    %r8,%r15
ffff80000010661e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106623:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff80000010662a:	ff ff ff 
ffff80000010662d:	4d 01 c1             	add    %r8,%r9
ffff800000106630:	41 ff d1             	callq  *%r9
ffff800000106633:	eb fe                	jmp    ffff800000106633 <do_x87_FPU_error+0x7c>

ffff800000106635 <do_alignment_check>:
ffff800000106635:	f3 0f 1e fa          	endbr64 
ffff800000106639:	55                   	push   %rbp
ffff80000010663a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010663d:	41 57                	push   %r15
ffff80000010663f:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106643:	f3 0f 1e fa          	endbr64 
ffff800000106647:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106643 <do_alignment_check+0xe>
ffff80000010664e:	49 bb 8d 39 00 00 00 	movabs $0x398d,%r11
ffff800000106655:	00 00 00 
ffff800000106658:	4d 01 d8             	add    %r11,%r8
ffff80000010665b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010665f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106663:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010666a:	00 
ffff80000010666b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010666f:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106675:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106679:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010667d:	48 8b 08             	mov    (%rax),%rcx
ffff800000106680:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106684:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106688:	48 89 c6             	mov    %rax,%rsi
ffff80000010668b:	48 b8 68 ec ff ff ff 	movabs $0xffffffffffffec68,%rax
ffff800000106692:	ff ff ff 
ffff800000106695:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106699:	4d 89 c7             	mov    %r8,%r15
ffff80000010669c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066a1:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff8000001066a8:	ff ff ff 
ffff8000001066ab:	4d 01 c1             	add    %r8,%r9
ffff8000001066ae:	41 ff d1             	callq  *%r9
ffff8000001066b1:	eb fe                	jmp    ffff8000001066b1 <do_alignment_check+0x7c>

ffff8000001066b3 <do_machine_check>:
ffff8000001066b3:	f3 0f 1e fa          	endbr64 
ffff8000001066b7:	55                   	push   %rbp
ffff8000001066b8:	48 89 e5             	mov    %rsp,%rbp
ffff8000001066bb:	41 57                	push   %r15
ffff8000001066bd:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001066c1:	f3 0f 1e fa          	endbr64 
ffff8000001066c5:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001066c1 <do_machine_check+0xe>
ffff8000001066cc:	49 bb 0f 39 00 00 00 	movabs $0x390f,%r11
ffff8000001066d3:	00 00 00 
ffff8000001066d6:	4d 01 d8             	add    %r11,%r8
ffff8000001066d9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001066dd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001066e1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001066e8:	00 
ffff8000001066e9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001066ed:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001066f3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001066f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001066fb:	48 8b 08             	mov    (%rax),%rcx
ffff8000001066fe:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106702:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106706:	48 89 c6             	mov    %rax,%rsi
ffff800000106709:	48 b8 a0 ec ff ff ff 	movabs $0xffffffffffffeca0,%rax
ffff800000106710:	ff ff ff 
ffff800000106713:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106717:	4d 89 c7             	mov    %r8,%r15
ffff80000010671a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010671f:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000106726:	ff ff ff 
ffff800000106729:	4d 01 c1             	add    %r8,%r9
ffff80000010672c:	41 ff d1             	callq  *%r9
ffff80000010672f:	eb fe                	jmp    ffff80000010672f <do_machine_check+0x7c>

ffff800000106731 <do_SIMD_exception>:
ffff800000106731:	f3 0f 1e fa          	endbr64 
ffff800000106735:	55                   	push   %rbp
ffff800000106736:	48 89 e5             	mov    %rsp,%rbp
ffff800000106739:	41 57                	push   %r15
ffff80000010673b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010673f:	f3 0f 1e fa          	endbr64 
ffff800000106743:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010673f <do_SIMD_exception+0xe>
ffff80000010674a:	49 bb 91 38 00 00 00 	movabs $0x3891,%r11
ffff800000106751:	00 00 00 
ffff800000106754:	4d 01 d8             	add    %r11,%r8
ffff800000106757:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010675b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010675f:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106766:	00 
ffff800000106767:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010676b:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106771:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106775:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106779:	48 8b 08             	mov    (%rax),%rcx
ffff80000010677c:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106780:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106784:	48 89 c6             	mov    %rax,%rsi
ffff800000106787:	48 b8 d8 ec ff ff ff 	movabs $0xffffffffffffecd8,%rax
ffff80000010678e:	ff ff ff 
ffff800000106791:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106795:	4d 89 c7             	mov    %r8,%r15
ffff800000106798:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010679d:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff8000001067a4:	ff ff ff 
ffff8000001067a7:	4d 01 c1             	add    %r8,%r9
ffff8000001067aa:	41 ff d1             	callq  *%r9
ffff8000001067ad:	eb fe                	jmp    ffff8000001067ad <do_SIMD_exception+0x7c>

ffff8000001067af <do_virtualization_exception>:
ffff8000001067af:	f3 0f 1e fa          	endbr64 
ffff8000001067b3:	55                   	push   %rbp
ffff8000001067b4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001067b7:	41 57                	push   %r15
ffff8000001067b9:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001067bd:	f3 0f 1e fa          	endbr64 
ffff8000001067c1:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001067bd <do_virtualization_exception+0xe>
ffff8000001067c8:	49 bb 13 38 00 00 00 	movabs $0x3813,%r11
ffff8000001067cf:	00 00 00 
ffff8000001067d2:	4d 01 d8             	add    %r11,%r8
ffff8000001067d5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001067d9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001067dd:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001067e4:	00 
ffff8000001067e5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001067e9:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001067ef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001067f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001067f7:	48 8b 08             	mov    (%rax),%rcx
ffff8000001067fa:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001067fe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106802:	48 89 c6             	mov    %rax,%rsi
ffff800000106805:	48 b8 10 ed ff ff ff 	movabs $0xffffffffffffed10,%rax
ffff80000010680c:	ff ff ff 
ffff80000010680f:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106813:	4d 89 c7             	mov    %r8,%r15
ffff800000106816:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010681b:	49 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%r9
ffff800000106822:	ff ff ff 
ffff800000106825:	4d 01 c1             	add    %r8,%r9
ffff800000106828:	41 ff d1             	callq  *%r9
ffff80000010682b:	eb fe                	jmp    ffff80000010682b <do_virtualization_exception+0x7c>

ffff80000010682d <io_in8>:
ffff80000010682d:	f3 0f 1e fa          	endbr64 
ffff800000106831:	55                   	push   %rbp
ffff800000106832:	48 89 e5             	mov    %rsp,%rbp
ffff800000106835:	f3 0f 1e fa          	endbr64 
ffff800000106839:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000106835 <io_in8+0x8>
ffff800000106840:	49 bb 9b 37 00 00 00 	movabs $0x379b,%r11
ffff800000106847:	00 00 00 
ffff80000010684a:	4c 01 d8             	add    %r11,%rax
ffff80000010684d:	89 f8                	mov    %edi,%eax
ffff80000010684f:	66 89 45 ec          	mov    %ax,-0x14(%rbp)
ffff800000106853:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000106857:	0f b7 45 ec          	movzwl -0x14(%rbp),%eax
ffff80000010685b:	89 c2                	mov    %eax,%edx
ffff80000010685d:	ec                   	in     (%dx),%al
ffff80000010685e:	0f ae f0             	mfence 
ffff800000106861:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000106864:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
ffff800000106868:	5d                   	pop    %rbp
ffff800000106869:	c3                   	retq   

ffff80000010686a <io_out8>:
ffff80000010686a:	f3 0f 1e fa          	endbr64 
ffff80000010686e:	55                   	push   %rbp
ffff80000010686f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106872:	f3 0f 1e fa          	endbr64 
ffff800000106876:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000106872 <io_out8+0x8>
ffff80000010687d:	49 bb 5e 37 00 00 00 	movabs $0x375e,%r11
ffff800000106884:	00 00 00 
ffff800000106887:	4c 01 d8             	add    %r11,%rax
ffff80000010688a:	89 f8                	mov    %edi,%eax
ffff80000010688c:	89 f2                	mov    %esi,%edx
ffff80000010688e:	66 89 45 fc          	mov    %ax,-0x4(%rbp)
ffff800000106892:	89 d0                	mov    %edx,%eax
ffff800000106894:	88 45 f8             	mov    %al,-0x8(%rbp)
ffff800000106897:	0f b6 45 f8          	movzbl -0x8(%rbp),%eax
ffff80000010689b:	0f b7 55 fc          	movzwl -0x4(%rbp),%edx
ffff80000010689f:	ee                   	out    %al,(%dx)
ffff8000001068a0:	0f ae f0             	mfence 
ffff8000001068a3:	90                   	nop
ffff8000001068a4:	5d                   	pop    %rbp
ffff8000001068a5:	c3                   	retq   

ffff8000001068a6 <intrinit>:
ffff8000001068a6:	f3 0f 1e fa          	endbr64 
ffff8000001068aa:	55                   	push   %rbp
ffff8000001068ab:	48 89 e5             	mov    %rsp,%rbp
ffff8000001068ae:	41 57                	push   %r15
ffff8000001068b0:	53                   	push   %rbx
ffff8000001068b1:	f3 0f 1e fa          	endbr64 
ffff8000001068b5:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001068b1 <intrinit+0xb>
ffff8000001068bc:	49 bb 1f 37 00 00 00 	movabs $0x371f,%r11
ffff8000001068c3:	00 00 00 
ffff8000001068c6:	4c 01 db             	add    %r11,%rbx
ffff8000001068c9:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff8000001068d0:	ff ff ff 
ffff8000001068d3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001068d7:	48 8d 80 00 02 00 00 	lea    0x200(%rax),%rax
ffff8000001068de:	48 ba 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rdx
ffff8000001068e5:	ff ff ff 
ffff8000001068e8:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001068ec:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001068f1:	48 89 c7             	mov    %rax,%rdi
ffff8000001068f4:	49 89 df             	mov    %rbx,%r15
ffff8000001068f7:	48 b8 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rax
ffff8000001068fe:	ff ff ff 
ffff800000106901:	48 01 d8             	add    %rbx,%rax
ffff800000106904:	ff d0                	callq  *%rax
ffff800000106906:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010690d:	ff ff ff 
ffff800000106910:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106914:	48 8d 80 10 02 00 00 	lea    0x210(%rax),%rax
ffff80000010691b:	48 ba a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rdx
ffff800000106922:	ff ff ff 
ffff800000106925:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000106929:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010692e:	48 89 c7             	mov    %rax,%rdi
ffff800000106931:	49 89 df             	mov    %rbx,%r15
ffff800000106934:	48 b8 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rax
ffff80000010693b:	ff ff ff 
ffff80000010693e:	48 01 d8             	add    %rbx,%rax
ffff800000106941:	ff d0                	callq  *%rax
ffff800000106943:	48 b8 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rax
ffff80000010694a:	ff ff ff 
ffff80000010694d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106951:	48 8d 80 c0 02 00 00 	lea    0x2c0(%rax),%rax
ffff800000106958:	48 ba d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rdx
ffff80000010695f:	ff ff ff 
ffff800000106962:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000106966:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010696b:	48 89 c7             	mov    %rax,%rdi
ffff80000010696e:	49 89 df             	mov    %rbx,%r15
ffff800000106971:	48 b8 fa b4 ff ff ff 	movabs $0xffffffffffffb4fa,%rax
ffff800000106978:	ff ff ff 
ffff80000010697b:	48 01 d8             	add    %rbx,%rax
ffff80000010697e:	ff d0                	callq  *%rax
ffff800000106980:	be 11 00 00 00       	mov    $0x11,%esi
ffff800000106985:	bf 20 00 00 00       	mov    $0x20,%edi
ffff80000010698a:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106991:	ff ff ff 
ffff800000106994:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106998:	ff d0                	callq  *%rax
ffff80000010699a:	be 20 00 00 00       	mov    $0x20,%esi
ffff80000010699f:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001069a4:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff8000001069ab:	ff ff ff 
ffff8000001069ae:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069b2:	ff d0                	callq  *%rax
ffff8000001069b4:	be 04 00 00 00       	mov    $0x4,%esi
ffff8000001069b9:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001069be:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff8000001069c5:	ff ff ff 
ffff8000001069c8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069cc:	ff d0                	callq  *%rax
ffff8000001069ce:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001069d3:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001069d8:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff8000001069df:	ff ff ff 
ffff8000001069e2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001069e6:	ff d0                	callq  *%rax
ffff8000001069e8:	be 11 00 00 00       	mov    $0x11,%esi
ffff8000001069ed:	bf a0 00 00 00       	mov    $0xa0,%edi
ffff8000001069f2:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff8000001069f9:	ff ff ff 
ffff8000001069fc:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a00:	ff d0                	callq  *%rax
ffff800000106a02:	be 28 00 00 00       	mov    $0x28,%esi
ffff800000106a07:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000106a0c:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106a13:	ff ff ff 
ffff800000106a16:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a1a:	ff d0                	callq  *%rax
ffff800000106a1c:	be 02 00 00 00       	mov    $0x2,%esi
ffff800000106a21:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000106a26:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106a2d:	ff ff ff 
ffff800000106a30:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a34:	ff d0                	callq  *%rax
ffff800000106a36:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106a3b:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000106a40:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106a47:	ff ff ff 
ffff800000106a4a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a4e:	ff d0                	callq  *%rax
ffff800000106a50:	be fd 00 00 00       	mov    $0xfd,%esi
ffff800000106a55:	bf 21 00 00 00       	mov    $0x21,%edi
ffff800000106a5a:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106a61:	ff ff ff 
ffff800000106a64:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a68:	ff d0                	callq  *%rax
ffff800000106a6a:	be ff 00 00 00       	mov    $0xff,%esi
ffff800000106a6f:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000106a74:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106a7b:	ff ff ff 
ffff800000106a7e:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106a82:	ff d0                	callq  *%rax
ffff800000106a84:	fb                   	sti    
ffff800000106a85:	90                   	nop
ffff800000106a86:	5b                   	pop    %rbx
ffff800000106a87:	41 5f                	pop    %r15
ffff800000106a89:	5d                   	pop    %rbp
ffff800000106a8a:	c3                   	retq   

ffff800000106a8b <do_irq0x20>:
ffff800000106a8b:	f3 0f 1e fa          	endbr64 
ffff800000106a8f:	55                   	push   %rbp
ffff800000106a90:	48 89 e5             	mov    %rsp,%rbp
ffff800000106a93:	41 57                	push   %r15
ffff800000106a95:	53                   	push   %rbx
ffff800000106a96:	f3 0f 1e fa          	endbr64 
ffff800000106a9a:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106a96 <do_irq0x20+0xb>
ffff800000106aa1:	49 bb 3a 35 00 00 00 	movabs $0x353a,%r11
ffff800000106aa8:	00 00 00 
ffff800000106aab:	4c 01 db             	add    %r11,%rbx
ffff800000106aae:	48 b8 50 ed ff ff ff 	movabs $0xffffffffffffed50,%rax
ffff800000106ab5:	ff ff ff 
ffff800000106ab8:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106abc:	49 89 df             	mov    %rbx,%r15
ffff800000106abf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ac4:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106acb:	ff ff ff 
ffff800000106ace:	48 01 da             	add    %rbx,%rdx
ffff800000106ad1:	ff d2                	callq  *%rdx
ffff800000106ad3:	be 20 00 00 00       	mov    $0x20,%esi
ffff800000106ad8:	bf 20 00 00 00       	mov    $0x20,%edi
ffff800000106add:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106ae4:	ff ff ff 
ffff800000106ae7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106aeb:	ff d0                	callq  *%rax
ffff800000106aed:	90                   	nop
ffff800000106aee:	5b                   	pop    %rbx
ffff800000106aef:	41 5f                	pop    %r15
ffff800000106af1:	5d                   	pop    %rbp
ffff800000106af2:	c3                   	retq   

ffff800000106af3 <do_irq0x21>:
ffff800000106af3:	f3 0f 1e fa          	endbr64 
ffff800000106af7:	55                   	push   %rbp
ffff800000106af8:	48 89 e5             	mov    %rsp,%rbp
ffff800000106afb:	41 57                	push   %r15
ffff800000106afd:	53                   	push   %rbx
ffff800000106afe:	48 83 ec 10          	sub    $0x10,%rsp
ffff800000106b02:	f3 0f 1e fa          	endbr64 
ffff800000106b06:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106b02 <do_irq0x21+0xf>
ffff800000106b0d:	49 bb ce 34 00 00 00 	movabs $0x34ce,%r11
ffff800000106b14:	00 00 00 
ffff800000106b17:	4c 01 db             	add    %r11,%rbx
ffff800000106b1a:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff800000106b21:	bf 60 00 00 00       	mov    $0x60,%edi
ffff800000106b26:	48 b8 5d c8 ff ff ff 	movabs $0xffffffffffffc85d,%rax
ffff800000106b2d:	ff ff ff 
ffff800000106b30:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b34:	ff d0                	callq  *%rax
ffff800000106b36:	0f b6 c0             	movzbl %al,%eax
ffff800000106b39:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000106b3c:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000106b3f:	89 c6                	mov    %eax,%esi
ffff800000106b41:	48 b8 61 ed ff ff ff 	movabs $0xffffffffffffed61,%rax
ffff800000106b48:	ff ff ff 
ffff800000106b4b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106b4f:	49 89 df             	mov    %rbx,%r15
ffff800000106b52:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b57:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106b5e:	ff ff ff 
ffff800000106b61:	48 01 da             	add    %rbx,%rdx
ffff800000106b64:	ff d2                	callq  *%rdx
ffff800000106b66:	be 20 00 00 00       	mov    $0x20,%esi
ffff800000106b6b:	bf 20 00 00 00       	mov    $0x20,%edi
ffff800000106b70:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106b77:	ff ff ff 
ffff800000106b7a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106b7e:	ff d0                	callq  *%rax
ffff800000106b80:	90                   	nop
ffff800000106b81:	48 83 c4 10          	add    $0x10,%rsp
ffff800000106b85:	5b                   	pop    %rbx
ffff800000106b86:	41 5f                	pop    %r15
ffff800000106b88:	5d                   	pop    %rbp
ffff800000106b89:	c3                   	retq   

ffff800000106b8a <do_irq0x2c>:
ffff800000106b8a:	f3 0f 1e fa          	endbr64 
ffff800000106b8e:	55                   	push   %rbp
ffff800000106b8f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106b92:	41 57                	push   %r15
ffff800000106b94:	53                   	push   %rbx
ffff800000106b95:	f3 0f 1e fa          	endbr64 
ffff800000106b99:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106b95 <do_irq0x2c+0xb>
ffff800000106ba0:	49 bb 3b 34 00 00 00 	movabs $0x343b,%r11
ffff800000106ba7:	00 00 00 
ffff800000106baa:	4c 01 db             	add    %r11,%rbx
ffff800000106bad:	48 b8 64 ed ff ff ff 	movabs $0xffffffffffffed64,%rax
ffff800000106bb4:	ff ff ff 
ffff800000106bb7:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106bbb:	49 89 df             	mov    %rbx,%r15
ffff800000106bbe:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bc3:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106bca:	ff ff ff 
ffff800000106bcd:	48 01 da             	add    %rbx,%rdx
ffff800000106bd0:	ff d2                	callq  *%rdx
ffff800000106bd2:	be 20 00 00 00       	mov    $0x20,%esi
ffff800000106bd7:	bf a0 00 00 00       	mov    $0xa0,%edi
ffff800000106bdc:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106be3:	ff ff ff 
ffff800000106be6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106bea:	ff d0                	callq  *%rax
ffff800000106bec:	be 20 00 00 00       	mov    $0x20,%esi
ffff800000106bf1:	bf 20 00 00 00       	mov    $0x20,%edi
ffff800000106bf6:	48 b8 9a c8 ff ff ff 	movabs $0xffffffffffffc89a,%rax
ffff800000106bfd:	ff ff ff 
ffff800000106c00:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106c04:	ff d0                	callq  *%rax
ffff800000106c06:	90                   	nop
ffff800000106c07:	5b                   	pop    %rbx
ffff800000106c08:	41 5f                	pop    %r15
ffff800000106c0a:	5d                   	pop    %rbp
ffff800000106c0b:	c3                   	retq   

ffff800000106c0c <memoryinit>:
ffff800000106c0c:	f3 0f 1e fa          	endbr64 
ffff800000106c10:	55                   	push   %rbp
ffff800000106c11:	48 89 e5             	mov    %rsp,%rbp
ffff800000106c14:	41 57                	push   %r15
ffff800000106c16:	53                   	push   %rbx
ffff800000106c17:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000106c1b:	f3 0f 1e fa          	endbr64 
ffff800000106c1f:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106c1b <memoryinit+0xf>
ffff800000106c26:	49 bb b5 33 00 00 00 	movabs $0x33b5,%r11
ffff800000106c2d:	00 00 00 
ffff800000106c30:	4c 01 db             	add    %r11,%rbx
ffff800000106c33:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106c3a:	00 
ffff800000106c3b:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff800000106c42:	80 ff ff 
ffff800000106c45:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106c49:	e9 e7 00 00 00       	jmpq   ffff800000106d35 <memoryinit+0x129>
ffff800000106c4e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c52:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000106c55:	83 f8 01             	cmp    $0x1,%eax
ffff800000106c58:	0f 85 d2 00 00 00    	jne    ffff800000106d30 <memoryinit+0x124>
ffff800000106c5e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c62:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000106c66:	48 01 45 e8          	add    %rax,-0x18(%rbp)
ffff800000106c6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106c6e:	48 8b 00             	mov    (%rax),%rax
ffff800000106c71:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff800000106c78:	80 ff ff 
ffff800000106c7b:	48 01 d0             	add    %rdx,%rax
ffff800000106c7e:	48 ba c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rdx
ffff800000106c85:	ff ff ff 
ffff800000106c88:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000106c8c:	48 89 d1             	mov    %rdx,%rcx
ffff800000106c8f:	48 ba c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rdx
ffff800000106c96:	ff ff ff 
ffff800000106c99:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000106c9d:	48 39 c8             	cmp    %rcx,%rax
ffff800000106ca0:	48 0f 42 c2          	cmovb  %rdx,%rax
ffff800000106ca4:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000106ca8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106cac:	48 8b 10             	mov    (%rax),%rdx
ffff800000106caf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106cb3:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000106cb7:	48 01 c2             	add    %rax,%rdx
ffff800000106cba:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000106cc1:	80 ff ff 
ffff800000106cc4:	48 01 d0             	add    %rdx,%rax
ffff800000106cc7:	48 89 c2             	mov    %rax,%rdx
ffff800000106cca:	48 b8 ff ff 7f 00 00 	movabs $0xffff8000007fffff,%rax
ffff800000106cd1:	80 ff ff 
ffff800000106cd4:	48 39 c2             	cmp    %rax,%rdx
ffff800000106cd7:	77 21                	ja     ffff800000106cfa <memoryinit+0xee>
ffff800000106cd9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106cdd:	48 8b 10             	mov    (%rax),%rdx
ffff800000106ce0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106ce4:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000106ce8:	48 01 c2             	add    %rax,%rdx
ffff800000106ceb:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff800000106cf2:	80 ff ff 
ffff800000106cf5:	48 01 d0             	add    %rdx,%rax
ffff800000106cf8:	eb 0a                	jmp    ffff800000106d04 <memoryinit+0xf8>
ffff800000106cfa:	48 b8 00 00 80 00 00 	movabs $0xffff800000800000,%rax
ffff800000106d01:	80 ff ff 
ffff800000106d04:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000106d08:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d0c:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
ffff800000106d10:	73 1e                	jae    ffff800000106d30 <memoryinit+0x124>
ffff800000106d12:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000106d16:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d1a:	48 89 d6             	mov    %rdx,%rsi
ffff800000106d1d:	48 89 c7             	mov    %rax,%rdi
ffff800000106d20:	48 b8 0c ce ff ff ff 	movabs $0xffffffffffffce0c,%rax
ffff800000106d27:	ff ff ff 
ffff800000106d2a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106d2e:	ff d0                	callq  *%rax
ffff800000106d30:	48 83 45 e0 14       	addq   $0x14,-0x20(%rbp)
ffff800000106d35:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106d39:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000106d3c:	85 c0                	test   %eax,%eax
ffff800000106d3e:	74 10                	je     ffff800000106d50 <memoryinit+0x144>
ffff800000106d40:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106d44:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000106d47:	83 f8 04             	cmp    $0x4,%eax
ffff800000106d4a:	0f 86 fe fe ff ff    	jbe    ffff800000106c4e <memoryinit+0x42>
ffff800000106d50:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d54:	48 c1 e8 14          	shr    $0x14,%rax
ffff800000106d58:	48 89 c6             	mov    %rax,%rsi
ffff800000106d5b:	48 b8 75 ed ff ff ff 	movabs $0xffffffffffffed75,%rax
ffff800000106d62:	ff ff ff 
ffff800000106d65:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106d69:	49 89 df             	mov    %rbx,%r15
ffff800000106d6c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d71:	48 ba 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rdx
ffff800000106d78:	ff ff ff 
ffff800000106d7b:	48 01 da             	add    %rbx,%rdx
ffff800000106d7e:	ff d2                	callq  *%rdx
ffff800000106d80:	ba 00 04 00 00       	mov    $0x400,%edx
ffff800000106d85:	be 08 00 00 00       	mov    $0x8,%esi
ffff800000106d8a:	bf 02 00 00 00       	mov    $0x2,%edi
ffff800000106d8f:	49 89 df             	mov    %rbx,%r15
ffff800000106d92:	48 b8 f5 d1 ff ff ff 	movabs $0xffffffffffffd1f5,%rax
ffff800000106d99:	ff ff ff 
ffff800000106d9c:	48 01 d8             	add    %rbx,%rax
ffff800000106d9f:	ff d0                	callq  *%rax
ffff800000106da1:	0f 20 d8             	mov    %cr3,%rax
ffff800000106da4:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000106da8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000106dac:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff800000106db0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000106db4:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff800000106dbb:	80 ff ff 
ffff800000106dbe:	48 01 d0             	add    %rdx,%rax
ffff800000106dc1:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000106dc8:	0f 20 d8             	mov    %cr3,%rax
ffff800000106dcb:	0f 22 d8             	mov    %rax,%cr3
ffff800000106dce:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff800000106dd2:	90                   	nop
ffff800000106dd3:	48 83 c4 40          	add    $0x40,%rsp
ffff800000106dd7:	5b                   	pop    %rbx
ffff800000106dd8:	41 5f                	pop    %r15
ffff800000106dda:	5d                   	pop    %rbp
ffff800000106ddb:	c3                   	retq   

ffff800000106ddc <freerange>:
ffff800000106ddc:	f3 0f 1e fa          	endbr64 
ffff800000106de0:	55                   	push   %rbp
ffff800000106de1:	48 89 e5             	mov    %rsp,%rbp
ffff800000106de4:	41 57                	push   %r15
ffff800000106de6:	53                   	push   %rbx
ffff800000106de7:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106deb:	f3 0f 1e fa          	endbr64 
ffff800000106def:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106deb <freerange+0xf>
ffff800000106df6:	49 bb e5 31 00 00 00 	movabs $0x31e5,%r11
ffff800000106dfd:	00 00 00 
ffff800000106e00:	4c 01 db             	add    %r11,%rbx
ffff800000106e03:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e07:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e0b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e0f:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000106e15:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000106e1b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e1f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000106e23:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e27:	48 89 c6             	mov    %rax,%rsi
ffff800000106e2a:	48 b8 89 ed ff ff ff 	movabs $0xffffffffffffed89,%rax
ffff800000106e31:	ff ff ff 
ffff800000106e34:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106e38:	49 89 df             	mov    %rbx,%r15
ffff800000106e3b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e40:	48 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rcx
ffff800000106e47:	ff ff ff 
ffff800000106e4a:	48 01 d9             	add    %rbx,%rcx
ffff800000106e4d:	ff d1                	callq  *%rcx
ffff800000106e4f:	eb 1f                	jmp    ffff800000106e70 <freerange+0x94>
ffff800000106e51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e55:	48 89 c7             	mov    %rax,%rdi
ffff800000106e58:	48 b8 bb ce ff ff ff 	movabs $0xffffffffffffcebb,%rax
ffff800000106e5f:	ff ff ff 
ffff800000106e62:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000106e66:	ff d0                	callq  *%rax
ffff800000106e68:	48 81 45 e8 00 10 00 	addq   $0x1000,-0x18(%rbp)
ffff800000106e6f:	00 
ffff800000106e70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e74:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff800000106e7a:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
ffff800000106e7e:	73 d1                	jae    ffff800000106e51 <freerange+0x75>
ffff800000106e80:	90                   	nop
ffff800000106e81:	90                   	nop
ffff800000106e82:	48 83 c4 20          	add    $0x20,%rsp
ffff800000106e86:	5b                   	pop    %rbx
ffff800000106e87:	41 5f                	pop    %r15
ffff800000106e89:	5d                   	pop    %rbp
ffff800000106e8a:	c3                   	retq   

ffff800000106e8b <kfree>:
ffff800000106e8b:	f3 0f 1e fa          	endbr64 
ffff800000106e8f:	55                   	push   %rbp
ffff800000106e90:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e93:	41 57                	push   %r15
ffff800000106e95:	53                   	push   %rbx
ffff800000106e96:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106e9a:	f3 0f 1e fa          	endbr64 
ffff800000106e9e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106e9a <kfree+0xf>
ffff800000106ea5:	49 bb 36 31 00 00 00 	movabs $0x3136,%r11
ffff800000106eac:	00 00 00 
ffff800000106eaf:	4c 01 db             	add    %r11,%rbx
ffff800000106eb2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106eb6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106eba:	25 ff 0f 00 00       	and    $0xfff,%eax
ffff800000106ebf:	48 85 c0             	test   %rax,%rax
ffff800000106ec2:	75 14                	jne    ffff800000106ed8 <kfree+0x4d>
ffff800000106ec4:	48 b8 c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rax
ffff800000106ecb:	ff ff ff 
ffff800000106ece:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000106ed2:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
ffff800000106ed6:	73 20                	jae    ffff800000106ef8 <kfree+0x6d>
ffff800000106ed8:	48 b8 a7 ed ff ff ff 	movabs $0xffffffffffffeda7,%rax
ffff800000106edf:	ff ff ff 
ffff800000106ee2:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106ee6:	49 89 df             	mov    %rbx,%r15
ffff800000106ee9:	48 b8 be aa ff ff ff 	movabs $0xffffffffffffaabe,%rax
ffff800000106ef0:	ff ff ff 
ffff800000106ef3:	48 01 d8             	add    %rbx,%rax
ffff800000106ef6:	ff d0                	callq  *%rax
ffff800000106ef8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106efc:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000106f01:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000106f06:	48 89 c7             	mov    %rax,%rdi
ffff800000106f09:	49 89 df             	mov    %rbx,%r15
ffff800000106f0c:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff800000106f13:	ff ff ff 
ffff800000106f16:	48 01 d8             	add    %rbx,%rax
ffff800000106f19:	ff d0                	callq  *%rax
ffff800000106f1b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f1f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f23:	48 b8 28 00 00 00 00 	movabs $0x28,%rax
ffff800000106f2a:	00 00 00 
ffff800000106f2d:	48 8b 14 03          	mov    (%rbx,%rax,1),%rdx
ffff800000106f31:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f35:	48 89 10             	mov    %rdx,(%rax)
ffff800000106f38:	48 ba 28 00 00 00 00 	movabs $0x28,%rdx
ffff800000106f3f:	00 00 00 
ffff800000106f42:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f46:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000106f4a:	90                   	nop
ffff800000106f4b:	48 83 c4 20          	add    $0x20,%rsp
ffff800000106f4f:	5b                   	pop    %rbx
ffff800000106f50:	41 5f                	pop    %r15
ffff800000106f52:	5d                   	pop    %rbp
ffff800000106f53:	c3                   	retq   

ffff800000106f54 <kalloc>:
ffff800000106f54:	f3 0f 1e fa          	endbr64 
ffff800000106f58:	55                   	push   %rbp
ffff800000106f59:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f5c:	41 57                	push   %r15
ffff800000106f5e:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000106f62:	f3 0f 1e fa          	endbr64 
ffff800000106f66:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000106f62 <kalloc+0xe>
ffff800000106f6d:	49 bb 6e 30 00 00 00 	movabs $0x306e,%r11
ffff800000106f74:	00 00 00 
ffff800000106f77:	4c 01 d8             	add    %r11,%rax
ffff800000106f7a:	48 ba 28 00 00 00 00 	movabs $0x28,%rdx
ffff800000106f81:	00 00 00 
ffff800000106f84:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000106f88:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000106f8c:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000106f91:	74 15                	je     ffff800000106fa8 <kalloc+0x54>
ffff800000106f93:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000106f97:	48 8b 12             	mov    (%rdx),%rdx
ffff800000106f9a:	48 b9 28 00 00 00 00 	movabs $0x28,%rcx
ffff800000106fa1:	00 00 00 
ffff800000106fa4:	48 89 14 08          	mov    %rdx,(%rax,%rcx,1)
ffff800000106fa8:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000106fad:	74 23                	je     ffff800000106fd2 <kalloc+0x7e>
ffff800000106faf:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000106fb3:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000106fb8:	be 05 00 00 00       	mov    $0x5,%esi
ffff800000106fbd:	48 89 cf             	mov    %rcx,%rdi
ffff800000106fc0:	49 89 c7             	mov    %rax,%r15
ffff800000106fc3:	48 b9 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rcx
ffff800000106fca:	ff ff ff 
ffff800000106fcd:	48 01 c1             	add    %rax,%rcx
ffff800000106fd0:	ff d1                	callq  *%rcx
ffff800000106fd2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106fd6:	48 83 c4 18          	add    $0x18,%rsp
ffff800000106fda:	41 5f                	pop    %r15
ffff800000106fdc:	5d                   	pop    %rbp
ffff800000106fdd:	c3                   	retq   

ffff800000106fde <mfree>:
ffff800000106fde:	f3 0f 1e fa          	endbr64 
ffff800000106fe2:	55                   	push   %rbp
ffff800000106fe3:	48 89 e5             	mov    %rsp,%rbp
ffff800000106fe6:	41 57                	push   %r15
ffff800000106fe8:	53                   	push   %rbx
ffff800000106fe9:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106fed:	f3 0f 1e fa          	endbr64 
ffff800000106ff1:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106fed <mfree+0xf>
ffff800000106ff8:	49 bb e3 2f 00 00 00 	movabs $0x2fe3,%r11
ffff800000106fff:	00 00 00 
ffff800000107002:	4c 01 db             	add    %r11,%rbx
ffff800000107005:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107009:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff80000010700c:	81 7d d4 00 04 00 00 	cmpl   $0x400,-0x2c(%rbp)
ffff800000107013:	7e 1c                	jle    ffff800000107031 <mfree+0x53>
ffff800000107015:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107019:	48 89 c7             	mov    %rax,%rdi
ffff80000010701c:	48 b8 bb ce ff ff ff 	movabs $0xffffffffffffcebb,%rax
ffff800000107023:	ff ff ff 
ffff800000107026:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010702a:	ff d0                	callq  *%rax
ffff80000010702c:	e9 90 00 00 00       	jmpq   ffff8000001070c1 <mfree+0xe3>
ffff800000107031:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000107038:	ff ff ff 
ffff80000010703b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010703f:	48 8b 00             	mov    (%rax),%rax
ffff800000107042:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107046:	eb 72                	jmp    ffff8000001070ba <mfree+0xdc>
ffff800000107048:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010704c:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010704f:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff800000107052:	7e 5a                	jle    ffff8000001070ae <mfree+0xd0>
ffff800000107054:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107058:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff80000010705c:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010705f:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff800000107062:	7f 4a                	jg     ffff8000001070ae <mfree+0xd0>
ffff800000107064:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff800000107067:	48 63 d0             	movslq %eax,%rdx
ffff80000010706a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010706e:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107073:	48 89 c7             	mov    %rax,%rdi
ffff800000107076:	49 89 df             	mov    %rbx,%r15
ffff800000107079:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff800000107080:	ff ff ff 
ffff800000107083:	48 01 d8             	add    %rbx,%rax
ffff800000107086:	ff d0                	callq  *%rax
ffff800000107088:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010708c:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107090:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107094:	48 89 d6             	mov    %rdx,%rsi
ffff800000107097:	48 89 c7             	mov    %rax,%rdi
ffff80000010709a:	49 89 df             	mov    %rbx,%r15
ffff80000010709d:	48 b8 5d d8 ff ff ff 	movabs $0xffffffffffffd85d,%rax
ffff8000001070a4:	ff ff ff 
ffff8000001070a7:	48 01 d8             	add    %rbx,%rax
ffff8000001070aa:	ff d0                	callq  *%rax
ffff8000001070ac:	eb 13                	jmp    ffff8000001070c1 <mfree+0xe3>
ffff8000001070ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001070b2:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001070b6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001070ba:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001070bf:	75 87                	jne    ffff800000107048 <mfree+0x6a>
ffff8000001070c1:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001070c5:	5b                   	pop    %rbx
ffff8000001070c6:	41 5f                	pop    %r15
ffff8000001070c8:	5d                   	pop    %rbp
ffff8000001070c9:	c3                   	retq   

ffff8000001070ca <malloc>:
ffff8000001070ca:	f3 0f 1e fa          	endbr64 
ffff8000001070ce:	55                   	push   %rbp
ffff8000001070cf:	48 89 e5             	mov    %rsp,%rbp
ffff8000001070d2:	41 57                	push   %r15
ffff8000001070d4:	53                   	push   %rbx
ffff8000001070d5:	48 83 ec 30          	sub    $0x30,%rsp
ffff8000001070d9:	f3 0f 1e fa          	endbr64 
ffff8000001070dd:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001070d9 <malloc+0xf>
ffff8000001070e4:	49 bb f7 2e 00 00 00 	movabs $0x2ef7,%r11
ffff8000001070eb:	00 00 00 
ffff8000001070ee:	4c 01 db             	add    %r11,%rbx
ffff8000001070f1:	89 7d cc             	mov    %edi,-0x34(%rbp)
ffff8000001070f4:	81 7d cc 00 04 00 00 	cmpl   $0x400,-0x34(%rbp)
ffff8000001070fb:	7e 1d                	jle    ffff80000010711a <malloc+0x50>
ffff8000001070fd:	48 b8 84 cf ff ff ff 	movabs $0xffffffffffffcf84,%rax
ffff800000107104:	ff ff ff 
ffff800000107107:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010710b:	ff d0                	callq  *%rax
ffff80000010710d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107111:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107115:	e9 a2 00 00 00       	jmpq   ffff8000001071bc <malloc+0xf2>
ffff80000010711a:	48 b8 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rax
ffff800000107121:	ff ff ff 
ffff800000107124:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107128:	48 8b 00             	mov    (%rax),%rax
ffff80000010712b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010712f:	eb 7b                	jmp    ffff8000001071ac <malloc+0xe2>
ffff800000107131:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107135:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107138:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff80000010713b:	7e 63                	jle    ffff8000001071a0 <malloc+0xd6>
ffff80000010713d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107141:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107145:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107148:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff80000010714b:	7f 53                	jg     ffff8000001071a0 <malloc+0xd6>
ffff80000010714d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107151:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107155:	48 89 c7             	mov    %rax,%rdi
ffff800000107158:	49 89 df             	mov    %rbx,%r15
ffff80000010715b:	48 b8 59 d6 ff ff ff 	movabs $0xffffffffffffd659,%rax
ffff800000107162:	ff ff ff 
ffff800000107165:	48 01 d8             	add    %rbx,%rax
ffff800000107168:	ff d0                	callq  *%rax
ffff80000010716a:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010716e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107172:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107176:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107179:	48 63 d0             	movslq %eax,%rdx
ffff80000010717c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107180:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107185:	48 89 c7             	mov    %rax,%rdi
ffff800000107188:	49 89 df             	mov    %rbx,%r15
ffff80000010718b:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff800000107192:	ff ff ff 
ffff800000107195:	48 01 d8             	add    %rbx,%rax
ffff800000107198:	ff d0                	callq  *%rax
ffff80000010719a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010719e:	eb 1c                	jmp    ffff8000001071bc <malloc+0xf2>
ffff8000001071a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001071a4:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001071a8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001071ac:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001071b1:	0f 85 7a ff ff ff    	jne    ffff800000107131 <malloc+0x67>
ffff8000001071b7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001071bc:	48 83 c4 30          	add    $0x30,%rsp
ffff8000001071c0:	5b                   	pop    %rbx
ffff8000001071c1:	41 5f                	pop    %r15
ffff8000001071c3:	5d                   	pop    %rbp
ffff8000001071c4:	c3                   	retq   

ffff8000001071c5 <kmem_cache_init>:
ffff8000001071c5:	f3 0f 1e fa          	endbr64 
ffff8000001071c9:	55                   	push   %rbp
ffff8000001071ca:	48 89 e5             	mov    %rsp,%rbp
ffff8000001071cd:	53                   	push   %rbx
ffff8000001071ce:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001071d2:	f3 0f 1e fa          	endbr64 
ffff8000001071d6:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001071d2 <kmem_cache_init+0xd>
ffff8000001071dd:	49 bb fe 2d 00 00 00 	movabs $0x2dfe,%r11
ffff8000001071e4:	00 00 00 
ffff8000001071e7:	4c 01 db             	add    %r11,%rbx
ffff8000001071ea:	89 7d dc             	mov    %edi,-0x24(%rbp)
ffff8000001071ed:	89 75 d8             	mov    %esi,-0x28(%rbp)
ffff8000001071f0:	89 55 d4             	mov    %edx,-0x2c(%rbp)
ffff8000001071f3:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff8000001071f6:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff8000001071f9:	eb 47                	jmp    ffff800000107242 <kmem_cache_init+0x7d>
ffff8000001071fb:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff8000001071fe:	ba 01 00 00 00       	mov    $0x1,%edx
ffff800000107203:	89 c6                	mov    %eax,%esi
ffff800000107205:	48 b8 b0 ed ff ff ff 	movabs $0xffffffffffffedb0,%rax
ffff80000010720c:	ff ff ff 
ffff80000010720f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000107213:	48 b8 18 d3 ff ff ff 	movabs $0xffffffffffffd318,%rax
ffff80000010721a:	ff ff ff 
ffff80000010721d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107221:	ff d0                	callq  *%rax
ffff800000107223:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107227:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff80000010722c:	75 0a                	jne    ffff800000107238 <kmem_cache_init+0x73>
ffff80000010722e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000107233:	e9 a9 00 00 00       	jmpq   ffff8000001072e1 <kmem_cache_init+0x11c>
ffff800000107238:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010723b:	0f af 45 dc          	imul   -0x24(%rbp),%eax
ffff80000010723f:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000107242:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107245:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff800000107248:	7e b1                	jle    ffff8000001071fb <kmem_cache_init+0x36>
ffff80000010724a:	83 7d d8 5f          	cmpl   $0x5f,-0x28(%rbp)
ffff80000010724e:	7f 40                	jg     ffff800000107290 <kmem_cache_init+0xcb>
ffff800000107250:	83 7d d4 60          	cmpl   $0x60,-0x2c(%rbp)
ffff800000107254:	7e 3a                	jle    ffff800000107290 <kmem_cache_init+0xcb>
ffff800000107256:	ba 01 00 00 00       	mov    $0x1,%edx
ffff80000010725b:	be 60 00 00 00       	mov    $0x60,%esi
ffff800000107260:	48 b8 b0 ed ff ff ff 	movabs $0xffffffffffffedb0,%rax
ffff800000107267:	ff ff ff 
ffff80000010726a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010726e:	48 b8 18 d3 ff ff ff 	movabs $0xffffffffffffd318,%rax
ffff800000107275:	ff ff ff 
ffff800000107278:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010727c:	ff d0                	callq  *%rax
ffff80000010727e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107282:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107287:	75 07                	jne    ffff800000107290 <kmem_cache_init+0xcb>
ffff800000107289:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff80000010728e:	eb 51                	jmp    ffff8000001072e1 <kmem_cache_init+0x11c>
ffff800000107290:	81 7d d8 bf 00 00 00 	cmpl   $0xbf,-0x28(%rbp)
ffff800000107297:	7f 43                	jg     ffff8000001072dc <kmem_cache_init+0x117>
ffff800000107299:	81 7d d4 c0 00 00 00 	cmpl   $0xc0,-0x2c(%rbp)
ffff8000001072a0:	7e 3a                	jle    ffff8000001072dc <kmem_cache_init+0x117>
ffff8000001072a2:	ba 01 00 00 00       	mov    $0x1,%edx
ffff8000001072a7:	be c0 00 00 00       	mov    $0xc0,%esi
ffff8000001072ac:	48 b8 b0 ed ff ff ff 	movabs $0xffffffffffffedb0,%rax
ffff8000001072b3:	ff ff ff 
ffff8000001072b6:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001072ba:	48 b8 18 d3 ff ff ff 	movabs $0xffffffffffffd318,%rax
ffff8000001072c1:	ff ff ff 
ffff8000001072c4:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072c8:	ff d0                	callq  *%rax
ffff8000001072ca:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001072ce:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff8000001072d3:	75 07                	jne    ffff8000001072dc <kmem_cache_init+0x117>
ffff8000001072d5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff8000001072da:	eb 05                	jmp    ffff8000001072e1 <kmem_cache_init+0x11c>
ffff8000001072dc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001072e1:	48 83 c4 28          	add    $0x28,%rsp
ffff8000001072e5:	5b                   	pop    %rbx
ffff8000001072e6:	5d                   	pop    %rbp
ffff8000001072e7:	c3                   	retq   

ffff8000001072e8 <kmem_cache_create>:
ffff8000001072e8:	f3 0f 1e fa          	endbr64 
ffff8000001072ec:	55                   	push   %rbp
ffff8000001072ed:	48 89 e5             	mov    %rsp,%rbp
ffff8000001072f0:	41 57                	push   %r15
ffff8000001072f2:	53                   	push   %rbx
ffff8000001072f3:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001072f7:	f3 0f 1e fa          	endbr64 
ffff8000001072fb:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001072f7 <kmem_cache_create+0xf>
ffff800000107302:	49 bb d9 2c 00 00 00 	movabs $0x2cd9,%r11
ffff800000107309:	00 00 00 
ffff80000010730c:	4c 01 db             	add    %r11,%rbx
ffff80000010730f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107313:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000107316:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000107319:	49 89 df             	mov    %rbx,%r15
ffff80000010731c:	48 b8 84 cf ff ff ff 	movabs $0xffffffffffffcf84,%rax
ffff800000107323:	ff ff ff 
ffff800000107326:	48 01 d8             	add    %rbx,%rax
ffff800000107329:	ff d0                	callq  *%rax
ffff80000010732b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010732f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107333:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000107338:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010733d:	48 89 c7             	mov    %rax,%rdi
ffff800000107340:	49 89 df             	mov    %rbx,%r15
ffff800000107343:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff80000010734a:	ff ff ff 
ffff80000010734d:	48 01 d8             	add    %rbx,%rax
ffff800000107350:	ff d0                	callq  *%rax
ffff800000107352:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107357:	75 0a                	jne    ffff800000107363 <kmem_cache_create+0x7b>
ffff800000107359:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010735e:	e9 cf 00 00 00       	jmpq   ffff800000107432 <kmem_cache_create+0x14a>
ffff800000107363:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107367:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010736b:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff80000010736f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107373:	8b 55 d4             	mov    -0x2c(%rbp),%edx
ffff800000107376:	89 50 20             	mov    %edx,0x20(%rax)
ffff800000107379:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010737d:	8b 55 d0             	mov    -0x30(%rbp),%edx
ffff800000107380:	89 50 24             	mov    %edx,0x24(%rax)
ffff800000107383:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107387:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff80000010738e:	00 
ffff80000010738f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107393:	48 89 c7             	mov    %rax,%rdi
ffff800000107396:	48 b8 6b d4 ff ff ff 	movabs $0xffffffffffffd46b,%rax
ffff80000010739d:	ff ff ff 
ffff8000001073a0:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001073a4:	ff d0                	callq  *%rax
ffff8000001073a6:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001073ad:	00 00 00 
ffff8000001073b0:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073b4:	48 85 c0             	test   %rax,%rax
ffff8000001073b7:	75 14                	jne    ffff8000001073cd <kmem_cache_create+0xe5>
ffff8000001073b9:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff8000001073c0:	00 00 00 
ffff8000001073c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073c7:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff8000001073cb:	eb 61                	jmp    ffff80000010742e <kmem_cache_create+0x146>
ffff8000001073cd:	48 b8 30 00 00 00 00 	movabs $0x30,%rax
ffff8000001073d4:	00 00 00 
ffff8000001073d7:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001073db:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001073df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001073e3:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001073e7:	48 85 c0             	test   %rax,%rax
ffff8000001073ea:	74 16                	je     ffff800000107402 <kmem_cache_create+0x11a>
ffff8000001073ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001073f0:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001073f4:	8b 50 20             	mov    0x20(%rax),%edx
ffff8000001073f7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073fb:	8b 40 20             	mov    0x20(%rax),%eax
ffff8000001073fe:	39 c2                	cmp    %eax,%edx
ffff800000107400:	7e 1e                	jle    ffff800000107420 <kmem_cache_create+0x138>
ffff800000107402:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107406:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff80000010740a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010740e:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000107412:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107416:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff80000010741a:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff80000010741e:	eb 0e                	jmp    ffff80000010742e <kmem_cache_create+0x146>
ffff800000107420:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107424:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107428:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010742c:	eb b1                	jmp    ffff8000001073df <kmem_cache_create+0xf7>
ffff80000010742e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107432:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107436:	5b                   	pop    %rbx
ffff800000107437:	41 5f                	pop    %r15
ffff800000107439:	5d                   	pop    %rbp
ffff80000010743a:	c3                   	retq   

ffff80000010743b <slab_alloc>:
ffff80000010743b:	f3 0f 1e fa          	endbr64 
ffff80000010743f:	55                   	push   %rbp
ffff800000107440:	48 89 e5             	mov    %rsp,%rbp
ffff800000107443:	41 57                	push   %r15
ffff800000107445:	53                   	push   %rbx
ffff800000107446:	48 83 ec 40          	sub    $0x40,%rsp
ffff80000010744a:	f3 0f 1e fa          	endbr64 
ffff80000010744e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010744a <slab_alloc+0xf>
ffff800000107455:	49 bb 86 2b 00 00 00 	movabs $0x2b86,%r11
ffff80000010745c:	00 00 00 
ffff80000010745f:	4c 01 db             	add    %r11,%rbx
ffff800000107462:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
ffff800000107466:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff80000010746a:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010746d:	89 45 e0             	mov    %eax,-0x20(%rbp)
ffff800000107470:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107474:	8b 40 24             	mov    0x24(%rax),%eax
ffff800000107477:	89 45 dc             	mov    %eax,-0x24(%rbp)
ffff80000010747a:	49 89 df             	mov    %rbx,%r15
ffff80000010747d:	48 b8 84 cf ff ff ff 	movabs $0xffffffffffffcf84,%rax
ffff800000107484:	ff ff ff 
ffff800000107487:	48 01 d8             	add    %rbx,%rax
ffff80000010748a:	ff d0                	callq  *%rax
ffff80000010748c:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000107490:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107494:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000107499:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010749e:	48 89 c7             	mov    %rax,%rdi
ffff8000001074a1:	49 89 df             	mov    %rbx,%r15
ffff8000001074a4:	48 b8 5f db ff ff ff 	movabs $0xffffffffffffdb5f,%rax
ffff8000001074ab:	ff ff ff 
ffff8000001074ae:	48 01 d8             	add    %rbx,%rax
ffff8000001074b1:	ff d0                	callq  *%rax
ffff8000001074b3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001074b7:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff8000001074bb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001074bf:	48 89 10             	mov    %rdx,(%rax)
ffff8000001074c2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001074c6:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff8000001074ca:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff8000001074ce:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001074d2:	8b 40 28             	mov    0x28(%rax),%eax
ffff8000001074d5:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001074d8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff8000001074dc:	89 50 28             	mov    %edx,0x28(%rax)
ffff8000001074df:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001074e3:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff8000001074e7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001074ee:	00 
ffff8000001074ef:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%rbp)
ffff8000001074f6:	e9 9a 00 00 00       	jmpq   ffff800000107595 <slab_alloc+0x15a>
ffff8000001074fb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001074ff:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107502:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107505:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107509:	89 50 08             	mov    %edx,0x8(%rax)
ffff80000010750c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107510:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107513:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107516:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010751a:	89 50 0c             	mov    %edx,0xc(%rax)
ffff80000010751d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107521:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107525:	48 85 c0             	test   %rax,%rax
ffff800000107528:	75 2a                	jne    ffff800000107554 <slab_alloc+0x119>
ffff80000010752a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff80000010752d:	48 63 d0             	movslq %eax,%rdx
ffff800000107530:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107534:	48 01 d0             	add    %rdx,%rax
ffff800000107537:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010753b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010753f:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107546:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010754a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff80000010754e:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107552:	eb 2a                	jmp    ffff80000010757e <slab_alloc+0x143>
ffff800000107554:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000107557:	48 63 d0             	movslq %eax,%rdx
ffff80000010755a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010755e:	48 01 c2             	add    %rax,%rdx
ffff800000107561:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107565:	48 89 10             	mov    %rdx,(%rax)
ffff800000107568:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010756c:	48 8b 00             	mov    (%rax),%rax
ffff80000010756f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107573:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107577:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff80000010757e:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000107582:	74 0b                	je     ffff80000010758f <slab_alloc+0x154>
ffff800000107584:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff800000107587:	83 c0 07             	add    $0x7,%eax
ffff80000010758a:	83 e0 f8             	and    $0xfffffff8,%eax
ffff80000010758d:	eb 03                	jmp    ffff800000107592 <slab_alloc+0x157>
ffff80000010758f:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff800000107592:	01 45 e4             	add    %eax,-0x1c(%rbp)
ffff800000107595:	81 7d e4 ff 0f 00 00 	cmpl   $0xfff,-0x1c(%rbp)
ffff80000010759c:	0f 8e 59 ff ff ff    	jle    ffff8000001074fb <slab_alloc+0xc0>
ffff8000001075a2:	90                   	nop
ffff8000001075a3:	90                   	nop
ffff8000001075a4:	48 83 c4 40          	add    $0x40,%rsp
ffff8000001075a8:	5b                   	pop    %rbx
ffff8000001075a9:	41 5f                	pop    %r15
ffff8000001075ab:	5d                   	pop    %rbp
ffff8000001075ac:	c3                   	retq   

ffff8000001075ad <slab_free>:
ffff8000001075ad:	f3 0f 1e fa          	endbr64 
ffff8000001075b1:	55                   	push   %rbp
ffff8000001075b2:	48 89 e5             	mov    %rsp,%rbp
ffff8000001075b5:	41 57                	push   %r15
ffff8000001075b7:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001075bb:	f3 0f 1e fa          	endbr64 
ffff8000001075bf:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001075bb <slab_free+0xe>
ffff8000001075c6:	49 bb 15 2a 00 00 00 	movabs $0x2a15,%r11
ffff8000001075cd:	00 00 00 
ffff8000001075d0:	4c 01 d8             	add    %r11,%rax
ffff8000001075d3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001075d7:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001075db:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff8000001075df:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001075e3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001075e7:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff8000001075eb:	48 8b 0a             	mov    (%rdx),%rcx
ffff8000001075ee:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001075f2:	48 89 4a 30          	mov    %rcx,0x30(%rdx)
ffff8000001075f6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001075fa:	48 89 d7             	mov    %rdx,%rdi
ffff8000001075fd:	49 89 c7             	mov    %rax,%r15
ffff800000107600:	48 ba bb ce ff ff ff 	movabs $0xffffffffffffcebb,%rdx
ffff800000107607:	ff ff ff 
ffff80000010760a:	48 01 c2             	add    %rax,%rdx
ffff80000010760d:	ff d2                	callq  *%rdx
ffff80000010760f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107613:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107616:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107619:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010761d:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107620:	90                   	nop
ffff800000107621:	48 83 c4 28          	add    $0x28,%rsp
ffff800000107625:	41 5f                	pop    %r15
ffff800000107627:	5d                   	pop    %rbp
ffff800000107628:	c3                   	retq   

ffff800000107629 <kmem_cache_alloc>:
ffff800000107629:	f3 0f 1e fa          	endbr64 
ffff80000010762d:	55                   	push   %rbp
ffff80000010762e:	48 89 e5             	mov    %rsp,%rbp
ffff800000107631:	41 57                	push   %r15
ffff800000107633:	53                   	push   %rbx
ffff800000107634:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000107638:	f3 0f 1e fa          	endbr64 
ffff80000010763c:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107638 <kmem_cache_alloc+0xf>
ffff800000107643:	49 bb 98 29 00 00 00 	movabs $0x2998,%r11
ffff80000010764a:	00 00 00 
ffff80000010764d:	4c 01 db             	add    %r11,%rbx
ffff800000107650:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107654:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107658:	48 8b 00             	mov    (%rax),%rax
ffff80000010765b:	48 85 c0             	test   %rax,%rax
ffff80000010765e:	0f 85 19 01 00 00    	jne    ffff80000010777d <kmem_cache_alloc+0x154>
ffff800000107664:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107668:	8b 40 08             	mov    0x8(%rax),%eax
ffff80000010766b:	85 c0                	test   %eax,%eax
ffff80000010766d:	75 67                	jne    ffff8000001076d6 <kmem_cache_alloc+0xad>
ffff80000010766f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107673:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107676:	85 c0                	test   %eax,%eax
ffff800000107678:	75 17                	jne    ffff800000107691 <kmem_cache_alloc+0x68>
ffff80000010767a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010767e:	48 89 c7             	mov    %rax,%rdi
ffff800000107681:	48 b8 6b d4 ff ff ff 	movabs $0xffffffffffffd46b,%rax
ffff800000107688:	ff ff ff 
ffff80000010768b:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010768f:	ff d0                	callq  *%rax
ffff800000107691:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107695:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107699:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010769d:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001076a1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076a5:	48 8b 40 30          	mov    0x30(%rax),%rax
ffff8000001076a9:	48 8b 10             	mov    (%rax),%rdx
ffff8000001076ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076b0:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff8000001076b4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076b8:	8b 40 28             	mov    0x28(%rax),%eax
ffff8000001076bb:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001076be:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076c2:	89 50 28             	mov    %edx,0x28(%rax)
ffff8000001076c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076c9:	8b 40 08             	mov    0x8(%rax),%eax
ffff8000001076cc:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001076cf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076d3:	89 50 08             	mov    %edx,0x8(%rax)
ffff8000001076d6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076da:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001076de:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001076e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001076e6:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001076e9:	85 c0                	test   %eax,%eax
ffff8000001076eb:	0f 84 80 00 00 00    	je     ffff800000107771 <kmem_cache_alloc+0x148>
ffff8000001076f1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076f5:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001076f9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001076fd:	48 89 10             	mov    %rdx,(%rax)
ffff800000107700:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107704:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107708:	48 8b 10             	mov    (%rax),%rdx
ffff80000010770b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010770f:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107713:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107717:	8b 40 08             	mov    0x8(%rax),%eax
ffff80000010771a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010771d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107721:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107724:	eb 57                	jmp    ffff80000010777d <kmem_cache_alloc+0x154>
ffff800000107726:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010772a:	48 8b 00             	mov    (%rax),%rax
ffff80000010772d:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107730:	85 c0                	test   %eax,%eax
ffff800000107732:	7e 32                	jle    ffff800000107766 <kmem_cache_alloc+0x13d>
ffff800000107734:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107738:	48 8b 10             	mov    (%rax),%rdx
ffff80000010773b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010773f:	48 89 10             	mov    %rdx,(%rax)
ffff800000107742:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107746:	48 8b 00             	mov    (%rax),%rax
ffff800000107749:	48 8b 10             	mov    (%rax),%rdx
ffff80000010774c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107750:	48 89 10             	mov    %rdx,(%rax)
ffff800000107753:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107757:	8b 40 08             	mov    0x8(%rax),%eax
ffff80000010775a:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff80000010775d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107761:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107764:	eb 17                	jmp    ffff80000010777d <kmem_cache_alloc+0x154>
ffff800000107766:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010776a:	48 8b 00             	mov    (%rax),%rax
ffff80000010776d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107771:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107775:	48 8b 00             	mov    (%rax),%rax
ffff800000107778:	48 85 c0             	test   %rax,%rax
ffff80000010777b:	75 a9                	jne    ffff800000107726 <kmem_cache_alloc+0xfd>
ffff80000010777d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107781:	48 8b 00             	mov    (%rax),%rax
ffff800000107784:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107788:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010778c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107790:	48 8b 00             	mov    (%rax),%rax
ffff800000107793:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107796:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010779a:	48 8b 00             	mov    (%rax),%rax
ffff80000010779d:	83 ea 01             	sub    $0x1,%edx
ffff8000001077a0:	89 50 0c             	mov    %edx,0xc(%rax)
ffff8000001077a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077a7:	48 8b 00             	mov    (%rax),%rax
ffff8000001077aa:	8b 50 0c             	mov    0xc(%rax),%edx
ffff8000001077ad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077b1:	48 8b 00             	mov    (%rax),%rax
ffff8000001077b4:	83 ea 01             	sub    $0x1,%edx
ffff8000001077b7:	89 50 0c             	mov    %edx,0xc(%rax)
ffff8000001077ba:	8b 40 0c             	mov    0xc(%rax),%eax
ffff8000001077bd:	85 c0                	test   %eax,%eax
ffff8000001077bf:	75 2c                	jne    ffff8000001077ed <kmem_cache_alloc+0x1c4>
ffff8000001077c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077c5:	48 8b 00             	mov    (%rax),%rax
ffff8000001077c8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001077cc:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff8000001077d0:	48 89 10             	mov    %rdx,(%rax)
ffff8000001077d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077d7:	48 8b 10             	mov    (%rax),%rdx
ffff8000001077da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077de:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001077e2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077e6:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001077ed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077f1:	8b 50 20             	mov    0x20(%rax),%edx
ffff8000001077f4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001077f8:	48 89 c6             	mov    %rax,%rsi
ffff8000001077fb:	48 b8 b8 ed ff ff ff 	movabs $0xffffffffffffedb8,%rax
ffff800000107802:	ff ff ff 
ffff800000107805:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000107809:	49 89 df             	mov    %rbx,%r15
ffff80000010780c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107811:	48 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rcx
ffff800000107818:	ff ff ff 
ffff80000010781b:	48 01 d9             	add    %rbx,%rcx
ffff80000010781e:	ff d1                	callq  *%rcx
ffff800000107820:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107824:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107828:	5b                   	pop    %rbx
ffff800000107829:	41 5f                	pop    %r15
ffff80000010782b:	5d                   	pop    %rbp
ffff80000010782c:	c3                   	retq   

ffff80000010782d <kmem_cache_free>:
ffff80000010782d:	f3 0f 1e fa          	endbr64 
ffff800000107831:	55                   	push   %rbp
ffff800000107832:	48 89 e5             	mov    %rsp,%rbp
ffff800000107835:	41 57                	push   %r15
ffff800000107837:	53                   	push   %rbx
ffff800000107838:	48 83 ec 30          	sub    $0x30,%rsp
ffff80000010783c:	f3 0f 1e fa          	endbr64 
ffff800000107840:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010783c <kmem_cache_free+0xf>
ffff800000107847:	49 bb 94 27 00 00 00 	movabs $0x2794,%r11
ffff80000010784e:	00 00 00 
ffff800000107851:	4c 01 db             	add    %r11,%rbx
ffff800000107854:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
ffff800000107858:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
ffff80000010785c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107860:	48 8b 00             	mov    (%rax),%rax
ffff800000107863:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107867:	0f 86 c6 00 00 00    	jbe    ffff800000107933 <kmem_cache_free+0x106>
ffff80000010786d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107871:	48 8b 00             	mov    (%rax),%rax
ffff800000107874:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff80000010787a:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff80000010787e:	0f 87 af 00 00 00    	ja     ffff800000107933 <kmem_cache_free+0x106>
ffff800000107884:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107888:	48 8b 00             	mov    (%rax),%rax
ffff80000010788b:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010788f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107893:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107897:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
ffff80000010789b:	73 73                	jae    ffff800000107910 <kmem_cache_free+0xe3>
ffff80000010789d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001078a1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001078a5:	48 89 10             	mov    %rdx,(%rax)
ffff8000001078a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001078ac:	48 8b 00             	mov    (%rax),%rax
ffff8000001078af:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001078b3:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001078b7:	eb 5e                	jmp    ffff800000107917 <kmem_cache_free+0xea>
ffff8000001078b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078bd:	48 8b 00             	mov    (%rax),%rax
ffff8000001078c0:	48 85 c0             	test   %rax,%rax
ffff8000001078c3:	75 18                	jne    ffff8000001078dd <kmem_cache_free+0xb0>
ffff8000001078c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078c9:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001078cd:	48 89 10             	mov    %rdx,(%rax)
ffff8000001078d0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001078d4:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001078db:	eb 3a                	jmp    ffff800000107917 <kmem_cache_free+0xea>
ffff8000001078dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078e1:	48 8b 00             	mov    (%rax),%rax
ffff8000001078e4:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff8000001078e8:	73 1b                	jae    ffff800000107905 <kmem_cache_free+0xd8>
ffff8000001078ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078ee:	48 8b 10             	mov    (%rax),%rdx
ffff8000001078f1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001078f5:	48 89 10             	mov    %rdx,(%rax)
ffff8000001078f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078fc:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107900:	48 89 10             	mov    %rdx,(%rax)
ffff800000107903:	eb 12                	jmp    ffff800000107917 <kmem_cache_free+0xea>
ffff800000107905:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107909:	48 8b 00             	mov    (%rax),%rax
ffff80000010790c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107910:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107915:	75 a2                	jne    ffff8000001078b9 <kmem_cache_free+0x8c>
ffff800000107917:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010791b:	48 8b 00             	mov    (%rax),%rax
ffff80000010791e:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107921:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107925:	48 8b 00             	mov    (%rax),%rax
ffff800000107928:	83 c2 01             	add    $0x1,%edx
ffff80000010792b:	89 50 0c             	mov    %edx,0xc(%rax)
ffff80000010792e:	e9 bf 01 00 00       	jmpq   ffff800000107af2 <kmem_cache_free+0x2c5>
ffff800000107933:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107937:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff80000010793b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010793f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107943:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107947:	e9 98 01 00 00       	jmpq   ffff800000107ae4 <kmem_cache_free+0x2b7>
ffff80000010794c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107950:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
ffff800000107954:	0f 86 77 01 00 00    	jbe    ffff800000107ad1 <kmem_cache_free+0x2a4>
ffff80000010795a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010795e:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff800000107964:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107968:	0f 87 63 01 00 00    	ja     ffff800000107ad1 <kmem_cache_free+0x2a4>
ffff80000010796e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107972:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107976:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff80000010797a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010797e:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
ffff800000107982:	73 70                	jae    ffff8000001079f4 <kmem_cache_free+0x1c7>
ffff800000107984:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107988:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff80000010798c:	48 89 10             	mov    %rdx,(%rax)
ffff80000010798f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107993:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107997:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff80000010799b:	eb 5e                	jmp    ffff8000001079fb <kmem_cache_free+0x1ce>
ffff80000010799d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001079a1:	48 8b 00             	mov    (%rax),%rax
ffff8000001079a4:	48 85 c0             	test   %rax,%rax
ffff8000001079a7:	75 18                	jne    ffff8000001079c1 <kmem_cache_free+0x194>
ffff8000001079a9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001079ad:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001079b1:	48 89 10             	mov    %rdx,(%rax)
ffff8000001079b4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001079b8:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001079bf:	eb 3a                	jmp    ffff8000001079fb <kmem_cache_free+0x1ce>
ffff8000001079c1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001079c5:	48 8b 00             	mov    (%rax),%rax
ffff8000001079c8:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff8000001079cc:	73 1b                	jae    ffff8000001079e9 <kmem_cache_free+0x1bc>
ffff8000001079ce:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001079d2:	48 8b 10             	mov    (%rax),%rdx
ffff8000001079d5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001079d9:	48 89 10             	mov    %rdx,(%rax)
ffff8000001079dc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001079e0:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001079e4:	48 89 10             	mov    %rdx,(%rax)
ffff8000001079e7:	eb 12                	jmp    ffff8000001079fb <kmem_cache_free+0x1ce>
ffff8000001079e9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001079ed:	48 8b 00             	mov    (%rax),%rax
ffff8000001079f0:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001079f4:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
ffff8000001079f9:	75 a2                	jne    ffff80000010799d <kmem_cache_free+0x170>
ffff8000001079fb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001079ff:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107a02:	85 c0                	test   %eax,%eax
ffff800000107a04:	75 11                	jne    ffff800000107a17 <kmem_cache_free+0x1ea>
ffff800000107a06:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107a0a:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107a0d:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107a10:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107a14:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107a17:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a1b:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107a1e:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107a21:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a25:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107a28:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a2c:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107a2f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a33:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107a36:	39 c2                	cmp    %eax,%edx
ffff800000107a38:	0f 85 b3 00 00 00    	jne    ffff800000107af1 <kmem_cache_free+0x2c4>
ffff800000107a3e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107a42:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107a46:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff800000107a4a:	75 11                	jne    ffff800000107a5d <kmem_cache_free+0x230>
ffff800000107a4c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a50:	48 8b 10             	mov    (%rax),%rdx
ffff800000107a53:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107a57:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107a5b:	eb 0e                	jmp    ffff800000107a6b <kmem_cache_free+0x23e>
ffff800000107a5d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a61:	48 8b 10             	mov    (%rax),%rdx
ffff800000107a64:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107a68:	48 89 10             	mov    %rdx,(%rax)
ffff800000107a6b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107a6f:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107a72:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107a75:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107a79:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107a7c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107a80:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107a83:	83 f8 10             	cmp    $0x10,%eax
ffff800000107a86:	75 1b                	jne    ffff800000107aa3 <kmem_cache_free+0x276>
ffff800000107a88:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a8c:	48 89 c7             	mov    %rax,%rdi
ffff800000107a8f:	49 89 df             	mov    %rbx,%r15
ffff800000107a92:	48 b8 bb ce ff ff ff 	movabs $0xffffffffffffcebb,%rax
ffff800000107a99:	ff ff ff 
ffff800000107a9c:	48 01 d8             	add    %rbx,%rax
ffff800000107a9f:	ff d0                	callq  *%rax
ffff800000107aa1:	eb 4e                	jmp    ffff800000107af1 <kmem_cache_free+0x2c4>
ffff800000107aa3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107aa7:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107aab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107aaf:	48 89 10             	mov    %rdx,(%rax)
ffff800000107ab2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107ab6:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107aba:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107abe:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107ac2:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107ac5:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107ac8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107acc:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107acf:	eb 20                	jmp    ffff800000107af1 <kmem_cache_free+0x2c4>
ffff800000107ad1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ad5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000107ad9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107add:	48 8b 00             	mov    (%rax),%rax
ffff800000107ae0:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107ae4:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107ae9:	0f 85 5d fe ff ff    	jne    ffff80000010794c <kmem_cache_free+0x11f>
ffff800000107aef:	eb 01                	jmp    ffff800000107af2 <kmem_cache_free+0x2c5>
ffff800000107af1:	90                   	nop
ffff800000107af2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107af6:	8b 50 20             	mov    0x20(%rax),%edx
ffff800000107af9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107afd:	48 89 c6             	mov    %rax,%rsi
ffff800000107b00:	48 b8 e8 ed ff ff ff 	movabs $0xffffffffffffede8,%rax
ffff800000107b07:	ff ff ff 
ffff800000107b0a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000107b0e:	49 89 df             	mov    %rbx,%r15
ffff800000107b11:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107b16:	48 b9 94 a9 ff ff ff 	movabs $0xffffffffffffa994,%rcx
ffff800000107b1d:	ff ff ff 
ffff800000107b20:	48 01 d9             	add    %rbx,%rcx
ffff800000107b23:	ff d1                	callq  *%rcx
ffff800000107b25:	90                   	nop
ffff800000107b26:	48 83 c4 30          	add    $0x30,%rsp
ffff800000107b2a:	5b                   	pop    %rbx
ffff800000107b2b:	41 5f                	pop    %r15
ffff800000107b2d:	5d                   	pop    %rbp
ffff800000107b2e:	c3                   	retq   

ffff800000107b2f <memset>:
ffff800000107b2f:	f3 0f 1e fa          	endbr64 
ffff800000107b33:	55                   	push   %rbp
ffff800000107b34:	48 89 e5             	mov    %rsp,%rbp
ffff800000107b37:	f3 0f 1e fa          	endbr64 
ffff800000107b3b:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107b37 <memset+0x8>
ffff800000107b42:	49 bb 99 24 00 00 00 	movabs $0x2499,%r11
ffff800000107b49:	00 00 00 
ffff800000107b4c:	4c 01 d8             	add    %r11,%rax
ffff800000107b4f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000107b53:	89 75 e4             	mov    %esi,-0x1c(%rbp)
ffff800000107b56:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107b5a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b5e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107b62:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000107b69:	eb 16                	jmp    ffff800000107b81 <memset+0x52>
ffff800000107b6b:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000107b6e:	48 63 d0             	movslq %eax,%rdx
ffff800000107b71:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107b75:	48 01 d0             	add    %rdx,%rax
ffff800000107b78:	8b 55 e4             	mov    -0x1c(%rbp),%edx
ffff800000107b7b:	88 10                	mov    %dl,(%rax)
ffff800000107b7d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000107b81:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000107b84:	48 98                	cltq   
ffff800000107b86:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
ffff800000107b8a:	77 df                	ja     ffff800000107b6b <memset+0x3c>
ffff800000107b8c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b90:	5d                   	pop    %rbp
ffff800000107b91:	c3                   	retq   

ffff800000107b92 <memcmp>:
ffff800000107b92:	f3 0f 1e fa          	endbr64 
ffff800000107b96:	55                   	push   %rbp
ffff800000107b97:	48 89 e5             	mov    %rsp,%rbp
ffff800000107b9a:	f3 0f 1e fa          	endbr64 
ffff800000107b9e:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107b9a <memcmp+0x8>
ffff800000107ba5:	49 bb 36 24 00 00 00 	movabs $0x2436,%r11
ffff800000107bac:	00 00 00 
ffff800000107baf:	4c 01 d8             	add    %r11,%rax
ffff800000107bb2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000107bb6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000107bba:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107bbe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107bc2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107bc6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107bca:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107bce:	eb 36                	jmp    ffff800000107c06 <memcmp+0x74>
ffff800000107bd0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107bd4:	0f b6 10             	movzbl (%rax),%edx
ffff800000107bd7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107bdb:	0f b6 00             	movzbl (%rax),%eax
ffff800000107bde:	38 c2                	cmp    %al,%dl
ffff800000107be0:	74 1a                	je     ffff800000107bfc <memcmp+0x6a>
ffff800000107be2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107be6:	0f b6 00             	movzbl (%rax),%eax
ffff800000107be9:	0f be d0             	movsbl %al,%edx
ffff800000107bec:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107bf0:	0f b6 00             	movzbl (%rax),%eax
ffff800000107bf3:	0f be c0             	movsbl %al,%eax
ffff800000107bf6:	29 c2                	sub    %eax,%edx
ffff800000107bf8:	89 d0                	mov    %edx,%eax
ffff800000107bfa:	eb 20                	jmp    ffff800000107c1c <memcmp+0x8a>
ffff800000107bfc:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000107c01:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff800000107c06:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c0a:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff800000107c0e:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107c12:	48 85 c0             	test   %rax,%rax
ffff800000107c15:	75 b9                	jne    ffff800000107bd0 <memcmp+0x3e>
ffff800000107c17:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107c1c:	5d                   	pop    %rbp
ffff800000107c1d:	c3                   	retq   

ffff800000107c1e <memmove>:
ffff800000107c1e:	f3 0f 1e fa          	endbr64 
ffff800000107c22:	55                   	push   %rbp
ffff800000107c23:	48 89 e5             	mov    %rsp,%rbp
ffff800000107c26:	f3 0f 1e fa          	endbr64 
ffff800000107c2a:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107c26 <memmove+0x8>
ffff800000107c31:	49 bb aa 23 00 00 00 	movabs $0x23aa,%r11
ffff800000107c38:	00 00 00 
ffff800000107c3b:	4c 01 d8             	add    %r11,%rax
ffff800000107c3e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000107c42:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000107c46:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107c4a:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
ffff800000107c4f:	75 09                	jne    ffff800000107c5a <memmove+0x3c>
ffff800000107c51:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107c55:	e9 99 00 00 00       	jmpq   ffff800000107cf3 <memmove+0xd5>
ffff800000107c5a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107c5e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107c62:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107c66:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff800000107c6a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107c6e:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
ffff800000107c72:	73 6a                	jae    ffff800000107cde <memmove+0xc0>
ffff800000107c74:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107c78:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c7c:	48 01 d0             	add    %rdx,%rax
ffff800000107c7f:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
ffff800000107c83:	73 59                	jae    ffff800000107cde <memmove+0xc0>
ffff800000107c85:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c89:	48 01 45 f8          	add    %rax,-0x8(%rbp)
ffff800000107c8d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107c91:	48 01 45 f0          	add    %rax,-0x10(%rbp)
ffff800000107c95:	eb 17                	jmp    ffff800000107cae <memmove+0x90>
ffff800000107c97:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
ffff800000107c9c:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
ffff800000107ca1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107ca5:	0f b6 10             	movzbl (%rax),%edx
ffff800000107ca8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107cac:	88 10                	mov    %dl,(%rax)
ffff800000107cae:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107cb2:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff800000107cb6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107cba:	48 85 c0             	test   %rax,%rax
ffff800000107cbd:	75 d8                	jne    ffff800000107c97 <memmove+0x79>
ffff800000107cbf:	eb 2e                	jmp    ffff800000107cef <memmove+0xd1>
ffff800000107cc1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000107cc5:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000107cc9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107ccd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107cd1:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000107cd5:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
ffff800000107cd9:	0f b6 12             	movzbl (%rdx),%edx
ffff800000107cdc:	88 10                	mov    %dl,(%rax)
ffff800000107cde:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ce2:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff800000107ce6:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000107cea:	48 85 c0             	test   %rax,%rax
ffff800000107ced:	75 d2                	jne    ffff800000107cc1 <memmove+0xa3>
ffff800000107cef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107cf3:	5d                   	pop    %rbp
ffff800000107cf4:	c3                   	retq   

ffff800000107cf5 <memcpy>:
ffff800000107cf5:	f3 0f 1e fa          	endbr64 
ffff800000107cf9:	55                   	push   %rbp
ffff800000107cfa:	48 89 e5             	mov    %rsp,%rbp
ffff800000107cfd:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000107d01:	f3 0f 1e fa          	endbr64 
ffff800000107d05:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107d01 <memcpy+0xc>
ffff800000107d0c:	49 bb cf 22 00 00 00 	movabs $0x22cf,%r11
ffff800000107d13:	00 00 00 
ffff800000107d16:	4c 01 d8             	add    %r11,%rax
ffff800000107d19:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000107d1d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000107d21:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000107d25:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107d29:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
ffff800000107d2d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff800000107d31:	48 89 cf             	mov    %rcx,%rdi
ffff800000107d34:	48 b9 4e dc ff ff ff 	movabs $0xffffffffffffdc4e,%rcx
ffff800000107d3b:	ff ff ff 
ffff800000107d3e:	48 8d 04 08          	lea    (%rax,%rcx,1),%rax
ffff800000107d42:	ff d0                	callq  *%rax
ffff800000107d44:	c9                   	leaveq 
ffff800000107d45:	c3                   	retq   

ffff800000107d46 <strncmp>:
ffff800000107d46:	f3 0f 1e fa          	endbr64 
ffff800000107d4a:	55                   	push   %rbp
ffff800000107d4b:	48 89 e5             	mov    %rsp,%rbp
ffff800000107d4e:	f3 0f 1e fa          	endbr64 
ffff800000107d52:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107d4e <strncmp+0x8>
ffff800000107d59:	49 bb 82 22 00 00 00 	movabs $0x2282,%r11
ffff800000107d60:	00 00 00 
ffff800000107d63:	4c 01 d8             	add    %r11,%rax
ffff800000107d66:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000107d6a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff800000107d6e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000107d72:	eb 0f                	jmp    ffff800000107d83 <strncmp+0x3d>
ffff800000107d74:	48 83 6d e8 01       	subq   $0x1,-0x18(%rbp)
ffff800000107d79:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff800000107d7e:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff800000107d83:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107d88:	74 1d                	je     ffff800000107da7 <strncmp+0x61>
ffff800000107d8a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107d8e:	0f b6 00             	movzbl (%rax),%eax
ffff800000107d91:	84 c0                	test   %al,%al
ffff800000107d93:	74 12                	je     ffff800000107da7 <strncmp+0x61>
ffff800000107d95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107d99:	0f b6 10             	movzbl (%rax),%edx
ffff800000107d9c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107da0:	0f b6 00             	movzbl (%rax),%eax
ffff800000107da3:	38 c2                	cmp    %al,%dl
ffff800000107da5:	74 cd                	je     ffff800000107d74 <strncmp+0x2e>
ffff800000107da7:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000107dac:	75 07                	jne    ffff800000107db5 <strncmp+0x6f>
ffff800000107dae:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107db3:	eb 18                	jmp    ffff800000107dcd <strncmp+0x87>
ffff800000107db5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107db9:	0f b6 00             	movzbl (%rax),%eax
ffff800000107dbc:	0f be d0             	movsbl %al,%edx
ffff800000107dbf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000107dc3:	0f b6 00             	movzbl (%rax),%eax
ffff800000107dc6:	0f be c0             	movsbl %al,%eax
ffff800000107dc9:	29 c2                	sub    %eax,%edx
ffff800000107dcb:	89 d0                	mov    %edx,%eax
ffff800000107dcd:	5d                   	pop    %rbp
ffff800000107dce:	c3                   	retq   

ffff800000107dcf <strncpy>:
ffff800000107dcf:	f3 0f 1e fa          	endbr64 
ffff800000107dd3:	55                   	push   %rbp
ffff800000107dd4:	48 89 e5             	mov    %rsp,%rbp
ffff800000107dd7:	f3 0f 1e fa          	endbr64 
ffff800000107ddb:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107dd7 <strncpy+0x8>
ffff800000107de2:	49 bb f9 21 00 00 00 	movabs $0x21f9,%r11
ffff800000107de9:	00 00 00 
ffff800000107dec:	4c 01 d8             	add    %r11,%rax
ffff800000107def:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000107df3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000107df7:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000107dfa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107dfe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107e02:	90                   	nop
ffff800000107e03:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000107e06:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107e09:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000107e0c:	85 c0                	test   %eax,%eax
ffff800000107e0e:	7e 35                	jle    ffff800000107e45 <strncpy+0x76>
ffff800000107e10:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107e14:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000107e18:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107e1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e20:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000107e24:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000107e28:	0f b6 12             	movzbl (%rdx),%edx
ffff800000107e2b:	88 10                	mov    %dl,(%rax)
ffff800000107e2d:	0f b6 00             	movzbl (%rax),%eax
ffff800000107e30:	84 c0                	test   %al,%al
ffff800000107e32:	75 cf                	jne    ffff800000107e03 <strncpy+0x34>
ffff800000107e34:	eb 0f                	jmp    ffff800000107e45 <strncpy+0x76>
ffff800000107e36:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e3a:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000107e3e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000107e42:	c6 00 00             	movb   $0x0,(%rax)
ffff800000107e45:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000107e48:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107e4b:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000107e4e:	85 c0                	test   %eax,%eax
ffff800000107e50:	7f e4                	jg     ffff800000107e36 <strncpy+0x67>
ffff800000107e52:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107e56:	5d                   	pop    %rbp
ffff800000107e57:	c3                   	retq   

ffff800000107e58 <safestrcpy>:
ffff800000107e58:	f3 0f 1e fa          	endbr64 
ffff800000107e5c:	55                   	push   %rbp
ffff800000107e5d:	48 89 e5             	mov    %rsp,%rbp
ffff800000107e60:	f3 0f 1e fa          	endbr64 
ffff800000107e64:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107e60 <safestrcpy+0x8>
ffff800000107e6b:	49 bb 70 21 00 00 00 	movabs $0x2170,%r11
ffff800000107e72:	00 00 00 
ffff800000107e75:	4c 01 d8             	add    %r11,%rax
ffff800000107e78:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000107e7c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000107e80:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000107e83:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e87:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000107e8b:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000107e8f:	7f 06                	jg     ffff800000107e97 <safestrcpy+0x3f>
ffff800000107e91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107e95:	eb 39                	jmp    ffff800000107ed0 <safestrcpy+0x78>
ffff800000107e97:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
ffff800000107e9b:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000107e9f:	7e 24                	jle    ffff800000107ec5 <safestrcpy+0x6d>
ffff800000107ea1:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107ea5:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000107ea9:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107ead:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107eb1:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000107eb5:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000107eb9:	0f b6 12             	movzbl (%rdx),%edx
ffff800000107ebc:	88 10                	mov    %dl,(%rax)
ffff800000107ebe:	0f b6 00             	movzbl (%rax),%eax
ffff800000107ec1:	84 c0                	test   %al,%al
ffff800000107ec3:	75 d2                	jne    ffff800000107e97 <safestrcpy+0x3f>
ffff800000107ec5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107ec9:	c6 00 00             	movb   $0x0,(%rax)
ffff800000107ecc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000107ed0:	5d                   	pop    %rbp
ffff800000107ed1:	c3                   	retq   

ffff800000107ed2 <strlen>:
ffff800000107ed2:	f3 0f 1e fa          	endbr64 
ffff800000107ed6:	55                   	push   %rbp
ffff800000107ed7:	48 89 e5             	mov    %rsp,%rbp
ffff800000107eda:	f3 0f 1e fa          	endbr64 
ffff800000107ede:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107eda <strlen+0x8>
ffff800000107ee5:	49 bb f6 20 00 00 00 	movabs $0x20f6,%r11
ffff800000107eec:	00 00 00 
ffff800000107eef:	4c 01 d8             	add    %r11,%rax
ffff800000107ef2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000107ef6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000107efd:	eb 04                	jmp    ffff800000107f03 <strlen+0x31>
ffff800000107eff:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000107f03:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000107f06:	48 63 d0             	movslq %eax,%rdx
ffff800000107f09:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107f0d:	48 01 d0             	add    %rdx,%rax
ffff800000107f10:	0f b6 00             	movzbl (%rax),%eax
ffff800000107f13:	84 c0                	test   %al,%al
ffff800000107f15:	75 e8                	jne    ffff800000107eff <strlen+0x2d>
ffff800000107f17:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000107f1a:	5d                   	pop    %rbp
ffff800000107f1b:	c3                   	retq   

Disassembly of section .eh_frame:

ffff800000107f20 <.eh_frame>:
ffff800000107f20:	14 00                	adc    $0x0,%al
ffff800000107f22:	00 00                	add    %al,(%rax)
ffff800000107f24:	00 00                	add    %al,(%rax)
ffff800000107f26:	00 00                	add    %al,(%rax)
ffff800000107f28:	01 7a 52             	add    %edi,0x52(%rdx)
ffff800000107f2b:	00 01                	add    %al,(%rcx)
ffff800000107f2d:	78 10                	js     ffff800000107f3f <_etext+0x23>
ffff800000107f2f:	01 1b                	add    %ebx,(%rbx)
ffff800000107f31:	0c 07                	or     $0x7,%al
ffff800000107f33:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
ffff800000107f39:	00 00                	add    %al,(%rax)
ffff800000107f3b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107f3e:	00 00                	add    %al,(%rax)
ffff800000107f40:	3f                   	(bad)  
ffff800000107f41:	c3                   	retq   
ffff800000107f42:	ff                   	(bad)  
ffff800000107f43:	ff 8b 00 00 00 00    	decl   0x0(%rbx)
ffff800000107f49:	45 0e                	rex.RB (bad) 
ffff800000107f4b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107f51:	43 8f 03             	rex.XB popq (%r11)
ffff800000107f54:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000107f58:	1c 00                	sbb    $0x0,%al
ffff800000107f5a:	00 00                	add    %al,(%rax)
ffff800000107f5c:	3c 00                	cmp    $0x0,%al
ffff800000107f5e:	00 00                	add    %al,(%rax)
ffff800000107f60:	aa                   	stos   %al,%es:(%rdi)
ffff800000107f61:	c3                   	retq   
ffff800000107f62:	ff                   	(bad)  
ffff800000107f63:	ff 0a                	decl   (%rdx)
ffff800000107f65:	01 00                	add    %eax,(%rax)
ffff800000107f67:	00 00                	add    %al,(%rax)
ffff800000107f69:	45 0e                	rex.RB (bad) 
ffff800000107f6b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107f71:	03 01                	add    (%rcx),%eax
ffff800000107f73:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107f76:	08 00                	or     %al,(%rax)
ffff800000107f78:	20 00                	and    %al,(%rax)
ffff800000107f7a:	00 00                	add    %al,(%rax)
ffff800000107f7c:	5c                   	pop    %rsp
ffff800000107f7d:	00 00                	add    %al,(%rax)
ffff800000107f7f:	00 94 c4 ff ff 50 05 	add    %dl,0x550ffff(%rsp,%rax,8)
ffff800000107f86:	00 00                	add    %al,(%rax)
ffff800000107f88:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107f8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107f91:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000107f95:	42 05 0c 07 08 00    	rex.X add $0x8070c,%eax
ffff800000107f9b:	00 20                	add    %ah,(%rax)
ffff800000107f9d:	00 00                	add    %al,(%rax)
ffff800000107f9f:	00 80 00 00 00 c0    	add    %al,-0x40000000(%rax)
ffff800000107fa5:	c9                   	leaveq 
ffff800000107fa6:	ff                   	(bad)  
ffff800000107fa7:	ff 2a                	ljmp   *(%rdx)
ffff800000107fa9:	01 00                	add    %eax,(%rax)
ffff800000107fab:	00 00                	add    %al,(%rax)
ffff800000107fad:	45 0e                	rex.RB (bad) 
ffff800000107faf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107fb5:	4a 8f 03             	rex.WX popq (%rbx)
ffff800000107fb8:	83 04 03 17          	addl   $0x17,(%rbx,%rax,1)
ffff800000107fbc:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107fbf:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff800000107fc2:	00 00                	add    %al,(%rax)
ffff800000107fc4:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff800000107fc5:	00 00                	add    %al,(%rax)
ffff800000107fc7:	00 c6                	add    %al,%dh
ffff800000107fc9:	ca ff ff             	lret   $0xffff
ffff800000107fcc:	8d 00                	lea    (%rax),%eax
ffff800000107fce:	00 00                	add    %al,(%rax)
ffff800000107fd0:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000107fd3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107fd9:	45 83 03 00          	rex.RB addl $0x0,(%r11)
ffff800000107fdd:	00 00                	add    %al,(%rax)
ffff800000107fdf:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000107fe2:	00 00                	add    %al,(%rax)
ffff800000107fe4:	c4                   	(bad)  
ffff800000107fe5:	00 00                	add    %al,(%rax)
ffff800000107fe7:	00 33                	add    %dh,(%rbx)
ffff800000107fe9:	cb                   	lret   
ffff800000107fea:	ff                   	(bad)  
ffff800000107feb:	ff cb                	dec    %ebx
ffff800000107fed:	01 00                	add    %eax,(%rax)
ffff800000107fef:	00 00                	add    %al,(%rax)
ffff800000107ff1:	45 0e                	rex.RB (bad) 
ffff800000107ff3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000107ff9:	03 c2                	add    %edx,%eax
ffff800000107ffb:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000107ffe:	08 00                	or     %al,(%rax)
ffff800000108000:	1c 00                	sbb    $0x0,%al
ffff800000108002:	00 00                	add    %al,(%rax)
ffff800000108004:	e4 00                	in     $0x0,%al
ffff800000108006:	00 00                	add    %al,(%rax)
ffff800000108008:	de cc                	fmulp  %st,%st(4)
ffff80000010800a:	ff                   	(bad)  
ffff80000010800b:	ff 34 03             	pushq  (%rbx,%rax,1)
ffff80000010800e:	00 00                	add    %al,(%rax)
ffff800000108010:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108013:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108019:	03 2b                	add    (%rbx),%ebp
ffff80000010801b:	03 0c 07             	add    (%rdi,%rax,1),%ecx
ffff80000010801e:	08 00                	or     %al,(%rax)
ffff800000108020:	20 00                	and    %al,(%rax)
ffff800000108022:	00 00                	add    %al,(%rax)
ffff800000108024:	04 01                	add    $0x1,%al
ffff800000108026:	00 00                	add    %al,(%rax)
ffff800000108028:	f2 cf                	repnz iret 
ffff80000010802a:	ff                   	(bad)  
ffff80000010802b:	ff b0 04 00 00 00    	pushq  0x4(%rax)
ffff800000108031:	45 0e                	rex.RB (bad) 
ffff800000108033:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108039:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff80000010803d:	a2 04 0c 07 08 00 00 	movabs %al,0x1c000008070c04
ffff800000108044:	1c 00 
ffff800000108046:	00 00                	add    %al,(%rax)
ffff800000108048:	28 01                	sub    %al,(%rcx)
ffff80000010804a:	00 00                	add    %al,(%rax)
ffff80000010804c:	7e d4                	jle    ffff800000108022 <_etext+0x106>
ffff80000010804e:	ff                   	(bad)  
ffff80000010804f:	ff d7                	callq  *%rdi
ffff800000108051:	00 00                	add    %al,(%rax)
ffff800000108053:	00 00                	add    %al,(%rax)
ffff800000108055:	45 0e                	rex.RB (bad) 
ffff800000108057:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010805d:	02 ce                	add    %dh,%cl
ffff80000010805f:	0c 07                	or     $0x7,%al
ffff800000108061:	08 00                	or     %al,(%rax)
ffff800000108063:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108066:	00 00                	add    %al,(%rax)
ffff800000108068:	48 01 00             	add    %rax,(%rax)
ffff80000010806b:	00 35 d5 ff ff d9    	add    %dh,-0x2600002b(%rip)        # ffff7fffda108046 <OLDSS+0xffff7fffda107f8e>
ffff800000108071:	00 00                	add    %al,(%rax)
ffff800000108073:	00 00                	add    %al,(%rax)
ffff800000108075:	45 0e                	rex.RB (bad) 
ffff800000108077:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010807d:	02 d0                	add    %al,%dl
ffff80000010807f:	0c 07                	or     $0x7,%al
ffff800000108081:	08 00                	or     %al,(%rax)
ffff800000108083:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108086:	00 00                	add    %al,(%rax)
ffff800000108088:	68 01 00 00 ee       	pushq  $0xffffffffee000001
ffff80000010808d:	d5                   	(bad)  
ffff80000010808e:	ff                   	(bad)  
ffff80000010808f:	ff                   	(bad)  
ffff800000108090:	dc 00                	faddl  (%rax)
ffff800000108092:	00 00                	add    %al,(%rax)
ffff800000108094:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108097:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010809d:	02 d3                	add    %bl,%dl
ffff80000010809f:	0c 07                	or     $0x7,%al
ffff8000001080a1:	08 00                	or     %al,(%rax)
ffff8000001080a3:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001080a6:	00 00                	add    %al,(%rax)
ffff8000001080a8:	88 01                	mov    %al,(%rcx)
ffff8000001080aa:	00 00                	add    %al,(%rax)
ffff8000001080ac:	aa                   	stos   %al,%es:(%rdi)
ffff8000001080ad:	d6                   	(bad)  
ffff8000001080ae:	ff                   	(bad)  
ffff8000001080af:	ff                   	(bad)  
ffff8000001080b0:	df 00                	filds  (%rax)
ffff8000001080b2:	00 00                	add    %al,(%rax)
ffff8000001080b4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001080b7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001080bd:	02 d6                	add    %dh,%dl
ffff8000001080bf:	0c 07                	or     $0x7,%al
ffff8000001080c1:	08 00                	or     %al,(%rax)
ffff8000001080c3:	00 18                	add    %bl,(%rax)
ffff8000001080c5:	00 00                	add    %al,(%rax)
ffff8000001080c7:	00 a8 01 00 00 69    	add    %ch,0x69000001(%rax)
ffff8000001080cd:	d7                   	xlat   %ds:(%rbx)
ffff8000001080ce:	ff                   	(bad)  
ffff8000001080cf:	ff                   	(bad)  
ffff8000001080d0:	7e 00                	jle    ffff8000001080d2 <_etext+0x1b6>
ffff8000001080d2:	00 00                	add    %al,(%rax)
ffff8000001080d4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001080d7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001080dd:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001080e0:	18 00                	sbb    %al,(%rax)
ffff8000001080e2:	00 00                	add    %al,(%rax)
ffff8000001080e4:	c4 01 00 00          	(bad)
ffff8000001080e8:	cb                   	lret   
ffff8000001080e9:	d7                   	xlat   %ds:(%rbx)
ffff8000001080ea:	ff                   	(bad)  
ffff8000001080eb:	ff                   	(bad)  
ffff8000001080ec:	7e 00                	jle    ffff8000001080ee <_etext+0x1d2>
ffff8000001080ee:	00 00                	add    %al,(%rax)
ffff8000001080f0:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001080f3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001080f9:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001080fc:	18 00                	sbb    %al,(%rax)
ffff8000001080fe:	00 00                	add    %al,(%rax)
ffff800000108100:	e0 01                	loopne ffff800000108103 <_etext+0x1e7>
ffff800000108102:	00 00                	add    %al,(%rax)
ffff800000108104:	2d d8 ff ff 7e       	sub    $0x7effffd8,%eax
ffff800000108109:	00 00                	add    %al,(%rax)
ffff80000010810b:	00 00                	add    %al,(%rax)
ffff80000010810d:	45 0e                	rex.RB (bad) 
ffff80000010810f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108115:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108118:	18 00                	sbb    %al,(%rax)
ffff80000010811a:	00 00                	add    %al,(%rax)
ffff80000010811c:	fc                   	cld    
ffff80000010811d:	01 00                	add    %eax,(%rax)
ffff80000010811f:	00 8f d8 ff ff 7e    	add    %cl,0x7effffd8(%rdi)
ffff800000108125:	00 00                	add    %al,(%rax)
ffff800000108127:	00 00                	add    %al,(%rax)
ffff800000108129:	45 0e                	rex.RB (bad) 
ffff80000010812b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108131:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108134:	18 00                	sbb    %al,(%rax)
ffff800000108136:	00 00                	add    %al,(%rax)
ffff800000108138:	18 02                	sbb    %al,(%rdx)
ffff80000010813a:	00 00                	add    %al,(%rax)
ffff80000010813c:	f1                   	icebp  
ffff80000010813d:	d8 ff                	fdivr  %st(7),%st
ffff80000010813f:	ff                   	(bad)  
ffff800000108140:	7e 00                	jle    ffff800000108142 <_etext+0x226>
ffff800000108142:	00 00                	add    %al,(%rax)
ffff800000108144:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108147:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010814d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108150:	18 00                	sbb    %al,(%rax)
ffff800000108152:	00 00                	add    %al,(%rax)
ffff800000108154:	34 02                	xor    $0x2,%al
ffff800000108156:	00 00                	add    %al,(%rax)
ffff800000108158:	53                   	push   %rbx
ffff800000108159:	d9 ff                	fcos   
ffff80000010815b:	ff                   	(bad)  
ffff80000010815c:	7e 00                	jle    ffff80000010815e <_etext+0x242>
ffff80000010815e:	00 00                	add    %al,(%rax)
ffff800000108160:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108163:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108169:	46 8f 03             	rex.RX popq (%rbx)
ffff80000010816c:	18 00                	sbb    %al,(%rax)
ffff80000010816e:	00 00                	add    %al,(%rax)
ffff800000108170:	50                   	push   %rax
ffff800000108171:	02 00                	add    (%rax),%al
ffff800000108173:	00 b5 d9 ff ff 7e    	add    %dh,0x7effffd9(%rbp)
ffff800000108179:	00 00                	add    %al,(%rax)
ffff80000010817b:	00 00                	add    %al,(%rax)
ffff80000010817d:	45 0e                	rex.RB (bad) 
ffff80000010817f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108185:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108188:	18 00                	sbb    %al,(%rax)
ffff80000010818a:	00 00                	add    %al,(%rax)
ffff80000010818c:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010818d:	02 00                	add    (%rax),%al
ffff80000010818f:	00 17                	add    %dl,(%rdi)
ffff800000108191:	da ff                	(bad)  
ffff800000108193:	ff                   	(bad)  
ffff800000108194:	7e 00                	jle    ffff800000108196 <_etext+0x27a>
ffff800000108196:	00 00                	add    %al,(%rax)
ffff800000108198:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010819b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001081a1:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001081a4:	18 00                	sbb    %al,(%rax)
ffff8000001081a6:	00 00                	add    %al,(%rax)
ffff8000001081a8:	88 02                	mov    %al,(%rdx)
ffff8000001081aa:	00 00                	add    %al,(%rax)
ffff8000001081ac:	79 da                	jns    ffff800000108188 <_etext+0x26c>
ffff8000001081ae:	ff                   	(bad)  
ffff8000001081af:	ff                   	(bad)  
ffff8000001081b0:	7e 00                	jle    ffff8000001081b2 <_etext+0x296>
ffff8000001081b2:	00 00                	add    %al,(%rax)
ffff8000001081b4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001081b7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001081bd:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001081c0:	18 00                	sbb    %al,(%rax)
ffff8000001081c2:	00 00                	add    %al,(%rax)
ffff8000001081c4:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff8000001081c5:	02 00                	add    (%rax),%al
ffff8000001081c7:	00 db                	add    %bl,%bl
ffff8000001081c9:	da ff                	(bad)  
ffff8000001081cb:	ff                   	(bad)  
ffff8000001081cc:	7e 00                	jle    ffff8000001081ce <_etext+0x2b2>
ffff8000001081ce:	00 00                	add    %al,(%rax)
ffff8000001081d0:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001081d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001081d9:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001081dc:	1c 00                	sbb    $0x0,%al
ffff8000001081de:	00 00                	add    %al,(%rax)
ffff8000001081e0:	c0 02 00             	rolb   $0x0,(%rdx)
ffff8000001081e3:	00 3d db ff ff 9d    	add    %bh,-0x62000025(%rip)        # ffff7fff9e1081c4 <OLDSS+0xffff7fff9e10810c>
ffff8000001081e9:	01 00                	add    %eax,(%rax)
ffff8000001081eb:	00 00                	add    %al,(%rax)
ffff8000001081ed:	45 0e                	rex.RB (bad) 
ffff8000001081ef:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001081f5:	47 8f 03             	rex.RXB popq (%r11)
ffff8000001081f8:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff8000001081fc:	1c 00                	sbb    $0x0,%al
ffff8000001081fe:	00 00                	add    %al,(%rax)
ffff800000108200:	e0 02                	loopne ffff800000108204 <_etext+0x2e8>
ffff800000108202:	00 00                	add    %al,(%rax)
ffff800000108204:	ba dc ff ff 9d       	mov    $0x9dffffdc,%edx
ffff800000108209:	01 00                	add    %eax,(%rax)
ffff80000010820b:	00 00                	add    %al,(%rax)
ffff80000010820d:	45 0e                	rex.RB (bad) 
ffff80000010820f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108215:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108218:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff80000010821c:	1c 00                	sbb    $0x0,%al
ffff80000010821e:	00 00                	add    %al,(%rax)
ffff800000108220:	00 03                	add    %al,(%rbx)
ffff800000108222:	00 00                	add    %al,(%rax)
ffff800000108224:	37                   	(bad)  
ffff800000108225:	de ff                	fdivrp %st,%st(7)
ffff800000108227:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff80000010822d:	45 0e                	rex.RB (bad) 
ffff80000010822f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108235:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108238:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff80000010823c:	1c 00                	sbb    $0x0,%al
ffff80000010823e:	00 00                	add    %al,(%rax)
ffff800000108240:	20 03                	and    %al,(%rbx)
ffff800000108242:	00 00                	add    %al,(%rax)
ffff800000108244:	b4 df                	mov    $0xdf,%ah
ffff800000108246:	ff                   	(bad)  
ffff800000108247:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff80000010824d:	45 0e                	rex.RB (bad) 
ffff80000010824f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108255:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108258:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff80000010825c:	1c 00                	sbb    $0x0,%al
ffff80000010825e:	00 00                	add    %al,(%rax)
ffff800000108260:	40 03 00             	rex add (%rax),%eax
ffff800000108263:	00 31                	add    %dh,(%rcx)
ffff800000108265:	e1 ff                	loope  ffff800000108266 <_etext+0x34a>
ffff800000108267:	ff 22                	jmpq   *(%rdx)
ffff800000108269:	02 00                	add    (%rax),%al
ffff80000010826b:	00 00                	add    %al,(%rax)
ffff80000010826d:	45 0e                	rex.RB (bad) 
ffff80000010826f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108275:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108278:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff80000010827c:	18 00                	sbb    %al,(%rax)
ffff80000010827e:	00 00                	add    %al,(%rax)
ffff800000108280:	60                   	(bad)  
ffff800000108281:	03 00                	add    (%rax),%eax
ffff800000108283:	00 33                	add    %dh,(%rbx)
ffff800000108285:	e3 ff                	jrcxz  ffff800000108286 <_etext+0x36a>
ffff800000108287:	ff                   	(bad)  
ffff800000108288:	7e 00                	jle    ffff80000010828a <_etext+0x36e>
ffff80000010828a:	00 00                	add    %al,(%rax)
ffff80000010828c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010828f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108295:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108298:	18 00                	sbb    %al,(%rax)
ffff80000010829a:	00 00                	add    %al,(%rax)
ffff80000010829c:	7c 03                	jl     ffff8000001082a1 <_etext+0x385>
ffff80000010829e:	00 00                	add    %al,(%rax)
ffff8000001082a0:	95                   	xchg   %eax,%ebp
ffff8000001082a1:	e3 ff                	jrcxz  ffff8000001082a2 <_etext+0x386>
ffff8000001082a3:	ff                   	(bad)  
ffff8000001082a4:	7e 00                	jle    ffff8000001082a6 <_etext+0x38a>
ffff8000001082a6:	00 00                	add    %al,(%rax)
ffff8000001082a8:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001082ab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001082b1:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001082b4:	18 00                	sbb    %al,(%rax)
ffff8000001082b6:	00 00                	add    %al,(%rax)
ffff8000001082b8:	98                   	cwtl   
ffff8000001082b9:	03 00                	add    (%rax),%eax
ffff8000001082bb:	00 f7                	add    %dh,%bh
ffff8000001082bd:	e3 ff                	jrcxz  ffff8000001082be <_etext+0x3a2>
ffff8000001082bf:	ff                   	(bad)  
ffff8000001082c0:	7e 00                	jle    ffff8000001082c2 <_etext+0x3a6>
ffff8000001082c2:	00 00                	add    %al,(%rax)
ffff8000001082c4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001082c7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001082cd:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001082d0:	18 00                	sbb    %al,(%rax)
ffff8000001082d2:	00 00                	add    %al,(%rax)
ffff8000001082d4:	b4 03                	mov    $0x3,%ah
ffff8000001082d6:	00 00                	add    %al,(%rax)
ffff8000001082d8:	59                   	pop    %rcx
ffff8000001082d9:	e4 ff                	in     $0xff,%al
ffff8000001082db:	ff                   	(bad)  
ffff8000001082dc:	7e 00                	jle    ffff8000001082de <_etext+0x3c2>
ffff8000001082de:	00 00                	add    %al,(%rax)
ffff8000001082e0:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001082e3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001082e9:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001082ec:	18 00                	sbb    %al,(%rax)
ffff8000001082ee:	00 00                	add    %al,(%rax)
ffff8000001082f0:	d0 03                	rolb   (%rbx)
ffff8000001082f2:	00 00                	add    %al,(%rax)
ffff8000001082f4:	bb e4 ff ff 7e       	mov    $0x7effffe4,%ebx
ffff8000001082f9:	00 00                	add    %al,(%rax)
ffff8000001082fb:	00 00                	add    %al,(%rax)
ffff8000001082fd:	45 0e                	rex.RB (bad) 
ffff8000001082ff:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108305:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108308:	1c 00                	sbb    $0x0,%al
ffff80000010830a:	00 00                	add    %al,(%rax)
ffff80000010830c:	ec                   	in     (%dx),%al
ffff80000010830d:	03 00                	add    (%rax),%eax
ffff80000010830f:	00 1d e5 ff ff 3d    	add    %bl,0x3dffffe5(%rip)        # ffff80003e1082fa <_end+0x3dffe2f2>
ffff800000108315:	00 00                	add    %al,(%rax)
ffff800000108317:	00 00                	add    %al,(%rax)
ffff800000108319:	45 0e                	rex.RB (bad) 
ffff80000010831b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108321:	74 0c                	je     ffff80000010832f <_etext+0x413>
ffff800000108323:	07                   	(bad)  
ffff800000108324:	08 00                	or     %al,(%rax)
ffff800000108326:	00 00                	add    %al,(%rax)
ffff800000108328:	1c 00                	sbb    $0x0,%al
ffff80000010832a:	00 00                	add    %al,(%rax)
ffff80000010832c:	0c 04                	or     $0x4,%al
ffff80000010832e:	00 00                	add    %al,(%rax)
ffff800000108330:	3a e5                	cmp    %ch,%ah
ffff800000108332:	ff                   	(bad)  
ffff800000108333:	ff                   	(bad)  
ffff800000108334:	3c 00                	cmp    $0x0,%al
ffff800000108336:	00 00                	add    %al,(%rax)
ffff800000108338:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010833b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108341:	73 0c                	jae    ffff80000010834f <_etext+0x433>
ffff800000108343:	07                   	(bad)  
ffff800000108344:	08 00                	or     %al,(%rax)
ffff800000108346:	00 00                	add    %al,(%rax)
ffff800000108348:	20 00                	and    %al,(%rax)
ffff80000010834a:	00 00                	add    %al,(%rax)
ffff80000010834c:	2c 04                	sub    $0x4,%al
ffff80000010834e:	00 00                	add    %al,(%rax)
ffff800000108350:	56                   	push   %rsi
ffff800000108351:	e5 ff                	in     $0xff,%eax
ffff800000108353:	ff e5                	jmpq   *%rbp
ffff800000108355:	01 00                	add    %eax,(%rax)
ffff800000108357:	00 00                	add    %al,(%rax)
ffff800000108359:	45 0e                	rex.RB (bad) 
ffff80000010835b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108361:	43 8f 03             	rex.XB popq (%r11)
ffff800000108364:	83 04 03 d9          	addl   $0xffffffd9,(%rbx,%rax,1)
ffff800000108368:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff80000010836b:	08 20                	or     %ah,(%rax)
ffff80000010836d:	00 00                	add    %al,(%rax)
ffff80000010836f:	00 50 04             	add    %dl,0x4(%rax)
ffff800000108372:	00 00                	add    %al,(%rax)
ffff800000108374:	17                   	(bad)  
ffff800000108375:	e7 ff                	out    %eax,$0xff
ffff800000108377:	ff 68 00             	ljmp   *0x0(%rax)
ffff80000010837a:	00 00                	add    %al,(%rax)
ffff80000010837c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010837f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108385:	43 8f 03             	rex.XB popq (%r11)
ffff800000108388:	83 04 02 5c          	addl   $0x5c,(%rdx,%rax,1)
ffff80000010838c:	0c 07                	or     $0x7,%al
ffff80000010838e:	08 00                	or     %al,(%rax)
ffff800000108390:	20 00                	and    %al,(%rax)
ffff800000108392:	00 00                	add    %al,(%rax)
ffff800000108394:	74 04                	je     ffff80000010839a <_etext+0x47e>
ffff800000108396:	00 00                	add    %al,(%rax)
ffff800000108398:	5b                   	pop    %rbx
ffff800000108399:	e7 ff                	out    %eax,$0xff
ffff80000010839b:	ff 97 00 00 00 00    	callq  *0x0(%rdi)
ffff8000001083a1:	45 0e                	rex.RB (bad) 
ffff8000001083a3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001083a9:	47 8f 03             	rex.RXB popq (%r11)
ffff8000001083ac:	83 04 02 87          	addl   $0xffffff87,(%rdx,%rax,1)
ffff8000001083b0:	0c 07                	or     $0x7,%al
ffff8000001083b2:	08 00                	or     %al,(%rax)
ffff8000001083b4:	20 00                	and    %al,(%rax)
ffff8000001083b6:	00 00                	add    %al,(%rax)
ffff8000001083b8:	98                   	cwtl   
ffff8000001083b9:	04 00                	add    $0x0,%al
ffff8000001083bb:	00 ce                	add    %cl,%dh
ffff8000001083bd:	e7 ff                	out    %eax,$0xff
ffff8000001083bf:	ff 82 00 00 00 00    	incl   0x0(%rdx)
ffff8000001083c5:	45 0e                	rex.RB (bad) 
ffff8000001083c7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001083cd:	43 8f 03             	rex.XB popq (%r11)
ffff8000001083d0:	83 04 02 76          	addl   $0x76,(%rdx,%rax,1)
ffff8000001083d4:	0c 07                	or     $0x7,%al
ffff8000001083d6:	08 00                	or     %al,(%rax)
ffff8000001083d8:	20 00                	and    %al,(%rax)
ffff8000001083da:	00 00                	add    %al,(%rax)
ffff8000001083dc:	bc 04 00 00 2c       	mov    $0x2c000004,%esp
ffff8000001083e1:	e8 ff ff d0 01       	callq  ffff800001e183e5 <_end+0x1d0e3dd>
ffff8000001083e6:	00 00                	add    %al,(%rax)
ffff8000001083e8:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001083eb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001083f1:	47 8f 03             	rex.RXB popq (%r11)
ffff8000001083f4:	83 04 03 c0          	addl   $0xffffffc0,(%rbx,%rax,1)
ffff8000001083f8:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001083fb:	08 20                	or     %ah,(%rax)
ffff8000001083fd:	00 00                	add    %al,(%rax)
ffff8000001083ff:	00 e0                	add    %ah,%al
ffff800000108401:	04 00                	add    $0x0,%al
ffff800000108403:	00 d8                	add    %bl,%al
ffff800000108405:	e9 ff ff af 00       	jmpq   ffff800000c08409 <_end+0xafe401>
ffff80000010840a:	00 00                	add    %al,(%rax)
ffff80000010840c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010840f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108415:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108418:	83 04 02 9f          	addl   $0xffffff9f,(%rdx,%rax,1)
ffff80000010841c:	0c 07                	or     $0x7,%al
ffff80000010841e:	08 00                	or     %al,(%rax)
ffff800000108420:	20 00                	and    %al,(%rax)
ffff800000108422:	00 00                	add    %al,(%rax)
ffff800000108424:	04 05                	add    $0x5,%al
ffff800000108426:	00 00                	add    %al,(%rax)
ffff800000108428:	63 ea                	movslq %edx,%ebp
ffff80000010842a:	ff                   	(bad)  
ffff80000010842b:	ff c9                	dec    %ecx
ffff80000010842d:	00 00                	add    %al,(%rax)
ffff80000010842f:	00 00                	add    %al,(%rax)
ffff800000108431:	45 0e                	rex.RB (bad) 
ffff800000108433:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108439:	47 8f 03             	rex.RXB popq (%r11)
ffff80000010843c:	83 04 02 b9          	addl   $0xffffffb9,(%rdx,%rax,1)
ffff800000108440:	0c 07                	or     $0x7,%al
ffff800000108442:	08 00                	or     %al,(%rax)
ffff800000108444:	20 00                	and    %al,(%rax)
ffff800000108446:	00 00                	add    %al,(%rax)
ffff800000108448:	28 05 00 00 08 eb    	sub    %al,-0x14f80000(%rip)        # ffff7fffeb18844e <OLDSS+0xffff7fffeb188396>
ffff80000010844e:	ff                   	(bad)  
ffff80000010844f:	ff 8a 00 00 00 00    	decl   0x0(%rdx)
ffff800000108455:	45 0e                	rex.RB (bad) 
ffff800000108457:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010845d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108460:	02 7b 0c             	add    0xc(%rbx),%bh
ffff800000108463:	07                   	(bad)  
ffff800000108464:	08 00                	or     %al,(%rax)
ffff800000108466:	00 00                	add    %al,(%rax)
ffff800000108468:	20 00                	and    %al,(%rax)
ffff80000010846a:	00 00                	add    %al,(%rax)
ffff80000010846c:	4c 05 00 00 6e eb    	rex.WR add $0xffffffffeb6e0000,%rax
ffff800000108472:	ff                   	(bad)  
ffff800000108473:	ff                   	(bad)  
ffff800000108474:	ec                   	in     (%dx),%al
ffff800000108475:	00 00                	add    %al,(%rax)
ffff800000108477:	00 00                	add    %al,(%rax)
ffff800000108479:	45 0e                	rex.RB (bad) 
ffff80000010847b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108481:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108484:	83 04 02 dc          	addl   $0xffffffdc,(%rdx,%rax,1)
ffff800000108488:	0c 07                	or     $0x7,%al
ffff80000010848a:	08 00                	or     %al,(%rax)
ffff80000010848c:	20 00                	and    %al,(%rax)
ffff80000010848e:	00 00                	add    %al,(%rax)
ffff800000108490:	70 05                	jo     ffff800000108497 <_etext+0x57b>
ffff800000108492:	00 00                	add    %al,(%rax)
ffff800000108494:	36 ec                	ss in  (%dx),%al
ffff800000108496:	ff                   	(bad)  
ffff800000108497:	ff                   	(bad)  
ffff800000108498:	fb                   	sti    
ffff800000108499:	00 00                	add    %al,(%rax)
ffff80000010849b:	00 00                	add    %al,(%rax)
ffff80000010849d:	45 0e                	rex.RB (bad) 
ffff80000010849f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001084a5:	47 8f 03             	rex.RXB popq (%r11)
ffff8000001084a8:	83 04 02 eb          	addl   $0xffffffeb,(%rdx,%rax,1)
ffff8000001084ac:	0c 07                	or     $0x7,%al
ffff8000001084ae:	08 00                	or     %al,(%rax)
ffff8000001084b0:	20 00                	and    %al,(%rax)
ffff8000001084b2:	00 00                	add    %al,(%rax)
ffff8000001084b4:	94                   	xchg   %eax,%esp
ffff8000001084b5:	05 00 00 0d ed       	add    $0xed0d0000,%eax
ffff8000001084ba:	ff                   	(bad)  
ffff8000001084bb:	ff 23                	jmpq   *(%rbx)
ffff8000001084bd:	01 00                	add    %eax,(%rax)
ffff8000001084bf:	00 00                	add    %al,(%rax)
ffff8000001084c1:	45 0e                	rex.RB (bad) 
ffff8000001084c3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001084c9:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff8000001084cd:	15 01 0c 07 08       	adc    $0x8070c01,%eax
ffff8000001084d2:	00 00                	add    %al,(%rax)
ffff8000001084d4:	20 00                	and    %al,(%rax)
ffff8000001084d6:	00 00                	add    %al,(%rax)
ffff8000001084d8:	b8 05 00 00 0c       	mov    $0xc000005,%eax
ffff8000001084dd:	ee                   	out    %al,(%dx)
ffff8000001084de:	ff                   	(bad)  
ffff8000001084df:	ff 53 01             	callq  *0x1(%rbx)
ffff8000001084e2:	00 00                	add    %al,(%rax)
ffff8000001084e4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001084e7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001084ed:	47 8f 03             	rex.RXB popq (%r11)
ffff8000001084f0:	83 04 03 43          	addl   $0x43,(%rbx,%rax,1)
ffff8000001084f4:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001084f7:	08 20                	or     %ah,(%rax)
ffff8000001084f9:	00 00                	add    %al,(%rax)
ffff8000001084fb:	00 dc                	add    %bl,%ah
ffff8000001084fd:	05 00 00 3b ef       	add    $0xef3b0000,%eax
ffff800000108502:	ff                   	(bad)  
ffff800000108503:	ff 72 01             	pushq  0x1(%rdx)
ffff800000108506:	00 00                	add    %al,(%rax)
ffff800000108508:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010850b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108511:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108514:	83 04 03 62          	addl   $0x62,(%rbx,%rax,1)
ffff800000108518:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff80000010851b:	08 20                	or     %ah,(%rax)
ffff80000010851d:	00 00                	add    %al,(%rax)
ffff80000010851f:	00 00                	add    %al,(%rax)
ffff800000108521:	06                   	(bad)  
ffff800000108522:	00 00                	add    %al,(%rax)
ffff800000108524:	89 f0                	mov    %esi,%eax
ffff800000108526:	ff                   	(bad)  
ffff800000108527:	ff                   	(bad)  
ffff800000108528:	7c 00                	jl     ffff80000010852a <_etext+0x60e>
ffff80000010852a:	00 00                	add    %al,(%rax)
ffff80000010852c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010852f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108535:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108538:	02 6d 0c             	add    0xc(%rbp),%ch
ffff80000010853b:	07                   	(bad)  
ffff80000010853c:	08 00                	or     %al,(%rax)
ffff80000010853e:	00 00                	add    %al,(%rax)
ffff800000108540:	20 00                	and    %al,(%rax)
ffff800000108542:	00 00                	add    %al,(%rax)
ffff800000108544:	24 06                	and    $0x6,%al
ffff800000108546:	00 00                	add    %al,(%rax)
ffff800000108548:	e1 f0                	loope  ffff80000010853a <_etext+0x61e>
ffff80000010854a:	ff                   	(bad)  
ffff80000010854b:	ff 04 02             	incl   (%rdx,%rax,1)
ffff80000010854e:	00 00                	add    %al,(%rax)
ffff800000108550:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108553:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108559:	47 8f 03             	rex.RXB popq (%r11)
ffff80000010855c:	83 04 03 f4          	addl   $0xfffffff4,(%rbx,%rax,1)
ffff800000108560:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108563:	08 20                	or     %ah,(%rax)
ffff800000108565:	00 00                	add    %al,(%rax)
ffff800000108567:	00 48 06             	add    %cl,0x6(%rax)
ffff80000010856a:	00 00                	add    %al,(%rax)
ffff80000010856c:	c1 f2 ff             	shl    $0xff,%edx
ffff80000010856f:	ff 02                	incl   (%rdx)
ffff800000108571:	03 00                	add    (%rax),%eax
ffff800000108573:	00 00                	add    %al,(%rax)
ffff800000108575:	45 0e                	rex.RB (bad) 
ffff800000108577:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010857d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108580:	83 04 03 f2          	addl   $0xfffffff2,(%rbx,%rax,1)
ffff800000108584:	02 0c 07             	add    (%rdi,%rax,1),%cl
ffff800000108587:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff80000010858a:	00 00                	add    %al,(%rax)
ffff80000010858c:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010858d:	06                   	(bad)  
ffff80000010858e:	00 00                	add    %al,(%rax)
ffff800000108590:	9f                   	lahf   
ffff800000108591:	f5                   	cmc    
ffff800000108592:	ff                   	(bad)  
ffff800000108593:	ff 63 00             	jmpq   *0x0(%rbx)
ffff800000108596:	00 00                	add    %al,(%rax)
ffff800000108598:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010859b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001085a1:	02 5a 0c             	add    0xc(%rdx),%bl
ffff8000001085a4:	07                   	(bad)  
ffff8000001085a5:	08 00                	or     %al,(%rax)
ffff8000001085a7:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001085aa:	00 00                	add    %al,(%rax)
ffff8000001085ac:	8c 06                	mov    %es,(%rsi)
ffff8000001085ae:	00 00                	add    %al,(%rax)
ffff8000001085b0:	e2 f5                	loop   ffff8000001085a7 <_etext+0x68b>
ffff8000001085b2:	ff                   	(bad)  
ffff8000001085b3:	ff 8c 00 00 00 00 45 	decl   0x45000000(%rax,%rax,1)
ffff8000001085ba:	0e                   	(bad)  
ffff8000001085bb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001085c1:	02 83 0c 07 08 00    	add    0x8070c(%rbx),%al
ffff8000001085c7:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001085ca:	00 00                	add    %al,(%rax)
ffff8000001085cc:	ac                   	lods   %ds:(%rsi),%al
ffff8000001085cd:	06                   	(bad)  
ffff8000001085ce:	00 00                	add    %al,(%rax)
ffff8000001085d0:	4e f6 ff             	rex.WRX idiv %dil
ffff8000001085d3:	ff d7                	callq  *%rdi
ffff8000001085d5:	00 00                	add    %al,(%rax)
ffff8000001085d7:	00 00                	add    %al,(%rax)
ffff8000001085d9:	45 0e                	rex.RB (bad) 
ffff8000001085db:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001085e1:	02 ce                	add    %dh,%cl
ffff8000001085e3:	0c 07                	or     $0x7,%al
ffff8000001085e5:	08 00                	or     %al,(%rax)
ffff8000001085e7:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001085ea:	00 00                	add    %al,(%rax)
ffff8000001085ec:	cc                   	int3   
ffff8000001085ed:	06                   	(bad)  
ffff8000001085ee:	00 00                	add    %al,(%rax)
ffff8000001085f0:	05 f7 ff ff 51       	add    $0x51fffff7,%eax
ffff8000001085f5:	00 00                	add    %al,(%rax)
ffff8000001085f7:	00 00                	add    %al,(%rax)
ffff8000001085f9:	45 0e                	rex.RB (bad) 
ffff8000001085fb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108601:	02 48 0c             	add    0xc(%rax),%cl
ffff800000108604:	07                   	(bad)  
ffff800000108605:	08 00                	or     %al,(%rax)
ffff800000108607:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010860a:	00 00                	add    %al,(%rax)
ffff80000010860c:	ec                   	in     (%dx),%al
ffff80000010860d:	06                   	(bad)  
ffff80000010860e:	00 00                	add    %al,(%rax)
ffff800000108610:	36 f7 ff             	ss idiv %edi
ffff800000108613:	ff 89 00 00 00 00    	decl   0x0(%rcx)
ffff800000108619:	45 0e                	rex.RB (bad) 
ffff80000010861b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108621:	02 80 0c 07 08 00    	add    0x8070c(%rax),%al
ffff800000108627:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010862a:	00 00                	add    %al,(%rax)
ffff80000010862c:	0c 07                	or     $0x7,%al
ffff80000010862e:	00 00                	add    %al,(%rax)
ffff800000108630:	9f                   	lahf   
ffff800000108631:	f7 ff                	idiv   %edi
ffff800000108633:	ff 89 00 00 00 00    	decl   0x0(%rcx)
ffff800000108639:	45 0e                	rex.RB (bad) 
ffff80000010863b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108641:	02 80 0c 07 08 00    	add    0x8070c(%rax),%al
ffff800000108647:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010864a:	00 00                	add    %al,(%rax)
ffff80000010864c:	2c 07                	sub    $0x7,%al
ffff80000010864e:	00 00                	add    %al,(%rax)
ffff800000108650:	08 f8                	or     %bh,%al
ffff800000108652:	ff                   	(bad)  
ffff800000108653:	ff                   	(bad)  
ffff800000108654:	7a 00                	jp     ffff800000108656 <_etext+0x73a>
ffff800000108656:	00 00                	add    %al,(%rax)
ffff800000108658:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010865b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108661:	02 71 0c             	add    0xc(%rcx),%dh
ffff800000108664:	07                   	(bad)  
ffff800000108665:	08 00                	or     %al,(%rax)
ffff800000108667:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010866a:	00 00                	add    %al,(%rax)
ffff80000010866c:	4c 07                	rex.WR (bad) 
ffff80000010866e:	00 00                	add    %al,(%rax)
ffff800000108670:	62                   	(bad)  
ffff800000108671:	f8                   	clc    
ffff800000108672:	ff                   	(bad)  
ffff800000108673:	ff 4a 00             	decl   0x0(%rdx)
ffff800000108676:	00 00                	add    %al,(%rax)
ffff800000108678:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010867b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108681:	02 41 0c             	add    0xc(%rcx),%al
ffff800000108684:	07                   	(bad)  
ffff800000108685:	08 00                	or     %al,(%rax)
	...

Disassembly of section .rodata:

ffff800000108688 <.LC0>:
ffff800000108688:	70 61                	jo     ffff8000001086eb <.LC1+0x1b>
ffff80000010868a:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010868b:	69 63 3a 20 00   	imul   $0xa0020,0x3a(%rbx),%esp

ffff800000108690 <.LC1>:
ffff800000108690:	0a 00                	or     (%rax),%al
ffff800000108692:	00 00                	add    %al,(%rax)
ffff800000108694:	00 00                	add    %al,(%rax)
	...

ffff800000108698 <.LC0>:
ffff800000108698:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010869a:	5f                   	pop    %rdi
ffff80000010869b:	64 69 76 69 64 65 5f 	imul   $0x655f6564,%fs:0x69(%rsi),%esi
ffff8000001086a2:	65 
ffff8000001086a3:	72 72                	jb     ffff800000108717 <.LC2+0x17>
ffff8000001086a5:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001086a6:	72 28                	jb     ffff8000001086d0 <.LC1>
ffff8000001086a8:	30 29                	xor    %ch,(%rcx)
ffff8000001086aa:	2c 45                	sub    $0x45,%al
ffff8000001086ac:	52                   	push   %rdx
ffff8000001086ad:	52                   	push   %rdx
ffff8000001086ae:	4f 52                	rex.WRXB push %r10
ffff8000001086b0:	5f                   	pop    %rdi
ffff8000001086b1:	43                   	rex.XB
ffff8000001086b2:	4f                   	rex.WRXB
ffff8000001086b3:	44                   	rex.R
ffff8000001086b4:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523cff27 <_end+0x522c5f1f>
ffff8000001086bb:	53                   	push   %rbx
ffff8000001086bc:	50                   	push   %rax
ffff8000001086bd:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523cff2f <_end+0x522c5f27>
ffff8000001086c3:	49 50                	rex.WB push %r8
ffff8000001086c5:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001aff37 <_end+0xa5f2f>
ffff8000001086cb:	00 00                	add    %al,(%rax)
ffff8000001086cd:	00 00                	add    %al,(%rax)
	...

ffff8000001086d0 <.LC1>:
ffff8000001086d0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001086d2:	5f                   	pop    %rdi
ffff8000001086d3:	64 65 62             	fs gs (bad) 
ffff8000001086d6:	75 67                	jne    ffff80000010873f <.LC3+0xf>
ffff8000001086d8:	28 31                	sub    %dh,(%rcx)
ffff8000001086da:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001086e1:	5f                   	pop    %rdi
ffff8000001086e2:	43                   	rex.XB
ffff8000001086e3:	4f                   	rex.WRXB
ffff8000001086e4:	44                   	rex.R
ffff8000001086e5:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523cff58 <_end+0x522c5f50>
ffff8000001086ec:	53                   	push   %rbx
ffff8000001086ed:	50                   	push   %rax
ffff8000001086ee:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523cff60 <_end+0x522c5f58>
ffff8000001086f4:	49 50                	rex.WB push %r8
ffff8000001086f6:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001aff68 <_end+0xa5f60>
ffff8000001086fc:	00 00                	add    %al,(%rax)
	...

ffff800000108700 <.LC2>:
ffff800000108700:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108702:	5f                   	pop    %rdi
ffff800000108703:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108704:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108705:	69 28 32 29 2c 45    	imul   $0x452c2932,(%rax),%ebp
ffff80000010870b:	52                   	push   %rdx
ffff80000010870c:	52                   	push   %rdx
ffff80000010870d:	4f 52                	rex.WRXB push %r10
ffff80000010870f:	5f                   	pop    %rdi
ffff800000108710:	43                   	rex.XB
ffff800000108711:	4f                   	rex.WRXB
ffff800000108712:	44                   	rex.R
ffff800000108713:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523cff86 <_end+0x522c5f7e>
ffff80000010871a:	53                   	push   %rbx
ffff80000010871b:	50                   	push   %rax
ffff80000010871c:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523cff8e <_end+0x522c5f86>
ffff800000108722:	49 50                	rex.WB push %r8
ffff800000108724:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001aff96 <_end+0xa5f8e>
ffff80000010872a:	00 00                	add    %al,(%rax)
ffff80000010872c:	00 00                	add    %al,(%rax)
	...

ffff800000108730 <.LC3>:
ffff800000108730:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108732:	5f                   	pop    %rdi
ffff800000108733:	69 6e 74 33 28 33 29 	imul   $0x29332833,0x74(%rsi),%ebp
ffff80000010873a:	2c 45                	sub    $0x45,%al
ffff80000010873c:	52                   	push   %rdx
ffff80000010873d:	52                   	push   %rdx
ffff80000010873e:	4f 52                	rex.WRXB push %r10
ffff800000108740:	5f                   	pop    %rdi
ffff800000108741:	43                   	rex.XB
ffff800000108742:	4f                   	rex.WRXB
ffff800000108743:	44                   	rex.R
ffff800000108744:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523cffb7 <_end+0x522c5faf>
ffff80000010874b:	53                   	push   %rbx
ffff80000010874c:	50                   	push   %rax
ffff80000010874d:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523cffbf <_end+0x522c5fb7>
ffff800000108753:	49 50                	rex.WB push %r8
ffff800000108755:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001affc7 <_end+0xa5fbf>
ffff80000010875b:	00 00                	add    %al,(%rax)
ffff80000010875d:	00 00                	add    %al,(%rax)
	...

ffff800000108760 <.LC4>:
ffff800000108760:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108762:	5f                   	pop    %rdi
ffff800000108763:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108764:	76 65                	jbe    ffff8000001087cb <.LC6+0xb>
ffff800000108766:	72 66                	jb     ffff8000001087ce <.LC6+0xe>
ffff800000108768:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108769:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010876a:	77 28                	ja     ffff800000108794 <.LC5+0x4>
ffff80000010876c:	34 29                	xor    $0x29,%al
ffff80000010876e:	2c 45                	sub    $0x45,%al
ffff800000108770:	52                   	push   %rdx
ffff800000108771:	52                   	push   %rdx
ffff800000108772:	4f 52                	rex.WRXB push %r10
ffff800000108774:	5f                   	pop    %rdi
ffff800000108775:	43                   	rex.XB
ffff800000108776:	4f                   	rex.WRXB
ffff800000108777:	44                   	rex.R
ffff800000108778:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523cffeb <_end+0x522c5fe3>
ffff80000010877f:	53                   	push   %rbx
ffff800000108780:	50                   	push   %rax
ffff800000108781:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523cfff3 <_end+0x522c5feb>
ffff800000108787:	49 50                	rex.WB push %r8
ffff800000108789:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001afffb <_end+0xa5ff3>
	...

ffff800000108790 <.LC5>:
ffff800000108790:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108792:	5f                   	pop    %rdi
ffff800000108793:	62                   	(bad)  
ffff800000108794:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108795:	75 6e                	jne    ffff800000108805 <.LC7+0xd>
ffff800000108797:	64 73 28             	fs jae ffff8000001087c2 <.LC6+0x2>
ffff80000010879a:	35 29 2c 45 52       	xor    $0x52452c29,%eax
ffff80000010879f:	52                   	push   %rdx
ffff8000001087a0:	4f 52                	rex.WRXB push %r10
ffff8000001087a2:	5f                   	pop    %rdi
ffff8000001087a3:	43                   	rex.XB
ffff8000001087a4:	4f                   	rex.WRXB
ffff8000001087a5:	44                   	rex.R
ffff8000001087a6:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0019 <_end+0x522c6011>
ffff8000001087ad:	53                   	push   %rbx
ffff8000001087ae:	50                   	push   %rax
ffff8000001087af:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0021 <_end+0x522c6019>
ffff8000001087b5:	49 50                	rex.WB push %r8
ffff8000001087b7:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0029 <_end+0xa6021>
ffff8000001087bd:	00 00                	add    %al,(%rax)
	...

ffff8000001087c0 <.LC6>:
ffff8000001087c0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001087c2:	5f                   	pop    %rdi
ffff8000001087c3:	75 6e                	jne    ffff800000108833 <.LC8+0x3>
ffff8000001087c5:	64 65 66 69 6e 65 64 	fs imul $0x5f64,%gs:0x65(%rsi),%bp
ffff8000001087cc:	5f 
ffff8000001087cd:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001087ce:	70 63                	jo     ffff800000108833 <.LC8+0x3>
ffff8000001087d0:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001087d1:	64 65 28 36          	fs sub %dh,%gs:(%rsi)
ffff8000001087d5:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001087dc:	5f                   	pop    %rdi
ffff8000001087dd:	43                   	rex.XB
ffff8000001087de:	4f                   	rex.WRXB
ffff8000001087df:	44                   	rex.R
ffff8000001087e0:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0053 <_end+0x522c604b>
ffff8000001087e7:	53                   	push   %rbx
ffff8000001087e8:	50                   	push   %rax
ffff8000001087e9:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d005b <_end+0x522c6053>
ffff8000001087ef:	49 50                	rex.WB push %r8
ffff8000001087f1:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0063 <_end+0xa605b>
	...

ffff8000001087f8 <.LC7>:
ffff8000001087f8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001087fa:	5f                   	pop    %rdi
ffff8000001087fb:	64 65 76 5f          	fs gs jbe ffff80000010885e <.LC8+0x2e>
ffff8000001087ff:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108800:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108801:	74 5f                	je     ffff800000108862 <.LC8+0x32>
ffff800000108803:	61                   	(bad)  
ffff800000108804:	76 61                	jbe    ffff800000108867 <.LC8+0x37>
ffff800000108806:	69 6c 61 62 6c 65 28 	imul   $0x3728656c,0x62(%rcx,%riz,2),%ebp
ffff80000010880d:	37 
ffff80000010880e:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108815:	5f                   	pop    %rdi
ffff800000108816:	43                   	rex.XB
ffff800000108817:	4f                   	rex.WRXB
ffff800000108818:	44                   	rex.R
ffff800000108819:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d008c <_end+0x522c6084>
ffff800000108820:	53                   	push   %rbx
ffff800000108821:	50                   	push   %rax
ffff800000108822:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0094 <_end+0x522c608c>
ffff800000108828:	49 50                	rex.WB push %r8
ffff80000010882a:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b009c <_end+0xa6094>

ffff800000108830 <.LC8>:
ffff800000108830:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108832:	5f                   	pop    %rdi
ffff800000108833:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108835:	75 62                	jne    ffff800000108899 <.LC9+0x31>
ffff800000108837:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108838:	65 5f                	gs pop %rdi
ffff80000010883a:	66 61                	data16 (bad) 
ffff80000010883c:	75 6c                	jne    ffff8000001088aa <.LC9+0x42>
ffff80000010883e:	74 28                	je     ffff800000108868 <.LC9>
ffff800000108840:	38 29                	cmp    %ch,(%rcx)
ffff800000108842:	2c 45                	sub    $0x45,%al
ffff800000108844:	52                   	push   %rdx
ffff800000108845:	52                   	push   %rdx
ffff800000108846:	4f 52                	rex.WRXB push %r10
ffff800000108848:	5f                   	pop    %rdi
ffff800000108849:	43                   	rex.XB
ffff80000010884a:	4f                   	rex.WRXB
ffff80000010884b:	44                   	rex.R
ffff80000010884c:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d00bf <_end+0x522c60b7>
ffff800000108853:	53                   	push   %rbx
ffff800000108854:	50                   	push   %rax
ffff800000108855:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d00c7 <_end+0x522c60bf>
ffff80000010885b:	49 50                	rex.WB push %r8
ffff80000010885d:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b00cf <_end+0xa60c7>
ffff800000108863:	00 00                	add    %al,(%rax)
ffff800000108865:	00 00                	add    %al,(%rax)
	...

ffff800000108868 <.LC9>:
ffff800000108868:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010886a:	5f                   	pop    %rdi
ffff80000010886b:	63 6f 70             	movslq 0x70(%rdi),%ebp
ffff80000010886e:	72 6f                	jb     ffff8000001088df <.LC10+0x2f>
ffff800000108870:	63 65 73             	movslq 0x73(%rbp),%esp
ffff800000108873:	73 6f                	jae    ffff8000001088e4 <.LC10+0x34>
ffff800000108875:	72 5f                	jb     ffff8000001088d6 <.LC10+0x26>
ffff800000108877:	73 65                	jae    ffff8000001088de <.LC10+0x2e>
ffff800000108879:	67 6d                	insl   (%dx),%es:(%edi)
ffff80000010887b:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff80000010887d:	74 5f                	je     ffff8000001088de <.LC10+0x2e>
ffff80000010887f:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108880:	76 65                	jbe    ffff8000001088e7 <.LC10+0x37>
ffff800000108882:	72 72                	jb     ffff8000001088f6 <.LC11+0xe>
ffff800000108884:	75 6e                	jne    ffff8000001088f4 <.LC11+0xc>
ffff800000108886:	28 39                	sub    %bh,(%rcx)
ffff800000108888:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff80000010888f:	5f                   	pop    %rdi
ffff800000108890:	43                   	rex.XB
ffff800000108891:	4f                   	rex.WRXB
ffff800000108892:	44                   	rex.R
ffff800000108893:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0106 <_end+0x522c60fe>
ffff80000010889a:	53                   	push   %rbx
ffff80000010889b:	50                   	push   %rax
ffff80000010889c:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d010e <_end+0x522c6106>
ffff8000001088a2:	49 50                	rex.WB push %r8
ffff8000001088a4:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0116 <_end+0xa610e>
ffff8000001088aa:	00 00                	add    %al,(%rax)
ffff8000001088ac:	00 00                	add    %al,(%rax)
	...

ffff8000001088b0 <.LC10>:
ffff8000001088b0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001088b2:	5f                   	pop    %rdi
ffff8000001088b3:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%rsi),%ebp
ffff8000001088ba:	5f                   	pop    %rdi
ffff8000001088bb:	54                   	push   %rsp
ffff8000001088bc:	53                   	push   %rbx
ffff8000001088bd:	53                   	push   %rbx
ffff8000001088be:	28 31                	sub    %dh,(%rcx)
ffff8000001088c0:	30 29                	xor    %ch,(%rcx)
ffff8000001088c2:	2c 45                	sub    $0x45,%al
ffff8000001088c4:	52                   	push   %rdx
ffff8000001088c5:	52                   	push   %rdx
ffff8000001088c6:	4f 52                	rex.WRXB push %r10
ffff8000001088c8:	5f                   	pop    %rdi
ffff8000001088c9:	43                   	rex.XB
ffff8000001088ca:	4f                   	rex.WRXB
ffff8000001088cb:	44                   	rex.R
ffff8000001088cc:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d013f <_end+0x522c6137>
ffff8000001088d3:	53                   	push   %rbx
ffff8000001088d4:	50                   	push   %rax
ffff8000001088d5:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0147 <_end+0x522c613f>
ffff8000001088db:	49 50                	rex.WB push %r8
ffff8000001088dd:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b014f <_end+0xa6147>
ffff8000001088e3:	00 00                	add    %al,(%rax)
ffff8000001088e5:	00 00                	add    %al,(%rax)
	...

ffff8000001088e8 <.LC11>:
ffff8000001088e8:	54                   	push   %rsp
ffff8000001088e9:	68 65 20 65 78       	pushq  $0x78652065
ffff8000001088ee:	63 65 70             	movslq 0x70(%rbp),%esp
ffff8000001088f1:	74 69                	je     ffff80000010895c <.LC11+0x74>
ffff8000001088f3:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001088f4:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001088f5:	20 6f 63             	and    %ch,0x63(%rdi)
ffff8000001088f8:	63 75 72             	movslq 0x72(%rbp),%esi
ffff8000001088fb:	72 65                	jb     ffff800000108962 <.LC11+0x7a>
ffff8000001088fd:	64 20 64 75 72       	and    %ah,%fs:0x72(%rbp,%rsi,2)
ffff800000108902:	69 6e 67 20 64 65 6c 	imul   $0x6c656420,0x67(%rsi),%ebp
ffff800000108909:	69 76 65 72 79 20 6f 	imul   $0x6f207972,0x65(%rsi),%esi
ffff800000108910:	66 20 61 6e          	data16 and %ah,0x6e(%rcx)
ffff800000108914:	20 65 76             	and    %ah,0x76(%rbp)
ffff800000108917:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000108919:	74 20                	je     ffff80000010893b <.LC11+0x53>
ffff80000010891b:	65 78 74             	gs js  ffff800000108992 <.LC12+0x2a>
ffff80000010891e:	65 72 6e             	gs jb  ffff80000010898f <.LC12+0x27>
ffff800000108921:	61                   	(bad)  
ffff800000108922:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108923:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000108927:	74 68                	je     ffff800000108991 <.LC12+0x29>
ffff800000108929:	65 20 70 72          	and    %dh,%gs:0x72(%rax)
ffff80000010892d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010892e:	67 72 61             	addr32 jb ffff800000108992 <.LC12+0x2a>
ffff800000108931:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108932:	2c 73                	sub    $0x73,%al
ffff800000108934:	75 63                	jne    ffff800000108999 <.LC13+0x1>
ffff800000108936:	68 20 61 73 20       	pushq  $0x20736120
ffff80000010893b:	61                   	(bad)  
ffff80000010893c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010893d:	20 69 6e             	and    %ch,0x6e(%rcx)
ffff800000108940:	74 65                	je     ffff8000001089a7 <.LC13+0xf>
ffff800000108942:	72 72                	jb     ffff8000001089b6 <.LC13+0x1e>
ffff800000108944:	75 70                	jne    ffff8000001089b6 <.LC13+0x1e>
ffff800000108946:	74 20                	je     ffff800000108968 <.LC12>
ffff800000108948:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108949:	72 20                	jb     ffff80000010896b <.LC12+0x3>
ffff80000010894b:	61                   	(bad)  
ffff80000010894c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010894d:	20 65 61             	and    %ah,0x61(%rbp)
ffff800000108950:	72 6c                	jb     ffff8000001089be <.LC13+0x26>
ffff800000108952:	69 65 72 20 65 78 63 	imul   $0x63786520,0x72(%rbp),%esp
ffff800000108959:	65 70 74             	gs jo  ffff8000001089d0 <.LC14>
ffff80000010895c:	69 6f 6e 2e 0a 00 00 	imul   $0xa2e,0x6e(%rdi),%ebp
ffff800000108963:	00 00                	add    %al,(%rax)
ffff800000108965:	00 00                	add    %al,(%rax)
	...

ffff800000108968 <.LC12>:
ffff800000108968:	52                   	push   %rdx
ffff800000108969:	65 66 65 72 73       	gs data16 gs jb ffff8000001089e1 <.LC14+0x11>
ffff80000010896e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000108972:	61                   	(bad)  
ffff800000108973:	20 67 61             	and    %ah,0x61(%rdi)
ffff800000108976:	74 65                	je     ffff8000001089dd <.LC14+0xd>
ffff800000108978:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff80000010897c:	63 72 69             	movslq 0x69(%rdx),%esi
ffff80000010897f:	70 74                	jo     ffff8000001089f5 <.LC14+0x25>
ffff800000108981:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108982:	72 20                	jb     ffff8000001089a4 <.LC13+0xc>
ffff800000108984:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff80000010898b:	49                   	rex.WB
ffff80000010898c:	44 54                	rex.R push %rsp
ffff80000010898e:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff800000108998 <.LC13>:
ffff800000108998:	52                   	push   %rdx
ffff800000108999:	65 66 65 72 73       	gs data16 gs jb ffff800000108a11 <.LC15+0x9>
ffff80000010899e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff8000001089a2:	61                   	(bad)  
ffff8000001089a3:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff8000001089a7:	63 72 69             	movslq 0x69(%rdx),%esi
ffff8000001089aa:	70 74                	jo     ffff800000108a20 <.LC15+0x18>
ffff8000001089ac:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001089ad:	72 20                	jb     ffff8000001089cf <.LC13+0x37>
ffff8000001089af:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff8000001089b6:	47                   	rex.RXB
ffff8000001089b7:	44 54                	rex.R push %rsp
ffff8000001089b9:	20 6f 72             	and    %ch,0x72(%rdi)
ffff8000001089bc:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
ffff8000001089c0:	20 63 75             	and    %ah,0x75(%rbx)
ffff8000001089c3:	72 72                	jb     ffff800000108a37 <.LC15+0x2f>
ffff8000001089c5:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001089c7:	74 20                	je     ffff8000001089e9 <.LC14+0x19>
ffff8000001089c9:	4c                   	rex.WR
ffff8000001089ca:	44 54                	rex.R push %rsp
ffff8000001089cc:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff8000001089d0 <.LC14>:
ffff8000001089d0:	52                   	push   %rdx
ffff8000001089d1:	65 66 65 72 73       	gs data16 gs jb ffff800000108a49 <.LC16+0x11>
ffff8000001089d6:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff8000001089da:	61                   	(bad)  
ffff8000001089db:	20 73 65             	and    %dh,0x65(%rbx)
ffff8000001089de:	67 6d                	insl   (%dx),%es:(%edi)
ffff8000001089e0:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001089e2:	74 20                	je     ffff800000108a04 <.LC14+0x34>
ffff8000001089e4:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001089e5:	72 20                	jb     ffff800000108a07 <.LC14+0x37>
ffff8000001089e7:	67 61                	addr32 (bad) 
ffff8000001089e9:	74 65                	je     ffff800000108a50 <.LC16+0x18>
ffff8000001089eb:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff8000001089ef:	63 72 69             	movslq 0x69(%rdx),%esi
ffff8000001089f2:	70 74                	jo     ffff800000108a68 <.LC17+0x10>
ffff8000001089f4:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001089f5:	72 20                	jb     ffff800000108a17 <.LC15+0xf>
ffff8000001089f7:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff8000001089fe:	4c                   	rex.WR
ffff8000001089ff:	44 54                	rex.R push %rsp
ffff800000108a01:	3b 0a                	cmp    (%rdx),%ecx
ffff800000108a03:	00 00                	add    %al,(%rax)
ffff800000108a05:	00 00                	add    %al,(%rax)
	...

ffff800000108a08 <.LC15>:
ffff800000108a08:	52                   	push   %rdx
ffff800000108a09:	65 66 65 72 73       	gs data16 gs jb ffff800000108a81 <.LC17+0x29>
ffff800000108a0e:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff800000108a12:	61                   	(bad)  
ffff800000108a13:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000108a17:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000108a1a:	70 74                	jo     ffff800000108a90 <.LC17+0x38>
ffff800000108a1c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108a1d:	72 20                	jb     ffff800000108a3f <.LC16+0x7>
ffff800000108a1f:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000108a26:	63 75 72             	movslq 0x72(%rbp),%esi
ffff800000108a29:	72 65                	jb     ffff800000108a90 <.LC17+0x38>
ffff800000108a2b:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108a2c:	74 20                	je     ffff800000108a4e <.LC16+0x16>
ffff800000108a2e:	47                   	rex.RXB
ffff800000108a2f:	44 54                	rex.R push %rsp
ffff800000108a31:	3b 0a                	cmp    (%rdx),%ecx
ffff800000108a33:	00 00                	add    %al,(%rax)
ffff800000108a35:	00 00                	add    %al,(%rax)
	...

ffff800000108a38 <.LC16>:
ffff800000108a38:	53                   	push   %rbx
ffff800000108a39:	65 67 6d             	gs insl (%dx),%es:(%edi)
ffff800000108a3c:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000108a3e:	74 20                	je     ffff800000108a60 <.LC17+0x8>
ffff800000108a40:	53                   	push   %rbx
ffff800000108a41:	65 6c                	gs insb (%dx),%es:(%rdi)
ffff800000108a43:	65 63 74 6f 72       	movslq %gs:0x72(%rdi,%rbp,2),%esi
ffff800000108a48:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff800000108a4b:	64 65 78 3a          	fs gs js ffff800000108a89 <.LC17+0x31>
ffff800000108a4f:	25 23 30 31 30       	and    $0x30313023,%eax
ffff800000108a54:	78 0a                	js     ffff800000108a60 <.LC17+0x8>
	...

ffff800000108a58 <.LC17>:
ffff800000108a58:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108a5a:	5f                   	pop    %rdi
ffff800000108a5b:	73 65                	jae    ffff800000108ac2 <.LC18+0x2a>
ffff800000108a5d:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000108a5f:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000108a61:	74 5f                	je     ffff800000108ac2 <.LC18+0x2a>
ffff800000108a63:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108a64:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108a65:	74 5f                	je     ffff800000108ac6 <.LC18+0x2e>
ffff800000108a67:	70 72                	jo     ffff800000108adb <.LC19+0x3>
ffff800000108a69:	65 73 65             	gs jae ffff800000108ad1 <.LC18+0x39>
ffff800000108a6c:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108a6d:	74 28                	je     ffff800000108a97 <.LC17+0x3f>
ffff800000108a6f:	31 31                	xor    %esi,(%rcx)
ffff800000108a71:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108a78:	5f                   	pop    %rdi
ffff800000108a79:	43                   	rex.XB
ffff800000108a7a:	4f                   	rex.WRXB
ffff800000108a7b:	44                   	rex.R
ffff800000108a7c:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d02ef <_end+0x522c62e7>
ffff800000108a83:	53                   	push   %rbx
ffff800000108a84:	50                   	push   %rax
ffff800000108a85:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d02f7 <_end+0x522c62ef>
ffff800000108a8b:	49 50                	rex.WB push %r8
ffff800000108a8d:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b02ff <_end+0xa62f7>
ffff800000108a93:	00 00                	add    %al,(%rax)
ffff800000108a95:	00 00                	add    %al,(%rax)
	...

ffff800000108a98 <.LC18>:
ffff800000108a98:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108a9a:	5f                   	pop    %rdi
ffff800000108a9b:	73 74                	jae    ffff800000108b11 <.LC19+0x39>
ffff800000108a9d:	61                   	(bad)  
ffff800000108a9e:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
ffff800000108aa1:	73 65                	jae    ffff800000108b08 <.LC19+0x30>
ffff800000108aa3:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000108aa5:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000108aa7:	74 5f                	je     ffff800000108b08 <.LC19+0x30>
ffff800000108aa9:	66 61                	data16 (bad) 
ffff800000108aab:	75 6c                	jne    ffff800000108b19 <.LC20+0x1>
ffff800000108aad:	74 28                	je     ffff800000108ad7 <.LC18+0x3f>
ffff800000108aaf:	31 32                	xor    %esi,(%rdx)
ffff800000108ab1:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108ab8:	5f                   	pop    %rdi
ffff800000108ab9:	43                   	rex.XB
ffff800000108aba:	4f                   	rex.WRXB
ffff800000108abb:	44                   	rex.R
ffff800000108abc:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d032f <_end+0x522c6327>
ffff800000108ac3:	53                   	push   %rbx
ffff800000108ac4:	50                   	push   %rax
ffff800000108ac5:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0337 <_end+0x522c632f>
ffff800000108acb:	49 50                	rex.WB push %r8
ffff800000108acd:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b033f <_end+0xa6337>
ffff800000108ad3:	00 00                	add    %al,(%rax)
ffff800000108ad5:	00 00                	add    %al,(%rax)
	...

ffff800000108ad8 <.LC19>:
ffff800000108ad8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108ada:	5f                   	pop    %rdi
ffff800000108adb:	67 65 6e             	outsb  %gs:(%esi),(%dx)
ffff800000108ade:	65 72 61             	gs jb  ffff800000108b42 <.LC20+0x2a>
ffff800000108ae1:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108ae2:	5f                   	pop    %rdi
ffff800000108ae3:	70 72                	jo     ffff800000108b57 <.LC21+0xd>
ffff800000108ae5:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108ae6:	74 65                	je     ffff800000108b4d <.LC21+0x3>
ffff800000108ae8:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff800000108aec:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108aed:	28 31                	sub    %dh,(%rcx)
ffff800000108aef:	33 29                	xor    (%rcx),%ebp
ffff800000108af1:	2c 45                	sub    $0x45,%al
ffff800000108af3:	52                   	push   %rdx
ffff800000108af4:	52                   	push   %rdx
ffff800000108af5:	4f 52                	rex.WRXB push %r10
ffff800000108af7:	5f                   	pop    %rdi
ffff800000108af8:	43                   	rex.XB
ffff800000108af9:	4f                   	rex.WRXB
ffff800000108afa:	44                   	rex.R
ffff800000108afb:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d036e <_end+0x522c6366>
ffff800000108b02:	53                   	push   %rbx
ffff800000108b03:	50                   	push   %rax
ffff800000108b04:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0376 <_end+0x522c636e>
ffff800000108b0a:	49 50                	rex.WB push %r8
ffff800000108b0c:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b037e <_end+0xa6376>
ffff800000108b12:	00 00                	add    %al,(%rax)
ffff800000108b14:	00 00                	add    %al,(%rax)
	...

ffff800000108b18 <.LC20>:
ffff800000108b18:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108b1a:	5f                   	pop    %rdi
ffff800000108b1b:	70 61                	jo     ffff800000108b7e <.LC23+0xd>
ffff800000108b1d:	67 65 5f             	addr32 gs pop %rdi
ffff800000108b20:	66 61                	data16 (bad) 
ffff800000108b22:	75 6c                	jne    ffff800000108b90 <.LC24+0xc>
ffff800000108b24:	74 28                	je     ffff800000108b4e <.LC21+0x4>
ffff800000108b26:	31 34 29             	xor    %esi,(%rcx,%rbp,1)
ffff800000108b29:	2c 45                	sub    $0x45,%al
ffff800000108b2b:	52                   	push   %rdx
ffff800000108b2c:	52                   	push   %rdx
ffff800000108b2d:	4f 52                	rex.WRXB push %r10
ffff800000108b2f:	5f                   	pop    %rdi
ffff800000108b30:	43                   	rex.XB
ffff800000108b31:	4f                   	rex.WRXB
ffff800000108b32:	44                   	rex.R
ffff800000108b33:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d03a6 <_end+0x522c639e>
ffff800000108b3a:	53                   	push   %rbx
ffff800000108b3b:	50                   	push   %rax
ffff800000108b3c:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d03ae <_end+0x522c63a6>
ffff800000108b42:	49 50                	rex.WB push %r8
ffff800000108b44:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b03b6 <_end+0xa63ae>

ffff800000108b4a <.LC21>:
ffff800000108b4a:	50                   	push   %rax
ffff800000108b4b:	61                   	(bad)  
ffff800000108b4c:	67 65 20 4e 6f       	and    %cl,%gs:0x6f(%esi)
ffff800000108b51:	74 2d                	je     ffff800000108b80 <.LC23+0xf>
ffff800000108b53:	50                   	push   %rax
ffff800000108b54:	72 65                	jb     ffff800000108bbb <.LC26+0x9>
ffff800000108b56:	73 65                	jae    ffff800000108bbd <.LC26+0xb>
ffff800000108b58:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108b59:	74 2c                	je     ffff800000108b87 <.LC24+0x3>
ffff800000108b5b:	09 00                	or     %eax,(%rax)

ffff800000108b5d <.LC22>:
ffff800000108b5d:	57                   	push   %rdi
ffff800000108b5e:	72 69                	jb     ffff800000108bc9 <.LC26+0x17>
ffff800000108b60:	74 65                	je     ffff800000108bc7 <.LC26+0x15>
ffff800000108b62:	20 43 61             	and    %al,0x61(%rbx)
ffff800000108b65:	75 73                	jne    ffff800000108bda <.LC27+0xa>
ffff800000108b67:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000108b6b:	75 6c                	jne    ffff800000108bd9 <.LC27+0x9>
ffff800000108b6d:	74 2c                	je     ffff800000108b9b <.LC25+0x5>
ffff800000108b6f:	09 00                	or     %eax,(%rax)

ffff800000108b71 <.LC23>:
ffff800000108b71:	52                   	push   %rdx
ffff800000108b72:	65 61                	gs (bad) 
ffff800000108b74:	64 20 43 61          	and    %al,%fs:0x61(%rbx)
ffff800000108b78:	75 73                	jne    ffff800000108bed <.LC27+0x1d>
ffff800000108b7a:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000108b7e:	75 6c                	jne    ffff800000108bec <.LC27+0x1c>
ffff800000108b80:	74 2c                	je     ffff800000108bae <.LC25+0x18>
ffff800000108b82:	09 00                	or     %eax,(%rax)

ffff800000108b84 <.LC24>:
ffff800000108b84:	46 61                	rex.RX (bad) 
ffff800000108b86:	75 6c                	jne    ffff800000108bf4 <.LC29+0x3>
ffff800000108b88:	74 20                	je     ffff800000108baa <.LC25+0x14>
ffff800000108b8a:	69 6e 20 75 73 65 72 	imul   $0x72657375,0x20(%rsi),%ebp
ffff800000108b91:	28 33                	sub    %dh,(%rbx)
ffff800000108b93:	29 09                	sub    %ecx,(%rcx)
	...

ffff800000108b96 <.LC25>:
ffff800000108b96:	46 61                	rex.RX (bad) 
ffff800000108b98:	75 6c                	jne    ffff800000108c06 <.LC30+0x6>
ffff800000108b9a:	74 20                	je     ffff800000108bbc <.LC26+0xa>
ffff800000108b9c:	69 6e 20 73 75 70 65 	imul   $0x65707573,0x20(%rsi),%ebp
ffff800000108ba3:	72 76                	jb     ffff800000108c1b <.LC30+0x1b>
ffff800000108ba5:	69 73 6f 72 28 30 2c 	imul   $0x2c302872,0x6f(%rbx),%esi
ffff800000108bac:	31 2c 32             	xor    %ebp,(%rdx,%rsi,1)
ffff800000108baf:	29 09                	sub    %ecx,(%rcx)
	...

ffff800000108bb2 <.LC26>:
ffff800000108bb2:	2c 52                	sub    $0x52,%al
ffff800000108bb4:	65 73 65             	gs jae ffff800000108c1c <.LC30+0x1c>
ffff800000108bb7:	72 76                	jb     ffff800000108c2f <.LC30+0x2f>
ffff800000108bb9:	65 64 20 42 69       	gs and %al,%fs:0x69(%rdx)
ffff800000108bbe:	74 20                	je     ffff800000108be0 <.LC27+0x10>
ffff800000108bc0:	43 61                	rex.XB (bad) 
ffff800000108bc2:	75 73                	jne    ffff800000108c37 <.LC30+0x37>
ffff800000108bc4:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000108bc8:	75 6c                	jne    ffff800000108c36 <.LC30+0x36>
ffff800000108bca:	74 09                	je     ffff800000108bd5 <.LC27+0x5>
ffff800000108bcc:	00 00                	add    %al,(%rax)
	...

ffff800000108bd0 <.LC27>:
ffff800000108bd0:	2c 49                	sub    $0x49,%al
ffff800000108bd2:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108bd3:	73 74                	jae    ffff800000108c49 <.LC31+0x11>
ffff800000108bd5:	72 75                	jb     ffff800000108c4c <.LC31+0x14>
ffff800000108bd7:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff800000108bdb:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108bdc:	20 66 65             	and    %ah,0x65(%rsi)
ffff800000108bdf:	74 63                	je     ffff800000108c44 <.LC31+0xc>
ffff800000108be1:	68 20 43 61 75       	pushq  $0x75614320
ffff800000108be6:	73 65                	jae    ffff800000108c4d <.LC31+0x15>
ffff800000108be8:	20 46 61             	and    %al,0x61(%rsi)
ffff800000108beb:	75 6c                	jne    ffff800000108c59 <.LC31+0x21>
ffff800000108bed:	74 00                	je     ffff800000108bef <.LC28>

ffff800000108bef <.LC28>:
ffff800000108bef:	0a 00                	or     (%rax),%al

ffff800000108bf1 <.LC29>:
ffff800000108bf1:	43 52                	rex.XB push %r10
ffff800000108bf3:	32 3a                	xor    (%rdx),%bh
ffff800000108bf5:	25 6c 78 0a 00       	and    $0xa786c,%eax
ffff800000108bfa:	00 00                	add    %al,(%rax)
ffff800000108bfc:	00 00                	add    %al,(%rax)
	...

ffff800000108c00 <.LC30>:
ffff800000108c00:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108c02:	5f                   	pop    %rdi
ffff800000108c03:	78 38                	js     ffff800000108c3d <.LC31+0x5>
ffff800000108c05:	37                   	(bad)  
ffff800000108c06:	5f                   	pop    %rdi
ffff800000108c07:	46 50                	rex.RX push %rax
ffff800000108c09:	55                   	push   %rbp
ffff800000108c0a:	5f                   	pop    %rdi
ffff800000108c0b:	65 72 72             	gs jb  ffff800000108c80 <.LC32+0x10>
ffff800000108c0e:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108c0f:	72 28                	jb     ffff800000108c39 <.LC31+0x1>
ffff800000108c11:	31 36                	xor    %esi,(%rsi)
ffff800000108c13:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108c1a:	5f                   	pop    %rdi
ffff800000108c1b:	43                   	rex.XB
ffff800000108c1c:	4f                   	rex.WRXB
ffff800000108c1d:	44                   	rex.R
ffff800000108c1e:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0491 <_end+0x522c6489>
ffff800000108c25:	53                   	push   %rbx
ffff800000108c26:	50                   	push   %rax
ffff800000108c27:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0499 <_end+0x522c6491>
ffff800000108c2d:	49 50                	rex.WB push %r8
ffff800000108c2f:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b04a1 <_end+0xa6499>
ffff800000108c35:	00 00                	add    %al,(%rax)
	...

ffff800000108c38 <.LC31>:
ffff800000108c38:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108c3a:	5f                   	pop    %rdi
ffff800000108c3b:	61                   	(bad)  
ffff800000108c3c:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108c3d:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%rdi),%esp
ffff800000108c44:	5f                   	pop    %rdi
ffff800000108c45:	63 68 65             	movslq 0x65(%rax),%ebp
ffff800000108c48:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff800000108c4b:	31 37                	xor    %esi,(%rdi)
ffff800000108c4d:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108c54:	5f                   	pop    %rdi
ffff800000108c55:	43                   	rex.XB
ffff800000108c56:	4f                   	rex.WRXB
ffff800000108c57:	44                   	rex.R
ffff800000108c58:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d04cb <_end+0x522c64c3>
ffff800000108c5f:	53                   	push   %rbx
ffff800000108c60:	50                   	push   %rax
ffff800000108c61:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d04d3 <_end+0x522c64cb>
ffff800000108c67:	49 50                	rex.WB push %r8
ffff800000108c69:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b04db <_end+0xa64d3>
	...

ffff800000108c70 <.LC32>:
ffff800000108c70:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108c72:	5f                   	pop    %rdi
ffff800000108c73:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108c74:	61                   	(bad)  
ffff800000108c75:	63 68 69             	movslq 0x69(%rax),%ebp
ffff800000108c78:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108c79:	65 5f                	gs pop %rdi
ffff800000108c7b:	63 68 65             	movslq 0x65(%rax),%ebp
ffff800000108c7e:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff800000108c81:	31 38                	xor    %edi,(%rax)
ffff800000108c83:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108c8a:	5f                   	pop    %rdi
ffff800000108c8b:	43                   	rex.XB
ffff800000108c8c:	4f                   	rex.WRXB
ffff800000108c8d:	44                   	rex.R
ffff800000108c8e:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0501 <_end+0x522c64f9>
ffff800000108c95:	53                   	push   %rbx
ffff800000108c96:	50                   	push   %rax
ffff800000108c97:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0509 <_end+0x522c6501>
ffff800000108c9d:	49 50                	rex.WB push %r8
ffff800000108c9f:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0511 <_end+0xa6509>
ffff800000108ca5:	00 00                	add    %al,(%rax)
	...

ffff800000108ca8 <.LC33>:
ffff800000108ca8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108caa:	5f                   	pop    %rdi
ffff800000108cab:	53                   	push   %rbx
ffff800000108cac:	49                   	rex.WB
ffff800000108cad:	4d                   	rex.WRB
ffff800000108cae:	44 5f                	rex.R pop %rdi
ffff800000108cb0:	65 78 63             	gs js  ffff800000108d16 <.LC34+0x36>
ffff800000108cb3:	65 70 74             	gs jo  ffff800000108d2a <.LC0+0xa>
ffff800000108cb6:	69 6f 6e 28 31 39 29 	imul   $0x29393128,0x6e(%rdi),%ebp
ffff800000108cbd:	2c 45                	sub    $0x45,%al
ffff800000108cbf:	52                   	push   %rdx
ffff800000108cc0:	52                   	push   %rdx
ffff800000108cc1:	4f 52                	rex.WRXB push %r10
ffff800000108cc3:	5f                   	pop    %rdi
ffff800000108cc4:	43                   	rex.XB
ffff800000108cc5:	4f                   	rex.WRXB
ffff800000108cc6:	44                   	rex.R
ffff800000108cc7:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d053a <_end+0x522c6532>
ffff800000108cce:	53                   	push   %rbx
ffff800000108ccf:	50                   	push   %rax
ffff800000108cd0:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0542 <_end+0x522c653a>
ffff800000108cd6:	49 50                	rex.WB push %r8
ffff800000108cd8:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b054a <_end+0xa6542>
	...

ffff800000108ce0 <.LC34>:
ffff800000108ce0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108ce2:	5f                   	pop    %rdi
ffff800000108ce3:	76 69                	jbe    ffff800000108d4e <.LC0+0x9>
ffff800000108ce5:	72 74                	jb     ffff800000108d5b <.LC1+0x2>
ffff800000108ce7:	75 61                	jne    ffff800000108d4a <.LC0+0x5>
ffff800000108ce9:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108cea:	69 7a 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rdx),%edi
ffff800000108cf1:	5f                   	pop    %rdi
ffff800000108cf2:	65 78 63             	gs js  ffff800000108d58 <.LC0+0x13>
ffff800000108cf5:	65 70 74             	gs jo  ffff800000108d6c <.LC1+0x13>
ffff800000108cf8:	69 6f 6e 28 32 30 29 	imul   $0x29303228,0x6e(%rdi),%ebp
ffff800000108cff:	2c 45                	sub    $0x45,%al
ffff800000108d01:	52                   	push   %rdx
ffff800000108d02:	52                   	push   %rdx
ffff800000108d03:	4f 52                	rex.WRXB push %r10
ffff800000108d05:	5f                   	pop    %rdi
ffff800000108d06:	43                   	rex.XB
ffff800000108d07:	4f                   	rex.WRXB
ffff800000108d08:	44                   	rex.R
ffff800000108d09:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d057c <_end+0x522c6574>
ffff800000108d10:	53                   	push   %rbx
ffff800000108d11:	50                   	push   %rax
ffff800000108d12:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0584 <_end+0x522c657c>
ffff800000108d18:	49 50                	rex.WB push %r8
ffff800000108d1a:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b058c <_end+0xa6584>

ffff800000108d20 <.LC0>:
ffff800000108d20:	54                   	push   %rsp
ffff800000108d21:	69 6d 65 72 20 69 6e 	imul   $0x6e692072,0x65(%rbp),%ebp
ffff800000108d28:	74 65                	je     ffff800000108d8f <.LC1+0x7>
ffff800000108d2a:	72 72                	jb     ffff800000108d9e <.LC1+0x16>
ffff800000108d2c:	75 70                	jne    ffff800000108d9e <.LC1+0x16>
ffff800000108d2e:	74 0a                	je     ffff800000108d3a <.LC2+0x6>
	...

ffff800000108d31 <.LC1>:
ffff800000108d31:	25 78 00         	and    $0x6f4d0078,%eax

ffff800000108d34 <.LC2>:
ffff800000108d34:	4d 6f                	rex.WRB outsl %ds:(%rsi),(%dx)
ffff800000108d36:	75 73                	jne    ffff800000108dab <.LC1+0x23>
ffff800000108d38:	65 20 69 6e          	and    %ch,%gs:0x6e(%rcx)
ffff800000108d3c:	74 65                	je     ffff800000108da3 <.LC1+0x1b>
ffff800000108d3e:	72 72                	jb     ffff800000108db2 <.LC1+0x2a>
ffff800000108d40:	75 70                	jne    ffff800000108db2 <.LC1+0x2a>
ffff800000108d42:	74 0a                	je     ffff800000108d4e <.LC0+0x9>
	...

ffff800000108d45 <.LC0>:
ffff800000108d45:	54                   	push   %rsp
ffff800000108d46:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108d47:	74 61                	je     ffff800000108daa <.LC1+0x22>
ffff800000108d49:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108d4a:	20 6d 65             	and    %ch,0x65(%rbp)
ffff800000108d4d:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108d4e:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108d4f:	72 79                	jb     ffff800000108dca <.LC2+0x12>
ffff800000108d51:	3a 20                	cmp    (%rax),%ah
ffff800000108d53:	25 64 4d 42 0a       	and    $0xa424d64,%eax
	...

ffff800000108d59 <.LC1>:
ffff800000108d59:	46 72 65             	rex.RX jb ffff800000108dc1 <.LC2+0x9>
ffff800000108d5c:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff800000108d60:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108d61:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108d62:	72 79                	jb     ffff800000108ddd <.LC2+0x25>
ffff800000108d64:	20 72 61             	and    %dh,0x61(%rdx)
ffff800000108d67:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108d68:	67 65 3a 20          	cmp    %gs:(%eax),%ah
ffff800000108d6c:	25 6c 78 20 2d       	and    $0x2d20786c,%eax
ffff800000108d71:	20 25 6c 78 0a 00    	and    %ah,0xa786c(%rip)        # ffff8000001b05e3 <_end+0xa65db>

ffff800000108d77 <.LC2>:
ffff800000108d77:	6b 66 72 65          	imul   $0x65,0x72(%rsi),%esp
ffff800000108d7b:	65 00 00             	add    %al,%gs:(%rax)
	...

ffff800000108d80 <.LC0>:
	...

ffff800000108d88 <.LC1>:
ffff800000108d88:	4e                   	rex.WRX
ffff800000108d89:	65 77 20             	gs ja  ffff800000108dac <.LC1+0x24>
ffff800000108d8c:	61                   	(bad)  
ffff800000108d8d:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108d8e:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108d8f:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108d90:	63 61 74             	movslq 0x74(%rcx),%esp
ffff800000108d93:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff800000108d97:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108d98:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108d99:	72 79                	jb     ffff800000108e14 <GDT64_Table+0x2c>
ffff800000108d9b:	20 62 65             	and    %ah,0x65(%rdx)
ffff800000108d9e:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff800000108da5:	20 
ffff800000108da6:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff800000108dab:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff800000108db2:	0a 00                	or     (%rax),%al
ffff800000108db4:	00 00                	add    %al,(%rax)
	...

ffff800000108db8 <.LC2>:
ffff800000108db8:	54                   	push   %rsp
ffff800000108db9:	68 65 20 6e 65       	pushq  $0x656e2065
ffff800000108dbe:	77 20                	ja     ffff800000108de0 <.LC2+0x28>
ffff800000108dc0:	66 72 65             	data16 jb ffff800000108e28 <GDT64_Table+0x40>
ffff800000108dc3:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff800000108dc7:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108dc8:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108dc9:	72 79                	jb     ffff800000108e44 <GDT64_Table+0x5c>
ffff800000108dcb:	20 62 65             	and    %ah,0x65(%rdx)
ffff800000108dce:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff800000108dd5:	20 
ffff800000108dd6:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff800000108ddb:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff800000108de2:	0a 00                	or     (%rax),%al

Disassembly of section .data:

ffff800000108de8 <GDT64_Table>:
	...
ffff800000108df4:	00 98 20 00 00 00    	add    %bl,0x20(%rax)
ffff800000108dfa:	00 00                	add    %al,(%rax)
ffff800000108dfc:	00 92 00 00 00 00    	add    %dl,0x0(%rdx)
ffff800000108e02:	00 00                	add    %al,(%rax)
ffff800000108e04:	00 f8                	add    %bh,%al
ffff800000108e06:	20 00                	and    %al,(%rax)
ffff800000108e08:	00 00                	add    %al,(%rax)
ffff800000108e0a:	00 00                	add    %al,(%rax)
ffff800000108e0c:	00 f2                	add    %dh,%dl
ffff800000108e0e:	00 00                	add    %al,(%rax)
ffff800000108e10:	ff                   	(bad)  
ffff800000108e11:	ff 00                	incl   (%rax)
ffff800000108e13:	00 00                	add    %al,(%rax)
ffff800000108e15:	9a                   	(bad)  
ffff800000108e16:	cf                   	iret   
ffff800000108e17:	00 ff                	add    %bh,%bh
ffff800000108e19:	ff 00                	incl   (%rax)
ffff800000108e1b:	00 00                	add    %al,(%rax)
ffff800000108e1d:	92                   	xchg   %eax,%edx
ffff800000108e1e:	cf                   	iret   
	...

ffff800000108e70 <GDT6464_LIMIT>:
ffff800000108e70:	87 00                	xchg   %eax,(%rax)

ffff800000108e72 <GDT64_BASE>:
ffff800000108e72:	e8 8d 10 00 00       	callq  ffff800000109f04 <.got+0x14>
ffff800000108e77:	80 ff ff             	cmp    $0xff,%bh

ffff800000108e7a <IDT64_Table>:
	...

ffff800000109e7a <IDT64_END>:
ffff800000109e7a:	ff 0f                	decl   (%rdi)

ffff800000109e7c <IDT64_BASE>:
ffff800000109e7c:	7a 8e                	jp     ffff800000109e0c <IDT64_Table+0xf92>
ffff800000109e7e:	10 00                	adc    %al,(%rax)
ffff800000109e80:	00 80 ff ff      	add    %al,0xffff(%rax)

ffff800000109e84 <TSS64_Table>:
	...

Disassembly of section .got:

ffff800000109ef0 <.got>:
ffff800000109ef0:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109ef1:	40 10 00             	adc    %al,(%rax)
ffff800000109ef4:	00 80 ff ff 58 41    	add    %al,0x4158ffff(%rax)
ffff800000109efa:	10 00                	adc    %al,(%rax)
ffff800000109efc:	00 80 ff ff b5 40    	add    %al,0x40b5ffff(%rax)
ffff800000109f02:	10 00                	adc    %al,(%rax)
ffff800000109f04:	00 80 ff ff 7c 40    	add    %al,0x407cffff(%rax)
ffff800000109f0a:	10 00                	adc    %al,(%rax)
ffff800000109f0c:	00 80 ff ff c8 40    	add    %al,0x40c8ffff(%rax)
ffff800000109f12:	10 00                	adc    %al,(%rax)
ffff800000109f14:	00 80 ff ff 25 41    	add    %al,0x4125ffff(%rax)
ffff800000109f1a:	10 00                	adc    %al,(%rax)
ffff800000109f1c:	00 80 ff ff 7a 8e    	add    %al,-0x71850001(%rax)
ffff800000109f22:	10 00                	adc    %al,(%rax)
ffff800000109f24:	00 80 ff ff 36 41    	add    %al,0x4136ffff(%rax)
ffff800000109f2a:	10 00                	adc    %al,(%rax)
ffff800000109f2c:	00 80 ff ff 47 41    	add    %al,0x4147ffff(%rax)
ffff800000109f32:	10 00                	adc    %al,(%rax)
ffff800000109f34:	00 80 ff ff 00 a0    	add    %al,-0x5fff0001(%rax)
ffff800000109f3a:	10 00                	adc    %al,(%rax)
ffff800000109f3c:	00 80 ff ff db 40    	add    %al,0x40dbffff(%rax)
ffff800000109f42:	10 00                	adc    %al,(%rax)
ffff800000109f44:	00 80 ff ff 84 9e    	add    %al,-0x617b0001(%rax)
ffff800000109f4a:	10 00                	adc    %al,(%rax)
ffff800000109f4c:	00 80 ff ff 8d 41    	add    %al,0x418dffff(%rax)
ffff800000109f52:	10 00                	adc    %al,(%rax)
ffff800000109f54:	00 80 ff ff 7a 41    	add    %al,0x417affff(%rax)
ffff800000109f5a:	10 00                	adc    %al,(%rax)
ffff800000109f5c:	00 80 ff ff 01 41    	add    %al,0x4101ffff(%rax)
ffff800000109f62:	10 00                	adc    %al,(%rax)
ffff800000109f64:	00 80 ff ff 1c 42    	add    %al,0x421cffff(%rax)
ffff800000109f6a:	10 00                	adc    %al,(%rax)
ffff800000109f6c:	00 80 ff ff e8 8d    	add    %al,-0x72170001(%rax)
ffff800000109f72:	10 00                	adc    %al,(%rax)
ffff800000109f74:	00 80 ff ff 3d 42    	add    %al,0x423dffff(%rax)
ffff800000109f7a:	10 00                	adc    %al,(%rax)
ffff800000109f7c:	00 80 ff ff c4 41    	add    %al,0x41c4ffff(%rax)
ffff800000109f82:	10 00                	adc    %al,(%rax)
ffff800000109f84:	00 80 ff ff 12 41    	add    %al,0x4112ffff(%rax)
ffff800000109f8a:	10 00                	adc    %al,(%rax)
ffff800000109f8c:	00 80 ff ff 69 41    	add    %al,0x4169ffff(%rax)
ffff800000109f92:	10 00                	adc    %al,(%rax)
ffff800000109f94:	00 80 ff ff 08 a0    	add    %al,-0x5ff70001(%rax)
ffff800000109f9a:	10 00                	adc    %al,(%rax)
ffff800000109f9c:	00 80 ff ff 9e 41    	add    %al,0x419effff(%rax)
ffff800000109fa2:	10 00                	adc    %al,(%rax)
ffff800000109fa4:	00 80 ff ff 5e 42    	add    %al,0x425effff(%rax)
ffff800000109faa:	10 00                	adc    %al,(%rax)
ffff800000109fac:	00 80 ff ff b1 41    	add    %al,0x41b1ffff(%rax)
ffff800000109fb2:	10 00                	adc    %al,(%rax)
ffff800000109fb4:	00 80 ff ff 8f 40    	add    %al,0x408fffff(%rax)
ffff800000109fba:	10 00                	adc    %al,(%rax)
ffff800000109fbc:	00 80 ff ff ee 40    	add    %al,0x40eeffff(%rax)
ffff800000109fc2:	10 00                	adc    %al,(%rax)
ffff800000109fc4:	00 80 ff ff a2 40    	add    %al,0x40a2ffff(%rax)
ffff800000109fca:	10 00                	adc    %al,(%rax)
ffff800000109fcc:	00                   	.byte 0x0
ffff800000109fcd:	80 ff ff             	cmp    $0xff,%bh

Disassembly of section .got.plt:

ffff800000109fd0 <_GLOBAL_OFFSET_TABLE_>:
	...

Disassembly of section .bss:

ffff800000109fe8 <pos>:
	...

ffff800000109ff0 <total>:
	...

ffff800000109ff8 <kmem>:
	...

ffff80000010a000 <cache_chain>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <RCX>
   a:	74 75                	je     81 <RAX+0x1>
   c:	20 39                	and    %bh,(%rcx)
   e:	2e 34 2e             	cs xor $0x2e,%al
  11:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627548 <OLDSS+0x75627490>
  17:	6e                   	outsb  %ds:(%rsi),(%dx)
  18:	74 75                	je     8f <FUNC+0x7>
  1a:	31 7e 32             	xor    %edi,0x32(%rsi)
  1d:	30 2e                	xor    %ch,(%rsi)
  1f:	30 34 2e             	xor    %dh,(%rsi,%rbp,1)
  22:	32 29                	xor    (%rcx),%ch
  24:	20 39                	and    %bh,(%rcx)
  26:	2e 34 2e             	cs xor $0x2e,%al
  29:	30 00                	xor    %al,(%rax)
