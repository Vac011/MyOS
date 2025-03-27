
kernel/kernel:     file format elf64-x86-64


Disassembly of section .text:

ffff800000100000 <_start>:
ffff800000100000:	66 b8 10 00          	mov    $0x10,%ax
ffff800000100004:	8e d8                	mov    %eax,%ds
ffff800000100006:	8e c0                	mov    %eax,%es
ffff800000100008:	8e e0                	mov    %eax,%fs
ffff80000010000a:	8e d0                	mov    %eax,%ss
ffff80000010000c:	bc 00 7e 00 00       	mov    $0x7e00,%esp
ffff800000100011:	0f 01 15 50 97 00 00 	lgdt   0x9750(%rip)        # ffff800000109768 <GDT6464_LIMIT>
ffff800000100018:	0f 01 1d 53 a7 00 00 	lidt   0xa753(%rip)        # ffff80000010a772 <IDT64_END>
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
ffff80000010406f:	48 8d 05 fc 1e 00 00 	lea    0x1efc(%rip),%rax        # ffff800000105f72 <do_divide_error>
ffff800000104076:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010407a:	eb 84                	jmp    ffff800000104000 <enter_exception>

ffff80000010407c <debug>:
ffff80000010407c:	6a 00                	pushq  $0x0
ffff80000010407e:	50                   	push   %rax
ffff80000010407f:	48 8d 05 6a 1f 00 00 	lea    0x1f6a(%rip),%rax        # ffff800000105ff0 <do_debug>
ffff800000104086:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010408a:	e9 71 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010408f <nmi>:
ffff80000010408f:	6a 00                	pushq  $0x0
ffff800000104091:	50                   	push   %rax
ffff800000104092:	48 8d 05 d5 1f 00 00 	lea    0x1fd5(%rip),%rax        # ffff80000010606e <do_nmi>
ffff800000104099:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010409d:	e9 5e ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040a2 <int3>:
ffff8000001040a2:	6a 00                	pushq  $0x0
ffff8000001040a4:	50                   	push   %rax
ffff8000001040a5:	48 8d 05 40 20 00 00 	lea    0x2040(%rip),%rax        # ffff8000001060ec <do_int3>
ffff8000001040ac:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040b0:	e9 4b ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040b5 <overflow>:
ffff8000001040b5:	6a 00                	pushq  $0x0
ffff8000001040b7:	50                   	push   %rax
ffff8000001040b8:	48 8d 05 ab 20 00 00 	lea    0x20ab(%rip),%rax        # ffff80000010616a <do_overflow>
ffff8000001040bf:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040c3:	e9 38 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040c8 <bounds>:
ffff8000001040c8:	6a 00                	pushq  $0x0
ffff8000001040ca:	50                   	push   %rax
ffff8000001040cb:	48 8d 05 16 21 00 00 	lea    0x2116(%rip),%rax        # ffff8000001061e8 <do_bounds>
ffff8000001040d2:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040d6:	e9 25 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040db <undefined_opcode>:
ffff8000001040db:	6a 00                	pushq  $0x0
ffff8000001040dd:	50                   	push   %rax
ffff8000001040de:	48 8d 05 81 21 00 00 	lea    0x2181(%rip),%rax        # ffff800000106266 <do_undefined_opcode>
ffff8000001040e5:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040e9:	e9 12 ff ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001040ee <dev_not_available>:
ffff8000001040ee:	6a 00                	pushq  $0x0
ffff8000001040f0:	50                   	push   %rax
ffff8000001040f1:	48 8d 05 ec 21 00 00 	lea    0x21ec(%rip),%rax        # ffff8000001062e4 <do_dev_not_available>
ffff8000001040f8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001040fc:	e9 ff fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104101 <double_fault>:
ffff800000104101:	50                   	push   %rax
ffff800000104102:	48 8d 05 59 22 00 00 	lea    0x2259(%rip),%rax        # ffff800000106362 <do_double_fault>
ffff800000104109:	48 87 04 24          	xchg   %rax,(%rsp)
ffff80000010410d:	e9 ee fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104112 <coprocessor_segment_overrun>:
ffff800000104112:	6a 00                	pushq  $0x0
ffff800000104114:	50                   	push   %rax
ffff800000104115:	48 8d 05 c4 22 00 00 	lea    0x22c4(%rip),%rax        # ffff8000001063e0 <do_coprocessor_segment_overrun>
ffff80000010411c:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104120:	e9 db fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104125 <invalid_TSS>:
ffff800000104125:	50                   	push   %rax
ffff800000104126:	48 8d 05 31 23 00 00 	lea    0x2331(%rip),%rax        # ffff80000010645e <do_invalid_TSS>
ffff80000010412d:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104131:	e9 ca fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104136 <segment_not_present>:
ffff800000104136:	50                   	push   %rax
ffff800000104137:	48 8d 05 bd 24 00 00 	lea    0x24bd(%rip),%rax        # ffff8000001065fb <do_segment_not_present>
ffff80000010413e:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104142:	e9 b9 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104147 <stack_segment_fault>:
ffff800000104147:	50                   	push   %rax
ffff800000104148:	48 8d 05 49 26 00 00 	lea    0x2649(%rip),%rax        # ffff800000106798 <do_stack_segment_fault>
ffff80000010414f:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104153:	e9 a8 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104158 <general_protection>:
ffff800000104158:	50                   	push   %rax
ffff800000104159:	48 8d 05 d5 27 00 00 	lea    0x27d5(%rip),%rax        # ffff800000106935 <do_general_protection>
ffff800000104160:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104164:	e9 97 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff800000104169 <page_fault>:
ffff800000104169:	50                   	push   %rax
ffff80000010416a:	48 8d 05 61 29 00 00 	lea    0x2961(%rip),%rax        # ffff800000106ad2 <do_page_fault>
ffff800000104171:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104175:	e9 86 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010417a <x87_FPU_error>:
ffff80000010417a:	6a 00                	pushq  $0x0
ffff80000010417c:	50                   	push   %rax
ffff80000010417d:	48 8d 05 70 2b 00 00 	lea    0x2b70(%rip),%rax        # ffff800000106cf4 <do_x87_FPU_error>
ffff800000104184:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104188:	e9 73 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010418d <alignment_check>:
ffff80000010418d:	50                   	push   %rax
ffff80000010418e:	48 8d 05 dd 2b 00 00 	lea    0x2bdd(%rip),%rax        # ffff800000106d72 <do_alignment_check>
ffff800000104195:	48 87 04 24          	xchg   %rax,(%rsp)
ffff800000104199:	e9 62 fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff80000010419e <machine_check>:
ffff80000010419e:	6a 00                	pushq  $0x0
ffff8000001041a0:	50                   	push   %rax
ffff8000001041a1:	48 8d 05 48 2c 00 00 	lea    0x2c48(%rip),%rax        # ffff800000106df0 <do_machine_check>
ffff8000001041a8:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041ac:	e9 4f fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041b1 <SIMD_exception>:
ffff8000001041b1:	6a 00                	pushq  $0x0
ffff8000001041b3:	50                   	push   %rax
ffff8000001041b4:	48 8d 05 b3 2c 00 00 	lea    0x2cb3(%rip),%rax        # ffff800000106e6e <do_SIMD_exception>
ffff8000001041bb:	48 87 04 24          	xchg   %rax,(%rsp)
ffff8000001041bf:	e9 3c fe ff ff       	jmpq   ffff800000104000 <enter_exception>

ffff8000001041c4 <virtualization_exception>:
ffff8000001041c4:	6a 00                	pushq  $0x0
ffff8000001041c6:	50                   	push   %rax
ffff8000001041c7:	48 8d 05 1e 2d 00 00 	lea    0x2d1e(%rip),%rax        # ffff800000106eec <do_virtualization_exception>
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
ffff80000010422c:	48 8d 15 95 2f 00 00 	lea    0x2f95(%rip),%rdx        # ffff8000001071c8 <do_irq0x20>
ffff800000104233:	48 8d 0d c1 ff ff ff 	lea    -0x3f(%rip),%rcx        # ffff8000001041fb <ret_from_intr>
ffff80000010423a:	51                   	push   %rcx
ffff80000010423b:	ff e2                	jmpq   *%rdx

ffff80000010423d <irq0x21>:
ffff80000010423d:	e8 95 ff ff ff       	callq  ffff8000001041d7 <save_all>
ffff800000104242:	fc                   	cld    
ffff800000104243:	48 89 e7             	mov    %rsp,%rdi
ffff800000104246:	48 c7 c6 21 00 00 00 	mov    $0x21,%rsi
ffff80000010424d:	48 8d 15 dc 2f 00 00 	lea    0x2fdc(%rip),%rdx        # ffff800000107230 <do_irq0x21>
ffff800000104254:	48 8d 0d a0 ff ff ff 	lea    -0x60(%rip),%rcx        # ffff8000001041fb <ret_from_intr>
ffff80000010425b:	51                   	push   %rcx
ffff80000010425c:	ff e2                	jmpq   *%rdx

ffff80000010425e <irq0x2c>:
ffff80000010425e:	e8 74 ff ff ff       	callq  ffff8000001041d7 <save_all>
ffff800000104263:	fc                   	cld    
ffff800000104264:	48 89 e7             	mov    %rsp,%rdi
ffff800000104267:	48 c7 c6 22 00 00 00 	mov    $0x22,%rsi
ffff80000010426e:	48 8d 15 52 30 00 00 	lea    0x3052(%rip),%rdx        # ffff8000001072c7 <do_irq0x2c>
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
ffff800000104295:	49 bb 46 66 00 00 00 	movabs $0x6646,%r11
ffff80000010429c:	00 00 00 
ffff80000010429f:	4c 01 db             	add    %r11,%rbx
ffff8000001042a2:	be 08 00 00 00       	mov    $0x8,%esi
ffff8000001042a7:	48 bf 00 7c 00 00 00 	movabs $0xffff800000007c00,%rdi
ffff8000001042ae:	80 ff ff 
ffff8000001042b1:	49 89 df             	mov    %rbx,%r15
ffff8000001042b4:	48 b8 53 ab ff ff ff 	movabs $0xffffffffffffab53,%rax
ffff8000001042bb:	ff ff ff 
ffff8000001042be:	48 01 d8             	add    %rbx,%rax
ffff8000001042c1:	ff d0                	callq  *%rax
ffff8000001042c3:	49 89 df             	mov    %rbx,%r15
ffff8000001042c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042cb:	48 ba 87 ae ff ff ff 	movabs $0xffffffffffffae87,%rdx
ffff8000001042d2:	ff ff ff 
ffff8000001042d5:	48 01 da             	add    %rbx,%rdx
ffff8000001042d8:	ff d2                	callq  *%rdx
ffff8000001042da:	49 89 df             	mov    %rbx,%r15
ffff8000001042dd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042e2:	48 ba 13 c7 ff ff ff 	movabs $0xffffffffffffc713,%rdx
ffff8000001042e9:	ff ff ff 
ffff8000001042ec:	48 01 da             	add    %rbx,%rdx
ffff8000001042ef:	ff d2                	callq  *%rdx
ffff8000001042f1:	49 89 df             	mov    %rbx,%r15
ffff8000001042f4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001042f9:	48 ba 79 ca ff ff ff 	movabs $0xffffffffffffca79,%rdx
ffff800000104300:	ff ff ff 
ffff800000104303:	48 01 da             	add    %rbx,%rdx
ffff800000104306:	ff d2                	callq  *%rdx
ffff800000104308:	49 89 df             	mov    %rbx,%r15
ffff80000010430b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104310:	48 ba ff a8 ff ff ff 	movabs $0xffffffffffffa8ff,%rdx
ffff800000104317:	ff ff ff 
ffff80000010431a:	48 01 da             	add    %rbx,%rdx
ffff80000010431d:	ff d2                	callq  *%rdx
ffff80000010431f:	eb fe                	jmp    ffff80000010431f <main+0xa0>

ffff800000104321 <itoa>:
ffff800000104321:	f3 0f 1e fa          	endbr64 
ffff800000104325:	55                   	push   %rbp
ffff800000104326:	48 89 e5             	mov    %rsp,%rbp
ffff800000104329:	f3 0f 1e fa          	endbr64 
ffff80000010432d:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104329 <itoa+0x8>
ffff800000104334:	49 bb a7 65 00 00 00 	movabs $0x65a7,%r11
ffff80000010433b:	00 00 00 
ffff80000010433e:	4c 01 d8             	add    %r11,%rax
ffff800000104341:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
ffff800000104345:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
ffff800000104349:	89 55 9c             	mov    %edx,-0x64(%rbp)
ffff80000010434c:	48 b8 30 31 32 33 34 	movabs $0x3736353433323130,%rax
ffff800000104353:	35 36 37 
ffff800000104356:	48 ba 38 39 41 42 43 	movabs $0x4645444342413938,%rdx
ffff80000010435d:	44 45 46 
ffff800000104360:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000104364:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000104368:	c6 45 e0 00          	movb   $0x0,-0x20(%rbp)
ffff80000010436c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104373:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
ffff80000010437a:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
ffff80000010437f:	79 0d                	jns    ffff80000010438e <itoa+0x6d>
ffff800000104381:	83 7d 9c 0a          	cmpl   $0xa,-0x64(%rbp)
ffff800000104385:	75 07                	jne    ffff80000010438e <itoa+0x6d>
ffff800000104387:	b8 01 00 00 00       	mov    $0x1,%eax
ffff80000010438c:	eb 05                	jmp    ffff800000104393 <itoa+0x72>
ffff80000010438e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104393:	89 45 f4             	mov    %eax,-0xc(%rbp)
ffff800000104396:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff80000010439a:	74 04                	je     ffff8000001043a0 <itoa+0x7f>
ffff80000010439c:	48 f7 5d a8          	negq   -0x58(%rbp)
ffff8000001043a0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
ffff8000001043a4:	ba 00 00 00 00       	mov    $0x0,%edx
ffff8000001043a9:	8b 4d 9c             	mov    -0x64(%rbp),%ecx
ffff8000001043ac:	48 f7 f1             	div    %rcx
ffff8000001043af:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
ffff8000001043b3:	89 55 f0             	mov    %edx,-0x10(%rbp)
ffff8000001043b6:	8b 4d f0             	mov    -0x10(%rbp),%ecx
ffff8000001043b9:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043bc:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043bf:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001043c2:	48 63 d1             	movslq %ecx,%rdx
ffff8000001043c5:	0f b6 54 15 d0       	movzbl -0x30(%rbp,%rdx,1),%edx
ffff8000001043ca:	48 98                	cltq   
ffff8000001043cc:	88 54 05 b0          	mov    %dl,-0x50(%rbp,%rax,1)
ffff8000001043d0:	48 83 7d a8 00       	cmpq   $0x0,-0x58(%rbp)
ffff8000001043d5:	75 c9                	jne    ffff8000001043a0 <itoa+0x7f>
ffff8000001043d7:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
ffff8000001043db:	74 35                	je     ffff800000104412 <itoa+0xf1>
ffff8000001043dd:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001043e0:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043e3:	89 55 fc             	mov    %edx,-0x4(%rbp)
ffff8000001043e6:	48 98                	cltq   
ffff8000001043e8:	c6 44 05 b0 2d       	movb   $0x2d,-0x50(%rbp,%rax,1)
ffff8000001043ed:	eb 23                	jmp    ffff800000104412 <itoa+0xf1>
ffff8000001043ef:	83 6d fc 01          	subl   $0x1,-0x4(%rbp)
ffff8000001043f3:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff8000001043f6:	8d 50 01             	lea    0x1(%rax),%edx
ffff8000001043f9:	89 55 f8             	mov    %edx,-0x8(%rbp)
ffff8000001043fc:	48 63 d0             	movslq %eax,%rdx
ffff8000001043ff:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104403:	48 01 c2             	add    %rax,%rdx
ffff800000104406:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000104409:	48 98                	cltq   
ffff80000010440b:	0f b6 44 05 b0       	movzbl -0x50(%rbp,%rax,1),%eax
ffff800000104410:	88 02                	mov    %al,(%rdx)
ffff800000104412:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
ffff800000104416:	7f d7                	jg     ffff8000001043ef <itoa+0xce>
ffff800000104418:	8b 45 f8             	mov    -0x8(%rbp),%eax
ffff80000010441b:	48 63 d0             	movslq %eax,%rdx
ffff80000010441e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
ffff800000104422:	48 01 d0             	add    %rdx,%rax
ffff800000104425:	c6 00 00             	movb   $0x0,(%rax)
ffff800000104428:	90                   	nop
ffff800000104429:	5d                   	pop    %rbp
ffff80000010442a:	c3                   	retq   

ffff80000010442b <vsnprintf>:
ffff80000010442b:	f3 0f 1e fa          	endbr64 
ffff80000010442f:	55                   	push   %rbp
ffff800000104430:	48 89 e5             	mov    %rsp,%rbp
ffff800000104433:	53                   	push   %rbx
ffff800000104434:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
ffff800000104438:	f3 0f 1e fa          	endbr64 
ffff80000010443c:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104438 <vsnprintf+0xd>
ffff800000104443:	49 bb 98 64 00 00 00 	movabs $0x6498,%r11
ffff80000010444a:	00 00 00 
ffff80000010444d:	4c 01 db             	add    %r11,%rbx
ffff800000104450:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
ffff800000104454:	48 89 75 88          	mov    %rsi,-0x78(%rbp)
ffff800000104458:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
ffff80000010445c:	48 89 8d 78 ff ff ff 	mov    %rcx,-0x88(%rbp)
ffff800000104463:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
ffff80000010446a:	00 
ffff80000010446b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104472:	00 
ffff800000104473:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff80000010447a:	e9 bf 04 00 00       	jmpq   ffff80000010493e <vsnprintf+0x513>
ffff80000010447f:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104483:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104487:	48 01 d0             	add    %rdx,%rax
ffff80000010448a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010448d:	3c 25                	cmp    $0x25,%al
ffff80000010448f:	0f 85 80 04 00 00    	jne    ffff800000104915 <vsnprintf+0x4ea>
ffff800000104495:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104499:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010449d:	48 8b 45 80          	mov    -0x80(%rbp),%rax
ffff8000001044a1:	48 01 d0             	add    %rdx,%rax
ffff8000001044a4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044a7:	84 c0                	test   %al,%al
ffff8000001044a9:	0f 84 66 04 00 00    	je     ffff800000104915 <vsnprintf+0x4ea>
ffff8000001044af:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001044b4:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
ffff8000001044bb:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001044bf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001044c3:	48 01 d0             	add    %rdx,%rax
ffff8000001044c6:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044c9:	3c 6c                	cmp    $0x6c,%al
ffff8000001044cb:	75 0c                	jne    ffff8000001044d9 <vsnprintf+0xae>
ffff8000001044cd:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%rbp)
ffff8000001044d4:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001044d9:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001044dd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001044e1:	48 01 d0             	add    %rdx,%rax
ffff8000001044e4:	0f b6 00             	movzbl (%rax),%eax
ffff8000001044e7:	0f be c0             	movsbl %al,%eax
ffff8000001044ea:	83 f8 78             	cmp    $0x78,%eax
ffff8000001044ed:	0f 84 9a 02 00 00    	je     ffff80000010478d <vsnprintf+0x362>
ffff8000001044f3:	83 f8 78             	cmp    $0x78,%eax
ffff8000001044f6:	0f 8f d4 03 00 00    	jg     ffff8000001048d0 <vsnprintf+0x4a5>
ffff8000001044fc:	83 f8 73             	cmp    $0x73,%eax
ffff8000001044ff:	0f 84 97 00 00 00    	je     ffff80000010459c <vsnprintf+0x171>
ffff800000104505:	83 f8 73             	cmp    $0x73,%eax
ffff800000104508:	0f 8f c2 03 00 00    	jg     ffff8000001048d0 <vsnprintf+0x4a5>
ffff80000010450e:	83 f8 63             	cmp    $0x63,%eax
ffff800000104511:	74 0e                	je     ffff800000104521 <vsnprintf+0xf6>
ffff800000104513:	83 f8 64             	cmp    $0x64,%eax
ffff800000104516:	0f 84 27 01 00 00    	je     ffff800000104643 <vsnprintf+0x218>
ffff80000010451c:	e9 af 03 00 00       	jmpq   ffff8000001048d0 <vsnprintf+0x4a5>
ffff800000104521:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104528:	8b 00                	mov    (%rax),%eax
ffff80000010452a:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010452d:	77 30                	ja     ffff80000010455f <vsnprintf+0x134>
ffff80000010452f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104536:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff80000010453a:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104541:	8b 00                	mov    (%rax),%eax
ffff800000104543:	89 c0                	mov    %eax,%eax
ffff800000104545:	48 01 d0             	add    %rdx,%rax
ffff800000104548:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010454f:	8b 12                	mov    (%rdx),%edx
ffff800000104551:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104554:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010455b:	89 0a                	mov    %ecx,(%rdx)
ffff80000010455d:	eb 1a                	jmp    ffff800000104579 <vsnprintf+0x14e>
ffff80000010455f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104566:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010456a:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010456e:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104575:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104579:	8b 00                	mov    (%rax),%eax
ffff80000010457b:	88 45 c7             	mov    %al,-0x39(%rbp)
ffff80000010457e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104582:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104586:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010458a:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010458e:	48 01 c2             	add    %rax,%rdx
ffff800000104591:	0f b6 45 c7          	movzbl -0x39(%rbp),%eax
ffff800000104595:	88 02                	mov    %al,(%rdx)
ffff800000104597:	e9 77 03 00 00       	jmpq   ffff800000104913 <vsnprintf+0x4e8>
ffff80000010459c:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045a3:	8b 00                	mov    (%rax),%eax
ffff8000001045a5:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001045a8:	77 30                	ja     ffff8000001045da <vsnprintf+0x1af>
ffff8000001045aa:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045b1:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001045b5:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045bc:	8b 00                	mov    (%rax),%eax
ffff8000001045be:	89 c0                	mov    %eax,%eax
ffff8000001045c0:	48 01 d0             	add    %rdx,%rax
ffff8000001045c3:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045ca:	8b 12                	mov    (%rdx),%edx
ffff8000001045cc:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001045cf:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045d6:	89 0a                	mov    %ecx,(%rdx)
ffff8000001045d8:	eb 1a                	jmp    ffff8000001045f4 <vsnprintf+0x1c9>
ffff8000001045da:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001045e1:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001045e5:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001045e9:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001045f0:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001045f4:	48 8b 00             	mov    (%rax),%rax
ffff8000001045f7:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001045fb:	eb 24                	jmp    ffff800000104621 <vsnprintf+0x1f6>
ffff8000001045fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104601:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104605:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000104609:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff80000010460d:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
ffff800000104611:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000104615:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
ffff800000104619:	48 01 ca             	add    %rcx,%rdx
ffff80000010461c:	0f b6 00             	movzbl (%rax),%eax
ffff80000010461f:	88 02                	mov    %al,(%rdx)
ffff800000104621:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104625:	0f b6 00             	movzbl (%rax),%eax
ffff800000104628:	84 c0                	test   %al,%al
ffff80000010462a:	0f 84 dc 02 00 00    	je     ffff80000010490c <vsnprintf+0x4e1>
ffff800000104630:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000104634:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104638:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff80000010463c:	72 bf                	jb     ffff8000001045fd <vsnprintf+0x1d2>
ffff80000010463e:	e9 c9 02 00 00       	jmpq   ffff80000010490c <vsnprintf+0x4e1>
ffff800000104643:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
ffff800000104647:	74 7c                	je     ffff8000001046c5 <vsnprintf+0x29a>
ffff800000104649:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104650:	8b 00                	mov    (%rax),%eax
ffff800000104652:	83 f8 2f             	cmp    $0x2f,%eax
ffff800000104655:	77 30                	ja     ffff800000104687 <vsnprintf+0x25c>
ffff800000104657:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010465e:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104662:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104669:	8b 00                	mov    (%rax),%eax
ffff80000010466b:	89 c0                	mov    %eax,%eax
ffff80000010466d:	48 01 d0             	add    %rdx,%rax
ffff800000104670:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104677:	8b 12                	mov    (%rdx),%edx
ffff800000104679:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff80000010467c:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104683:	89 0a                	mov    %ecx,(%rdx)
ffff800000104685:	eb 1a                	jmp    ffff8000001046a1 <vsnprintf+0x276>
ffff800000104687:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010468e:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104692:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104696:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010469d:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001046a1:	48 8b 00             	mov    (%rax),%rax
ffff8000001046a4:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff8000001046a8:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff8000001046ad:	48 89 ce             	mov    %rcx,%rsi
ffff8000001046b0:	48 89 c7             	mov    %rax,%rdi
ffff8000001046b3:	48 b8 51 9a ff ff ff 	movabs $0xffffffffffff9a51,%rax
ffff8000001046ba:	ff ff ff 
ffff8000001046bd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001046c1:	ff d0                	callq  *%rax
ffff8000001046c3:	eb 7b                	jmp    ffff800000104740 <vsnprintf+0x315>
ffff8000001046c5:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046cc:	8b 00                	mov    (%rax),%eax
ffff8000001046ce:	83 f8 2f             	cmp    $0x2f,%eax
ffff8000001046d1:	77 30                	ja     ffff800000104703 <vsnprintf+0x2d8>
ffff8000001046d3:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046da:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001046de:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001046e5:	8b 00                	mov    (%rax),%eax
ffff8000001046e7:	89 c0                	mov    %eax,%eax
ffff8000001046e9:	48 01 d0             	add    %rdx,%rax
ffff8000001046ec:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001046f3:	8b 12                	mov    (%rdx),%edx
ffff8000001046f5:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001046f8:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001046ff:	89 0a                	mov    %ecx,(%rdx)
ffff800000104701:	eb 1a                	jmp    ffff80000010471d <vsnprintf+0x2f2>
ffff800000104703:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010470a:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010470e:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff800000104712:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104719:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff80000010471d:	8b 00                	mov    (%rax),%eax
ffff80000010471f:	48 98                	cltq   
ffff800000104721:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff800000104725:	ba 0a 00 00 00       	mov    $0xa,%edx
ffff80000010472a:	48 89 ce             	mov    %rcx,%rsi
ffff80000010472d:	48 89 c7             	mov    %rax,%rdi
ffff800000104730:	48 b8 51 9a ff ff ff 	movabs $0xffffffffffff9a51,%rax
ffff800000104737:	ff ff ff 
ffff80000010473a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010473e:	ff d0                	callq  *%rax
ffff800000104740:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff800000104744:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000104748:	eb 21                	jmp    ffff80000010476b <vsnprintf+0x340>
ffff80000010474a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010474e:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104752:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000104756:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff80000010475a:	48 01 c2             	add    %rax,%rdx
ffff80000010475d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000104761:	0f b6 00             	movzbl (%rax),%eax
ffff800000104764:	88 02                	mov    %al,(%rdx)
ffff800000104766:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
ffff80000010476b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010476f:	0f b6 00             	movzbl (%rax),%eax
ffff800000104772:	84 c0                	test   %al,%al
ffff800000104774:	0f 84 95 01 00 00    	je     ffff80000010490f <vsnprintf+0x4e4>
ffff80000010477a:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff80000010477e:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104782:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff800000104786:	72 c2                	jb     ffff80000010474a <vsnprintf+0x31f>
ffff800000104788:	e9 82 01 00 00       	jmpq   ffff80000010490f <vsnprintf+0x4e4>
ffff80000010478d:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
ffff800000104791:	74 7c                	je     ffff80000010480f <vsnprintf+0x3e4>
ffff800000104793:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010479a:	8b 00                	mov    (%rax),%eax
ffff80000010479c:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010479f:	77 30                	ja     ffff8000001047d1 <vsnprintf+0x3a6>
ffff8000001047a1:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001047a8:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff8000001047ac:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001047b3:	8b 00                	mov    (%rax),%eax
ffff8000001047b5:	89 c0                	mov    %eax,%eax
ffff8000001047b7:	48 01 d0             	add    %rdx,%rax
ffff8000001047ba:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001047c1:	8b 12                	mov    (%rdx),%edx
ffff8000001047c3:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff8000001047c6:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001047cd:	89 0a                	mov    %ecx,(%rdx)
ffff8000001047cf:	eb 1a                	jmp    ffff8000001047eb <vsnprintf+0x3c0>
ffff8000001047d1:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff8000001047d8:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001047dc:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff8000001047e0:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff8000001047e7:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff8000001047eb:	48 8b 00             	mov    (%rax),%rax
ffff8000001047ee:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff8000001047f2:	ba 10 00 00 00       	mov    $0x10,%edx
ffff8000001047f7:	48 89 ce             	mov    %rcx,%rsi
ffff8000001047fa:	48 89 c7             	mov    %rax,%rdi
ffff8000001047fd:	48 b8 51 9a ff ff ff 	movabs $0xffffffffffff9a51,%rax
ffff800000104804:	ff ff ff 
ffff800000104807:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010480b:	ff d0                	callq  *%rax
ffff80000010480d:	eb 7b                	jmp    ffff80000010488a <vsnprintf+0x45f>
ffff80000010480f:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104816:	8b 00                	mov    (%rax),%eax
ffff800000104818:	83 f8 2f             	cmp    $0x2f,%eax
ffff80000010481b:	77 30                	ja     ffff80000010484d <vsnprintf+0x422>
ffff80000010481d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104824:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000104828:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff80000010482f:	8b 00                	mov    (%rax),%eax
ffff800000104831:	89 c0                	mov    %eax,%eax
ffff800000104833:	48 01 d0             	add    %rdx,%rax
ffff800000104836:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff80000010483d:	8b 12                	mov    (%rdx),%edx
ffff80000010483f:	8d 4a 08             	lea    0x8(%rdx),%ecx
ffff800000104842:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104849:	89 0a                	mov    %ecx,(%rdx)
ffff80000010484b:	eb 1a                	jmp    ffff800000104867 <vsnprintf+0x43c>
ffff80000010484d:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
ffff800000104854:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000104858:	48 8d 48 08          	lea    0x8(%rax),%rcx
ffff80000010485c:	48 8b 95 78 ff ff ff 	mov    -0x88(%rbp),%rdx
ffff800000104863:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
ffff800000104867:	8b 00                	mov    (%rax),%eax
ffff800000104869:	48 98                	cltq   
ffff80000010486b:	48 8d 4d 98          	lea    -0x68(%rbp),%rcx
ffff80000010486f:	ba 10 00 00 00       	mov    $0x10,%edx
ffff800000104874:	48 89 ce             	mov    %rcx,%rsi
ffff800000104877:	48 89 c7             	mov    %rax,%rdi
ffff80000010487a:	48 b8 51 9a ff ff ff 	movabs $0xffffffffffff9a51,%rax
ffff800000104881:	ff ff ff 
ffff800000104884:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104888:	ff d0                	callq  *%rax
ffff80000010488a:	48 8d 45 98          	lea    -0x68(%rbp),%rax
ffff80000010488e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000104892:	eb 21                	jmp    ffff8000001048b5 <vsnprintf+0x48a>
ffff800000104894:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104898:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010489c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001048a0:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001048a4:	48 01 c2             	add    %rax,%rdx
ffff8000001048a7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001048ab:	0f b6 00             	movzbl (%rax),%eax
ffff8000001048ae:	88 02                	mov    %al,(%rdx)
ffff8000001048b0:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
ffff8000001048b5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001048b9:	0f b6 00             	movzbl (%rax),%eax
ffff8000001048bc:	84 c0                	test   %al,%al
ffff8000001048be:	74 52                	je     ffff800000104912 <vsnprintf+0x4e7>
ffff8000001048c0:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff8000001048c4:	48 83 e8 01          	sub    $0x1,%rax
ffff8000001048c8:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff8000001048cc:	72 c6                	jb     ffff800000104894 <vsnprintf+0x469>
ffff8000001048ce:	eb 42                	jmp    ffff800000104912 <vsnprintf+0x4e7>
ffff8000001048d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001048d4:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001048d8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001048dc:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff8000001048e0:	48 01 d0             	add    %rdx,%rax
ffff8000001048e3:	c6 00 25             	movb   $0x25,(%rax)
ffff8000001048e6:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff8000001048ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001048ee:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff8000001048f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001048f6:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff8000001048fa:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001048fe:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104902:	48 01 c2             	add    %rax,%rdx
ffff800000104905:	0f b6 01             	movzbl (%rcx),%eax
ffff800000104908:	88 02                	mov    %al,(%rdx)
ffff80000010490a:	eb 07                	jmp    ffff800000104913 <vsnprintf+0x4e8>
ffff80000010490c:	90                   	nop
ffff80000010490d:	eb 2a                	jmp    ffff800000104939 <vsnprintf+0x50e>
ffff80000010490f:	90                   	nop
ffff800000104910:	eb 27                	jmp    ffff800000104939 <vsnprintf+0x50e>
ffff800000104912:	90                   	nop
ffff800000104913:	eb 24                	jmp    ffff800000104939 <vsnprintf+0x50e>
ffff800000104915:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104919:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010491d:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
ffff800000104921:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104925:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff800000104929:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010492d:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104931:	48 01 c2             	add    %rax,%rdx
ffff800000104934:	0f b6 01             	movzbl (%rcx),%eax
ffff800000104937:	88 02                	mov    %al,(%rdx)
ffff800000104939:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff80000010493e:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
ffff800000104942:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000104946:	48 01 d0             	add    %rdx,%rax
ffff800000104949:	0f b6 00             	movzbl (%rax),%eax
ffff80000010494c:	84 c0                	test   %al,%al
ffff80000010494e:	74 12                	je     ffff800000104962 <vsnprintf+0x537>
ffff800000104950:	48 8b 45 88          	mov    -0x78(%rbp),%rax
ffff800000104954:	48 83 e8 01          	sub    $0x1,%rax
ffff800000104958:	48 39 45 e8          	cmp    %rax,-0x18(%rbp)
ffff80000010495c:	0f 82 1d fb ff ff    	jb     ffff80000010447f <vsnprintf+0x54>
ffff800000104962:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
ffff800000104966:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010496a:	48 01 d0             	add    %rdx,%rax
ffff80000010496d:	c6 00 00             	movb   $0x0,(%rax)
ffff800000104970:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104974:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
ffff800000104978:	5b                   	pop    %rbx
ffff800000104979:	5d                   	pop    %rbp
ffff80000010497a:	c3                   	retq   

ffff80000010497b <printf>:
ffff80000010497b:	f3 0f 1e fa          	endbr64 
ffff80000010497f:	55                   	push   %rbp
ffff800000104980:	48 89 e5             	mov    %rsp,%rbp
ffff800000104983:	41 57                	push   %r15
ffff800000104985:	53                   	push   %rbx
ffff800000104986:	48 81 ec f0 01 00 00 	sub    $0x1f0,%rsp
ffff80000010498d:	f3 0f 1e fa          	endbr64 
ffff800000104991:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010498d <printf+0x12>
ffff800000104998:	49 bb 43 5f 00 00 00 	movabs $0x5f43,%r11
ffff80000010499f:	00 00 00 
ffff8000001049a2:	4c 01 db             	add    %r11,%rbx
ffff8000001049a5:	48 89 bd 08 fe ff ff 	mov    %rdi,-0x1f8(%rbp)
ffff8000001049ac:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
ffff8000001049b3:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
ffff8000001049ba:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
ffff8000001049c1:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
ffff8000001049c8:	4c 89 8d 68 ff ff ff 	mov    %r9,-0x98(%rbp)
ffff8000001049cf:	84 c0                	test   %al,%al
ffff8000001049d1:	74 23                	je     ffff8000001049f6 <printf+0x7b>
ffff8000001049d3:	0f 29 85 70 ff ff ff 	movaps %xmm0,-0x90(%rbp)
ffff8000001049da:	0f 29 4d 80          	movaps %xmm1,-0x80(%rbp)
ffff8000001049de:	0f 29 55 90          	movaps %xmm2,-0x70(%rbp)
ffff8000001049e2:	0f 29 5d a0          	movaps %xmm3,-0x60(%rbp)
ffff8000001049e6:	0f 29 65 b0          	movaps %xmm4,-0x50(%rbp)
ffff8000001049ea:	0f 29 6d c0          	movaps %xmm5,-0x40(%rbp)
ffff8000001049ee:	0f 29 75 d0          	movaps %xmm6,-0x30(%rbp)
ffff8000001049f2:	0f 29 7d e0          	movaps %xmm7,-0x20(%rbp)
ffff8000001049f6:	c7 85 18 fe ff ff 08 	movl   $0x8,-0x1e8(%rbp)
ffff8000001049fd:	00 00 00 
ffff800000104a00:	c7 85 1c fe ff ff 30 	movl   $0x30,-0x1e4(%rbp)
ffff800000104a07:	00 00 00 
ffff800000104a0a:	48 8d 45 10          	lea    0x10(%rbp),%rax
ffff800000104a0e:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
ffff800000104a15:	48 8d 85 40 ff ff ff 	lea    -0xc0(%rbp),%rax
ffff800000104a1c:	48 89 85 28 fe ff ff 	mov    %rax,-0x1d8(%rbp)
ffff800000104a23:	48 8d 8d 18 fe ff ff 	lea    -0x1e8(%rbp),%rcx
ffff800000104a2a:	48 8b 95 08 fe ff ff 	mov    -0x1f8(%rbp),%rdx
ffff800000104a31:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff800000104a38:	be 00 01 00 00       	mov    $0x100,%esi
ffff800000104a3d:	48 89 c7             	mov    %rax,%rdi
ffff800000104a40:	48 b8 5b 9b ff ff ff 	movabs $0xffffffffffff9b5b,%rax
ffff800000104a47:	ff ff ff 
ffff800000104a4a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000104a4e:	ff d0                	callq  *%rax
ffff800000104a50:	48 8d 85 30 fe ff ff 	lea    -0x1d0(%rbp),%rax
ffff800000104a57:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
ffff800000104a5e:	eb 29                	jmp    ffff800000104a89 <printf+0x10e>
ffff800000104a60:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff800000104a67:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a6a:	0f be c0             	movsbl %al,%eax
ffff800000104a6d:	89 c7                	mov    %eax,%edi
ffff800000104a6f:	49 89 df             	mov    %rbx,%r15
ffff800000104a72:	48 b8 62 a2 ff ff ff 	movabs $0xffffffffffffa262,%rax
ffff800000104a79:	ff ff ff 
ffff800000104a7c:	48 01 d8             	add    %rbx,%rax
ffff800000104a7f:	ff d0                	callq  *%rax
ffff800000104a81:	48 83 85 38 ff ff ff 	addq   $0x1,-0xc8(%rbp)
ffff800000104a88:	01 
ffff800000104a89:	48 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%rax
ffff800000104a90:	0f b6 00             	movzbl (%rax),%eax
ffff800000104a93:	84 c0                	test   %al,%al
ffff800000104a95:	75 c9                	jne    ffff800000104a60 <printf+0xe5>
ffff800000104a97:	90                   	nop
ffff800000104a98:	90                   	nop
ffff800000104a99:	48 81 c4 f0 01 00 00 	add    $0x1f0,%rsp
ffff800000104aa0:	5b                   	pop    %rbx
ffff800000104aa1:	41 5f                	pop    %r15
ffff800000104aa3:	5d                   	pop    %rbp
ffff800000104aa4:	c3                   	retq   

ffff800000104aa5 <panic>:
ffff800000104aa5:	f3 0f 1e fa          	endbr64 
ffff800000104aa9:	55                   	push   %rbp
ffff800000104aaa:	48 89 e5             	mov    %rsp,%rbp
ffff800000104aad:	53                   	push   %rbx
ffff800000104aae:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104ab2:	f3 0f 1e fa          	endbr64 
ffff800000104ab6:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104ab2 <panic+0xd>
ffff800000104abd:	49 bb 1e 5e 00 00 00 	movabs $0x5e1e,%r11
ffff800000104ac4:	00 00 00 
ffff800000104ac7:	4c 01 db             	add    %r11,%rbx
ffff800000104aca:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104ace:	48 b8 28 e6 ff ff ff 	movabs $0xffffffffffffe628,%rax
ffff800000104ad5:	ff ff ff 
ffff800000104ad8:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000104adc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104ae1:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000104ae8:	ff ff ff 
ffff800000104aeb:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104aef:	ff d2                	callq  *%rdx
ffff800000104af1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104af5:	48 89 c7             	mov    %rax,%rdi
ffff800000104af8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104afd:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000104b04:	ff ff ff 
ffff800000104b07:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104b0b:	ff d2                	callq  *%rdx
ffff800000104b0d:	48 b8 30 e6 ff ff ff 	movabs $0xffffffffffffe630,%rax
ffff800000104b14:	ff ff ff 
ffff800000104b17:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000104b1b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104b20:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000104b27:	ff ff ff 
ffff800000104b2a:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000104b2e:	ff d2                	callq  *%rdx
ffff800000104b30:	eb fe                	jmp    ffff800000104b30 <panic+0x8b>

ffff800000104b32 <putchar>:
ffff800000104b32:	f3 0f 1e fa          	endbr64 
ffff800000104b36:	55                   	push   %rbp
ffff800000104b37:	48 89 e5             	mov    %rsp,%rbp
ffff800000104b3a:	f3 0f 1e fa          	endbr64 
ffff800000104b3e:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000104b3a <putchar+0x8>
ffff800000104b45:	49 bb 96 5d 00 00 00 	movabs $0x5d96,%r11
ffff800000104b4c:	00 00 00 
ffff800000104b4f:	4c 01 d8             	add    %r11,%rax
ffff800000104b52:	89 fa                	mov    %edi,%edx
ffff800000104b54:	88 55 ec             	mov    %dl,-0x14(%rbp)
ffff800000104b57:	48 bf 00 80 0b 00 00 	movabs $0xffff8000000b8000,%rdi
ffff800000104b5e:	80 ff ff 
ffff800000104b61:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
ffff800000104b65:	80 7d ec 0a          	cmpb   $0xa,-0x14(%rbp)
ffff800000104b69:	75 5f                	jne    ffff800000104bca <putchar+0x98>
ffff800000104b6b:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104b72:	00 00 00 
ffff800000104b75:	8b 34 10             	mov    (%rax,%rdx,1),%esi
ffff800000104b78:	48 63 d6             	movslq %esi,%rdx
ffff800000104b7b:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
ffff800000104b82:	48 c1 ea 20          	shr    $0x20,%rdx
ffff800000104b86:	89 d1                	mov    %edx,%ecx
ffff800000104b88:	c1 f9 05             	sar    $0x5,%ecx
ffff800000104b8b:	89 f2                	mov    %esi,%edx
ffff800000104b8d:	c1 fa 1f             	sar    $0x1f,%edx
ffff800000104b90:	29 d1                	sub    %edx,%ecx
ffff800000104b92:	89 ca                	mov    %ecx,%edx
ffff800000104b94:	c1 e2 02             	shl    $0x2,%edx
ffff800000104b97:	01 ca                	add    %ecx,%edx
ffff800000104b99:	c1 e2 04             	shl    $0x4,%edx
ffff800000104b9c:	29 d6                	sub    %edx,%esi
ffff800000104b9e:	89 f1                	mov    %esi,%ecx
ffff800000104ba0:	ba 50 00 00 00       	mov    $0x50,%edx
ffff800000104ba5:	29 ca                	sub    %ecx,%edx
ffff800000104ba7:	89 d1                	mov    %edx,%ecx
ffff800000104ba9:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bb0:	00 00 00 
ffff800000104bb3:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104bb6:	01 d1                	add    %edx,%ecx
ffff800000104bb8:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bbf:	00 00 00 
ffff800000104bc2:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104bc5:	e9 8c 00 00 00       	jmpq   ffff800000104c56 <putchar+0x124>
ffff800000104bca:	80 7d ec 09          	cmpb   $0x9,-0x14(%rbp)
ffff800000104bce:	75 41                	jne    ffff800000104c11 <putchar+0xdf>
ffff800000104bd0:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bd7:	00 00 00 
ffff800000104bda:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104bdd:	89 d1                	mov    %edx,%ecx
ffff800000104bdf:	c1 f9 1f             	sar    $0x1f,%ecx
ffff800000104be2:	c1 e9 1d             	shr    $0x1d,%ecx
ffff800000104be5:	01 ca                	add    %ecx,%edx
ffff800000104be7:	83 e2 07             	and    $0x7,%edx
ffff800000104bea:	29 ca                	sub    %ecx,%edx
ffff800000104bec:	b9 08 00 00 00       	mov    $0x8,%ecx
ffff800000104bf1:	29 d1                	sub    %edx,%ecx
ffff800000104bf3:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104bfa:	00 00 00 
ffff800000104bfd:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c00:	01 d1                	add    %edx,%ecx
ffff800000104c02:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c09:	00 00 00 
ffff800000104c0c:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104c0f:	eb 45                	jmp    ffff800000104c56 <putchar+0x124>
ffff800000104c11:	66 0f be 55 ec       	movsbw -0x14(%rbp),%dx
ffff800000104c16:	89 d1                	mov    %edx,%ecx
ffff800000104c18:	80 cd 07             	or     $0x7,%ch
ffff800000104c1b:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c22:	00 00 00 
ffff800000104c25:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c28:	48 63 d2             	movslq %edx,%rdx
ffff800000104c2b:	48 8d 34 12          	lea    (%rdx,%rdx,1),%rsi
ffff800000104c2f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104c33:	48 01 f2             	add    %rsi,%rdx
ffff800000104c36:	66 89 0a             	mov    %cx,(%rdx)
ffff800000104c39:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c40:	00 00 00 
ffff800000104c43:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c46:	8d 4a 01             	lea    0x1(%rdx),%ecx
ffff800000104c49:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c50:	00 00 00 
ffff800000104c53:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104c56:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104c5d:	00 00 00 
ffff800000104c60:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104c63:	81 fa cf 07 00 00    	cmp    $0x7cf,%edx
ffff800000104c69:	0f 8e 8b 00 00 00    	jle    ffff800000104cfa <putchar+0x1c8>
ffff800000104c6f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff800000104c76:	eb 30                	jmp    ffff800000104ca8 <putchar+0x176>
ffff800000104c78:	8b 55 fc             	mov    -0x4(%rbp),%edx
ffff800000104c7b:	48 63 d2             	movslq %edx,%rdx
ffff800000104c7e:	48 83 c2 50          	add    $0x50,%rdx
ffff800000104c82:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104c86:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104c8a:	48 01 ca             	add    %rcx,%rdx
ffff800000104c8d:	8b 4d fc             	mov    -0x4(%rbp),%ecx
ffff800000104c90:	48 63 c9             	movslq %ecx,%rcx
ffff800000104c93:	48 8d 34 09          	lea    (%rcx,%rcx,1),%rsi
ffff800000104c97:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
ffff800000104c9b:	48 01 f1             	add    %rsi,%rcx
ffff800000104c9e:	0f b7 12             	movzwl (%rdx),%edx
ffff800000104ca1:	66 89 11             	mov    %dx,(%rcx)
ffff800000104ca4:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000104ca8:	81 7d fc 7f 07 00 00 	cmpl   $0x77f,-0x4(%rbp)
ffff800000104caf:	7e c7                	jle    ffff800000104c78 <putchar+0x146>
ffff800000104cb1:	c7 45 f8 80 07 00 00 	movl   $0x780,-0x8(%rbp)
ffff800000104cb8:	eb 1a                	jmp    ffff800000104cd4 <putchar+0x1a2>
ffff800000104cba:	8b 55 f8             	mov    -0x8(%rbp),%edx
ffff800000104cbd:	48 63 d2             	movslq %edx,%rdx
ffff800000104cc0:	48 8d 0c 12          	lea    (%rdx,%rdx,1),%rcx
ffff800000104cc4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
ffff800000104cc8:	48 01 ca             	add    %rcx,%rdx
ffff800000104ccb:	66 c7 02 20 07       	movw   $0x720,(%rdx)
ffff800000104cd0:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
ffff800000104cd4:	81 7d f8 cf 07 00 00 	cmpl   $0x7cf,-0x8(%rbp)
ffff800000104cdb:	7e dd                	jle    ffff800000104cba <putchar+0x188>
ffff800000104cdd:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104ce4:	00 00 00 
ffff800000104ce7:	8b 14 10             	mov    (%rax,%rdx,1),%edx
ffff800000104cea:	8d 4a b0             	lea    -0x50(%rdx),%ecx
ffff800000104ced:	48 ba 30 00 00 00 00 	movabs $0x30,%rdx
ffff800000104cf4:	00 00 00 
ffff800000104cf7:	89 0c 10             	mov    %ecx,(%rax,%rdx,1)
ffff800000104cfa:	90                   	nop
ffff800000104cfb:	5d                   	pop    %rbp
ffff800000104cfc:	c3                   	retq   

ffff800000104cfd <idle>:
ffff800000104cfd:	f3 0f 1e fa          	endbr64 
ffff800000104d01:	55                   	push   %rbp
ffff800000104d02:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d05:	41 57                	push   %r15
ffff800000104d07:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000104d0b:	f3 0f 1e fa          	endbr64 
ffff800000104d0f:	48 8d 15 f5 ff ff ff 	lea    -0xb(%rip),%rdx        # ffff800000104d0b <idle+0xe>
ffff800000104d16:	49 bb c5 5b 00 00 00 	movabs $0x5bc5,%r11
ffff800000104d1d:	00 00 00 
ffff800000104d20:	4c 01 da             	add    %r11,%rdx
ffff800000104d23:	48 b8 38 e6 ff ff ff 	movabs $0xffffffffffffe638,%rax
ffff800000104d2a:	ff ff ff 
ffff800000104d2d:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
ffff800000104d31:	49 89 d7             	mov    %rdx,%r15
ffff800000104d34:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104d39:	48 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rcx
ffff800000104d40:	ff ff ff 
ffff800000104d43:	48 01 d1             	add    %rdx,%rcx
ffff800000104d46:	ff d1                	callq  *%rcx
ffff800000104d48:	f4                   	hlt    
ffff800000104d49:	eb fd                	jmp    ffff800000104d48 <idle+0x4b>

ffff800000104d4b <init>:
ffff800000104d4b:	f3 0f 1e fa          	endbr64 
ffff800000104d4f:	55                   	push   %rbp
ffff800000104d50:	48 89 e5             	mov    %rsp,%rbp
ffff800000104d53:	41 57                	push   %r15
ffff800000104d55:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
ffff800000104d5c:	f3 0f 1e fa          	endbr64 
ffff800000104d60:	48 8d 15 f5 ff ff ff 	lea    -0xb(%rip),%rdx        # ffff800000104d5c <init+0x11>
ffff800000104d67:	49 bb 74 5b 00 00 00 	movabs $0x5b74,%r11
ffff800000104d6e:	00 00 00 
ffff800000104d71:	4c 01 da             	add    %r11,%rdx
ffff800000104d74:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
ffff800000104d7b:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
ffff800000104d82:	48 89 c6             	mov    %rax,%rsi
ffff800000104d85:	48 b8 50 e6 ff ff ff 	movabs $0xffffffffffffe650,%rax
ffff800000104d8c:	ff ff ff 
ffff800000104d8f:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
ffff800000104d93:	49 89 d7             	mov    %rdx,%r15
ffff800000104d96:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104d9b:	48 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rcx
ffff800000104da2:	ff ff ff 
ffff800000104da5:	48 01 d1             	add    %rdx,%rcx
ffff800000104da8:	ff d1                	callq  *%rcx
ffff800000104daa:	b8 01 00 00 00       	mov    $0x1,%eax
ffff800000104daf:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
ffff800000104db6:	41 5f                	pop    %r15
ffff800000104db8:	5d                   	pop    %rbp
ffff800000104db9:	c3                   	retq   

ffff800000104dba <do_exit>:
ffff800000104dba:	f3 0f 1e fa          	endbr64 
ffff800000104dbe:	55                   	push   %rbp
ffff800000104dbf:	48 89 e5             	mov    %rsp,%rbp
ffff800000104dc2:	41 57                	push   %r15
ffff800000104dc4:	48 83 ec 18          	sub    $0x18,%rsp
ffff800000104dc8:	f3 0f 1e fa          	endbr64 
ffff800000104dcc:	48 8d 15 f5 ff ff ff 	lea    -0xb(%rip),%rdx        # ffff800000104dc8 <do_exit+0xe>
ffff800000104dd3:	49 bb 08 5b 00 00 00 	movabs $0x5b08,%r11
ffff800000104dda:	00 00 00 
ffff800000104ddd:	4c 01 da             	add    %r11,%rdx
ffff800000104de0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000104de4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104de8:	48 89 c6             	mov    %rax,%rsi
ffff800000104deb:	48 b8 71 e6 ff ff ff 	movabs $0xffffffffffffe671,%rax
ffff800000104df2:	ff ff ff 
ffff800000104df5:	48 8d 3c 02          	lea    (%rdx,%rax,1),%rdi
ffff800000104df9:	49 89 d7             	mov    %rdx,%r15
ffff800000104dfc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104e01:	48 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rcx
ffff800000104e08:	ff ff ff 
ffff800000104e0b:	48 01 d1             	add    %rdx,%rcx
ffff800000104e0e:	ff d1                	callq  *%rcx
ffff800000104e10:	eb fe                	jmp    ffff800000104e10 <do_exit+0x56>

ffff800000104e12 <do_fork>:
ffff800000104e12:	f3 0f 1e fa          	endbr64 
ffff800000104e16:	55                   	push   %rbp
ffff800000104e17:	48 89 e5             	mov    %rsp,%rbp
ffff800000104e1a:	41 57                	push   %r15
ffff800000104e1c:	53                   	push   %rbx
ffff800000104e1d:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000104e21:	f3 0f 1e fa          	endbr64 
ffff800000104e25:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104e21 <do_fork+0xf>
ffff800000104e2c:	49 bb af 5a 00 00 00 	movabs $0x5aaf,%r11
ffff800000104e33:	00 00 00 
ffff800000104e36:	4c 01 db             	add    %r11,%rbx
ffff800000104e39:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
ffff800000104e3d:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
ffff800000104e41:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
ffff800000104e45:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
ffff800000104e49:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000104e50:	00 
ffff800000104e51:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000104e58:	00 
ffff800000104e59:	49 89 df             	mov    %rbx,%r15
ffff800000104e5c:	48 b8 c1 cd ff ff ff 	movabs $0xffffffffffffcdc1,%rax
ffff800000104e63:	ff ff ff 
ffff800000104e66:	48 01 d8             	add    %rbx,%rax
ffff800000104e69:	ff d0                	callq  *%rax
ffff800000104e6b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000104e6f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104e73:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000104e77:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000104e7e:	00 00 00 
ffff800000104e81:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104e85:	48 8b 10             	mov    (%rax),%rdx
ffff800000104e88:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104e8c:	48 89 10             	mov    %rdx,(%rax)
ffff800000104e8f:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000104e96:	00 00 00 
ffff800000104e99:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104e9d:	48 8b 00             	mov    (%rax),%rax
ffff800000104ea0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000104ea4:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000104ea8:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000104eaf:	00 00 00 
ffff800000104eb2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104eb6:	48 89 c2             	mov    %rax,%rdx
ffff800000104eb9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104ebd:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000104ec1:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000104ec8:	00 00 00 
ffff800000104ecb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000104ecf:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000104ed3:	48 89 10             	mov    %rdx,(%rax)
ffff800000104ed6:	48 b8 34 00 00 00 00 	movabs $0x34,%rax
ffff800000104edd:	00 00 00 
ffff800000104ee0:	8b 04 03             	mov    (%rbx,%rax,1),%eax
ffff800000104ee3:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000104ee6:	48 b9 34 00 00 00 00 	movabs $0x34,%rcx
ffff800000104eed:	00 00 00 
ffff800000104ef0:	89 14 0b             	mov    %edx,(%rbx,%rcx,1)
ffff800000104ef3:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000104ef7:	89 42 10             	mov    %eax,0x10(%rdx)
ffff800000104efa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104efe:	c7 40 14 04 00 00 00 	movl   $0x4,0x14(%rax)
ffff800000104f05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000104f09:	48 8d 90 00 10 00 00 	lea    0x1000(%rax),%rdx
ffff800000104f10:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f14:	48 89 50 28          	mov    %rdx,0x28(%rax)
ffff800000104f18:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f1c:	48 83 c0 40          	add    $0x40,%rax
ffff800000104f20:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000104f24:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f28:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000104f2c:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000104f30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f34:	48 05 48 0f 00 00    	add    $0xf48,%rax
ffff800000104f3a:	48 89 c1             	mov    %rax,%rcx
ffff800000104f3d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000104f41:	ba b8 00 00 00       	mov    $0xb8,%edx
ffff800000104f46:	48 89 c6             	mov    %rax,%rsi
ffff800000104f49:	48 89 cf             	mov    %rcx,%rdi
ffff800000104f4c:	49 89 df             	mov    %rbx,%r15
ffff800000104f4f:	48 b8 62 db ff ff ff 	movabs $0xffffffffffffdb62,%rax
ffff800000104f56:	ff ff ff 
ffff800000104f59:	48 01 d8             	add    %rbx,%rax
ffff800000104f5c:	ff d0                	callq  *%rax
ffff800000104f5e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000104f62:	48 8b 90 90 00 00 00 	mov    0x90(%rax),%rdx
ffff800000104f69:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104f6d:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000104f71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f75:	48 8d 90 48 0f 00 00 	lea    0xf48(%rax),%rdx
ffff800000104f7c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000104f80:	48 89 50 08          	mov    %rdx,0x8(%rax)
ffff800000104f84:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000104f88:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
ffff800000104f8f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000104f94:	48 83 c4 40          	add    $0x40,%rsp
ffff800000104f98:	5b                   	pop    %rbx
ffff800000104f99:	41 5f                	pop    %r15
ffff800000104f9b:	5d                   	pop    %rbp
ffff800000104f9c:	c3                   	retq   

ffff800000104f9d <kernel_thread_func>:
ffff800000104f9d:	41 5f                	pop    %r15
ffff800000104f9f:	41 5e                	pop    %r14
ffff800000104fa1:	41 5d                	pop    %r13
ffff800000104fa3:	41 5c                	pop    %r12
ffff800000104fa5:	41 5b                	pop    %r11
ffff800000104fa7:	41 5a                	pop    %r10
ffff800000104fa9:	41 59                	pop    %r9
ffff800000104fab:	41 58                	pop    %r8
ffff800000104fad:	5b                   	pop    %rbx
ffff800000104fae:	59                   	pop    %rcx
ffff800000104faf:	5a                   	pop    %rdx
ffff800000104fb0:	5e                   	pop    %rsi
ffff800000104fb1:	5f                   	pop    %rdi
ffff800000104fb2:	5d                   	pop    %rbp
ffff800000104fb3:	58                   	pop    %rax
ffff800000104fb4:	48 8e d8             	mov    %rax,%ds
ffff800000104fb7:	58                   	pop    %rax
ffff800000104fb8:	48 8e c0             	mov    %rax,%es
ffff800000104fbb:	58                   	pop    %rax
ffff800000104fbc:	48 83 c4 38          	add    $0x38,%rsp
ffff800000104fc0:	48 89 d7             	mov    %rdx,%rdi
ffff800000104fc3:	ff d3                	callq  *%rbx
ffff800000104fc5:	48 89 c7             	mov    %rax,%rdi
ffff800000104fc8:	e8 ed fd ff ff       	callq  ffff800000104dba <do_exit>

ffff800000104fcd <create_task>:
ffff800000104fcd:	f3 0f 1e fa          	endbr64 
ffff800000104fd1:	55                   	push   %rbp
ffff800000104fd2:	48 89 e5             	mov    %rsp,%rbp
ffff800000104fd5:	41 57                	push   %r15
ffff800000104fd7:	53                   	push   %rbx
ffff800000104fd8:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
ffff800000104fdf:	f3 0f 1e fa          	endbr64 
ffff800000104fe3:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000104fdf <create_task+0x12>
ffff800000104fea:	49 bb f1 58 00 00 00 	movabs $0x58f1,%r11
ffff800000104ff1:	00 00 00 
ffff800000104ff4:	4c 01 db             	add    %r11,%rbx
ffff800000104ff7:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
ffff800000104ffe:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
ffff800000105005:	48 89 95 18 ff ff ff 	mov    %rdx,-0xe8(%rbp)
ffff80000010500c:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
ffff800000105013:	ba b8 00 00 00       	mov    $0xb8,%edx
ffff800000105018:	be 00 00 00 00       	mov    $0x0,%esi
ffff80000010501d:	48 89 c7             	mov    %rax,%rdi
ffff800000105020:	49 89 df             	mov    %rbx,%r15
ffff800000105023:	48 b8 9c d9 ff ff ff 	movabs $0xffffffffffffd99c,%rax
ffff80000010502a:	ff ff ff 
ffff80000010502d:	48 01 d8             	add    %rbx,%rax
ffff800000105030:	ff d0                	callq  *%rax
ffff800000105032:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
ffff800000105039:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
ffff800000105040:	48 8b 85 20 ff ff ff 	mov    -0xe0(%rbp),%rax
ffff800000105047:	48 89 45 80          	mov    %rax,-0x80(%rbp)
ffff80000010504b:	48 c7 45 c8 08 00 00 	movq   $0x8,-0x38(%rbp)
ffff800000105052:	00 
ffff800000105053:	48 c7 45 a0 10 00 00 	movq   $0x10,-0x60(%rbp)
ffff80000010505a:	00 
ffff80000010505b:	48 b8 d8 ff ff ff ff 	movabs $0xffffffffffffffd8,%rax
ffff800000105062:	ff ff ff 
ffff800000105065:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105069:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff80000010506d:	48 c7 45 e0 00 02 00 	movq   $0x200,-0x20(%rbp)
ffff800000105074:	00 
ffff800000105075:	48 8b b5 18 ff ff ff 	mov    -0xe8(%rbp),%rsi
ffff80000010507c:	48 8d 85 30 ff ff ff 	lea    -0xd0(%rbp),%rax
ffff800000105083:	b9 00 00 00 00       	mov    $0x0,%ecx
ffff800000105088:	ba 00 00 00 00       	mov    $0x0,%edx
ffff80000010508d:	48 89 c7             	mov    %rax,%rdi
ffff800000105090:	48 b8 42 a5 ff ff ff 	movabs $0xffffffffffffa542,%rax
ffff800000105097:	ff ff ff 
ffff80000010509a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010509e:	ff d0                	callq  *%rax
ffff8000001050a0:	48 81 c4 e0 00 00 00 	add    $0xe0,%rsp
ffff8000001050a7:	5b                   	pop    %rbx
ffff8000001050a8:	41 5f                	pop    %r15
ffff8000001050aa:	5d                   	pop    %rbp
ffff8000001050ab:	c3                   	retq   

ffff8000001050ac <fork>:
ffff8000001050ac:	f3 0f 1e fa          	endbr64 
ffff8000001050b0:	55                   	push   %rbp
ffff8000001050b1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050b4:	f3 0f 1e fa          	endbr64 
ffff8000001050b8:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001050b4 <fork+0x8>
ffff8000001050bf:	49 bb 1c 58 00 00 00 	movabs $0x581c,%r11
ffff8000001050c6:	00 00 00 
ffff8000001050c9:	4c 01 d8             	add    %r11,%rax
ffff8000001050cc:	90                   	nop
ffff8000001050cd:	5d                   	pop    %rbp
ffff8000001050ce:	c3                   	retq   

ffff8000001050cf <schedule>:
ffff8000001050cf:	f3 0f 1e fa          	endbr64 
ffff8000001050d3:	55                   	push   %rbp
ffff8000001050d4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050d7:	f3 0f 1e fa          	endbr64 
ffff8000001050db:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001050d7 <schedule+0x8>
ffff8000001050e2:	49 bb f9 57 00 00 00 	movabs $0x57f9,%r11
ffff8000001050e9:	00 00 00 
ffff8000001050ec:	4c 01 d8             	add    %r11,%rax
ffff8000001050ef:	90                   	nop
ffff8000001050f0:	5d                   	pop    %rbp
ffff8000001050f1:	c3                   	retq   

ffff8000001050f2 <__switch_to>:
ffff8000001050f2:	f3 0f 1e fa          	endbr64 
ffff8000001050f6:	55                   	push   %rbp
ffff8000001050f7:	48 89 e5             	mov    %rsp,%rbp
ffff8000001050fa:	41 57                	push   %r15
ffff8000001050fc:	53                   	push   %rbx
ffff8000001050fd:	48 83 ec 10          	sub    $0x10,%rsp
ffff800000105101:	f3 0f 1e fa          	endbr64 
ffff800000105105:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105101 <__switch_to+0xf>
ffff80000010510c:	49 bb cf 57 00 00 00 	movabs $0x57cf,%r11
ffff800000105113:	00 00 00 
ffff800000105116:	4c 01 db             	add    %r11,%rbx
ffff800000105119:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010511d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000105121:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105125:	48 8b 50 18          	mov    0x18(%rax),%rdx
ffff800000105129:	48 8c e0             	mov    %fs,%rax
ffff80000010512c:	48 89 42 18          	mov    %rax,0x18(%rdx)
ffff800000105130:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105134:	48 8b 50 18          	mov    0x18(%rax),%rdx
ffff800000105138:	48 8c e8             	mov    %gs,%rax
ffff80000010513b:	48 89 42 20          	mov    %rax,0x20(%rdx)
ffff80000010513f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105143:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105147:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff80000010514b:	48 8e e0             	mov    %rax,%fs
ffff80000010514e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105152:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105156:	48 8b 40 20          	mov    0x20(%rax),%rax
ffff80000010515a:	48 8e e8             	mov    %rax,%gs
ffff80000010515d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105161:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105165:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000105169:	48 89 c6             	mov    %rax,%rsi
ffff80000010516c:	48 b8 8f e6 ff ff ff 	movabs $0xffffffffffffe68f,%rax
ffff800000105173:	ff ff ff 
ffff800000105176:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010517a:	49 89 df             	mov    %rbx,%r15
ffff80000010517d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105182:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000105189:	ff ff ff 
ffff80000010518c:	48 01 da             	add    %rbx,%rdx
ffff80000010518f:	ff d2                	callq  *%rdx
ffff800000105191:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000105195:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff800000105199:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff80000010519d:	48 89 c6             	mov    %rax,%rsi
ffff8000001051a0:	48 b8 a6 e6 ff ff ff 	movabs $0xffffffffffffe6a6,%rax
ffff8000001051a7:	ff ff ff 
ffff8000001051aa:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001051ae:	49 89 df             	mov    %rbx,%r15
ffff8000001051b1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001051b6:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001051bd:	ff ff ff 
ffff8000001051c0:	48 01 da             	add    %rbx,%rdx
ffff8000001051c3:	ff d2                	callq  *%rdx
ffff8000001051c5:	90                   	nop
ffff8000001051c6:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001051ca:	5b                   	pop    %rbx
ffff8000001051cb:	41 5f                	pop    %r15
ffff8000001051cd:	5d                   	pop    %rbp
ffff8000001051ce:	c3                   	retq   

ffff8000001051cf <taskinit>:
ffff8000001051cf:	f3 0f 1e fa          	endbr64 
ffff8000001051d3:	55                   	push   %rbp
ffff8000001051d4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001051d7:	41 57                	push   %r15
ffff8000001051d9:	53                   	push   %rbx
ffff8000001051da:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
ffff8000001051e1:	f3 0f 1e fa          	endbr64 
ffff8000001051e5:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001051e1 <taskinit+0x12>
ffff8000001051ec:	49 bb ef 56 00 00 00 	movabs $0x56ef,%r11
ffff8000001051f3:	00 00 00 
ffff8000001051f6:	4c 01 db             	add    %r11,%rbx
ffff8000001051f9:	49 89 df             	mov    %rbx,%r15
ffff8000001051fc:	48 b8 c1 cd ff ff ff 	movabs $0xffffffffffffcdc1,%rax
ffff800000105203:	ff ff ff 
ffff800000105206:	48 01 d8             	add    %rbx,%rax
ffff800000105209:	ff d0                	callq  *%rax
ffff80000010520b:	48 ba 50 00 00 00 00 	movabs $0x50,%rdx
ffff800000105212:	00 00 00 
ffff800000105215:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000105219:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000105220:	00 00 00 
ffff800000105223:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105227:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff80000010522d:	48 89 c2             	mov    %rax,%rdx
ffff800000105230:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000105237:	00 00 00 
ffff80000010523a:	48 c7 04 03 00 00 00 	movq   $0x0,(%rbx,%rax,1)
ffff800000105241:	00 
ffff800000105242:	48 c7 44 03 08 00 00 	movq   $0x0,0x8(%rbx,%rax,1)
ffff800000105249:	00 00 
ffff80000010524b:	48 c7 44 03 10 00 00 	movq   $0x0,0x10(%rbx,%rax,1)
ffff800000105252:	00 00 
ffff800000105254:	48 c7 44 03 18 00 00 	movq   $0x0,0x18(%rbx,%rax,1)
ffff80000010525b:	00 00 
ffff80000010525d:	48 c7 44 03 20 00 00 	movq   $0x0,0x20(%rbx,%rax,1)
ffff800000105264:	00 00 
ffff800000105266:	48 c7 44 03 28 00 00 	movq   $0x0,0x28(%rbx,%rax,1)
ffff80000010526d:	00 00 
ffff80000010526f:	48 c7 44 03 30 00 00 	movq   $0x0,0x30(%rbx,%rax,1)
ffff800000105276:	00 00 
ffff800000105278:	48 c7 44 03 38 00 00 	movq   $0x0,0x38(%rbx,%rax,1)
ffff80000010527f:	00 00 
ffff800000105281:	48 c7 44 03 40 00 00 	movq   $0x0,0x40(%rbx,%rax,1)
ffff800000105288:	00 00 
ffff80000010528a:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff800000105291:	00 00 00 
ffff800000105294:	48 89 54 03 08       	mov    %rdx,0x8(%rbx,%rax,1)
ffff800000105299:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001052a0:	00 00 00 
ffff8000001052a3:	48 c7 44 03 18 10 00 	movq   $0x10,0x18(%rbx,%rax,1)
ffff8000001052aa:	00 00 
ffff8000001052ac:	48 b8 70 00 00 00 00 	movabs $0x70,%rax
ffff8000001052b3:	00 00 00 
ffff8000001052b6:	48 c7 44 03 20 10 00 	movq   $0x10,0x20(%rbx,%rax,1)
ffff8000001052bd:	00 00 
ffff8000001052bf:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff8000001052c6:	00 00 00 
ffff8000001052c9:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001052cd:	48 ba 50 00 00 00 00 	movabs $0x50,%rdx
ffff8000001052d4:	00 00 00 
ffff8000001052d7:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001052db:	48 89 d7             	mov    %rdx,%rdi
ffff8000001052de:	48 ba 50 00 00 00 00 	movabs $0x50,%rdx
ffff8000001052e5:	00 00 00 
ffff8000001052e8:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001052ec:	48 89 d6             	mov    %rdx,%rsi
ffff8000001052ef:	48 ba 50 00 00 00 00 	movabs $0x50,%rdx
ffff8000001052f6:	00 00 00 
ffff8000001052f9:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001052fd:	48 81 c2 00 10 00 00 	add    $0x1000,%rdx
ffff800000105304:	48 89 d1             	mov    %rdx,%rcx
ffff800000105307:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff80000010530e:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
ffff800000105315:	00 
ffff800000105316:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
ffff80000010531d:	00 
ffff80000010531e:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
ffff800000105325:	00 
ffff800000105326:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
ffff80000010532d:	00 
ffff80000010532e:	48 c7 40 28 00 00 00 	movq   $0x0,0x28(%rax)
ffff800000105335:	00 
ffff800000105336:	48 c7 40 30 00 00 00 	movq   $0x0,0x30(%rax)
ffff80000010533d:	00 
ffff80000010533e:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000105345:	00 
ffff800000105346:	48 89 38             	mov    %rdi,(%rax)
ffff800000105349:	48 89 70 08          	mov    %rsi,0x8(%rax)
ffff80000010534d:	c7 40 14 04 00 00 00 	movl   $0x4,0x14(%rax)
ffff800000105354:	48 ba 70 00 00 00 00 	movabs $0x70,%rdx
ffff80000010535b:	00 00 00 
ffff80000010535e:	48 8d 14 13          	lea    (%rbx,%rdx,1),%rdx
ffff800000105362:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000105366:	48 89 48 28          	mov    %rcx,0x28(%rax)
ffff80000010536a:	ba 07 00 00 00       	mov    $0x7,%edx
ffff80000010536f:	be 0a 00 00 00       	mov    $0xa,%esi
ffff800000105374:	48 b8 7b a4 ff ff ff 	movabs $0xffffffffffffa47b,%rax
ffff80000010537b:	ff ff ff 
ffff80000010537e:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000105382:	48 b8 fd a6 ff ff ff 	movabs $0xffffffffffffa6fd,%rax
ffff800000105389:	ff ff ff 
ffff80000010538c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105390:	ff d0                	callq  *%rax
ffff800000105392:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff800000105399:	00 00 00 
ffff80000010539c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001053a0:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
ffff8000001053a7:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff8000001053ae:	00 00 00 
ffff8000001053b1:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001053b5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001053b9:	48 b8 50 00 00 00 00 	movabs $0x50,%rax
ffff8000001053c0:	00 00 00 
ffff8000001053c3:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001053c7:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001053cb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001053cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001053d3:	48 8b 40 18          	mov    0x18(%rax),%rax
ffff8000001053d7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001053db:	4c 8b 42 18          	mov    0x18(%rdx),%r8
ffff8000001053df:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001053e3:	48 8b 52 18          	mov    0x18(%rdx),%rdx
ffff8000001053e7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
ffff8000001053eb:	48 8b 49 18          	mov    0x18(%rcx),%rcx
ffff8000001053ef:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
ffff8000001053f3:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
ffff8000001053f7:	55                   	push   %rbp
ffff8000001053f8:	50                   	push   %rax
ffff8000001053f9:	48 89 60 08          	mov    %rsp,0x8(%rax)
ffff8000001053fd:	48 8b 62 08          	mov    0x8(%rdx),%rsp
ffff800000105401:	48 8d 05 0c 00 00 00 	lea    0xc(%rip),%rax        # ffff800000105414 <taskinit+0x245>
ffff800000105408:	49 89 40 10          	mov    %rax,0x10(%r8)
ffff80000010540c:	ff 71 10             	pushq  0x10(%rcx)
ffff80000010540f:	e9 de fc ff ff       	jmpq   ffff8000001050f2 <__switch_to>
ffff800000105414:	58                   	pop    %rax
ffff800000105415:	5d                   	pop    %rbp
ffff800000105416:	90                   	nop
ffff800000105417:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
ffff80000010541e:	5b                   	pop    %rbx
ffff80000010541f:	41 5f                	pop    %r15
ffff800000105421:	5d                   	pop    %rbp
ffff800000105422:	c3                   	retq   

ffff800000105423 <tssinit>:
ffff800000105423:	f3 0f 1e fa          	endbr64 
ffff800000105427:	55                   	push   %rbp
ffff800000105428:	48 89 e5             	mov    %rsp,%rbp
ffff80000010542b:	f3 0f 1e fa          	endbr64 
ffff80000010542f:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010542b <tssinit+0x8>
ffff800000105436:	49 bb a5 54 00 00 00 	movabs $0x54a5,%r11
ffff80000010543d:	00 00 00 
ffff800000105440:	4c 01 d8             	add    %r11,%rax
ffff800000105443:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000105447:	89 f2                	mov    %esi,%edx
ffff800000105449:	66 89 55 e4          	mov    %dx,-0x1c(%rbp)
ffff80000010544d:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105454:	ff ff ff 
ffff800000105457:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010545b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010545f:	48 89 4a 04          	mov    %rcx,0x4(%rdx)
ffff800000105463:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff80000010546a:	ff ff ff 
ffff80000010546d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105471:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105475:	48 89 4a 0c          	mov    %rcx,0xc(%rdx)
ffff800000105479:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105480:	ff ff ff 
ffff800000105483:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105487:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010548b:	48 89 4a 14          	mov    %rcx,0x14(%rdx)
ffff80000010548f:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105496:	ff ff ff 
ffff800000105499:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010549d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001054a1:	48 89 4a 24          	mov    %rcx,0x24(%rdx)
ffff8000001054a5:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001054ac:	ff ff ff 
ffff8000001054af:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001054b3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001054b7:	48 89 4a 2c          	mov    %rcx,0x2c(%rdx)
ffff8000001054bb:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001054c2:	ff ff ff 
ffff8000001054c5:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001054c9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001054cd:	48 89 4a 34          	mov    %rcx,0x34(%rdx)
ffff8000001054d1:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001054d8:	ff ff ff 
ffff8000001054db:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001054df:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001054e3:	48 89 4a 3c          	mov    %rcx,0x3c(%rdx)
ffff8000001054e7:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff8000001054ee:	ff ff ff 
ffff8000001054f1:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001054f5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001054f9:	48 89 4a 44          	mov    %rcx,0x44(%rdx)
ffff8000001054fd:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff800000105504:	ff ff ff 
ffff800000105507:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff80000010550b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff80000010550f:	48 89 4a 4c          	mov    %rcx,0x4c(%rdx)
ffff800000105513:	48 ba 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rdx
ffff80000010551a:	ff ff ff 
ffff80000010551d:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff800000105521:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff800000105525:	48 89 4a 54          	mov    %rcx,0x54(%rdx)
ffff800000105529:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff80000010552d:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105534:	ff ff ff 
ffff800000105537:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010553b:	48 63 f2             	movslq %edx,%rsi
ffff80000010553e:	66 c7 04 f1 67 00    	movw   $0x67,(%rcx,%rsi,8)
ffff800000105544:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff80000010554b:	ff ff ff 
ffff80000010554e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105552:	89 cf                	mov    %ecx,%edi
ffff800000105554:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff80000010555b:	ff ff ff 
ffff80000010555e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105562:	48 63 f2             	movslq %edx,%rsi
ffff800000105565:	66 89 7c f1 02       	mov    %di,0x2(%rcx,%rsi,8)
ffff80000010556a:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff800000105571:	ff ff ff 
ffff800000105574:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105578:	48 c1 e9 10          	shr    $0x10,%rcx
ffff80000010557c:	89 cf                	mov    %ecx,%edi
ffff80000010557e:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105585:	ff ff ff 
ffff800000105588:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010558c:	48 63 f2             	movslq %edx,%rsi
ffff80000010558f:	40 88 7c f1 04       	mov    %dil,0x4(%rcx,%rsi,8)
ffff800000105594:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff80000010559b:	ff ff ff 
ffff80000010559e:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001055a2:	48 63 f2             	movslq %edx,%rsi
ffff8000001055a5:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff8000001055aa:	83 e7 f0             	and    $0xfffffff0,%edi
ffff8000001055ad:	83 cf 09             	or     $0x9,%edi
ffff8000001055b0:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff8000001055b5:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001055bc:	ff ff ff 
ffff8000001055bf:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001055c3:	48 63 f2             	movslq %edx,%rsi
ffff8000001055c6:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff8000001055cb:	83 e7 ef             	and    $0xffffffef,%edi
ffff8000001055ce:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff8000001055d3:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001055da:	ff ff ff 
ffff8000001055dd:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001055e1:	48 63 f2             	movslq %edx,%rsi
ffff8000001055e4:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff8000001055e9:	83 e7 9f             	and    $0xffffff9f,%edi
ffff8000001055ec:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff8000001055f1:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001055f8:	ff ff ff 
ffff8000001055fb:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001055ff:	48 63 f2             	movslq %edx,%rsi
ffff800000105602:	0f b6 7c f1 05       	movzbl 0x5(%rcx,%rsi,8),%edi
ffff800000105607:	83 cf 80             	or     $0xffffff80,%edi
ffff80000010560a:	40 88 7c f1 05       	mov    %dil,0x5(%rcx,%rsi,8)
ffff80000010560f:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105616:	ff ff ff 
ffff800000105619:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010561d:	48 63 f2             	movslq %edx,%rsi
ffff800000105620:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000105625:	83 e7 f0             	and    $0xfffffff0,%edi
ffff800000105628:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff80000010562d:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105634:	ff ff ff 
ffff800000105637:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff80000010563b:	48 63 f2             	movslq %edx,%rsi
ffff80000010563e:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000105643:	83 e7 ef             	and    $0xffffffef,%edi
ffff800000105646:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff80000010564b:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105652:	ff ff ff 
ffff800000105655:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105659:	48 63 f2             	movslq %edx,%rsi
ffff80000010565c:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff800000105661:	83 e7 df             	and    $0xffffffdf,%edi
ffff800000105664:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000105669:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105670:	ff ff ff 
ffff800000105673:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105677:	48 63 f2             	movslq %edx,%rsi
ffff80000010567a:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff80000010567f:	83 e7 bf             	and    $0xffffffbf,%edi
ffff800000105682:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff800000105687:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff80000010568e:	ff ff ff 
ffff800000105691:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105695:	48 63 f2             	movslq %edx,%rsi
ffff800000105698:	0f b6 7c f1 06       	movzbl 0x6(%rcx,%rsi,8),%edi
ffff80000010569d:	83 e7 7f             	and    $0x7f,%edi
ffff8000001056a0:	40 88 7c f1 06       	mov    %dil,0x6(%rcx,%rsi,8)
ffff8000001056a5:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff8000001056ac:	ff ff ff 
ffff8000001056af:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001056b3:	48 c1 e9 20          	shr    $0x20,%rcx
ffff8000001056b7:	89 ce                	mov    %ecx,%esi
ffff8000001056b9:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001056c0:	ff ff ff 
ffff8000001056c3:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001056c7:	48 63 d2             	movslq %edx,%rdx
ffff8000001056ca:	40 88 74 d1 07       	mov    %sil,0x7(%rcx,%rdx,8)
ffff8000001056cf:	0f b7 55 e4          	movzwl -0x1c(%rbp),%edx
ffff8000001056d3:	83 c2 01             	add    $0x1,%edx
ffff8000001056d6:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff8000001056dd:	ff ff ff 
ffff8000001056e0:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001056e4:	48 63 f2             	movslq %edx,%rsi
ffff8000001056e7:	48 c7 04 f1 00 00 00 	movq   $0x0,(%rcx,%rsi,8)
ffff8000001056ee:	00 
ffff8000001056ef:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff8000001056f6:	ff ff ff 
ffff8000001056f9:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff8000001056fd:	48 c1 e9 20          	shr    $0x20,%rcx
ffff800000105701:	89 cf                	mov    %ecx,%edi
ffff800000105703:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff80000010570a:	ff ff ff 
ffff80000010570d:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105711:	48 63 f2             	movslq %edx,%rsi
ffff800000105714:	66 89 3c f1          	mov    %di,(%rcx,%rsi,8)
ffff800000105718:	48 b9 70 ff ff ff ff 	movabs $0xffffffffffffff70,%rcx
ffff80000010571f:	ff ff ff 
ffff800000105722:	48 8b 0c 08          	mov    (%rax,%rcx,1),%rcx
ffff800000105726:	48 c1 e9 30          	shr    $0x30,%rcx
ffff80000010572a:	89 ce                	mov    %ecx,%esi
ffff80000010572c:	48 b9 98 ff ff ff ff 	movabs $0xffffffffffffff98,%rcx
ffff800000105733:	ff ff ff 
ffff800000105736:	48 8b 04 08          	mov    (%rax,%rcx,1),%rax
ffff80000010573a:	48 63 d2             	movslq %edx,%rdx
ffff80000010573d:	66 89 74 d0 02       	mov    %si,0x2(%rax,%rdx,8)
ffff800000105742:	0f b7 45 e4          	movzwl -0x1c(%rbp),%eax
ffff800000105746:	c1 e0 03             	shl    $0x3,%eax
ffff800000105749:	66 89 45 fe          	mov    %ax,-0x2(%rbp)
ffff80000010574d:	0f b7 45 fe          	movzwl -0x2(%rbp),%eax
ffff800000105751:	0f 00 d8             	ltr    %ax
ffff800000105754:	90                   	nop
ffff800000105755:	5d                   	pop    %rbp
ffff800000105756:	c3                   	retq   

ffff800000105757 <trapinit>:
ffff800000105757:	f3 0f 1e fa          	endbr64 
ffff80000010575b:	55                   	push   %rbp
ffff80000010575c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010575f:	53                   	push   %rbx
ffff800000105760:	48 83 ec 08          	sub    $0x8,%rsp
ffff800000105764:	f3 0f 1e fa          	endbr64 
ffff800000105768:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000105764 <trapinit+0xd>
ffff80000010576f:	49 bb 6c 51 00 00 00 	movabs $0x516c,%r11
ffff800000105776:	00 00 00 
ffff800000105779:	4c 01 db             	add    %r11,%rbx
ffff80000010577c:	48 b8 18 ff ff ff ff 	movabs $0xffffffffffffff18,%rax
ffff800000105783:	ff ff ff 
ffff800000105786:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010578a:	48 89 c2             	mov    %rax,%rdx
ffff80000010578d:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105792:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105799:	ff ff ff 
ffff80000010579c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001057a0:	48 89 c7             	mov    %rax,%rdi
ffff8000001057a3:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff8000001057aa:	ff ff ff 
ffff8000001057ad:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057b1:	ff d0                	callq  *%rax
ffff8000001057b3:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001057ba:	ff ff ff 
ffff8000001057bd:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001057c1:	48 8d 40 10          	lea    0x10(%rax),%rax
ffff8000001057c5:	48 ba 30 ff ff ff ff 	movabs $0xffffffffffffff30,%rdx
ffff8000001057cc:	ff ff ff 
ffff8000001057cf:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001057d3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001057d8:	48 89 c7             	mov    %rax,%rdi
ffff8000001057db:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff8000001057e2:	ff ff ff 
ffff8000001057e5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001057e9:	ff d0                	callq  *%rax
ffff8000001057eb:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001057f2:	ff ff ff 
ffff8000001057f5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001057f9:	48 8d 40 20          	lea    0x20(%rax),%rax
ffff8000001057fd:	48 ba e8 ff ff ff ff 	movabs $0xffffffffffffffe8,%rdx
ffff800000105804:	ff ff ff 
ffff800000105807:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010580b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105810:	48 89 c7             	mov    %rax,%rdi
ffff800000105813:	48 b8 37 b3 ff ff ff 	movabs $0xffffffffffffb337,%rax
ffff80000010581a:	ff ff ff 
ffff80000010581d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105821:	ff d0                	callq  *%rax
ffff800000105823:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010582a:	ff ff ff 
ffff80000010582d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105831:	48 8d 40 30          	lea    0x30(%rax),%rax
ffff800000105835:	48 ba f8 ff ff ff ff 	movabs $0xfffffffffffffff8,%rdx
ffff80000010583c:	ff ff ff 
ffff80000010583f:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105843:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105848:	48 89 c7             	mov    %rax,%rdi
ffff80000010584b:	48 b8 e7 b4 ff ff ff 	movabs $0xffffffffffffb4e7,%rax
ffff800000105852:	ff ff ff 
ffff800000105855:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105859:	ff d0                	callq  *%rax
ffff80000010585b:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105862:	ff ff ff 
ffff800000105865:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105869:	48 8d 40 40          	lea    0x40(%rax),%rax
ffff80000010586d:	48 ba 28 ff ff ff ff 	movabs $0xffffffffffffff28,%rdx
ffff800000105874:	ff ff ff 
ffff800000105877:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010587b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105880:	48 89 c7             	mov    %rax,%rdi
ffff800000105883:	48 b8 e7 b4 ff ff ff 	movabs $0xffffffffffffb4e7,%rax
ffff80000010588a:	ff ff ff 
ffff80000010588d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105891:	ff d0                	callq  *%rax
ffff800000105893:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010589a:	ff ff ff 
ffff80000010589d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001058a1:	48 8d 40 50          	lea    0x50(%rax),%rax
ffff8000001058a5:	48 ba 38 ff ff ff ff 	movabs $0xffffffffffffff38,%rdx
ffff8000001058ac:	ff ff ff 
ffff8000001058af:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001058b3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001058b8:	48 89 c7             	mov    %rax,%rdi
ffff8000001058bb:	48 b8 e7 b4 ff ff ff 	movabs $0xffffffffffffb4e7,%rax
ffff8000001058c2:	ff ff ff 
ffff8000001058c5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001058c9:	ff d0                	callq  *%rax
ffff8000001058cb:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001058d2:	ff ff ff 
ffff8000001058d5:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001058d9:	48 8d 40 60          	lea    0x60(%rax),%rax
ffff8000001058dd:	48 ba 68 ff ff ff ff 	movabs $0xffffffffffffff68,%rdx
ffff8000001058e4:	ff ff ff 
ffff8000001058e7:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001058eb:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001058f0:	48 89 c7             	mov    %rax,%rdi
ffff8000001058f3:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff8000001058fa:	ff ff ff 
ffff8000001058fd:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105901:	ff d0                	callq  *%rax
ffff800000105903:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010590a:	ff ff ff 
ffff80000010590d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105911:	48 8d 40 70          	lea    0x70(%rax),%rax
ffff800000105915:	48 ba f0 ff ff ff ff 	movabs $0xfffffffffffffff0,%rdx
ffff80000010591c:	ff ff ff 
ffff80000010591f:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105923:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105928:	48 89 c7             	mov    %rax,%rdi
ffff80000010592b:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105932:	ff ff ff 
ffff800000105935:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105939:	ff d0                	callq  *%rax
ffff80000010593b:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105942:	ff ff ff 
ffff800000105945:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105949:	48 8d 80 80 00 00 00 	lea    0x80(%rax),%rax
ffff800000105950:	48 ba 88 ff ff ff ff 	movabs $0xffffffffffffff88,%rdx
ffff800000105957:	ff ff ff 
ffff80000010595a:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff80000010595e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105963:	48 89 c7             	mov    %rax,%rdi
ffff800000105966:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff80000010596d:	ff ff ff 
ffff800000105970:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105974:	ff d0                	callq  *%rax
ffff800000105976:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010597d:	ff ff ff 
ffff800000105980:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105984:	48 8d 80 90 00 00 00 	lea    0x90(%rax),%rax
ffff80000010598b:	48 ba b0 ff ff ff ff 	movabs $0xffffffffffffffb0,%rdx
ffff800000105992:	ff ff ff 
ffff800000105995:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105999:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010599e:	48 89 c7             	mov    %rax,%rdi
ffff8000001059a1:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff8000001059a8:	ff ff ff 
ffff8000001059ab:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001059af:	ff d0                	callq  *%rax
ffff8000001059b1:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001059b8:	ff ff ff 
ffff8000001059bb:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001059bf:	48 8d 80 a0 00 00 00 	lea    0xa0(%rax),%rax
ffff8000001059c6:	48 ba 40 ff ff ff ff 	movabs $0xffffffffffffff40,%rdx
ffff8000001059cd:	ff ff ff 
ffff8000001059d0:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001059d4:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001059d9:	48 89 c7             	mov    %rax,%rdi
ffff8000001059dc:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff8000001059e3:	ff ff ff 
ffff8000001059e6:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001059ea:	ff d0                	callq  *%rax
ffff8000001059ec:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff8000001059f3:	ff ff ff 
ffff8000001059f6:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff8000001059fa:	48 8d 80 b0 00 00 00 	lea    0xb0(%rax),%rax
ffff800000105a01:	48 ba 50 ff ff ff ff 	movabs $0xffffffffffffff50,%rdx
ffff800000105a08:	ff ff ff 
ffff800000105a0b:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105a0f:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105a14:	48 89 c7             	mov    %rax,%rdi
ffff800000105a17:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105a1e:	ff ff ff 
ffff800000105a21:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a25:	ff d0                	callq  *%rax
ffff800000105a27:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105a2e:	ff ff ff 
ffff800000105a31:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105a35:	48 8d 80 c0 00 00 00 	lea    0xc0(%rax),%rax
ffff800000105a3c:	48 ba 58 ff ff ff ff 	movabs $0xffffffffffffff58,%rdx
ffff800000105a43:	ff ff ff 
ffff800000105a46:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105a4a:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105a4f:	48 89 c7             	mov    %rax,%rdi
ffff800000105a52:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105a59:	ff ff ff 
ffff800000105a5c:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a60:	ff d0                	callq  *%rax
ffff800000105a62:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105a69:	ff ff ff 
ffff800000105a6c:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105a70:	48 8d 80 d0 00 00 00 	lea    0xd0(%rax),%rax
ffff800000105a77:	48 ba 20 ff ff ff ff 	movabs $0xffffffffffffff20,%rdx
ffff800000105a7e:	ff ff ff 
ffff800000105a81:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105a85:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105a8a:	48 89 c7             	mov    %rax,%rdi
ffff800000105a8d:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105a94:	ff ff ff 
ffff800000105a97:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105a9b:	ff d0                	callq  *%rax
ffff800000105a9d:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105aa4:	ff ff ff 
ffff800000105aa7:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105aab:	48 8d 80 e0 00 00 00 	lea    0xe0(%rax),%rax
ffff800000105ab2:	48 ba b8 ff ff ff ff 	movabs $0xffffffffffffffb8,%rdx
ffff800000105ab9:	ff ff ff 
ffff800000105abc:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105ac0:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105ac5:	48 89 c7             	mov    %rax,%rdi
ffff800000105ac8:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105acf:	ff ff ff 
ffff800000105ad2:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105ad6:	ff d0                	callq  *%rax
ffff800000105ad8:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105adf:	ff ff ff 
ffff800000105ae2:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105ae6:	48 8d 80 00 01 00 00 	lea    0x100(%rax),%rax
ffff800000105aed:	48 ba 80 ff ff ff ff 	movabs $0xffffffffffffff80,%rdx
ffff800000105af4:	ff ff ff 
ffff800000105af7:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105afb:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105b00:	48 89 c7             	mov    %rax,%rdi
ffff800000105b03:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105b0a:	ff ff ff 
ffff800000105b0d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b11:	ff d0                	callq  *%rax
ffff800000105b13:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105b1a:	ff ff ff 
ffff800000105b1d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105b21:	48 8d 80 10 01 00 00 	lea    0x110(%rax),%rax
ffff800000105b28:	48 ba 78 ff ff ff ff 	movabs $0xffffffffffffff78,%rdx
ffff800000105b2f:	ff ff ff 
ffff800000105b32:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105b36:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105b3b:	48 89 c7             	mov    %rax,%rdi
ffff800000105b3e:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105b45:	ff ff ff 
ffff800000105b48:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b4c:	ff d0                	callq  *%rax
ffff800000105b4e:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105b55:	ff ff ff 
ffff800000105b58:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105b5c:	48 8d 80 20 01 00 00 	lea    0x120(%rax),%rax
ffff800000105b63:	48 ba c8 ff ff ff ff 	movabs $0xffffffffffffffc8,%rdx
ffff800000105b6a:	ff ff ff 
ffff800000105b6d:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105b71:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105b76:	48 89 c7             	mov    %rax,%rdi
ffff800000105b79:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105b80:	ff ff ff 
ffff800000105b83:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105b87:	ff d0                	callq  *%rax
ffff800000105b89:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105b90:	ff ff ff 
ffff800000105b93:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105b97:	48 8d 80 30 01 00 00 	lea    0x130(%rax),%rax
ffff800000105b9e:	48 ba e0 ff ff ff ff 	movabs $0xffffffffffffffe0,%rdx
ffff800000105ba5:	ff ff ff 
ffff800000105ba8:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105bac:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105bb1:	48 89 c7             	mov    %rax,%rdi
ffff800000105bb4:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105bbb:	ff ff ff 
ffff800000105bbe:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105bc2:	ff d0                	callq  *%rax
ffff800000105bc4:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000105bcb:	ff ff ff 
ffff800000105bce:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000105bd2:	48 8d 80 40 01 00 00 	lea    0x140(%rax),%rax
ffff800000105bd9:	48 ba a8 ff ff ff ff 	movabs $0xffffffffffffffa8,%rdx
ffff800000105be0:	ff ff ff 
ffff800000105be3:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000105be7:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000105bec:	48 89 c7             	mov    %rax,%rdi
ffff800000105bef:	48 b8 0e b4 ff ff ff 	movabs $0xffffffffffffb40e,%rax
ffff800000105bf6:	ff ff ff 
ffff800000105bf9:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000105bfd:	ff d0                	callq  *%rax
ffff800000105bff:	90                   	nop
ffff800000105c00:	48 83 c4 08          	add    $0x8,%rsp
ffff800000105c04:	5b                   	pop    %rbx
ffff800000105c05:	5d                   	pop    %rbp
ffff800000105c06:	c3                   	retq   

ffff800000105c07 <set_intr_gate>:
ffff800000105c07:	f3 0f 1e fa          	endbr64 
ffff800000105c0b:	55                   	push   %rbp
ffff800000105c0c:	48 89 e5             	mov    %rsp,%rbp
ffff800000105c0f:	f3 0f 1e fa          	endbr64 
ffff800000105c13:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000105c0f <set_intr_gate+0x8>
ffff800000105c1a:	49 bb c1 4c 00 00 00 	movabs $0x4cc1,%r11
ffff800000105c21:	00 00 00 
ffff800000105c24:	4c 01 d8             	add    %r11,%rax
ffff800000105c27:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105c2b:	89 75 f4             	mov    %esi,-0xc(%rbp)
ffff800000105c2e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105c32:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105c36:	89 c2                	mov    %eax,%edx
ffff800000105c38:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c3c:	66 89 10             	mov    %dx,(%rax)
ffff800000105c3f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c43:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105c49:	8b 45 f4             	mov    -0xc(%rbp),%eax
ffff800000105c4c:	83 e0 07             	and    $0x7,%eax
ffff800000105c4f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000105c53:	83 e0 07             	and    $0x7,%eax
ffff800000105c56:	89 c1                	mov    %eax,%ecx
ffff800000105c58:	0f b6 42 04          	movzbl 0x4(%rdx),%eax
ffff800000105c5c:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000105c5f:	09 c8                	or     %ecx,%eax
ffff800000105c61:	88 42 04             	mov    %al,0x4(%rdx)
ffff800000105c64:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c68:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105c6c:	83 e2 07             	and    $0x7,%edx
ffff800000105c6f:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105c72:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c76:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105c7a:	83 e2 f0             	and    $0xfffffff0,%edx
ffff800000105c7d:	83 ca 0e             	or     $0xe,%edx
ffff800000105c80:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105c83:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c87:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105c8b:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105c8e:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105c91:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105c95:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105c99:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105c9c:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105c9f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ca3:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105ca7:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105caa:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105cad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105cb1:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105cb5:	89 c2                	mov    %eax,%edx
ffff800000105cb7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cbb:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105cbf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105cc3:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105cc7:	89 c2                	mov    %eax,%edx
ffff800000105cc9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ccd:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105cd0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105cd4:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105cdb:	90                   	nop
ffff800000105cdc:	5d                   	pop    %rbp
ffff800000105cdd:	c3                   	retq   

ffff800000105cde <set_trap_gate>:
ffff800000105cde:	f3 0f 1e fa          	endbr64 
ffff800000105ce2:	55                   	push   %rbp
ffff800000105ce3:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ce6:	f3 0f 1e fa          	endbr64 
ffff800000105cea:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000105ce6 <set_trap_gate+0x8>
ffff800000105cf1:	49 bb ea 4b 00 00 00 	movabs $0x4bea,%r11
ffff800000105cf8:	00 00 00 
ffff800000105cfb:	4c 01 d8             	add    %r11,%rax
ffff800000105cfe:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105d02:	89 f0                	mov    %esi,%eax
ffff800000105d04:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105d08:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105d0b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d0f:	89 c2                	mov    %eax,%edx
ffff800000105d11:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d15:	66 89 10             	mov    %dx,(%rax)
ffff800000105d18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d1c:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105d22:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff800000105d26:	83 e0 07             	and    $0x7,%eax
ffff800000105d29:	89 c2                	mov    %eax,%edx
ffff800000105d2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d2f:	89 d1                	mov    %edx,%ecx
ffff800000105d31:	83 e1 07             	and    $0x7,%ecx
ffff800000105d34:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105d38:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105d3b:	09 ca                	or     %ecx,%edx
ffff800000105d3d:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105d40:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d44:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105d48:	83 e2 07             	and    $0x7,%edx
ffff800000105d4b:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105d4e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d52:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105d56:	83 ca 0f             	or     $0xf,%edx
ffff800000105d59:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105d5c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d60:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105d64:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105d67:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105d6a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d6e:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105d72:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105d75:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105d78:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d7c:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105d80:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105d83:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105d86:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d8a:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105d8e:	89 c2                	mov    %eax,%edx
ffff800000105d90:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105d94:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105d98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105d9c:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105da0:	89 c2                	mov    %eax,%edx
ffff800000105da2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105da6:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105da9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105dad:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105db4:	90                   	nop
ffff800000105db5:	5d                   	pop    %rbp
ffff800000105db6:	c3                   	retq   

ffff800000105db7 <set_system_gate>:
ffff800000105db7:	f3 0f 1e fa          	endbr64 
ffff800000105dbb:	55                   	push   %rbp
ffff800000105dbc:	48 89 e5             	mov    %rsp,%rbp
ffff800000105dbf:	f3 0f 1e fa          	endbr64 
ffff800000105dc3:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000105dbf <set_system_gate+0x8>
ffff800000105dca:	49 bb 11 4b 00 00 00 	movabs $0x4b11,%r11
ffff800000105dd1:	00 00 00 
ffff800000105dd4:	4c 01 d8             	add    %r11,%rax
ffff800000105dd7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105ddb:	89 f0                	mov    %esi,%eax
ffff800000105ddd:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105de1:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105de4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105de8:	89 c2                	mov    %eax,%edx
ffff800000105dea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105dee:	66 89 10             	mov    %dx,(%rax)
ffff800000105df1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105df5:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105dfb:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff800000105dff:	83 e0 07             	and    $0x7,%eax
ffff800000105e02:	89 c2                	mov    %eax,%edx
ffff800000105e04:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e08:	89 d1                	mov    %edx,%ecx
ffff800000105e0a:	83 e1 07             	and    $0x7,%ecx
ffff800000105e0d:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105e11:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105e14:	09 ca                	or     %ecx,%edx
ffff800000105e16:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105e19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e1d:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105e21:	83 e2 07             	and    $0x7,%edx
ffff800000105e24:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105e27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e2b:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105e2f:	83 ca 0f             	or     $0xf,%edx
ffff800000105e32:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105e35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e39:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105e3d:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105e40:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105e43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e47:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105e4b:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105e4e:	83 ca 40             	or     $0x40,%edx
ffff800000105e51:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105e54:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e58:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105e5c:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105e5f:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105e62:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e66:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105e6a:	89 c2                	mov    %eax,%edx
ffff800000105e6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e70:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105e74:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105e78:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105e7c:	89 c2                	mov    %eax,%edx
ffff800000105e7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e82:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105e85:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105e89:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105e90:	90                   	nop
ffff800000105e91:	5d                   	pop    %rbp
ffff800000105e92:	c3                   	retq   

ffff800000105e93 <set_system_intr_gate>:
ffff800000105e93:	f3 0f 1e fa          	endbr64 
ffff800000105e97:	55                   	push   %rbp
ffff800000105e98:	48 89 e5             	mov    %rsp,%rbp
ffff800000105e9b:	f3 0f 1e fa          	endbr64 
ffff800000105e9f:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000105e9b <set_system_intr_gate+0x8>
ffff800000105ea6:	49 bb 35 4a 00 00 00 	movabs $0x4a35,%r11
ffff800000105ead:	00 00 00 
ffff800000105eb0:	4c 01 d8             	add    %r11,%rax
ffff800000105eb3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff800000105eb7:	89 f0                	mov    %esi,%eax
ffff800000105eb9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000105ebd:	88 45 f4             	mov    %al,-0xc(%rbp)
ffff800000105ec0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105ec4:	89 c2                	mov    %eax,%edx
ffff800000105ec6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105eca:	66 89 10             	mov    %dx,(%rax)
ffff800000105ecd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ed1:	66 c7 40 02 08 00    	movw   $0x8,0x2(%rax)
ffff800000105ed7:	0f b6 45 f4          	movzbl -0xc(%rbp),%eax
ffff800000105edb:	83 e0 07             	and    $0x7,%eax
ffff800000105ede:	89 c2                	mov    %eax,%edx
ffff800000105ee0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ee4:	89 d1                	mov    %edx,%ecx
ffff800000105ee6:	83 e1 07             	and    $0x7,%ecx
ffff800000105ee9:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105eed:	83 e2 f8             	and    $0xfffffff8,%edx
ffff800000105ef0:	09 ca                	or     %ecx,%edx
ffff800000105ef2:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105ef5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105ef9:	0f b6 50 04          	movzbl 0x4(%rax),%edx
ffff800000105efd:	83 e2 07             	and    $0x7,%edx
ffff800000105f00:	88 50 04             	mov    %dl,0x4(%rax)
ffff800000105f03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105f07:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105f0b:	83 e2 f0             	and    $0xfffffff0,%edx
ffff800000105f0e:	83 ca 0e             	or     $0xe,%edx
ffff800000105f11:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105f14:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105f18:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105f1c:	83 e2 ef             	and    $0xffffffef,%edx
ffff800000105f1f:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105f22:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105f26:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105f2a:	83 e2 9f             	and    $0xffffff9f,%edx
ffff800000105f2d:	83 ca 40             	or     $0x40,%edx
ffff800000105f30:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105f33:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105f37:	0f b6 50 05          	movzbl 0x5(%rax),%edx
ffff800000105f3b:	83 ca 80             	or     $0xffffff80,%edx
ffff800000105f3e:	88 50 05             	mov    %dl,0x5(%rax)
ffff800000105f41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f45:	48 c1 e8 10          	shr    $0x10,%rax
ffff800000105f49:	89 c2                	mov    %eax,%edx
ffff800000105f4b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105f4f:	66 89 50 06          	mov    %dx,0x6(%rax)
ffff800000105f53:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105f57:	48 c1 e8 20          	shr    $0x20,%rax
ffff800000105f5b:	89 c2                	mov    %eax,%edx
ffff800000105f5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105f61:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000105f64:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000105f68:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%rax)
ffff800000105f6f:	90                   	nop
ffff800000105f70:	5d                   	pop    %rbp
ffff800000105f71:	c3                   	retq   

ffff800000105f72 <do_divide_error>:
ffff800000105f72:	f3 0f 1e fa          	endbr64 
ffff800000105f76:	55                   	push   %rbp
ffff800000105f77:	48 89 e5             	mov    %rsp,%rbp
ffff800000105f7a:	41 57                	push   %r15
ffff800000105f7c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105f80:	f3 0f 1e fa          	endbr64 
ffff800000105f84:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105f80 <do_divide_error+0xe>
ffff800000105f8b:	49 bb 50 49 00 00 00 	movabs $0x4950,%r11
ffff800000105f92:	00 00 00 
ffff800000105f95:	4d 01 d8             	add    %r11,%r8
ffff800000105f98:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000105f9c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000105fa0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000105fa7:	00 
ffff800000105fa8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000105fac:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000105fb2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000105fb6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000105fba:	48 8b 08             	mov    (%rax),%rcx
ffff800000105fbd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000105fc1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000105fc5:	48 89 c6             	mov    %rax,%rsi
ffff800000105fc8:	48 b8 c0 e6 ff ff ff 	movabs $0xffffffffffffe6c0,%rax
ffff800000105fcf:	ff ff ff 
ffff800000105fd2:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000105fd6:	4d 89 c7             	mov    %r8,%r15
ffff800000105fd9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000105fde:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000105fe5:	ff ff ff 
ffff800000105fe8:	4d 01 c1             	add    %r8,%r9
ffff800000105feb:	41 ff d1             	callq  *%r9
ffff800000105fee:	eb fe                	jmp    ffff800000105fee <do_divide_error+0x7c>

ffff800000105ff0 <do_debug>:
ffff800000105ff0:	f3 0f 1e fa          	endbr64 
ffff800000105ff4:	55                   	push   %rbp
ffff800000105ff5:	48 89 e5             	mov    %rsp,%rbp
ffff800000105ff8:	41 57                	push   %r15
ffff800000105ffa:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000105ffe:	f3 0f 1e fa          	endbr64 
ffff800000106002:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000105ffe <do_debug+0xe>
ffff800000106009:	49 bb d2 48 00 00 00 	movabs $0x48d2,%r11
ffff800000106010:	00 00 00 
ffff800000106013:	4d 01 d8             	add    %r11,%r8
ffff800000106016:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010601a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010601e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106025:	00 
ffff800000106026:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010602a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106030:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106034:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106038:	48 8b 08             	mov    (%rax),%rcx
ffff80000010603b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010603f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106043:	48 89 c6             	mov    %rax,%rsi
ffff800000106046:	48 b8 f8 e6 ff ff ff 	movabs $0xffffffffffffe6f8,%rax
ffff80000010604d:	ff ff ff 
ffff800000106050:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106054:	4d 89 c7             	mov    %r8,%r15
ffff800000106057:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010605c:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106063:	ff ff ff 
ffff800000106066:	4d 01 c1             	add    %r8,%r9
ffff800000106069:	41 ff d1             	callq  *%r9
ffff80000010606c:	eb fe                	jmp    ffff80000010606c <do_debug+0x7c>

ffff80000010606e <do_nmi>:
ffff80000010606e:	f3 0f 1e fa          	endbr64 
ffff800000106072:	55                   	push   %rbp
ffff800000106073:	48 89 e5             	mov    %rsp,%rbp
ffff800000106076:	41 57                	push   %r15
ffff800000106078:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010607c:	f3 0f 1e fa          	endbr64 
ffff800000106080:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff80000010607c <do_nmi+0xe>
ffff800000106087:	49 bb 54 48 00 00 00 	movabs $0x4854,%r11
ffff80000010608e:	00 00 00 
ffff800000106091:	4d 01 d8             	add    %r11,%r8
ffff800000106094:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106098:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010609c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001060a3:	00 
ffff8000001060a4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001060a8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001060ae:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001060b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001060b6:	48 8b 08             	mov    (%rax),%rcx
ffff8000001060b9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001060bd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001060c1:	48 89 c6             	mov    %rax,%rsi
ffff8000001060c4:	48 b8 28 e7 ff ff ff 	movabs $0xffffffffffffe728,%rax
ffff8000001060cb:	ff ff ff 
ffff8000001060ce:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001060d2:	4d 89 c7             	mov    %r8,%r15
ffff8000001060d5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001060da:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff8000001060e1:	ff ff ff 
ffff8000001060e4:	4d 01 c1             	add    %r8,%r9
ffff8000001060e7:	41 ff d1             	callq  *%r9
ffff8000001060ea:	eb fe                	jmp    ffff8000001060ea <do_nmi+0x7c>

ffff8000001060ec <do_int3>:
ffff8000001060ec:	f3 0f 1e fa          	endbr64 
ffff8000001060f0:	55                   	push   %rbp
ffff8000001060f1:	48 89 e5             	mov    %rsp,%rbp
ffff8000001060f4:	41 57                	push   %r15
ffff8000001060f6:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001060fa:	f3 0f 1e fa          	endbr64 
ffff8000001060fe:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001060fa <do_int3+0xe>
ffff800000106105:	49 bb d6 47 00 00 00 	movabs $0x47d6,%r11
ffff80000010610c:	00 00 00 
ffff80000010610f:	4d 01 d8             	add    %r11,%r8
ffff800000106112:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106116:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010611a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106121:	00 
ffff800000106122:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106126:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010612c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106130:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106134:	48 8b 08             	mov    (%rax),%rcx
ffff800000106137:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010613b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010613f:	48 89 c6             	mov    %rax,%rsi
ffff800000106142:	48 b8 58 e7 ff ff ff 	movabs $0xffffffffffffe758,%rax
ffff800000106149:	ff ff ff 
ffff80000010614c:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106150:	4d 89 c7             	mov    %r8,%r15
ffff800000106153:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106158:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff80000010615f:	ff ff ff 
ffff800000106162:	4d 01 c1             	add    %r8,%r9
ffff800000106165:	41 ff d1             	callq  *%r9
ffff800000106168:	eb fe                	jmp    ffff800000106168 <do_int3+0x7c>

ffff80000010616a <do_overflow>:
ffff80000010616a:	f3 0f 1e fa          	endbr64 
ffff80000010616e:	55                   	push   %rbp
ffff80000010616f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106172:	41 57                	push   %r15
ffff800000106174:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106178:	f3 0f 1e fa          	endbr64 
ffff80000010617c:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106178 <do_overflow+0xe>
ffff800000106183:	49 bb 58 47 00 00 00 	movabs $0x4758,%r11
ffff80000010618a:	00 00 00 
ffff80000010618d:	4d 01 d8             	add    %r11,%r8
ffff800000106190:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106194:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106198:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010619f:	00 
ffff8000001061a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001061a4:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001061aa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001061ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001061b2:	48 8b 08             	mov    (%rax),%rcx
ffff8000001061b5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001061b9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001061bd:	48 89 c6             	mov    %rax,%rsi
ffff8000001061c0:	48 b8 88 e7 ff ff ff 	movabs $0xffffffffffffe788,%rax
ffff8000001061c7:	ff ff ff 
ffff8000001061ca:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001061ce:	4d 89 c7             	mov    %r8,%r15
ffff8000001061d1:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001061d6:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff8000001061dd:	ff ff ff 
ffff8000001061e0:	4d 01 c1             	add    %r8,%r9
ffff8000001061e3:	41 ff d1             	callq  *%r9
ffff8000001061e6:	eb fe                	jmp    ffff8000001061e6 <do_overflow+0x7c>

ffff8000001061e8 <do_bounds>:
ffff8000001061e8:	f3 0f 1e fa          	endbr64 
ffff8000001061ec:	55                   	push   %rbp
ffff8000001061ed:	48 89 e5             	mov    %rsp,%rbp
ffff8000001061f0:	41 57                	push   %r15
ffff8000001061f2:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001061f6:	f3 0f 1e fa          	endbr64 
ffff8000001061fa:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001061f6 <do_bounds+0xe>
ffff800000106201:	49 bb da 46 00 00 00 	movabs $0x46da,%r11
ffff800000106208:	00 00 00 
ffff80000010620b:	4d 01 d8             	add    %r11,%r8
ffff80000010620e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106212:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106216:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010621d:	00 
ffff80000010621e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106222:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106228:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010622c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106230:	48 8b 08             	mov    (%rax),%rcx
ffff800000106233:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106237:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010623b:	48 89 c6             	mov    %rax,%rsi
ffff80000010623e:	48 b8 b8 e7 ff ff ff 	movabs $0xffffffffffffe7b8,%rax
ffff800000106245:	ff ff ff 
ffff800000106248:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff80000010624c:	4d 89 c7             	mov    %r8,%r15
ffff80000010624f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106254:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff80000010625b:	ff ff ff 
ffff80000010625e:	4d 01 c1             	add    %r8,%r9
ffff800000106261:	41 ff d1             	callq  *%r9
ffff800000106264:	eb fe                	jmp    ffff800000106264 <do_bounds+0x7c>

ffff800000106266 <do_undefined_opcode>:
ffff800000106266:	f3 0f 1e fa          	endbr64 
ffff80000010626a:	55                   	push   %rbp
ffff80000010626b:	48 89 e5             	mov    %rsp,%rbp
ffff80000010626e:	41 57                	push   %r15
ffff800000106270:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106274:	f3 0f 1e fa          	endbr64 
ffff800000106278:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106274 <do_undefined_opcode+0xe>
ffff80000010627f:	49 bb 5c 46 00 00 00 	movabs $0x465c,%r11
ffff800000106286:	00 00 00 
ffff800000106289:	4d 01 d8             	add    %r11,%r8
ffff80000010628c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106290:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106294:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010629b:	00 
ffff80000010629c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001062a0:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001062a6:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001062aa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001062ae:	48 8b 08             	mov    (%rax),%rcx
ffff8000001062b1:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001062b5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001062b9:	48 89 c6             	mov    %rax,%rsi
ffff8000001062bc:	48 b8 e8 e7 ff ff ff 	movabs $0xffffffffffffe7e8,%rax
ffff8000001062c3:	ff ff ff 
ffff8000001062c6:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001062ca:	4d 89 c7             	mov    %r8,%r15
ffff8000001062cd:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001062d2:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff8000001062d9:	ff ff ff 
ffff8000001062dc:	4d 01 c1             	add    %r8,%r9
ffff8000001062df:	41 ff d1             	callq  *%r9
ffff8000001062e2:	eb fe                	jmp    ffff8000001062e2 <do_undefined_opcode+0x7c>

ffff8000001062e4 <do_dev_not_available>:
ffff8000001062e4:	f3 0f 1e fa          	endbr64 
ffff8000001062e8:	55                   	push   %rbp
ffff8000001062e9:	48 89 e5             	mov    %rsp,%rbp
ffff8000001062ec:	41 57                	push   %r15
ffff8000001062ee:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001062f2:	f3 0f 1e fa          	endbr64 
ffff8000001062f6:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001062f2 <do_dev_not_available+0xe>
ffff8000001062fd:	49 bb de 45 00 00 00 	movabs $0x45de,%r11
ffff800000106304:	00 00 00 
ffff800000106307:	4d 01 d8             	add    %r11,%r8
ffff80000010630a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010630e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106312:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106319:	00 
ffff80000010631a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010631e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106324:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106328:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010632c:	48 8b 08             	mov    (%rax),%rcx
ffff80000010632f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106333:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106337:	48 89 c6             	mov    %rax,%rsi
ffff80000010633a:	48 b8 20 e8 ff ff ff 	movabs $0xffffffffffffe820,%rax
ffff800000106341:	ff ff ff 
ffff800000106344:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106348:	4d 89 c7             	mov    %r8,%r15
ffff80000010634b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106350:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106357:	ff ff ff 
ffff80000010635a:	4d 01 c1             	add    %r8,%r9
ffff80000010635d:	41 ff d1             	callq  *%r9
ffff800000106360:	eb fe                	jmp    ffff800000106360 <do_dev_not_available+0x7c>

ffff800000106362 <do_double_fault>:
ffff800000106362:	f3 0f 1e fa          	endbr64 
ffff800000106366:	55                   	push   %rbp
ffff800000106367:	48 89 e5             	mov    %rsp,%rbp
ffff80000010636a:	41 57                	push   %r15
ffff80000010636c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106370:	f3 0f 1e fa          	endbr64 
ffff800000106374:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106370 <do_double_fault+0xe>
ffff80000010637b:	49 bb 60 45 00 00 00 	movabs $0x4560,%r11
ffff800000106382:	00 00 00 
ffff800000106385:	4d 01 d8             	add    %r11,%r8
ffff800000106388:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010638c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106390:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106397:	00 
ffff800000106398:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010639c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001063a2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001063a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001063aa:	48 8b 08             	mov    (%rax),%rcx
ffff8000001063ad:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001063b1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001063b5:	48 89 c6             	mov    %rax,%rsi
ffff8000001063b8:	48 b8 58 e8 ff ff ff 	movabs $0xffffffffffffe858,%rax
ffff8000001063bf:	ff ff ff 
ffff8000001063c2:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff8000001063c6:	4d 89 c7             	mov    %r8,%r15
ffff8000001063c9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001063ce:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff8000001063d5:	ff ff ff 
ffff8000001063d8:	4d 01 c1             	add    %r8,%r9
ffff8000001063db:	41 ff d1             	callq  *%r9
ffff8000001063de:	eb fe                	jmp    ffff8000001063de <do_double_fault+0x7c>

ffff8000001063e0 <do_coprocessor_segment_overrun>:
ffff8000001063e0:	f3 0f 1e fa          	endbr64 
ffff8000001063e4:	55                   	push   %rbp
ffff8000001063e5:	48 89 e5             	mov    %rsp,%rbp
ffff8000001063e8:	41 57                	push   %r15
ffff8000001063ea:	48 83 ec 28          	sub    $0x28,%rsp
ffff8000001063ee:	f3 0f 1e fa          	endbr64 
ffff8000001063f2:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff8000001063ee <do_coprocessor_segment_overrun+0xe>
ffff8000001063f9:	49 bb e2 44 00 00 00 	movabs $0x44e2,%r11
ffff800000106400:	00 00 00 
ffff800000106403:	4d 01 d8             	add    %r11,%r8
ffff800000106406:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff80000010640a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010640e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106415:	00 
ffff800000106416:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010641a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106420:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106424:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106428:	48 8b 08             	mov    (%rax),%rcx
ffff80000010642b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010642f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106433:	48 89 c6             	mov    %rax,%rsi
ffff800000106436:	48 b8 90 e8 ff ff ff 	movabs $0xffffffffffffe890,%rax
ffff80000010643d:	ff ff ff 
ffff800000106440:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106444:	4d 89 c7             	mov    %r8,%r15
ffff800000106447:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010644c:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106453:	ff ff ff 
ffff800000106456:	4d 01 c1             	add    %r8,%r9
ffff800000106459:	41 ff d1             	callq  *%r9
ffff80000010645c:	eb fe                	jmp    ffff80000010645c <do_coprocessor_segment_overrun+0x7c>

ffff80000010645e <do_invalid_TSS>:
ffff80000010645e:	f3 0f 1e fa          	endbr64 
ffff800000106462:	55                   	push   %rbp
ffff800000106463:	48 89 e5             	mov    %rsp,%rbp
ffff800000106466:	41 57                	push   %r15
ffff800000106468:	53                   	push   %rbx
ffff800000106469:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010646d:	f3 0f 1e fa          	endbr64 
ffff800000106471:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010646d <do_invalid_TSS+0xf>
ffff800000106478:	49 bb 63 44 00 00 00 	movabs $0x4463,%r11
ffff80000010647f:	00 00 00 
ffff800000106482:	4c 01 db             	add    %r11,%rbx
ffff800000106485:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106489:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010648d:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106494:	00 
ffff800000106495:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106499:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010649f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001064a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001064a7:	48 8b 08             	mov    (%rax),%rcx
ffff8000001064aa:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001064ae:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064b2:	48 89 c6             	mov    %rax,%rsi
ffff8000001064b5:	48 b8 d8 e8 ff ff ff 	movabs $0xffffffffffffe8d8,%rax
ffff8000001064bc:	ff ff ff 
ffff8000001064bf:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001064c3:	49 89 df             	mov    %rbx,%r15
ffff8000001064c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064cb:	49 b8 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r8
ffff8000001064d2:	ff ff ff 
ffff8000001064d5:	49 01 d8             	add    %rbx,%r8
ffff8000001064d8:	41 ff d0             	callq  *%r8
ffff8000001064db:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001064df:	83 e0 01             	and    $0x1,%eax
ffff8000001064e2:	48 85 c0             	test   %rax,%rax
ffff8000001064e5:	74 25                	je     ffff80000010650c <do_invalid_TSS+0xae>
ffff8000001064e7:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff8000001064ee:	ff ff ff 
ffff8000001064f1:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001064f5:	49 89 df             	mov    %rbx,%r15
ffff8000001064f8:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001064fd:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106504:	ff ff ff 
ffff800000106507:	48 01 da             	add    %rbx,%rdx
ffff80000010650a:	ff d2                	callq  *%rdx
ffff80000010650c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106510:	83 e0 02             	and    $0x2,%eax
ffff800000106513:	48 85 c0             	test   %rax,%rax
ffff800000106516:	74 27                	je     ffff80000010653f <do_invalid_TSS+0xe1>
ffff800000106518:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff80000010651f:	ff ff ff 
ffff800000106522:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106526:	49 89 df             	mov    %rbx,%r15
ffff800000106529:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010652e:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106535:	ff ff ff 
ffff800000106538:	48 01 da             	add    %rbx,%rdx
ffff80000010653b:	ff d2                	callq  *%rdx
ffff80000010653d:	eb 25                	jmp    ffff800000106564 <do_invalid_TSS+0x106>
ffff80000010653f:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff800000106546:	ff ff ff 
ffff800000106549:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010654d:	49 89 df             	mov    %rbx,%r15
ffff800000106550:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106555:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff80000010655c:	ff ff ff 
ffff80000010655f:	48 01 da             	add    %rbx,%rdx
ffff800000106562:	ff d2                	callq  *%rdx
ffff800000106564:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106568:	83 e0 02             	and    $0x2,%eax
ffff80000010656b:	48 85 c0             	test   %rax,%rax
ffff80000010656e:	75 58                	jne    ffff8000001065c8 <do_invalid_TSS+0x16a>
ffff800000106570:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106574:	83 e0 04             	and    $0x4,%eax
ffff800000106577:	48 85 c0             	test   %rax,%rax
ffff80000010657a:	74 27                	je     ffff8000001065a3 <do_invalid_TSS+0x145>
ffff80000010657c:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff800000106583:	ff ff ff 
ffff800000106586:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010658a:	49 89 df             	mov    %rbx,%r15
ffff80000010658d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106592:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106599:	ff ff ff 
ffff80000010659c:	48 01 da             	add    %rbx,%rdx
ffff80000010659f:	ff d2                	callq  *%rdx
ffff8000001065a1:	eb 25                	jmp    ffff8000001065c8 <do_invalid_TSS+0x16a>
ffff8000001065a3:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff8000001065aa:	ff ff ff 
ffff8000001065ad:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001065b1:	49 89 df             	mov    %rbx,%r15
ffff8000001065b4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065b9:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001065c0:	ff ff ff 
ffff8000001065c3:	48 01 da             	add    %rbx,%rdx
ffff8000001065c6:	ff d2                	callq  *%rdx
ffff8000001065c8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001065cc:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff8000001065d1:	48 89 c6             	mov    %rax,%rsi
ffff8000001065d4:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff8000001065db:	ff ff ff 
ffff8000001065de:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001065e2:	49 89 df             	mov    %rbx,%r15
ffff8000001065e5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001065ea:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001065f1:	ff ff ff 
ffff8000001065f4:	48 01 da             	add    %rbx,%rdx
ffff8000001065f7:	ff d2                	callq  *%rdx
ffff8000001065f9:	eb fe                	jmp    ffff8000001065f9 <do_invalid_TSS+0x19b>

ffff8000001065fb <do_segment_not_present>:
ffff8000001065fb:	f3 0f 1e fa          	endbr64 
ffff8000001065ff:	55                   	push   %rbp
ffff800000106600:	48 89 e5             	mov    %rsp,%rbp
ffff800000106603:	41 57                	push   %r15
ffff800000106605:	53                   	push   %rbx
ffff800000106606:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010660a:	f3 0f 1e fa          	endbr64 
ffff80000010660e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010660a <do_segment_not_present+0xf>
ffff800000106615:	49 bb c6 42 00 00 00 	movabs $0x42c6,%r11
ffff80000010661c:	00 00 00 
ffff80000010661f:	4c 01 db             	add    %r11,%rbx
ffff800000106622:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106626:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff80000010662a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106631:	00 
ffff800000106632:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106636:	48 05 98 00 00 00    	add    $0x98,%rax
ffff80000010663c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106640:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106644:	48 8b 08             	mov    (%rax),%rcx
ffff800000106647:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff80000010664b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010664f:	48 89 c6             	mov    %rax,%rsi
ffff800000106652:	48 b8 80 ea ff ff ff 	movabs $0xffffffffffffea80,%rax
ffff800000106659:	ff ff ff 
ffff80000010665c:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106660:	49 89 df             	mov    %rbx,%r15
ffff800000106663:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106668:	49 b8 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r8
ffff80000010666f:	ff ff ff 
ffff800000106672:	49 01 d8             	add    %rbx,%r8
ffff800000106675:	41 ff d0             	callq  *%r8
ffff800000106678:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010667c:	83 e0 01             	and    $0x1,%eax
ffff80000010667f:	48 85 c0             	test   %rax,%rax
ffff800000106682:	74 25                	je     ffff8000001066a9 <do_segment_not_present+0xae>
ffff800000106684:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff80000010668b:	ff ff ff 
ffff80000010668e:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106692:	49 89 df             	mov    %rbx,%r15
ffff800000106695:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010669a:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001066a1:	ff ff ff 
ffff8000001066a4:	48 01 da             	add    %rbx,%rdx
ffff8000001066a7:	ff d2                	callq  *%rdx
ffff8000001066a9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001066ad:	83 e0 02             	and    $0x2,%eax
ffff8000001066b0:	48 85 c0             	test   %rax,%rax
ffff8000001066b3:	74 27                	je     ffff8000001066dc <do_segment_not_present+0xe1>
ffff8000001066b5:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff8000001066bc:	ff ff ff 
ffff8000001066bf:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001066c3:	49 89 df             	mov    %rbx,%r15
ffff8000001066c6:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066cb:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001066d2:	ff ff ff 
ffff8000001066d5:	48 01 da             	add    %rbx,%rdx
ffff8000001066d8:	ff d2                	callq  *%rdx
ffff8000001066da:	eb 25                	jmp    ffff800000106701 <do_segment_not_present+0x106>
ffff8000001066dc:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff8000001066e3:	ff ff ff 
ffff8000001066e6:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001066ea:	49 89 df             	mov    %rbx,%r15
ffff8000001066ed:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001066f2:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001066f9:	ff ff ff 
ffff8000001066fc:	48 01 da             	add    %rbx,%rdx
ffff8000001066ff:	ff d2                	callq  *%rdx
ffff800000106701:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106705:	83 e0 02             	and    $0x2,%eax
ffff800000106708:	48 85 c0             	test   %rax,%rax
ffff80000010670b:	75 58                	jne    ffff800000106765 <do_segment_not_present+0x16a>
ffff80000010670d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106711:	83 e0 04             	and    $0x4,%eax
ffff800000106714:	48 85 c0             	test   %rax,%rax
ffff800000106717:	74 27                	je     ffff800000106740 <do_segment_not_present+0x145>
ffff800000106719:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff800000106720:	ff ff ff 
ffff800000106723:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106727:	49 89 df             	mov    %rbx,%r15
ffff80000010672a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010672f:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106736:	ff ff ff 
ffff800000106739:	48 01 da             	add    %rbx,%rdx
ffff80000010673c:	ff d2                	callq  *%rdx
ffff80000010673e:	eb 25                	jmp    ffff800000106765 <do_segment_not_present+0x16a>
ffff800000106740:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff800000106747:	ff ff ff 
ffff80000010674a:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010674e:	49 89 df             	mov    %rbx,%r15
ffff800000106751:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106756:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff80000010675d:	ff ff ff 
ffff800000106760:	48 01 da             	add    %rbx,%rdx
ffff800000106763:	ff d2                	callq  *%rdx
ffff800000106765:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106769:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010676e:	48 89 c6             	mov    %rax,%rsi
ffff800000106771:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff800000106778:	ff ff ff 
ffff80000010677b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010677f:	49 89 df             	mov    %rbx,%r15
ffff800000106782:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106787:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff80000010678e:	ff ff ff 
ffff800000106791:	48 01 da             	add    %rbx,%rdx
ffff800000106794:	ff d2                	callq  *%rdx
ffff800000106796:	eb fe                	jmp    ffff800000106796 <do_segment_not_present+0x19b>

ffff800000106798 <do_stack_segment_fault>:
ffff800000106798:	f3 0f 1e fa          	endbr64 
ffff80000010679c:	55                   	push   %rbp
ffff80000010679d:	48 89 e5             	mov    %rsp,%rbp
ffff8000001067a0:	41 57                	push   %r15
ffff8000001067a2:	53                   	push   %rbx
ffff8000001067a3:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001067a7:	f3 0f 1e fa          	endbr64 
ffff8000001067ab:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001067a7 <do_stack_segment_fault+0xf>
ffff8000001067b2:	49 bb 29 41 00 00 00 	movabs $0x4129,%r11
ffff8000001067b9:	00 00 00 
ffff8000001067bc:	4c 01 db             	add    %r11,%rbx
ffff8000001067bf:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001067c3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff8000001067c7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff8000001067ce:	00 
ffff8000001067cf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001067d3:	48 05 98 00 00 00    	add    $0x98,%rax
ffff8000001067d9:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001067dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001067e1:	48 8b 08             	mov    (%rax),%rcx
ffff8000001067e4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001067e8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001067ec:	48 89 c6             	mov    %rax,%rsi
ffff8000001067ef:	48 b8 c0 ea ff ff ff 	movabs $0xffffffffffffeac0,%rax
ffff8000001067f6:	ff ff ff 
ffff8000001067f9:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001067fd:	49 89 df             	mov    %rbx,%r15
ffff800000106800:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106805:	49 b8 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r8
ffff80000010680c:	ff ff ff 
ffff80000010680f:	49 01 d8             	add    %rbx,%r8
ffff800000106812:	41 ff d0             	callq  *%r8
ffff800000106815:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106819:	83 e0 01             	and    $0x1,%eax
ffff80000010681c:	48 85 c0             	test   %rax,%rax
ffff80000010681f:	74 25                	je     ffff800000106846 <do_stack_segment_fault+0xae>
ffff800000106821:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff800000106828:	ff ff ff 
ffff80000010682b:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010682f:	49 89 df             	mov    %rbx,%r15
ffff800000106832:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106837:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff80000010683e:	ff ff ff 
ffff800000106841:	48 01 da             	add    %rbx,%rdx
ffff800000106844:	ff d2                	callq  *%rdx
ffff800000106846:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010684a:	83 e0 02             	and    $0x2,%eax
ffff80000010684d:	48 85 c0             	test   %rax,%rax
ffff800000106850:	74 27                	je     ffff800000106879 <do_stack_segment_fault+0xe1>
ffff800000106852:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff800000106859:	ff ff ff 
ffff80000010685c:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106860:	49 89 df             	mov    %rbx,%r15
ffff800000106863:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106868:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff80000010686f:	ff ff ff 
ffff800000106872:	48 01 da             	add    %rbx,%rdx
ffff800000106875:	ff d2                	callq  *%rdx
ffff800000106877:	eb 25                	jmp    ffff80000010689e <do_stack_segment_fault+0x106>
ffff800000106879:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff800000106880:	ff ff ff 
ffff800000106883:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106887:	49 89 df             	mov    %rbx,%r15
ffff80000010688a:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010688f:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106896:	ff ff ff 
ffff800000106899:	48 01 da             	add    %rbx,%rdx
ffff80000010689c:	ff d2                	callq  *%rdx
ffff80000010689e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068a2:	83 e0 02             	and    $0x2,%eax
ffff8000001068a5:	48 85 c0             	test   %rax,%rax
ffff8000001068a8:	75 58                	jne    ffff800000106902 <do_stack_segment_fault+0x16a>
ffff8000001068aa:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001068ae:	83 e0 04             	and    $0x4,%eax
ffff8000001068b1:	48 85 c0             	test   %rax,%rax
ffff8000001068b4:	74 27                	je     ffff8000001068dd <do_stack_segment_fault+0x145>
ffff8000001068b6:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff8000001068bd:	ff ff ff 
ffff8000001068c0:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001068c4:	49 89 df             	mov    %rbx,%r15
ffff8000001068c7:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068cc:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001068d3:	ff ff ff 
ffff8000001068d6:	48 01 da             	add    %rbx,%rdx
ffff8000001068d9:	ff d2                	callq  *%rdx
ffff8000001068db:	eb 25                	jmp    ffff800000106902 <do_stack_segment_fault+0x16a>
ffff8000001068dd:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff8000001068e4:	ff ff ff 
ffff8000001068e7:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001068eb:	49 89 df             	mov    %rbx,%r15
ffff8000001068ee:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001068f3:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001068fa:	ff ff ff 
ffff8000001068fd:	48 01 da             	add    %rbx,%rdx
ffff800000106900:	ff d2                	callq  *%rdx
ffff800000106902:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106906:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff80000010690b:	48 89 c6             	mov    %rax,%rsi
ffff80000010690e:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff800000106915:	ff ff ff 
ffff800000106918:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010691c:	49 89 df             	mov    %rbx,%r15
ffff80000010691f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106924:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff80000010692b:	ff ff ff 
ffff80000010692e:	48 01 da             	add    %rbx,%rdx
ffff800000106931:	ff d2                	callq  *%rdx
ffff800000106933:	eb fe                	jmp    ffff800000106933 <do_stack_segment_fault+0x19b>

ffff800000106935 <do_general_protection>:
ffff800000106935:	f3 0f 1e fa          	endbr64 
ffff800000106939:	55                   	push   %rbp
ffff80000010693a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010693d:	41 57                	push   %r15
ffff80000010693f:	53                   	push   %rbx
ffff800000106940:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106944:	f3 0f 1e fa          	endbr64 
ffff800000106948:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106944 <do_general_protection+0xf>
ffff80000010694f:	49 bb 8c 3f 00 00 00 	movabs $0x3f8c,%r11
ffff800000106956:	00 00 00 
ffff800000106959:	4c 01 db             	add    %r11,%rbx
ffff80000010695c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106960:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106964:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff80000010696b:	00 
ffff80000010696c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106970:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106976:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010697a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010697e:	48 8b 08             	mov    (%rax),%rcx
ffff800000106981:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106985:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106989:	48 89 c6             	mov    %rax,%rsi
ffff80000010698c:	48 b8 00 eb ff ff ff 	movabs $0xffffffffffffeb00,%rax
ffff800000106993:	ff ff ff 
ffff800000106996:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010699a:	49 89 df             	mov    %rbx,%r15
ffff80000010699d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069a2:	49 b8 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r8
ffff8000001069a9:	ff ff ff 
ffff8000001069ac:	49 01 d8             	add    %rbx,%r8
ffff8000001069af:	41 ff d0             	callq  *%r8
ffff8000001069b2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069b6:	83 e0 01             	and    $0x1,%eax
ffff8000001069b9:	48 85 c0             	test   %rax,%rax
ffff8000001069bc:	74 25                	je     ffff8000001069e3 <do_general_protection+0xae>
ffff8000001069be:	48 b8 10 e9 ff ff ff 	movabs $0xffffffffffffe910,%rax
ffff8000001069c5:	ff ff ff 
ffff8000001069c8:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001069cc:	49 89 df             	mov    %rbx,%r15
ffff8000001069cf:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001069d4:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001069db:	ff ff ff 
ffff8000001069de:	48 01 da             	add    %rbx,%rdx
ffff8000001069e1:	ff d2                	callq  *%rdx
ffff8000001069e3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001069e7:	83 e0 02             	and    $0x2,%eax
ffff8000001069ea:	48 85 c0             	test   %rax,%rax
ffff8000001069ed:	74 27                	je     ffff800000106a16 <do_general_protection+0xe1>
ffff8000001069ef:	48 b8 90 e9 ff ff ff 	movabs $0xffffffffffffe990,%rax
ffff8000001069f6:	ff ff ff 
ffff8000001069f9:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001069fd:	49 89 df             	mov    %rbx,%r15
ffff800000106a00:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a05:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106a0c:	ff ff ff 
ffff800000106a0f:	48 01 da             	add    %rbx,%rdx
ffff800000106a12:	ff d2                	callq  *%rdx
ffff800000106a14:	eb 25                	jmp    ffff800000106a3b <do_general_protection+0x106>
ffff800000106a16:	48 b8 c0 e9 ff ff ff 	movabs $0xffffffffffffe9c0,%rax
ffff800000106a1d:	ff ff ff 
ffff800000106a20:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106a24:	49 89 df             	mov    %rbx,%r15
ffff800000106a27:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a2c:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106a33:	ff ff ff 
ffff800000106a36:	48 01 da             	add    %rbx,%rdx
ffff800000106a39:	ff d2                	callq  *%rdx
ffff800000106a3b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a3f:	83 e0 02             	and    $0x2,%eax
ffff800000106a42:	48 85 c0             	test   %rax,%rax
ffff800000106a45:	75 58                	jne    ffff800000106a9f <do_general_protection+0x16a>
ffff800000106a47:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106a4b:	83 e0 04             	and    $0x4,%eax
ffff800000106a4e:	48 85 c0             	test   %rax,%rax
ffff800000106a51:	74 27                	je     ffff800000106a7a <do_general_protection+0x145>
ffff800000106a53:	48 b8 f8 e9 ff ff ff 	movabs $0xffffffffffffe9f8,%rax
ffff800000106a5a:	ff ff ff 
ffff800000106a5d:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106a61:	49 89 df             	mov    %rbx,%r15
ffff800000106a64:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a69:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106a70:	ff ff ff 
ffff800000106a73:	48 01 da             	add    %rbx,%rdx
ffff800000106a76:	ff d2                	callq  *%rdx
ffff800000106a78:	eb 25                	jmp    ffff800000106a9f <do_general_protection+0x16a>
ffff800000106a7a:	48 b8 30 ea ff ff ff 	movabs $0xffffffffffffea30,%rax
ffff800000106a81:	ff ff ff 
ffff800000106a84:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106a88:	49 89 df             	mov    %rbx,%r15
ffff800000106a8b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106a90:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106a97:	ff ff ff 
ffff800000106a9a:	48 01 da             	add    %rbx,%rdx
ffff800000106a9d:	ff d2                	callq  *%rdx
ffff800000106a9f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106aa3:	25 f8 ff 00 00       	and    $0xfff8,%eax
ffff800000106aa8:	48 89 c6             	mov    %rax,%rsi
ffff800000106aab:	48 b8 60 ea ff ff ff 	movabs $0xffffffffffffea60,%rax
ffff800000106ab2:	ff ff ff 
ffff800000106ab5:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106ab9:	49 89 df             	mov    %rbx,%r15
ffff800000106abc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ac1:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106ac8:	ff ff ff 
ffff800000106acb:	48 01 da             	add    %rbx,%rdx
ffff800000106ace:	ff d2                	callq  *%rdx
ffff800000106ad0:	eb fe                	jmp    ffff800000106ad0 <do_general_protection+0x19b>

ffff800000106ad2 <do_page_fault>:
ffff800000106ad2:	f3 0f 1e fa          	endbr64 
ffff800000106ad6:	55                   	push   %rbp
ffff800000106ad7:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ada:	41 57                	push   %r15
ffff800000106adc:	53                   	push   %rbx
ffff800000106add:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000106ae1:	f3 0f 1e fa          	endbr64 
ffff800000106ae5:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106ae1 <do_page_fault+0xf>
ffff800000106aec:	49 bb ef 3d 00 00 00 	movabs $0x3def,%r11
ffff800000106af3:	00 00 00 
ffff800000106af6:	4c 01 db             	add    %r11,%rbx
ffff800000106af9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106afd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106b01:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106b08:	00 
ffff800000106b09:	48 c7 45 e0 00 00 00 	movq   $0x0,-0x20(%rbp)
ffff800000106b10:	00 
ffff800000106b11:	0f 20 d0             	mov    %cr2,%rax
ffff800000106b14:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000106b18:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106b1c:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106b22:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106b26:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106b2a:	48 8b 08             	mov    (%rax),%rcx
ffff800000106b2d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106b31:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b35:	48 89 c6             	mov    %rax,%rsi
ffff800000106b38:	48 b8 40 eb ff ff ff 	movabs $0xffffffffffffeb40,%rax
ffff800000106b3f:	ff ff ff 
ffff800000106b42:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106b46:	49 89 df             	mov    %rbx,%r15
ffff800000106b49:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b4e:	49 b8 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r8
ffff800000106b55:	ff ff ff 
ffff800000106b58:	49 01 d8             	add    %rbx,%r8
ffff800000106b5b:	41 ff d0             	callq  *%r8
ffff800000106b5e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b62:	83 e0 01             	and    $0x1,%eax
ffff800000106b65:	48 85 c0             	test   %rax,%rax
ffff800000106b68:	75 25                	jne    ffff800000106b8f <do_page_fault+0xbd>
ffff800000106b6a:	48 b8 72 eb ff ff ff 	movabs $0xffffffffffffeb72,%rax
ffff800000106b71:	ff ff ff 
ffff800000106b74:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106b78:	49 89 df             	mov    %rbx,%r15
ffff800000106b7b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106b80:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106b87:	ff ff ff 
ffff800000106b8a:	48 01 da             	add    %rbx,%rdx
ffff800000106b8d:	ff d2                	callq  *%rdx
ffff800000106b8f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106b93:	83 e0 02             	and    $0x2,%eax
ffff800000106b96:	48 85 c0             	test   %rax,%rax
ffff800000106b99:	74 27                	je     ffff800000106bc2 <do_page_fault+0xf0>
ffff800000106b9b:	48 b8 85 eb ff ff ff 	movabs $0xffffffffffffeb85,%rax
ffff800000106ba2:	ff ff ff 
ffff800000106ba5:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106ba9:	49 89 df             	mov    %rbx,%r15
ffff800000106bac:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bb1:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106bb8:	ff ff ff 
ffff800000106bbb:	48 01 da             	add    %rbx,%rdx
ffff800000106bbe:	ff d2                	callq  *%rdx
ffff800000106bc0:	eb 25                	jmp    ffff800000106be7 <do_page_fault+0x115>
ffff800000106bc2:	48 b8 99 eb ff ff ff 	movabs $0xffffffffffffeb99,%rax
ffff800000106bc9:	ff ff ff 
ffff800000106bcc:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106bd0:	49 89 df             	mov    %rbx,%r15
ffff800000106bd3:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106bd8:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106bdf:	ff ff ff 
ffff800000106be2:	48 01 da             	add    %rbx,%rdx
ffff800000106be5:	ff d2                	callq  *%rdx
ffff800000106be7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106beb:	83 e0 04             	and    $0x4,%eax
ffff800000106bee:	48 85 c0             	test   %rax,%rax
ffff800000106bf1:	74 27                	je     ffff800000106c1a <do_page_fault+0x148>
ffff800000106bf3:	48 b8 ac eb ff ff ff 	movabs $0xffffffffffffebac,%rax
ffff800000106bfa:	ff ff ff 
ffff800000106bfd:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106c01:	49 89 df             	mov    %rbx,%r15
ffff800000106c04:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c09:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106c10:	ff ff ff 
ffff800000106c13:	48 01 da             	add    %rbx,%rdx
ffff800000106c16:	ff d2                	callq  *%rdx
ffff800000106c18:	eb 25                	jmp    ffff800000106c3f <do_page_fault+0x16d>
ffff800000106c1a:	48 b8 be eb ff ff ff 	movabs $0xffffffffffffebbe,%rax
ffff800000106c21:	ff ff ff 
ffff800000106c24:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106c28:	49 89 df             	mov    %rbx,%r15
ffff800000106c2b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c30:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106c37:	ff ff ff 
ffff800000106c3a:	48 01 da             	add    %rbx,%rdx
ffff800000106c3d:	ff d2                	callq  *%rdx
ffff800000106c3f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c43:	83 e0 08             	and    $0x8,%eax
ffff800000106c46:	48 85 c0             	test   %rax,%rax
ffff800000106c49:	74 25                	je     ffff800000106c70 <do_page_fault+0x19e>
ffff800000106c4b:	48 b8 da eb ff ff ff 	movabs $0xffffffffffffebda,%rax
ffff800000106c52:	ff ff ff 
ffff800000106c55:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106c59:	49 89 df             	mov    %rbx,%r15
ffff800000106c5c:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c61:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106c68:	ff ff ff 
ffff800000106c6b:	48 01 da             	add    %rbx,%rdx
ffff800000106c6e:	ff d2                	callq  *%rdx
ffff800000106c70:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106c74:	83 e0 10             	and    $0x10,%eax
ffff800000106c77:	48 85 c0             	test   %rax,%rax
ffff800000106c7a:	74 25                	je     ffff800000106ca1 <do_page_fault+0x1cf>
ffff800000106c7c:	48 b8 f8 eb ff ff ff 	movabs $0xffffffffffffebf8,%rax
ffff800000106c83:	ff ff ff 
ffff800000106c86:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106c8a:	49 89 df             	mov    %rbx,%r15
ffff800000106c8d:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106c92:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106c99:	ff ff ff 
ffff800000106c9c:	48 01 da             	add    %rbx,%rdx
ffff800000106c9f:	ff d2                	callq  *%rdx
ffff800000106ca1:	48 b8 17 ec ff ff ff 	movabs $0xffffffffffffec17,%rax
ffff800000106ca8:	ff ff ff 
ffff800000106cab:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106caf:	49 89 df             	mov    %rbx,%r15
ffff800000106cb2:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106cb7:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106cbe:	ff ff ff 
ffff800000106cc1:	48 01 da             	add    %rbx,%rdx
ffff800000106cc4:	ff d2                	callq  *%rdx
ffff800000106cc6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000106cca:	48 89 c6             	mov    %rax,%rsi
ffff800000106ccd:	48 b8 19 ec ff ff ff 	movabs $0xffffffffffffec19,%rax
ffff800000106cd4:	ff ff ff 
ffff800000106cd7:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000106cdb:	49 89 df             	mov    %rbx,%r15
ffff800000106cde:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106ce3:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000106cea:	ff ff ff 
ffff800000106ced:	48 01 da             	add    %rbx,%rdx
ffff800000106cf0:	ff d2                	callq  *%rdx
ffff800000106cf2:	eb fe                	jmp    ffff800000106cf2 <do_page_fault+0x220>

ffff800000106cf4 <do_x87_FPU_error>:
ffff800000106cf4:	f3 0f 1e fa          	endbr64 
ffff800000106cf8:	55                   	push   %rbp
ffff800000106cf9:	48 89 e5             	mov    %rsp,%rbp
ffff800000106cfc:	41 57                	push   %r15
ffff800000106cfe:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d02:	f3 0f 1e fa          	endbr64 
ffff800000106d06:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106d02 <do_x87_FPU_error+0xe>
ffff800000106d0d:	49 bb ce 3b 00 00 00 	movabs $0x3bce,%r11
ffff800000106d14:	00 00 00 
ffff800000106d17:	4d 01 d8             	add    %r11,%r8
ffff800000106d1a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d1e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106d22:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106d29:	00 
ffff800000106d2a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106d2e:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106d34:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106d38:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106d3c:	48 8b 08             	mov    (%rax),%rcx
ffff800000106d3f:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106d43:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106d47:	48 89 c6             	mov    %rax,%rsi
ffff800000106d4a:	48 b8 28 ec ff ff ff 	movabs $0xffffffffffffec28,%rax
ffff800000106d51:	ff ff ff 
ffff800000106d54:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106d58:	4d 89 c7             	mov    %r8,%r15
ffff800000106d5b:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106d60:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106d67:	ff ff ff 
ffff800000106d6a:	4d 01 c1             	add    %r8,%r9
ffff800000106d6d:	41 ff d1             	callq  *%r9
ffff800000106d70:	eb fe                	jmp    ffff800000106d70 <do_x87_FPU_error+0x7c>

ffff800000106d72 <do_alignment_check>:
ffff800000106d72:	f3 0f 1e fa          	endbr64 
ffff800000106d76:	55                   	push   %rbp
ffff800000106d77:	48 89 e5             	mov    %rsp,%rbp
ffff800000106d7a:	41 57                	push   %r15
ffff800000106d7c:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106d80:	f3 0f 1e fa          	endbr64 
ffff800000106d84:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106d80 <do_alignment_check+0xe>
ffff800000106d8b:	49 bb 50 3b 00 00 00 	movabs $0x3b50,%r11
ffff800000106d92:	00 00 00 
ffff800000106d95:	4d 01 d8             	add    %r11,%r8
ffff800000106d98:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106d9c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106da0:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106da7:	00 
ffff800000106da8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106dac:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106db2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106db6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106dba:	48 8b 08             	mov    (%rax),%rcx
ffff800000106dbd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106dc1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106dc5:	48 89 c6             	mov    %rax,%rsi
ffff800000106dc8:	48 b8 60 ec ff ff ff 	movabs $0xffffffffffffec60,%rax
ffff800000106dcf:	ff ff ff 
ffff800000106dd2:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106dd6:	4d 89 c7             	mov    %r8,%r15
ffff800000106dd9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106dde:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106de5:	ff ff ff 
ffff800000106de8:	4d 01 c1             	add    %r8,%r9
ffff800000106deb:	41 ff d1             	callq  *%r9
ffff800000106dee:	eb fe                	jmp    ffff800000106dee <do_alignment_check+0x7c>

ffff800000106df0 <do_machine_check>:
ffff800000106df0:	f3 0f 1e fa          	endbr64 
ffff800000106df4:	55                   	push   %rbp
ffff800000106df5:	48 89 e5             	mov    %rsp,%rbp
ffff800000106df8:	41 57                	push   %r15
ffff800000106dfa:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106dfe:	f3 0f 1e fa          	endbr64 
ffff800000106e02:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106dfe <do_machine_check+0xe>
ffff800000106e09:	49 bb d2 3a 00 00 00 	movabs $0x3ad2,%r11
ffff800000106e10:	00 00 00 
ffff800000106e13:	4d 01 d8             	add    %r11,%r8
ffff800000106e16:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e1a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e1e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106e25:	00 
ffff800000106e26:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106e2a:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106e30:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106e34:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106e38:	48 8b 08             	mov    (%rax),%rcx
ffff800000106e3b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106e3f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106e43:	48 89 c6             	mov    %rax,%rsi
ffff800000106e46:	48 b8 98 ec ff ff ff 	movabs $0xffffffffffffec98,%rax
ffff800000106e4d:	ff ff ff 
ffff800000106e50:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106e54:	4d 89 c7             	mov    %r8,%r15
ffff800000106e57:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106e5c:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106e63:	ff ff ff 
ffff800000106e66:	4d 01 c1             	add    %r8,%r9
ffff800000106e69:	41 ff d1             	callq  *%r9
ffff800000106e6c:	eb fe                	jmp    ffff800000106e6c <do_machine_check+0x7c>

ffff800000106e6e <do_SIMD_exception>:
ffff800000106e6e:	f3 0f 1e fa          	endbr64 
ffff800000106e72:	55                   	push   %rbp
ffff800000106e73:	48 89 e5             	mov    %rsp,%rbp
ffff800000106e76:	41 57                	push   %r15
ffff800000106e78:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106e7c:	f3 0f 1e fa          	endbr64 
ffff800000106e80:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106e7c <do_SIMD_exception+0xe>
ffff800000106e87:	49 bb 54 3a 00 00 00 	movabs $0x3a54,%r11
ffff800000106e8e:	00 00 00 
ffff800000106e91:	4d 01 d8             	add    %r11,%r8
ffff800000106e94:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106e98:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106e9c:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106ea3:	00 
ffff800000106ea4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106ea8:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106eae:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106eb2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106eb6:	48 8b 08             	mov    (%rax),%rcx
ffff800000106eb9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106ebd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106ec1:	48 89 c6             	mov    %rax,%rsi
ffff800000106ec4:	48 b8 d0 ec ff ff ff 	movabs $0xffffffffffffecd0,%rax
ffff800000106ecb:	ff ff ff 
ffff800000106ece:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106ed2:	4d 89 c7             	mov    %r8,%r15
ffff800000106ed5:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106eda:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106ee1:	ff ff ff 
ffff800000106ee4:	4d 01 c1             	add    %r8,%r9
ffff800000106ee7:	41 ff d1             	callq  *%r9
ffff800000106eea:	eb fe                	jmp    ffff800000106eea <do_SIMD_exception+0x7c>

ffff800000106eec <do_virtualization_exception>:
ffff800000106eec:	f3 0f 1e fa          	endbr64 
ffff800000106ef0:	55                   	push   %rbp
ffff800000106ef1:	48 89 e5             	mov    %rsp,%rbp
ffff800000106ef4:	41 57                	push   %r15
ffff800000106ef6:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000106efa:	f3 0f 1e fa          	endbr64 
ffff800000106efe:	4c 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%r8        # ffff800000106efa <do_virtualization_exception+0xe>
ffff800000106f05:	49 bb d6 39 00 00 00 	movabs $0x39d6,%r11
ffff800000106f0c:	00 00 00 
ffff800000106f0f:	4d 01 d8             	add    %r11,%r8
ffff800000106f12:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000106f16:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000106f1a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000106f21:	00 
ffff800000106f22:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000106f26:	48 05 98 00 00 00    	add    $0x98,%rax
ffff800000106f2c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000106f30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000106f34:	48 8b 08             	mov    (%rax),%rcx
ffff800000106f37:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000106f3b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000106f3f:	48 89 c6             	mov    %rax,%rsi
ffff800000106f42:	48 b8 08 ed ff ff ff 	movabs $0xffffffffffffed08,%rax
ffff800000106f49:	ff ff ff 
ffff800000106f4c:	49 8d 3c 00          	lea    (%r8,%rax,1),%rdi
ffff800000106f50:	4d 89 c7             	mov    %r8,%r15
ffff800000106f53:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000106f58:	49 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%r9
ffff800000106f5f:	ff ff ff 
ffff800000106f62:	4d 01 c1             	add    %r8,%r9
ffff800000106f65:	41 ff d1             	callq  *%r9
ffff800000106f68:	eb fe                	jmp    ffff800000106f68 <do_virtualization_exception+0x7c>

ffff800000106f6a <io_in8>:
ffff800000106f6a:	f3 0f 1e fa          	endbr64 
ffff800000106f6e:	55                   	push   %rbp
ffff800000106f6f:	48 89 e5             	mov    %rsp,%rbp
ffff800000106f72:	f3 0f 1e fa          	endbr64 
ffff800000106f76:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000106f72 <io_in8+0x8>
ffff800000106f7d:	49 bb 5e 39 00 00 00 	movabs $0x395e,%r11
ffff800000106f84:	00 00 00 
ffff800000106f87:	4c 01 d8             	add    %r11,%rax
ffff800000106f8a:	89 f8                	mov    %edi,%eax
ffff800000106f8c:	66 89 45 ec          	mov    %ax,-0x14(%rbp)
ffff800000106f90:	c6 45 ff 00          	movb   $0x0,-0x1(%rbp)
ffff800000106f94:	0f b7 45 ec          	movzwl -0x14(%rbp),%eax
ffff800000106f98:	89 c2                	mov    %eax,%edx
ffff800000106f9a:	ec                   	in     (%dx),%al
ffff800000106f9b:	0f ae f0             	mfence 
ffff800000106f9e:	88 45 ff             	mov    %al,-0x1(%rbp)
ffff800000106fa1:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
ffff800000106fa5:	5d                   	pop    %rbp
ffff800000106fa6:	c3                   	retq   

ffff800000106fa7 <io_out8>:
ffff800000106fa7:	f3 0f 1e fa          	endbr64 
ffff800000106fab:	55                   	push   %rbp
ffff800000106fac:	48 89 e5             	mov    %rsp,%rbp
ffff800000106faf:	f3 0f 1e fa          	endbr64 
ffff800000106fb3:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000106faf <io_out8+0x8>
ffff800000106fba:	49 bb 21 39 00 00 00 	movabs $0x3921,%r11
ffff800000106fc1:	00 00 00 
ffff800000106fc4:	4c 01 d8             	add    %r11,%rax
ffff800000106fc7:	89 f8                	mov    %edi,%eax
ffff800000106fc9:	89 f2                	mov    %esi,%edx
ffff800000106fcb:	66 89 45 fc          	mov    %ax,-0x4(%rbp)
ffff800000106fcf:	89 d0                	mov    %edx,%eax
ffff800000106fd1:	88 45 f8             	mov    %al,-0x8(%rbp)
ffff800000106fd4:	0f b6 45 f8          	movzbl -0x8(%rbp),%eax
ffff800000106fd8:	0f b7 55 fc          	movzwl -0x4(%rbp),%edx
ffff800000106fdc:	ee                   	out    %al,(%dx)
ffff800000106fdd:	0f ae f0             	mfence 
ffff800000106fe0:	90                   	nop
ffff800000106fe1:	5d                   	pop    %rbp
ffff800000106fe2:	c3                   	retq   

ffff800000106fe3 <intrinit>:
ffff800000106fe3:	f3 0f 1e fa          	endbr64 
ffff800000106fe7:	55                   	push   %rbp
ffff800000106fe8:	48 89 e5             	mov    %rsp,%rbp
ffff800000106feb:	41 57                	push   %r15
ffff800000106fed:	53                   	push   %rbx
ffff800000106fee:	f3 0f 1e fa          	endbr64 
ffff800000106ff2:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000106fee <intrinit+0xb>
ffff800000106ff9:	49 bb e2 38 00 00 00 	movabs $0x38e2,%r11
ffff800000107000:	00 00 00 
ffff800000107003:	4c 01 db             	add    %r11,%rbx
ffff800000107006:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010700d:	ff ff ff 
ffff800000107010:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107014:	48 8d 80 00 02 00 00 	lea    0x200(%rax),%rax
ffff80000010701b:	48 ba 90 ff ff ff ff 	movabs $0xffffffffffffff90,%rdx
ffff800000107022:	ff ff ff 
ffff800000107025:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000107029:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010702e:	48 89 c7             	mov    %rax,%rdi
ffff800000107031:	49 89 df             	mov    %rbx,%r15
ffff800000107034:	48 b8 37 b3 ff ff ff 	movabs $0xffffffffffffb337,%rax
ffff80000010703b:	ff ff ff 
ffff80000010703e:	48 01 d8             	add    %rbx,%rax
ffff800000107041:	ff d0                	callq  *%rax
ffff800000107043:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff80000010704a:	ff ff ff 
ffff80000010704d:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107051:	48 8d 80 10 02 00 00 	lea    0x210(%rax),%rax
ffff800000107058:	48 ba a0 ff ff ff ff 	movabs $0xffffffffffffffa0,%rdx
ffff80000010705f:	ff ff ff 
ffff800000107062:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff800000107066:	be 01 00 00 00       	mov    $0x1,%esi
ffff80000010706b:	48 89 c7             	mov    %rax,%rdi
ffff80000010706e:	49 89 df             	mov    %rbx,%r15
ffff800000107071:	48 b8 37 b3 ff ff ff 	movabs $0xffffffffffffb337,%rax
ffff800000107078:	ff ff ff 
ffff80000010707b:	48 01 d8             	add    %rbx,%rax
ffff80000010707e:	ff d0                	callq  *%rax
ffff800000107080:	48 b8 48 ff ff ff ff 	movabs $0xffffffffffffff48,%rax
ffff800000107087:	ff ff ff 
ffff80000010708a:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010708e:	48 8d 80 c0 02 00 00 	lea    0x2c0(%rax),%rax
ffff800000107095:	48 ba d0 ff ff ff ff 	movabs $0xffffffffffffffd0,%rdx
ffff80000010709c:	ff ff ff 
ffff80000010709f:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001070a3:	be 01 00 00 00       	mov    $0x1,%esi
ffff8000001070a8:	48 89 c7             	mov    %rax,%rdi
ffff8000001070ab:	49 89 df             	mov    %rbx,%r15
ffff8000001070ae:	48 b8 37 b3 ff ff ff 	movabs $0xffffffffffffb337,%rax
ffff8000001070b5:	ff ff ff 
ffff8000001070b8:	48 01 d8             	add    %rbx,%rax
ffff8000001070bb:	ff d0                	callq  *%rax
ffff8000001070bd:	be 11 00 00 00       	mov    $0x11,%esi
ffff8000001070c2:	bf 20 00 00 00       	mov    $0x20,%edi
ffff8000001070c7:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff8000001070ce:	ff ff ff 
ffff8000001070d1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070d5:	ff d0                	callq  *%rax
ffff8000001070d7:	be 20 00 00 00       	mov    $0x20,%esi
ffff8000001070dc:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001070e1:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff8000001070e8:	ff ff ff 
ffff8000001070eb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001070ef:	ff d0                	callq  *%rax
ffff8000001070f1:	be 04 00 00 00       	mov    $0x4,%esi
ffff8000001070f6:	bf 21 00 00 00       	mov    $0x21,%edi
ffff8000001070fb:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff800000107102:	ff ff ff 
ffff800000107105:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107109:	ff d0                	callq  *%rax
ffff80000010710b:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107110:	bf 21 00 00 00       	mov    $0x21,%edi
ffff800000107115:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff80000010711c:	ff ff ff 
ffff80000010711f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107123:	ff d0                	callq  *%rax
ffff800000107125:	be 11 00 00 00       	mov    $0x11,%esi
ffff80000010712a:	bf a0 00 00 00       	mov    $0xa0,%edi
ffff80000010712f:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff800000107136:	ff ff ff 
ffff800000107139:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010713d:	ff d0                	callq  *%rax
ffff80000010713f:	be 28 00 00 00       	mov    $0x28,%esi
ffff800000107144:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000107149:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff800000107150:	ff ff ff 
ffff800000107153:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107157:	ff d0                	callq  *%rax
ffff800000107159:	be 02 00 00 00       	mov    $0x2,%esi
ffff80000010715e:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff800000107163:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff80000010716a:	ff ff ff 
ffff80000010716d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107171:	ff d0                	callq  *%rax
ffff800000107173:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107178:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff80000010717d:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff800000107184:	ff ff ff 
ffff800000107187:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010718b:	ff d0                	callq  *%rax
ffff80000010718d:	be fd 00 00 00       	mov    $0xfd,%esi
ffff800000107192:	bf 21 00 00 00       	mov    $0x21,%edi
ffff800000107197:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff80000010719e:	ff ff ff 
ffff8000001071a1:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071a5:	ff d0                	callq  *%rax
ffff8000001071a7:	be ff 00 00 00       	mov    $0xff,%esi
ffff8000001071ac:	bf a1 00 00 00       	mov    $0xa1,%edi
ffff8000001071b1:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff8000001071b8:	ff ff ff 
ffff8000001071bb:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001071bf:	ff d0                	callq  *%rax
ffff8000001071c1:	fb                   	sti    
ffff8000001071c2:	90                   	nop
ffff8000001071c3:	5b                   	pop    %rbx
ffff8000001071c4:	41 5f                	pop    %r15
ffff8000001071c6:	5d                   	pop    %rbp
ffff8000001071c7:	c3                   	retq   

ffff8000001071c8 <do_irq0x20>:
ffff8000001071c8:	f3 0f 1e fa          	endbr64 
ffff8000001071cc:	55                   	push   %rbp
ffff8000001071cd:	48 89 e5             	mov    %rsp,%rbp
ffff8000001071d0:	41 57                	push   %r15
ffff8000001071d2:	53                   	push   %rbx
ffff8000001071d3:	f3 0f 1e fa          	endbr64 
ffff8000001071d7:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001071d3 <do_irq0x20+0xb>
ffff8000001071de:	49 bb fd 36 00 00 00 	movabs $0x36fd,%r11
ffff8000001071e5:	00 00 00 
ffff8000001071e8:	4c 01 db             	add    %r11,%rbx
ffff8000001071eb:	48 b8 48 ed ff ff ff 	movabs $0xffffffffffffed48,%rax
ffff8000001071f2:	ff ff ff 
ffff8000001071f5:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001071f9:	49 89 df             	mov    %rbx,%r15
ffff8000001071fc:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107201:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000107208:	ff ff ff 
ffff80000010720b:	48 01 da             	add    %rbx,%rdx
ffff80000010720e:	ff d2                	callq  *%rdx
ffff800000107210:	be 20 00 00 00       	mov    $0x20,%esi
ffff800000107215:	bf 20 00 00 00       	mov    $0x20,%edi
ffff80000010721a:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff800000107221:	ff ff ff 
ffff800000107224:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107228:	ff d0                	callq  *%rax
ffff80000010722a:	90                   	nop
ffff80000010722b:	5b                   	pop    %rbx
ffff80000010722c:	41 5f                	pop    %r15
ffff80000010722e:	5d                   	pop    %rbp
ffff80000010722f:	c3                   	retq   

ffff800000107230 <do_irq0x21>:
ffff800000107230:	f3 0f 1e fa          	endbr64 
ffff800000107234:	55                   	push   %rbp
ffff800000107235:	48 89 e5             	mov    %rsp,%rbp
ffff800000107238:	41 57                	push   %r15
ffff80000010723a:	53                   	push   %rbx
ffff80000010723b:	48 83 ec 10          	sub    $0x10,%rsp
ffff80000010723f:	f3 0f 1e fa          	endbr64 
ffff800000107243:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010723f <do_irq0x21+0xf>
ffff80000010724a:	49 bb 91 36 00 00 00 	movabs $0x3691,%r11
ffff800000107251:	00 00 00 
ffff800000107254:	4c 01 db             	add    %r11,%rbx
ffff800000107257:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
ffff80000010725e:	bf 60 00 00 00       	mov    $0x60,%edi
ffff800000107263:	48 b8 9a c6 ff ff ff 	movabs $0xffffffffffffc69a,%rax
ffff80000010726a:	ff ff ff 
ffff80000010726d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107271:	ff d0                	callq  *%rax
ffff800000107273:	0f b6 c0             	movzbl %al,%eax
ffff800000107276:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000107279:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010727c:	89 c6                	mov    %eax,%esi
ffff80000010727e:	48 b8 59 ed ff ff ff 	movabs $0xffffffffffffed59,%rax
ffff800000107285:	ff ff ff 
ffff800000107288:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010728c:	49 89 df             	mov    %rbx,%r15
ffff80000010728f:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107294:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff80000010729b:	ff ff ff 
ffff80000010729e:	48 01 da             	add    %rbx,%rdx
ffff8000001072a1:	ff d2                	callq  *%rdx
ffff8000001072a3:	be 20 00 00 00       	mov    $0x20,%esi
ffff8000001072a8:	bf 20 00 00 00       	mov    $0x20,%edi
ffff8000001072ad:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff8000001072b4:	ff ff ff 
ffff8000001072b7:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001072bb:	ff d0                	callq  *%rax
ffff8000001072bd:	90                   	nop
ffff8000001072be:	48 83 c4 10          	add    $0x10,%rsp
ffff8000001072c2:	5b                   	pop    %rbx
ffff8000001072c3:	41 5f                	pop    %r15
ffff8000001072c5:	5d                   	pop    %rbp
ffff8000001072c6:	c3                   	retq   

ffff8000001072c7 <do_irq0x2c>:
ffff8000001072c7:	f3 0f 1e fa          	endbr64 
ffff8000001072cb:	55                   	push   %rbp
ffff8000001072cc:	48 89 e5             	mov    %rsp,%rbp
ffff8000001072cf:	41 57                	push   %r15
ffff8000001072d1:	53                   	push   %rbx
ffff8000001072d2:	f3 0f 1e fa          	endbr64 
ffff8000001072d6:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001072d2 <do_irq0x2c+0xb>
ffff8000001072dd:	49 bb fe 35 00 00 00 	movabs $0x35fe,%r11
ffff8000001072e4:	00 00 00 
ffff8000001072e7:	4c 01 db             	add    %r11,%rbx
ffff8000001072ea:	48 b8 5c ed ff ff ff 	movabs $0xffffffffffffed5c,%rax
ffff8000001072f1:	ff ff ff 
ffff8000001072f4:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001072f8:	49 89 df             	mov    %rbx,%r15
ffff8000001072fb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107300:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff800000107307:	ff ff ff 
ffff80000010730a:	48 01 da             	add    %rbx,%rdx
ffff80000010730d:	ff d2                	callq  *%rdx
ffff80000010730f:	be 20 00 00 00       	mov    $0x20,%esi
ffff800000107314:	bf a0 00 00 00       	mov    $0xa0,%edi
ffff800000107319:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff800000107320:	ff ff ff 
ffff800000107323:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107327:	ff d0                	callq  *%rax
ffff800000107329:	be 20 00 00 00       	mov    $0x20,%esi
ffff80000010732e:	bf 20 00 00 00       	mov    $0x20,%edi
ffff800000107333:	48 b8 d7 c6 ff ff ff 	movabs $0xffffffffffffc6d7,%rax
ffff80000010733a:	ff ff ff 
ffff80000010733d:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107341:	ff d0                	callq  *%rax
ffff800000107343:	90                   	nop
ffff800000107344:	5b                   	pop    %rbx
ffff800000107345:	41 5f                	pop    %r15
ffff800000107347:	5d                   	pop    %rbp
ffff800000107348:	c3                   	retq   

ffff800000107349 <memoryinit>:
ffff800000107349:	f3 0f 1e fa          	endbr64 
ffff80000010734d:	55                   	push   %rbp
ffff80000010734e:	48 89 e5             	mov    %rsp,%rbp
ffff800000107351:	41 57                	push   %r15
ffff800000107353:	53                   	push   %rbx
ffff800000107354:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000107358:	f3 0f 1e fa          	endbr64 
ffff80000010735c:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107358 <memoryinit+0xf>
ffff800000107363:	49 bb 78 35 00 00 00 	movabs $0x3578,%r11
ffff80000010736a:	00 00 00 
ffff80000010736d:	4c 01 db             	add    %r11,%rbx
ffff800000107370:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107377:	00 
ffff800000107378:	48 b8 00 7e 00 00 00 	movabs $0xffff800000007e00,%rax
ffff80000010737f:	80 ff ff 
ffff800000107382:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107386:	e9 e7 00 00 00       	jmpq   ffff800000107472 <memoryinit+0x129>
ffff80000010738b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010738f:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107392:	83 f8 01             	cmp    $0x1,%eax
ffff800000107395:	0f 85 d2 00 00 00    	jne    ffff80000010746d <memoryinit+0x124>
ffff80000010739b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010739f:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001073a3:	48 01 45 e8          	add    %rax,-0x18(%rbp)
ffff8000001073a7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073ab:	48 8b 00             	mov    (%rax),%rax
ffff8000001073ae:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff8000001073b5:	80 ff ff 
ffff8000001073b8:	48 01 d0             	add    %rdx,%rax
ffff8000001073bb:	48 ba c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rdx
ffff8000001073c2:	ff ff ff 
ffff8000001073c5:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001073c9:	48 89 d1             	mov    %rdx,%rcx
ffff8000001073cc:	48 ba c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rdx
ffff8000001073d3:	ff ff ff 
ffff8000001073d6:	48 8b 14 13          	mov    (%rbx,%rdx,1),%rdx
ffff8000001073da:	48 39 c8             	cmp    %rcx,%rax
ffff8000001073dd:	48 0f 42 c2          	cmovb  %rdx,%rax
ffff8000001073e1:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff8000001073e5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073e9:	48 8b 10             	mov    (%rax),%rdx
ffff8000001073ec:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001073f0:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff8000001073f4:	48 01 c2             	add    %rax,%rdx
ffff8000001073f7:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff8000001073fe:	80 ff ff 
ffff800000107401:	48 01 d0             	add    %rdx,%rax
ffff800000107404:	48 89 c2             	mov    %rax,%rdx
ffff800000107407:	48 b8 ff ff 7f 00 00 	movabs $0xffff8000007fffff,%rax
ffff80000010740e:	80 ff ff 
ffff800000107411:	48 39 c2             	cmp    %rax,%rdx
ffff800000107414:	77 21                	ja     ffff800000107437 <memoryinit+0xee>
ffff800000107416:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010741a:	48 8b 10             	mov    (%rax),%rdx
ffff80000010741d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107421:	48 8b 40 08          	mov    0x8(%rax),%rax
ffff800000107425:	48 01 c2             	add    %rax,%rdx
ffff800000107428:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
ffff80000010742f:	80 ff ff 
ffff800000107432:	48 01 d0             	add    %rdx,%rax
ffff800000107435:	eb 0a                	jmp    ffff800000107441 <memoryinit+0xf8>
ffff800000107437:	48 b8 00 00 80 00 00 	movabs $0xffff800000800000,%rax
ffff80000010743e:	80 ff ff 
ffff800000107441:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000107445:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107449:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
ffff80000010744d:	73 1e                	jae    ffff80000010746d <memoryinit+0x124>
ffff80000010744f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000107453:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107457:	48 89 d6             	mov    %rdx,%rsi
ffff80000010745a:	48 89 c7             	mov    %rax,%rdi
ffff80000010745d:	48 b8 49 cc ff ff ff 	movabs $0xffffffffffffcc49,%rax
ffff800000107464:	ff ff ff 
ffff800000107467:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010746b:	ff d0                	callq  *%rax
ffff80000010746d:	48 83 45 e0 14       	addq   $0x14,-0x20(%rbp)
ffff800000107472:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107476:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107479:	85 c0                	test   %eax,%eax
ffff80000010747b:	74 10                	je     ffff80000010748d <memoryinit+0x144>
ffff80000010747d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107481:	8b 40 10             	mov    0x10(%rax),%eax
ffff800000107484:	83 f8 04             	cmp    $0x4,%eax
ffff800000107487:	0f 86 fe fe ff ff    	jbe    ffff80000010738b <memoryinit+0x42>
ffff80000010748d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107491:	48 c1 e8 14          	shr    $0x14,%rax
ffff800000107495:	48 89 c6             	mov    %rax,%rsi
ffff800000107498:	48 b8 6d ed ff ff ff 	movabs $0xffffffffffffed6d,%rax
ffff80000010749f:	ff ff ff 
ffff8000001074a2:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001074a6:	49 89 df             	mov    %rbx,%r15
ffff8000001074a9:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001074ae:	48 ba ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rdx
ffff8000001074b5:	ff ff ff 
ffff8000001074b8:	48 01 da             	add    %rbx,%rdx
ffff8000001074bb:	ff d2                	callq  *%rdx
ffff8000001074bd:	ba 00 04 00 00       	mov    $0x400,%edx
ffff8000001074c2:	be 08 00 00 00       	mov    $0x8,%esi
ffff8000001074c7:	bf 02 00 00 00       	mov    $0x2,%edi
ffff8000001074cc:	49 89 df             	mov    %rbx,%r15
ffff8000001074cf:	48 b8 32 d0 ff ff ff 	movabs $0xffffffffffffd032,%rax
ffff8000001074d6:	ff ff ff 
ffff8000001074d9:	48 01 d8             	add    %rbx,%rax
ffff8000001074dc:	ff d0                	callq  *%rax
ffff8000001074de:	0f 20 d8             	mov    %cr3,%rax
ffff8000001074e1:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff8000001074e5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001074e9:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
ffff8000001074ed:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001074f1:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
ffff8000001074f8:	80 ff ff 
ffff8000001074fb:	48 01 d0             	add    %rdx,%rax
ffff8000001074fe:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107505:	0f 20 d8             	mov    %cr3,%rax
ffff800000107508:	0f 22 d8             	mov    %rax,%cr3
ffff80000010750b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
ffff80000010750f:	90                   	nop
ffff800000107510:	48 83 c4 40          	add    $0x40,%rsp
ffff800000107514:	5b                   	pop    %rbx
ffff800000107515:	41 5f                	pop    %r15
ffff800000107517:	5d                   	pop    %rbp
ffff800000107518:	c3                   	retq   

ffff800000107519 <freerange>:
ffff800000107519:	f3 0f 1e fa          	endbr64 
ffff80000010751d:	55                   	push   %rbp
ffff80000010751e:	48 89 e5             	mov    %rsp,%rbp
ffff800000107521:	41 57                	push   %r15
ffff800000107523:	53                   	push   %rbx
ffff800000107524:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000107528:	f3 0f 1e fa          	endbr64 
ffff80000010752c:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107528 <freerange+0xf>
ffff800000107533:	49 bb a8 33 00 00 00 	movabs $0x33a8,%r11
ffff80000010753a:	00 00 00 
ffff80000010753d:	4c 01 db             	add    %r11,%rbx
ffff800000107540:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107544:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
ffff800000107548:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010754c:	48 05 ff 0f 00 00    	add    $0xfff,%rax
ffff800000107552:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
ffff800000107558:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010755c:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000107560:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107564:	48 89 c6             	mov    %rax,%rsi
ffff800000107567:	48 b8 81 ed ff ff ff 	movabs $0xffffffffffffed81,%rax
ffff80000010756e:	ff ff ff 
ffff800000107571:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000107575:	49 89 df             	mov    %rbx,%r15
ffff800000107578:	b8 00 00 00 00       	mov    $0x0,%eax
ffff80000010757d:	48 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rcx
ffff800000107584:	ff ff ff 
ffff800000107587:	48 01 d9             	add    %rbx,%rcx
ffff80000010758a:	ff d1                	callq  *%rcx
ffff80000010758c:	eb 1f                	jmp    ffff8000001075ad <freerange+0x94>
ffff80000010758e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107592:	48 89 c7             	mov    %rax,%rdi
ffff800000107595:	48 b8 f8 cc ff ff ff 	movabs $0xffffffffffffccf8,%rax
ffff80000010759c:	ff ff ff 
ffff80000010759f:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001075a3:	ff d0                	callq  *%rax
ffff8000001075a5:	48 81 45 e8 00 10 00 	addq   $0x1000,-0x18(%rbp)
ffff8000001075ac:	00 
ffff8000001075ad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001075b1:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff8000001075b7:	48 39 45 d0          	cmp    %rax,-0x30(%rbp)
ffff8000001075bb:	73 d1                	jae    ffff80000010758e <freerange+0x75>
ffff8000001075bd:	90                   	nop
ffff8000001075be:	90                   	nop
ffff8000001075bf:	48 83 c4 20          	add    $0x20,%rsp
ffff8000001075c3:	5b                   	pop    %rbx
ffff8000001075c4:	41 5f                	pop    %r15
ffff8000001075c6:	5d                   	pop    %rbp
ffff8000001075c7:	c3                   	retq   

ffff8000001075c8 <kfree>:
ffff8000001075c8:	f3 0f 1e fa          	endbr64 
ffff8000001075cc:	55                   	push   %rbp
ffff8000001075cd:	48 89 e5             	mov    %rsp,%rbp
ffff8000001075d0:	41 57                	push   %r15
ffff8000001075d2:	53                   	push   %rbx
ffff8000001075d3:	48 83 ec 20          	sub    $0x20,%rsp
ffff8000001075d7:	f3 0f 1e fa          	endbr64 
ffff8000001075db:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff8000001075d7 <kfree+0xf>
ffff8000001075e2:	49 bb f9 32 00 00 00 	movabs $0x32f9,%r11
ffff8000001075e9:	00 00 00 
ffff8000001075ec:	4c 01 db             	add    %r11,%rbx
ffff8000001075ef:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff8000001075f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001075f7:	25 ff 0f 00 00       	and    $0xfff,%eax
ffff8000001075fc:	48 85 c0             	test   %rax,%rax
ffff8000001075ff:	75 14                	jne    ffff800000107615 <kfree+0x4d>
ffff800000107601:	48 b8 c0 ff ff ff ff 	movabs $0xffffffffffffffc0,%rax
ffff800000107608:	ff ff ff 
ffff80000010760b:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010760f:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
ffff800000107613:	73 20                	jae    ffff800000107635 <kfree+0x6d>
ffff800000107615:	48 b8 9f ed ff ff ff 	movabs $0xffffffffffffed9f,%rax
ffff80000010761c:	ff ff ff 
ffff80000010761f:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000107623:	49 89 df             	mov    %rbx,%r15
ffff800000107626:	48 b8 d5 a1 ff ff ff 	movabs $0xffffffffffffa1d5,%rax
ffff80000010762d:	ff ff ff 
ffff800000107630:	48 01 d8             	add    %rbx,%rax
ffff800000107633:	ff d0                	callq  *%rax
ffff800000107635:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107639:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff80000010763e:	be 01 00 00 00       	mov    $0x1,%esi
ffff800000107643:	48 89 c7             	mov    %rax,%rdi
ffff800000107646:	49 89 df             	mov    %rbx,%r15
ffff800000107649:	48 b8 9c d9 ff ff ff 	movabs $0xffffffffffffd99c,%rax
ffff800000107650:	ff ff ff 
ffff800000107653:	48 01 d8             	add    %rbx,%rax
ffff800000107656:	ff d0                	callq  *%rax
ffff800000107658:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010765c:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107660:	48 b8 b8 00 00 00 00 	movabs $0xb8,%rax
ffff800000107667:	00 00 00 
ffff80000010766a:	48 8b 14 03          	mov    (%rbx,%rax,1),%rdx
ffff80000010766e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107672:	48 89 10             	mov    %rdx,(%rax)
ffff800000107675:	48 ba b8 00 00 00 00 	movabs $0xb8,%rdx
ffff80000010767c:	00 00 00 
ffff80000010767f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107683:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000107687:	90                   	nop
ffff800000107688:	48 83 c4 20          	add    $0x20,%rsp
ffff80000010768c:	5b                   	pop    %rbx
ffff80000010768d:	41 5f                	pop    %r15
ffff80000010768f:	5d                   	pop    %rbp
ffff800000107690:	c3                   	retq   

ffff800000107691 <kalloc>:
ffff800000107691:	f3 0f 1e fa          	endbr64 
ffff800000107695:	55                   	push   %rbp
ffff800000107696:	48 89 e5             	mov    %rsp,%rbp
ffff800000107699:	41 57                	push   %r15
ffff80000010769b:	48 83 ec 18          	sub    $0x18,%rsp
ffff80000010769f:	f3 0f 1e fa          	endbr64 
ffff8000001076a3:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010769f <kalloc+0xe>
ffff8000001076aa:	49 bb 31 32 00 00 00 	movabs $0x3231,%r11
ffff8000001076b1:	00 00 00 
ffff8000001076b4:	4c 01 d8             	add    %r11,%rax
ffff8000001076b7:	48 ba b8 00 00 00 00 	movabs $0xb8,%rdx
ffff8000001076be:	00 00 00 
ffff8000001076c1:	48 8b 14 10          	mov    (%rax,%rdx,1),%rdx
ffff8000001076c5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001076c9:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001076ce:	74 15                	je     ffff8000001076e5 <kalloc+0x54>
ffff8000001076d0:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff8000001076d4:	48 8b 12             	mov    (%rdx),%rdx
ffff8000001076d7:	48 b9 b8 00 00 00 00 	movabs $0xb8,%rcx
ffff8000001076de:	00 00 00 
ffff8000001076e1:	48 89 14 08          	mov    %rdx,(%rax,%rcx,1)
ffff8000001076e5:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001076ea:	74 23                	je     ffff80000010770f <kalloc+0x7e>
ffff8000001076ec:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
ffff8000001076f0:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff8000001076f5:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001076fa:	48 89 cf             	mov    %rcx,%rdi
ffff8000001076fd:	49 89 c7             	mov    %rax,%r15
ffff800000107700:	48 b9 9c d9 ff ff ff 	movabs $0xffffffffffffd99c,%rcx
ffff800000107707:	ff ff ff 
ffff80000010770a:	48 01 c1             	add    %rax,%rcx
ffff80000010770d:	ff d1                	callq  *%rcx
ffff80000010770f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107713:	48 83 c4 18          	add    $0x18,%rsp
ffff800000107717:	41 5f                	pop    %r15
ffff800000107719:	5d                   	pop    %rbp
ffff80000010771a:	c3                   	retq   

ffff80000010771b <mfree>:
ffff80000010771b:	f3 0f 1e fa          	endbr64 
ffff80000010771f:	55                   	push   %rbp
ffff800000107720:	48 89 e5             	mov    %rsp,%rbp
ffff800000107723:	41 57                	push   %r15
ffff800000107725:	53                   	push   %rbx
ffff800000107726:	48 83 ec 20          	sub    $0x20,%rsp
ffff80000010772a:	f3 0f 1e fa          	endbr64 
ffff80000010772e:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010772a <mfree+0xf>
ffff800000107735:	49 bb a6 31 00 00 00 	movabs $0x31a6,%r11
ffff80000010773c:	00 00 00 
ffff80000010773f:	4c 01 db             	add    %r11,%rbx
ffff800000107742:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107746:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000107749:	81 7d d4 00 04 00 00 	cmpl   $0x400,-0x2c(%rbp)
ffff800000107750:	7e 1c                	jle    ffff80000010776e <mfree+0x53>
ffff800000107752:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107756:	48 89 c7             	mov    %rax,%rdi
ffff800000107759:	48 b8 f8 cc ff ff ff 	movabs $0xffffffffffffccf8,%rax
ffff800000107760:	ff ff ff 
ffff800000107763:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107767:	ff d0                	callq  *%rax
ffff800000107769:	e9 90 00 00 00       	jmpq   ffff8000001077fe <mfree+0xe3>
ffff80000010776e:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff800000107775:	ff ff ff 
ffff800000107778:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff80000010777c:	48 8b 00             	mov    (%rax),%rax
ffff80000010777f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107783:	eb 72                	jmp    ffff8000001077f7 <mfree+0xdc>
ffff800000107785:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107789:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010778c:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff80000010778f:	7e 5a                	jle    ffff8000001077eb <mfree+0xd0>
ffff800000107791:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107795:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107799:	8b 40 20             	mov    0x20(%rax),%eax
ffff80000010779c:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
ffff80000010779f:	7f 4a                	jg     ffff8000001077eb <mfree+0xd0>
ffff8000001077a1:	8b 45 d4             	mov    -0x2c(%rbp),%eax
ffff8000001077a4:	48 63 d0             	movslq %eax,%rdx
ffff8000001077a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001077ab:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001077b0:	48 89 c7             	mov    %rax,%rdi
ffff8000001077b3:	49 89 df             	mov    %rbx,%r15
ffff8000001077b6:	48 b8 9c d9 ff ff ff 	movabs $0xffffffffffffd99c,%rax
ffff8000001077bd:	ff ff ff 
ffff8000001077c0:	48 01 d8             	add    %rbx,%rax
ffff8000001077c3:	ff d0                	callq  *%rax
ffff8000001077c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001077c9:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001077cd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff8000001077d1:	48 89 d6             	mov    %rdx,%rsi
ffff8000001077d4:	48 89 c7             	mov    %rax,%rdi
ffff8000001077d7:	49 89 df             	mov    %rbx,%r15
ffff8000001077da:	48 b8 9a d6 ff ff ff 	movabs $0xffffffffffffd69a,%rax
ffff8000001077e1:	ff ff ff 
ffff8000001077e4:	48 01 d8             	add    %rbx,%rax
ffff8000001077e7:	ff d0                	callq  *%rax
ffff8000001077e9:	eb 13                	jmp    ffff8000001077fe <mfree+0xe3>
ffff8000001077eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001077ef:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001077f3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001077f7:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001077fc:	75 87                	jne    ffff800000107785 <mfree+0x6a>
ffff8000001077fe:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107802:	5b                   	pop    %rbx
ffff800000107803:	41 5f                	pop    %r15
ffff800000107805:	5d                   	pop    %rbp
ffff800000107806:	c3                   	retq   

ffff800000107807 <malloc>:
ffff800000107807:	f3 0f 1e fa          	endbr64 
ffff80000010780b:	55                   	push   %rbp
ffff80000010780c:	48 89 e5             	mov    %rsp,%rbp
ffff80000010780f:	41 57                	push   %r15
ffff800000107811:	53                   	push   %rbx
ffff800000107812:	48 83 ec 30          	sub    $0x30,%rsp
ffff800000107816:	f3 0f 1e fa          	endbr64 
ffff80000010781a:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107816 <malloc+0xf>
ffff800000107821:	49 bb ba 30 00 00 00 	movabs $0x30ba,%r11
ffff800000107828:	00 00 00 
ffff80000010782b:	4c 01 db             	add    %r11,%rbx
ffff80000010782e:	89 7d cc             	mov    %edi,-0x34(%rbp)
ffff800000107831:	81 7d cc 00 04 00 00 	cmpl   $0x400,-0x34(%rbp)
ffff800000107838:	7e 1d                	jle    ffff800000107857 <malloc+0x50>
ffff80000010783a:	48 b8 c1 cd ff ff ff 	movabs $0xffffffffffffcdc1,%rax
ffff800000107841:	ff ff ff 
ffff800000107844:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107848:	ff d0                	callq  *%rax
ffff80000010784a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff80000010784e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107852:	e9 a2 00 00 00       	jmpq   ffff8000001078f9 <malloc+0xf2>
ffff800000107857:	48 b8 60 ff ff ff ff 	movabs $0xffffffffffffff60,%rax
ffff80000010785e:	ff ff ff 
ffff800000107861:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107865:	48 8b 00             	mov    (%rax),%rax
ffff800000107868:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010786c:	eb 7b                	jmp    ffff8000001078e9 <malloc+0xe2>
ffff80000010786e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107872:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107875:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff800000107878:	7e 63                	jle    ffff8000001078dd <malloc+0xd6>
ffff80000010787a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010787e:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107882:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107885:	39 45 cc             	cmp    %eax,-0x34(%rbp)
ffff800000107888:	7f 53                	jg     ffff8000001078dd <malloc+0xd6>
ffff80000010788a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010788e:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107892:	48 89 c7             	mov    %rax,%rdi
ffff800000107895:	49 89 df             	mov    %rbx,%r15
ffff800000107898:	48 b8 96 d4 ff ff ff 	movabs $0xffffffffffffd496,%rax
ffff80000010789f:	ff ff ff 
ffff8000001078a2:	48 01 d8             	add    %rbx,%rax
ffff8000001078a5:	ff d0                	callq  *%rax
ffff8000001078a7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001078ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078af:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001078b3:	8b 40 20             	mov    0x20(%rax),%eax
ffff8000001078b6:	48 63 d0             	movslq %eax,%rdx
ffff8000001078b9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001078bd:	be 00 00 00 00       	mov    $0x0,%esi
ffff8000001078c2:	48 89 c7             	mov    %rax,%rdi
ffff8000001078c5:	49 89 df             	mov    %rbx,%r15
ffff8000001078c8:	48 b8 9c d9 ff ff ff 	movabs $0xffffffffffffd99c,%rax
ffff8000001078cf:	ff ff ff 
ffff8000001078d2:	48 01 d8             	add    %rbx,%rax
ffff8000001078d5:	ff d0                	callq  *%rax
ffff8000001078d7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001078db:	eb 1c                	jmp    ffff8000001078f9 <malloc+0xf2>
ffff8000001078dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001078e1:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff8000001078e5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff8000001078e9:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001078ee:	0f 85 7a ff ff ff    	jne    ffff80000010786e <malloc+0x67>
ffff8000001078f4:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001078f9:	48 83 c4 30          	add    $0x30,%rsp
ffff8000001078fd:	5b                   	pop    %rbx
ffff8000001078fe:	41 5f                	pop    %r15
ffff800000107900:	5d                   	pop    %rbp
ffff800000107901:	c3                   	retq   

ffff800000107902 <kmem_cache_init>:
ffff800000107902:	f3 0f 1e fa          	endbr64 
ffff800000107906:	55                   	push   %rbp
ffff800000107907:	48 89 e5             	mov    %rsp,%rbp
ffff80000010790a:	53                   	push   %rbx
ffff80000010790b:	48 83 ec 28          	sub    $0x28,%rsp
ffff80000010790f:	f3 0f 1e fa          	endbr64 
ffff800000107913:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff80000010790f <kmem_cache_init+0xd>
ffff80000010791a:	49 bb c1 2f 00 00 00 	movabs $0x2fc1,%r11
ffff800000107921:	00 00 00 
ffff800000107924:	4c 01 db             	add    %r11,%rbx
ffff800000107927:	89 7d dc             	mov    %edi,-0x24(%rbp)
ffff80000010792a:	89 75 d8             	mov    %esi,-0x28(%rbp)
ffff80000010792d:	89 55 d4             	mov    %edx,-0x2c(%rbp)
ffff800000107930:	8b 45 d8             	mov    -0x28(%rbp),%eax
ffff800000107933:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff800000107936:	eb 47                	jmp    ffff80000010797f <kmem_cache_init+0x7d>
ffff800000107938:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff80000010793b:	ba 01 00 00 00       	mov    $0x1,%edx
ffff800000107940:	89 c6                	mov    %eax,%esi
ffff800000107942:	48 b8 a8 ed ff ff ff 	movabs $0xffffffffffffeda8,%rax
ffff800000107949:	ff ff ff 
ffff80000010794c:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000107950:	48 b8 55 d1 ff ff ff 	movabs $0xffffffffffffd155,%rax
ffff800000107957:	ff ff ff 
ffff80000010795a:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff80000010795e:	ff d0                	callq  *%rax
ffff800000107960:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107964:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107969:	75 0a                	jne    ffff800000107975 <kmem_cache_init+0x73>
ffff80000010796b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000107970:	e9 a9 00 00 00       	jmpq   ffff800000107a1e <kmem_cache_init+0x11c>
ffff800000107975:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107978:	0f af 45 dc          	imul   -0x24(%rbp),%eax
ffff80000010797c:	89 45 ec             	mov    %eax,-0x14(%rbp)
ffff80000010797f:	8b 45 ec             	mov    -0x14(%rbp),%eax
ffff800000107982:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
ffff800000107985:	7e b1                	jle    ffff800000107938 <kmem_cache_init+0x36>
ffff800000107987:	83 7d d8 5f          	cmpl   $0x5f,-0x28(%rbp)
ffff80000010798b:	7f 40                	jg     ffff8000001079cd <kmem_cache_init+0xcb>
ffff80000010798d:	83 7d d4 60          	cmpl   $0x60,-0x2c(%rbp)
ffff800000107991:	7e 3a                	jle    ffff8000001079cd <kmem_cache_init+0xcb>
ffff800000107993:	ba 01 00 00 00       	mov    $0x1,%edx
ffff800000107998:	be 60 00 00 00       	mov    $0x60,%esi
ffff80000010799d:	48 b8 a8 ed ff ff ff 	movabs $0xffffffffffffeda8,%rax
ffff8000001079a4:	ff ff ff 
ffff8000001079a7:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001079ab:	48 b8 55 d1 ff ff ff 	movabs $0xffffffffffffd155,%rax
ffff8000001079b2:	ff ff ff 
ffff8000001079b5:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff8000001079b9:	ff d0                	callq  *%rax
ffff8000001079bb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001079bf:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff8000001079c4:	75 07                	jne    ffff8000001079cd <kmem_cache_init+0xcb>
ffff8000001079c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff8000001079cb:	eb 51                	jmp    ffff800000107a1e <kmem_cache_init+0x11c>
ffff8000001079cd:	81 7d d8 bf 00 00 00 	cmpl   $0xbf,-0x28(%rbp)
ffff8000001079d4:	7f 43                	jg     ffff800000107a19 <kmem_cache_init+0x117>
ffff8000001079d6:	81 7d d4 c0 00 00 00 	cmpl   $0xc0,-0x2c(%rbp)
ffff8000001079dd:	7e 3a                	jle    ffff800000107a19 <kmem_cache_init+0x117>
ffff8000001079df:	ba 01 00 00 00       	mov    $0x1,%edx
ffff8000001079e4:	be c0 00 00 00       	mov    $0xc0,%esi
ffff8000001079e9:	48 b8 a8 ed ff ff ff 	movabs $0xffffffffffffeda8,%rax
ffff8000001079f0:	ff ff ff 
ffff8000001079f3:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff8000001079f7:	48 b8 55 d1 ff ff ff 	movabs $0xffffffffffffd155,%rax
ffff8000001079fe:	ff ff ff 
ffff800000107a01:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107a05:	ff d0                	callq  *%rax
ffff800000107a07:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107a0b:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107a10:	75 07                	jne    ffff800000107a19 <kmem_cache_init+0x117>
ffff800000107a12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
ffff800000107a17:	eb 05                	jmp    ffff800000107a1e <kmem_cache_init+0x11c>
ffff800000107a19:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107a1e:	48 83 c4 28          	add    $0x28,%rsp
ffff800000107a22:	5b                   	pop    %rbx
ffff800000107a23:	5d                   	pop    %rbp
ffff800000107a24:	c3                   	retq   

ffff800000107a25 <kmem_cache_create>:
ffff800000107a25:	f3 0f 1e fa          	endbr64 
ffff800000107a29:	55                   	push   %rbp
ffff800000107a2a:	48 89 e5             	mov    %rsp,%rbp
ffff800000107a2d:	41 57                	push   %r15
ffff800000107a2f:	53                   	push   %rbx
ffff800000107a30:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000107a34:	f3 0f 1e fa          	endbr64 
ffff800000107a38:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107a34 <kmem_cache_create+0xf>
ffff800000107a3f:	49 bb 9c 2e 00 00 00 	movabs $0x2e9c,%r11
ffff800000107a46:	00 00 00 
ffff800000107a49:	4c 01 db             	add    %r11,%rbx
ffff800000107a4c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107a50:	89 75 d4             	mov    %esi,-0x2c(%rbp)
ffff800000107a53:	89 55 d0             	mov    %edx,-0x30(%rbp)
ffff800000107a56:	49 89 df             	mov    %rbx,%r15
ffff800000107a59:	48 b8 c1 cd ff ff ff 	movabs $0xffffffffffffcdc1,%rax
ffff800000107a60:	ff ff ff 
ffff800000107a63:	48 01 d8             	add    %rbx,%rax
ffff800000107a66:	ff d0                	callq  *%rax
ffff800000107a68:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107a6c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107a70:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000107a75:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107a7a:	48 89 c7             	mov    %rax,%rdi
ffff800000107a7d:	49 89 df             	mov    %rbx,%r15
ffff800000107a80:	48 b8 9c d9 ff ff ff 	movabs $0xffffffffffffd99c,%rax
ffff800000107a87:	ff ff ff 
ffff800000107a8a:	48 01 d8             	add    %rbx,%rax
ffff800000107a8d:	ff d0                	callq  *%rax
ffff800000107a8f:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000107a94:	75 0a                	jne    ffff800000107aa0 <kmem_cache_create+0x7b>
ffff800000107a96:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107a9b:	e9 cf 00 00 00       	jmpq   ffff800000107b6f <kmem_cache_create+0x14a>
ffff800000107aa0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107aa4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107aa8:	48 89 50 18          	mov    %rdx,0x18(%rax)
ffff800000107aac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ab0:	8b 55 d4             	mov    -0x2c(%rbp),%edx
ffff800000107ab3:	89 50 20             	mov    %edx,0x20(%rax)
ffff800000107ab6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107aba:	8b 55 d0             	mov    -0x30(%rbp),%edx
ffff800000107abd:	89 50 24             	mov    %edx,0x24(%rax)
ffff800000107ac0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ac4:	48 c7 40 38 00 00 00 	movq   $0x0,0x38(%rax)
ffff800000107acb:	00 
ffff800000107acc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107ad0:	48 89 c7             	mov    %rax,%rdi
ffff800000107ad3:	48 b8 a8 d2 ff ff ff 	movabs $0xffffffffffffd2a8,%rax
ffff800000107ada:	ff ff ff 
ffff800000107add:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107ae1:	ff d0                	callq  *%rax
ffff800000107ae3:	48 b8 c0 00 00 00 00 	movabs $0xc0,%rax
ffff800000107aea:	00 00 00 
ffff800000107aed:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107af1:	48 85 c0             	test   %rax,%rax
ffff800000107af4:	75 14                	jne    ffff800000107b0a <kmem_cache_create+0xe5>
ffff800000107af6:	48 ba c0 00 00 00 00 	movabs $0xc0,%rdx
ffff800000107afd:	00 00 00 
ffff800000107b00:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b04:	48 89 04 13          	mov    %rax,(%rbx,%rdx,1)
ffff800000107b08:	eb 61                	jmp    ffff800000107b6b <kmem_cache_create+0x146>
ffff800000107b0a:	48 b8 c0 00 00 00 00 	movabs $0xc0,%rax
ffff800000107b11:	00 00 00 
ffff800000107b14:	48 8b 04 03          	mov    (%rbx,%rax,1),%rax
ffff800000107b18:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107b1c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b20:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107b24:	48 85 c0             	test   %rax,%rax
ffff800000107b27:	74 16                	je     ffff800000107b3f <kmem_cache_create+0x11a>
ffff800000107b29:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b2d:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107b31:	8b 50 20             	mov    0x20(%rax),%edx
ffff800000107b34:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b38:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107b3b:	39 c2                	cmp    %eax,%edx
ffff800000107b3d:	7e 1e                	jle    ffff800000107b5d <kmem_cache_create+0x138>
ffff800000107b3f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b43:	48 8b 50 38          	mov    0x38(%rax),%rdx
ffff800000107b47:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b4b:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000107b4f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b53:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000107b57:	48 89 50 38          	mov    %rdx,0x38(%rax)
ffff800000107b5b:	eb 0e                	jmp    ffff800000107b6b <kmem_cache_create+0x146>
ffff800000107b5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107b61:	48 8b 40 38          	mov    0x38(%rax),%rax
ffff800000107b65:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107b69:	eb b1                	jmp    ffff800000107b1c <kmem_cache_create+0xf7>
ffff800000107b6b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107b6f:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107b73:	5b                   	pop    %rbx
ffff800000107b74:	41 5f                	pop    %r15
ffff800000107b76:	5d                   	pop    %rbp
ffff800000107b77:	c3                   	retq   

ffff800000107b78 <slab_alloc>:
ffff800000107b78:	f3 0f 1e fa          	endbr64 
ffff800000107b7c:	55                   	push   %rbp
ffff800000107b7d:	48 89 e5             	mov    %rsp,%rbp
ffff800000107b80:	41 57                	push   %r15
ffff800000107b82:	53                   	push   %rbx
ffff800000107b83:	48 83 ec 40          	sub    $0x40,%rsp
ffff800000107b87:	f3 0f 1e fa          	endbr64 
ffff800000107b8b:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107b87 <slab_alloc+0xf>
ffff800000107b92:	49 bb 49 2d 00 00 00 	movabs $0x2d49,%r11
ffff800000107b99:	00 00 00 
ffff800000107b9c:	4c 01 db             	add    %r11,%rbx
ffff800000107b9f:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
ffff800000107ba3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107ba7:	8b 40 20             	mov    0x20(%rax),%eax
ffff800000107baa:	89 45 e0             	mov    %eax,-0x20(%rbp)
ffff800000107bad:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107bb1:	8b 40 24             	mov    0x24(%rax),%eax
ffff800000107bb4:	89 45 dc             	mov    %eax,-0x24(%rbp)
ffff800000107bb7:	49 89 df             	mov    %rbx,%r15
ffff800000107bba:	48 b8 c1 cd ff ff ff 	movabs $0xffffffffffffcdc1,%rax
ffff800000107bc1:	ff ff ff 
ffff800000107bc4:	48 01 d8             	add    %rbx,%rax
ffff800000107bc7:	ff d0                	callq  *%rax
ffff800000107bc9:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000107bcd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107bd1:	ba 00 10 00 00       	mov    $0x1000,%edx
ffff800000107bd6:	be 00 00 00 00       	mov    $0x0,%esi
ffff800000107bdb:	48 89 c7             	mov    %rax,%rdi
ffff800000107bde:	49 89 df             	mov    %rbx,%r15
ffff800000107be1:	48 b8 9c d9 ff ff ff 	movabs $0xffffffffffffd99c,%rax
ffff800000107be8:	ff ff ff 
ffff800000107beb:	48 01 d8             	add    %rbx,%rax
ffff800000107bee:	ff d0                	callq  *%rax
ffff800000107bf0:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107bf4:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107bf8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107bfc:	48 89 10             	mov    %rdx,(%rax)
ffff800000107bff:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107c03:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff800000107c07:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107c0b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107c0f:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107c12:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107c15:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
ffff800000107c19:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107c1c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c20:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
ffff800000107c24:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
ffff800000107c2b:	00 
ffff800000107c2c:	c7 45 e4 18 00 00 00 	movl   $0x18,-0x1c(%rbp)
ffff800000107c33:	e9 9a 00 00 00       	jmpq   ffff800000107cd2 <slab_alloc+0x15a>
ffff800000107c38:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c3c:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107c3f:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107c42:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c46:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107c49:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c4d:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107c50:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107c53:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c57:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107c5a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c5e:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107c62:	48 85 c0             	test   %rax,%rax
ffff800000107c65:	75 2a                	jne    ffff800000107c91 <slab_alloc+0x119>
ffff800000107c67:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000107c6a:	48 63 d0             	movslq %eax,%rdx
ffff800000107c6d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107c71:	48 01 d0             	add    %rdx,%rax
ffff800000107c74:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107c78:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107c7c:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107c83:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000107c87:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107c8b:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107c8f:	eb 2a                	jmp    ffff800000107cbb <slab_alloc+0x143>
ffff800000107c91:	8b 45 e4             	mov    -0x1c(%rbp),%eax
ffff800000107c94:	48 63 d0             	movslq %eax,%rdx
ffff800000107c97:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107c9b:	48 01 c2             	add    %rax,%rdx
ffff800000107c9e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107ca2:	48 89 10             	mov    %rdx,(%rax)
ffff800000107ca5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107ca9:	48 8b 00             	mov    (%rax),%rax
ffff800000107cac:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107cb0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107cb4:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107cbb:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff800000107cbf:	74 0b                	je     ffff800000107ccc <slab_alloc+0x154>
ffff800000107cc1:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff800000107cc4:	83 c0 07             	add    $0x7,%eax
ffff800000107cc7:	83 e0 f8             	and    $0xfffffff8,%eax
ffff800000107cca:	eb 03                	jmp    ffff800000107ccf <slab_alloc+0x157>
ffff800000107ccc:	8b 45 e0             	mov    -0x20(%rbp),%eax
ffff800000107ccf:	01 45 e4             	add    %eax,-0x1c(%rbp)
ffff800000107cd2:	81 7d e4 ff 0f 00 00 	cmpl   $0xfff,-0x1c(%rbp)
ffff800000107cd9:	0f 8e 59 ff ff ff    	jle    ffff800000107c38 <slab_alloc+0xc0>
ffff800000107cdf:	90                   	nop
ffff800000107ce0:	90                   	nop
ffff800000107ce1:	48 83 c4 40          	add    $0x40,%rsp
ffff800000107ce5:	5b                   	pop    %rbx
ffff800000107ce6:	41 5f                	pop    %r15
ffff800000107ce8:	5d                   	pop    %rbp
ffff800000107ce9:	c3                   	retq   

ffff800000107cea <slab_free>:
ffff800000107cea:	f3 0f 1e fa          	endbr64 
ffff800000107cee:	55                   	push   %rbp
ffff800000107cef:	48 89 e5             	mov    %rsp,%rbp
ffff800000107cf2:	41 57                	push   %r15
ffff800000107cf4:	48 83 ec 28          	sub    $0x28,%rsp
ffff800000107cf8:	f3 0f 1e fa          	endbr64 
ffff800000107cfc:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000107cf8 <slab_free+0xe>
ffff800000107d03:	49 bb d8 2b 00 00 00 	movabs $0x2bd8,%r11
ffff800000107d0a:	00 00 00 
ffff800000107d0d:	4c 01 d8             	add    %r11,%rax
ffff800000107d10:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107d14:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107d18:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff800000107d1c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000107d20:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107d24:	48 8b 52 30          	mov    0x30(%rdx),%rdx
ffff800000107d28:	48 8b 0a             	mov    (%rdx),%rcx
ffff800000107d2b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107d2f:	48 89 4a 30          	mov    %rcx,0x30(%rdx)
ffff800000107d33:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107d37:	48 89 d7             	mov    %rdx,%rdi
ffff800000107d3a:	49 89 c7             	mov    %rax,%r15
ffff800000107d3d:	48 ba f8 cc ff ff ff 	movabs $0xffffffffffffccf8,%rdx
ffff800000107d44:	ff ff ff 
ffff800000107d47:	48 01 c2             	add    %rax,%rdx
ffff800000107d4a:	ff d2                	callq  *%rdx
ffff800000107d4c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d50:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107d53:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107d56:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d5a:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107d5d:	90                   	nop
ffff800000107d5e:	48 83 c4 28          	add    $0x28,%rsp
ffff800000107d62:	41 5f                	pop    %r15
ffff800000107d64:	5d                   	pop    %rbp
ffff800000107d65:	c3                   	retq   

ffff800000107d66 <kmem_cache_alloc>:
ffff800000107d66:	f3 0f 1e fa          	endbr64 
ffff800000107d6a:	55                   	push   %rbp
ffff800000107d6b:	48 89 e5             	mov    %rsp,%rbp
ffff800000107d6e:	41 57                	push   %r15
ffff800000107d70:	53                   	push   %rbx
ffff800000107d71:	48 83 ec 20          	sub    $0x20,%rsp
ffff800000107d75:	f3 0f 1e fa          	endbr64 
ffff800000107d79:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107d75 <kmem_cache_alloc+0xf>
ffff800000107d80:	49 bb 5b 2b 00 00 00 	movabs $0x2b5b,%r11
ffff800000107d87:	00 00 00 
ffff800000107d8a:	4c 01 db             	add    %r11,%rbx
ffff800000107d8d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
ffff800000107d91:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107d95:	48 8b 00             	mov    (%rax),%rax
ffff800000107d98:	48 85 c0             	test   %rax,%rax
ffff800000107d9b:	0f 85 19 01 00 00    	jne    ffff800000107eba <kmem_cache_alloc+0x154>
ffff800000107da1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107da5:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107da8:	85 c0                	test   %eax,%eax
ffff800000107daa:	75 67                	jne    ffff800000107e13 <kmem_cache_alloc+0xad>
ffff800000107dac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107db0:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107db3:	85 c0                	test   %eax,%eax
ffff800000107db5:	75 17                	jne    ffff800000107dce <kmem_cache_alloc+0x68>
ffff800000107db7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107dbb:	48 89 c7             	mov    %rax,%rdi
ffff800000107dbe:	48 b8 a8 d2 ff ff ff 	movabs $0xffffffffffffd2a8,%rax
ffff800000107dc5:	ff ff ff 
ffff800000107dc8:	48 8d 04 03          	lea    (%rbx,%rax,1),%rax
ffff800000107dcc:	ff d0                	callq  *%rax
ffff800000107dce:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107dd2:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff800000107dd6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107dda:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107dde:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107de2:	48 8b 40 30          	mov    0x30(%rax),%rax
ffff800000107de6:	48 8b 10             	mov    (%rax),%rdx
ffff800000107de9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ded:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000107df1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107df5:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000107df8:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107dfb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107dff:	89 50 28             	mov    %edx,0x28(%rax)
ffff800000107e02:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e06:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107e09:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000107e0c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e10:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107e13:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e17:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107e1b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107e1f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e23:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107e26:	85 c0                	test   %eax,%eax
ffff800000107e28:	0f 84 80 00 00 00    	je     ffff800000107eae <kmem_cache_alloc+0x148>
ffff800000107e2e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e32:	48 8b 50 10          	mov    0x10(%rax),%rdx
ffff800000107e36:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e3a:	48 89 10             	mov    %rdx,(%rax)
ffff800000107e3d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e41:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107e45:	48 8b 10             	mov    (%rax),%rdx
ffff800000107e48:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e4c:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107e50:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e54:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107e57:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107e5a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e5e:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107e61:	eb 57                	jmp    ffff800000107eba <kmem_cache_alloc+0x154>
ffff800000107e63:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e67:	48 8b 00             	mov    (%rax),%rax
ffff800000107e6a:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107e6d:	85 c0                	test   %eax,%eax
ffff800000107e6f:	7e 32                	jle    ffff800000107ea3 <kmem_cache_alloc+0x13d>
ffff800000107e71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e75:	48 8b 10             	mov    (%rax),%rdx
ffff800000107e78:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e7c:	48 89 10             	mov    %rdx,(%rax)
ffff800000107e7f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e83:	48 8b 00             	mov    (%rax),%rax
ffff800000107e86:	48 8b 10             	mov    (%rax),%rdx
ffff800000107e89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107e8d:	48 89 10             	mov    %rdx,(%rax)
ffff800000107e90:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e94:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000107e97:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000107e9a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107e9e:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000107ea1:	eb 17                	jmp    ffff800000107eba <kmem_cache_alloc+0x154>
ffff800000107ea3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107ea7:	48 8b 00             	mov    (%rax),%rax
ffff800000107eaa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107eae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107eb2:	48 8b 00             	mov    (%rax),%rax
ffff800000107eb5:	48 85 c0             	test   %rax,%rax
ffff800000107eb8:	75 a9                	jne    ffff800000107e63 <kmem_cache_alloc+0xfd>
ffff800000107eba:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ebe:	48 8b 00             	mov    (%rax),%rax
ffff800000107ec1:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107ec5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000107ec9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ecd:	48 8b 00             	mov    (%rax),%rax
ffff800000107ed0:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107ed3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ed7:	48 8b 00             	mov    (%rax),%rax
ffff800000107eda:	83 ea 01             	sub    $0x1,%edx
ffff800000107edd:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107ee0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107ee4:	48 8b 00             	mov    (%rax),%rax
ffff800000107ee7:	8b 50 0c             	mov    0xc(%rax),%edx
ffff800000107eea:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107eee:	48 8b 00             	mov    (%rax),%rax
ffff800000107ef1:	83 ea 01             	sub    $0x1,%edx
ffff800000107ef4:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000107ef7:	8b 40 0c             	mov    0xc(%rax),%eax
ffff800000107efa:	85 c0                	test   %eax,%eax
ffff800000107efc:	75 2c                	jne    ffff800000107f2a <kmem_cache_alloc+0x1c4>
ffff800000107efe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107f02:	48 8b 00             	mov    (%rax),%rax
ffff800000107f05:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
ffff800000107f09:	48 8b 52 10          	mov    0x10(%rdx),%rdx
ffff800000107f0d:	48 89 10             	mov    %rdx,(%rax)
ffff800000107f10:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107f14:	48 8b 10             	mov    (%rax),%rdx
ffff800000107f17:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107f1b:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107f1f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107f23:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000107f2a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000107f2e:	8b 50 20             	mov    0x20(%rax),%edx
ffff800000107f31:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107f35:	48 89 c6             	mov    %rax,%rsi
ffff800000107f38:	48 b8 b0 ed ff ff ff 	movabs $0xffffffffffffedb0,%rax
ffff800000107f3f:	ff ff ff 
ffff800000107f42:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff800000107f46:	49 89 df             	mov    %rbx,%r15
ffff800000107f49:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000107f4e:	48 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rcx
ffff800000107f55:	ff ff ff 
ffff800000107f58:	48 01 d9             	add    %rbx,%rcx
ffff800000107f5b:	ff d1                	callq  *%rcx
ffff800000107f5d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000107f61:	48 83 c4 20          	add    $0x20,%rsp
ffff800000107f65:	5b                   	pop    %rbx
ffff800000107f66:	41 5f                	pop    %r15
ffff800000107f68:	5d                   	pop    %rbp
ffff800000107f69:	c3                   	retq   

ffff800000107f6a <kmem_cache_free>:
ffff800000107f6a:	f3 0f 1e fa          	endbr64 
ffff800000107f6e:	55                   	push   %rbp
ffff800000107f6f:	48 89 e5             	mov    %rsp,%rbp
ffff800000107f72:	41 57                	push   %r15
ffff800000107f74:	53                   	push   %rbx
ffff800000107f75:	48 83 ec 30          	sub    $0x30,%rsp
ffff800000107f79:	f3 0f 1e fa          	endbr64 
ffff800000107f7d:	48 8d 1d f5 ff ff ff 	lea    -0xb(%rip),%rbx        # ffff800000107f79 <kmem_cache_free+0xf>
ffff800000107f84:	49 bb 57 29 00 00 00 	movabs $0x2957,%r11
ffff800000107f8b:	00 00 00 
ffff800000107f8e:	4c 01 db             	add    %r11,%rbx
ffff800000107f91:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
ffff800000107f95:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
ffff800000107f99:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107f9d:	48 8b 00             	mov    (%rax),%rax
ffff800000107fa0:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107fa4:	0f 86 c6 00 00 00    	jbe    ffff800000108070 <kmem_cache_free+0x106>
ffff800000107faa:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fae:	48 8b 00             	mov    (%rax),%rax
ffff800000107fb1:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff800000107fb7:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000107fbb:	0f 87 af 00 00 00    	ja     ffff800000108070 <kmem_cache_free+0x106>
ffff800000107fc1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fc5:	48 8b 00             	mov    (%rax),%rax
ffff800000107fc8:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000107fcc:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff800000107fd0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107fd4:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
ffff800000107fd8:	73 73                	jae    ffff80000010804d <kmem_cache_free+0xe3>
ffff800000107fda:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000107fde:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000107fe2:	48 89 10             	mov    %rdx,(%rax)
ffff800000107fe5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000107fe9:	48 8b 00             	mov    (%rax),%rax
ffff800000107fec:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000107ff0:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff800000107ff4:	eb 5e                	jmp    ffff800000108054 <kmem_cache_free+0xea>
ffff800000107ff6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000107ffa:	48 8b 00             	mov    (%rax),%rax
ffff800000107ffd:	48 85 c0             	test   %rax,%rax
ffff800000108000:	75 18                	jne    ffff80000010801a <kmem_cache_free+0xb0>
ffff800000108002:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108006:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff80000010800a:	48 89 10             	mov    %rdx,(%rax)
ffff80000010800d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000108011:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff800000108018:	eb 3a                	jmp    ffff800000108054 <kmem_cache_free+0xea>
ffff80000010801a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010801e:	48 8b 00             	mov    (%rax),%rax
ffff800000108021:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000108025:	73 1b                	jae    ffff800000108042 <kmem_cache_free+0xd8>
ffff800000108027:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010802b:	48 8b 10             	mov    (%rax),%rdx
ffff80000010802e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000108032:	48 89 10             	mov    %rdx,(%rax)
ffff800000108035:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108039:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff80000010803d:	48 89 10             	mov    %rdx,(%rax)
ffff800000108040:	eb 12                	jmp    ffff800000108054 <kmem_cache_free+0xea>
ffff800000108042:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108046:	48 8b 00             	mov    (%rax),%rax
ffff800000108049:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
ffff80000010804d:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff800000108052:	75 a2                	jne    ffff800000107ff6 <kmem_cache_free+0x8c>
ffff800000108054:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108058:	48 8b 00             	mov    (%rax),%rax
ffff80000010805b:	8b 50 0c             	mov    0xc(%rax),%edx
ffff80000010805e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108062:	48 8b 00             	mov    (%rax),%rax
ffff800000108065:	83 c2 01             	add    $0x1,%edx
ffff800000108068:	89 50 0c             	mov    %edx,0xc(%rax)
ffff80000010806b:	e9 bf 01 00 00       	jmpq   ffff80000010822f <kmem_cache_free+0x2c5>
ffff800000108070:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108074:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108078:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff80000010807c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108080:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000108084:	e9 98 01 00 00       	jmpq   ffff800000108221 <kmem_cache_free+0x2b7>
ffff800000108089:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010808d:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
ffff800000108091:	0f 86 77 01 00 00    	jbe    ffff80000010820e <kmem_cache_free+0x2a4>
ffff800000108097:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010809b:	48 05 00 10 00 00    	add    $0x1000,%rax
ffff8000001080a1:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff8000001080a5:	0f 87 63 01 00 00    	ja     ffff80000010820e <kmem_cache_free+0x2a4>
ffff8000001080ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080af:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff8000001080b3:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff8000001080b7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001080bb:	48 3b 45 d0          	cmp    -0x30(%rbp),%rax
ffff8000001080bf:	73 70                	jae    ffff800000108131 <kmem_cache_free+0x1c7>
ffff8000001080c1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001080c5:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
ffff8000001080c9:	48 89 10             	mov    %rdx,(%rax)
ffff8000001080cc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001080d0:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001080d4:	48 89 50 10          	mov    %rdx,0x10(%rax)
ffff8000001080d8:	eb 5e                	jmp    ffff800000108138 <kmem_cache_free+0x1ce>
ffff8000001080da:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001080de:	48 8b 00             	mov    (%rax),%rax
ffff8000001080e1:	48 85 c0             	test   %rax,%rax
ffff8000001080e4:	75 18                	jne    ffff8000001080fe <kmem_cache_free+0x194>
ffff8000001080e6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff8000001080ea:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff8000001080ee:	48 89 10             	mov    %rdx,(%rax)
ffff8000001080f1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff8000001080f5:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
ffff8000001080fc:	eb 3a                	jmp    ffff800000108138 <kmem_cache_free+0x1ce>
ffff8000001080fe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff800000108102:	48 8b 00             	mov    (%rax),%rax
ffff800000108105:	48 39 45 c0          	cmp    %rax,-0x40(%rbp)
ffff800000108109:	73 1b                	jae    ffff800000108126 <kmem_cache_free+0x1bc>
ffff80000010810b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010810f:	48 8b 10             	mov    (%rax),%rdx
ffff800000108112:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff800000108116:	48 89 10             	mov    %rdx,(%rax)
ffff800000108119:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010811d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
ffff800000108121:	48 89 10             	mov    %rdx,(%rax)
ffff800000108124:	eb 12                	jmp    ffff800000108138 <kmem_cache_free+0x1ce>
ffff800000108126:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
ffff80000010812a:	48 8b 00             	mov    (%rax),%rax
ffff80000010812d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
ffff800000108131:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
ffff800000108136:	75 a2                	jne    ffff8000001080da <kmem_cache_free+0x170>
ffff800000108138:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010813c:	8b 40 0c             	mov    0xc(%rax),%eax
ffff80000010813f:	85 c0                	test   %eax,%eax
ffff800000108141:	75 11                	jne    ffff800000108154 <kmem_cache_free+0x1ea>
ffff800000108143:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108147:	8b 40 08             	mov    0x8(%rax),%eax
ffff80000010814a:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010814d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108151:	89 50 08             	mov    %edx,0x8(%rax)
ffff800000108154:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108158:	8b 40 0c             	mov    0xc(%rax),%eax
ffff80000010815b:	8d 50 01             	lea    0x1(%rax),%edx
ffff80000010815e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108162:	89 50 0c             	mov    %edx,0xc(%rax)
ffff800000108165:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108169:	8b 50 0c             	mov    0xc(%rax),%edx
ffff80000010816c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108170:	8b 40 08             	mov    0x8(%rax),%eax
ffff800000108173:	39 c2                	cmp    %eax,%edx
ffff800000108175:	0f 85 b3 00 00 00    	jne    ffff80000010822e <kmem_cache_free+0x2c4>
ffff80000010817b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff80000010817f:	48 8b 40 10          	mov    0x10(%rax),%rax
ffff800000108183:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
ffff800000108187:	75 11                	jne    ffff80000010819a <kmem_cache_free+0x230>
ffff800000108189:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010818d:	48 8b 10             	mov    (%rax),%rdx
ffff800000108190:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108194:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff800000108198:	eb 0e                	jmp    ffff8000001081a8 <kmem_cache_free+0x23e>
ffff80000010819a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010819e:	48 8b 10             	mov    (%rax),%rdx
ffff8000001081a1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001081a5:	48 89 10             	mov    %rdx,(%rax)
ffff8000001081a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081ac:	8b 40 08             	mov    0x8(%rax),%eax
ffff8000001081af:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff8000001081b2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081b6:	89 50 08             	mov    %edx,0x8(%rax)
ffff8000001081b9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081bd:	8b 40 28             	mov    0x28(%rax),%eax
ffff8000001081c0:	83 f8 10             	cmp    $0x10,%eax
ffff8000001081c3:	75 1b                	jne    ffff8000001081e0 <kmem_cache_free+0x276>
ffff8000001081c5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001081c9:	48 89 c7             	mov    %rax,%rdi
ffff8000001081cc:	49 89 df             	mov    %rbx,%r15
ffff8000001081cf:	48 b8 f8 cc ff ff ff 	movabs $0xffffffffffffccf8,%rax
ffff8000001081d6:	ff ff ff 
ffff8000001081d9:	48 01 d8             	add    %rbx,%rax
ffff8000001081dc:	ff d0                	callq  *%rax
ffff8000001081de:	eb 4e                	jmp    ffff80000010822e <kmem_cache_free+0x2c4>
ffff8000001081e0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081e4:	48 8b 50 30          	mov    0x30(%rax),%rdx
ffff8000001081e8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff8000001081ec:	48 89 10             	mov    %rdx,(%rax)
ffff8000001081ef:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081f3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001081f7:	48 89 50 30          	mov    %rdx,0x30(%rax)
ffff8000001081fb:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff8000001081ff:	8b 40 28             	mov    0x28(%rax),%eax
ffff800000108202:	8d 50 01             	lea    0x1(%rax),%edx
ffff800000108205:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108209:	89 50 28             	mov    %edx,0x28(%rax)
ffff80000010820c:	eb 20                	jmp    ffff80000010822e <kmem_cache_free+0x2c4>
ffff80000010820e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108212:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
ffff800000108216:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010821a:	48 8b 00             	mov    (%rax),%rax
ffff80000010821d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000108221:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
ffff800000108226:	0f 85 5d fe ff ff    	jne    ffff800000108089 <kmem_cache_free+0x11f>
ffff80000010822c:	eb 01                	jmp    ffff80000010822f <kmem_cache_free+0x2c5>
ffff80000010822e:	90                   	nop
ffff80000010822f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
ffff800000108233:	8b 50 20             	mov    0x20(%rax),%edx
ffff800000108236:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
ffff80000010823a:	48 89 c6             	mov    %rax,%rsi
ffff80000010823d:	48 b8 e0 ed ff ff ff 	movabs $0xffffffffffffede0,%rax
ffff800000108244:	ff ff ff 
ffff800000108247:	48 8d 3c 03          	lea    (%rbx,%rax,1),%rdi
ffff80000010824b:	49 89 df             	mov    %rbx,%r15
ffff80000010824e:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108253:	48 b9 ab a0 ff ff ff 	movabs $0xffffffffffffa0ab,%rcx
ffff80000010825a:	ff ff ff 
ffff80000010825d:	48 01 d9             	add    %rbx,%rcx
ffff800000108260:	ff d1                	callq  *%rcx
ffff800000108262:	90                   	nop
ffff800000108263:	48 83 c4 30          	add    $0x30,%rsp
ffff800000108267:	5b                   	pop    %rbx
ffff800000108268:	41 5f                	pop    %r15
ffff80000010826a:	5d                   	pop    %rbp
ffff80000010826b:	c3                   	retq   

ffff80000010826c <memset>:
ffff80000010826c:	f3 0f 1e fa          	endbr64 
ffff800000108270:	55                   	push   %rbp
ffff800000108271:	48 89 e5             	mov    %rsp,%rbp
ffff800000108274:	f3 0f 1e fa          	endbr64 
ffff800000108278:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000108274 <memset+0x8>
ffff80000010827f:	49 bb 5c 26 00 00 00 	movabs $0x265c,%r11
ffff800000108286:	00 00 00 
ffff800000108289:	4c 01 d8             	add    %r11,%rax
ffff80000010828c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000108290:	89 75 e4             	mov    %esi,-0x1c(%rbp)
ffff800000108293:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000108297:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010829b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff80000010829f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff8000001082a6:	eb 16                	jmp    ffff8000001082be <memset+0x52>
ffff8000001082a8:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001082ab:	48 63 d0             	movslq %eax,%rdx
ffff8000001082ae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001082b2:	48 01 d0             	add    %rdx,%rax
ffff8000001082b5:	8b 55 e4             	mov    -0x1c(%rbp),%edx
ffff8000001082b8:	88 10                	mov    %dl,(%rax)
ffff8000001082ba:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff8000001082be:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff8000001082c1:	48 98                	cltq   
ffff8000001082c3:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
ffff8000001082c7:	77 df                	ja     ffff8000001082a8 <memset+0x3c>
ffff8000001082c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001082cd:	5d                   	pop    %rbp
ffff8000001082ce:	c3                   	retq   

ffff8000001082cf <memcmp>:
ffff8000001082cf:	f3 0f 1e fa          	endbr64 
ffff8000001082d3:	55                   	push   %rbp
ffff8000001082d4:	48 89 e5             	mov    %rsp,%rbp
ffff8000001082d7:	f3 0f 1e fa          	endbr64 
ffff8000001082db:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff8000001082d7 <memcmp+0x8>
ffff8000001082e2:	49 bb f9 25 00 00 00 	movabs $0x25f9,%r11
ffff8000001082e9:	00 00 00 
ffff8000001082ec:	4c 01 d8             	add    %r11,%rax
ffff8000001082ef:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001082f3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff8000001082f7:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff8000001082fb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001082ff:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff800000108303:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff800000108307:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff80000010830b:	eb 36                	jmp    ffff800000108343 <memcmp+0x74>
ffff80000010830d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108311:	0f b6 10             	movzbl (%rax),%edx
ffff800000108314:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000108318:	0f b6 00             	movzbl (%rax),%eax
ffff80000010831b:	38 c2                	cmp    %al,%dl
ffff80000010831d:	74 1a                	je     ffff800000108339 <memcmp+0x6a>
ffff80000010831f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108323:	0f b6 00             	movzbl (%rax),%eax
ffff800000108326:	0f be d0             	movsbl %al,%edx
ffff800000108329:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010832d:	0f b6 00             	movzbl (%rax),%eax
ffff800000108330:	0f be c0             	movsbl %al,%eax
ffff800000108333:	29 c2                	sub    %eax,%edx
ffff800000108335:	89 d0                	mov    %edx,%eax
ffff800000108337:	eb 20                	jmp    ffff800000108359 <memcmp+0x8a>
ffff800000108339:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff80000010833e:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff800000108343:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff800000108347:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff80000010834b:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff80000010834f:	48 85 c0             	test   %rax,%rax
ffff800000108352:	75 b9                	jne    ffff80000010830d <memcmp+0x3e>
ffff800000108354:	b8 00 00 00 00       	mov    $0x0,%eax
ffff800000108359:	5d                   	pop    %rbp
ffff80000010835a:	c3                   	retq   

ffff80000010835b <memmove>:
ffff80000010835b:	f3 0f 1e fa          	endbr64 
ffff80000010835f:	55                   	push   %rbp
ffff800000108360:	48 89 e5             	mov    %rsp,%rbp
ffff800000108363:	f3 0f 1e fa          	endbr64 
ffff800000108367:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000108363 <memmove+0x8>
ffff80000010836e:	49 bb 6d 25 00 00 00 	movabs $0x256d,%r11
ffff800000108375:	00 00 00 
ffff800000108378:	4c 01 d8             	add    %r11,%rax
ffff80000010837b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff80000010837f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000108383:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000108387:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
ffff80000010838c:	75 09                	jne    ffff800000108397 <memmove+0x3c>
ffff80000010838e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108392:	e9 99 00 00 00       	jmpq   ffff800000108430 <memmove+0xd5>
ffff800000108397:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
ffff80000010839b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010839f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001083a3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
ffff8000001083a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001083ab:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
ffff8000001083af:	73 6a                	jae    ffff80000010841b <memmove+0xc0>
ffff8000001083b1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff8000001083b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001083b9:	48 01 d0             	add    %rdx,%rax
ffff8000001083bc:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
ffff8000001083c0:	73 59                	jae    ffff80000010841b <memmove+0xc0>
ffff8000001083c2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001083c6:	48 01 45 f8          	add    %rax,-0x8(%rbp)
ffff8000001083ca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001083ce:	48 01 45 f0          	add    %rax,-0x10(%rbp)
ffff8000001083d2:	eb 17                	jmp    ffff8000001083eb <memmove+0x90>
ffff8000001083d4:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
ffff8000001083d9:	48 83 6d f0 01       	subq   $0x1,-0x10(%rbp)
ffff8000001083de:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001083e2:	0f b6 10             	movzbl (%rax),%edx
ffff8000001083e5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001083e9:	88 10                	mov    %dl,(%rax)
ffff8000001083eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff8000001083ef:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff8000001083f3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff8000001083f7:	48 85 c0             	test   %rax,%rax
ffff8000001083fa:	75 d8                	jne    ffff8000001083d4 <memmove+0x79>
ffff8000001083fc:	eb 2e                	jmp    ffff80000010842c <memmove+0xd1>
ffff8000001083fe:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
ffff800000108402:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000108406:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010840a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff80000010840e:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000108412:	48 89 4d f0          	mov    %rcx,-0x10(%rbp)
ffff800000108416:	0f b6 12             	movzbl (%rdx),%edx
ffff800000108419:	88 10                	mov    %dl,(%rax)
ffff80000010841b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
ffff80000010841f:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
ffff800000108423:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
ffff800000108427:	48 85 c0             	test   %rax,%rax
ffff80000010842a:	75 d2                	jne    ffff8000001083fe <memmove+0xa3>
ffff80000010842c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108430:	5d                   	pop    %rbp
ffff800000108431:	c3                   	retq   

ffff800000108432 <memcpy>:
ffff800000108432:	f3 0f 1e fa          	endbr64 
ffff800000108436:	55                   	push   %rbp
ffff800000108437:	48 89 e5             	mov    %rsp,%rbp
ffff80000010843a:	48 83 ec 18          	sub    $0x18,%rsp
ffff80000010843e:	f3 0f 1e fa          	endbr64 
ffff800000108442:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010843e <memcpy+0xc>
ffff800000108449:	49 bb 92 24 00 00 00 	movabs $0x2492,%r11
ffff800000108450:	00 00 00 
ffff800000108453:	4c 01 d8             	add    %r11,%rax
ffff800000108456:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff80000010845a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff80000010845e:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff800000108462:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
ffff800000108466:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
ffff80000010846a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
ffff80000010846e:	48 89 cf             	mov    %rcx,%rdi
ffff800000108471:	48 b9 8b da ff ff ff 	movabs $0xffffffffffffda8b,%rcx
ffff800000108478:	ff ff ff 
ffff80000010847b:	48 8d 04 08          	lea    (%rax,%rcx,1),%rax
ffff80000010847f:	ff d0                	callq  *%rax
ffff800000108481:	c9                   	leaveq 
ffff800000108482:	c3                   	retq   

ffff800000108483 <strncmp>:
ffff800000108483:	f3 0f 1e fa          	endbr64 
ffff800000108487:	55                   	push   %rbp
ffff800000108488:	48 89 e5             	mov    %rsp,%rbp
ffff80000010848b:	f3 0f 1e fa          	endbr64 
ffff80000010848f:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010848b <strncmp+0x8>
ffff800000108496:	49 bb 45 24 00 00 00 	movabs $0x2445,%r11
ffff80000010849d:	00 00 00 
ffff8000001084a0:	4c 01 d8             	add    %r11,%rax
ffff8000001084a3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
ffff8000001084a7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
ffff8000001084ab:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff8000001084af:	eb 0f                	jmp    ffff8000001084c0 <strncmp+0x3d>
ffff8000001084b1:	48 83 6d e8 01       	subq   $0x1,-0x18(%rbp)
ffff8000001084b6:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
ffff8000001084bb:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
ffff8000001084c0:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001084c5:	74 1d                	je     ffff8000001084e4 <strncmp+0x61>
ffff8000001084c7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001084cb:	0f b6 00             	movzbl (%rax),%eax
ffff8000001084ce:	84 c0                	test   %al,%al
ffff8000001084d0:	74 12                	je     ffff8000001084e4 <strncmp+0x61>
ffff8000001084d2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001084d6:	0f b6 10             	movzbl (%rax),%edx
ffff8000001084d9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff8000001084dd:	0f b6 00             	movzbl (%rax),%eax
ffff8000001084e0:	38 c2                	cmp    %al,%dl
ffff8000001084e2:	74 cd                	je     ffff8000001084b1 <strncmp+0x2e>
ffff8000001084e4:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
ffff8000001084e9:	75 07                	jne    ffff8000001084f2 <strncmp+0x6f>
ffff8000001084eb:	b8 00 00 00 00       	mov    $0x0,%eax
ffff8000001084f0:	eb 18                	jmp    ffff80000010850a <strncmp+0x87>
ffff8000001084f2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001084f6:	0f b6 00             	movzbl (%rax),%eax
ffff8000001084f9:	0f be d0             	movsbl %al,%edx
ffff8000001084fc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
ffff800000108500:	0f b6 00             	movzbl (%rax),%eax
ffff800000108503:	0f be c0             	movsbl %al,%eax
ffff800000108506:	29 c2                	sub    %eax,%edx
ffff800000108508:	89 d0                	mov    %edx,%eax
ffff80000010850a:	5d                   	pop    %rbp
ffff80000010850b:	c3                   	retq   

ffff80000010850c <strncpy>:
ffff80000010850c:	f3 0f 1e fa          	endbr64 
ffff800000108510:	55                   	push   %rbp
ffff800000108511:	48 89 e5             	mov    %rsp,%rbp
ffff800000108514:	f3 0f 1e fa          	endbr64 
ffff800000108518:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000108514 <strncpy+0x8>
ffff80000010851f:	49 bb bc 23 00 00 00 	movabs $0x23bc,%r11
ffff800000108526:	00 00 00 
ffff800000108529:	4c 01 d8             	add    %r11,%rax
ffff80000010852c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000108530:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff800000108534:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000108537:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010853b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff80000010853f:	90                   	nop
ffff800000108540:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000108543:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000108546:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff800000108549:	85 c0                	test   %eax,%eax
ffff80000010854b:	7e 35                	jle    ffff800000108582 <strncpy+0x76>
ffff80000010854d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff800000108551:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff800000108555:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff800000108559:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010855d:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff800000108561:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff800000108565:	0f b6 12             	movzbl (%rdx),%edx
ffff800000108568:	88 10                	mov    %dl,(%rax)
ffff80000010856a:	0f b6 00             	movzbl (%rax),%eax
ffff80000010856d:	84 c0                	test   %al,%al
ffff80000010856f:	75 cf                	jne    ffff800000108540 <strncpy+0x34>
ffff800000108571:	eb 0f                	jmp    ffff800000108582 <strncpy+0x76>
ffff800000108573:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108577:	48 8d 50 01          	lea    0x1(%rax),%rdx
ffff80000010857b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
ffff80000010857f:	c6 00 00             	movb   $0x0,(%rax)
ffff800000108582:	8b 45 dc             	mov    -0x24(%rbp),%eax
ffff800000108585:	8d 50 ff             	lea    -0x1(%rax),%edx
ffff800000108588:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff80000010858b:	85 c0                	test   %eax,%eax
ffff80000010858d:	7f e4                	jg     ffff800000108573 <strncpy+0x67>
ffff80000010858f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff800000108593:	5d                   	pop    %rbp
ffff800000108594:	c3                   	retq   

ffff800000108595 <safestrcpy>:
ffff800000108595:	f3 0f 1e fa          	endbr64 
ffff800000108599:	55                   	push   %rbp
ffff80000010859a:	48 89 e5             	mov    %rsp,%rbp
ffff80000010859d:	f3 0f 1e fa          	endbr64 
ffff8000001085a1:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff80000010859d <safestrcpy+0x8>
ffff8000001085a8:	49 bb 33 23 00 00 00 	movabs $0x2333,%r11
ffff8000001085af:	00 00 00 
ffff8000001085b2:	4c 01 d8             	add    %r11,%rax
ffff8000001085b5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff8000001085b9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
ffff8000001085bd:	89 55 dc             	mov    %edx,-0x24(%rbp)
ffff8000001085c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001085c4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
ffff8000001085c8:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff8000001085cc:	7f 06                	jg     ffff8000001085d4 <safestrcpy+0x3f>
ffff8000001085ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff8000001085d2:	eb 39                	jmp    ffff80000010860d <safestrcpy+0x78>
ffff8000001085d4:	83 6d dc 01          	subl   $0x1,-0x24(%rbp)
ffff8000001085d8:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
ffff8000001085dc:	7e 24                	jle    ffff800000108602 <safestrcpy+0x6d>
ffff8000001085de:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
ffff8000001085e2:	48 8d 42 01          	lea    0x1(%rdx),%rax
ffff8000001085e6:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
ffff8000001085ea:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff8000001085ee:	48 8d 48 01          	lea    0x1(%rax),%rcx
ffff8000001085f2:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
ffff8000001085f6:	0f b6 12             	movzbl (%rdx),%edx
ffff8000001085f9:	88 10                	mov    %dl,(%rax)
ffff8000001085fb:	0f b6 00             	movzbl (%rax),%eax
ffff8000001085fe:	84 c0                	test   %al,%al
ffff800000108600:	75 d2                	jne    ffff8000001085d4 <safestrcpy+0x3f>
ffff800000108602:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff800000108606:	c6 00 00             	movb   $0x0,(%rax)
ffff800000108609:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
ffff80000010860d:	5d                   	pop    %rbp
ffff80000010860e:	c3                   	retq   

ffff80000010860f <strlen>:
ffff80000010860f:	f3 0f 1e fa          	endbr64 
ffff800000108613:	55                   	push   %rbp
ffff800000108614:	48 89 e5             	mov    %rsp,%rbp
ffff800000108617:	f3 0f 1e fa          	endbr64 
ffff80000010861b:	48 8d 05 f5 ff ff ff 	lea    -0xb(%rip),%rax        # ffff800000108617 <strlen+0x8>
ffff800000108622:	49 bb b9 22 00 00 00 	movabs $0x22b9,%r11
ffff800000108629:	00 00 00 
ffff80000010862c:	4c 01 d8             	add    %r11,%rax
ffff80000010862f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
ffff800000108633:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
ffff80000010863a:	eb 04                	jmp    ffff800000108640 <strlen+0x31>
ffff80000010863c:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
ffff800000108640:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000108643:	48 63 d0             	movslq %eax,%rdx
ffff800000108646:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
ffff80000010864a:	48 01 d0             	add    %rdx,%rax
ffff80000010864d:	0f b6 00             	movzbl (%rax),%eax
ffff800000108650:	84 c0                	test   %al,%al
ffff800000108652:	75 e8                	jne    ffff80000010863c <strlen+0x2d>
ffff800000108654:	8b 45 fc             	mov    -0x4(%rbp),%eax
ffff800000108657:	5d                   	pop    %rbp
ffff800000108658:	c3                   	retq   

Disassembly of section .eh_frame:

ffff800000108660 <.eh_frame>:
ffff800000108660:	14 00                	adc    $0x0,%al
ffff800000108662:	00 00                	add    %al,(%rax)
ffff800000108664:	00 00                	add    %al,(%rax)
ffff800000108666:	00 00                	add    %al,(%rax)
ffff800000108668:	01 7a 52             	add    %edi,0x52(%rdx)
ffff80000010866b:	00 01                	add    %al,(%rcx)
ffff80000010866d:	78 10                	js     ffff80000010867f <_etext+0x26>
ffff80000010866f:	01 1b                	add    %ebx,(%rbx)
ffff800000108671:	0c 07                	or     $0x7,%al
ffff800000108673:	08 90 01 00 00 1c    	or     %dl,0x1c000001(%rax)
ffff800000108679:	00 00                	add    %al,(%rax)
ffff80000010867b:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff80000010867e:	00 00                	add    %al,(%rax)
ffff800000108680:	ff                   	(bad)  
ffff800000108681:	bb ff ff a2 00       	mov    $0xa2ffff,%ebx
ffff800000108686:	00 00                	add    %al,(%rax)
ffff800000108688:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010868b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108691:	43 8f 03             	rex.XB popq (%r11)
ffff800000108694:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108698:	1c 00                	sbb    $0x0,%al
ffff80000010869a:	00 00                	add    %al,(%rax)
ffff80000010869c:	3c 00                	cmp    $0x0,%al
ffff80000010869e:	00 00                	add    %al,(%rax)
ffff8000001086a0:	81 bc ff ff 0a 01 00 	cmpl   $0xe450000,0x10aff(%rdi,%rdi,8)
ffff8000001086a7:	00 00 45 0e 
ffff8000001086ab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001086b1:	03 01                	add    (%rcx),%eax
ffff8000001086b3:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001086b6:	08 00                	or     %al,(%rax)
ffff8000001086b8:	20 00                	and    %al,(%rax)
ffff8000001086ba:	00 00                	add    %al,(%rax)
ffff8000001086bc:	5c                   	pop    %rsp
ffff8000001086bd:	00 00                	add    %al,(%rax)
ffff8000001086bf:	00 6b bd             	add    %ch,-0x43(%rbx)
ffff8000001086c2:	ff                   	(bad)  
ffff8000001086c3:	ff 50 05             	callq  *0x5(%rax)
ffff8000001086c6:	00 00                	add    %al,(%rax)
ffff8000001086c8:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001086cb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001086d1:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff8000001086d5:	42 05 0c 07 08 00    	rex.X add $0x8070c,%eax
ffff8000001086db:	00 20                	add    %ah,(%rax)
ffff8000001086dd:	00 00                	add    %al,(%rax)
ffff8000001086df:	00 80 00 00 00 97    	add    %al,-0x69000000(%rax)
ffff8000001086e5:	c2 ff ff             	retq   $0xffff
ffff8000001086e8:	2a 01                	sub    (%rcx),%al
ffff8000001086ea:	00 00                	add    %al,(%rax)
ffff8000001086ec:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001086ef:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001086f5:	4a 8f 03             	rex.WX popq (%rbx)
ffff8000001086f8:	83 04 03 17          	addl   $0x17,(%rbx,%rax,1)
ffff8000001086fc:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001086ff:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff800000108702:	00 00                	add    %al,(%rax)
ffff800000108704:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff800000108705:	00 00                	add    %al,(%rax)
ffff800000108707:	00 9d c3 ff ff 8d    	add    %bl,-0x7200003d(%rbp)
ffff80000010870d:	00 00                	add    %al,(%rax)
ffff80000010870f:	00 00                	add    %al,(%rax)
ffff800000108711:	45 0e                	rex.RB (bad) 
ffff800000108713:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108719:	45 83 03 00          	rex.RB addl $0x0,(%r11)
ffff80000010871d:	00 00                	add    %al,(%rax)
ffff80000010871f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108722:	00 00                	add    %al,(%rax)
ffff800000108724:	c4                   	(bad)  
ffff800000108725:	00 00                	add    %al,(%rax)
ffff800000108727:	00 0a                	add    %cl,(%rdx)
ffff800000108729:	c4                   	(bad)  
ffff80000010872a:	ff                   	(bad)  
ffff80000010872b:	ff cb                	dec    %ebx
ffff80000010872d:	01 00                	add    %eax,(%rax)
ffff80000010872f:	00 00                	add    %al,(%rax)
ffff800000108731:	45 0e                	rex.RB (bad) 
ffff800000108733:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108739:	03 c2                	add    %edx,%eax
ffff80000010873b:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff80000010873e:	08 00                	or     %al,(%rax)
ffff800000108740:	18 00                	sbb    %al,(%rax)
ffff800000108742:	00 00                	add    %al,(%rax)
ffff800000108744:	e4 00                	in     $0x0,%al
ffff800000108746:	00 00                	add    %al,(%rax)
ffff800000108748:	b5 c5                	mov    $0xc5,%ch
ffff80000010874a:	ff                   	(bad)  
ffff80000010874b:	ff 4e 00             	decl   0x0(%rsi)
ffff80000010874e:	00 00                	add    %al,(%rax)
ffff800000108750:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108753:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108759:	46 8f 03             	rex.RX popq (%rbx)
ffff80000010875c:	20 00                	and    %al,(%rax)
ffff80000010875e:	00 00                	add    %al,(%rax)
ffff800000108760:	00 01                	add    %al,(%rcx)
ffff800000108762:	00 00                	add    %al,(%rax)
ffff800000108764:	e7 c5                	out    %eax,$0xc5
ffff800000108766:	ff                   	(bad)  
ffff800000108767:	ff 6f 00             	ljmp   *0x0(%rdi)
ffff80000010876a:	00 00                	add    %al,(%rax)
ffff80000010876c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010876f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108775:	49 8f 03             	rex.WB popq (%r11)
ffff800000108778:	02 5d 0c             	add    0xc(%rbp),%bl
ffff80000010877b:	07                   	(bad)  
ffff80000010877c:	08 00                	or     %al,(%rax)
ffff80000010877e:	00 00                	add    %al,(%rax)
ffff800000108780:	18 00                	sbb    %al,(%rax)
ffff800000108782:	00 00                	add    %al,(%rax)
ffff800000108784:	24 01                	and    $0x1,%al
ffff800000108786:	00 00                	add    %al,(%rax)
ffff800000108788:	32 c6                	xor    %dh,%al
ffff80000010878a:	ff                   	(bad)  
ffff80000010878b:	ff 58 00             	lcall  *0x0(%rax)
ffff80000010878e:	00 00                	add    %al,(%rax)
ffff800000108790:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108793:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108799:	46 8f 03             	rex.RX popq (%rbx)
ffff80000010879c:	20 00                	and    %al,(%rax)
ffff80000010879e:	00 00                	add    %al,(%rax)
ffff8000001087a0:	40 01 00             	rex add %eax,(%rax)
ffff8000001087a3:	00 6e c6             	add    %ch,-0x3a(%rsi)
ffff8000001087a6:	ff                   	(bad)  
ffff8000001087a7:	ff 8b 01 00 00 00    	decl   0x1(%rbx)
ffff8000001087ad:	45 0e                	rex.RB (bad) 
ffff8000001087af:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001087b5:	47 8f 03             	rex.RXB popq (%r11)
ffff8000001087b8:	83 04 03 7b          	addl   $0x7b,(%rbx,%rax,1)
ffff8000001087bc:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff8000001087bf:	08 20                	or     %ah,(%rax)
ffff8000001087c1:	00 00                	add    %al,(%rax)
ffff8000001087c3:	00 64 01 00          	add    %ah,0x0(%rcx,%rax,1)
ffff8000001087c7:	00 05 c8 ff ff df    	add    %al,-0x20000038(%rip)        # ffff7fffe0108795 <OLDSS+0xffff7fffe01086dd>
ffff8000001087cd:	00 00                	add    %al,(%rax)
ffff8000001087cf:	00 00                	add    %al,(%rax)
ffff8000001087d1:	45 0e                	rex.RB (bad) 
ffff8000001087d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001087d9:	4a 8f 03             	rex.WX popq (%rbx)
ffff8000001087dc:	83 04 02 cc          	addl   $0xffffffcc,(%rdx,%rax,1)
ffff8000001087e0:	0c 07                	or     $0x7,%al
ffff8000001087e2:	08 00                	or     %al,(%rax)
ffff8000001087e4:	1c 00                	sbb    $0x0,%al
ffff8000001087e6:	00 00                	add    %al,(%rax)
ffff8000001087e8:	88 01                	mov    %al,(%rcx)
ffff8000001087ea:	00 00                	add    %al,(%rax)
ffff8000001087ec:	c0 c8 ff             	ror    $0xff,%al
ffff8000001087ef:	ff 23                	jmpq   *(%rbx)
ffff8000001087f1:	00 00                	add    %al,(%rax)
ffff8000001087f3:	00 00                	add    %al,(%rax)
ffff8000001087f5:	45 0e                	rex.RB (bad) 
ffff8000001087f7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001087fd:	5a                   	pop    %rdx
ffff8000001087fe:	0c 07                	or     $0x7,%al
ffff800000108800:	08 00                	or     %al,(%rax)
ffff800000108802:	00 00                	add    %al,(%rax)
ffff800000108804:	1c 00                	sbb    $0x0,%al
ffff800000108806:	00 00                	add    %al,(%rax)
ffff800000108808:	a8 01                	test   $0x1,%al
ffff80000010880a:	00 00                	add    %al,(%rax)
ffff80000010880c:	c3                   	retq   
ffff80000010880d:	c8 ff ff 23          	enterq $0xffff,$0x23
ffff800000108811:	00 00                	add    %al,(%rax)
ffff800000108813:	00 00                	add    %al,(%rax)
ffff800000108815:	45 0e                	rex.RB (bad) 
ffff800000108817:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010881d:	5a                   	pop    %rdx
ffff80000010881e:	0c 07                	or     $0x7,%al
ffff800000108820:	08 00                	or     %al,(%rax)
ffff800000108822:	00 00                	add    %al,(%rax)
ffff800000108824:	20 00                	and    %al,(%rax)
ffff800000108826:	00 00                	add    %al,(%rax)
ffff800000108828:	c8 01 00 00          	enterq $0x1,$0x0
ffff80000010882c:	c6                   	(bad)  
ffff80000010882d:	c8 ff ff dd          	enterq $0xffff,$0xdd
ffff800000108831:	00 00                	add    %al,(%rax)
ffff800000108833:	00 00                	add    %al,(%rax)
ffff800000108835:	45 0e                	rex.RB (bad) 
ffff800000108837:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010883d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108840:	83 04 02 cd          	addl   $0xffffffcd,(%rdx,%rax,1)
ffff800000108844:	0c 07                	or     $0x7,%al
ffff800000108846:	08 00                	or     %al,(%rax)
ffff800000108848:	24 00                	and    $0x0,%al
ffff80000010884a:	00 00                	add    %al,(%rax)
ffff80000010884c:	ec                   	in     (%dx),%al
ffff80000010884d:	01 00                	add    %eax,(%rax)
ffff80000010884f:	00 7f c9             	add    %bh,-0x37(%rdi)
ffff800000108852:	ff                   	(bad)  
ffff800000108853:	ff 54 02 00          	callq  *0x0(%rdx,%rax,1)
ffff800000108857:	00 00                	add    %al,(%rax)
ffff800000108859:	45 0e                	rex.RB (bad) 
ffff80000010885b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108861:	4a 8f 03             	rex.WX popq (%rbx)
ffff800000108864:	83 04 03 41          	addl   $0x41,(%rbx,%rax,1)
ffff800000108868:	02 0c 07             	add    (%rdi,%rax,1),%cl
ffff80000010886b:	08 00                	or     %al,(%rax)
ffff80000010886d:	00 00                	add    %al,(%rax)
ffff80000010886f:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108872:	00 00                	add    %al,(%rax)
ffff800000108874:	14 02                	adc    $0x2,%al
ffff800000108876:	00 00                	add    %al,(%rax)
ffff800000108878:	ab                   	stos   %eax,%es:(%rdi)
ffff800000108879:	cb                   	lret   
ffff80000010887a:	ff                   	(bad)  
ffff80000010887b:	ff 34 03             	pushq  (%rbx,%rax,1)
ffff80000010887e:	00 00                	add    %al,(%rax)
ffff800000108880:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108883:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108889:	03 2b                	add    (%rbx),%ebp
ffff80000010888b:	03 0c 07             	add    (%rdi,%rax,1),%ecx
ffff80000010888e:	08 00                	or     %al,(%rax)
ffff800000108890:	20 00                	and    %al,(%rax)
ffff800000108892:	00 00                	add    %al,(%rax)
ffff800000108894:	34 02                	xor    $0x2,%al
ffff800000108896:	00 00                	add    %al,(%rax)
ffff800000108898:	bf ce ff ff b0       	mov    $0xb0ffffce,%edi
ffff80000010889d:	04 00                	add    $0x0,%al
ffff80000010889f:	00 00                	add    %al,(%rax)
ffff8000001088a1:	45 0e                	rex.RB (bad) 
ffff8000001088a3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001088a9:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff8000001088ad:	a2 04 0c 07 08 00 00 	movabs %al,0x1c000008070c04
ffff8000001088b4:	1c 00 
ffff8000001088b6:	00 00                	add    %al,(%rax)
ffff8000001088b8:	58                   	pop    %rax
ffff8000001088b9:	02 00                	add    (%rax),%al
ffff8000001088bb:	00 4b d3             	add    %cl,-0x2d(%rbx)
ffff8000001088be:	ff                   	(bad)  
ffff8000001088bf:	ff d7                	callq  *%rdi
ffff8000001088c1:	00 00                	add    %al,(%rax)
ffff8000001088c3:	00 00                	add    %al,(%rax)
ffff8000001088c5:	45 0e                	rex.RB (bad) 
ffff8000001088c7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001088cd:	02 ce                	add    %dh,%cl
ffff8000001088cf:	0c 07                	or     $0x7,%al
ffff8000001088d1:	08 00                	or     %al,(%rax)
ffff8000001088d3:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001088d6:	00 00                	add    %al,(%rax)
ffff8000001088d8:	78 02                	js     ffff8000001088dc <_etext+0x283>
ffff8000001088da:	00 00                	add    %al,(%rax)
ffff8000001088dc:	02 d4                	add    %ah,%dl
ffff8000001088de:	ff                   	(bad)  
ffff8000001088df:	ff                   	(bad)  
ffff8000001088e0:	d9 00                	flds   (%rax)
ffff8000001088e2:	00 00                	add    %al,(%rax)
ffff8000001088e4:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001088e7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001088ed:	02 d0                	add    %al,%dl
ffff8000001088ef:	0c 07                	or     $0x7,%al
ffff8000001088f1:	08 00                	or     %al,(%rax)
ffff8000001088f3:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff8000001088f6:	00 00                	add    %al,(%rax)
ffff8000001088f8:	98                   	cwtl   
ffff8000001088f9:	02 00                	add    (%rax),%al
ffff8000001088fb:	00 bb d4 ff ff dc    	add    %bh,-0x2300002c(%rbx)
ffff800000108901:	00 00                	add    %al,(%rax)
ffff800000108903:	00 00                	add    %al,(%rax)
ffff800000108905:	45 0e                	rex.RB (bad) 
ffff800000108907:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010890d:	02 d3                	add    %bl,%dl
ffff80000010890f:	0c 07                	or     $0x7,%al
ffff800000108911:	08 00                	or     %al,(%rax)
ffff800000108913:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108916:	00 00                	add    %al,(%rax)
ffff800000108918:	b8 02 00 00 77       	mov    $0x77000002,%eax
ffff80000010891d:	d5                   	(bad)  
ffff80000010891e:	ff                   	(bad)  
ffff80000010891f:	ff                   	(bad)  
ffff800000108920:	df 00                	filds  (%rax)
ffff800000108922:	00 00                	add    %al,(%rax)
ffff800000108924:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108927:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010892d:	02 d6                	add    %dh,%dl
ffff80000010892f:	0c 07                	or     $0x7,%al
ffff800000108931:	08 00                	or     %al,(%rax)
ffff800000108933:	00 18                	add    %bl,(%rax)
ffff800000108935:	00 00                	add    %al,(%rax)
ffff800000108937:	00 d8                	add    %bl,%al
ffff800000108939:	02 00                	add    (%rax),%al
ffff80000010893b:	00 36                	add    %dh,(%rsi)
ffff80000010893d:	d6                   	(bad)  
ffff80000010893e:	ff                   	(bad)  
ffff80000010893f:	ff                   	(bad)  
ffff800000108940:	7e 00                	jle    ffff800000108942 <_etext+0x2e9>
ffff800000108942:	00 00                	add    %al,(%rax)
ffff800000108944:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108947:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff80000010894d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108950:	18 00                	sbb    %al,(%rax)
ffff800000108952:	00 00                	add    %al,(%rax)
ffff800000108954:	f4                   	hlt    
ffff800000108955:	02 00                	add    (%rax),%al
ffff800000108957:	00 98 d6 ff ff 7e    	add    %bl,0x7effffd6(%rax)
ffff80000010895d:	00 00                	add    %al,(%rax)
ffff80000010895f:	00 00                	add    %al,(%rax)
ffff800000108961:	45 0e                	rex.RB (bad) 
ffff800000108963:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108969:	46 8f 03             	rex.RX popq (%rbx)
ffff80000010896c:	18 00                	sbb    %al,(%rax)
ffff80000010896e:	00 00                	add    %al,(%rax)
ffff800000108970:	10 03                	adc    %al,(%rbx)
ffff800000108972:	00 00                	add    %al,(%rax)
ffff800000108974:	fa                   	cli    
ffff800000108975:	d6                   	(bad)  
ffff800000108976:	ff                   	(bad)  
ffff800000108977:	ff                   	(bad)  
ffff800000108978:	7e 00                	jle    ffff80000010897a <_etext+0x321>
ffff80000010897a:	00 00                	add    %al,(%rax)
ffff80000010897c:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010897f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108985:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108988:	18 00                	sbb    %al,(%rax)
ffff80000010898a:	00 00                	add    %al,(%rax)
ffff80000010898c:	2c 03                	sub    $0x3,%al
ffff80000010898e:	00 00                	add    %al,(%rax)
ffff800000108990:	5c                   	pop    %rsp
ffff800000108991:	d7                   	xlat   %ds:(%rbx)
ffff800000108992:	ff                   	(bad)  
ffff800000108993:	ff                   	(bad)  
ffff800000108994:	7e 00                	jle    ffff800000108996 <_etext+0x33d>
ffff800000108996:	00 00                	add    %al,(%rax)
ffff800000108998:	00 45 0e             	add    %al,0xe(%rbp)
ffff80000010899b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089a1:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001089a4:	18 00                	sbb    %al,(%rax)
ffff8000001089a6:	00 00                	add    %al,(%rax)
ffff8000001089a8:	48 03 00             	add    (%rax),%rax
ffff8000001089ab:	00 be d7 ff ff 7e    	add    %bh,0x7effffd7(%rsi)
ffff8000001089b1:	00 00                	add    %al,(%rax)
ffff8000001089b3:	00 00                	add    %al,(%rax)
ffff8000001089b5:	45 0e                	rex.RB (bad) 
ffff8000001089b7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089bd:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001089c0:	18 00                	sbb    %al,(%rax)
ffff8000001089c2:	00 00                	add    %al,(%rax)
ffff8000001089c4:	64 03 00             	add    %fs:(%rax),%eax
ffff8000001089c7:	00 20                	add    %ah,(%rax)
ffff8000001089c9:	d8 ff                	fdivr  %st(7),%st
ffff8000001089cb:	ff                   	(bad)  
ffff8000001089cc:	7e 00                	jle    ffff8000001089ce <_etext+0x375>
ffff8000001089ce:	00 00                	add    %al,(%rax)
ffff8000001089d0:	00 45 0e             	add    %al,0xe(%rbp)
ffff8000001089d3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089d9:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001089dc:	18 00                	sbb    %al,(%rax)
ffff8000001089de:	00 00                	add    %al,(%rax)
ffff8000001089e0:	80 03 00             	addb   $0x0,(%rbx)
ffff8000001089e3:	00 82 d8 ff ff 7e    	add    %al,0x7effffd8(%rdx)
ffff8000001089e9:	00 00                	add    %al,(%rax)
ffff8000001089eb:	00 00                	add    %al,(%rax)
ffff8000001089ed:	45 0e                	rex.RB (bad) 
ffff8000001089ef:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff8000001089f5:	46 8f 03             	rex.RX popq (%rbx)
ffff8000001089f8:	18 00                	sbb    %al,(%rax)
ffff8000001089fa:	00 00                	add    %al,(%rax)
ffff8000001089fc:	9c                   	pushfq 
ffff8000001089fd:	03 00                	add    (%rax),%eax
ffff8000001089ff:	00 e4                	add    %ah,%ah
ffff800000108a01:	d8 ff                	fdivr  %st(7),%st
ffff800000108a03:	ff                   	(bad)  
ffff800000108a04:	7e 00                	jle    ffff800000108a06 <_etext+0x3ad>
ffff800000108a06:	00 00                	add    %al,(%rax)
ffff800000108a08:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108a0b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a11:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108a14:	18 00                	sbb    %al,(%rax)
ffff800000108a16:	00 00                	add    %al,(%rax)
ffff800000108a18:	b8 03 00 00 46       	mov    $0x46000003,%eax
ffff800000108a1d:	d9 ff                	fcos   
ffff800000108a1f:	ff                   	(bad)  
ffff800000108a20:	7e 00                	jle    ffff800000108a22 <_etext+0x3c9>
ffff800000108a22:	00 00                	add    %al,(%rax)
ffff800000108a24:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108a27:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a2d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108a30:	18 00                	sbb    %al,(%rax)
ffff800000108a32:	00 00                	add    %al,(%rax)
ffff800000108a34:	d4                   	(bad)  
ffff800000108a35:	03 00                	add    (%rax),%eax
ffff800000108a37:	00 a8 d9 ff ff 7e    	add    %ch,0x7effffd9(%rax)
ffff800000108a3d:	00 00                	add    %al,(%rax)
ffff800000108a3f:	00 00                	add    %al,(%rax)
ffff800000108a41:	45 0e                	rex.RB (bad) 
ffff800000108a43:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a49:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108a4c:	1c 00                	sbb    $0x0,%al
ffff800000108a4e:	00 00                	add    %al,(%rax)
ffff800000108a50:	f0 03 00             	lock add (%rax),%eax
ffff800000108a53:	00 0a                	add    %cl,(%rdx)
ffff800000108a55:	da ff                	(bad)  
ffff800000108a57:	ff 9d 01 00 00 00    	lcall  *0x1(%rbp)
ffff800000108a5d:	45 0e                	rex.RB (bad) 
ffff800000108a5f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a65:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108a68:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108a6c:	1c 00                	sbb    $0x0,%al
ffff800000108a6e:	00 00                	add    %al,(%rax)
ffff800000108a70:	10 04 00             	adc    %al,(%rax,%rax,1)
ffff800000108a73:	00 87 db ff ff 9d    	add    %al,-0x62000025(%rdi)
ffff800000108a79:	01 00                	add    %eax,(%rax)
ffff800000108a7b:	00 00                	add    %al,(%rax)
ffff800000108a7d:	45 0e                	rex.RB (bad) 
ffff800000108a7f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108a85:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108a88:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108a8c:	1c 00                	sbb    $0x0,%al
ffff800000108a8e:	00 00                	add    %al,(%rax)
ffff800000108a90:	30 04 00             	xor    %al,(%rax,%rax,1)
ffff800000108a93:	00 04 dd ff ff 9d 01 	add    %al,0x19dffff(,%rbx,8)
ffff800000108a9a:	00 00                	add    %al,(%rax)
ffff800000108a9c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108a9f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108aa5:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108aa8:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108aac:	1c 00                	sbb    $0x0,%al
ffff800000108aae:	00 00                	add    %al,(%rax)
ffff800000108ab0:	50                   	push   %rax
ffff800000108ab1:	04 00                	add    $0x0,%al
ffff800000108ab3:	00 81 de ff ff 9d    	add    %al,-0x62000022(%rcx)
ffff800000108ab9:	01 00                	add    %eax,(%rax)
ffff800000108abb:	00 00                	add    %al,(%rax)
ffff800000108abd:	45 0e                	rex.RB (bad) 
ffff800000108abf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ac5:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108ac8:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108acc:	1c 00                	sbb    $0x0,%al
ffff800000108ace:	00 00                	add    %al,(%rax)
ffff800000108ad0:	70 04                	jo     ffff800000108ad6 <_etext+0x47d>
ffff800000108ad2:	00 00                	add    %al,(%rax)
ffff800000108ad4:	fe                   	(bad)  
ffff800000108ad5:	df ff                	(bad)  
ffff800000108ad7:	ff 22                	jmpq   *(%rdx)
ffff800000108ad9:	02 00                	add    (%rax),%al
ffff800000108adb:	00 00                	add    %al,(%rax)
ffff800000108add:	45 0e                	rex.RB (bad) 
ffff800000108adf:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ae5:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108ae8:	83 04 00 00          	addl   $0x0,(%rax,%rax,1)
ffff800000108aec:	18 00                	sbb    %al,(%rax)
ffff800000108aee:	00 00                	add    %al,(%rax)
ffff800000108af0:	90                   	nop
ffff800000108af1:	04 00                	add    $0x0,%al
ffff800000108af3:	00 00                	add    %al,(%rax)
ffff800000108af5:	e2 ff                	loop   ffff800000108af6 <_etext+0x49d>
ffff800000108af7:	ff                   	(bad)  
ffff800000108af8:	7e 00                	jle    ffff800000108afa <_etext+0x4a1>
ffff800000108afa:	00 00                	add    %al,(%rax)
ffff800000108afc:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108aff:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b05:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108b08:	18 00                	sbb    %al,(%rax)
ffff800000108b0a:	00 00                	add    %al,(%rax)
ffff800000108b0c:	ac                   	lods   %ds:(%rsi),%al
ffff800000108b0d:	04 00                	add    $0x0,%al
ffff800000108b0f:	00 62 e2             	add    %ah,-0x1e(%rdx)
ffff800000108b12:	ff                   	(bad)  
ffff800000108b13:	ff                   	(bad)  
ffff800000108b14:	7e 00                	jle    ffff800000108b16 <_etext+0x4bd>
ffff800000108b16:	00 00                	add    %al,(%rax)
ffff800000108b18:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108b1b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b21:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108b24:	18 00                	sbb    %al,(%rax)
ffff800000108b26:	00 00                	add    %al,(%rax)
ffff800000108b28:	c8 04 00 00          	enterq $0x4,$0x0
ffff800000108b2c:	c4 e2 ff ff          	(bad)  
ffff800000108b30:	7e 00                	jle    ffff800000108b32 <_etext+0x4d9>
ffff800000108b32:	00 00                	add    %al,(%rax)
ffff800000108b34:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108b37:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b3d:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108b40:	18 00                	sbb    %al,(%rax)
ffff800000108b42:	00 00                	add    %al,(%rax)
ffff800000108b44:	e4 04                	in     $0x4,%al
ffff800000108b46:	00 00                	add    %al,(%rax)
ffff800000108b48:	26 e3 ff             	es jrcxz ffff800000108b4a <_etext+0x4f1>
ffff800000108b4b:	ff                   	(bad)  
ffff800000108b4c:	7e 00                	jle    ffff800000108b4e <_etext+0x4f5>
ffff800000108b4e:	00 00                	add    %al,(%rax)
ffff800000108b50:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108b53:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b59:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108b5c:	18 00                	sbb    %al,(%rax)
ffff800000108b5e:	00 00                	add    %al,(%rax)
ffff800000108b60:	00 05 00 00 88 e3    	add    %al,-0x1c780000(%rip)        # ffff7fffe3988b66 <OLDSS+0xffff7fffe3988aae>
ffff800000108b66:	ff                   	(bad)  
ffff800000108b67:	ff                   	(bad)  
ffff800000108b68:	7e 00                	jle    ffff800000108b6a <_etext+0x511>
ffff800000108b6a:	00 00                	add    %al,(%rax)
ffff800000108b6c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108b6f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b75:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108b78:	1c 00                	sbb    $0x0,%al
ffff800000108b7a:	00 00                	add    %al,(%rax)
ffff800000108b7c:	1c 05                	sbb    $0x5,%al
ffff800000108b7e:	00 00                	add    %al,(%rax)
ffff800000108b80:	ea                   	(bad)  
ffff800000108b81:	e3 ff                	jrcxz  ffff800000108b82 <_etext+0x529>
ffff800000108b83:	ff                   	(bad)  
ffff800000108b84:	3d 00 00 00 00       	cmp    $0x0,%eax
ffff800000108b89:	45 0e                	rex.RB (bad) 
ffff800000108b8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108b91:	74 0c                	je     ffff800000108b9f <_etext+0x546>
ffff800000108b93:	07                   	(bad)  
ffff800000108b94:	08 00                	or     %al,(%rax)
ffff800000108b96:	00 00                	add    %al,(%rax)
ffff800000108b98:	1c 00                	sbb    $0x0,%al
ffff800000108b9a:	00 00                	add    %al,(%rax)
ffff800000108b9c:	3c 05                	cmp    $0x5,%al
ffff800000108b9e:	00 00                	add    %al,(%rax)
ffff800000108ba0:	07                   	(bad)  
ffff800000108ba1:	e4 ff                	in     $0xff,%al
ffff800000108ba3:	ff                   	(bad)  
ffff800000108ba4:	3c 00                	cmp    $0x0,%al
ffff800000108ba6:	00 00                	add    %al,(%rax)
ffff800000108ba8:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108bab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108bb1:	73 0c                	jae    ffff800000108bbf <_etext+0x566>
ffff800000108bb3:	07                   	(bad)  
ffff800000108bb4:	08 00                	or     %al,(%rax)
ffff800000108bb6:	00 00                	add    %al,(%rax)
ffff800000108bb8:	20 00                	and    %al,(%rax)
ffff800000108bba:	00 00                	add    %al,(%rax)
ffff800000108bbc:	5c                   	pop    %rsp
ffff800000108bbd:	05 00 00 23 e4       	add    $0xe4230000,%eax
ffff800000108bc2:	ff                   	(bad)  
ffff800000108bc3:	ff e5                	jmpq   *%rbp
ffff800000108bc5:	01 00                	add    %eax,(%rax)
ffff800000108bc7:	00 00                	add    %al,(%rax)
ffff800000108bc9:	45 0e                	rex.RB (bad) 
ffff800000108bcb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108bd1:	43 8f 03             	rex.XB popq (%r11)
ffff800000108bd4:	83 04 03 d9          	addl   $0xffffffd9,(%rbx,%rax,1)
ffff800000108bd8:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108bdb:	08 20                	or     %ah,(%rax)
ffff800000108bdd:	00 00                	add    %al,(%rax)
ffff800000108bdf:	00 80 05 00 00 e4    	add    %al,-0x1bfffffb(%rax)
ffff800000108be5:	e5 ff                	in     $0xff,%eax
ffff800000108be7:	ff 68 00             	ljmp   *0x0(%rax)
ffff800000108bea:	00 00                	add    %al,(%rax)
ffff800000108bec:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108bef:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108bf5:	43 8f 03             	rex.XB popq (%r11)
ffff800000108bf8:	83 04 02 5c          	addl   $0x5c,(%rdx,%rax,1)
ffff800000108bfc:	0c 07                	or     $0x7,%al
ffff800000108bfe:	08 00                	or     %al,(%rax)
ffff800000108c00:	20 00                	and    %al,(%rax)
ffff800000108c02:	00 00                	add    %al,(%rax)
ffff800000108c04:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
ffff800000108c05:	05 00 00 28 e6       	add    $0xe6280000,%eax
ffff800000108c0a:	ff                   	(bad)  
ffff800000108c0b:	ff 97 00 00 00 00    	callq  *0x0(%rdi)
ffff800000108c11:	45 0e                	rex.RB (bad) 
ffff800000108c13:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c19:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108c1c:	83 04 02 87          	addl   $0xffffff87,(%rdx,%rax,1)
ffff800000108c20:	0c 07                	or     $0x7,%al
ffff800000108c22:	08 00                	or     %al,(%rax)
ffff800000108c24:	20 00                	and    %al,(%rax)
ffff800000108c26:	00 00                	add    %al,(%rax)
ffff800000108c28:	c8 05 00 00          	enterq $0x5,$0x0
ffff800000108c2c:	9b                   	fwait
ffff800000108c2d:	e6 ff                	out    %al,$0xff
ffff800000108c2f:	ff 82 00 00 00 00    	incl   0x0(%rdx)
ffff800000108c35:	45 0e                	rex.RB (bad) 
ffff800000108c37:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c3d:	43 8f 03             	rex.XB popq (%r11)
ffff800000108c40:	83 04 02 76          	addl   $0x76,(%rdx,%rax,1)
ffff800000108c44:	0c 07                	or     $0x7,%al
ffff800000108c46:	08 00                	or     %al,(%rax)
ffff800000108c48:	20 00                	and    %al,(%rax)
ffff800000108c4a:	00 00                	add    %al,(%rax)
ffff800000108c4c:	ec                   	in     (%dx),%al
ffff800000108c4d:	05 00 00 f9 e6       	add    $0xe6f90000,%eax
ffff800000108c52:	ff                   	(bad)  
ffff800000108c53:	ff d0                	callq  *%rax
ffff800000108c55:	01 00                	add    %eax,(%rax)
ffff800000108c57:	00 00                	add    %al,(%rax)
ffff800000108c59:	45 0e                	rex.RB (bad) 
ffff800000108c5b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c61:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108c64:	83 04 03 c0          	addl   $0xffffffc0,(%rbx,%rax,1)
ffff800000108c68:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108c6b:	08 20                	or     %ah,(%rax)
ffff800000108c6d:	00 00                	add    %al,(%rax)
ffff800000108c6f:	00 10                	add    %dl,(%rax)
ffff800000108c71:	06                   	(bad)  
ffff800000108c72:	00 00                	add    %al,(%rax)
ffff800000108c74:	a5                   	movsl  %ds:(%rsi),%es:(%rdi)
ffff800000108c75:	e8 ff ff af 00       	callq  ffff800000c08c79 <_end+0xafe2e1>
ffff800000108c7a:	00 00                	add    %al,(%rax)
ffff800000108c7c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108c7f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108c85:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108c88:	83 04 02 9f          	addl   $0xffffff9f,(%rdx,%rax,1)
ffff800000108c8c:	0c 07                	or     $0x7,%al
ffff800000108c8e:	08 00                	or     %al,(%rax)
ffff800000108c90:	20 00                	and    %al,(%rax)
ffff800000108c92:	00 00                	add    %al,(%rax)
ffff800000108c94:	34 06                	xor    $0x6,%al
ffff800000108c96:	00 00                	add    %al,(%rax)
ffff800000108c98:	30 e9                	xor    %ch,%cl
ffff800000108c9a:	ff                   	(bad)  
ffff800000108c9b:	ff c9                	dec    %ecx
ffff800000108c9d:	00 00                	add    %al,(%rax)
ffff800000108c9f:	00 00                	add    %al,(%rax)
ffff800000108ca1:	45 0e                	rex.RB (bad) 
ffff800000108ca3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ca9:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108cac:	83 04 02 b9          	addl   $0xffffffb9,(%rdx,%rax,1)
ffff800000108cb0:	0c 07                	or     $0x7,%al
ffff800000108cb2:	08 00                	or     %al,(%rax)
ffff800000108cb4:	20 00                	and    %al,(%rax)
ffff800000108cb6:	00 00                	add    %al,(%rax)
ffff800000108cb8:	58                   	pop    %rax
ffff800000108cb9:	06                   	(bad)  
ffff800000108cba:	00 00                	add    %al,(%rax)
ffff800000108cbc:	d5                   	(bad)  
ffff800000108cbd:	e9 ff ff 8a 00       	jmpq   ffff8000009b8cc1 <_end+0x8ae329>
ffff800000108cc2:	00 00                	add    %al,(%rax)
ffff800000108cc4:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108cc7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ccd:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108cd0:	02 7b 0c             	add    0xc(%rbx),%bh
ffff800000108cd3:	07                   	(bad)  
ffff800000108cd4:	08 00                	or     %al,(%rax)
ffff800000108cd6:	00 00                	add    %al,(%rax)
ffff800000108cd8:	20 00                	and    %al,(%rax)
ffff800000108cda:	00 00                	add    %al,(%rax)
ffff800000108cdc:	7c 06                	jl     ffff800000108ce4 <_etext+0x68b>
ffff800000108cde:	00 00                	add    %al,(%rax)
ffff800000108ce0:	3b ea                	cmp    %edx,%ebp
ffff800000108ce2:	ff                   	(bad)  
ffff800000108ce3:	ff                   	(bad)  
ffff800000108ce4:	ec                   	in     (%dx),%al
ffff800000108ce5:	00 00                	add    %al,(%rax)
ffff800000108ce7:	00 00                	add    %al,(%rax)
ffff800000108ce9:	45 0e                	rex.RB (bad) 
ffff800000108ceb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108cf1:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108cf4:	83 04 02 dc          	addl   $0xffffffdc,(%rdx,%rax,1)
ffff800000108cf8:	0c 07                	or     $0x7,%al
ffff800000108cfa:	08 00                	or     %al,(%rax)
ffff800000108cfc:	20 00                	and    %al,(%rax)
ffff800000108cfe:	00 00                	add    %al,(%rax)
ffff800000108d00:	a0 06 00 00 03 eb ff 	movabs 0xfbffffeb03000006,%al
ffff800000108d07:	ff fb 
ffff800000108d09:	00 00                	add    %al,(%rax)
ffff800000108d0b:	00 00                	add    %al,(%rax)
ffff800000108d0d:	45 0e                	rex.RB (bad) 
ffff800000108d0f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d15:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108d18:	83 04 02 eb          	addl   $0xffffffeb,(%rdx,%rax,1)
ffff800000108d1c:	0c 07                	or     $0x7,%al
ffff800000108d1e:	08 00                	or     %al,(%rax)
ffff800000108d20:	20 00                	and    %al,(%rax)
ffff800000108d22:	00 00                	add    %al,(%rax)
ffff800000108d24:	c4                   	(bad)  
ffff800000108d25:	06                   	(bad)  
ffff800000108d26:	00 00                	add    %al,(%rax)
ffff800000108d28:	da eb                	(bad)  
ffff800000108d2a:	ff                   	(bad)  
ffff800000108d2b:	ff 23                	jmpq   *(%rbx)
ffff800000108d2d:	01 00                	add    %eax,(%rax)
ffff800000108d2f:	00 00                	add    %al,(%rax)
ffff800000108d31:	45 0e                	rex.RB (bad) 
ffff800000108d33:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d39:	45 83 03 03          	rex.RB addl $0x3,(%r11)
ffff800000108d3d:	15 01 0c 07 08       	adc    $0x8070c01,%eax
ffff800000108d42:	00 00                	add    %al,(%rax)
ffff800000108d44:	20 00                	and    %al,(%rax)
ffff800000108d46:	00 00                	add    %al,(%rax)
ffff800000108d48:	e8 06 00 00 d9       	callq  ffff7fffd9108d53 <OLDSS+0xffff7fffd9108c9b>
ffff800000108d4d:	ec                   	in     (%dx),%al
ffff800000108d4e:	ff                   	(bad)  
ffff800000108d4f:	ff 53 01             	callq  *0x1(%rbx)
ffff800000108d52:	00 00                	add    %al,(%rax)
ffff800000108d54:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108d57:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d5d:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108d60:	83 04 03 43          	addl   $0x43,(%rbx,%rax,1)
ffff800000108d64:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108d67:	08 20                	or     %ah,(%rax)
ffff800000108d69:	00 00                	add    %al,(%rax)
ffff800000108d6b:	00 0c 07             	add    %cl,(%rdi,%rax,1)
ffff800000108d6e:	00 00                	add    %al,(%rax)
ffff800000108d70:	08 ee                	or     %ch,%dh
ffff800000108d72:	ff                   	(bad)  
ffff800000108d73:	ff 72 01             	pushq  0x1(%rdx)
ffff800000108d76:	00 00                	add    %al,(%rax)
ffff800000108d78:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108d7b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108d81:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108d84:	83 04 03 62          	addl   $0x62,(%rbx,%rax,1)
ffff800000108d88:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108d8b:	08 20                	or     %ah,(%rax)
ffff800000108d8d:	00 00                	add    %al,(%rax)
ffff800000108d8f:	00 30                	add    %dh,(%rax)
ffff800000108d91:	07                   	(bad)  
ffff800000108d92:	00 00                	add    %al,(%rax)
ffff800000108d94:	56                   	push   %rsi
ffff800000108d95:	ef                   	out    %eax,(%dx)
ffff800000108d96:	ff                   	(bad)  
ffff800000108d97:	ff                   	(bad)  
ffff800000108d98:	7c 00                	jl     ffff800000108d9a <_etext+0x741>
ffff800000108d9a:	00 00                	add    %al,(%rax)
ffff800000108d9c:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108d9f:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108da5:	46 8f 03             	rex.RX popq (%rbx)
ffff800000108da8:	02 6d 0c             	add    0xc(%rbp),%ch
ffff800000108dab:	07                   	(bad)  
ffff800000108dac:	08 00                	or     %al,(%rax)
ffff800000108dae:	00 00                	add    %al,(%rax)
ffff800000108db0:	20 00                	and    %al,(%rax)
ffff800000108db2:	00 00                	add    %al,(%rax)
ffff800000108db4:	54                   	push   %rsp
ffff800000108db5:	07                   	(bad)  
ffff800000108db6:	00 00                	add    %al,(%rax)
ffff800000108db8:	ae                   	scas   %es:(%rdi),%al
ffff800000108db9:	ef                   	out    %eax,(%dx)
ffff800000108dba:	ff                   	(bad)  
ffff800000108dbb:	ff 04 02             	incl   (%rdx,%rax,1)
ffff800000108dbe:	00 00                	add    %al,(%rax)
ffff800000108dc0:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108dc3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108dc9:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108dcc:	83 04 03 f4          	addl   $0xfffffff4,(%rbx,%rax,1)
ffff800000108dd0:	01 0c 07             	add    %ecx,(%rdi,%rax,1)
ffff800000108dd3:	08 20                	or     %ah,(%rax)
ffff800000108dd5:	00 00                	add    %al,(%rax)
ffff800000108dd7:	00 78 07             	add    %bh,0x7(%rax)
ffff800000108dda:	00 00                	add    %al,(%rax)
ffff800000108ddc:	8e f1                	mov    %ecx,%?
ffff800000108dde:	ff                   	(bad)  
ffff800000108ddf:	ff 02                	incl   (%rdx)
ffff800000108de1:	03 00                	add    (%rax),%eax
ffff800000108de3:	00 00                	add    %al,(%rax)
ffff800000108de5:	45 0e                	rex.RB (bad) 
ffff800000108de7:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ded:	47 8f 03             	rex.RXB popq (%r11)
ffff800000108df0:	83 04 03 f2          	addl   $0xfffffff2,(%rbx,%rax,1)
ffff800000108df4:	02 0c 07             	add    (%rdi,%rax,1),%cl
ffff800000108df7:	08 1c 00             	or     %bl,(%rax,%rax,1)
ffff800000108dfa:	00 00                	add    %al,(%rax)
ffff800000108dfc:	9c                   	pushfq 
ffff800000108dfd:	07                   	(bad)  
ffff800000108dfe:	00 00                	add    %al,(%rax)
ffff800000108e00:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108e01:	f4                   	hlt    
ffff800000108e02:	ff                   	(bad)  
ffff800000108e03:	ff 63 00             	jmpq   *0x0(%rbx)
ffff800000108e06:	00 00                	add    %al,(%rax)
ffff800000108e08:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108e0b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e11:	02 5a 0c             	add    0xc(%rdx),%bl
ffff800000108e14:	07                   	(bad)  
ffff800000108e15:	08 00                	or     %al,(%rax)
ffff800000108e17:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e1a:	00 00                	add    %al,(%rax)
ffff800000108e1c:	bc 07 00 00 af       	mov    $0xaf000007,%esp
ffff800000108e21:	f4                   	hlt    
ffff800000108e22:	ff                   	(bad)  
ffff800000108e23:	ff 8c 00 00 00 00 45 	decl   0x45000000(%rax,%rax,1)
ffff800000108e2a:	0e                   	(bad)  
ffff800000108e2b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e31:	02 83 0c 07 08 00    	add    0x8070c(%rbx),%al
ffff800000108e37:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e3a:	00 00                	add    %al,(%rax)
ffff800000108e3c:	dc 07                	faddl  (%rdi)
ffff800000108e3e:	00 00                	add    %al,(%rax)
ffff800000108e40:	1b f5                	sbb    %ebp,%esi
ffff800000108e42:	ff                   	(bad)  
ffff800000108e43:	ff d7                	callq  *%rdi
ffff800000108e45:	00 00                	add    %al,(%rax)
ffff800000108e47:	00 00                	add    %al,(%rax)
ffff800000108e49:	45 0e                	rex.RB (bad) 
ffff800000108e4b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e51:	02 ce                	add    %dh,%cl
ffff800000108e53:	0c 07                	or     $0x7,%al
ffff800000108e55:	08 00                	or     %al,(%rax)
ffff800000108e57:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e5a:	00 00                	add    %al,(%rax)
ffff800000108e5c:	fc                   	cld    
ffff800000108e5d:	07                   	(bad)  
ffff800000108e5e:	00 00                	add    %al,(%rax)
ffff800000108e60:	d2 f5                	shl    %cl,%ch
ffff800000108e62:	ff                   	(bad)  
ffff800000108e63:	ff 51 00             	callq  *0x0(%rcx)
ffff800000108e66:	00 00                	add    %al,(%rax)
ffff800000108e68:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108e6b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e71:	02 48 0c             	add    0xc(%rax),%cl
ffff800000108e74:	07                   	(bad)  
ffff800000108e75:	08 00                	or     %al,(%rax)
ffff800000108e77:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e7a:	00 00                	add    %al,(%rax)
ffff800000108e7c:	1c 08                	sbb    $0x8,%al
ffff800000108e7e:	00 00                	add    %al,(%rax)
ffff800000108e80:	03 f6                	add    %esi,%esi
ffff800000108e82:	ff                   	(bad)  
ffff800000108e83:	ff 89 00 00 00 00    	decl   0x0(%rcx)
ffff800000108e89:	45 0e                	rex.RB (bad) 
ffff800000108e8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108e91:	02 80 0c 07 08 00    	add    0x8070c(%rax),%al
ffff800000108e97:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108e9a:	00 00                	add    %al,(%rax)
ffff800000108e9c:	3c 08                	cmp    $0x8,%al
ffff800000108e9e:	00 00                	add    %al,(%rax)
ffff800000108ea0:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000108ea1:	f6 ff                	idiv   %bh
ffff800000108ea3:	ff 89 00 00 00 00    	decl   0x0(%rcx)
ffff800000108ea9:	45 0e                	rex.RB (bad) 
ffff800000108eab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108eb1:	02 80 0c 07 08 00    	add    0x8070c(%rax),%al
ffff800000108eb7:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108eba:	00 00                	add    %al,(%rax)
ffff800000108ebc:	5c                   	pop    %rsp
ffff800000108ebd:	08 00                	or     %al,(%rax)
ffff800000108ebf:	00 d5                	add    %dl,%ch
ffff800000108ec1:	f6 ff                	idiv   %bh
ffff800000108ec3:	ff                   	(bad)  
ffff800000108ec4:	7a 00                	jp     ffff800000108ec6 <_etext+0x86d>
ffff800000108ec6:	00 00                	add    %al,(%rax)
ffff800000108ec8:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108ecb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ed1:	02 71 0c             	add    0xc(%rcx),%dh
ffff800000108ed4:	07                   	(bad)  
ffff800000108ed5:	08 00                	or     %al,(%rax)
ffff800000108ed7:	00 1c 00             	add    %bl,(%rax,%rax,1)
ffff800000108eda:	00 00                	add    %al,(%rax)
ffff800000108edc:	7c 08                	jl     ffff800000108ee6 <_etext+0x88d>
ffff800000108ede:	00 00                	add    %al,(%rax)
ffff800000108ee0:	2f                   	(bad)  
ffff800000108ee1:	f7 ff                	idiv   %edi
ffff800000108ee3:	ff 4a 00             	decl   0x0(%rdx)
ffff800000108ee6:	00 00                	add    %al,(%rax)
ffff800000108ee8:	00 45 0e             	add    %al,0xe(%rbp)
ffff800000108eeb:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
ffff800000108ef1:	02 41 0c             	add    0xc(%rcx),%al
ffff800000108ef4:	07                   	(bad)  
ffff800000108ef5:	08 00                	or     %al,(%rax)
	...

Disassembly of section .rodata:

ffff800000108ef8 <.LC0>:
ffff800000108ef8:	70 61                	jo     ffff800000108f5b <.LC2+0x1a>
ffff800000108efa:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108efb:	69 63 3a 20 00   	imul   $0xa0020,0x3a(%rbx),%esp

ffff800000108f00 <.LC1>:
ffff800000108f00:	0a 00                	or     (%rax),%al
ffff800000108f02:	00 00                	add    %al,(%rax)
ffff800000108f04:	00 00                	add    %al,(%rax)
	...

ffff800000108f08 <.LC0>:
ffff800000108f08:	69 6e 69 74 20 74 61 	imul   $0x61742074,0x69(%rsi),%ebp
ffff800000108f0f:	73 6b                	jae    ffff800000108f7c <.LC4+0x6>
ffff800000108f11:	20 69 73             	and    %ch,0x73(%rcx)
ffff800000108f14:	20 72 75             	and    %dh,0x75(%rdx)
ffff800000108f17:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f18:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f19:	69 6e 67 0a 00 00 00 	imul   $0xa,0x67(%rsi),%ebp

ffff800000108f20 <.LC1>:
ffff800000108f20:	69 6e 69 74 20 74 61 	imul   $0x61742074,0x69(%rsi),%ebp
ffff800000108f27:	73 6b                	jae    ffff800000108f94 <.LC0+0x4>
ffff800000108f29:	20 69 73             	and    %ch,0x73(%rcx)
ffff800000108f2c:	20 72 75             	and    %dh,0x75(%rdx)
ffff800000108f2f:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f30:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f31:	69 6e 67 2c 20 61 72 	imul   $0x7261202c,0x67(%rsi),%ebp
ffff800000108f38:	67 20 3d 20 25 6c 78 	and    %bh,0x786c2520(%eip)        # ffff8000787cb45f <_end+0x786c0ac7>
ffff800000108f3f:	0a 00                	or     (%rax),%al

ffff800000108f41 <.LC2>:
ffff800000108f41:	65 78 69             	gs js  ffff800000108fad <.LC0+0x1d>
ffff800000108f44:	74 20                	je     ffff800000108f66 <.LC3+0x7>
ffff800000108f46:	74 61                	je     ffff800000108fa9 <.LC0+0x19>
ffff800000108f48:	73 6b                	jae    ffff800000108fb5 <.LC0+0x25>
ffff800000108f4a:	20 69 73             	and    %ch,0x73(%rcx)
ffff800000108f4d:	20 72 75             	and    %dh,0x75(%rdx)
ffff800000108f50:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f51:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f52:	69 6e 67 2c 61 72 67 	imul   $0x6772612c,0x67(%rsi),%ebp
ffff800000108f59:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b07cb <_end+0xa5e33>

ffff800000108f5f <.LC3>:
ffff800000108f5f:	70 72                	jo     ffff800000108fd3 <.LC1+0xb>
ffff800000108f61:	65 76 2d             	gs jbe ffff800000108f91 <.LC0+0x1>
ffff800000108f64:	3e 74 68             	je,pt  ffff800000108fcf <.LC1+0x7>
ffff800000108f67:	72 65                	jb     ffff800000108fce <.LC1+0x6>
ffff800000108f69:	61                   	(bad)  
ffff800000108f6a:	64 2d 3e 72 73 70    	fs sub $0x7073723e,%eax
ffff800000108f70:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b07e2 <_end+0xa5e4a>

ffff800000108f76 <.LC4>:
ffff800000108f76:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108f77:	65 78 74             	gs js  ffff800000108fee <.LC1+0x26>
ffff800000108f7a:	2d 3e 74 68 72       	sub    $0x7268743e,%eax
ffff800000108f7f:	65 61                	gs (bad) 
ffff800000108f81:	64 2d 3e 72 73 70    	fs sub $0x7073723e,%eax
ffff800000108f87:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b07f9 <_end+0xa5e61>
ffff800000108f8d:	00 00                	add    %al,(%rax)
	...

ffff800000108f90 <.LC0>:
ffff800000108f90:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108f92:	5f                   	pop    %rdi
ffff800000108f93:	64 69 76 69 64 65 5f 	imul   $0x655f6564,%fs:0x69(%rsi),%esi
ffff800000108f9a:	65 
ffff800000108f9b:	72 72                	jb     ffff80000010900f <.LC2+0x17>
ffff800000108f9d:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000108f9e:	72 28                	jb     ffff800000108fc8 <.LC1>
ffff800000108fa0:	30 29                	xor    %ch,(%rcx)
ffff800000108fa2:	2c 45                	sub    $0x45,%al
ffff800000108fa4:	52                   	push   %rdx
ffff800000108fa5:	52                   	push   %rdx
ffff800000108fa6:	4f 52                	rex.WRXB push %r10
ffff800000108fa8:	5f                   	pop    %rdi
ffff800000108fa9:	43                   	rex.XB
ffff800000108faa:	4f                   	rex.WRXB
ffff800000108fab:	44                   	rex.R
ffff800000108fac:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d081f <_end+0x522c5e87>
ffff800000108fb3:	53                   	push   %rbx
ffff800000108fb4:	50                   	push   %rax
ffff800000108fb5:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0827 <_end+0x522c5e8f>
ffff800000108fbb:	49 50                	rex.WB push %r8
ffff800000108fbd:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b082f <_end+0xa5e97>
ffff800000108fc3:	00 00                	add    %al,(%rax)
ffff800000108fc5:	00 00                	add    %al,(%rax)
	...

ffff800000108fc8 <.LC1>:
ffff800000108fc8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108fca:	5f                   	pop    %rdi
ffff800000108fcb:	64 65 62             	fs gs (bad) 
ffff800000108fce:	75 67                	jne    ffff800000109037 <.LC3+0xf>
ffff800000108fd0:	28 31                	sub    %dh,(%rcx)
ffff800000108fd2:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000108fd9:	5f                   	pop    %rdi
ffff800000108fda:	43                   	rex.XB
ffff800000108fdb:	4f                   	rex.WRXB
ffff800000108fdc:	44                   	rex.R
ffff800000108fdd:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0850 <_end+0x522c5eb8>
ffff800000108fe4:	53                   	push   %rbx
ffff800000108fe5:	50                   	push   %rax
ffff800000108fe6:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0858 <_end+0x522c5ec0>
ffff800000108fec:	49 50                	rex.WB push %r8
ffff800000108fee:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0860 <_end+0xa5ec8>
ffff800000108ff4:	00 00                	add    %al,(%rax)
	...

ffff800000108ff8 <.LC2>:
ffff800000108ff8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000108ffa:	5f                   	pop    %rdi
ffff800000108ffb:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000108ffc:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000108ffd:	69 28 32 29 2c 45    	imul   $0x452c2932,(%rax),%ebp
ffff800000109003:	52                   	push   %rdx
ffff800000109004:	52                   	push   %rdx
ffff800000109005:	4f 52                	rex.WRXB push %r10
ffff800000109007:	5f                   	pop    %rdi
ffff800000109008:	43                   	rex.XB
ffff800000109009:	4f                   	rex.WRXB
ffff80000010900a:	44                   	rex.R
ffff80000010900b:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d087e <_end+0x522c5ee6>
ffff800000109012:	53                   	push   %rbx
ffff800000109013:	50                   	push   %rax
ffff800000109014:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0886 <_end+0x522c5eee>
ffff80000010901a:	49 50                	rex.WB push %r8
ffff80000010901c:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b088e <_end+0xa5ef6>
ffff800000109022:	00 00                	add    %al,(%rax)
ffff800000109024:	00 00                	add    %al,(%rax)
	...

ffff800000109028 <.LC3>:
ffff800000109028:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010902a:	5f                   	pop    %rdi
ffff80000010902b:	69 6e 74 33 28 33 29 	imul   $0x29332833,0x74(%rsi),%ebp
ffff800000109032:	2c 45                	sub    $0x45,%al
ffff800000109034:	52                   	push   %rdx
ffff800000109035:	52                   	push   %rdx
ffff800000109036:	4f 52                	rex.WRXB push %r10
ffff800000109038:	5f                   	pop    %rdi
ffff800000109039:	43                   	rex.XB
ffff80000010903a:	4f                   	rex.WRXB
ffff80000010903b:	44                   	rex.R
ffff80000010903c:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d08af <_end+0x522c5f17>
ffff800000109043:	53                   	push   %rbx
ffff800000109044:	50                   	push   %rax
ffff800000109045:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d08b7 <_end+0x522c5f1f>
ffff80000010904b:	49 50                	rex.WB push %r8
ffff80000010904d:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b08bf <_end+0xa5f27>
ffff800000109053:	00 00                	add    %al,(%rax)
ffff800000109055:	00 00                	add    %al,(%rax)
	...

ffff800000109058 <.LC4>:
ffff800000109058:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010905a:	5f                   	pop    %rdi
ffff80000010905b:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010905c:	76 65                	jbe    ffff8000001090c3 <.LC6+0xb>
ffff80000010905e:	72 66                	jb     ffff8000001090c6 <.LC6+0xe>
ffff800000109060:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109061:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109062:	77 28                	ja     ffff80000010908c <.LC5+0x4>
ffff800000109064:	34 29                	xor    $0x29,%al
ffff800000109066:	2c 45                	sub    $0x45,%al
ffff800000109068:	52                   	push   %rdx
ffff800000109069:	52                   	push   %rdx
ffff80000010906a:	4f 52                	rex.WRXB push %r10
ffff80000010906c:	5f                   	pop    %rdi
ffff80000010906d:	43                   	rex.XB
ffff80000010906e:	4f                   	rex.WRXB
ffff80000010906f:	44                   	rex.R
ffff800000109070:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d08e3 <_end+0x522c5f4b>
ffff800000109077:	53                   	push   %rbx
ffff800000109078:	50                   	push   %rax
ffff800000109079:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d08eb <_end+0x522c5f53>
ffff80000010907f:	49 50                	rex.WB push %r8
ffff800000109081:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b08f3 <_end+0xa5f5b>
	...

ffff800000109088 <.LC5>:
ffff800000109088:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010908a:	5f                   	pop    %rdi
ffff80000010908b:	62                   	(bad)  
ffff80000010908c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010908d:	75 6e                	jne    ffff8000001090fd <.LC7+0xd>
ffff80000010908f:	64 73 28             	fs jae ffff8000001090ba <.LC6+0x2>
ffff800000109092:	35 29 2c 45 52       	xor    $0x52452c29,%eax
ffff800000109097:	52                   	push   %rdx
ffff800000109098:	4f 52                	rex.WRXB push %r10
ffff80000010909a:	5f                   	pop    %rdi
ffff80000010909b:	43                   	rex.XB
ffff80000010909c:	4f                   	rex.WRXB
ffff80000010909d:	44                   	rex.R
ffff80000010909e:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0911 <_end+0x522c5f79>
ffff8000001090a5:	53                   	push   %rbx
ffff8000001090a6:	50                   	push   %rax
ffff8000001090a7:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0919 <_end+0x522c5f81>
ffff8000001090ad:	49 50                	rex.WB push %r8
ffff8000001090af:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0921 <_end+0xa5f89>
ffff8000001090b5:	00 00                	add    %al,(%rax)
	...

ffff8000001090b8 <.LC6>:
ffff8000001090b8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001090ba:	5f                   	pop    %rdi
ffff8000001090bb:	75 6e                	jne    ffff80000010912b <.LC8+0x3>
ffff8000001090bd:	64 65 66 69 6e 65 64 	fs imul $0x5f64,%gs:0x65(%rsi),%bp
ffff8000001090c4:	5f 
ffff8000001090c5:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001090c6:	70 63                	jo     ffff80000010912b <.LC8+0x3>
ffff8000001090c8:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001090c9:	64 65 28 36          	fs sub %dh,%gs:(%rsi)
ffff8000001090cd:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001090d4:	5f                   	pop    %rdi
ffff8000001090d5:	43                   	rex.XB
ffff8000001090d6:	4f                   	rex.WRXB
ffff8000001090d7:	44                   	rex.R
ffff8000001090d8:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d094b <_end+0x522c5fb3>
ffff8000001090df:	53                   	push   %rbx
ffff8000001090e0:	50                   	push   %rax
ffff8000001090e1:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0953 <_end+0x522c5fbb>
ffff8000001090e7:	49 50                	rex.WB push %r8
ffff8000001090e9:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b095b <_end+0xa5fc3>
	...

ffff8000001090f0 <.LC7>:
ffff8000001090f0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001090f2:	5f                   	pop    %rdi
ffff8000001090f3:	64 65 76 5f          	fs gs jbe ffff800000109156 <.LC8+0x2e>
ffff8000001090f7:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001090f8:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001090f9:	74 5f                	je     ffff80000010915a <.LC8+0x32>
ffff8000001090fb:	61                   	(bad)  
ffff8000001090fc:	76 61                	jbe    ffff80000010915f <.LC8+0x37>
ffff8000001090fe:	69 6c 61 62 6c 65 28 	imul   $0x3728656c,0x62(%rcx,%riz,2),%ebp
ffff800000109105:	37 
ffff800000109106:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff80000010910d:	5f                   	pop    %rdi
ffff80000010910e:	43                   	rex.XB
ffff80000010910f:	4f                   	rex.WRXB
ffff800000109110:	44                   	rex.R
ffff800000109111:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0984 <_end+0x522c5fec>
ffff800000109118:	53                   	push   %rbx
ffff800000109119:	50                   	push   %rax
ffff80000010911a:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d098c <_end+0x522c5ff4>
ffff800000109120:	49 50                	rex.WB push %r8
ffff800000109122:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0994 <_end+0xa5ffc>

ffff800000109128 <.LC8>:
ffff800000109128:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010912a:	5f                   	pop    %rdi
ffff80000010912b:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010912d:	75 62                	jne    ffff800000109191 <.LC9+0x31>
ffff80000010912f:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109130:	65 5f                	gs pop %rdi
ffff800000109132:	66 61                	data16 (bad) 
ffff800000109134:	75 6c                	jne    ffff8000001091a2 <.LC9+0x42>
ffff800000109136:	74 28                	je     ffff800000109160 <.LC9>
ffff800000109138:	38 29                	cmp    %ch,(%rcx)
ffff80000010913a:	2c 45                	sub    $0x45,%al
ffff80000010913c:	52                   	push   %rdx
ffff80000010913d:	52                   	push   %rdx
ffff80000010913e:	4f 52                	rex.WRXB push %r10
ffff800000109140:	5f                   	pop    %rdi
ffff800000109141:	43                   	rex.XB
ffff800000109142:	4f                   	rex.WRXB
ffff800000109143:	44                   	rex.R
ffff800000109144:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d09b7 <_end+0x522c601f>
ffff80000010914b:	53                   	push   %rbx
ffff80000010914c:	50                   	push   %rax
ffff80000010914d:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d09bf <_end+0x522c6027>
ffff800000109153:	49 50                	rex.WB push %r8
ffff800000109155:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b09c7 <_end+0xa602f>
ffff80000010915b:	00 00                	add    %al,(%rax)
ffff80000010915d:	00 00                	add    %al,(%rax)
	...

ffff800000109160 <.LC9>:
ffff800000109160:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109162:	5f                   	pop    %rdi
ffff800000109163:	63 6f 70             	movslq 0x70(%rdi),%ebp
ffff800000109166:	72 6f                	jb     ffff8000001091d7 <.LC10+0x2f>
ffff800000109168:	63 65 73             	movslq 0x73(%rbp),%esp
ffff80000010916b:	73 6f                	jae    ffff8000001091dc <.LC10+0x34>
ffff80000010916d:	72 5f                	jb     ffff8000001091ce <.LC10+0x26>
ffff80000010916f:	73 65                	jae    ffff8000001091d6 <.LC10+0x2e>
ffff800000109171:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000109173:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000109175:	74 5f                	je     ffff8000001091d6 <.LC10+0x2e>
ffff800000109177:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109178:	76 65                	jbe    ffff8000001091df <.LC10+0x37>
ffff80000010917a:	72 72                	jb     ffff8000001091ee <.LC11+0xe>
ffff80000010917c:	75 6e                	jne    ffff8000001091ec <.LC11+0xc>
ffff80000010917e:	28 39                	sub    %bh,(%rcx)
ffff800000109180:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109187:	5f                   	pop    %rdi
ffff800000109188:	43                   	rex.XB
ffff800000109189:	4f                   	rex.WRXB
ffff80000010918a:	44                   	rex.R
ffff80000010918b:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d09fe <_end+0x522c6066>
ffff800000109192:	53                   	push   %rbx
ffff800000109193:	50                   	push   %rax
ffff800000109194:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0a06 <_end+0x522c606e>
ffff80000010919a:	49 50                	rex.WB push %r8
ffff80000010919c:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0a0e <_end+0xa6076>
ffff8000001091a2:	00 00                	add    %al,(%rax)
ffff8000001091a4:	00 00                	add    %al,(%rax)
	...

ffff8000001091a8 <.LC10>:
ffff8000001091a8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001091aa:	5f                   	pop    %rdi
ffff8000001091ab:	69 6e 76 61 6c 69 64 	imul   $0x64696c61,0x76(%rsi),%ebp
ffff8000001091b2:	5f                   	pop    %rdi
ffff8000001091b3:	54                   	push   %rsp
ffff8000001091b4:	53                   	push   %rbx
ffff8000001091b5:	53                   	push   %rbx
ffff8000001091b6:	28 31                	sub    %dh,(%rcx)
ffff8000001091b8:	30 29                	xor    %ch,(%rcx)
ffff8000001091ba:	2c 45                	sub    $0x45,%al
ffff8000001091bc:	52                   	push   %rdx
ffff8000001091bd:	52                   	push   %rdx
ffff8000001091be:	4f 52                	rex.WRXB push %r10
ffff8000001091c0:	5f                   	pop    %rdi
ffff8000001091c1:	43                   	rex.XB
ffff8000001091c2:	4f                   	rex.WRXB
ffff8000001091c3:	44                   	rex.R
ffff8000001091c4:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0a37 <_end+0x522c609f>
ffff8000001091cb:	53                   	push   %rbx
ffff8000001091cc:	50                   	push   %rax
ffff8000001091cd:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0a3f <_end+0x522c60a7>
ffff8000001091d3:	49 50                	rex.WB push %r8
ffff8000001091d5:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0a47 <_end+0xa60af>
ffff8000001091db:	00 00                	add    %al,(%rax)
ffff8000001091dd:	00 00                	add    %al,(%rax)
	...

ffff8000001091e0 <.LC11>:
ffff8000001091e0:	54                   	push   %rsp
ffff8000001091e1:	68 65 20 65 78       	pushq  $0x78652065
ffff8000001091e6:	63 65 70             	movslq 0x70(%rbp),%esp
ffff8000001091e9:	74 69                	je     ffff800000109254 <.LC11+0x74>
ffff8000001091eb:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001091ec:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001091ed:	20 6f 63             	and    %ch,0x63(%rdi)
ffff8000001091f0:	63 75 72             	movslq 0x72(%rbp),%esi
ffff8000001091f3:	72 65                	jb     ffff80000010925a <.LC11+0x7a>
ffff8000001091f5:	64 20 64 75 72       	and    %ah,%fs:0x72(%rbp,%rsi,2)
ffff8000001091fa:	69 6e 67 20 64 65 6c 	imul   $0x6c656420,0x67(%rsi),%ebp
ffff800000109201:	69 76 65 72 79 20 6f 	imul   $0x6f207972,0x65(%rsi),%esi
ffff800000109208:	66 20 61 6e          	data16 and %ah,0x6e(%rcx)
ffff80000010920c:	20 65 76             	and    %ah,0x76(%rbp)
ffff80000010920f:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000109211:	74 20                	je     ffff800000109233 <.LC11+0x53>
ffff800000109213:	65 78 74             	gs js  ffff80000010928a <.LC12+0x2a>
ffff800000109216:	65 72 6e             	gs jb  ffff800000109287 <.LC12+0x27>
ffff800000109219:	61                   	(bad)  
ffff80000010921a:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010921b:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010921f:	74 68                	je     ffff800000109289 <.LC12+0x29>
ffff800000109221:	65 20 70 72          	and    %dh,%gs:0x72(%rax)
ffff800000109225:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109226:	67 72 61             	addr32 jb ffff80000010928a <.LC12+0x2a>
ffff800000109229:	6d                   	insl   (%dx),%es:(%rdi)
ffff80000010922a:	2c 73                	sub    $0x73,%al
ffff80000010922c:	75 63                	jne    ffff800000109291 <.LC13+0x1>
ffff80000010922e:	68 20 61 73 20       	pushq  $0x20736120
ffff800000109233:	61                   	(bad)  
ffff800000109234:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109235:	20 69 6e             	and    %ch,0x6e(%rcx)
ffff800000109238:	74 65                	je     ffff80000010929f <.LC13+0xf>
ffff80000010923a:	72 72                	jb     ffff8000001092ae <.LC13+0x1e>
ffff80000010923c:	75 70                	jne    ffff8000001092ae <.LC13+0x1e>
ffff80000010923e:	74 20                	je     ffff800000109260 <.LC12>
ffff800000109240:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109241:	72 20                	jb     ffff800000109263 <.LC12+0x3>
ffff800000109243:	61                   	(bad)  
ffff800000109244:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109245:	20 65 61             	and    %ah,0x61(%rbp)
ffff800000109248:	72 6c                	jb     ffff8000001092b6 <.LC13+0x26>
ffff80000010924a:	69 65 72 20 65 78 63 	imul   $0x63786520,0x72(%rbp),%esp
ffff800000109251:	65 70 74             	gs jo  ffff8000001092c8 <.LC14>
ffff800000109254:	69 6f 6e 2e 0a 00 00 	imul   $0xa2e,0x6e(%rdi),%ebp
ffff80000010925b:	00 00                	add    %al,(%rax)
ffff80000010925d:	00 00                	add    %al,(%rax)
	...

ffff800000109260 <.LC12>:
ffff800000109260:	52                   	push   %rdx
ffff800000109261:	65 66 65 72 73       	gs data16 gs jb ffff8000001092d9 <.LC14+0x11>
ffff800000109266:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010926a:	61                   	(bad)  
ffff80000010926b:	20 67 61             	and    %ah,0x61(%rdi)
ffff80000010926e:	74 65                	je     ffff8000001092d5 <.LC14+0xd>
ffff800000109270:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff800000109274:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000109277:	70 74                	jo     ffff8000001092ed <.LC14+0x25>
ffff800000109279:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010927a:	72 20                	jb     ffff80000010929c <.LC13+0xc>
ffff80000010927c:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff800000109283:	49                   	rex.WB
ffff800000109284:	44 54                	rex.R push %rsp
ffff800000109286:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff800000109290 <.LC13>:
ffff800000109290:	52                   	push   %rdx
ffff800000109291:	65 66 65 72 73       	gs data16 gs jb ffff800000109309 <.LC15+0x9>
ffff800000109296:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010929a:	61                   	(bad)  
ffff80000010929b:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff80000010929f:	63 72 69             	movslq 0x69(%rdx),%esi
ffff8000001092a2:	70 74                	jo     ffff800000109318 <.LC15+0x18>
ffff8000001092a4:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001092a5:	72 20                	jb     ffff8000001092c7 <.LC13+0x37>
ffff8000001092a7:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff8000001092ae:	47                   	rex.RXB
ffff8000001092af:	44 54                	rex.R push %rsp
ffff8000001092b1:	20 6f 72             	and    %ch,0x72(%rdi)
ffff8000001092b4:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
ffff8000001092b8:	20 63 75             	and    %ah,0x75(%rbx)
ffff8000001092bb:	72 72                	jb     ffff80000010932f <.LC15+0x2f>
ffff8000001092bd:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001092bf:	74 20                	je     ffff8000001092e1 <.LC14+0x19>
ffff8000001092c1:	4c                   	rex.WR
ffff8000001092c2:	44 54                	rex.R push %rsp
ffff8000001092c4:	3b 0a                	cmp    (%rdx),%ecx
	...

ffff8000001092c8 <.LC14>:
ffff8000001092c8:	52                   	push   %rdx
ffff8000001092c9:	65 66 65 72 73       	gs data16 gs jb ffff800000109341 <.LC16+0x11>
ffff8000001092ce:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff8000001092d2:	61                   	(bad)  
ffff8000001092d3:	20 73 65             	and    %dh,0x65(%rbx)
ffff8000001092d6:	67 6d                	insl   (%dx),%es:(%edi)
ffff8000001092d8:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff8000001092da:	74 20                	je     ffff8000001092fc <.LC14+0x34>
ffff8000001092dc:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001092dd:	72 20                	jb     ffff8000001092ff <.LC14+0x37>
ffff8000001092df:	67 61                	addr32 (bad) 
ffff8000001092e1:	74 65                	je     ffff800000109348 <.LC16+0x18>
ffff8000001092e3:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff8000001092e7:	63 72 69             	movslq 0x69(%rdx),%esi
ffff8000001092ea:	70 74                	jo     ffff800000109360 <.LC17+0x10>
ffff8000001092ec:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001092ed:	72 20                	jb     ffff80000010930f <.LC15+0xf>
ffff8000001092ef:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff8000001092f6:	4c                   	rex.WR
ffff8000001092f7:	44 54                	rex.R push %rsp
ffff8000001092f9:	3b 0a                	cmp    (%rdx),%ecx
ffff8000001092fb:	00 00                	add    %al,(%rax)
ffff8000001092fd:	00 00                	add    %al,(%rax)
	...

ffff800000109300 <.LC15>:
ffff800000109300:	52                   	push   %rdx
ffff800000109301:	65 66 65 72 73       	gs data16 gs jb ffff800000109379 <.LC17+0x29>
ffff800000109306:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
ffff80000010930a:	61                   	(bad)  
ffff80000010930b:	20 64 65 73          	and    %ah,0x73(%rbp,%riz,2)
ffff80000010930f:	63 72 69             	movslq 0x69(%rdx),%esi
ffff800000109312:	70 74                	jo     ffff800000109388 <.LC17+0x38>
ffff800000109314:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109315:	72 20                	jb     ffff800000109337 <.LC16+0x7>
ffff800000109317:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%rsi),%ebp
ffff80000010931e:	63 75 72             	movslq 0x72(%rbp),%esi
ffff800000109321:	72 65                	jb     ffff800000109388 <.LC17+0x38>
ffff800000109323:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109324:	74 20                	je     ffff800000109346 <.LC16+0x16>
ffff800000109326:	47                   	rex.RXB
ffff800000109327:	44 54                	rex.R push %rsp
ffff800000109329:	3b 0a                	cmp    (%rdx),%ecx
ffff80000010932b:	00 00                	add    %al,(%rax)
ffff80000010932d:	00 00                	add    %al,(%rax)
	...

ffff800000109330 <.LC16>:
ffff800000109330:	53                   	push   %rbx
ffff800000109331:	65 67 6d             	gs insl (%dx),%es:(%edi)
ffff800000109334:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000109336:	74 20                	je     ffff800000109358 <.LC17+0x8>
ffff800000109338:	53                   	push   %rbx
ffff800000109339:	65 6c                	gs insb (%dx),%es:(%rdi)
ffff80000010933b:	65 63 74 6f 72       	movslq %gs:0x72(%rdi,%rbp,2),%esi
ffff800000109340:	20 49 6e             	and    %cl,0x6e(%rcx)
ffff800000109343:	64 65 78 3a          	fs gs js ffff800000109381 <.LC17+0x31>
ffff800000109347:	25 23 30 31 30       	and    $0x30313023,%eax
ffff80000010934c:	78 0a                	js     ffff800000109358 <.LC17+0x8>
	...

ffff800000109350 <.LC17>:
ffff800000109350:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109352:	5f                   	pop    %rdi
ffff800000109353:	73 65                	jae    ffff8000001093ba <.LC18+0x2a>
ffff800000109355:	67 6d                	insl   (%dx),%es:(%edi)
ffff800000109357:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff800000109359:	74 5f                	je     ffff8000001093ba <.LC18+0x2a>
ffff80000010935b:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff80000010935c:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010935d:	74 5f                	je     ffff8000001093be <.LC18+0x2e>
ffff80000010935f:	70 72                	jo     ffff8000001093d3 <.LC19+0x3>
ffff800000109361:	65 73 65             	gs jae ffff8000001093c9 <.LC18+0x39>
ffff800000109364:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109365:	74 28                	je     ffff80000010938f <.LC17+0x3f>
ffff800000109367:	31 31                	xor    %esi,(%rcx)
ffff800000109369:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109370:	5f                   	pop    %rdi
ffff800000109371:	43                   	rex.XB
ffff800000109372:	4f                   	rex.WRXB
ffff800000109373:	44                   	rex.R
ffff800000109374:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0be7 <_end+0x522c624f>
ffff80000010937b:	53                   	push   %rbx
ffff80000010937c:	50                   	push   %rax
ffff80000010937d:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0bef <_end+0x522c6257>
ffff800000109383:	49 50                	rex.WB push %r8
ffff800000109385:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0bf7 <_end+0xa625f>
ffff80000010938b:	00 00                	add    %al,(%rax)
ffff80000010938d:	00 00                	add    %al,(%rax)
	...

ffff800000109390 <.LC18>:
ffff800000109390:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109392:	5f                   	pop    %rdi
ffff800000109393:	73 74                	jae    ffff800000109409 <.LC19+0x39>
ffff800000109395:	61                   	(bad)  
ffff800000109396:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
ffff800000109399:	73 65                	jae    ffff800000109400 <.LC19+0x30>
ffff80000010939b:	67 6d                	insl   (%dx),%es:(%edi)
ffff80000010939d:	65 6e                	outsb  %gs:(%rsi),(%dx)
ffff80000010939f:	74 5f                	je     ffff800000109400 <.LC19+0x30>
ffff8000001093a1:	66 61                	data16 (bad) 
ffff8000001093a3:	75 6c                	jne    ffff800000109411 <.LC20+0x1>
ffff8000001093a5:	74 28                	je     ffff8000001093cf <.LC18+0x3f>
ffff8000001093a7:	31 32                	xor    %esi,(%rdx)
ffff8000001093a9:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff8000001093b0:	5f                   	pop    %rdi
ffff8000001093b1:	43                   	rex.XB
ffff8000001093b2:	4f                   	rex.WRXB
ffff8000001093b3:	44                   	rex.R
ffff8000001093b4:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0c27 <_end+0x522c628f>
ffff8000001093bb:	53                   	push   %rbx
ffff8000001093bc:	50                   	push   %rax
ffff8000001093bd:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0c2f <_end+0x522c6297>
ffff8000001093c3:	49 50                	rex.WB push %r8
ffff8000001093c5:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0c37 <_end+0xa629f>
ffff8000001093cb:	00 00                	add    %al,(%rax)
ffff8000001093cd:	00 00                	add    %al,(%rax)
	...

ffff8000001093d0 <.LC19>:
ffff8000001093d0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001093d2:	5f                   	pop    %rdi
ffff8000001093d3:	67 65 6e             	outsb  %gs:(%esi),(%dx)
ffff8000001093d6:	65 72 61             	gs jb  ffff80000010943a <.LC20+0x2a>
ffff8000001093d9:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001093da:	5f                   	pop    %rdi
ffff8000001093db:	70 72                	jo     ffff80000010944f <.LC21+0xd>
ffff8000001093dd:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001093de:	74 65                	je     ffff800000109445 <.LC21+0x3>
ffff8000001093e0:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff8000001093e4:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001093e5:	28 31                	sub    %dh,(%rcx)
ffff8000001093e7:	33 29                	xor    (%rcx),%ebp
ffff8000001093e9:	2c 45                	sub    $0x45,%al
ffff8000001093eb:	52                   	push   %rdx
ffff8000001093ec:	52                   	push   %rdx
ffff8000001093ed:	4f 52                	rex.WRXB push %r10
ffff8000001093ef:	5f                   	pop    %rdi
ffff8000001093f0:	43                   	rex.XB
ffff8000001093f1:	4f                   	rex.WRXB
ffff8000001093f2:	44                   	rex.R
ffff8000001093f3:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0c66 <_end+0x522c62ce>
ffff8000001093fa:	53                   	push   %rbx
ffff8000001093fb:	50                   	push   %rax
ffff8000001093fc:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0c6e <_end+0x522c62d6>
ffff800000109402:	49 50                	rex.WB push %r8
ffff800000109404:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0c76 <_end+0xa62de>
ffff80000010940a:	00 00                	add    %al,(%rax)
ffff80000010940c:	00 00                	add    %al,(%rax)
	...

ffff800000109410 <.LC20>:
ffff800000109410:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109412:	5f                   	pop    %rdi
ffff800000109413:	70 61                	jo     ffff800000109476 <.LC23+0xd>
ffff800000109415:	67 65 5f             	addr32 gs pop %rdi
ffff800000109418:	66 61                	data16 (bad) 
ffff80000010941a:	75 6c                	jne    ffff800000109488 <.LC24+0xc>
ffff80000010941c:	74 28                	je     ffff800000109446 <.LC21+0x4>
ffff80000010941e:	31 34 29             	xor    %esi,(%rcx,%rbp,1)
ffff800000109421:	2c 45                	sub    $0x45,%al
ffff800000109423:	52                   	push   %rdx
ffff800000109424:	52                   	push   %rdx
ffff800000109425:	4f 52                	rex.WRXB push %r10
ffff800000109427:	5f                   	pop    %rdi
ffff800000109428:	43                   	rex.XB
ffff800000109429:	4f                   	rex.WRXB
ffff80000010942a:	44                   	rex.R
ffff80000010942b:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0c9e <_end+0x522c6306>
ffff800000109432:	53                   	push   %rbx
ffff800000109433:	50                   	push   %rax
ffff800000109434:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0ca6 <_end+0x522c630e>
ffff80000010943a:	49 50                	rex.WB push %r8
ffff80000010943c:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0cae <_end+0xa6316>

ffff800000109442 <.LC21>:
ffff800000109442:	50                   	push   %rax
ffff800000109443:	61                   	(bad)  
ffff800000109444:	67 65 20 4e 6f       	and    %cl,%gs:0x6f(%esi)
ffff800000109449:	74 2d                	je     ffff800000109478 <.LC23+0xf>
ffff80000010944b:	50                   	push   %rax
ffff80000010944c:	72 65                	jb     ffff8000001094b3 <.LC26+0x9>
ffff80000010944e:	73 65                	jae    ffff8000001094b5 <.LC26+0xb>
ffff800000109450:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109451:	74 2c                	je     ffff80000010947f <.LC24+0x3>
ffff800000109453:	09 00                	or     %eax,(%rax)

ffff800000109455 <.LC22>:
ffff800000109455:	57                   	push   %rdi
ffff800000109456:	72 69                	jb     ffff8000001094c1 <.LC26+0x17>
ffff800000109458:	74 65                	je     ffff8000001094bf <.LC26+0x15>
ffff80000010945a:	20 43 61             	and    %al,0x61(%rbx)
ffff80000010945d:	75 73                	jne    ffff8000001094d2 <.LC27+0xa>
ffff80000010945f:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000109463:	75 6c                	jne    ffff8000001094d1 <.LC27+0x9>
ffff800000109465:	74 2c                	je     ffff800000109493 <.LC25+0x5>
ffff800000109467:	09 00                	or     %eax,(%rax)

ffff800000109469 <.LC23>:
ffff800000109469:	52                   	push   %rdx
ffff80000010946a:	65 61                	gs (bad) 
ffff80000010946c:	64 20 43 61          	and    %al,%fs:0x61(%rbx)
ffff800000109470:	75 73                	jne    ffff8000001094e5 <.LC27+0x1d>
ffff800000109472:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff800000109476:	75 6c                	jne    ffff8000001094e4 <.LC27+0x1c>
ffff800000109478:	74 2c                	je     ffff8000001094a6 <.LC25+0x18>
ffff80000010947a:	09 00                	or     %eax,(%rax)

ffff80000010947c <.LC24>:
ffff80000010947c:	46 61                	rex.RX (bad) 
ffff80000010947e:	75 6c                	jne    ffff8000001094ec <.LC29+0x3>
ffff800000109480:	74 20                	je     ffff8000001094a2 <.LC25+0x14>
ffff800000109482:	69 6e 20 75 73 65 72 	imul   $0x72657375,0x20(%rsi),%ebp
ffff800000109489:	28 33                	sub    %dh,(%rbx)
ffff80000010948b:	29 09                	sub    %ecx,(%rcx)
	...

ffff80000010948e <.LC25>:
ffff80000010948e:	46 61                	rex.RX (bad) 
ffff800000109490:	75 6c                	jne    ffff8000001094fe <.LC30+0x6>
ffff800000109492:	74 20                	je     ffff8000001094b4 <.LC26+0xa>
ffff800000109494:	69 6e 20 73 75 70 65 	imul   $0x65707573,0x20(%rsi),%ebp
ffff80000010949b:	72 76                	jb     ffff800000109513 <.LC30+0x1b>
ffff80000010949d:	69 73 6f 72 28 30 2c 	imul   $0x2c302872,0x6f(%rbx),%esi
ffff8000001094a4:	31 2c 32             	xor    %ebp,(%rdx,%rsi,1)
ffff8000001094a7:	29 09                	sub    %ecx,(%rcx)
	...

ffff8000001094aa <.LC26>:
ffff8000001094aa:	2c 52                	sub    $0x52,%al
ffff8000001094ac:	65 73 65             	gs jae ffff800000109514 <.LC30+0x1c>
ffff8000001094af:	72 76                	jb     ffff800000109527 <.LC30+0x2f>
ffff8000001094b1:	65 64 20 42 69       	gs and %al,%fs:0x69(%rdx)
ffff8000001094b6:	74 20                	je     ffff8000001094d8 <.LC27+0x10>
ffff8000001094b8:	43 61                	rex.XB (bad) 
ffff8000001094ba:	75 73                	jne    ffff80000010952f <.LC30+0x37>
ffff8000001094bc:	65 20 46 61          	and    %al,%gs:0x61(%rsi)
ffff8000001094c0:	75 6c                	jne    ffff80000010952e <.LC30+0x36>
ffff8000001094c2:	74 09                	je     ffff8000001094cd <.LC27+0x5>
ffff8000001094c4:	00 00                	add    %al,(%rax)
	...

ffff8000001094c8 <.LC27>:
ffff8000001094c8:	2c 49                	sub    $0x49,%al
ffff8000001094ca:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001094cb:	73 74                	jae    ffff800000109541 <.LC31+0x11>
ffff8000001094cd:	72 75                	jb     ffff800000109544 <.LC31+0x14>
ffff8000001094cf:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
ffff8000001094d3:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff8000001094d4:	20 66 65             	and    %ah,0x65(%rsi)
ffff8000001094d7:	74 63                	je     ffff80000010953c <.LC31+0xc>
ffff8000001094d9:	68 20 43 61 75       	pushq  $0x75614320
ffff8000001094de:	73 65                	jae    ffff800000109545 <.LC31+0x15>
ffff8000001094e0:	20 46 61             	and    %al,0x61(%rsi)
ffff8000001094e3:	75 6c                	jne    ffff800000109551 <.LC31+0x21>
ffff8000001094e5:	74 00                	je     ffff8000001094e7 <.LC28>

ffff8000001094e7 <.LC28>:
ffff8000001094e7:	0a 00                	or     (%rax),%al

ffff8000001094e9 <.LC29>:
ffff8000001094e9:	43 52                	rex.XB push %r10
ffff8000001094eb:	32 3a                	xor    (%rdx),%bh
ffff8000001094ed:	25 6c 78 0a 00       	and    $0xa786c,%eax
ffff8000001094f2:	00 00                	add    %al,(%rax)
ffff8000001094f4:	00 00                	add    %al,(%rax)
	...

ffff8000001094f8 <.LC30>:
ffff8000001094f8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001094fa:	5f                   	pop    %rdi
ffff8000001094fb:	78 38                	js     ffff800000109535 <.LC31+0x5>
ffff8000001094fd:	37                   	(bad)  
ffff8000001094fe:	5f                   	pop    %rdi
ffff8000001094ff:	46 50                	rex.RX push %rax
ffff800000109501:	55                   	push   %rbp
ffff800000109502:	5f                   	pop    %rdi
ffff800000109503:	65 72 72             	gs jb  ffff800000109578 <.LC32+0x10>
ffff800000109506:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109507:	72 28                	jb     ffff800000109531 <.LC31+0x1>
ffff800000109509:	31 36                	xor    %esi,(%rsi)
ffff80000010950b:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109512:	5f                   	pop    %rdi
ffff800000109513:	43                   	rex.XB
ffff800000109514:	4f                   	rex.WRXB
ffff800000109515:	44                   	rex.R
ffff800000109516:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0d89 <_end+0x522c63f1>
ffff80000010951d:	53                   	push   %rbx
ffff80000010951e:	50                   	push   %rax
ffff80000010951f:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0d91 <_end+0x522c63f9>
ffff800000109525:	49 50                	rex.WB push %r8
ffff800000109527:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0d99 <_end+0xa6401>
ffff80000010952d:	00 00                	add    %al,(%rax)
	...

ffff800000109530 <.LC31>:
ffff800000109530:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff800000109532:	5f                   	pop    %rdi
ffff800000109533:	61                   	(bad)  
ffff800000109534:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109535:	69 67 6e 6d 65 6e 74 	imul   $0x746e656d,0x6e(%rdi),%esp
ffff80000010953c:	5f                   	pop    %rdi
ffff80000010953d:	63 68 65             	movslq 0x65(%rax),%ebp
ffff800000109540:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff800000109543:	31 37                	xor    %esi,(%rdi)
ffff800000109545:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff80000010954c:	5f                   	pop    %rdi
ffff80000010954d:	43                   	rex.XB
ffff80000010954e:	4f                   	rex.WRXB
ffff80000010954f:	44                   	rex.R
ffff800000109550:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0dc3 <_end+0x522c642b>
ffff800000109557:	53                   	push   %rbx
ffff800000109558:	50                   	push   %rax
ffff800000109559:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0dcb <_end+0x522c6433>
ffff80000010955f:	49 50                	rex.WB push %r8
ffff800000109561:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0dd3 <_end+0xa643b>
	...

ffff800000109568 <.LC32>:
ffff800000109568:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff80000010956a:	5f                   	pop    %rdi
ffff80000010956b:	6d                   	insl   (%dx),%es:(%rdi)
ffff80000010956c:	61                   	(bad)  
ffff80000010956d:	63 68 69             	movslq 0x69(%rax),%ebp
ffff800000109570:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109571:	65 5f                	gs pop %rdi
ffff800000109573:	63 68 65             	movslq 0x65(%rax),%ebp
ffff800000109576:	63 6b 28             	movslq 0x28(%rbx),%ebp
ffff800000109579:	31 38                	xor    %edi,(%rax)
ffff80000010957b:	29 2c 45 52 52 4f 52 	sub    %ebp,0x524f5252(,%rax,2)
ffff800000109582:	5f                   	pop    %rdi
ffff800000109583:	43                   	rex.XB
ffff800000109584:	4f                   	rex.WRXB
ffff800000109585:	44                   	rex.R
ffff800000109586:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0df9 <_end+0x522c6461>
ffff80000010958d:	53                   	push   %rbx
ffff80000010958e:	50                   	push   %rax
ffff80000010958f:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0e01 <_end+0x522c6469>
ffff800000109595:	49 50                	rex.WB push %r8
ffff800000109597:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0e09 <_end+0xa6471>
ffff80000010959d:	00 00                	add    %al,(%rax)
	...

ffff8000001095a0 <.LC33>:
ffff8000001095a0:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001095a2:	5f                   	pop    %rdi
ffff8000001095a3:	53                   	push   %rbx
ffff8000001095a4:	49                   	rex.WB
ffff8000001095a5:	4d                   	rex.WRB
ffff8000001095a6:	44 5f                	rex.R pop %rdi
ffff8000001095a8:	65 78 63             	gs js  ffff80000010960e <.LC34+0x36>
ffff8000001095ab:	65 70 74             	gs jo  ffff800000109622 <.LC0+0xa>
ffff8000001095ae:	69 6f 6e 28 31 39 29 	imul   $0x29393128,0x6e(%rdi),%ebp
ffff8000001095b5:	2c 45                	sub    $0x45,%al
ffff8000001095b7:	52                   	push   %rdx
ffff8000001095b8:	52                   	push   %rdx
ffff8000001095b9:	4f 52                	rex.WRXB push %r10
ffff8000001095bb:	5f                   	pop    %rdi
ffff8000001095bc:	43                   	rex.XB
ffff8000001095bd:	4f                   	rex.WRXB
ffff8000001095be:	44                   	rex.R
ffff8000001095bf:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0e32 <_end+0x522c649a>
ffff8000001095c6:	53                   	push   %rbx
ffff8000001095c7:	50                   	push   %rax
ffff8000001095c8:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0e3a <_end+0x522c64a2>
ffff8000001095ce:	49 50                	rex.WB push %r8
ffff8000001095d0:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0e42 <_end+0xa64aa>
	...

ffff8000001095d8 <.LC34>:
ffff8000001095d8:	64 6f                	outsl  %fs:(%rsi),(%dx)
ffff8000001095da:	5f                   	pop    %rdi
ffff8000001095db:	76 69                	jbe    ffff800000109646 <.LC0+0x9>
ffff8000001095dd:	72 74                	jb     ffff800000109653 <.LC1+0x2>
ffff8000001095df:	75 61                	jne    ffff800000109642 <.LC0+0x5>
ffff8000001095e1:	6c                   	insb   (%dx),%es:(%rdi)
ffff8000001095e2:	69 7a 61 74 69 6f 6e 	imul   $0x6e6f6974,0x61(%rdx),%edi
ffff8000001095e9:	5f                   	pop    %rdi
ffff8000001095ea:	65 78 63             	gs js  ffff800000109650 <.LC0+0x13>
ffff8000001095ed:	65 70 74             	gs jo  ffff800000109664 <.LC1+0x13>
ffff8000001095f0:	69 6f 6e 28 32 30 29 	imul   $0x29303228,0x6e(%rdi),%ebp
ffff8000001095f7:	2c 45                	sub    $0x45,%al
ffff8000001095f9:	52                   	push   %rdx
ffff8000001095fa:	52                   	push   %rdx
ffff8000001095fb:	4f 52                	rex.WRXB push %r10
ffff8000001095fd:	5f                   	pop    %rdi
ffff8000001095fe:	43                   	rex.XB
ffff8000001095ff:	4f                   	rex.WRXB
ffff800000109600:	44                   	rex.R
ffff800000109601:	45 3a 25 6c 78 2c 52 	cmp    0x522c786c(%rip),%r12b        # ffff8000523d0e74 <_end+0x522c64dc>
ffff800000109608:	53                   	push   %rbx
ffff800000109609:	50                   	push   %rax
ffff80000010960a:	3a 25 6c 78 2c 52    	cmp    0x522c786c(%rip),%ah        # ffff8000523d0e7c <_end+0x522c64e4>
ffff800000109610:	49 50                	rex.WB push %r8
ffff800000109612:	3a 25 6c 78 0a 00    	cmp    0xa786c(%rip),%ah        # ffff8000001b0e84 <_end+0xa64ec>

ffff800000109618 <.LC0>:
ffff800000109618:	54                   	push   %rsp
ffff800000109619:	69 6d 65 72 20 69 6e 	imul   $0x6e692072,0x65(%rbp),%ebp
ffff800000109620:	74 65                	je     ffff800000109687 <.LC1+0x7>
ffff800000109622:	72 72                	jb     ffff800000109696 <.LC1+0x16>
ffff800000109624:	75 70                	jne    ffff800000109696 <.LC1+0x16>
ffff800000109626:	74 0a                	je     ffff800000109632 <.LC2+0x6>
	...

ffff800000109629 <.LC1>:
ffff800000109629:	25 78 00         	and    $0x6f4d0078,%eax

ffff80000010962c <.LC2>:
ffff80000010962c:	4d 6f                	rex.WRB outsl %ds:(%rsi),(%dx)
ffff80000010962e:	75 73                	jne    ffff8000001096a3 <.LC1+0x23>
ffff800000109630:	65 20 69 6e          	and    %ch,%gs:0x6e(%rcx)
ffff800000109634:	74 65                	je     ffff80000010969b <.LC1+0x1b>
ffff800000109636:	72 72                	jb     ffff8000001096aa <.LC1+0x2a>
ffff800000109638:	75 70                	jne    ffff8000001096aa <.LC1+0x2a>
ffff80000010963a:	74 0a                	je     ffff800000109646 <.LC0+0x9>
	...

ffff80000010963d <.LC0>:
ffff80000010963d:	54                   	push   %rsp
ffff80000010963e:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010963f:	74 61                	je     ffff8000001096a2 <.LC1+0x22>
ffff800000109641:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109642:	20 6d 65             	and    %ch,0x65(%rbp)
ffff800000109645:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000109646:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109647:	72 79                	jb     ffff8000001096c2 <.LC2+0x12>
ffff800000109649:	3a 20                	cmp    (%rax),%ah
ffff80000010964b:	25 64 4d 42 0a       	and    $0xa424d64,%eax
	...

ffff800000109651 <.LC1>:
ffff800000109651:	46 72 65             	rex.RX jb ffff8000001096b9 <.LC2+0x9>
ffff800000109654:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff800000109658:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000109659:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff80000010965a:	72 79                	jb     ffff8000001096d5 <.LC2+0x25>
ffff80000010965c:	20 72 61             	and    %dh,0x61(%rdx)
ffff80000010965f:	6e                   	outsb  %ds:(%rsi),(%dx)
ffff800000109660:	67 65 3a 20          	cmp    %gs:(%eax),%ah
ffff800000109664:	25 6c 78 20 2d       	and    $0x2d20786c,%eax
ffff800000109669:	20 25 6c 78 0a 00    	and    %ah,0xa786c(%rip)        # ffff8000001b0edb <_end+0xa6543>

ffff80000010966f <.LC2>:
ffff80000010966f:	6b 66 72 65          	imul   $0x65,0x72(%rsi),%esp
ffff800000109673:	65 00 00             	add    %al,%gs:(%rax)
	...

ffff800000109678 <.LC0>:
	...

ffff800000109680 <.LC1>:
ffff800000109680:	4e                   	rex.WRX
ffff800000109681:	65 77 20             	gs ja  ffff8000001096a4 <.LC1+0x24>
ffff800000109684:	61                   	(bad)  
ffff800000109685:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109686:	6c                   	insb   (%dx),%es:(%rdi)
ffff800000109687:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109688:	63 61 74             	movslq 0x74(%rcx),%esp
ffff80000010968b:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff80000010968f:	6d                   	insl   (%dx),%es:(%rdi)
ffff800000109690:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff800000109691:	72 79                	jb     ffff80000010970c <GDT64_Table+0x2c>
ffff800000109693:	20 62 65             	and    %ah,0x65(%rdx)
ffff800000109696:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff80000010969d:	20 
ffff80000010969e:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff8000001096a3:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff8000001096aa:	0a 00                	or     (%rax),%al
ffff8000001096ac:	00 00                	add    %al,(%rax)
	...

ffff8000001096b0 <.LC2>:
ffff8000001096b0:	54                   	push   %rsp
ffff8000001096b1:	68 65 20 6e 65       	pushq  $0x656e2065
ffff8000001096b6:	77 20                	ja     ffff8000001096d8 <.LC2+0x28>
ffff8000001096b8:	66 72 65             	data16 jb ffff800000109720 <GDT64_Table+0x40>
ffff8000001096bb:	65 20 6d 65          	and    %ch,%gs:0x65(%rbp)
ffff8000001096bf:	6d                   	insl   (%dx),%es:(%rdi)
ffff8000001096c0:	6f                   	outsl  %ds:(%rsi),(%dx)
ffff8000001096c1:	72 79                	jb     ffff80000010973c <GDT64_Table+0x5c>
ffff8000001096c3:	20 62 65             	and    %ah,0x65(%rdx)
ffff8000001096c6:	67 69 6e 20 61 74 3a 	imul   $0x203a7461,0x20(%esi),%ebp
ffff8000001096cd:	20 
ffff8000001096ce:	25 70 2c 20 73       	and    $0x73202c70,%eax
ffff8000001096d3:	69 7a 65 3a 20 25 64 	imul   $0x6425203a,0x65(%rdx),%edi
ffff8000001096da:	0a 00                	or     (%rax),%al

Disassembly of section .data:

ffff8000001096e0 <GDT64_Table>:
	...
ffff8000001096ec:	00 98 20 00 00 00    	add    %bl,0x20(%rax)
ffff8000001096f2:	00 00                	add    %al,(%rax)
ffff8000001096f4:	00 92 00 00 00 00    	add    %dl,0x0(%rdx)
ffff8000001096fa:	00 00                	add    %al,(%rax)
ffff8000001096fc:	00 f8                	add    %bh,%al
ffff8000001096fe:	20 00                	and    %al,(%rax)
ffff800000109700:	00 00                	add    %al,(%rax)
ffff800000109702:	00 00                	add    %al,(%rax)
ffff800000109704:	00 f2                	add    %dh,%dl
ffff800000109706:	00 00                	add    %al,(%rax)
ffff800000109708:	ff                   	(bad)  
ffff800000109709:	ff 00                	incl   (%rax)
ffff80000010970b:	00 00                	add    %al,(%rax)
ffff80000010970d:	9a                   	(bad)  
ffff80000010970e:	cf                   	iret   
ffff80000010970f:	00 ff                	add    %bh,%bh
ffff800000109711:	ff 00                	incl   (%rax)
ffff800000109713:	00 00                	add    %al,(%rax)
ffff800000109715:	92                   	xchg   %eax,%edx
ffff800000109716:	cf                   	iret   
	...

ffff800000109768 <GDT6464_LIMIT>:
ffff800000109768:	87 00                	xchg   %eax,(%rax)

ffff80000010976a <GDT64_BASE>:
ffff80000010976a:	e0 96                	loopne ffff800000109702 <GDT64_Table+0x22>
ffff80000010976c:	10 00                	adc    %al,(%rax)
ffff80000010976e:	00 80 ff ff      	add    %al,0xffff(%rax)

ffff800000109772 <IDT64_Table>:
	...

ffff80000010a772 <IDT64_END>:
ffff80000010a772:	ff 0f                	decl   (%rdi)

ffff80000010a774 <IDT64_BASE>:
ffff80000010a774:	72 97                	jb     ffff80000010a70d <IDT64_Table+0xf9b>
ffff80000010a776:	10 00                	adc    %al,(%rax)
ffff80000010a778:	00 80 ff ff      	add    %al,0xffff(%rax)

ffff80000010a77c <TSS64_Table>:
	...

Disassembly of section .got:

ffff80000010a7e8 <.got>:
ffff80000010a7e8:	6c                   	insb   (%dx),%es:(%rdi)
ffff80000010a7e9:	40 10 00             	adc    %al,(%rax)
ffff80000010a7ec:	00 80 ff ff 58 41    	add    %al,0x4158ffff(%rax)
ffff80000010a7f2:	10 00                	adc    %al,(%rax)
ffff80000010a7f4:	00 80 ff ff b5 40    	add    %al,0x40b5ffff(%rax)
ffff80000010a7fa:	10 00                	adc    %al,(%rax)
ffff80000010a7fc:	00 80 ff ff 7c 40    	add    %al,0x407cffff(%rax)
ffff80000010a802:	10 00                	adc    %al,(%rax)
ffff80000010a804:	00 80 ff ff c8 40    	add    %al,0x40c8ffff(%rax)
ffff80000010a80a:	10 00                	adc    %al,(%rax)
ffff80000010a80c:	00 80 ff ff 25 41    	add    %al,0x4125ffff(%rax)
ffff80000010a812:	10 00                	adc    %al,(%rax)
ffff80000010a814:	00 80 ff ff 72 97    	add    %al,-0x688d0001(%rax)
ffff80000010a81a:	10 00                	adc    %al,(%rax)
ffff80000010a81c:	00 80 ff ff 36 41    	add    %al,0x4136ffff(%rax)
ffff80000010a822:	10 00                	adc    %al,(%rax)
ffff80000010a824:	00 80 ff ff 47 41    	add    %al,0x4147ffff(%rax)
ffff80000010a82a:	10 00                	adc    %al,(%rax)
ffff80000010a82c:	00 80 ff ff 90 a9    	add    %al,-0x566f0001(%rax)
ffff80000010a832:	10 00                	adc    %al,(%rax)
ffff80000010a834:	00 80 ff ff db 40    	add    %al,0x40dbffff(%rax)
ffff80000010a83a:	10 00                	adc    %al,(%rax)
ffff80000010a83c:	00 80 ff ff 7c a7    	add    %al,-0x58830001(%rax)
ffff80000010a842:	10 00                	adc    %al,(%rax)
ffff80000010a844:	00 80 ff ff 8d 41    	add    %al,0x418dffff(%rax)
ffff80000010a84a:	10 00                	adc    %al,(%rax)
ffff80000010a84c:	00 80 ff ff 7a 41    	add    %al,0x417affff(%rax)
ffff80000010a852:	10 00                	adc    %al,(%rax)
ffff80000010a854:	00 80 ff ff 01 41    	add    %al,0x4101ffff(%rax)
ffff80000010a85a:	10 00                	adc    %al,(%rax)
ffff80000010a85c:	00 80 ff ff 1c 42    	add    %al,0x421cffff(%rax)
ffff80000010a862:	10 00                	adc    %al,(%rax)
ffff80000010a864:	00 80 ff ff e0 96    	add    %al,-0x691f0001(%rax)
ffff80000010a86a:	10 00                	adc    %al,(%rax)
ffff80000010a86c:	00 80 ff ff 3d 42    	add    %al,0x423dffff(%rax)
ffff80000010a872:	10 00                	adc    %al,(%rax)
ffff80000010a874:	00 80 ff ff c4 41    	add    %al,0x41c4ffff(%rax)
ffff80000010a87a:	10 00                	adc    %al,(%rax)
ffff80000010a87c:	00 80 ff ff 12 41    	add    %al,0x4112ffff(%rax)
ffff80000010a882:	10 00                	adc    %al,(%rax)
ffff80000010a884:	00 80 ff ff 69 41    	add    %al,0x4169ffff(%rax)
ffff80000010a88a:	10 00                	adc    %al,(%rax)
ffff80000010a88c:	00 80 ff ff 98 a9    	add    %al,-0x56670001(%rax)
ffff80000010a892:	10 00                	adc    %al,(%rax)
ffff80000010a894:	00 80 ff ff 9e 41    	add    %al,0x419effff(%rax)
ffff80000010a89a:	10 00                	adc    %al,(%rax)
ffff80000010a89c:	00 80 ff ff 5e 42    	add    %al,0x425effff(%rax)
ffff80000010a8a2:	10 00                	adc    %al,(%rax)
ffff80000010a8a4:	00 80 ff ff 9d 4f    	add    %al,0x4f9dffff(%rax)
ffff80000010a8aa:	10 00                	adc    %al,(%rax)
ffff80000010a8ac:	00 80 ff ff b1 41    	add    %al,0x41b1ffff(%rax)
ffff80000010a8b2:	10 00                	adc    %al,(%rax)
ffff80000010a8b4:	00 80 ff ff 8f 40    	add    %al,0x408fffff(%rax)
ffff80000010a8ba:	10 00                	adc    %al,(%rax)
ffff80000010a8bc:	00 80 ff ff ee 40    	add    %al,0x40eeffff(%rax)
ffff80000010a8c2:	10 00                	adc    %al,(%rax)
ffff80000010a8c4:	00 80 ff ff a2 40    	add    %al,0x40a2ffff(%rax)
ffff80000010a8ca:	10 00                	adc    %al,(%rax)
ffff80000010a8cc:	00                   	.byte 0x0
ffff80000010a8cd:	80 ff ff             	cmp    $0xff,%bh

Disassembly of section .got.plt:

ffff80000010a8d0 <_GLOBAL_OFFSET_TABLE_>:
	...

Disassembly of section .bss:

ffff80000010a900 <pos>:
ffff80000010a900:	00 00                	add    %al,(%rax)
	...

ffff80000010a904 <nextpid>:
ffff80000010a904:	00 00                	add    %al,(%rax)
	...

ffff80000010a908 <total>:
	...

ffff80000010a910 <_ebss>:
	...

ffff80000010a920 <idle_task>:
	...

ffff80000010a940 <idle_thread>:
	...

ffff80000010a988 <kmem>:
	...

ffff80000010a990 <cache_chain>:
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
